import './models.dart';

class Stock {
  Stock({
    required this.stock,
    required this.waste,
    required this.hidden
  });

  Stock.make(List<Card> deck):
        hidden = Stack.empty(),
        waste = Stack.empty(),
        stock = Stack.takeN(deck, deck.length);

 Stack stock;
 Stack waste;
 Stack hidden;
}

class Tableu {
  Tableu({
    required this.backs,
    required this.fronts
  });

 Tableu.make(List<Card> deck, int n):
   backs = Stack.takeN(deck, n), fronts = Stack.takeN(deck, 1);

  Stack backs;
  Stack fronts;
}

class Foundation {
  Foundation({
    required this.foundation
});

 Foundation.empty(): foundation= Stack.empty();

  Stack foundation;
}


class Solitaire {
  Solitaire({
    required this.stock,
    required this.tableus,
    required this.foundations
  });


  static List<int> get seven => [for (var i = 0; i < 7; i++) i];
  static List<int> get four => [for (var i = 0; i < 4; i++) i];


  static get make {
    final deck = Cards.deck;
    return Solitaire(
        tableus: [for (var i in seven) Tableu.make(deck, i)],
        foundations: [for (var _ in four) Foundation.empty()],
        stock: Stock.make(deck)
    );
  }

  Stock stock;
  List<Tableu> tableus;
  List<Foundation> foundations;
}