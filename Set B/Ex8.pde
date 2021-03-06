String AnswerInput = ""; // answer...
float Part1Float = 0; // used for the random number for the first half of addition
float Part2Float = 0; // used for the random number for the second half of addiftion
float CircleXFloat = 0; // The float for the game's cirlce x value
float CircleYFloat = 0; // THe flaot for the game's cirlce y value
int Part1Int = 0; // the int for the first half of addition
int Part2Int = 0; // the int for the seecond half of addition
int CircleXInt = 0; // The int for the game's circle x value
int CircleYInt = 0; // The int for the game's circle y value
int screen = 0; // displays certain things depending on the screen
int input = 0; // the input for your answer
int StopMath = 0; // stop generating numbers in the math question
int StopGame = 0; // stop generating circles in the game
int CorrectAnswer = 0; // amount of correct answers
int WrongAnswer = 0; // amount of wrong answers
int Score = 0; // The amount of circles clicked
int HighScoreGame = 0; // The high score for the game
int HighScoreMath = 0; // The high score for the math

void setup() {
  size(800, 600);
  noStroke();
  textSize(26);

}

void draw() {
 background(0);
  if (screen == 0) {
    fill(255);
    text("Choose: Press M for Math or G for Game", 150, 200);
    text("High Score Math =", 150, 350);
    text(HighScoreMath,400,350);
    text("High Score Game =",150,400);
    text(HighScoreGame,400,400);
  }
  if (screen == 1){
    fill(255);
    if(StopMath == 0){
      Part1Float = random(5.1);
      Part2Float= random(5.1);
      Part1Int = int(Part1Float * 10);
      Part2Int= int(Part2Float *10);
      StopMath = 1;
    }
    text("Type your answer then press a to check if it is correct.",50,50);
    text(AnswerInput,225,100);
    text("=",175,100);
    text(Part1Int,50,100);
    text("+", 100,100);
    text(Part2Int,125,100);
    text("Press H to go back to menu",50,550);
    text("Correct = ",600,500);
    text(CorrectAnswer,725,500);
    text("Incorrect =",600,550);
    text(WrongAnswer, 750,550);
    
  }
  if (screen == 2){
    fill(255);
    if(StopGame == 0){
      CircleXFloat = random(80.1);
      CircleYFloat= random(52.6);
      CircleXInt = int(CircleXFloat * 10);
      CircleYInt= int(CircleYFloat *10);
      StopGame = 1;
    }
    text("Click on the circle to gain points.",50,50);
    text("Press H to go back to menu",50,550);
    text("Your score =",525,550);
    text(Score,710,550);
    fill(random(255),random(255),random(255));
    ellipse(CircleXInt,CircleYInt,50,50);
  }
}
void keyPressed(){
  if(screen == 0){
    if(key == 'm' || key == 'M'){
      screen = 1;
    }
    else{
      if(key == 'g' || key == 'G'){
       screen = 2; 
      }
    }
  }
if(screen == 1){
  if(key == 'h' || key == 'H'){
    screen = 0;
    if(HighScoreMath < CorrectAnswer){
     HighScoreMath = CorrectAnswer; 
    }
    WrongAnswer = 0;
    CorrectAnswer = 0;
  }else{
    if(key == '1' || key == '2'|| key == '3' || key == '4'|| key == '5' || key == '6' || key == '7' || key == '8' || key == '9' || key == '0' || key == BACKSPACE){
   if (keyCode == BACKSPACE) {
    if (AnswerInput.length() > 0) {
      AnswerInput = AnswerInput.substring(0, AnswerInput.length()-1);
    }
  } else if (keyCode != SHIFT) {
      AnswerInput = AnswerInput + key;
  }
   }
  }
  if(key == 'a' || key == 'A'){
       input = int(AnswerInput);
       if(input == Part1Int + Part2Int){
         StopMath = 0;
         CorrectAnswer = CorrectAnswer + 1;
         AnswerInput = "";
       }
       if(input != Part1Int + Part2Int){
          StopMath = 0;
          WrongAnswer = WrongAnswer + 1;
          AnswerInput = "";
       }
  }
}
if(screen == 2){
 if(key == 'h' || key == 'H'){
    screen = 0;
    if(HighScoreGame < Score){
     HighScoreGame = Score;
    }
    Score = 0;
 }
}
}

void mousePressed(){
  if(screen == 2){
    if(mouseX > CircleXInt - 25 && mouseX < CircleXInt + 25 && mouseY > CircleYInt - 25 && mouseY < CircleYInt + 25){
     StopGame = 0; 
     Score = Score + 1;
    } else{
      if(Score > 0){
       Score = Score - 1;
      }
    }
  }
}
void background(){
 background(0); 
}
