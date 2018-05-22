# Project #3: The Stopover App

A web app for creating stopover itineraries in some of the world's major cities. Designed for people who travel for work. It is built with Ruby on Rails and deployed to Heroku.

Start planning today: https://stopover-app.herokuapp.com

## Technical Specifications
* Rails v5.1.6
* Ruby v2.4.1
* Postgres database

### Approach
The app utilises the model–view–controller (MVC) framework of Rails.

* Models:
  * User - Users set up an account via a form and have their own profile page with a list of their itineraries.
  * Itinerary - The itinerary has a date and a list of activities selected by the user.
  * Activity - An activity takes place in a particular spot in a city, which is referenced by its Google PlaceID.
  * Location - The city's location details include its latitude and longitude.   


* Handles data validation:
  * Sign up information - verifying valid email addresses and setting secure passwords.
  * Fields in the forms are set as required where appropriate.
  * Incorrect inputs are handled through error messages.


* Handles authentication and authorization. Examples include:
  * Users must be signed in to access app features.
  * Users can only edit and delete their own account.
  * Only the Admin user can add new locations.  


* Ruby Gems have been installed including:
  * pry-rails v0.3.6 for development
  * rails_12factor v0.0.3 for production
  * brcrypt v3.1.11 for password encryption
  * jquery-rails v4.3.3 for UI, eg. AJAX
  * bootstrap-sass v3.3.7 for styling
  * cloudinary v1.9.1 for image file uploads


* The following JavaScript libraries and plug-ins have also been used:
  * Three.js
  * DataTables plug-in for jQuery

## Dedication
Dedicated to my mentor, Stella Halena :bouquet:

## Terms & Conditions
This project is licensed under the MIT License.
