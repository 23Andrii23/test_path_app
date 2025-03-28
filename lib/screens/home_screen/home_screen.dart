import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webspark_test/screens/home_screen/controller/home_screen.controller.dart';
import 'package:webspark_test/screens/process_screen/process_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String? _errorMessage;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(homeScreenControllerProvider);
    final controller = ref.read(homeScreenControllerProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text('Set valid API base URL in order to continue.'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Form(
                    key: _formKey,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Icon(Icons.compare_arrows),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: TextFormField(
                            controller: _controller,
                            decoration: InputDecoration(
                              hintText: 'API base URL',
                              errorText: _errorMessage,
                              errorMaxLines: 2,
                              helperMaxLines: 2,
                              suffixIcon: _controller.text.isNotEmpty
                                  ? IconButton(
                                      icon: Icon(Icons.close, size: 18),
                                      onPressed: () {
                                        _controller.clear();
                                        setState(() {
                                          _errorMessage = null;
                                        });
                                      },
                                    )
                                  : null,
                            ),
                            keyboardType: TextInputType.url,
                            onChanged: (value) {
                              setState(() {
                                _errorMessage = null;
                              });
                            },
                            validator: controller.validateUrl,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (state.hasError && _errorMessage == null)
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      state.error.toString(),
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    final url = _controller.text;

                    final validationError = controller.validateUrl(url);
                    if (validationError != null) {
                      setState(() {
                        _errorMessage = validationError;
                      });
                      return;
                    }

                    if (!context.mounted) return;
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => ProcessScreen(
                          apiUrl: url,
                        ),
                      ),
                    );
                  } else {
                    setState(() {
                      _errorMessage = controller.validateUrl(_controller.text);
                    });
                  }
                },
                child: Text('Start counting process'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
