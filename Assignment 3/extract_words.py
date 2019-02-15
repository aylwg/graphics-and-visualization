# Removes punctuation marks from a string
def parseString (st):
  s = ''
  st = str(st)
  for ch in st:
    if ch == " ' " and ch+1 == "s":
      s += " "
      st.next()
      continue
    elif ch == " ' " and ch+1 != " ":
      s += " ' "
    elif ch == " ' " and ch+1 == " ":
      s += " "
    elif ch.isalpha() or ch.isspace():
      s += ch
    else:
      s += " "
  return s  


def getWordFreq (file):
  book = open(file, "r")
  book_word_dict = {}
  #create files
  allwords = open("allwords.txt", "w")
  uniquewords = open("uniquewords.txt", "w")
  wordfreq = open("wordfrequency.txt", "w")

  #remove punctuation 
  for line in book:
    line = line.strip()
    line = line.replace('-', " ")
    line = str(line)
    line = parseString(str(line))
    word_list = line.split()
    
    for word in word_list:
      #lowercase words
      word = word.lower()
      
      #add words to a dictionary, and keep track of frequency
      if word in book_word_dict:
        book_word_dict[word] = book_word_dict[word] + 1
      else:
        book_word_dict[word] = 1
      #write every word to allwords file
      allwords.write(word + "\n")
      
  #write to unique words if the word shows up only once
  for key in book_word_dict:
    if book_word_dict[key] == 1:
      uniquewords.write(key + "\n")
    
    
  #make copy for ease of use and turn values into keys of a new dict
  dictcopy = dict(book_word_dict)
  dictwordfreq = {}
  for word,value in dictcopy.items():
    if value in dictwordfreq:
       dictwordfreq[value] = dictwordfreq[value] + 1
    else:
      dictwordfreq[value] = 1


  #sort dict and write to wordfreq file
  for count,value in sorted(dictwordfreq.items()):
    wordfreq.write(str(count) +  ": " + str(value) + "\n")

  book.close()
  allwords.close()
  wordfreq.close()
  uniquewords.close()
  return book_word_dict


def main():
  book = "dracula.txt"
  print()

  # Get the frequency of words used by dracula
  wordFreq1 = getWordFreq (book)

main()