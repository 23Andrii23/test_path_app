import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webspark_test/screens/process_screen/controller/process_screen.controller.dart';
import 'package:webspark_test/screens/result_list_screen/result_list_screen.dart';

class ProcessScreen extends ConsumerStatefulWidget {
  final String apiUrl;

  const ProcessScreen({
    required this.apiUrl,
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
          .read(processScreenControllerProvider(widget.apiUrl).notifier)
          .loadData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final processState =
        ref.watch(processScreenControllerProvider(widget.apiUrl));

    final controller =
        ref.read(processScreenControllerProvider(widget.apiUrl).notifier);

    String statusText = 'Wait';
    String buttonText = 'Send result to server';
    bool isButtonEnabled = false;

    switch (processState.state) {
      case ProcessingState.initial:
        statusText = 'Ready to process';
        buttonText = 'Start processing';
        isButtonEnabled = true;
      case ProcessingState.loading:
        statusText = 'Loading data...';
        buttonText = 'Loading...';
        isButtonEnabled = false;
      case ProcessingState.processing:
        statusText = 'Processing...';
        buttonText = 'Processing...';
        isButtonEnabled = false;
      case ProcessingState.completed:
        statusText =
            'All calculations has finished, you can send your results to server';
        buttonText = 'Send result to server';
        isButtonEnabled = true;
      case ProcessingState.error:
        statusText = 'Error!';
        buttonText = 'Retry';
        isButtonEnabled = true;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Process Screen'),
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
                    textAlign: TextAlign.center,
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
                  SizedBox(
                    width: 100,
                    height: 100,
                    child: (processState.state == ProcessingState.loading)
                        ? CircularProgressIndicator(
                            backgroundColor: Colors.grey[300],
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blue),
                          )
                        : CircularProgressIndicator(
                            value: processState.progress / 100,
                            backgroundColor: Colors.grey[300],
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.blue),
                          ),
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
                onPressed: isButtonEnabled
                    ? () async {
                        if (processState.state == ProcessingState.error ||
                            processState.state == ProcessingState.initial) {
                          await controller.loadData();
                        } else if (processState.state ==
                            ProcessingState.completed) {
                          final result = await controller.sendResults();

                          if (result != null && !result.error) {
                            bool allCorrect = true;
                            for (final item in result.data) {
                              if (!item.correct) {
                                allCorrect = false;
                                break;
                              }
                            }
                            if (!context.mounted) return;

                            if (allCorrect) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => ResultListScreen(
                                    mainResponse: processState.mainResponse!,
                                    paths: processState.paths,
                                  ),
                                ),
                              );
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Some results are incorrect. Please try again.',
                                  ),
                                ),
                              );
                            }
                          }
                        }
                      }
                    : null,
                child: Text(buttonText),
              ),
            )
          ],
        ),
      ),
    );
  }
}
