import 'lib/services/translation_service.dart';

void main() {
  String sentence = "A german pastor was invited to our church service";

  print("Original (English): $sentence");
  print("");

  // Test translation to all supported languages
  List<String> languages = ['hindi', 'malayalam', 'german', 'italian'];

  for (String language in languages) {
    String translated = TranslationService.translateSmart(sentence, language);
    String displayName = TranslationService.getLanguageDisplayName(language);
    print("$displayName: $translated");
  }

  print("");
  print("Testing individual words:");
  List<String> keyWords = [
    'german',
    'pastor',
    'was',
    'invited',
    'to',
    'our',
    'church',
    'service'
  ];

  for (String word in keyWords) {
    print("\n'$word' translations:");
    for (String language in languages) {
      String translated = TranslationService.translate(word, language);
      String displayName = TranslationService.getLanguageDisplayName(language);
      print("  $displayName: $translated");
    }
  }
}
