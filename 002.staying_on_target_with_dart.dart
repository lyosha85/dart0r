void main() {
  var deck = new Deck();
  deck.shuffle();
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

  shuffle() {
    cards.shuffle();
  }

  cardsWithSuit(suit){
    cards.map
  }
}

class Card {
  String rank;
  String suit;

  Card(this.rank, this.suit);

  toString(){
    return "$rank of $suit";
  }
}
