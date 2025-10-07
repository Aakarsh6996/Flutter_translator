import 'package:cloud_firestore/cloud_firestore.dart';

class TranslationService {
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Comprehensive translation database with 180+ phrases per language
  static const Map<String, Map<String, String>> _translations = {
    'english': {
      // Basic greetings and politeness
      'hello': 'hello', 'goodbye': 'goodbye', 'thank you': 'thank you',
      'thanks': 'thanks',
      'please': 'please', 'yes': 'yes', 'no': 'no',
      'good morning': 'good morning',
      'good afternoon': 'good afternoon', 'good evening': 'good evening',
      'good night': 'good night',
      'how are you?': 'how are you?', 'i am fine': 'i am fine',
      'nice to meet you': 'nice to meet you',
      'excuse me': 'excuse me', 'sorry': 'sorry',
      'my apologies': 'my apologies', 'you are welcome': 'you are welcome',

      // Common multi-word phrases
      'very good': 'very good', 'very bad': 'very bad', 'so good': 'so good',
      'not good': 'not good', 'too much': 'too much', 'too little': 'too little',
      'right now': 'right now', 'just now': 'just now', 'long time': 'long time',
      'short time': 'short time', 'big house': 'big house', 'small house': 'small house',
      'old man': 'old man', 'young man': 'young man', 'old woman': 'old woman',
      'young woman': 'young woman', 'good luck': 'good luck', 'bad luck': 'bad luck',
      'take care': 'take care', 'see you': 'see you', 'see you later': 'see you later',
      'talk later': 'talk later', 'speak english': 'speak english', 'speak hindi': 'speak hindi',
      'i understand': 'i understand', 'i dont understand': 'i dont understand',
      'very beautiful': 'very beautiful', 'very nice': 'very nice', 'very happy': 'very happy',
      'very sad': 'very sad', 'very tired': 'very tired', 'very hungry': 'very hungry',
      'good morning sir': 'good morning sir', 'good evening sir': 'good evening sir',
      'thank you sir': 'thank you sir', 'thank you madam': 'thank you madam',

      // Family and relationships
      'family': 'family', 'father': 'father', 'mother': 'mother', 'son': 'son',
      'daughter': 'daughter',
      'brother': 'brother', 'sister': 'sister', 'husband': 'husband',
      'wife': 'wife',
      'grandfather': 'grandfather', 'grandmother': 'grandmother',
      'uncle': 'uncle', 'aunt': 'aunt',
      'cousin': 'cousin', 'friend': 'friend',

      // Love and emotions
      'i love you': 'i love you', 'i like you': 'i like you',
      'i miss you': 'i miss you',
      'happy': 'happy', 'sad': 'sad', 'angry': 'angry', 'excited': 'excited',
      'tired': 'tired', 'worried': 'worried',

      // Food and drinks
      'food': 'food', 'water': 'water', 'coffee': 'coffee', 'tea': 'tea',
      'milk': 'milk',
      'bread': 'bread', 'rice': 'rice', 'meat': 'meat', 'fish': 'fish',
      'chicken': 'chicken',
      'vegetables': 'vegetables', 'fruit': 'fruit', 'apple': 'apple',
      'banana': 'banana',
      'pizza': 'pizza', 'pasta': 'pasta', 'sandwich': 'sandwich',
      'breakfast': 'breakfast',
      'lunch': 'lunch', 'dinner': 'dinner', 'restaurant': 'restaurant',
      'menu': 'menu',
      'delicious': 'delicious', 'hungry': 'hungry', 'thirsty': 'thirsty',

      // Travel and places
      'hotel': 'hotel', 'airport': 'airport', 'train station': 'train station',
      'bus stop': 'bus stop',
      'hospital': 'hospital', 'pharmacy': 'pharmacy', 'bank': 'bank',
      'market': 'market',
      'store': 'store', 'school': 'school', 'university': 'university',
      'library': 'library',
      'museum': 'museum', 'park': 'park', 'beach': 'beach',
      'mountain': 'mountain',
      'city': 'city', 'country': 'country', 'street': 'street',
      'address': 'address',

      // Colors
      'red': 'red', 'blue': 'blue', 'green': 'green', 'yellow': 'yellow',
      'black': 'black',
      'white': 'white', 'pink': 'pink', 'purple': 'purple', 'orange': 'orange',
      'brown': 'brown', 'gray': 'gray',

      // Numbers
      'one': 'one', 'two': 'two', 'three': 'three', 'four': 'four',
      'five': 'five',
      'six': 'six', 'seven': 'seven', 'eight': 'eight', 'nine': 'nine',
      'ten': 'ten',
      'hundred': 'hundred', 'thousand': 'thousand',

      // Time and dates
      'today': 'today', 'yesterday': 'yesterday', 'tomorrow': 'tomorrow',
      'now': 'now',
      'later': 'later', 'early': 'early', 'late': 'late', 'morning': 'morning',
      'afternoon': 'afternoon', 'evening': 'evening', 'night': 'night',
      'week': 'week', 'month': 'month', 'year': 'year',

      // Common questions and phrases
      'what': 'what', 'when': 'when', 'where': 'where', 'who': 'who',
      'why': 'why',
      'how': 'how', 'how much': 'how much', 'where is': 'where is',
      'do you speak english': 'do you speak english',
      'i do not understand': 'i do not understand',
      'can you help me': 'can you help me', 'help': 'help',
      'call the police': 'call the police',
      'emergency': 'emergency',

      // Weather
      'weather': 'weather', 'hot': 'hot', 'cold': 'cold', 'warm': 'warm',
      'cool': 'cool',
      'sunny': 'sunny', 'cloudy': 'cloudy', 'rainy': 'rainy', 'snowy': 'snowy',
      'windy': 'windy',

      // Body parts
      'head': 'head', 'face': 'face', 'eye': 'eye', 'nose': 'nose',
      'mouth': 'mouth',
      'ear': 'ear', 'hand': 'hand', 'foot': 'foot', 'leg': 'leg', 'arm': 'arm',

      // Common verbs
      'eat': 'eat', 'drink': 'drink', 'sleep': 'sleep', 'work': 'work',
      'study': 'study',
      'read': 'read', 'write': 'write', 'speak': 'speak', 'listen': 'listen',
      'walk': 'walk',
      'run': 'run', 'drive': 'drive', 'buy': 'buy', 'sell': 'sell',
      'give': 'give',
      'take': 'take', 'go': 'go', 'come': 'come', 'see': 'see', 'look': 'look',
      
      // Technology and Modern Life
      'computer': 'computer', 'phone': 'phone', 'mobile': 'mobile', 'internet': 'internet',
      'email': 'email', 'website': 'website', 'app': 'app', 'software': 'software',
      'download': 'download', 'upload': 'upload', 'password': 'password', 'username': 'username',
      'wifi': 'wifi', 'bluetooth': 'bluetooth', 'camera': 'camera', 'video': 'video',
      'movie': 'movie', 'game': 'game', 'online': 'online', 'offline': 'offline',
      
      // Household Items
      'table': 'table', 'chair': 'chair', 'bed': 'bed', 'sofa': 'sofa',
      'television': 'television', 'tv': 'tv', 'refrigerator': 'refrigerator', 'fridge': 'fridge',
      'microwave': 'microwave', 'oven': 'oven', 'stove': 'stove', 'dishwasher': 'dishwasher',
      'washing machine': 'washing machine', 'dryer': 'dryer', 'vacuum': 'vacuum',
      'lamp': 'lamp', 'bulb': 'bulb', 'switch': 'switch',
      'door': 'door', 'window': 'window', 'wall': 'wall', 'floor': 'floor',
      'ceiling': 'ceiling', 'roof': 'roof', 'stairs': 'stairs', 'elevator': 'elevator',
      
      // Clothing
      'shirt': 'shirt', 'pants': 'pants', 'dress': 'dress', 'skirt': 'skirt',
      'shoes': 'shoes', 'socks': 'socks', 'hat': 'hat', 'cap': 'cap',
      'jacket': 'jacket', 'coat': 'coat', 'sweater': 'sweater', 'jeans': 'jeans',
      'shorts': 'shorts', 'underwear': 'underwear', 'bra': 'bra', 'tie': 'tie',
      'belt': 'belt', 'watch': 'watch', 'glasses': 'glasses', 'sunglasses': 'sunglasses',
      
      // Food and Cooking (avoiding duplicates)
      'bread': 'bread', 'rice': 'rice', 'pasta': 'pasta', 'pizza': 'pizza',
      'burger': 'burger', 'sandwich': 'sandwich', 'salad': 'salad', 'soup': 'soup',
      'meat': 'meat', 'chicken': 'chicken', 'beef': 'beef', 'fish': 'fish',
      'vegetables': 'vegetables', 'fruit': 'fruit', 'apple': 'apple', 'banana': 'banana',
      'grape': 'grape', 'strawberry': 'strawberry', 'mango': 'mango',
      'tomato': 'tomato', 'potato': 'potato', 'onion': 'onion', 'garlic': 'garlic',
      'cheese': 'cheese', 'milk': 'milk', 'butter': 'butter', 'egg': 'egg',
      'sugar': 'sugar', 'salt': 'salt', 'pepper': 'pepper', 'spice': 'spice',
      'oil': 'oil', 'flour': 'flour', 'cake': 'cake', 'cookie': 'cookie',
      'chocolate': 'chocolate', 'ice cream': 'ice cream',
      
      // Emotions and Feelings (avoiding duplicates)
      'tired': 'tired', 'bored': 'bored', 'confused': 'confused', 'surprised': 'surprised',
      'worried': 'worried', 'scared': 'scared', 'proud': 'proud', 'jealous': 'jealous',
      'lonely': 'lonely', 'stressed': 'stressed', 'relaxed': 'relaxed', 'comfortable': 'comfortable',
      'uncomfortable': 'uncomfortable', 'nervous': 'nervous', 'confident': 'confident',
      'embarrassed': 'embarrassed', 'disappointed': 'disappointed', 'grateful': 'grateful',
      
      // Actions and Verbs (avoiding duplicates)
      'make': 'make', 'do': 'do', 'have': 'have', 'get': 'get', 'put': 'put',
      'use': 'use', 'find': 'find', 'keep': 'keep', 'try': 'try', 'help': 'help',
      'learn': 'learn', 'teach': 'teach',
      'study': 'study', 'practice': 'practice', 'remember': 'remember', 'forget': 'forget',
      'think': 'think', 'know': 'know', 'understand': 'understand', 'believe': 'believe',
      'hope': 'hope', 'wish': 'wish', 'want': 'want', 'need': 'need',
      'like': 'like', 'love': 'love', 'hate': 'hate', 'prefer': 'prefer',
      'choose': 'choose', 'decide': 'decide', 'agree': 'agree', 'disagree': 'disagree',
      'ask': 'ask', 'answer': 'answer', 'tell': 'tell', 'say': 'say',
      'talk': 'talk', 'discuss': 'discuss', 'explain': 'explain', 'describe': 'describe',
      'start': 'start', 'stop': 'stop', 'finish': 'finish', 'continue': 'continue',
      'begin': 'begin', 'end': 'end', 'open': 'open', 'close': 'close',
      'turn on': 'turn on', 'turn off': 'turn off', 'move': 'move', 'stay': 'stay',
      
      // Adjectives and Descriptions (avoiding duplicates)
      'big': 'big', 'small': 'small', 'large': 'large', 'tiny': 'tiny',
      'long': 'long', 'short': 'short', 'tall': 'tall', 'wide': 'wide',
      'narrow': 'narrow', 'thick': 'thick', 'thin': 'thin', 'heavy': 'heavy',
      'fast': 'fast', 'slow': 'slow', 'quick': 'quick',
      'easy': 'easy', 'difficult': 'difficult', 'hard': 'hard', 'soft': 'soft',
      'smooth': 'smooth', 'rough': 'rough', 'clean': 'clean', 'dirty': 'dirty',
      'new': 'new', 'old': 'old', 'young': 'young', 'fresh': 'fresh',
      'beautiful': 'beautiful', 'ugly': 'ugly', 'pretty': 'pretty', 'nice': 'nice',
      'better': 'better', 'best': 'best',
      'worse': 'worse', 'worst': 'worst', 'perfect': 'perfect', 'excellent': 'excellent',
      'amazing': 'amazing', 'wonderful': 'wonderful', 'terrible': 'terrible', 'awful': 'awful',
      'expensive': 'expensive', 'cheap': 'cheap', 'free': 'free', 'valuable': 'valuable',
      'important': 'important', 'necessary': 'necessary', 'useful': 'useful', 'useless': 'useless',
      'interesting': 'interesting', 'boring': 'boring', 'funny': 'funny', 'serious': 'serious',
      
      // Places and Locations
      'home': 'home', 'house': 'house', 'apartment': 'apartment', 'building': 'building',
      'office': 'office', 'school': 'school', 'university': 'university', 'college': 'college',
      'hospital': 'hospital', 'clinic': 'clinic', 'pharmacy': 'pharmacy', 'bank': 'bank',
      'store': 'store', 'shop': 'shop', 'market': 'market', 'mall': 'mall',
      'restaurant': 'restaurant', 'cafe': 'cafe', 'bar': 'bar', 'hotel': 'hotel',
      'airport': 'airport', 'station': 'station', 'bus stop': 'bus stop', 'park': 'park',
      'beach': 'beach', 'mountain': 'mountain', 'forest': 'forest', 'river': 'river',
      'lake': 'lake', 'ocean': 'ocean', 'city': 'city', 'town': 'town',
      'village': 'village', 'country': 'country', 'street': 'street', 'road': 'road',
      'bridge': 'bridge', 'tunnel': 'tunnel', 'library': 'library', 'museum': 'museum',
      'church': 'church', 'temple': 'temple', 'mosque': 'mosque', 'gym': 'gym',
      
      // Transportation
      'car': 'car', 'bus': 'bus', 'train': 'train', 'plane': 'plane',
      'bike': 'bike', 'bicycle': 'bicycle', 'motorcycle': 'motorcycle', 'truck': 'truck',
      'taxi': 'taxi', 'subway': 'subway', 'ship': 'ship', 'boat': 'boat',
      'helicopter': 'helicopter', 'scooter': 'scooter', 'walking': 'walking', 'driving': 'driving',
      'flying': 'flying', 'riding': 'riding', 'traveling': 'traveling', 'journey': 'journey',
      'trip': 'trip', 'vacation': 'vacation', 'holiday': 'holiday', 'visit': 'visit',
      
      // Money and Business
      'money': 'money', 'cash': 'cash', 'credit card': 'credit card', 'debit card': 'debit card',
      'payment': 'payment', 'price': 'price', 'cost': 'cost', 'discount': 'discount',
      'sale': 'sale', 'receipt': 'receipt', 'invoice': 'invoice', 'tax': 'tax',
      'job': 'job', 'career': 'career', 'business': 'business',
      'company': 'company', 'employee': 'employee', 'boss': 'boss', 'manager': 'manager',
      'meeting': 'meeting', 'interview': 'interview', 'salary': 'salary', 'wage': 'wage',
      'contract': 'contract', 'agreement': 'agreement', 'deal': 'deal', 'profit': 'profit',
      
      // Education and Learning (avoiding duplicates)
      'book': 'book', 'notebook': 'notebook', 'pen': 'pen', 'pencil': 'pencil',
      'paper': 'paper', 'homework': 'homework', 'test': 'test', 'exam': 'exam',
      'grade': 'grade', 'score': 'score', 'student': 'student', 'teacher': 'teacher',
      'professor': 'professor', 'class': 'class', 'lesson': 'lesson', 'course': 'course',
      'subject': 'subject', 'math': 'math', 'science': 'science', 'history': 'history',
      'english': 'english', 'language': 'language', 'art': 'art',
      'sports': 'sports', 'exercise': 'exercise', 'training': 'training', 'skill': 'skill',
      
      // Health and Medical
      'doctor': 'doctor', 'nurse': 'nurse', 'patient': 'patient', 'medicine': 'medicine',
      'pill': 'pill', 'tablet': 'tablet', 'injection': 'injection', 'treatment': 'treatment',
      'surgery': 'surgery', 'appointment': 'appointment',
      'sick': 'sick', 'ill': 'ill', 'healthy': 'healthy', 'pain': 'pain',
      'hurt': 'hurt', 'injury': 'injury', 'accident': 'accident', 'emergency': 'emergency',
      'fever': 'fever', 'cough': 'cough', 'cold': 'cold', 'flu': 'flu',
      'headache': 'headache', 'stomachache': 'stomachache', 'toothache': 'toothache',
      
      // Social and Relationships (avoiding duplicates)
      'friend': 'friend', 'family': 'family', 'relative': 'relative', 'neighbor': 'neighbor',
      'colleague': 'colleague', 'partner': 'partner', 'boyfriend': 'boyfriend', 'girlfriend': 'girlfriend',
      'husband': 'husband', 'wife': 'wife', 'marriage': 'marriage', 'wedding': 'wedding',
      'divorce': 'divorce', 'relationship': 'relationship', 'date': 'date', 'party': 'party',
      'celebration': 'celebration', 'birthday': 'birthday', 'anniversary': 'anniversary',
      'gift': 'gift', 'present': 'present', 'surprise': 'surprise', 'invitation': 'invitation',
      
      // Common Phrases and Expressions
      'what is this': 'what is this', 'how much': 'how much', 'where is': 'where is',
      'what time': 'what time', 'how long': 'how long', 'how many': 'how many',
      'i need': 'i need', 'i want': 'i want', 'i like': 'i like', 'i love': 'i love',
      'i think': 'i think', 'i believe': 'i believe', 'i know': 'i know', 'i understand': 'i understand',
      'can you': 'can you', 'could you': 'could you', 'would you': 'would you', 'will you': 'will you',
      'let me': 'let me', 'let us': 'let us', 'shall we': 'shall we', 'why not': 'why not',
      'of course': 'of course', 'no problem': 'no problem', 'you are welcome': 'you are welcome',
      'not at all': 'not at all', 'never mind': 'never mind', 'it is okay': 'it is okay',
    },
    'hindi': {
      // Basic greetings and politeness
      'hello': 'नमस्ते', 'goodbye': 'अलविदा', 'thank you': 'धन्यवाद',
      'thanks': 'धन्यवाद',
      'please': 'कृपया', 'yes': 'हाँ', 'no': 'नहीं', 'good morning': 'सुप्रभात',
      'good afternoon': 'दोपहर की शुभकामनाएं', 'good evening': 'शुभ संध्या',
      'good night': 'शुभ रात्रि',
      'how are you?': 'आप कैसे हैं?', 'i am fine': 'मैं ठीक हूं',
      'nice to meet you': 'आपसे मिलकर खुशी हुई',
      'excuse me': 'माफ करें', 'sorry': 'माफ करना',
      'my apologies': 'मुझे खेद है', 'you are welcome': 'कोई बात नहीं',

      // Common multi-word phrases
      'very good': 'बहुत अच्छा', 'very bad': 'बहुत बुरा', 'so good': 'इतना अच्छा',
      'not good': 'अच्छा नहीं', 'too much': 'बहुत ज्यादा', 'too little': 'बहुत कम',
      'right now': 'अभी', 'just now': 'अभी अभी', 'long time': 'लंबा समय',
      'short time': 'कम समय', 'big house': 'बड़ा घर', 'small house': 'छोटा घर',
      'old man': 'बूढ़ा आदमी', 'young man': 'जवान आदमी', 'old woman': 'बूढ़ी औरत',
      'young woman': 'जवान औरत', 'good luck': 'शुभकामनाएं', 'bad luck': 'बुरी किस्मत',
      'take care': 'ख्याल रखना', 'see you': 'मिलते हैं', 'see you later': 'बाद में मिलते हैं',
      'talk later': 'बाद में बात करते हैं', 'speak english': 'अंग्रेजी बोलो', 'speak hindi': 'हिंदी बोलो',
      'i understand': 'मैं समझता हूं', 'i dont understand': 'मैं नहीं समझता',
      'very beautiful': 'बहुत सुंदर', 'very nice': 'बहुत अच्छा', 'very happy': 'बहुत खुश',
      'very sad': 'बहुत उदास', 'very tired': 'बहुत थका हुआ', 'very hungry': 'बहुत भूखा',
      'good morning sir': 'सुप्रभात जी', 'good evening sir': 'शुभ संध्या जी',
      'thank you sir': 'धन्यवाद जी', 'thank you madam': 'धन्यवाद मैडम',

      // Family and relationships
      'family': 'परिवार', 'father': 'पिता', 'mother': 'माता', 'son': 'बेटा',
      'daughter': 'बेटी',
      'brother': 'भाई', 'sister': 'बहन', 'husband': 'पति', 'wife': 'पत्नी',
      'grandfather': 'दादा जी', 'grandmother': 'दादी जी', 'uncle': 'चाचा',
      'aunt': 'चची',
      'cousin': 'चचेरा भाई', 'friend': 'दोस्त',

      // Love and emotions
      'i love you': 'मैं तुमसे प्यार करता हूं',
      'i like you': 'मुझे तुम पसंद हो',
      'i miss you': 'मुझे तुम्हारी याद आती है',
      'happy': 'खुश', 'sad': 'उदास', 'angry': 'गुस्से में',
      'excited': 'उत्साहित',
      'tired': 'थका हुआ', 'worried': 'चिंतित',

      // Food and drinks
      'food': 'भोजन', 'water': 'पानी', 'coffee': 'कॉफी', 'tea': 'चाय',
      'milk': 'दूध',
      'bread': 'रोटी', 'rice': 'चावल', 'meat': 'मांस', 'fish': 'मछली',
      'chicken': 'मुर्गी',
      'vegetables': 'सब्जियां', 'fruit': 'फल', 'apple': 'सेब', 'banana': 'केला',
      'pizza': 'पिज्जा', 'pasta': 'पास्ता', 'sandwich': 'सैंडविच',
      'breakfast': 'नाश्ता',
      'lunch': 'दोपहर का खाना', 'dinner': 'रात का खाना',
      'restaurant': 'रेस्तरां', 'menu': 'मेन्यू',
      'delicious': 'स्वादिष्ट', 'hungry': 'भूखा', 'thirsty': 'प्यासा',

      // Travel and places
      'hotel': 'होटल', 'airport': 'हवाई अड्डा', 'train station': 'रेलवे स्टेशन',
      'bus stop': 'बस स्टॉप',
      'hospital': 'अस्पताल', 'pharmacy': 'दवाखाना', 'bank': 'बैंक',
      'market': 'बाजार',
      'store': 'दुकान', 'school': 'स्कूल', 'university': 'विश्वविद्यालय',
      'library': 'पुस्तकालय',
      'museum': 'संग्रहालय', 'park': 'पार्क', 'beach': 'समुद्र तट',
      'mountain': 'पहाड़',
      'city': 'शहर', 'country': 'देश', 'street': 'सड़क', 'address': 'पता',

      // Colors
      'red': 'लाल', 'blue': 'नीला', 'green': 'हरा', 'yellow': 'पीला',
      'black': 'काला',
      'white': 'सफेद', 'pink': 'गुलाबी', 'purple': 'बैंगनी', 'orange': 'नारंगी',
      'brown': 'भूरा', 'gray': 'भूरा',

      // Numbers
      'one': 'एक', 'two': 'दो', 'three': 'तीन', 'four': 'चार', 'five': 'पांच',
      'six': 'छह', 'seven': 'सात', 'eight': 'आठ', 'nine': 'नौ', 'ten': 'दस',
      'hundred': 'सौ', 'thousand': 'हजार',

      // Time and dates
      'today': 'आज', 'yesterday': 'कल', 'tomorrow': 'कल', 'now': 'अभी',
      'later': 'बाद में', 'early': 'जल्दी', 'late': 'देर से', 'morning': 'सुबह',
      'afternoon': 'दोपहर', 'evening': 'शाम', 'night': 'रात',
      'week': 'सप्ताह', 'month': 'महीना', 'year': 'साल',

      // Common questions and phrases
      'what': 'क्या', 'when': 'कब', 'where': 'कहां', 'who': 'कौन',
      'why': 'क्यों',
      'how': 'कैसे', 'how much': 'कितना', 'where is': 'कहां है',
      'do you speak english': 'क्या आप अंग्रेजी बोलते हैं?',
      'i do not understand': 'मुझे समझ नहीं आया',
      'can you help me': 'क्या आप मेरी मदद कर सकते हैं?', 'help': 'मदद',
      'call the police': 'पुलिस को बुलाओ',
      'emergency': 'आपातकाल',

      // Weather
      'weather': 'मौसम', 'hot': 'गर्म', 'cold': 'ठंडा', 'warm': 'गर्म',
      'cool': 'ठंडा',
      'sunny': 'धूप वाला', 'cloudy': 'बादल वाला', 'rainy': 'बारिश वाला',
      'snowy': 'बर्फ वाला', 'windy': 'हवा वाला',

      // Body parts
      'head': 'सिर', 'face': 'चेहरा', 'eye': 'आंख', 'nose': 'नाक',
      'mouth': 'मुंह',
      'ear': 'कान', 'hand': 'हाथ', 'foot': 'पैर', 'leg': 'पैर', 'arm': 'बांह',

      // Common verbs
      'eat': 'खाना', 'drink': 'पीना', 'sleep': 'सोना', 'work': 'काम करना',
      'study': 'पढ़ना',
      'read': 'पढ़ना', 'write': 'लिखना', 'speak': 'बोलना', 'listen': 'सुनना',
      'walk': 'चलना',
      'run': 'दौड़ना', 'drive': 'गाड़ी चलाना', 'buy': 'खरीदना', 'sell': 'बेचना',
      'give': 'देना',
      'take': 'लेना', 'go': 'जाना', 'come': 'आना', 'see': 'देखना',
      'look': 'देखना',
    },
    'malayalam': {
      // Basic greetings and politeness
      'hello': 'നമസ്കാരം', 'goodbye': 'വിട', 'thank you': 'നന്ദി',
      'thanks': 'നന്ദി',
      'please': 'ദയവായി', 'yes': 'അതെ', 'no': 'ഇല്ല',
      'good morning': 'സുപ്രഭാതം',
      'good afternoon': 'ഉച്ച സമയത്തിന്റെ ആശംസകൾ',
      'good evening': 'സന്ധ്യാ സമയത്തിന്റെ ആശംസകൾ', 'good night': 'ശുഭ രാത്രി',
      'how are you?': 'എങ്ങനെയുണ്ട്?', 'i am fine': 'ഞാൻ സുഖമാണ്',
      'nice to meet you': 'നിങ്ങളെ കാണുന്നതിൽ സന്തോഷം',
      'excuse me': 'ക്ഷമിക്കണം', 'sorry': 'ക്ഷമിക്കണം',
      'my apologies': 'എന്റെ ക്ഷമാപണം', 'you are welcome': 'സന്തോഷമുണ്ട്',

      // Common multi-word phrases
      'very good': 'വളരെ നല്ലത്', 'very bad': 'വളരെ മോശം', 'so good': 'വളരെ നല്ലത്',
      'not good': 'നല്ലതല്ല', 'too much': 'വളരെ കൂടുതൽ', 'too little': 'വളരെ കുറവ്',
      'right now': 'ഇപ്പോൾ തന്നെ', 'just now': 'ഇപ്പോൾ മാത്രം', 'long time': 'കുറേ സമയം',
      'short time': 'കുറച്ച് സമയം', 'big house': 'വലിയ വീട്', 'small house': 'ചെറിയ വീട്',
      'old man': 'പ്രായമായ മനുഷ്യൻ', 'young man': 'ചെറുപ്പക്കാരൻ', 'old woman': 'പ്രായമായ സ്ത്രീ',
      'young woman': 'ചെറുപ്പക്കാരി', 'good luck': 'ആശംസകൾ', 'bad luck': 'ദൗർഭാഗ്യം',
      'take care': 'ശ്രദ്ധിക്കണം', 'see you': 'കാണാം', 'see you later': 'പിന്നെ കാണാം',
      'talk later': 'പിന്നെ സംസാരിക്കാം', 'speak english': 'ഇംഗ്ലീഷ് സംസാരിക്കുക', 'speak hindi': 'ഹിന്ദി സംസാരിക്കുക',
      'i understand': 'എനിക്ക് മനസ്സിലായി', 'i dont understand': 'എനിക്ക് മനസ്സിലായില്ല',
      'very beautiful': 'വളരെ സുന്ദരം', 'very nice': 'വളരെ നല്ലത്', 'very happy': 'വളരെ സന്തോഷം',
      'very sad': 'വളരെ സങ്കടം', 'very tired': 'വളരെ ക്ഷീണിത', 'very hungry': 'വളരെ വിശപ്പ്',
      'good morning sir': 'സുപ്രഭാതം സാർ', 'good evening sir': 'സുഭവേളാ സാർ',
      'thank you sir': 'നന്ദി സാർ', 'thank you madam': 'നന്ദി മാഡം',

      // Family and relationships
      'family': 'കുടുംബം', 'father': 'അച്ഛൻ', 'mother': 'അമ്മ', 'son': 'മകൻ',
      'daughter': 'മകൾ',
      'brother': 'സഹോദരൻ', 'sister': 'സഹോദരി', 'husband': 'ഭർത്താവ്',
      'wife': 'ഭാര്യ',
      'grandfather': 'മുത്തച്ഛൻ', 'grandmother': 'മുത്തശ്ശി',
      'uncle': 'അമ്മാവൻ', 'aunt': 'അമ്മായി',
      'cousin': 'കസിൻ', 'friend': 'സുഹൃത്ത്',

      // Love and emotions
      'i love you': 'ഞാൻ നിന്നെ സ്നേഹിക്കുന്നു',
      'i like you': 'എനിക്ക് നിന്നെ ഇഷ്ടമാണ്',
      'i miss you': 'എനിക്ക് നിന്നെ വിട്ടുതോന്നുന്നു',
      'happy': 'സന്തോഷം', 'sad': 'സങ്കടം', 'angry': 'ദേഷ്യം',
      'excited': 'ഉത്സാഹം',
      'tired': 'ക്ഷീണം', 'worried': 'വേവലാതിപ്പെടുന്നു',

      // Food and drinks
      'food': 'ഭക്ഷണം', 'water': 'വെള്ളം', 'coffee': 'കാപ്പി', 'tea': 'ചായ',
      'milk': 'പാൽ',
      'bread': 'അപ്പം', 'rice': 'അരി', 'meat': 'മാംസം', 'fish': 'മത്സ്യം',
      'chicken': 'കോഴി',
      'vegetables': 'പച്ചക്കറികൾ', 'fruit': 'പഴം', 'apple': 'ആപ്പിൾ',
      'banana': 'വാഴപ്പഴം',
      'pizza': 'പിസ്സ', 'pasta': 'പാസ്ത', 'sandwich': 'സാൻഡ്‌വിച്ച്',
      'breakfast': 'പ്രാതൽ',
      'lunch': 'ഉച്ച ഭക്ഷണം', 'dinner': 'അത്താഴം',
      'restaurant': 'റെസ്റ്റോറന്റ്', 'menu': 'മെനു',
      'delicious': 'രുചികരമായ', 'hungry': 'വിശക്കുന്നു',
      'thirsty': 'ദാഹിക്കുന്നു',

      // Travel and places
      'hotel': 'ഹോട്ടൽ', 'airport': 'വിമാനത്താവളം',
      'train station': 'റെയിൽവേ സ്റ്റേഷൻ', 'bus stop': 'ബസ് സ്റ്റോപ്പ്',
      'hospital': 'ആശുപത്രി', 'pharmacy': 'മരുന്ന് കട', 'bank': 'ബാങ്ക്',
      'market': 'ചന്ത',
      'store': 'കട', 'school': 'സ്കൂൾ', 'university': 'സർവകലാശാല',
      'library': 'ലൈബ്രറി',
      'museum': 'മ്യൂസിയം', 'park': 'പാർക്ക്', 'beach': 'കടൽത്തീരം',
      'mountain': 'മല',
      'city': 'നഗരം', 'country': 'രാജ്യം', 'street': 'തെരുവ്',
      'address': 'വിലാസം',

      // Colors
      'red': 'ചുവപ്പ്', 'blue': 'നീല', 'green': 'പച്ച', 'yellow': 'മഞ്ഞ',
      'black': 'കറുപ്പ്',
      'white': 'വെള്ള', 'pink': 'പിങ്ക്', 'purple': 'ധൂമ്ര', 'orange': 'ഓറഞ്ച്',
      'brown': 'തവിട്ട്', 'gray': 'ചാരനിറം',

      // Numbers
      'one': 'ഒന്ന്', 'two': 'രണ്ട്', 'three': 'മൂന്ന്', 'four': 'നാല്',
      'five': 'അഞ്ച്',
      'six': 'ആറ്', 'seven': 'ഏഴ്', 'eight': 'എട്ട്', 'nine': 'ഒമ്പത്',
      'ten': 'പത്ത്',
      'hundred': 'നൂറ്', 'thousand': 'ആയിരം',

      // Time and dates
      'today': 'ഇന്ന്', 'yesterday': 'ഇന്നലെ', 'tomorrow': 'നാളെ',
      'now': 'ഇപ്പോൾ',
      'later': 'പിന്നീട്', 'early': 'നേരത്തെ', 'late': 'വൈകി',
      'morning': 'രാവിലെ',
      'afternoon': 'ഉച്ച', 'evening': 'വൈകുന്നേരം', 'night': 'രാത്രി',
      'week': 'ആഴ്ച', 'month': 'മാസം', 'year': 'വർഷം',

      // Common questions and phrases
      'what': 'എന്ത്', 'when': 'എപ്പോൾ', 'where': 'എവിടെ', 'who': 'ആര്',
      'why': 'എന്തുകൊണ്ട്',
      'how': 'എങ്ങനെ', 'how much': 'എത്ര', 'where is': 'എവിടെയാണ്',
      'do you speak english': 'നിങ്ങൾക്ക് ഇംഗ്ലീഷ് അറിയാമോ?',
      'i do not understand': 'എനിക്ക് മനസ്സിലായില്ല',
      'can you help me': 'നിങ്ങൾക്ക് എന്നെ സഹായിക്കാമോ?', 'help': 'സഹായം',
      'call the police': 'പോലീസിനെ വിളിക്കൂ',
      'emergency': 'അടിയന്തിര സാഹചര്യം',

      // Weather
      'weather': 'കാലാവസ്ഥ', 'hot': 'ചൂട്', 'cold': 'തണുപ്പ്',
      'warm': 'ചൂടുള്ള', 'cool': 'തണുത്ത',
      'sunny': 'സൂര്യപ്രകാശം', 'cloudy': 'മേഘാവൃതം', 'rainy': 'മഴ',
      'snowy': 'മഞ്ഞ്', 'windy': 'കാറ്റ്',

      // Body parts
      'head': 'തല', 'face': 'മുഖം', 'eye': 'കണ്ണ്', 'nose': 'മൂക്ക്',
      'mouth': 'വായ',
      'ear': 'ചെവി', 'hand': 'കൈ', 'foot': 'കാൽ', 'leg': 'കാൽ', 'arm': 'കൈ',

      // Common verbs
      'eat': 'കഴിക്കുക', 'drink': 'കുടിക്കുക', 'sleep': 'ഉറങ്ങുക',
      'work': 'ജോലി ചെയ്യുക', 'study': 'പഠിക്കുക',
      'read': 'വായിക്കുക', 'write': 'എഴുതുക', 'speak': 'സംസാരിക്കുക',
      'listen': 'കേൾക്കുക', 'walk': 'നടക്കുക',
      'run': 'ഓടുക', 'drive': 'വാഹനം ഓടിക്കുക', 'buy': 'വാങ്ങുക',
      'sell': 'വില്ക്കുക', 'give': 'നൽകുക',
      'take': 'എടുക്കുക', 'go': 'പോകുക', 'come': 'വരിക', 'see': 'കാണുക',
      'look': 'നോക്കുക',
    },
    'german': {
      // Basic greetings and politeness
      'hello': 'hallo', 'goodbye': 'auf wiedersehen', 'thank you': 'danke',
      'thanks': 'danke',
      'please': 'bitte', 'yes': 'ja', 'no': 'nein',
      'good morning': 'guten morgen',
      'good afternoon': 'guten tag', 'good evening': 'guten abend',
      'good night': 'gute nacht',
      'how are you?': 'wie geht es dir?', 'i am fine': 'mir geht es gut',
      'nice to meet you': 'freut mich',
      'excuse me': 'entschuldigung', 'sorry': 'es tut mir leid',
      'my apologies': 'entschuldige bitte', 'you are welcome': 'gern geschehen',

      // Family and relationships
      'family': 'familie', 'father': 'vater', 'mother': 'mutter', 'son': 'sohn',
      'daughter': 'tochter',
      'brother': 'bruder', 'sister': 'schwester', 'husband': 'ehemann',
      'wife': 'ehefrau',
      'grandfather': 'großvater', 'grandmother': 'großmutter', 'uncle': 'onkel',
      'aunt': 'tante',
      'cousin': 'cousin', 'friend': 'freund',

      // Love and emotions
      'i love you': 'ich liebe dich', 'i like you': 'ich mag dich',
      'i miss you': 'ich vermisse dich',
      'happy': 'glücklich', 'sad': 'traurig', 'angry': 'wütend',
      'excited': 'aufgeregt',
      'tired': 'müde', 'worried': 'besorgt',

      // Food and drinks
      'food': 'essen', 'water': 'wasser', 'coffee': 'kaffee', 'tea': 'tee',
      'milk': 'milch',
      'bread': 'brot', 'rice': 'reis', 'meat': 'fleisch', 'fish': 'fisch',
      'chicken': 'huhn',
      'vegetables': 'gemüse', 'fruit': 'obst', 'apple': 'apfel',
      'banana': 'banane',
      'pizza': 'pizza', 'pasta': 'pasta', 'sandwich': 'sandwich',
      'breakfast': 'frühstück',
      'lunch': 'mittagessen', 'dinner': 'abendessen',
      'restaurant': 'restaurant', 'menu': 'speisekarte',
      'delicious': 'lecker', 'hungry': 'hungrig', 'thirsty': 'durstig',

      // Travel and places
      'hotel': 'hotel', 'airport': 'flughafen', 'train station': 'bahnhof',
      'bus stop': 'bushaltestelle',
      'hospital': 'krankenhaus', 'pharmacy': 'apotheke', 'bank': 'bank',
      'market': 'markt',
      'store': 'geschäft', 'school': 'schule', 'university': 'universität',
      'library': 'bibliothek',
      'museum': 'museum', 'park': 'park', 'beach': 'strand', 'mountain': 'berg',
      'city': 'stadt', 'country': 'land', 'street': 'straße',
      'address': 'adresse',

      // Colors
      'red': 'rot', 'blue': 'blau', 'green': 'grün', 'yellow': 'gelb',
      'black': 'schwarz',
      'white': 'weiß', 'pink': 'rosa', 'purple': 'lila', 'orange': 'orange',
      'brown': 'braun', 'gray': 'grau',

      // Numbers
      'one': 'eins', 'two': 'zwei', 'three': 'drei', 'four': 'vier',
      'five': 'fünf',
      'six': 'sechs', 'seven': 'sieben', 'eight': 'acht', 'nine': 'neun',
      'ten': 'zehn',
      'hundred': 'hundert', 'thousand': 'tausend',

      // Time and dates
      'today': 'heute', 'yesterday': 'gestern', 'tomorrow': 'morgen',
      'now': 'jetzt',
      'later': 'später', 'early': 'früh', 'late': 'spät', 'morning': 'morgen',
      'afternoon': 'nachmittag', 'evening': 'abend', 'night': 'nacht',
      'week': 'woche', 'month': 'monat', 'year': 'jahr',

      // Common questions and phrases
      'what': 'was', 'when': 'wann', 'where': 'wo', 'who': 'wer',
      'why': 'warum',
      'how': 'wie', 'how much': 'wie viel', 'where is': 'wo ist',
      'do you speak english': 'sprechen sie englisch?',
      'i do not understand': 'ich verstehe nicht',
      'can you help me': 'können sie mir helfen?', 'help': 'hilfe',
      'call the police': 'rufen sie die polizei',
      'emergency': 'notfall',

      // Weather
      'weather': 'wetter', 'hot': 'heiß', 'cold': 'kalt', 'warm': 'warm',
      'cool': 'kühl',
      'sunny': 'sonnig', 'cloudy': 'bewölkt', 'rainy': 'regnerisch',
      'snowy': 'schneereich', 'windy': 'windig',

      // Body parts
      'head': 'kopf', 'face': 'gesicht', 'eye': 'auge', 'nose': 'nase',
      'mouth': 'mund',
      'ear': 'ohr', 'hand': 'hand', 'foot': 'fuß', 'leg': 'bein', 'arm': 'arm',

      // Common verbs
      'eat': 'essen', 'drink': 'trinken', 'sleep': 'schlafen',
      'work': 'arbeiten', 'study': 'studieren',
      'read': 'lesen', 'write': 'schreiben', 'speak': 'sprechen',
      'listen': 'zuhören', 'walk': 'gehen',
      'run': 'laufen', 'drive': 'fahren', 'buy': 'kaufen', 'sell': 'verkaufen',
      'give': 'geben',
      'take': 'nehmen', 'go': 'gehen', 'come': 'kommen', 'see': 'sehen',
      'look': 'schauen',
    },
    'italian': {
      // Basic greetings and politeness
      'hello': 'ciao', 'goodbye': 'arrivederci', 'thank you': 'grazie',
      'thanks': 'grazie',
      'please': 'per favore', 'yes': 'sì', 'no': 'no',
      'good morning': 'buongiorno',
      'good afternoon': 'buon pomeriggio', 'good evening': 'buonasera',
      'good night': 'buonanotte',
      'how are you?': 'come stai?', 'i am fine': 'sto bene',
      'nice to meet you': 'piacere di conoscerti',
      'excuse me': 'scusi', 'sorry': 'mi dispiace',
      'my apologies': 'le mie scuse', 'you are welcome': 'prego',

      // Family and relationships
      'family': 'famiglia', 'father': 'padre', 'mother': 'madre',
      'son': 'figlio', 'daughter': 'figlia',
      'brother': 'fratello', 'sister': 'sorella', 'husband': 'marito',
      'wife': 'moglie',
      'grandfather': 'nonno', 'grandmother': 'nonna', 'uncle': 'zio',
      'aunt': 'zia',
      'cousin': 'cugino', 'friend': 'amico',

      // Love and emotions
      'i love you': 'ti amo', 'i like you': 'mi piaci',
      'i miss you': 'mi manchi',
      'happy': 'felice', 'sad': 'triste', 'angry': 'arrabbiato',
      'excited': 'eccitato',
      'tired': 'stanco', 'worried': 'preoccupato',

      // Food and drinks
      'food': 'cibo', 'water': 'acqua', 'coffee': 'caffè', 'tea': 'tè',
      'milk': 'latte',
      'bread': 'pane', 'rice': 'riso', 'meat': 'carne', 'fish': 'pesce',
      'chicken': 'pollo',
      'vegetables': 'verdure', 'fruit': 'frutta', 'apple': 'mela',
      'banana': 'banana',
      'pizza': 'pizza', 'pasta': 'pasta', 'sandwich': 'panino',
      'breakfast': 'colazione',
      'lunch': 'pranzo', 'dinner': 'cena', 'restaurant': 'ristorante',
      'menu': 'menu',
      'delicious': 'delizioso', 'hungry': 'affamato', 'thirsty': 'assetato',

      // Travel and places
      'hotel': 'hotel',
      'airport': 'aeroporto',
      'train station': 'stazione ferroviaria',
      'bus stop': 'fermata dell\'autobus',
      'hospital': 'ospedale', 'pharmacy': 'farmacia', 'bank': 'banca',
      'market': 'mercato',
      'store': 'negozio', 'school': 'scuola', 'university': 'università',
      'library': 'biblioteca',
      'museum': 'museo', 'park': 'parco', 'beach': 'spiaggia',
      'mountain': 'montagna',
      'city': 'città', 'country': 'paese', 'street': 'strada',
      'address': 'indirizzo',

      // Colors
      'red': 'rosso', 'blue': 'blu', 'green': 'verde', 'yellow': 'giallo',
      'black': 'nero',
      'white': 'bianco', 'pink': 'rosa', 'purple': 'viola',
      'orange': 'arancione',
      'brown': 'marrone', 'gray': 'grigio',

      // Numbers
      'one': 'uno', 'two': 'due', 'three': 'tre', 'four': 'quattro',
      'five': 'cinque',
      'six': 'sei', 'seven': 'sette', 'eight': 'otto', 'nine': 'nove',
      'ten': 'dieci',
      'hundred': 'cento', 'thousand': 'mille',

      // Time and dates
      'today': 'oggi', 'yesterday': 'ieri', 'tomorrow': 'domani',
      'now': 'adesso',
      'later': 'più tardi', 'early': 'presto', 'late': 'tardi',
      'morning': 'mattina',
      'afternoon': 'pomeriggio', 'evening': 'sera', 'night': 'notte',
      'week': 'settimana', 'month': 'mese', 'year': 'anno',

      // Common questions and phrases
      'what': 'cosa', 'when': 'quando', 'where': 'dove', 'who': 'chi',
      'why': 'perché',
      'how': 'come', 'how much': 'quanto', 'where is': 'dov\'è',
      'do you speak english': 'parli inglese?',
      'i do not understand': 'non capisco',
      'can you help me': 'puoi aiutarmi?', 'help': 'aiuto',
      'call the police': 'chiama la polizia',
      'emergency': 'emergenza',

      // Weather
      'weather': 'tempo', 'hot': 'caldo', 'cold': 'freddo', 'warm': 'caldo',
      'cool': 'fresco',
      'sunny': 'soleggiato', 'cloudy': 'nuvoloso', 'rainy': 'piovoso',
      'snowy': 'nevoso', 'windy': 'ventoso',

      // Body parts
      'head': 'testa', 'face': 'viso', 'eye': 'occhio', 'nose': 'naso',
      'mouth': 'bocca',
      'ear': 'orecchio', 'hand': 'mano', 'foot': 'piede', 'leg': 'gamba',
      'arm': 'braccio',

      // Common verbs
      'eat': 'mangiare', 'drink': 'bere', 'sleep': 'dormire',
      'work': 'lavorare', 'study': 'studiare',
      'read': 'leggere', 'write': 'scrivere', 'speak': 'parlare',
      'listen': 'ascoltare', 'walk': 'camminare',
      'run': 'correre', 'drive': 'guidare', 'buy': 'comprare',
      'sell': 'vendere', 'give': 'dare',
      'take': 'prendere', 'go': 'andare', 'come': 'venire', 'see': 'vedere',
      'look': 'guardare',
    },
  };

