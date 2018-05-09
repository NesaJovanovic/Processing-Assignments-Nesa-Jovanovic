String sentence = "This is the Begining, of the End, of The rise, of the Fall, of Dimitri, at the Hands, of Dimitri."; // sentence everything is based around
int NumOfCap;//number of capitals
int NumOfVow;//number of Vowels
int NumOfWord;//number of Words
int NumOfPunc;//number of punctuation marks
int MaxLett; //
int index;

void settings(){
  size(700,700);
}

void setup(){
  background(0);
  textSize(14);
  sentencelength();// length of sentance...
  capitals();// amount of 
  vowels();// amount of 
  words(); // amount of 
  punctuation();//amount of 
  letter();//most used
}

void draw(){
  text(sentence,50,100);
  noLoop(); // draw is not required
}

void sentencelength(){
  text("This sentence is: " + sentence.length() + " characters", 50,150);
}

void capitals(){
  for(int i = 0; i < sentence.length(); i++){
    char c = sentence.charAt(i);
    if (c >= 'A' && c <= 'Z') {
      NumOfCap++;
    }
  }
  text("Number of capital letters: " + NumOfCap, 50, 200);
}

void vowels(){
    for(int i = 0; i < sentence.length(); i++){
    char c = sentence.charAt(i);
    if (c =='a' || c =='A' || c == 'e' || c =='E' || c == 'i' || c =='I' || c == 'o' || c =='O' || c == 'u' || c == 'I') {
      NumOfVow++;
    }
  }
  text("Number of vowels: " + NumOfVow, 50, 250);
}

void words(){
    for (int i = 0; i < sentence.length(); i++) {
    String[] list = split(sentence, ' ');
    NumOfWord = list.length;
  }
  text("Number of words in sentence: " + NumOfWord, 50, 300);
}

void punctuation(){
      for(int i = 0; i < sentence.length(); i++){
    char c = sentence.charAt(i);
    if (c == '\'' || c == ':' || c ==  ';' || c == '.' || c == ',' || c == '!' || c == '?') {
      NumOfPunc++;
    }
  }
  text("Number of punctuation marks: " + NumOfPunc, 50, 350);
}

void letter(){
  char[] lowercaseArray = sentence.toLowerCase().toCharArray();
  int[] allLetters = new int [26];
  for (int i = 0; i < lowercaseArray.length; i++) { 
    if (lowercaseArray[i] >= 'a' && lowercaseArray[i] <='z') {
      allLetters[lowercaseArray[i]-'a']++;
    }
  }
  for (int i = 0; i < allLetters.length; i++) {
    if (allLetters[i] > MaxLett) {
      MaxLett = allLetters[i];
      index = i;
    }
  }
  char mostOccuringLetter = char('a' + index);
  text("Most occuring letter: " + mostOccuringLetter + " has occured " + MaxLett + " times.", 50, 400);
}
