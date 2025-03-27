import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webspark_test/models/main_response.model.dart';
import 'package:webspark_test/screens/process_screen/controller/process_screen.controller.dart';

class ProcessScreen extends ConsumerStatefulWidget {
  final MainResponse mainResponse;

  const ProcessScreen({
    required this.mainResponse,
    super.key,
  });

  @override
  ConsumerState<ProcessScreen> createState() => _ProcessScreenState();
}

class _ProcessScreenState extends ConsumerState<ProcessScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref
          .read(processScreenControllerProvider(widget.mainResponse).notifier)
          .startProcessing();
    });
  }

  @override
  Widget build(BuildContext context) {
    final processState =
        ref.watch(processScreenControllerProvider(widget.mainResponse));

    final controller =
        ref.read(processScreenControllerProvider(widget.mainResponse).notifier);

    String statusText = 'Wait';
    switch (processState.state) {
      case ProcessingState.initial:
        statusText = 'Ready';
      case ProcessingState.processing:
        statusText = 'Processing...';
      case ProcessingState.completed:
        statusText = 'Completed';
      case ProcessingState.error:
        statusText = 'Error!';
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Process Screen'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Container()),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    statusText,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '${processState.progress}%',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 16),
                  LinearProgressIndicator(
                    value: processState.progress / 100,
                    minHeight: 10,
                    backgroundColor: Colors.grey[300],
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                  if (processState.errorMessage != null)
                    Padding(
                      padding: const EdgeInsets.only(top: 16),
                      child: Text(
                        processState.errorMessage!,
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                ],
              ),
            ),
            Expanded(child: Container()),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                    (_) => processState.state == ProcessingState.completed
                        ? Colors.green
                        : Colors.blue,
                  ),
                ),
                onPressed: processState.state == ProcessingState.processing
                    ? null
                    : () async {
                        if (processState.state == ProcessingState.completed) {
                          await controller.sendResults();
                        } else {
                          await controller.startProcessing();
                        }
                      },
                child: Text(
                  processState.state == ProcessingState.completed
                      ? 'Send result to server'
                      : 'Start processing',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
