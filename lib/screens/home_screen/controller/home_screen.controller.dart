import 'package:webspark_test/models/main_response.model.dart';
import 'package:webspark_test/services/http_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_screen.controller.g.dart';

@riverpod
class HomeScreenController extends _$HomeScreenController {
  final _httpService = HttpService();

  @override
  FutureOr<void> build() {
    return null;
  }

  String? validateUrl(String? value) {
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

  Future<MainResponse?> getMainData(String url) async {
    state = const AsyncLoading();

    try {
      final validationResult = validateUrl(url);
      if (validationResult != null) {
        state = AsyncError(validationResult, StackTrace.current);
        return null;
      }

      final response = await _httpService.getMainData(url);
      return response;
      state = const AsyncData(null);
    } catch (e, stackTrace) {
      state = AsyncError(e, stackTrace);
    }
  }
}
