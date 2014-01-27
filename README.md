### Ministerul educației Republicii Moldova
### Universitatea Tehnică a Moldovei
### Facultatea Calculatoare, Informatică și Microelectronică
### Filiera Anglofonă

# Raport
## Lucrare de laborator nr. 5
## la Proiectarea Sistemelor Informaționale

##### A efectuat:
st. gr. FAF-101 - Ledniov Vladislav

##### A verificat:
lector superior - A. Railean
lector superior - D. Brăilean


Contents
========

This is the Laboratory 5 for PSI course

Installation
------------

* You need Postgres for the database and Redis for caching and background jobs

Setting it up
-------------

1. copy the `application-example.yml` to `application.yml` and edit it to conform to your system
2. copy the `database-example.yml` to `database.yml` and edit it to fit with your database settings
3. run `bundle install` to set up your gems
4. run `rake db:migrate`
5. if you want to just click around, run `rake db:seed` and then you can sign in with `test@example.com` having the password `123456`

Running the app
---------------

1. launch `sidekiq` in the same folder
2. `rails s`
3. Profit!

Setting up the app for deployment
---------------------------------

1. `application.yml` contains several constants that are important for syncing with the external API service. Please edit them.
2. If you would like to do it locally, go into the Rails Console and type `rake ext:seed_data`

Testing
-------

1. Run the suite with `rake spec`
2. If it tells you that a route has not been properly stubbed, you either need to:
  * stub it by putting the result in the `/spec/fixtures/` directory
  * fix it, since it might be a wrong route
3. Note that `rake spec` runs everything but the *feature* specs. In order to run everything, use `ALL=1 rspec spec/`

