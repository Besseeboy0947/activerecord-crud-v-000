def can_be_instantiated_and_then_saved
  movie = __	  movie = Movie.new
  movie.title = "This is a title."	  movie.title = "This is a title."
  __ movie.save 
end


 def can_be_created_with_a_hash_of_attributes	def can_be_created_with_a_hash_of_attributes
@@ -19,78 +19,80 @@ def can_be_created_with_a_hash_of_attributes
      lead: "Paul Newman",	      lead: "Paul Newman",
      in_theaters: false	      in_theaters: false
  }	  }
  movie = __	  movie = Movie.create(attributes)
end	end


 def can_be_created_in_a_block	def can_be_created_in_a_block
  Movie.create do |m|	  Movie.create do |m|
    __	    m.title = "Woo!" 
  end	  end
end	end


 def can_get_the_first_item_in_the_database	def can_get_the_first_item_in_the_database
  __	  Movie.first.title 
end	end


 def can_get_the_last_item_in_the_database	def can_get_the_last_item_in_the_database
  __	  Movie.last.title 
end	end


 def can_get_size_of_the_database	def can_get_size_of_the_database
  __	  Movie.all.size 
end	end


 def can_find_the_first_item_from_the_database_using_id	def can_find_the_first_item_from_the_database_using_id
  __	  Movie.find(1).title 
end	end


 def can_find_by_different_attributes	def can_find_by_different_attributes
  # title == "Title"	  # title == "Title"
  # release_date == 2000, 	  # release_date == 2000, 
  # director == "Me"	  # director == "Me"
  __	  Movie.find_by(title: "Title")
  Movie.find_by(release_date: "2000")
  Movie.find_by(director: "Me")
end	end


 def can_find_using_where_clause_and_be_sorted	def can_find_using_where_clause_and_be_sorted
  # For this test return all movies released after 2002 and ordered by 	  # For this test return all movies released after 2002 and ordered by 
  # release date descending	  # release date descending
  __	  movie = Movie.where("release_date > 2002").order(release_date: :desc)
end	end


 def can_be_found_updated_and_saved	def can_be_found_updated_and_saved
  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"	  # Updtate the title "Awesome Flick" to "Even Awesomer Flick"
  Movie.create(title: "Awesome Flick")	  Movie.create(title: "Awesome Flick")
  __	  movie = Movie.find_by(title: "Awesome Flick")
  __	  movie.update(title: "Even Awesomer Flick")
  __	  movie.save 
end	end


 def can_update_using_update_method	def can_update_using_update_method
  # Update movie title to "Wat, huh?"	  # Update movie title to "Wat, huh?"
  Movie.create(title: "Wat?")	  Movie.create(title: "Wat?")
  __	  movie = Movie.find_by(title: "Wat?")
  __	  movie.update(title: "Wat, huh?")
end	end


 def can_update_multiple_items_at_once	def can_update_multiple_items_at_once
  # Change title of all movies to "A Movie"	  # Change title of all movies to "A Movie"
  5.times do |i|	  5.times do |i|
    Movie.create(title: "Movie_#{i}", release_date: 2000+i)	    Movie.create(title: "Movie_#{i}", release_date: 2000+i)
  end	  end
  __	  Movie.update_all(title: "A Movie")
end	end


 def can_destroy_a_single_item	def can_destroy_a_single_item
  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")	  Movie.create(title: "That One Where the Guy Kicks Another Guy Once")
  __	  movie = Movie.find_by(title: "That One Where the Guy Kicks Another Guy Once")
  __	  movie.destroy 
end	end


 def can_destroy_all_items_at_once	def can_destroy_all_items_at_once
  10.times do |i|	  10.times do |i|
    Movie.create(title: "Movie_#{i}")	    Movie.create(title: "Movie_#{i}")
  end	  end
  __	    Movie.destroy_all 
end	end