import 'lib/services/translation_service.dart';

void main() {
  print('Testing Enhanced Smart Translation:');
  print('=' * 50);

  // Test 1: Full phrase translation
  print('\n1. Full Phrase Translation:');
  print('Input: "Thank you"');
  String result1 = TranslationService.translateSmart('Thank you', 'hindi');
  print('Output: "$result1"');

  // Test 2: Multi-word phrase translation
  print('\n2. Multi-word Phrase Translation:');
  print('Input: "Very good Sarah!"');
  String result2 =
      TranslationService.translateSmart('Very good Sarah!', 'hindi');
  print('Output: "$result2"');

  // Test 3: Mixed known and unknown words
  print('\n3. Mixed Translation:');
  print('Input: "Hi John, very good work"');
  String result3 =
      TranslationService.translateSmart('Hi John, very good work', 'hindi');
  print('Output: "$result3"');

  // Test 4: Individual word fallback
  print('\n4. Individual Word Fallback:');
  print('Input: "Hello world!"');
  String result4 = TranslationService.translateSmart('Hello world!', 'hindi');
  print('Output: "$result4"');

  // Test 5: Case preservation
  print('\n5. Case Preservation:');
  print('Input: "VERY GOOD job Alex"');
  String result5 =
      TranslationService.translateSmart('VERY GOOD job Alex', 'hindi');
  print('Output: "$result5"');

  // Test 6: Longer phrase with mix
  print('\n6. Complex Sentence:');
  print('Input: "Good morning sir, thank you very much!"');
  String result6 = TranslationService.translateSmart(
      'Good morning sir, thank you very much!', 'hindi');
  print('Output: "$result6"');

  print('\n${'=' * 50}');
  print('Enhanced Smart Translation Test Complete!');
}
