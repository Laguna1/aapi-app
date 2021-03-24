# README

1. `rails new aapi-app --api -d postgresql`
2. `rails db:create`
4. add custom routes for index books
3. `rails s` and check from another terminal `curl http://localhost:3000/books` for checking root callback
5. Create Book controller `rails g controller Books index`
6. run `curl http://localhost:3000/books -v` for details
7. `rails g model Book title author` and `rails db:migrate`
8. `rails c` and add books
`Book.create(author: "Oksana", title: "I like the adventures!")`
check $ curl http://localhost:3000/books
[{"id":1,"title":"I like the adventures!","author":"Oksana","created_at":"2021-03-24T15:11:46.291Z","updated_at":"2021-03-24T15:11:46.291Z"}]
9. Add new root for create action and method
check new routes `rails routes | grep book`
10. update curl request`curl --request POST http://localhost:3000/books -v`
11. To add new book `curl --header "Content-Type: application/json" --request POST --data '{"author": "James", "title": "A book"}' http://localhost:3000/books -v`
12. Add Book model validations
run test for checking validations `curl --header "Content-Type: application/json" --request POST --data '{"author": "J.", "title": "ML"}' http://localhost:3000/books -v`
responce: {"title":["is too short (minimum is 3 characters)"],"author":["is too short (minimum is 3 characters)"]}
13. Request to delete book(id:1) `curl --header "Content-Type: application/json" --request DELETE http://localhost:3000/books/1 -v`
than `rails c` `Book.find(1)` => ActiveRecord::RecordNotFound (Couldn't find Book with 'id'=1)exit


This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
