# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#users
Users.destory_all

User.create({"id"=>1, "first_name"=>"Kevin", "last_name"=>"Johnson", "university"=>"Tokyo University", "address" => "2-5-5 Azabu Juban, Minato, Tokyo"})
User.create({"id"=>2, "first_name"=>"Earl", "last_name"=>"Harris", "university"=>"Waseda University", "address" => "3-11-1 Shinjuku, Tokyo"})
User.create({"id"=>3, "first_name"=>"Amy", "last_name"=>"Brown", "university"=>"Tokyo University", "address" => "2-5-5 Azabu Juban, Minato, Tokyo"})
User.create({"id"=>4, "first_name"=>"Mary", "last_name"=>"Potts", "university"=>"Tokyo University", "address" => "2-9-1 Azabu Juban, Minato, Tokyo"})
User.create({"id"=>5, "first_name"=>"Chris", "last_name"=>"Barry", "university"=>"Keio University", "address" => "1-8-5 Roppongi Hills, Minato, Tokyo"})
User.create({"id"=>6, "first_name"=>"Simon", "last_name"=>"Thompson", "university"=>"Waseda University", "address" => "1-8-2 Roppongi, Minato, Tokyo"})
User.create({"id"=>7, "first_name"=>"Peter", "last_name"=>"Bradley", "university"=>"Waseda University", "address" => "1-5-3 Meguro-ku, Meguro, Tokyo"})
User.create({"id"=>8, "first_name"=>"David", "last_name"=>"Parker", "university"=>"Waseda University", "address" => "2-11-4 Meguro-ku, Meguro, Tokyo"})

#books

Books.destroy_all

Book.create({"id"=>1, "title"=>"Principal of Microeconomics", "edition"=>"7th", "condition"=>"Like New", "price"=>"42", "class"=>"Econ 101", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>1, "publisher"=>"Cengage Learning"})
Book.create({"id"=>2, "title"=>"Intermediate Macroeconomics", "edition"=>"3rd", "condition"=>"Fair", "price"=>"28", "class"=>"Econ 102", "description"=>"The book is quite new, i used it for just a few times as I have replied on my professor's slides.", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>2}, "publisher"=>"Cengage Learning"})
Book.create({"id"=>3, "title"=>"Pre-Calculus", "edition"=>"2nd", "condition"=>"Fair", "price"=>"26", "class"=>"Math 049", "description"=>"The cover and the pages are quite new, just minor traces of usage.", "sold?"=>"Yes", "id_purchase"=>1, "id_user"=>3}, "publisher"=>"Pearson"})
Book.create({"id"=>4, "title"=>"Calculus 1A", "edition"=>"3rd", "condition"=>"Poor", "price"=>"12", "class"=>"Math 101", "description"=>"Highlights and marks are explicit over the pages.", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>4, "publisher"=>"McGraw Hill"})
Book.create({"id"=>5, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Poor", "price"=>"14", "class"=>"Math 102", "description"=>"Quite heavily used before, but it is still solid and usable.", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>5}, "publisher"=>"McGraw Hill"})
Book.create({"id"=>6, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Fair", "price"=>"19", "class"=>"Math 102", "description"=>"Some marks on the pages, in fair to good condition overall.", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>3}, "publisher"=>"McGraw Hill"})
Book.create({"id"=>7, "title"=>"Calculus 1B", "edition"=>"4td", "condition"=>"Good", "price"=>"24", "class"=>"Math 102", "description"=>"Quite heavily used before, but it is still solid and usable.", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>4}, "publisher"=>"McGraw Hill"})
Book.create({"id"=>8, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>"43", "class"=>"Psych 101", "description"=>"The book is like NEW, barely used! ", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>6}, "publisher"=>"Oxford University Press"})
Book.create({"id"=>9, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Poor", "price"=>"15", "class"=>"Psych 101", "description"=>"The book's back cover is damaged, but the inner pages are fine.", "sold?"=>"Yes", "id_purchase"=>2, "id_user"=>7}, "publisher"=>"Oxford University Press"})
Book.create({"id"=>10, "title"=>"Introduction to Psychology", "edition"=>"3rd", "condition"=>"Like New", "price"=>"45", "class"=>"Psych 101", "description"=>"The book is in mint condition!!", "sold?"=>"Yes", "id_purchase"=>3, "id_user"=>2}, "publisher"=>"Oxford University Press"})
Book.create({"id"=>11, "title"=>"Early Film History", "edition"=>"3rd", "condition"=>"Like New", "price"=>"55", "class"=>"Film 101", "description"=>"The book is in very new condition, and it is the latest edition!", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>6}, "publisher"=>"Kendall Hunt Publishing"})
Book.create({"id"=>12, "title"=>"Early Film History", "edition"=>"2nd", "condition"=>"Fair", "price"=>"34", "class"=>"Film 101", "description"=>"The book is in fair condition with some marks and highlights.", "sold?"=>"No", "id_purchase"=>nil, "id_user"=>7}, "publisher"=>"Kendall Hunt Publishing"})
Book.create({"id"=>13, "title"=>"Early Film History", "edition"=>"2nd", "condition"=>"Good", "price"=>"38", "class"=>"Film 101", "description"=>"The book is in very good condition! I have been took a good care of the book last semester!", "sold?"=>"Yes", "id_purchase"=>4, "id_user"=>8}, "publisher"=>"Kendall Hunt Publishing"})






#purchases

Purchases.destroy_all

Purchase.create({"id"=>1, "id_user"=>3, "dialogue"=>"I would like to purchase this book, make an exchange tomorrow?", "book_id"=>3})
Purchase.create({"id"=>2, "id_user"=>7, "dialogue"=>"let's meet tomorrow to make the transaction of the book, alright?", "book_id"=>9})
Purchase.create({"id"=>3, "id_user"=>2, "dialogue"=>"Do you want to make an exchange next Monday?", "book_id"=>10})
Purchase.create({"id"=>4, "id_user"=>8, "dialogue"=>"I am in need of this book, please contact me at 123-123-234, thanks!", "book_id"=>13})

