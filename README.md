# README

This is a basic authentication app that differentiates between customer and admin permissions.

About:

* Ruby 2.5.1

* Rails 6.0.3.7

* [Postgresql](https://formulae.brew.sh/formula/postgresql)


How to run:

1. bundle i
2. rake db:create
3. rake db:migrate
4. rake db:seed
5. rake test
6. rake test:system
7. rails s
8. login @ localhost:3000 (w/ email: admin@admin.com - password: 123456) (check seeds for more)
9. login to admin panel @ localhost:3000/admins/sign_in (w/ email: admin@admin.com - password: 123456)
