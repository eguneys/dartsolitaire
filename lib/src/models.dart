enum Suit { hearts, spades, clubs, diamonds;

  static List<Suit> get all => List.unmodifiable([Suit.hearts, Suit.spades, Suit.clubs, Suit.diamonds]);

  static Suit? fromChar(String ch) {
    switch (ch.toLowerCase()) {
      case 'h': return Suit.hearts;
      case 's': return Suit.spades;
      case 'c': return Suit.clubs;
      case 'd': return Suit.diamonds;
      default: return null;
    }
  }

  String get char {
    switch (this) {
      case Suit.hearts: return 'h';
      case Suit.spades: return 's';
      case Suit.clubs: return 'c';
      case Suit.diamonds: return 'd';
    }
  }
}




enum Rank { ace, king, queen, jack, ten, nine, eight, seven, six, five, four, three, two;

  static List<Rank> get all => List.unmodifiable([
    Rank.ace, Rank.king, Rank.queen, Rank.jack, Rank.ten,
    Rank.nine, Rank.eight,
    Rank.seven, Rank.six,
    Rank.five, Rank.four,
    Rank.three, Rank.two]);

  static Rank? fromChar(String ch) {
    switch (ch.toLowerCase()) {
      case 'A': return Rank.ace;
      case 'K': return Rank.king;
      case 'Q': return Rank.queen;
      case 'J': return Rank.jack;
      case 'T': return Rank.ten;
      case '9': return Rank.nine;
      case '8': return Rank.eight;
      case '7': return Rank.seven;
      case '6': return Rank.six;
      case '5': return Rank.five;
      case '4': return Rank.four;
      case '3': return Rank.three;
      case '2': return Rank.two;
      default: return null;
    }
  }

  String get char {
    switch (this) {
      case Rank.ace: return 'A';
      case Rank.king: return 'K';
      case Rank.queen: return 'Q';
      case Rank.jack: return 'J';
      case Rank.ten: return 'T';
      case Rank.nine: return '9';
      case Rank.eight: return '8';
      case Rank.seven: return '7';
      case Rank.six: return '6';
      case Rank.five: return '5';
      case Rank.four: return '4';
      case Rank.three: return '3';
      case Rank.two: return '2';
    }
  }
}

class Card {
  const Card({
    required this.suit,
    required this.rank
  });

  final Suit suit;
  final Rank rank;

  static List<Card> get all => List.unmodifiable([
    for (final s in Suit.all)
      for (final r in Rank.all) Card(suit: s, rank: r)
  ]);

  static Card? fromChar(String ch) {
    final suit = Suit.fromChar(ch[0]);
    final rank = Rank.fromChar(ch[1]);
    if (suit != null && rank != null) {
      return Card(suit: suit, rank: rank);
    }
    return null;
  }

  String get fenChar {
    return suit.char + rank.char;
  }

  @override
  bool operator ==(Object other) {
    return other is Card && other.runtimeType == runtimeType &&
        suit == other.suit &&
        rank == other.rank;
  }

  @override
  int get hashCode => Object.hash(suit, rank);

  static const aceHearts = Card(suit: Suit.hearts, rank: Rank.ace);
  static const deuceHearts = Card(suit: Suit.hearts, rank: Rank.two);
  static const threeHearts = Card(suit: Suit.hearts, rank: Rank.three);
  static const fourHearts = Card(suit: Suit.hearts, rank: Rank.four);
  static const fiveHearts = Card(suit: Suit.hearts, rank: Rank.five);
  static const sixHearts = Card(suit: Suit.hearts, rank: Rank.six);
  static const sevenHearts = Card(suit: Suit.hearts, rank: Rank.seven);
  static const eightHearts = Card(suit: Suit.hearts, rank: Rank.eight);
  static const nineHearts = Card(suit: Suit.hearts, rank: Rank.nine);
  static const tenHearts = Card(suit: Suit.hearts, rank: Rank.ten);
  static const jackHearts = Card(suit: Suit.hearts, rank: Rank.jack);
  static const queenHearts = Card(suit: Suit.hearts, rank: Rank.queen);
  static const kingHearts = Card(suit: Suit.hearts, rank: Rank.king);

