import 'dart:math';
import 'dart:io';
class Brain{

  List gameSlot;
  int pos;
  int nextPos;
  int mode;
  int maxPos;

  Brain(int size){
    this.gameSlot = new List(size);
    this.pos = 1;
    this.nextPos = (size*size) + 1;
    this.mode = size;
    this.maxPos = size==3 ? 40 : 50;
    var random = new Random();

    for(int i =0;i<size;i++){
      gameSlot[i] = addEmptySlot(size);
    }

    int round = size*size+1;
    List already = new List();
    already.add(0);

    for(int i =0;i<size;i++){
      for(int j=0;j<size;j++){
        while(checkGenerateSlot(gameSlot[i][j],already)){
          gameSlot[i][j] = random.nextInt(round);
        }
        already.add(gameSlot[i][j]);
      }
    }

  }

  void CurrentBrain(){
    print("----- Brain Response -----");
    for(int i =0;i<this.mode;i++){
      for(int j =0;j<this.mode;j++){
        var n = gameSlot[i][j];
        stdout.write("  $n  ");
      }
      print("");
    }
    var n = this.pos;
    print("Current pos : $n");
  }

  void playBrain(int x,int y){
    x = x-1;
    y = y-1;

    if(this.pos == this.gameSlot[x][y] && x < 3 && y < 3){
      if(this.nextPos <= this.maxPos){gameSlot[x][y] = this.nextPos;}
      else{gameSlot[x][y] = 'X';}
      this.pos +=1;
      this.nextPos +=1;
    }
    else{
      print("Wrong !");
    }
  }

  bool playBrainStatus(){
    if(this.pos-1 == this.maxPos){
      print("Finished!");
      return false;
    }
    return true;
  }
  List addEmptySlot(int size){
    List slot = new List(size);
    for(int k=0;k<size;k++){
      slot[k] =0;
    }
    return slot;
  }
  bool checkGenerateSlot(int n,List check){
    for(int i=0;i<check.length;i++){
      if(n == check[i])return true;
    }
    return false;
  }
  String getMode(){
    return this.mode.toString();
  }
}


/*void main(List<String> args) {
  Brain game = new Brain(3);
  while(game.playBrainStatus()){
    game.CurrentBrain();
    stdout.write("X << ");
    int x = int.parse(stdin.readLineSync());
    stdout.write("Y << ");
    int y = int.parse(stdin.readLineSync());
    game.playBrain(x,y);
  }
}
*/