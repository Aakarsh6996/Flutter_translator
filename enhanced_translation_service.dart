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
    },
    'spanish': {
      // Basic greetings and politeness
      'hello': 'hola', 'goodbye': 'adiós', 'thank you': 'gracias',
      'thanks': 'gracias',
      'please': 'por favor', 'yes': 'sí', 'no': 'no',
      'good morning': 'buenos días',
      'good afternoon': 'buenas tardes', 'good evening': 'buenas tardes',
      'good night': 'buenas noches',
      'how are you?': '¿cómo estás?', 'i am fine': 'estoy bien',
      'nice to meet you': 'mucho gusto',
      'excuse me': 'perdón', 'sorry': 'lo siento',
      'my apologies': 'mis disculpas', 'you are welcome': 'de nada',

      // Family and relationships
      'family': 'familia', 'father': 'padre', 'mother': 'madre', 'son': 'hijo',
      'daughter': 'hija',
      'brother': 'hermano', 'sister': 'hermana', 'husband': 'esposo',
      'wife': 'esposa',
      'grandfather': 'abuelo', 'grandmother': 'abuela', 'uncle': 'tío',
      'aunt': 'tía',
      'cousin': 'primo', 'friend': 'amigo',

      // Love and emotions
      'i love you': 'te amo', 'i like you': 'me gustas',
      'i miss you': 'te extraño',
      'happy': 'feliz', 'sad': 'triste', 'angry': 'enojado',
      'excited': 'emocionado',
      'tired': 'cansado', 'worried': 'preocupado',

      // Food and drinks
      'food': 'comida', 'water': 'agua', 'coffee': 'café', 'tea': 'té',
      'milk': 'leche',
      'bread': 'pan', 'rice': 'arroz', 'meat': 'carne', 'fish': 'pescado',
      'chicken': 'pollo',
      'vegetables': 'verduras', 'fruit': 'fruta', 'apple': 'manzana',
      'banana': 'plátano',
      'pizza': 'pizza', 'pasta': 'pasta', 'sandwich': 'sándwich',
      'breakfast': 'desayuno',
      'lunch': 'almuerzo', 'dinner': 'cena', 'restaurant': 'restaurante',
      'menu': 'menú',
      'delicious': 'delicioso', 'hungry': 'hambriento', 'thirsty': 'sediento',

      // Travel and places
      'hotel': 'hotel', 'airport': 'aeropuerto',
      'train station': 'estación de tren', 'bus stop': 'parada de autobús',
      'hospital': 'hospital', 'pharmacy': 'farmacia', 'bank': 'banco',
      'market': 'mercado',
      'store': 'tienda', 'school': 'escuela', 'university': 'universidad',
      'library': 'biblioteca',
      'museum': 'museo', 'park': 'parque', 'beach': 'playa',
      'mountain': 'montaña',
      'city': 'ciudad', 'country': 'país', 'street': 'calle',
      'address': 'dirección',

      // Colors
      'red': 'rojo', 'blue': 'azul', 'green': 'verde', 'yellow': 'amarillo',
      'black': 'negro',
      'white': 'blanco', 'pink': 'rosa', 'purple': 'morado',
      'orange': 'naranja',
      'brown': 'marrón', 'gray': 'gris',

      // Numbers
      'one': 'uno', 'two': 'dos', 'three': 'tres', 'four': 'cuatro',
      'five': 'cinco',
      'six': 'seis', 'seven': 'siete', 'eight': 'ocho', 'nine': 'nueve',
      'ten': 'diez',
      'hundred': 'cien', 'thousand': 'mil',

      // Time and dates
      'today': 'hoy', 'yesterday': 'ayer', 'tomorrow': 'mañana', 'now': 'ahora',
      'later': 'más tarde', 'early': 'temprano', 'late': 'tarde',
      'morning': 'mañana',
      'afternoon': 'tarde', 'evening': 'noche', 'night': 'noche',
      'week': 'semana', 'month': 'mes', 'year': 'año',

      // Common questions and phrases
      'what': 'qué', 'when': 'cuándo', 'where': 'dónde', 'who': 'quién',
      'why': 'por qué',
      'how': 'cómo', 'how much': 'cuánto', 'where is': 'dónde está',
      'do you speak english': '¿hablas inglés?',
      'i do not understand': 'no entiendo',
      'can you help me': '¿puedes ayudarme?', 'help': 'ayuda',
      'call the police': 'llama a la policía',
      'emergency': 'emergencia',

      // Weather
      'weather': 'clima', 'hot': 'caliente', 'cold': 'frío', 'warm': 'cálido',
      'cool': 'fresco',
      'sunny': 'soleado', 'cloudy': 'nublado', 'rainy': 'lluvioso',
      'snowy': 'nevado', 'windy': 'ventoso',

      // Body parts
      'head': 'cabeza', 'face': 'cara', 'eye': 'ojo', 'nose': 'nariz',
      'mouth': 'boca',
      'ear': 'oreja', 'hand': 'mano', 'foot': 'pie', 'leg': 'pierna',
      'arm': 'brazo',

      // Common verbs
      'eat': 'comer', 'drink': 'beber', 'sleep': 'dormir', 'work': 'trabajar',
      'study': 'estudiar',
      'read': 'leer', 'write': 'escribir', 'speak': 'hablar',
      'listen': 'escuchar', 'walk': 'caminar',
      'run': 'correr', 'drive': 'conducir', 'buy': 'comprar', 'sell': 'vender',
      'give': 'dar',
      'take': 'tomar', 'go': 'ir', 'come': 'venir', 'see': 'ver',
      'look': 'mirar',
    },
    'french': {
      // Basic greetings and politeness
      'hello': 'bonjour', 'goodbye': 'au revoir', 'thank you': 'merci',
      'thanks': 'merci',
      'please': 's\'il vous plaît', 'yes': 'oui', 'no': 'non',
      'good morning': 'bonjour',
      'good afternoon': 'bon après-midi', 'good evening': 'bonsoir',
      'good night': 'bonne nuit',
      'how are you?': 'comment allez-vous?', 'i am fine': 'je vais bien',
      'nice to meet you': 'enchanté',
      'excuse me': 'excusez-moi', 'sorry': 'désolé',
      'my apologies': 'mes excuses', 'you are welcome': 'de rien',

      // Family and relationships
      'family': 'famille', 'father': 'père', 'mother': 'mère', 'son': 'fils',
      'daughter': 'fille',
      'brother': 'frère', 'sister': 'sœur', 'husband': 'mari', 'wife': 'épouse',
      'grandfather': 'grand-père', 'grandmother': 'grand-mère',
      'uncle': 'oncle', 'aunt': 'tante',
      'cousin': 'cousin', 'friend': 'ami',

      // Love and emotions
      'i love you': 'je t\'aime', 'i like you': 'je t\'aime bien',
      'i miss you': 'tu me manques',
      'happy': 'heureux', 'sad': 'triste', 'angry': 'en colère',
      'excited': 'excité',
      'tired': 'fatigué', 'worried': 'inquiet',

      // Food and drinks
      'food': 'nourriture', 'water': 'eau', 'coffee': 'café', 'tea': 'thé',
      'milk': 'lait',
      'bread': 'pain', 'rice': 'riz', 'meat': 'viande', 'fish': 'poisson',
      'chicken': 'poulet',
      'vegetables': 'légumes', 'fruit': 'fruit', 'apple': 'pomme',
      'banana': 'banane',
      'pizza': 'pizza', 'pasta': 'pâtes', 'sandwich': 'sandwich',
      'breakfast': 'petit-déjeuner',
      'lunch': 'déjeuner', 'dinner': 'dîner', 'restaurant': 'restaurant',
      'menu': 'menu',
      'delicious': 'délicieux', 'hungry': 'affamé', 'thirsty': 'assoiffé',

      // Travel and places
      'hotel': 'hôtel', 'airport': 'aéroport', 'train station': 'gare',
      'bus stop': 'arrêt de bus',
      'hospital': 'hôpital', 'pharmacy': 'pharmacie', 'bank': 'banque',
      'market': 'marché',
      'store': 'magasin', 'school': 'école', 'university': 'université',
      'library': 'bibliothèque',
      'museum': 'musée', 'park': 'parc', 'beach': 'plage',
      'mountain': 'montagne',
      'city': 'ville', 'country': 'pays', 'street': 'rue', 'address': 'adresse',

      // Colors
      'red': 'rouge', 'blue': 'bleu', 'green': 'vert', 'yellow': 'jaune',
      'black': 'noir',
      'white': 'blanc', 'pink': 'rose', 'purple': 'violet', 'orange': 'orange',
      'brown': 'marron', 'gray': 'gris',

      // Numbers
      'one': 'un', 'two': 'deux', 'three': 'trois', 'four': 'quatre',
      'five': 'cinq',
      'six': 'six', 'seven': 'sept', 'eight': 'huit', 'nine': 'neuf',
      'ten': 'dix',
      'hundred': 'cent', 'thousand': 'mille',

      // Time and dates
      'today': 'aujourd\'hui', 'yesterday': 'hier', 'tomorrow': 'demain',
      'now': 'maintenant',
      'later': 'plus tard', 'early': 'tôt', 'late': 'tard', 'morning': 'matin',
      'afternoon': 'après-midi', 'evening': 'soir', 'night': 'nuit',
      'week': 'semaine', 'month': 'mois', 'year': 'année',

      // Common questions and phrases
      'what': 'quoi', 'when': 'quand', 'where': 'où', 'who': 'qui',
      'why': 'pourquoi',
      'how': 'comment', 'how much': 'combien', 'where is': 'où est',
      'do you speak english': 'parlez-vous anglais?',
      'i do not understand': 'je ne comprends pas',
      'can you help me': 'pouvez-vous m\'aider?', 'help': 'aide',
      'call the police': 'appelez la police',
      'emergency': 'urgence',

      // Weather
      'weather': 'météo', 'hot': 'chaud', 'cold': 'froid', 'warm': 'chaud',
      'cool': 'frais',
      'sunny': 'ensoleillé', 'cloudy': 'nuageux', 'rainy': 'pluvieux',
      'snowy': 'neigeux', 'windy': 'venteux',

      // Body parts
      'head': 'tête', 'face': 'visage', 'eye': 'œil', 'nose': 'nez',
      'mouth': 'bouche',
      'ear': 'oreille', 'hand': 'main', 'foot': 'pied', 'leg': 'jambe',
      'arm': 'bras',

      // Common verbs
      'eat': 'manger', 'drink': 'boire', 'sleep': 'dormir',
      'work': 'travailler', 'study': 'étudier',
      'read': 'lire', 'write': 'écrire', 'speak': 'parler', 'listen': 'écouter',
      'walk': 'marcher',
      'run': 'courir', 'drive': 'conduire', 'buy': 'acheter', 'sell': 'vendre',
      'give': 'donner',
      'take': 'prendre', 'go': 'aller', 'come': 'venir', 'see': 'voir',
      'look': 'regarder',
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
    'spanish',
    'french',
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
      case 'spanish':
        return 'Spanish';
      case 'french':
        return 'French';
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
