    Ruby on rails


rails console
rails server
rails generate
rails dbconsole



Mit dem = Zeichen wird die Ausgabe im HTML angezeigt:
<%= # %>

Auskommentieren
<%# customer.name %>



<% if @userame %>
  <h1>Welcome back, <%= @username %></h1>




Neues Projekt erstellen:

rails new customer-database

HTML
\customer_database\app\views\layouts\application.html.erb


Router
\customer_database\config\routes.rb

bin/rails routes

Rails.application.routes.draw do
  resources :customers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'customers#index'
  # root to: redirect('/customers')
end


Prefix Verb         URI Pattern
Controller#Action
customers GET       /customers(.:format)
customers#index
       POST         /customers(.:format)
customers#create
new_customer GET    /customers/new(.:format)
customers#new
edit_customer GET    /customers/:id/edit(.:format)
customers#edit
customer GET    /customers/:id(.:format)
customers#show
       PATCH  /customers/:id(.:format)
customers#update
       PUT    /customers/:id(.:format)
customers#update
       DELETE /customers/:id(.:format)
customers#destroy


http://localhost:3000/trackers/1
http://localhost:3000/trackers/1/edit


Redirect
get '/m21', to: redirect('https://master21.academy')

get '/help', to: 'help#index', as: 'help'


<%= image_tag 'russ.jpg', class: 'avatar' %>
<%= image_tag 'woodypizzatruck_logo.png',  class: 'center', width: '200px' %>




<%= link_to "Home", root_path %>
# => <a href="/">Home</a>


Link-ing to a resource

<%= link_to "Profile", user_path(@user) %>
# => <a href="/users/1">Profile</a>


<%= link_to "Profile", @user %>
# => <a href="/users/1">Profile</a>


<%= link_to "<span class='home-link'>Home</span>".html_safe, root_path %>
# => <a href="/"><span class="home-link">Home</span></a>






stylesheet_link_tag "style"
# => <link href="/assets/style.css" media="screen" rel="stylesheet" />

stylesheet_link_tag "style.css"
# => <link href="/assets/style.css" media="screen" rel="stylesheet" />

stylesheet_link_tag "http://www.example.com/style.css"
# => <link href="http://www.example.com/style.css" media="screen" rel="stylesheet" />

stylesheet_link_tag "style", media: "all"
# => <link href="/assets/style.css" media="all" rel="stylesheet" />

stylesheet_link_tag "style", media: "print"
# => <link href="/assets/style.css" media="print" rel="stylesheet" />

stylesheet_link_tag "random.styles", "/css/stylish"
# => <link href="/assets/random.styles" media="screen" rel="stylesheet" />
#    <link href="/css/stylish.css" media="screen" rel="stylesheet" />











\customer_database\app\assets\stylesheets\scaffolds.scss


Gemfile:

Hier wird aufgelistet, welche gem files für die Applikation benötigt werden.
Versionierung wird auch aufgeführt.

bunde install (installiert alle gems welche im gemfile aufgeführt sind)


gemfile lock


Server starten

rails server


localhost:3000 (Standardport) änderbar in config\puma.rb



Formular und DB erstellen:

rails generate

rails generate scaffold customer name:string address:string city:string
(customers ist der Controllername, immer in Plural)


rails destroy scaffold customer name:string address:string city:string


customer_database\db\migrate\20180721095120_create_customers.rb

  class CreateCustomers < ActiveRecord::Migration[5.2]
    def change
      create_table :customers do |t|
        t.string :name
        t.string :address
        t.string :city

        t.timestamps
      end
    end
  end
)




rails db:migrate (erstellt die DB im file development.sqlite3)

rails db:rollback

customer_database\db\development.sqlite3

DB Anbindung:
\customer_database\config\database.yml

\customer_database\config\credentials.yml.enc



PS D:\Master21\Master21_Projects\customer_database> rails db:migrate
== 20180721095120 CreateCustomers: migrating ==================================
-- create_table(:customers)
   -> 0.0035s
== 20180721095120 CreateCustomers: migrated (0.0039s) =========================


http://localhost:3000/customers


Feld hinzufügen:

rails generate migration add_phone_number_to_customers phone_number:string

erstellt neue Datei im Ordner migrate: 20180721100853_add_phone_number_to_customers.rb

class AddPhoneNumberToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_column :customers, :phone_number, :string
  end
end


rails db:migrate
rails db:migrate:status
rails db:rollback


Neues Feld wird in DB erstellt.


Feld auf Webseite hinzufügen:


\customer_database\app\views\customers\index.html.erb
\customer_database\app\views\customers\show.html.erb


\customer_database\app\controllers\customers_controller.rb

def customer_params
    params.require(:customer).permit(:name, :address, :city, :phone_number)
end



customers.rb

class Customer < ApplicationRecord
  validates :name, presence: true
end




http://localhost:3000/customers/1.json
http://localhost:3000/customers.json





rails new -d postgresql


Von sqlite3 auf PG ändern im gemfile:
# Use sqlite3 as the database for Active Record

gem 'pg'

danach im git bash:
bundle install






DB Schema

\customer_database\config\schema.rb

ActiveRecord::Schema.define(version: 2018_07_21_100853) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
  end

end



SQL Insert statement:

Customer.create(name: 'Foobar AG')
Customer.create(name: 'Foobar AG', address: 'skfjalas', city: 'sdfjk', phone_number: '3203023')

Customer.all
Customer.first

roland = Customer.find_by(name: 'Roland')
customer.name = 'Ricardo'
customer.save

users = User.where(name: 'Roland', occupation: 'Code artist').order(created_at: :desc)


sqlite
select Name from Customers


Validation:

class Customer < ApplicationRecord
  validates :phone_number, presence: true

end

Customer.valid?



<p>Random number:</p><%= 2 + rand(30) %>







ANSTATT:

<p>
  <b>Total: </b>

  <%= @entries.sum  do |entry|
    entry.calories
  end %>

  calories.
</p>

<p>
  You can still consume
  <%= 2200 - @entries.sum do |entry|
    entry.calories
  end %>
  calories today.
</p>



SO: 

<% total_calories = @entries.sum do |entry|
  entry.calories
end %>


<p>
  <b>Total: </b>
  <%= total_calories %>
  calories.
</p>


