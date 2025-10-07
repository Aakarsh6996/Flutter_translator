import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../services/translation_service.dart';

class TranslationScreen extends StatefulWidget {
  const TranslationScreen({super.key});

  @override
  State<TranslationScreen> createState() => _TranslationScreenState();
}

class _TranslationScreenState extends State<TranslationScreen> {
  final TextEditingController _inputController = TextEditingController();
  String _translatedText = '';
  String _sourceLanguage = 'english';
  String _targetLanguage = 'hindi';
  bool _isTranslating = false;
  bool _isSmartTranslation = true;

  void _translateText() async {
    if (_inputController.text.trim().isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter text to translate')),
      );
      return;
    }

    setState(() {
      _isTranslating = true;
    });

    await Future.delayed(const Duration(milliseconds: 800));

    String translatedText;
    if (_isSmartTranslation) {
      translatedText = TranslationService.translateSmart(
        _inputController.text,
        _targetLanguage,
      );
    } else {
      translatedText = TranslationService.translate(
        _inputController.text,
        _targetLanguage,
      );
    }

    setState(() {
      _translatedText = translatedText;
      _isTranslating = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        title: const Text('Flutter Translator'),
        backgroundColor: Colors.blue[600],
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Smart Translation Toggle
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Smart Translation',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(
                            _isSmartTranslation
                                ? 'Translates individual words (e.g., "Hi John" → "नमस्ते John")'
                                : 'Translates complete phrases only',
                            style: const TextStyle(
                                fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: _isSmartTranslation,
                      onChanged: (value) =>
                          setState(() => _isSmartTranslation = value),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Language Selection
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: DropdownButton<String>(
                        value: _sourceLanguage,
                        isExpanded: true,
                        hint: const Text('From'),
                        items:
                            TranslationService.supportedLanguages.map((lang) {
                          return DropdownMenuItem(
                            value: lang,
                            child: Text(
                                TranslationService.getLanguageDisplayName(
                                    lang)),
                          );
                        }).toList(),
                        onChanged: (value) =>
                            setState(() => _sourceLanguage = value!),
                      ),
                    ),
                    const Icon(Icons.arrow_forward, size: 20),
                    Expanded(
                      child: DropdownButton<String>(
                        value: _targetLanguage,
                        isExpanded: true,
                        hint: const Text('To'),
                        items:
                            TranslationService.supportedLanguages.map((lang) {
                          return DropdownMenuItem(
                            value: lang,
                            child: Text(
                                TranslationService.getLanguageDisplayName(
                                    lang)),
                          );
                        }).toList(),
                        onChanged: (value) =>
                            setState(() => _targetLanguage = value!),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Input Text
            Card(
              child: TextField(
                controller: _inputController,
                decoration: const InputDecoration(
                  hintText: 'Enter text to translate...',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(16),
                ),
                maxLines: 4,
              ),
            ),
            const SizedBox(height: 16),
            // Translate Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _isTranslating ? null : _translateText,
                icon: _isTranslating
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                            strokeWidth: 2, color: Colors.white))
                    : const Icon(Icons.translate),
                label: Text(_isTranslating ? 'Translating...' : 'Translate'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[600],
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Result
            if (_translatedText.isNotEmpty)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            TranslationService.getLanguageDisplayName(
                                _targetLanguage),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                            icon: const Icon(Icons.copy),
                            onPressed: () {
                              Clipboard.setData(
                                  ClipboardData(text: _translatedText));
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Copied to clipboard')),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      Text(_translatedText,
                          style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
            const Spacer(),
            // Examples
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Smart Translation Examples:',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Wrap(
                      spacing: 8,
                      children: [
                        'Hi John',
                        'Thank you Sarah',
                        'Good morning everyone',
                        'Hello world'
                      ]
                          .map((phrase) => ActionChip(
                                label: Text(phrase),
                                onPressed: () => setState(
                                    () => _inputController.text = phrase),
                              ))
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
