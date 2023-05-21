# Pets Sitting



## Authors

  - **Khoa Nguyen**

    - New Github account: [Khoa-V-Nguyen](https://github.com/khoa-v-nguyen)
    - Old Github account: [Omegaeye](https://github.com/omegaeye)
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

<img width="778" alt="Screenshot 2023-05-21 at 11 23 41 AM" src="https://github.com/Khoa-V-Nguyen/pets_sitting/assets/134089461/96f8f37b-7ff2-477c-b9f1-75340c72192c">

## Built With

<p align="left"> <a href="https://www.postgresql.org" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/postgresql/postgresql-original-wordmark.svg" alt="postgresql" width="40" height="40"/> </a> <a href="https://rubyonrails.org" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/rails/rails-original-wordmark.svg" alt="rails" width="40" height="40"/> </a> <a href="https://www.ruby-lang.org/en/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/ruby/ruby-original.svg" alt="ruby" width="40" height="40"/> </a> </p>

## Reflection
- Following the process of TDD (Test-Driven Development) allowed me to thoroughly organize my thoughts and plan out the algorithm for this project.
  - To ensure a better user experience, I included and thoroughly tested sad paths and edge cases, resulting in 100% test coverage.
  - Writing tests helped guide me in writing the necessary code by understanding and addressing the errors.
  - This approach also enhances security by catching potential issues early on.
  
- I set up a GitHub Action to run continuous integration (CI) to ensure that the entire test suite is executed, preventing any new code from breaking existing code.

- For this simple Rails project, I had a couple of directions in mind:

  - Targeting a company or enabling high schoolers to manage bookings.
  - I chose the latter option, so user management was not necessary.
  - The goal of this app is to allow anyone to make bookings, with the admin/sitter having the ability to make adjustments.

- In future iterations, I would consider the following enhancements to improve billing tracking:

  - Add/update tables:
    - Add a users table: to track all pets and billings for each user.
      - has_many invoices
      - has_many invoice_items through invoices
      - has_many bookings through invoices
      - has_many pets
    - Add a pets table: to track all the pets associated with a user.
      - belongs_to a user
    - Add an invoices table: to track users, invoice_items, and subtotals.
      - belongs_to a user
      - Delegate first_name to user
      - Delegate last_name to user
    - Add an invoice_items table: to track pets, users, and invoices.
      - belongs_to an invoice
      - belongs_to a user
      - belongs_to a pet
    - Update the bookings table: to track bookings for all invoices.
      - belongs_to an invoice
- I would appreciate the opportunity to discuss my thought process behind this project further.
