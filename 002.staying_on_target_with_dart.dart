void main() {
  var deck = new Deck();
  print(deck);
}

class Deck {
  List<Card> cards = [];
  String name;

  Deck(){
    var ranks = ['Ace', 'Two', 'Three', 'Four', 'Five'];
    var suits = ['Diamonds', 'Hearts', 'Clubs', 'Spades'];

    for (var suit in suits){
      for (var rank in ranks) {
        var card = new Card(suit, rank);
        cards.add(card);
      }
    }
  }
  toString(){
    return cards.toString();
  }
}

class Card {
  String rank;
  String suite;

  Card(this.rank, this.suite);

  toString(){
    return "$rank of $suite";
  }
}
