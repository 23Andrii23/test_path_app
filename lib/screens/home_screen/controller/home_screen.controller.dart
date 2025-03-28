import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen.controller.g.dart';

@riverpod
class HomeScreenController extends _$HomeScreenController {
  @override
  FutureOr<void> build() {
    return null;
  }

  String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return 'URL cannot be empty.';
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
}