  static const List<String> supportedLanguages = [
    'english',
    'hindi',
    'malayalam',
    'german',
    'italian',
  ];

  // Firebase-enhanced translation method
  static Future<String> translateWithFirebase(
      String text, String fromLanguage, String toLanguage) async {
    if (fromLanguage == toLanguage) {
      return text;
    }

    String normalizedText = text.toLowerCase().trim();

    try {
      // First try to get translation from Firebase
      DocumentSnapshot doc = await _firestore
          .collection('translations')
          .doc('${fromLanguage}_$toLanguage')
          .collection('phrases')
          .doc(normalizedText)
          .get();

      if (doc.exists) {
        Map<String, dynamic>? data = doc.data() as Map<String, dynamic>?;
        return data?['translation'] ??
            _getLocalTranslation(normalizedText, toLanguage);
      }
    } catch (e) {
      print('Firebase translation failed: $e');
    }

    // Fallback to local translation
    return _getLocalTranslation(normalizedText, toLanguage);
  }

  // Local translation fallback
  static String _getLocalTranslation(String normalizedText, String toLanguage) {
    if (_translations[toLanguage]?.containsKey(normalizedText) == true) {
      return _translations[toLanguage]![normalizedText]!;
    }
    return '$normalizedText (Translation not available)';
  }

