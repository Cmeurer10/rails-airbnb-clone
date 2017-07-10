# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
User.destory_all

User.create({"id"=>1, "first_name"=>"Kevin", "last_name"=>"Johnson", "university"=>"UCLA", "address" => "12345 Westwood Boulevard, Los Angeles, CA 90034"})
User.create({"id"=>2, "first_name"=>"Earl", "last_name"=>"Harris", "university"=>"University of Southern California", "address" => "22345 Los Angeles Boulevard, Los Angeles, CA 90025"})
User.create({"id"=>3, "first_name"=>"Amy", "last_name"=>"Brown", "university"=>"San Diego State University", "address" => "145 Broadway Boulevard, San Diego, CA 91155"})
User.create({"id"=>4, "first_name"=>"Mary", "last_name"=>"Potts", "university"=>"Santa Monica College", "address" => "333 Santa Monica Boulevard, Los Angeles, CA 90034"})
User.create({"id"=>5, "first_name"=>"Chris", "last_name"=>"Barry", "university"=>"San Diego State University", "address" => "269 Broadway Boulevard, San Diego, CA 91155"})
User.create({"id"=>6, "first_name"=>"Simon", "last_name"=>"Thompson", "university"=>"University of Southern California", "address" => "11123 Los Angeles Boulevard, Los Angeles, CA 90025"})
User.create({"id"=>7, "first_name"=>"Peter", "last_name"=>"Bradley", "university"=>"University of Southern California", "address" => "11025 Los Angeles Boulevard, Los Angeles, CA 90025"})


#books

Book.destroy_all

Book.create({"id"=>1, "title"=>"Principal of Microeconomics", "edition"=>"7th", "condition"=>"Like New", "price"=>"42", "class"=>"Econ101", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "sold?"=>"No", "id_purchase"=>"001", "id_user"=>1, "publisher"=>"Cengage Learning"})
Book.create({"id"=>2, "title"=>"Intermediate Macroeconomics", "edition"=>"3rd", "condition"=>"Fair", "price"=>"28", "class"=>"Econ102", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "sold?"=>"No", "id_purchase"=>"001", "id_user"=>2}, "publisher"=>"Cengage Learning"})
Book.create({"id"=>3, "title"=>"Pre-Calculus", "edition"=>"2nd", "condition"=>"Fair", "price"=>"26", "class"=>"Math049", "description"=>"The cover and the pages are quite new, just minor traces of usage.", "sold?"=>"Yes", "id_purchase"=>"001", "id_user"=>3}, "publisher"=>"Pearson"})
Book.create({"id"=>4, "title"=>"Calculus 1A", "edition"=>"3rd", "condition"=>"Poor", "price"=>"12", "class"=>"Math101", "description"=>"Highlights and marks are explicit over the pages.", "sold?"=>"No", "id_purchase"=>"001", "id_user"=>4}, "publisher"=>"McGraw Hill"})
Book.create({"id"=>5, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Poor", "price"=>"14", "class"=>"Math102", "description"=>"Quite heavily used before, but it is still solid and usable.", "sold?"=>"No", "id_purchase"=>"001", "id_user"=>5}, "publisher"=>"McGraw Hill"})
Book.create({"id"=>6, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Fair", "price"=>"19", "class"=>"Math102", "description"=>"Some marks on the pages, in fair to good condition overall.", "sold?"=>"No", "id_purchase"=>"001", "id_user"=>3}, "publisher"=>"McGraw Hill"})
Book.create({"id"=>7, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Good", "price"=>"24", "class"=>"Math102", "description"=>"Quite heavily used before, but it is still solid and usable.", "sold?"=>"No", "id_purchase"=>"001", "id_user"=>4}, "publisher"=>"McGraw Hill"})
Book.create({"id"=>8, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>"43", "class"=>"Psych 101", "description"=>"The book is like NEW, barely used! ", "sold?"=>"No", "id_purchase"=>"001", "id_user"=>6}, "publisher"=>"Oxford University Press"})
Book.create({"id"=>9, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Poor", "price"=>"15", "class"=>"Psych 101", "description"=>"The book's back cover is damaged, but the inner pages are fine.", "sold?"=>"Yes", "id_purchase"=>"001", "id_user"=>7}, "publisher"=>"Oxford University Press"})
Book.create({"id"=>10, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>"45", "class"=>"Psych 101", "description"=>"The book is in mint condition!!", "sold?"=>"Yes", "id_purchase"=>"001", "id_user"=>2}, "publisher"=>"Oxford University Press"})

#purchases

Purchases.destroy_all

Purchases.create({"id"=>1, "id_user"=>3, "dialogue"=>"I would like to purchase this book, make an exchange tomorrow?", "book_id"=>3})
Purchases.create({"id"=>2, "id_user"=>7, "dialogue"=>"let's meet tomorrow to make the transaction of the book, alright?", "book_id"=>9})
Purchases.create({"id"=>3, "id_user"=>2, "dialogue"=>"Do you want to make an exchange next Monday?", "book_id"=>10})
