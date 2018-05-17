//String Variables
String[] sentence; // everything is based around this
String txt;

//Integer Variables
int NumOfCap;//number of capitals
int NumOfVow;//number of Vowels
int NumOfWord;//number of Words
int NumOfPunc;//number of punctuation marks
int MaxLett; 
int index;
int decider;

void settings() {
  size(700, 700);
}

void setup() {
  background(0);
  textSize(14);
  selectfile();// select which file to use
  sentencelength();// length of sentance...
  capitals();// amount of 
  vowels();// amount of 
  words(); // amount of 
  punctuation();//amount of 
  letter();//most used
}

void draw() {
  noLoop(); // draw is not required
}

void selectfile() {
decider = (int)random(0, 6);
println(decider);
  if (decider == 0) {
    String ot[] = loadStrings("othello.txt");
    sentence = ot;
    txt = join(sentence, "\n");
    text("File opened: othello.txt", 50, 100);
  } else if (decider == 1) {
    String illiad[] = loadStrings("illiad.txt");
    sentence = illiad;
    txt = join(sentence, "\n");
    text("File opened: illiad.txt", 50, 100);
  } else if (decider == 2) {
    String romeo[] = loadStrings("romeoAndJuliet.txt");
    sentence = romeo;
    txt = join(sentence, "\n");
    text("File opened: romeoAndJuliet.txt", 50, 100);
  } else if (decider == 3) {
    String odyssey[] = loadStrings("theOdyssey.txt");
    sentence = odyssey;
    txt = join(sentence, "\n");
    text("File opened: theOdyssey.txt", 50, 100);
  } else if (decider == 4) {
    String hamlet[] = loadStrings("hamlet.txt");
    sentence = hamlet;
    txt = join(sentence, "\n");
    text("File opened: hamlet.txt", 50, 100);
  } else if(decider == 5) {
    String macbeth[] = loadStrings("macbeth.txt");
    sentence = macbeth;
    txt = join(sentence, "\n");
    text("File opened: macbeth.txt", 50, 100);
  } else {
    String republic[] = loadStrings("theRepublic.txt");
    sentence = republic;
    txt = join(sentence, "\n");
    text("File opened: theRepublic.txt", 50, 100);
  }
}

void sentencelength() {
  text("This sentence is: " + txt.length() + " characters long", 50, 150);
  println(txt.length());
}

void capitals() {
  for (int i = 0; i < txt.length(); i++) {
    char c = txt.charAt(i);
    if (c >= 'A' && c <= 'Z') {
      NumOfCap++;
    }
  }
  text("Number of capital letters: " + NumOfCap, 50, 200);
  println(NumOfCap);
}

void vowels() {
  for (int i = 0; i < txt.length(); i++) {
    char c = txt.charAt(i);
    if (c =='a' || c =='A' || c == 'e' || c =='E' || c == 'i' || c =='I' || c == 'o' || c =='O' || c == 'u' || c == 'I') {
      NumOfVow++;
    }
  }
  text("Number of vowels: " + NumOfVow, 50, 250);
  println(NumOfVow);
}

void words() {
  for (int i = 0; i < txt.length(); i++) {
    String[] list = split(txt, ' ');
    NumOfWord = list.length;
  }
  text("Number of words in file: " + NumOfWord, 50, 300);
  println(NumOfWord);
}

void punctuation() {
  for (int i = 0; i < txt.length(); i++) {
    char c = txt.charAt(i);
    if (c == '\'' || c == ':' || c ==  ';' || c == '.' || c == ',' || c == '!' || c == '?') {
      NumOfPunc++;
    }
  }
  text("Number of punctuation marks: " + NumOfPunc, 50, 350);
  println(NumOfPunc);
}

void letter() {
  char[] lowercaseArray = txt.toLowerCase().toCharArray();
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
println(mostOccuringLetter);
}
