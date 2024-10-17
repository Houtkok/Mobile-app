enum Country { CAMBODIA, FRANCE, USA }
enum RoomType{ LivingRoom, BedRoom,Kitchen, BathRoom}
enum Position { Left, Center, Right}
enum RoofType { Gable, Hip, Dutch, Flat, Shed}

class Address {
  final Country country;
  final String city;
  final String street;

  Address({this.country=Country.CAMBODIA, required this.city, required this.street});

  String toString(){
    return "$country - $city - $street";
  }
}
class Roof{
  RoofType type;
  
  Roof(this.type);

  @override
  String toString(){
    return "$type";
  }
}
class Window{
  final String color;
  final Position position;

  Window(this.color,this.position);

  String toString(){
    return "$color - $position";
  }
}

class Room {
  final RoomType roomType;
  final List<Window> windows = [];
  final int floor;
  final Door door;

  Room({required this.roomType,required this.floor, required this.door});

  void addWindow(Window newWindow){
    this.windows.add(newWindow);
  }

  String toString(){
    return "Room type: $roomType - Window: $windows - Floor:  $floor - Door: $door";
  }
}


class Door{
  final String color;
  final String type;
  final Position position;

  Door({required this.color,required this.type,required this.position});

  String toString(){
    return "$color - $type - $position";
  }
}


class House{
  final Address address;
  final List<Room> rooms = [];
  final Door mainDoor;
  final Roof roof;

  House({required this.address, required this.mainDoor, required this.roof});

  void addRoom(Room newRoom){
    this.rooms.add(newRoom);
  }

  @override
  String toString(){
    return "$address - $rooms - $roof - $mainDoor";
  }

  void display(){
    print("$address");
    if(rooms.isNotEmpty){
      for(var room in rooms){
         print("${room.roomType} - ${room.floor} - ${room.windows} - ${room.door}");
      }
    }
    print("Roof : $roof");
    print("Main Door : $mainDoor");

  }
}

main() {
  Address myAdress = Address(street: "CADT", city: "SiemReap" );
  Door mainDoor = Door(color: "black", type: "oak", position: Position.Center);

  Window window1 = Window("Red", Position.Left);
  Window window2 = Window("Blue", Position.Right);
  Window window3 = Window("Pink", Position.Center);
  Room bathRoom = Room(roomType: RoomType.BathRoom, floor: 2, door: Door(color: "white", type: "wood", position: Position.Left));
  bathRoom.addWindow(window1);
  Room livingRoom = Room(roomType: RoomType.LivingRoom, floor: 1, door: Door(color: "white", type: "wood", position: Position.Center));
  livingRoom.addWindow(window2);
  Room bedRoom = Room(roomType: RoomType.BedRoom, floor: 2, door: Door(color: "Black", type: "metal", position: Position.Center));
  bedRoom.addWindow(window3);
  House home1 = House(address: myAdress, mainDoor: mainDoor, roof: Roof(RoofType.Flat));
  home1.addRoom(bathRoom);
  home1.addRoom(livingRoom);
  home1.addRoom(bedRoom);
  home1.display();
}