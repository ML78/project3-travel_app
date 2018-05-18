User.destroy_all
u1 = User.create(:image => 'https://i.imgur.com/vedQYVM.jpg', :name => 'Admin', :email => 'admin@gmail.com', :password => 'admin', :admin => true)
u2 = User.create(:image => 'https://i.imgur.com/d4ZN1sS.jpg?1', :name => 'Monique', :email => 'monique@gmail.com', :password => 'monique', :admin => false)

Itinerary.destroy_all
i1 = Itinerary.create(:name => 'NYC trip', :date => DateTime.new(2018,8,7))

Activity.destroy_all
a1 = Activity.create(:name => 'Central Park', :description => 'Get outdoors in Central Park', :category => 'Sights', :image =>'http://res.cloudinary.com/nique/image/upload/v1526603873/central-park-nyc.jpg', :place => 'ChIJ9ccLAZpYwokRthkg_S-WWcE')
a2 = Activity.create(:name => 'The NoMad Restaurant', :description => 'Eat at NoMad', :category => 'Restaurants', :image =>'http://res.cloudinary.com/nique/image/upload/v1526605894/NoMad-library.jpg', :place => 'ChIJ_6jlVJtZwokRlveMaDSLD4U')
a3 = Activity.create(:name => 'Times Square', :description => 'Take a walk in Times Square', :category => 'Sights', :image =>'http://res.cloudinary.com/nique/image/upload/v1526606401/times-square.jpg', :place => 'ChIJmQJIxlVYwokRLgeuocVOGVU')

Location.destroy_all
l1 = Location.create(:name => 'New York', :country => 'USA', :latitude => 40.730610, :longitude => -73.935242)


u2.itineraries << i1

i1.activities << a1
i1.activities << a2
i1.activities << a3

l1.activities << a1
l1.activities << a2
l1.activities << a3
