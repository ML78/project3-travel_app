User.destroy_all
u1 = User.create(:image => 'https://i.imgur.com/vedQYVM.jpg', :name => 'Admin', :email => 'admin@gmail.com', :password => 'admin', :admin => true)
u2 = User.create(:image => 'https://i.imgur.com/d4ZN1sS.jpg?1', :name => 'Monique', :email => 'monique@gmail.com', :password => 'monique', :admin => false)

Itinerary.destroy_all
i1 = Itinerary.create(:name => 'NYC trip', :date => DateTime.new(2018,8,7))
i2 = Itinerary.create(:name => 'Paris trip', :date => DateTime.new(2018,9,24))
i3 = Itinerary.create(:name => 'Hong Kong trip', :date => DateTime.new(2018,10,31))

Activity.destroy_all
a1 = Activity.create(:name => 'Central Park', :description => 'Get outdoors in Central Park', :category => 'Sights', :image => 'http://res.cloudinary.com/nique/image/upload/v1526603873/central-park-nyc.jpg', :place => 'ChIJ9ccLAZpYwokRthkg_S-WWcE')
a2 = Activity.create(:name => 'The NoMad Restaurant', :description => 'Eat at NoMad', :category => 'Restaurants', :image => 'http://res.cloudinary.com/nique/image/upload/v1526605894/NoMad-library.jpg', :place => 'ChIJ_6jlVJtZwokRlveMaDSLD4U')
a3 = Activity.create(:name => 'Times Square', :description => 'Take a walk in Times Square', :category => 'Sights', :image => 'http://res.cloudinary.com/nique/image/upload/v1526606401/times-square.jpg', :place => 'ChIJmQJIxlVYwokRLgeuocVOGVU')
a4 = Activity.create(:name => 'Empire State Building', :description => 'See the amazing views from the top of Empire State Building', :category => 'Sights', :image => 'http://res.cloudinary.com/nique/image/upload/v1526631151/empire-state-building.jpg', :place => 'ChIJaXQRs6lZwokRY6EFpJnhNNE')

a5 = Activity.create(:name => 'Eiffel Tower', :description => 'Take in the views from the top of the Eiffel Tower by day or see the light show at night', :category => 'Sights', :image =>'http://res.cloudinary.com/nique/image/upload/v1526632638/eiffel-tower.jpg', :place => 'ChIJu_HX7B9w5kcRTRE4uAo9C9o')
a6 = Activity.create(:name => 'Louvre Museum', :description => 'Visit the world\'s largest art museum', :category => 'Museums', :image => 'http://res.cloudinary.com/nique/image/upload/v1526634478/Louvre-mueseum.jpg', :place => 'ChIJ11Xrpyhu5kcR4dpkWLKzedM')
a7 = Activity.create(:name => 'Jardin des Tuileries', :description => 'Take a stroll through the Tuileries', :category => 'Sights', :image => 'https://res.cloudinary.com/nique/image/upload/v1526637549/tuileries.jpg', :place => 'ChIJAQAAMCxu5kcRx--_4QnbGcI')
a8 = Activity.create(:name => 'Ladurée Paris Champs Elysées', :description => 'Enjoy some afternoon tea with a macaron from Ladurée', :category => 'Restaurants', :image => 'https://res.cloudinary.com/nique/image/upload/v1526638632/Laduree.jpg', :place => 'ChIJXUi-ScJv5kcRaUX9yJaj4ys')

a9 = Activity.create(:name => 'Lamma Island', :description => 'Take a ferry to Lamma Island for a seafood feast', :category => 'Sights', :image =>'https://res.cloudinary.com/nique/image/upload/v1526726655/lamma-island.jpg', :place => 'ChIJNYBP5yVVATQREm7zX3gXth4')
a10 = Activity.create(:name => 'Lan Kwai Fong', :description => 'LKF is one of Hong Kong’s most popular spots with over 90 restaurants and bars.', :category => 'Bars, Clubs and Nightlife', :image => 'https://res.cloudinary.com/nique/image/upload/v1526727082/Lan-Kwai-Fong.jpg', :place => 'ChIJsQIjhnwABDQRCTVTm-GVzn8')
a11 = Activity.create(:name => 'SoHo', :description => 'Visit SoHo, the area south of Hollywood Road for fun nightlife experiences', :category => 'Bars, Clubs and Nightlife', :image => 'https://res.cloudinary.com/nique/image/upload/v1526728265/HK_Central_Soho.jpg', :place => 'ChIJLw9f3HoABDQRaFmq9tKvYdk')
a12 = Activity.create(:name => 'Times Square', :description => 'Enjoy some shopping in Times Square', :category => 'Shopping', :image => 'https://res.cloudinary.com/nique/image/upload/v1526729125/times-square-hk.jpg', :place => 'ChIJ_bAR11AABDQRGxsNeGwaZYM')

Location.destroy_all
l1 = Location.create(:name => 'New York', :country => 'USA', :latitude => 40.730610, :longitude => -73.935242)
l2 = Location.create(:name => 'Paris', :country => 'France', :latitude => 48.864716, :longitude => 2.349014)
l3 = Location.create(:name => 'Hong Kong', :country => 'China', :latitude => 22.286394, :longitude => 114.149139)
l4 = Location.create(:name => 'Ho Chi Minh City', :country => 'Vietnam', :latitude => 10.82302, :longitude => 106.62965)

u2.itineraries << i1
u2.itineraries << i2
u2.itineraries << i3

i1.activities << a1
i1.activities << a2
i1.activities << a3
i1.activities << a4

i2.activities << a5
i2.activities << a6
i2.activities << a7
i2.activities << a8

i3.activities << a9
i3.activities << a10
i3.activities << a11
i3.activities << a12

l1.activities << a1
l1.activities << a2
l1.activities << a3
l1.activities << a4

l2.activities << a5
l2.activities << a6
l2.activities << a7
l2.activities << a8

l3.activities << a9
l3.activities << a10
l3.activities << a11
l3.activities << a12
