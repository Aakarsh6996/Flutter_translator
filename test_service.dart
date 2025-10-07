import 'lib/services/translation_service.dart';

void main() {
  print('Testing translation service...');
  try {
    String result = TranslationService.translateSmartWithParams(
        'Hello', 'english', 'hindi');
    print('Translation result: $result');
    print('Service is working!');
  } catch (e) {
    print('Error: $e');
  }
}