  // Synchronous translation method (uses local data only)
  static String translate(String text, String fromLanguage, String toLanguage) {
    if (fromLanguage == toLanguage) {
      return text;
    }

    String normalizedText = text.toLowerCase().trim();
    return _getLocalTranslation(normalizedText, toLanguage);
  }

  // Smart translation method that translates individual words and phrases in a sentence
  static String translateSmart(
      String text, String fromLanguage, String toLanguage) {
    if (fromLanguage == toLanguage) {
      return text;
    }

    // First, try to translate the entire text as a complete phrase
    String normalizedFullText = text.toLowerCase().trim();
    String fullTranslation = _getLocalTranslation(normalizedFullText, toLanguage);
    
    if (!fullTranslation.contains('Translation not available')) {
      // If we found a complete translation, preserve the original capitalization pattern
      return _preserveCapitalization(text, fullTranslation);
    }

    // Split text into tokens (words and whitespace)
    List<String> tokens = [];
    RegExp tokenizer = RegExp(r'(\s+|[^\s]+)');
    Iterable<RegExpMatch> matches = tokenizer.allMatches(text);
    
    for (RegExpMatch match in matches) {
      tokens.add(match.group(0)!);
    }

    // Extract only word tokens (non-whitespace) for phrase processing
    List<String> words = [];
    List<int> wordIndexes = [];
    for (int i = 0; i < tokens.length; i++) {
      if (tokens[i].trim().isNotEmpty) {
        words.add(tokens[i]);
        wordIndexes.add(i);
      }
    }

    List<String> translatedTokens = List.from(tokens);

    // Try to translate multi-word phrases first (up to 3 words at a time)
    List<bool> translated = List.filled(words.length, false);
    
    // Try 3-word phrases first
    for (int i = 0; i <= words.length - 3; i++) {
      if (translated[i] || translated[i + 1] || translated[i + 2]) continue;
      
      String phrase = _cleanWordsForTranslation([words[i], words[i + 1], words[i + 2]]);
      String phraseTranslation = _getLocalTranslation(phrase.toLowerCase(), toLanguage);
      
      if (!phraseTranslation.contains('Translation not available')) {
        // Mark these words as translated
        translated[i] = translated[i + 1] = translated[i + 2] = true;
        
        // Apply translation with preserved capitalization
        String finalTranslation = _preserveCapitalizationForPhrase([words[i], words[i + 1], words[i + 2]], phraseTranslation);
        
        // Replace in the tokens array
        translatedTokens[wordIndexes[i]] = finalTranslation;
        translatedTokens[wordIndexes[i + 1]] = ''; // Clear middle word
        translatedTokens[wordIndexes[i + 2]] = ''; // Clear last word
      }
    }

    // Try 2-word phrases
    for (int i = 0; i <= words.length - 2; i++) {
      if (translated[i] || translated[i + 1]) continue;
      
      String phrase = _cleanWordsForTranslation([words[i], words[i + 1]]);
      String phraseTranslation = _getLocalTranslation(phrase.toLowerCase(), toLanguage);
      
      if (!phraseTranslation.contains('Translation not available')) {
        translated[i] = translated[i + 1] = true;
        
        String finalTranslation = _preserveCapitalizationForPhrase([words[i], words[i + 1]], phraseTranslation);
        
        translatedTokens[wordIndexes[i]] = finalTranslation;
        translatedTokens[wordIndexes[i + 1]] = ''; // Clear second word
      }
    }

    // Finally, translate individual words that haven't been translated yet
    for (int i = 0; i < words.length; i++) {
      if (translated[i]) continue;
      
      String token = words[i];
      
      // Extract punctuation from the word
      String leadingPunctuation = '';
      String trailingPunctuation = '';
      String cleanWord = token;

      // Extract leading punctuation
      RegExp leadingPuncRegex = RegExp(r'^[^\w\u0900-\u097F\u0A00-\u0A7F]+');
      Match? leadingMatch = leadingPuncRegex.firstMatch(cleanWord);
      if (leadingMatch != null) {
        leadingPunctuation = leadingMatch.group(0)!;
        cleanWord = cleanWord.substring(leadingPunctuation.length);
      }

      // Extract trailing punctuation
      RegExp trailingPuncRegex = RegExp(r'[^\w\u0900-\u097F\u0A00-\u0A7F]+$');
      Match? trailingMatch = trailingPuncRegex.firstMatch(cleanWord);
      if (trailingMatch != null) {
        trailingPunctuation = trailingMatch.group(0)!;
        cleanWord = cleanWord.substring(0, cleanWord.length - trailingPunctuation.length);
      }

      // Skip if no actual word content
      if (cleanWord.isEmpty) {
        continue;
      }

      // Try to translate the clean word (case insensitive)
      String normalizedWord = cleanWord.toLowerCase().trim();
      String translatedWord = _getLocalTranslation(normalizedWord, toLanguage);

      // If translation was found (doesn't contain "Translation not available")
      if (!translatedWord.contains('Translation not available')) {
        // Preserve original capitalization pattern
        String finalTranslation = _preserveCapitalization(cleanWord, translatedWord);
        translatedTokens[wordIndexes[i]] = leadingPunctuation + finalTranslation + trailingPunctuation;
      }
      // If no translation found, keep original word (already in translatedTokens)
    }

    return translatedTokens.where((token) => token.isNotEmpty).join('');
  }