  static const aceClubs = Card(suit: Suit.clubs, rank: Rank.ace);
  static const deuceClubs = Card(suit: Suit.clubs, rank: Rank.two);
  static const threeClubs = Card(suit: Suit.clubs, rank: Rank.three);
  static const fourClubs = Card(suit: Suit.clubs, rank: Rank.four);
  static const fiveClubs = Card(suit: Suit.clubs, rank: Rank.five);
  static const sixClubs = Card(suit: Suit.clubs, rank: Rank.six);
  static const sevenClubs = Card(suit: Suit.clubs, rank: Rank.seven);
  static const eightClubs = Card(suit: Suit.clubs, rank: Rank.eight);
  static const nineClubs = Card(suit: Suit.clubs, rank: Rank.nine);
  static const tenClubs = Card(suit: Suit.clubs, rank: Rank.ten);
  static const jackClubs = Card(suit: Suit.clubs, rank: Rank.jack);
  static const queenClubs = Card(suit: Suit.clubs, rank: Rank.queen);
  static const kingClubs = Card(suit: Suit.clubs, rank: Rank.king);

  static const aceDiamonds = Card(suit: Suit.diamonds, rank: Rank.ace);
  static const deuceDiamonds = Card(suit: Suit.diamonds, rank: Rank.two);
  static const threeDiamonds = Card(suit: Suit.diamonds, rank: Rank.three);
  static const fourDiamonds = Card(suit: Suit.diamonds, rank: Rank.four);
  static const fiveDiamonds = Card(suit: Suit.diamonds, rank: Rank.five);
  static const sixDiamonds = Card(suit: Suit.diamonds, rank: Rank.six);
  static const sevenDiamonds = Card(suit: Suit.diamonds, rank: Rank.seven);
  static const eightDiamonds = Card(suit: Suit.diamonds, rank: Rank.eight);
  static const nineDiamonds = Card(suit: Suit.diamonds, rank: Rank.nine);
  static const tenDiamonds = Card(suit: Suit.diamonds, rank: Rank.ten);
  static const jackDiamonds = Card(suit: Suit.diamonds, rank: Rank.jack);
  static const queenDiamonds = Card(suit: Suit.diamonds, rank: Rank.queen);
  static const kingDiamonds = Card(suit: Suit.diamonds, rank: Rank.king);

  static const aceSpades = Card(suit: Suit.spades, rank: Rank.ace);
  static const deuceSpades = Card(suit: Suit.spades, rank: Rank.two);
  static const threeSpades = Card(suit: Suit.spades, rank: Rank.three);
  static const fourSpades = Card(suit: Suit.spades, rank: Rank.four);
  static const fiveSpades = Card(suit: Suit.spades, rank: Rank.five);
  static const sixSpades = Card(suit: Suit.spades, rank: Rank.six);
  static const sevenSpades = Card(suit: Suit.spades, rank: Rank.seven);
  static const eightSpades = Card(suit: Suit.spades, rank: Rank.eight);
  static const nineSpades = Card(suit: Suit.spades, rank: Rank.nine);
  static const tenSpades = Card(suit: Suit.spades, rank: Rank.ten);
  static const jackSpades = Card(suit: Suit.spades, rank: Rank.jack);
  static const queenSpades = Card(suit: Suit.spades, rank: Rank.queen);
  static const kingSpades = Card(suit: Suit.spades, rank: Rank.king);
}

class Cards {
  static List<Card> deck = List.from(Card.all);
}


class Stack {
  Stack({
    required this.cards
  });

  Stack.empty() : cards = [];

  Stack.takeN(List<Card> deck, int n): cards = deck.sublist(deck.length - n) {
    deck.length = deck.length - n;
  }


 List<Card> cards;
}