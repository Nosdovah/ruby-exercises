def create_favorite_hash(color, number)
  favorite =  {color: color,
               number: number}
  return favorite
  # return a hash with the following key/value pairs:
  # key of color (as a symbol) with value of the color argument
  # key of number (as a symbol) with the value of the number argument
end

def favorite_color(favorite_list)
  if favorite_list[:color].nil?
    return nil
  end
  return favorite_list[:color]
  # return the value of the color key
end

def favorite_number(favorite_list)
  # use #fetch to return the value of the number key or 42 if the key is not found
  if favorite_list[:number].nil? 
    return 42
  end
  return favorite_list[:number]
end

def update_favorite_movie(favorite_list, movie)
  # Step 1: add/update the key of movie (as a symbol)
  favorite_list[:movie] = movie

  # Step 2: return the hash (because Step 1 returns the value of the movie key)
  return favorite_list
end

def remove_favorite_number(favorite_list)
  # Step 1: delete the number data
  favorite_list.delete(:number)
  # Step 2: return the hash (because Step 1 returns the value of the number key)
  return favorite_list
end

def favorite_categories(favorite_list)
  return favorite_list.keys
  # return the keys of favorite_list
end

def favorite_items(favorite_list)
  return favorite_list.values
  # return the values of favorite_list
end

def merge_favorites(original_list, additional_list)
  return original_list.update(additional_list)
  # merge the two hashes: original_list and additional_list
end