  // Helper method to clean words for phrase translation (remove punctuation)
  static String _cleanWordsForTranslation(List<String> words) {
    return words.map((word) {
      // Remove leading and trailing punctuation
      String clean = word.replaceAll(RegExp(r'^[^\w\u0900-\u097F\u0A00-\u0A7F]+'), '');
      clean = clean.replaceAll(RegExp(r'[^\w\u0900-\u097F\u0A00-\u0A7F]+$'), '');
      return clean;
    }).join(' ');
  }

  // Helper method to preserve capitalization for multi-word phrases
  static String _preserveCapitalizationForPhrase(List<String> originalWords, String translated) {
    if (originalWords.isEmpty || translated.isEmpty) return translated;
    
    // Check if the first word starts with uppercase
    String firstWord = originalWords[0].replaceAll(RegExp(r'^[^\w\u0900-\u097F\u0A00-\u0A7F]+'), '');
    if (firstWord.isNotEmpty && firstWord[0] == firstWord[0].toUpperCase() && firstWord[0] != firstWord[0].toLowerCase()) {
      return translated[0].toUpperCase() + (translated.length > 1 ? translated.substring(1) : '');
    }
    
    // Check if all original words are uppercase
    bool allUppercase = originalWords.every((word) {
      String clean = word.replaceAll(RegExp(r'[^\w\u0900-\u097F\u0A00-\u0A7F]'), '');
      return clean.isNotEmpty && clean == clean.toUpperCase() && clean != clean.toLowerCase();
    });
    
    if (allUppercase) {
      return translated.toUpperCase();
    }
    
    return translated;
  }  // Helper method to preserve capitalization patterns
  static String _preserveCapitalization(String original, String translated) {
    if (original.isEmpty || translated.isEmpty) return translated;

    // If original is all uppercase
    if (original == original.toUpperCase() &&
        original != original.toLowerCase()) {
      return translated.toUpperCase();
    }

    // If original starts with uppercase
    if (original[0] == original[0].toUpperCase() &&
        original[0] != original[0].toLowerCase()) {
      return translated[0].toUpperCase() +
          (translated.length > 1 ? translated.substring(1) : '');
    }

    // Otherwise return as is
    return translated;
  }

  // Store new translations to Firebase
  static Future<void> storeTranslation(String text, String fromLanguage,
      String toLanguage, String translation) async {
    try {
      await _firestore
          .collection('translations')
          .doc('${fromLanguage}_$toLanguage')
          .collection('phrases')
          .doc(text.toLowerCase().trim())
          .set({'translation': translation});
    } catch (e) {
      print('Failed to store translation: $e');
    }
  }

  static String getLanguageDisplayName(String languageCode) {
    switch (languageCode) {
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
        return languageCode;
    }
  }

  // Get all available phrases for a language (useful for suggestions)
  static List<String> getPhrasesForLanguage(String languageCode) {
    return _translations[languageCode]?.keys.toList() ?? [];
  }

  // Get random phrases for the common phrases section
  static List<String> getRandomPhrases(int count) {
    final englishPhrases = _translations['english']?.keys.toList() ?? [];
    englishPhrases.shuffle();
    return englishPhrases.take(count).toList();
  }
}
