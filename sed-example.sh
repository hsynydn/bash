# Replace the first occurrence for each line of the given text from stdin
sed 's/fetch/push/' < <(printf "%s\n%s\n", "fetch name, fetch city" "fetch name, fetch city")

# Replace the first occurrence for each line of the given text from file
sed 's/fetch/push/' < txt

# Replace the second occurrence for each line of the given text from stdin
sed 's/fetch/push/2' < <(printf "%s\n%s\n", "fetch name, fetch city" "fetch name, fetch city")

# Replace all occurrences for each line of the given text
sed 's/fetch/push/g' < <(printf "%s\n%s\n", "fetch name, fetch city" "fetch name, fetch city")

# Extract regex match from stdin
# Regex Matches are inside parantheses
# Use -E -e or --regexp-extended for extended regular expressions
sed -E 's/^Timestamp:([0-9]*)$/\1/' < <(echo "Timestamp:1665839939")
sed -r 's/^Timestamp:([0-9]*)$/\1/' < <(echo "Timestamp:1665839939")
sed --regexp-extended 's/^Timestamp:([0-9]*)$/\1/' < <(echo "Timestamp:1665839939")
