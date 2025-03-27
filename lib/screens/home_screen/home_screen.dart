import 'package:flutter/material.dart';
import 'package:webspark_test/services/http_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isUrlValid = false;
  String? _errorMessage;

  String? _validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return 'URL не може бути порожнім';
    }

    final RegExp urlRegExp = RegExp(
      r'^(https?:\/\/)?'
      r'((([a-z\d]([a-z\d-]*[a-z\d])*)\.)+[a-z]{2,}|'
      r'((\d{1,3}\.){3}\d{1,3}))'
      r'(\:\d+)?'
      r'(\/[-a-z\d%_.~+]*)*'
      r'(\?[;&a-z\d%_.~+=-]*)?'
      r'(\#[-a-z\d_]*)?$',
      caseSensitive: false,
    );

    if (!urlRegExp.hasMatch(value)) {
      return 'Invalid URL. Check the format of the URL you entered.';
    }

    return null;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Theme.of(context).colorScheme.primary,
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
                                          _isUrlValid = false;
                                          _errorMessage = null;
                                        });
                                      },
                                    )
                                  : null,
                            ),
                            keyboardType: TextInputType.url,
                            onChanged: (value) {
                              final validationResult = _validateUrl(value);
                              setState(() {
                                _isUrlValid = validationResult == null;
                                _errorMessage = null;
                              });
                            },
                            validator: _validateUrl,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Container(
              margin: const EdgeInsets.all(16),
              width: double.infinity,
              child: OutlinedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.resolveWith<Color>(
                      (_) => Colors.blue),
                ),
                onPressed: () async {
                  final validationResult = _validateUrl(_controller.text);
                  if (validationResult != null) {
                    setState(() {
                      _errorMessage = validationResult;
                    });
                    return;
                  }

                  try {
                    await HttpService().getMainData(_controller.text);
                  } catch (e) {
                    if (!context.mounted) return;

                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Помилка: $e')),
                    );
                  }
                },
                child: Text(
                  'Start counting process',
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
