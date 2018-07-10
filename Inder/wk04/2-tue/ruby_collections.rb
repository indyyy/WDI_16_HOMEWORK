
### Arrays

#Starting with the following array...


planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]

#Access the second value in `planeteers`.


# Your answer here
p planeteers[1]

#Add "Heart" to the end of `planeteers`.

# Your answer here
p planeteers.push("Heart")

#Combine `planeteers` with `rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]` and save the result in a variable called `heroes`.


# Your answer here
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]
heroes = planeteers.concat rangers
p heroes

#Alphabetize the contents of `heroes` using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).


# Your answer here

p heroes.sort

# Randomize the contents of `heroes` using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).


# Your answer here

p heroes.shuffle

=begin
#### Bonus

Select a random element from `heroes` using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).

```rb
# Your answer here
```

Select all elements in `heroes` that begin with "B" using a method. [The Ruby documentation might help](http://ruby-doc.org/core-2.2.0/Array.html).

```rb
# Your answer here
```

### Hashes

Initialize a hash called `ninja_turtle` with the properties `name`, `weapon` and `radical`. They should have values of "Michelangelo", "Nunchuks" and `true` respectively.

```rb
# Your answer here
```

Add a key `age` to `ninja_turtle`. Set it to whatever numerical value you'd like.

```rb
# Your answer here
```

Remove the `radical` key-value pair from `ninja_turtle`.

```rb
# Your answer here
```

Add a key `pizza_toppings` to `ninja_turtle`. Set it to an array of strings (e.g., `["cheese", "pepperoni", "peppers"]`).

```rb
# Your answer here
```

Access the first element of `pizza_toppings`.

```rb
# Your answer here
```

Produce an array containing all of `ninja_turtle`'s keys using a method. [The Ruby documentation might help](http://ruby-doc.org/core-1.9.3/Hash.html).

```rb
# Your answer here
```

#### Bonus

Print out each key-value pair in the following format - "KEY's is equal to VALUE" -- using a method. [The Ruby documentation might help](http://ruby-doc.org/core-1.9.3/Hash.html).

```rb
# Your answer here
```
=end