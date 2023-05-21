# Pets Sitting



## Authors

  - **Khoa Nguyen**

    - New Github account: [GitHub](https://github.com/khoa-v-nguyen)
    - Old Github account: [GitHub](https://github.com/omegaeye)
    - Job Github account: [GitHub](https://github.com/omegaeye-he)
    - [Link'd In](https://www.linkedin.com/in/khoa-n323)

## Summary

  - [Getting Started](#getting-started)
  - [Running the tests](#running-the-tests)
  - [Pages](#pages)
  - [Built With](#built-with)
  - [Versioning](#versioning)
  - [Reflection](#reflection)
  - [Future Iterations](#future-iterations)
  - [Acknowledgement](#acknowledgement)

## Getting Started

### Installing

- Fork and clone this repo
- Run `bundle install`
- Run `rails db:{create,migrate}`
- To seed test database
  - Run `rails db:seed RAILS_ENV=test`

## Running the tests

- `bundle exec rspec` to run the test suite

## Pages

#### Booking form page

<img width="412" alt="Screenshot 2023-05-21 at 11 20 58 AM" src="https://github.com/Khoa-V-Nguyen/pets_sitting/assets/134089461/f69001d8-072b-4ceb-aeef-900b8418f244">

#### Admin Index page

<img width="778" alt="Screenshot 2023-05-21 at 11 23 41 AM" src="https://github.com/HotelEngine/he-api/assets/86729706/920735f4-d0a2-4f08-953c-5a760ac502b5">

## Built With

<p align="left"> <a href="https://www.postgresql.org" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" alt="postgresql" width="40" height="40"/> </a> <a href="https://rubyonrails.org" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/rails/rails-original-wordmark.svg" alt="rails" width="40" height="40"/> </a> <a href="https://www.ruby-lang.org/en/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/> </a> </p>

## Reflection
  - Following the process of TDD allowed me to thoroughly organized my thoughts and planned out the algorithm of this project.
    - To reduce the negative user experience, sad path and edge case was included and tested thoroughly. Test coverage is 100%.
    - Writing the tests and using the errors to guide me on what code to write.
      - Reading and understanding errors
      - Flow of data
      - Better security
## Future Iterations

  - In order to keep better track of `billing` I would implement the following:
    - add `user` table
      - `has_many` `invoices`
      - `has_many` `invoice_items` through `invoices`
      - `has_many` `bookings` through `invoices`
      - `has_many` `pets`
    - add `pet` table
      - `belongs_to` a `user`
    - add `invoice` table
      - `belongs_to` a `user`
      - delegate `first_name` to `user`
      - delegate `last_name` to `user`
    - add `invoice_item` table
      - `belongs_to` `invoice`
      - `belongs_to` `user`
      - `belongs_to` `pet`
    - update `booking` table
      - `belongs_to` `invoice`

## Acknowledgement
