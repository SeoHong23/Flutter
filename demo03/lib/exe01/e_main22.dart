class Room {
  final int roomNumber;

  Room(this.roomNumber);
}

class House {
  final String address;
  final Room room;

  House(this.address, int roomNumber) : room = Room(roomNumber) {
    print('방');
  }
  void displayHouseInfo() {
    print('주소 : ${address}');
    print('방 : ${room.roomNumber}');
  }
}

class Apartment {
  final String buildingName;
  final List<Resident> residents;
  Apartment(this.buildingName) : residents = [];
  void addResident(Resident resident) {
    residents.add(resident);
  }
}

class Resident {
  final String name;
  Resident(this.name);
}

void main() {
  House house = House('부산', 2);
  house.displayHouseInfo();
  Apartment apartment = Apartment('범향빌딩');
  Resident resident = Resident('박서홍');
  apartment.addResident(resident);
}
