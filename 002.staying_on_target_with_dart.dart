void main() {
  var deck = new Deck();
  deck.shuffle();
  deck.removeCard('Clubs', 'Ace');
  print(deck.cards);
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

  cardsWithSuit(String suit){
    return cards.where((card) => card.suit == suit);
  }

  deal(int handSize){
    var hand = cards.sublist(0, handSize);
    cards = cards.sublist(handSize);
    return hand;
  }
  removeCard(String suit, String rank){
    cards.removeWhere((card) {
      return card.suit == suit && card.rank == rank;
    });
  }
}

class Card {
  String suit;
  String rank;

  Card(this.suit, this.rank);

  toString(){
    return "$rank of $suit";
  }
}
