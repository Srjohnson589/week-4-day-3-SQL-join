# ---------- String Tracker ----------
# DESCRIPTION:
# Create a function that accepts a string and a single character, and returns an integer of the count of occurrences the 2nd argument is found in the first one.
# If no occurrences can be found, a count of 0 should be returned.
# EXAMPLES
# ("Hello", "o")  ==>  1
# ("Hello", "l")  ==>  2
# ("", "z")       ==>  0
# str_count("Hello", 'o'); // returns 1
# str_count("Hello", 'l'); // returns 2
# str_count("", 'z'); // returns 0

#function takes two paraments, strings

# count variable to count as we loop

# loop through looking for the character
# if it is there, add to count

# return count

def str_count(word, character):
    count = 0
    for letter in word:
        if letter == character:
            count += 1
    return count

print(str_count("Hello", 'o'))