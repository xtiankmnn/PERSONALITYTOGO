class CardsController < ApplicationController
  def index
    @cards = [
      { title: 'Card title 1', text: 'Some quick example text to build on the card title and make up the bulk of the card\'s content.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 2', text: 'Some different text for this card.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 3', text: 'Another example text for a different card.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 4', text: 'Text for the fourth card.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 5', text: 'Fifth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 6', text: 'Example text for the sixth card.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 7', text: 'Seventh card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 8', text: 'Eighth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 9', text: 'Ninth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 10', text: 'Tenth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 11', text: 'Eleventh card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 12', text: 'Twelfth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 13', text: 'Thirteenth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 14', text: 'Fourteenth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 15', text: 'Fifteenth card example text.', img: 'https://via.placeholder.com/150', link: '#' },
      { title: 'Card title 16', text: 'Sixteenth card example text.', img: 'https://via.placeholder.com/150', link: '#' }
    ]
  end
end
