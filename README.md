    # Flutter Translator App

    A simple language translation app built with Flutter. This is a frontend-only app that uses predefined translations for common phrases.

    ## Features

    - **Multi-language Support**: Supports English, Spanish, French, German, and Italian
    - **Simple UI**: Clean and intuitive Material Design interface
    - **Language Swapping**: Easy swap between source and target languages
    - **Common Phrases**: Quick access to frequently used phrases
    - **Copy to Clipboard**: Copy translations with one tap
    - **Mock Translation**: Simulates translation delay for realistic user experience

    ## Screenshots

    The app includes:
    - Language selection dropdowns
    - Text input area with clear button
    - Translation button with loading state
    - Translation results with copy functionality
    - Common phrases for quick translation
    - Clean, modern Material Design interface

    ## Supported Languages

    - English
    - Spanish
    - French
    - German
    - Italian

    ## How to Run

    1. Make sure you have Flutter installed on your system
    2. Clone or download this project
    3. Navigate to the project directory
    4. Run `flutter pub get` to install dependencies
    5. Run `flutter run` to start the app

    ## Project Structure

    ```
    lib/
    ├── main.dart                 # App entry point
    ├── screens/
    │   └── translation_screen.dart   # Main translation interface
    └── services/
        └── translation_service.dart  # Translation logic and data
    ```

    ## Translation Data

    The app uses a mock translation service with predefined translations for common phrases. In a real-world app, this would be replaced with calls to a translation API like Google Translate, Azure Translator, or AWS Translate.

    ## Key Features Implemented

    ### UI Components
    - Material Design AppBar
    - Dropdown menus for language selection
    - Text input fields with custom styling
    - Elevated buttons with loading states
    - Card-based layout with shadows
    - Chip-based common phrases
    - Copy to clipboard functionality

    ### Functionality
    - Text translation between supported languages
    - Language swapping
    - Input validation
    - Loading states
    - Error handling
    - Clipboard operations

    ### Code Structure
    - Separation of concerns with service layer
    - Stateful widget for reactive UI
    - Clean, readable code organization
    - Proper Flutter best practices

    ## Future Enhancements

    - Add more languages
    - Implement voice input/output
    - Add translation history
    - Implement offline mode
    - Add favorites for commonly used phrases
    - Integrate with real translation APIs
    - Add dark mode support
    - Implement text-to-speech

    ## Dependencies

    - Flutter SDK
    - Material Design Components (built-in)

    ## License

    This project is for educational purposes and demonstrates Flutter app development concepts.