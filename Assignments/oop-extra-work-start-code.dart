// Class Tree
class Tree {
  String type;
  double height;

  Tree(this.type, this.height);
}
// Class Window
class Window{
  String color;
  String side;
  int floor;

  Window(this.color,this.side,this.floor);
}
// Class Roof
class Roof{
  String type;
  
  Roof(this.type);
}
//Class Chimney
class Chimney{
  bool haveChimney;

  Chimney(this.haveChimney);
}
//Class Door
class Door{
  String color;
  String type;
  String position;
  
  Door(this.color,this.position,this.type);
}

// Class House
class House {
  String address;
  List<Tree> trees = [];  // by default empty
  List<Window> windows = [] ;
  Roof roof;
  Chimney chimney;
  Door door;

  House(this.address,this.chimney,this.door,this.roof);

  void addTree(Tree newTree){
    this.trees.add(newTree);
  }

  void addWindow(Window newWindow){
    this.windows.add(newWindow);
  }

  void display(){
    print("House Address : $address");
    print("Roof Type : ${roof.type}");
    print("Door Color : ${door.color}");
    print("Door Position : ${door.position}");
    print("House Chimney : ${chimney.haveChimney}");
    if(windows.isNotEmpty){
      for(var window in windows){
         print("${window.color} on ${window.side} on ${window.floor}");
      }
    }
    if(trees.isNotEmpty){
      for(var tree in trees){
        print("Tree Type : ${tree.type}");
        print("Tree Height : ${tree.height}");
      }
    }
  }
}

void main(){
  Tree tree = Tree("Oak", 1.77);
  Window window = Window("RED", "LEFT", 2);
  Roof roof = Roof("Hip roof");
  Chimney chimney = Chimney(true);
  Door door = Door("White", "middle", "One Panel");
  House house = House("St 123", chimney, door, roof);
  house.addTree(tree);
  house.addWindow(window);
  house.display();
}
