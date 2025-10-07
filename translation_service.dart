class TranslationService {
  // Comprehensive translation database
  static const Map<String, Map<String, String>> _translations = {
    'english': {
      // Basic greetings
      'hello': 'hello', 'hi': 'hi', 'goodbye': 'goodbye', 'bye': 'bye',
      'thank you': 'thank you', 'thanks': 'thanks', 'please': 'please',
      'yes': 'yes', 'no': 'no', 'maybe': 'maybe', 'sorry': 'sorry',
      'excuse me': 'excuse me',

      // Politeness and responses
      'good morning': 'good morning', 'good afternoon': 'good afternoon',
      'good evening': 'good evening', 'good night': 'good night',
      'how are you': 'how are you', 'i am fine': 'i am fine',
      'nice to meet you': 'nice to meet you',

      // Family members
      'mother': 'mother', 'father': 'father', 'brother': 'brother',
      'sister': 'sister',
      'son': 'son', 'daughter': 'daughter', 'baby': 'baby', 'child': 'child',
      'wife': 'wife', 'husband': 'husband', 'family': 'family',
      'grandfather': 'grandfather', 'grandmother': 'grandmother',
      'uncle': 'uncle', 'aunt': 'aunt', 'cousin': 'cousin', 'friend': 'friend',

      // Emotions and feelings
      'happy': 'happy', 'sad': 'sad', 'angry': 'angry', 'excited': 'excited',
      'tired': 'tired', 'worried': 'worried', 'love': 'love', 'like': 'like',
      'bored': 'bored', 'confused': 'confused', 'surprised': 'surprised',
      'scared': 'scared', 'proud': 'proud', 'nervous': 'nervous',

      // Food and drinks
      'food': 'food', 'water': 'water', 'coffee': 'coffee', 'tea': 'tea',
      'milk': 'milk', 'bread': 'bread', 'rice': 'rice', 'meat': 'meat',
      'fish': 'fish', 'chicken': 'chicken', 'egg': 'egg',
      'vegetables': 'vegetables', 'fruit': 'fruit', 'apple': 'apple',
      'banana': 'banana',
      'pizza': 'pizza', 'pasta': 'pasta', 'sandwich': 'sandwich',
      'burger': 'burger',
      'soup': 'soup', 'salad': 'salad', 'cake': 'cake',
      'chocolate': 'chocolate',
      'breakfast': 'breakfast', 'lunch': 'lunch', 'dinner': 'dinner',
      'restaurant': 'restaurant', 'hungry': 'hungry', 'thirsty': 'thirsty',

      // Places and locations
      'hotel': 'hotel', 'airport': 'airport', 'hospital': 'hospital',
      'pharmacy': 'pharmacy', 'bank': 'bank', 'market': 'market',
      'store': 'store',
      'school': 'school', 'university': 'university', 'library': 'library',
      'museum': 'museum', 'park': 'park', 'beach': 'beach',
      'mountain': 'mountain',
      'city': 'city', 'country': 'country', 'street': 'street', 'home': 'home',
      'house': 'house', 'office': 'office',

      // Colors
      'red': 'red', 'blue': 'blue', 'green': 'green', 'yellow': 'yellow',
      'black': 'black', 'white': 'white', 'pink': 'pink', 'purple': 'purple',
      'orange': 'orange', 'brown': 'brown', 'gray': 'gray',

      // Numbers
      'one': 'one', 'two': 'two', 'three': 'three', 'four': 'four',
      'five': 'five',
      'six': 'six', 'seven': 'seven', 'eight': 'eight', 'nine': 'nine',
      'ten': 'ten',
      'hundred': 'hundred', 'thousand': 'thousand',

      // Time
      'today': 'today', 'yesterday': 'yesterday', 'tomorrow': 'tomorrow',
      'now': 'now', 'morning': 'morning', 'afternoon': 'afternoon',
      'evening': 'evening', 'night': 'night', 'week': 'week', 'month': 'month',
      'year': 'year',

      // Weather
      'weather': 'weather', 'hot': 'hot', 'cold': 'cold', 'warm': 'warm',
      'sunny': 'sunny', 'cloudy': 'cloudy', 'rainy': 'rainy', 'windy': 'windy',

      // Body parts
      'head': 'head', 'face': 'face', 'eye': 'eye', 'nose': 'nose',
      'mouth': 'mouth', 'ear': 'ear', 'hand': 'hand', 'foot': 'foot',
      'leg': 'leg', 'arm': 'arm',

      // Common verbs
      'eat': 'eat', 'drink': 'drink', 'sleep': 'sleep', 'work': 'work',
      'study': 'study', 'read': 'read', 'write': 'write', 'speak': 'speak',
      'listen': 'listen', 'walk': 'walk', 'run': 'run', 'drive': 'drive',
      'buy': 'buy', 'sell': 'sell', 'give': 'give', 'take': 'take',
      'go': 'go', 'come': 'come', 'see': 'see', 'look': 'look',

      // Technology
      'computer': 'computer', 'phone': 'phone', 'internet': 'internet',
      'email': 'email', 'website': 'website', 'app': 'app',
      'camera': 'camera', 'video': 'video', 'music': 'music',

      // Household items
      'table': 'table', 'chair': 'chair', 'bed': 'bed', 'door': 'door',
      'window': 'window', 'light': 'light', 'television': 'television',
      'car': 'car', 'book': 'book',

      // Adjectives
      'big': 'big', 'small': 'small', 'good': 'good', 'bad': 'bad',
      'new': 'new', 'old': 'old', 'fast': 'fast', 'slow': 'slow',
      'beautiful': 'beautiful', 'ugly': 'ugly', 'easy': 'easy',
      'difficult': 'difficult',

      // Additional useful words
      'help': 'help', 'money': 'money', 'time': 'time', 'person': 'person',
      'man': 'man', 'woman': 'woman', 'boy': 'boy', 'girl': 'girl',
      'doctor': 'doctor', 'teacher': 'teacher', 'student': 'student',
      'job': 'job', 'business': 'business', 'game': 'game', 'movie': 'movie',
      'place': 'place', 'thing': 'thing', 'way': 'way', 'day': 'day',
      'life': 'life', 'world': 'world', 'right': 'right',
      'left': 'left', 'problem': 'problem', 'question': 'question',
      'answer': 'answer', 'information': 'information',

      // Common phrases
      'how much': 'how much', 'where is': 'where is',
      'what time': 'what time', 'i need': 'i need', 'i want': 'i want',
      'can you help me': 'can you help me',
      'i do not understand': 'i do not understand',
      'do you speak english': 'do you speak english',

      // Religious and community words
      'pastor': 'pastor', 'priest': 'priest', 'church': 'church',
      'service': 'service',
      'invited': 'invited', 'invite': 'invite', 'invitation': 'invitation',
      'german': 'german', 'our': 'our', 'was': 'was', 'to': 'to', 'a': 'a',
      'community': 'community', 'religion': 'religion', 'prayer': 'prayer',
      'worship': 'worship', 'sunday': 'sunday', 'ceremony': 'ceremony',
    },
    'hindi': {
      // Basic greetings
      'hello': 'नमस्ते', 'hi': 'हाई', 'goodbye': 'अलविदा', 'bye': 'बाय',
      'thank you': 'धन्यवाद', 'thanks': 'धन्यवाद', 'please': 'कृपया',
      'yes': 'हाँ', 'no': 'नहीं', 'maybe': 'शायद', 'sorry': 'माफ करना',
      'excuse me': 'माफ करें',

      // Politeness and responses
      'good morning': 'सुप्रभात', 'good afternoon': 'दोपहर की शुभकामनाएं',
      'good evening': 'शुभ संध्या', 'good night': 'शुभ रात्रि',
      'how are you': 'आप कैसे हैं', 'i am fine': 'मैं ठीक हूं',
      'nice to meet you': 'आपसे मिलकर खुशी हुई',

      // Family members
      'mother': 'माता', 'father': 'पिता', 'brother': 'भाई', 'sister': 'बहन',
      'son': 'बेटा', 'daughter': 'बेटी', 'baby': 'बच्चा', 'child': 'बच्चा',
      'wife': 'पत्नी', 'husband': 'पति', 'family': 'परिवार',
      'grandfather': 'दादा जी', 'grandmother': 'दादी जी',
      'uncle': 'चाचा', 'aunt': 'चाची', 'cousin': 'चचेरा भाई', 'friend': 'दोस्त',

      // Emotions and feelings
      'happy': 'खुश', 'sad': 'दुखी', 'angry': 'गुस्सा', 'excited': 'उत्साहित',
      'tired': 'थका हुआ', 'worried': 'चिंतित', 'love': 'प्रेम', 'like': 'पसंद',
      'bored': 'बोर', 'confused': 'भ्रमित', 'surprised': 'हैरान',
      'scared': 'डरा हुआ', 'proud': 'गर्व', 'nervous': 'घबराया',

      // Food and drinks
      'food': 'भोजन', 'water': 'पानी', 'coffee': 'कॉफी', 'tea': 'चाय',
      'milk': 'दूध', 'bread': 'रोटी', 'rice': 'चावल', 'meat': 'मांस',
      'fish': 'मछली', 'chicken': 'चिकन', 'egg': 'अंडा',
      'vegetables': 'सब्जियां', 'fruit': 'फल', 'apple': 'सेब', 'banana': 'केला',
      'pizza': 'पिज्जा', 'pasta': 'पास्ता', 'sandwich': 'सैंडविच',
      'burger': 'बर्गर',
      'soup': 'सूप', 'salad': 'सलाद', 'cake': 'केक', 'chocolate': 'चॉकलेट',
      'breakfast': 'नाश्ता', 'lunch': 'दोपहर का खाना', 'dinner': 'रात का खाना',
      'restaurant': 'रेस्टोरेंट', 'hungry': 'भूखा', 'thirsty': 'प्यासा',

      // Places and locations
      'hotel': 'होटल', 'airport': 'हवाई अड्डा', 'hospital': 'अस्पताल',
      'pharmacy': 'दवाखाना', 'bank': 'बैंक', 'market': 'बाजार',
      'store': 'दुकान',
      'school': 'स्कूल', 'university': 'विश्वविद्यालय', 'library': 'पुस्तकालय',
      'museum': 'संग्रहालय', 'park': 'पार्क', 'beach': 'समुद्र तट',
      'mountain': 'पहाड़',
      'city': 'शहर', 'country': 'देश', 'street': 'सड़क', 'home': 'घर',
      'house': 'घर', 'office': 'कार्यालय',

      // Colors
      'red': 'लाल', 'blue': 'नीला', 'green': 'हरा', 'yellow': 'पीला',
      'black': 'काला', 'white': 'सफेद', 'pink': 'गुलाबी', 'purple': 'बैंगनी',
      'orange': 'नारंगी', 'brown': 'भूरा', 'gray': 'स्लेटी',

      // Numbers
      'one': 'एक', 'two': 'दो', 'three': 'तीन', 'four': 'चार', 'five': 'पांच',
      'six': 'छह', 'seven': 'सात', 'eight': 'आठ', 'nine': 'नौ', 'ten': 'दस',
      'hundred': 'सौ', 'thousand': 'हजार',

      // Time
      'today': 'आज', 'yesterday': 'कल', 'tomorrow': 'कल',
      'now': 'अब', 'morning': 'सुबह', 'afternoon': 'दोपहर',
      'evening': 'शाम', 'night': 'रात', 'week': 'सप्ताह', 'month': 'महीना',
      'year': 'साल',

      // Weather
      'weather': 'मौसम', 'hot': 'गर्म', 'cold': 'ठंडा', 'warm': 'गर्म',
      'sunny': 'धूप', 'cloudy': 'बादल', 'rainy': 'बारिश', 'windy': 'हवादार',

      // Body parts
      'head': 'सिर', 'face': 'चेहरा', 'eye': 'आंख', 'nose': 'नाक',
      'mouth': 'मुंह', 'ear': 'कान', 'hand': 'हाथ', 'foot': 'पैर',
      'leg': 'पैर', 'arm': 'बांह',

      // Common verbs
      'eat': 'खाना', 'drink': 'पीना', 'sleep': 'सोना', 'work': 'काम',
      'study': 'पढ़ना', 'read': 'पढ़ना', 'write': 'लिखना', 'speak': 'बोलना',
      'listen': 'सुनना', 'walk': 'चलना', 'run': 'दौड़ना', 'drive': 'चलाना',
      'buy': 'खरीदना', 'sell': 'बेचना', 'give': 'देना', 'take': 'लेना',
      'go': 'जाना', 'come': 'आना', 'see': 'देखना', 'look': 'देखना',

      // Technology
      'computer': 'कंप्यूटर', 'phone': 'फोन', 'internet': 'इंटरनेट',
      'email': 'ईमेल', 'website': 'वेबसाइट', 'app': 'ऐप',
      'camera': 'कैमरा', 'video': 'वीडियो', 'music': 'संगीत',

      // Household items
      'table': 'मेज', 'chair': 'कुर्सी', 'bed': 'बिस्तर', 'door': 'दरवाजा',
      'window': 'खिड़की', 'light': 'रोशनी', 'television': 'टेलीविजन',
      'car': 'कार', 'book': 'किताब',

      // Adjectives
      'big': 'बड़ा', 'small': 'छोटा', 'good': 'अच्छा', 'bad': 'बुरा',
      'new': 'नया', 'old': 'पुराना', 'fast': 'तेज', 'slow': 'धीमा',
      'beautiful': 'सुंदर', 'ugly': 'बदसूरत', 'easy': 'आसान',
      'difficult': 'कठिन',

      // Additional useful words
      'help': 'मदद', 'money': 'पैसा', 'time': 'समय', 'person': 'व्यक्ति',
      'man': 'आदमी', 'woman': 'औरत', 'boy': 'लड़का', 'girl': 'लड़की',
      'doctor': 'डॉक्टर', 'teacher': 'शिक्षक', 'student': 'छात्र',
      'job': 'काम', 'business': 'व्यापार', 'game': 'खेल', 'movie': 'फिल्म',
      'place': 'जगह', 'thing': 'चीज', 'way': 'रास्ता', 'day': 'दिन',
      'life': 'जिंदगी', 'world': 'दुनिया', 'right': 'दाएं', 'left': 'बाएं',
      'problem': 'समस्या', 'question': 'सवाल', 'answer': 'जवाब',
      'information': 'जानकारी',

      // Common phrases
      'how much': 'कितना', 'where is': 'कहां है',
      'what time': 'क्या समय', 'i need': 'मुझे चाहिए',
      'i want': 'मैं चाहता हूं',
      'can you help me': 'क्या आप मेरी मदद कर सकते हैं',
      'i do not understand': 'मैं समझ नहीं पा रहा',
      'do you speak english': 'क्या आप अंग्रेजी बोलते हैं',

      // Religious and community words
      'pastor': 'पादरी', 'priest': 'पुजारी', 'church': 'चर्च',
      'service': 'सेवा',
      'invited': 'आमंत्रित', 'invite': 'आमंत्रित करना',
      'invitation': 'निमंत्रण',
      'german': 'जर्मन', 'our': 'हमारा', 'was': 'था', 'to': 'को', 'a': 'एक',
      'community': 'समुदाय', 'religion': 'धर्म', 'prayer': 'प्रार्थना',
      'worship': 'पूजा', 'sunday': 'रविवार', 'ceremony': 'समारोह',
    },
    'malayalam': {
      // Basic greetings
      'hello': 'നമസ്കാരം', 'hi': 'ഹായ്', 'goodbye': 'വിട', 'bye': 'ബൈ',
      'thank you': 'നന്ദി', 'thanks': 'നന്ദി', 'please': 'ദയവായി',
      'yes': 'അതെ', 'no': 'ഇല്ല', 'maybe': 'ആയിരിക്കാം', 'sorry': 'ക്ഷമിക്കണം',
      'excuse me': 'എക്സ്ക്യൂസ് മീ',

      // Politeness and responses
      'good morning': 'സുപ്രഭാതം', 'good afternoon': 'ഉച്ചയ്ക്ക് ശുഭകാമനകൾ',
      'good evening': 'സായാഹ്നം', 'good night': 'ശുഭരാത്രി',
      'how are you': 'എങ്ങനെയുണ്ട്', 'i am fine': 'ഞാൻ നല്ലവണ്ണമാണ്',
      'nice to meet you': 'കണ്ടുമുട്ടിയതിൽ സന്തോഷം',

      // Family members
      'mother': 'അമ്മ', 'father': 'അച്ഛൻ', 'brother': 'സഹോദരൻ',
      'sister': 'സഹോദരി',
      'son': 'മകൻ', 'daughter': 'മകൾ', 'baby': 'കുഞ്ഞ്', 'child': 'കുട്ടി',
      'wife': 'ഭാര്യ', 'husband': 'ഭർത്താവ്', 'family': 'കുടുംബം',
      'grandfather': 'അച്ഛൻ്റെ അച്ഛൻ', 'grandmother': 'അമ്മയുടെ അമ്മ',
      'uncle': 'അമ്മാവൻ', 'aunt': 'അമ്മായി', 'cousin': 'കസിൻ',
      'friend': 'സുഹൃത്ത്',

      // Emotions and feelings
      'happy': 'സന്തോഷം', 'sad': 'ദുഃഖം', 'angry': 'കോപം', 'excited': 'ആവേശം',
      'tired': 'ക്ഷീണിതം', 'worried': 'വിഷമം', 'love': 'സ്നേഹം',
      'like': 'ഇഷ്ടം',
      'bored': 'ബോറടിക്കുന്നു', 'confused': 'കൺഫ്യൂസ്ഡ്',
      'surprised': 'ആശ്ചര്യം',
      'scared': 'ഭയം', 'proud': 'അഭിമാനം', 'nervous': 'പരിഭ്രമം',

      // Food and drinks
      'food': 'ഭക്ഷണം', 'water': 'വെള്ളം', 'coffee': 'കാപ്പി', 'tea': 'ചായ',
      'milk': 'പാൽ', 'bread': 'അപ്പം', 'rice': 'ചോറ്', 'meat': 'മാംസം',
      'fish': 'മീൻ', 'chicken': 'കോഴി', 'egg': 'മുട്ട',
      'vegetables': 'പച്ചക്കറികൾ', 'fruit': 'പഴം', 'apple': 'ആപ്പിൾ',
      'banana': 'വാഴപ്പഴം',
      'pizza': 'പിസ്സ', 'pasta': 'പാസ്ത', 'sandwich': 'സാൻഡ്‌വിച്ച്',
      'burger': 'ബർഗർ',
      'soup': 'സൂപ്പ്', 'salad': 'സലാഡ്', 'cake': 'കേക്ക്',
      'chocolate': 'ചോക്ലേറ്റ്',
      'breakfast': 'രാവിലത്തെ ഭക്ഷണം', 'lunch': 'ഉച്ചഭക്ഷണം',
      'dinner': 'അത്താഴം',
      'restaurant': 'റെസ്റ്റോറന്റ്', 'hungry': 'വിശപ്പ്', 'thirsty': 'ദാഹം',

      // Places and locations
      'hotel': 'ഹോട്ടൽ', 'airport': 'വിമാനത്താവളം', 'hospital': 'ആശുപത്രി',
      'pharmacy': 'ഫാർമസി', 'bank': 'ബാങ്ക്', 'market': 'മാർക്കറ്റ്',
      'store': 'കട',
      'school': 'സ്കൂൾ', 'university': 'സർവകലാശാല', 'library': 'ലൈബ്രറി',
      'museum': 'മ്യൂസിയം', 'park': 'പാർക്ക്', 'beach': 'കടൽത്തീരം',
      'mountain': 'മല',
      'city': 'നഗരം', 'country': 'രാജ്യം', 'street': 'തെരുവ്', 'home': 'വീട്',
      'house': 'വീട്', 'office': 'ഓഫീസ്',

      // Colors
      'red': 'ചുവപ്പ്', 'blue': 'നീല', 'green': 'പച്ച', 'yellow': 'മഞ്ഞ',
      'black': 'കറുപ്പ്', 'white': 'വെള്ള', 'pink': 'പിങ്ക്',
      'purple': 'പർപ്പിൾ',
      'orange': 'ഓറഞ്ച്', 'brown': 'തവിട്ട്', 'gray': 'ചാരനിറം',

      // Numbers
      'one': 'ഒന്ന്', 'two': 'രണ്ട്', 'three': 'മൂന്ന്', 'four': 'നാല്',
      'five': 'അഞ്ച്',
      'six': 'ആറ്', 'seven': 'ഏഴ്', 'eight': 'എട്ട്', 'nine': 'ഒമ്പത്',
      'ten': 'പത്ത്',
      'hundred': 'നൂറ്', 'thousand': 'ആയിരം',

      // Time
      'today': 'ഇന്ന്', 'yesterday': 'ഇന്നലെ', 'tomorrow': 'നാളെ',
      'now': 'ഇപ്പോൾ', 'morning': 'രാവിലെ', 'afternoon': 'ഉച്ച',
      'evening': 'വൈകുന്നേരം', 'night': 'രാത്രി', 'week': 'ആഴ്ച',
      'month': 'മാസം',
      'year': 'വർഷം',

      // Weather
      'weather': 'കാലാവസ്ഥ', 'hot': 'ചൂട്', 'cold': 'തണുപ്പ്', 'warm': 'ചുട്ട്',
      'sunny': 'വെയിൽ', 'cloudy': 'മേഘം', 'rainy': 'മഴ', 'windy': 'കാറ്റ്',

      // Body parts
      'head': 'തല', 'face': 'മുഖം', 'eye': 'കണ്ണ്', 'nose': 'മൂക്ക്',
      'mouth': 'വായ', 'ear': 'ചെവി', 'hand': 'കൈ', 'foot': 'കാൽ',
      'leg': 'കാൽ', 'arm': 'കൈ',

      // Common verbs
      'eat': 'കഴിക്കുക', 'drink': 'കുടിക്കുക', 'sleep': 'ഉറങ്ങുക',
      'work': 'ജോലി',
      'study': 'പഠിക്കുക', 'read': 'വായിക്കുക', 'write': 'എഴുതുക',
      'speak': 'സംസാരിക്കുക',
      'listen': 'കേൾക്കുക', 'walk': 'നടക്കുക', 'run': 'ഓടുക',
      'drive': 'ഓടിക്കുക',
      'buy': 'വാങ്ങുക', 'sell': 'വിൽക്കുക', 'give': 'കൊടുക്കുക',
      'take': 'എടുക്കുക',
      'go': 'പോകുക', 'come': 'വരുക', 'see': 'കാണുക', 'look': 'നോക്കുക',

      // Technology
      'computer': 'കമ്പ്യൂട്ടർ', 'phone': 'ഫോൺ', 'internet': 'ഇന്റർനെറ്റ്',
      'email': 'ഇമെയിൽ', 'website': 'വെബ്‌സൈറ്റ്', 'app': 'ആപ്പ്',
      'camera': 'ക്യാമറ', 'video': 'വീഡിയോ', 'music': 'സംഗീതം',

      // Household items
      'table': 'മേശ', 'chair': 'കസേര', 'bed': 'കിടക്ക', 'door': 'വാതിൽ',
      'window': 'ജനൽ', 'light': 'വെളിച്ചം', 'television': 'ടെലിവിഷൻ',
      'car': 'കാർ', 'book': 'പുസ്തകം',

      // Adjectives
      'big': 'വലിയ', 'small': 'ചെറിയ', 'good': 'നല്ല', 'bad': 'മോശം',
      'new': 'പുതിയ', 'old': 'പഴയ', 'fast': 'വേഗം', 'slow': 'പതുക്കെ',
      'beautiful': 'സുന്ദരമായ', 'ugly': 'വിരൂപമായ', 'easy': 'എളുപ്പം',
      'difficult': 'ബുദ്ധിമുട്ട്',

      // Additional useful words
      'help': 'സഹായം', 'money': 'പണം', 'time': 'സമയം', 'person': 'വ്യക്തി',
      'man': 'മനുഷ്യൻ', 'woman': 'സ്ത്രീ', 'boy': 'ആൺകുട്ടി',
      'girl': 'പെൺകുട്ടി',
      'doctor': 'ഡോക്ടർ', 'teacher': 'ടീച്ചർ', 'student': 'വിദ്യാർത്ഥി',
      'job': 'ജോലി', 'business': 'ബിസിനസ്', 'game': 'ഗെയിം', 'movie': 'സിനിമ',
      'place': 'സ്ഥലം', 'thing': 'വസ്തു', 'way': 'വഴി', 'day': 'ദിവസം',
      'life': 'ജീവിതം', 'world': 'ലോകം', 'right': 'വലത്', 'left': 'ഇടത്',
      'problem': 'പ്രശ്നം', 'question': 'ചോദ്യം', 'answer': 'ഉത്തരം',
      'information': 'വിവരം',

      // Common phrases
      'how much': 'എത്ര', 'where is': 'എവിടെയാണ്',
      'what time': 'എന്ത് സമയം', 'i need': 'എനിക്ക് വേണം',
      'i want': 'എനിക്ക് വേണം',
      'can you help me': 'എന്നെ സഹായിക്കാമോ',
      'i do not understand': 'എനിക്ക് മനസ്സിലാകുന്നില്ല',
      'do you speak english': 'നിങ്ങൾ ഇംഗ്ലീഷ് സംസാരിക്കുമോ',

      // Religious and community words
      'pastor': 'പാസ്റ്റർ', 'priest': 'പുരോഹിതൻ', 'church': 'പള്ളി',
      'service': 'സേവനം',
      'invited': 'ക്ഷണിച്ചത്', 'invite': 'ക്ഷണിക്കുക', 'invitation': 'ക്ഷണം',
      'german': 'ജർമ്മൻ', 'our': 'നമ്മുടെ', 'was': 'ആയിരുന്നു',
      'to': 'യിലേക്ക്', 'a': 'ഒരു',
      'community': 'സമൂഹം', 'religion': 'മതം', 'prayer': 'പ്രാർത്ഥന',
      'worship': 'ആരാധന', 'sunday': 'ഞായറാഴ്ച', 'ceremony': 'ചടങ്ങ്',
    },
    'german': {
      // Basic greetings
      'hello': 'Hallo', 'hi': 'Hi', 'goodbye': 'Auf Wiedersehen',
      'bye': 'Tschüss',
      'thank you': 'Danke', 'thanks': 'Danke', 'please': 'Bitte',
      'yes': 'Ja', 'no': 'Nein', 'maybe': 'Vielleicht',
      'sorry': 'Entschuldigung',
      'excuse me': 'Entschuldigen Sie',

      // Politeness and responses
      'good morning': 'Guten Morgen', 'good afternoon': 'Guten Tag',
      'good evening': 'Guten Abend', 'good night': 'Gute Nacht',
      'how are you': 'Wie geht es dir', 'i am fine': 'Mir geht es gut',
      'nice to meet you': 'Freut mich, Sie kennenzulernen',

      // Family members
      'mother': 'Mutter', 'father': 'Vater', 'brother': 'Bruder',
      'sister': 'Schwester',
      'son': 'Sohn', 'daughter': 'Tochter', 'baby': 'Baby', 'child': 'Kind',
      'wife': 'Ehefrau', 'husband': 'Ehemann', 'family': 'Familie',
      'grandfather': 'Großvater', 'grandmother': 'Großmutter',
      'uncle': 'Onkel', 'aunt': 'Tante', 'cousin': 'Cousin', 'friend': 'Freund',

      // Emotions and feelings
      'happy': 'glücklich', 'sad': 'traurig', 'angry': 'wütend',
      'excited': 'aufgeregt',
      'tired': 'müde', 'worried': 'besorgt', 'love': 'Liebe', 'like': 'mögen',
      'bored': 'gelangweilt', 'confused': 'verwirrt', 'surprised': 'überrascht',
      'scared': 'verängstigt', 'proud': 'stolz', 'nervous': 'nervös',

      // Food and drinks
      'food': 'Essen', 'water': 'Wasser', 'coffee': 'Kaffee', 'tea': 'Tee',
      'milk': 'Milch', 'bread': 'Brot', 'rice': 'Reis', 'meat': 'Fleisch',
      'fish': 'Fisch', 'chicken': 'Hähnchen', 'egg': 'Ei',
      'vegetables': 'Gemüse', 'fruit': 'Obst', 'apple': 'Apfel',
      'banana': 'Banane',
      'pizza': 'Pizza', 'pasta': 'Pasta', 'sandwich': 'Sandwich',
      'burger': 'Burger',
      'soup': 'Suppe', 'salad': 'Salat', 'cake': 'Kuchen',
      'chocolate': 'Schokolade',
      'breakfast': 'Frühstück', 'lunch': 'Mittagessen', 'dinner': 'Abendessen',
      'restaurant': 'Restaurant', 'hungry': 'hungrig', 'thirsty': 'durstig',

      // Continue with other categories...
      'help': 'Hilfe', 'money': 'Geld', 'time': 'Zeit', 'person': 'Person',
      'good': 'gut', 'bad': 'schlecht', 'big': 'groß', 'small': 'klein',

      // Religious and community words
      'pastor': 'Pastor', 'priest': 'Priester', 'church': 'Kirche',
      'service': 'Gottesdienst',
      'invited': 'eingeladen', 'invite': 'einladen', 'invitation': 'Einladung',
      'german': 'deutsch', 'our': 'unser', 'was': 'war', 'to': 'zu', 'a': 'ein',
      'community': 'Gemeinschaft', 'religion': 'Religion', 'prayer': 'Gebet',
      'worship': 'Gottesdienst', 'sunday': 'Sonntag', 'ceremony': 'Zeremonie',
    },
    'italian': {
      // Basic greetings
      'hello': 'Ciao', 'hi': 'Ciao', 'goodbye': 'Arrivederci', 'bye': 'Ciao',
      'thank you': 'Grazie', 'thanks': 'Grazie', 'please': 'Per favore',
      'yes': 'Sì', 'no': 'No', 'maybe': 'Forse', 'sorry': 'Scusa',
      'excuse me': 'Mi scusi',

      // Politeness and responses
      'good morning': 'Buongiorno', 'good afternoon': 'Buon pomeriggio',
      'good evening': 'Buonasera', 'good night': 'Buonanotte',
      'how are you': 'Come stai', 'i am fine': 'Sto bene',
      'nice to meet you': 'Piacere di conoscerti',

      // Family members
      'mother': 'Madre', 'father': 'Padre', 'brother': 'Fratello',
      'sister': 'Sorella',
      'son': 'Figlio', 'daughter': 'Figlia', 'baby': 'Bambino',
      'child': 'Bambino',
      'wife': 'Moglie', 'husband': 'Marito', 'family': 'Famiglia',
      'grandfather': 'Nonno', 'grandmother': 'Nonna',
      'uncle': 'Zio', 'aunt': 'Zia', 'cousin': 'Cugino', 'friend': 'Amico',

      // Continue with other categories...
      'help': 'Aiuto', 'money': 'Soldi', 'time': 'Tempo', 'person': 'Persona',
      'good': 'Buono', 'bad': 'Cattivo', 'big': 'Grande', 'small': 'Piccolo',

      // Religious and community words
      'pastor': 'Pastore', 'priest': 'Prete', 'church': 'Chiesa',
      'service': 'Servizio',
      'invited': 'invitato', 'invite': 'invitare', 'invitation': 'Invito',
      'german': 'tedesco', 'our': 'nostro', 'was': 'era', 'to': 'a', 'a': 'un',
      'community': 'Comunità', 'religion': 'Religione', 'prayer': 'Preghiera',
      'worship': 'Culto', 'sunday': 'Domenica', 'ceremony': 'Cerimonia',
    },
  };

  // Get translation for a word or phrase in the target language
  static String translate(String text, String targetLanguage) {
    if (targetLanguage.toLowerCase() == 'english') {
      return text; // No translation needed for English
    }

    final languageTranslations = _translations[targetLanguage.toLowerCase()];
    if (languageTranslations == null) {
      return 'Translation not available';
    }

    // Direct lookup for the text (case-insensitive)
    final directTranslation = languageTranslations[text.toLowerCase()];
    if (directTranslation != null) {
      return _preserveCapitalization(directTranslation, text);
    }

    return 'Translation not available';
  }

  // Smart translation that handles partial phrases
  static String translateSmart(String text, String targetLanguage) {
    if (targetLanguage.toLowerCase() == 'english') {
      return text;
    }

    final words = text.toLowerCase().split(' ');
    final translatedWords = <String>[];

    for (int i = 0; i < words.length; i++) {
      String? translation;

      // Try translating progressively smaller phrases starting from the current position
      for (int len = words.length - i; len >= 1; len--) {
        final phrase = words.sublist(i, i + len).join(' ');
        translation = translate(phrase, targetLanguage);

        if (translation != 'Translation not available') {
          translatedWords.add(translation);
          i += len - 1; // Skip the words we just translated
          break;
        }
      }

      // If no translation found, keep the original word
      if (translation == 'Translation not available') {
        translatedWords.add(words[i]);
      }
    }

    return translatedWords.join(' ');
  }

  // Preserve the original capitalization pattern
  static String _preserveCapitalization(String translation, String original) {
    if (original.isEmpty || translation.isEmpty) return translation;

    final result = translation.split('');
    final originalChars = original.split('');

    for (int i = 0; i < result.length && i < originalChars.length; i++) {
      if (originalChars[i] == originalChars[i].toUpperCase()) {
        result[i] = result[i].toUpperCase();
      }
    }

    return result.join('');
  }

  // Get all available languages
  static List<String> getAvailableLanguages() {
    return _translations.keys.toList();
  }

  // Static list of supported languages for backward compatibility
  static const List<String> supportedLanguages = [
    'english',
    'hindi',
    'malayalam',
    'german',
    'italian',
  ];

  // Get display name for a language
  static String getLanguageDisplayName(String languageCode) {
    switch (languageCode.toLowerCase()) {
      case 'english':
        return 'English';
      case 'hindi':
        return 'Hindi (हिंदी)';
      case 'malayalam':
        return 'Malayalam (മലയാളം)';
      case 'german':
        return 'German';
      case 'italian':
        return 'Italian';
      default:
        return languageCode.toUpperCase();
    }
  }

  // Check if a language is supported
  static bool isLanguageSupported(String language) {
    return _translations.containsKey(language.toLowerCase());
  }

  // Firebase-compatible translate method with 3 parameters (for backward compatibility)
  static String translateWithParams(
      String text, String fromLanguage, String toLanguage) {
    // For this simple implementation, we ignore the source language
    return translate(text, toLanguage);
  }

  // Smart translation with 3 parameters (for backward compatibility)
  static String translateSmartWithParams(
      String text, String fromLanguage, String toLanguage) {
    // For this simple implementation, we ignore the source language
    return translateSmart(text, toLanguage);
  }
}
