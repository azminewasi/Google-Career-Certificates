file_contents=open("data.txt")
punctuations = '''!()-[]{};:'"`’\,<>./?@#$%^&*_~ '''
uninteresting_words = ["the", "a", "to", "if", "is", "it", "of", "and", "or", "an", "as", "i", "me", "my", "we", "our", "ours", "you", "your", "yours", "he", "she", "him", "his", "her", "hers", "its", "they", "them", "their", "what", "which", "who", "whom", "this", "that", "am", "are", "was", "were", "be", "been", "being", "have", "has", "had", "do", "does", "did", "but", "at", "by", "with", "from", "here", "when", "where", "how","all", "any", "both", "each", "few", "more", "some", "such", "no", "nor", "too", "very", "can", "will", "just"]
    
wordst=list()
wordcloudas=dict()
    
for line in file_contents:
  line=line.strip()
  line=line.lower()
  for letter in line :
    if letter in punctuations:
      line=line.replace(letter," ")
  wordst=line.split()
  for word in wordst :
    if word in uninteresting_words :

      wordst.remove(word)
  for word in wordst :
    wordcloudas[word]=wordcloudas.get(word,0) +1 
    
print(wordcloudas)