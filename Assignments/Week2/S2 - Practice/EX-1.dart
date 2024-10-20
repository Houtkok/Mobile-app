enum Skill { FLUTTER, DART, OTHER }

class Address {
  final String _street;
  final String _city;
  final int _zipCode;

  const Address(
      {required String street, required String city, required int zipCode})
      : _street = street,
        _city = city,
        _zipCode = zipCode;

  String get street => _street;
  String get city => _city;
  int get zipCode => _zipCode;

  @override
  String toString() {
    return "$street - $city - $zipCode";
  }
}

class Employee {
  //cannot use final and const because of setter
  String _name;
  double _baseSalary;
  List<Skill> _skills;
  Address _address;
  int _yearsOfExperience;

  Employee(
      {required String name,
      required double baseSalary,
      required Address address,
      required int yearsOfExperience,
      required List<Skill> skills})
      : _name = name,
        _baseSalary = baseSalary,
        _address = address,
        _yearsOfExperience = yearsOfExperience,
        _skills = skills;

  Employee.mobileDeveloper(
      {required String name,
      required double baseSalary,
      required Address address,
      required int yearsOfExperience})
      : _name = name,
        _baseSalary = baseSalary,
        _address = address,
        _yearsOfExperience = yearsOfExperience,
        _skills = [Skill.FLUTTER, Skill.DART];

  String get name => _name;
  double get baseSalary => _baseSalary;
  List<Skill> get skills => _skills;
  Address get address => _address;
  int get yearsOfExperience => _yearsOfExperience;

  set name(String name) => _name = name;
  set baseSalary(double baseSalary) => _baseSalary = baseSalary;
  set skills(List<Skill> skills) => _skills = skills;
  set address(Address address) => _address = address;
  set yearsOfExperience(int yearsOfExperience) =>
      _yearsOfExperience = yearsOfExperience;

  double computeSalary() {
    const baseSalary = 40000;
    double experienceBonus = _yearsOfExperience * 2000;
    double skillBonus = 0;

    for (var skill in _skills) {
      if (skill == Skill.FLUTTER) {
        skillBonus += 50000;
      } else if (skill == Skill.DART) {
        skillBonus += 30000;
      } else if (skill == Skill.OTHER) {
        skillBonus += 10000;
      }
    }

    return baseSalary + experienceBonus + skillBonus;
  }

  void printDetails() {
    print(
        ' Employee: $name,\n Base Salary: \$${computeSalary()},\n Skills: $skills,\n Address : ${address},\n Experience : ${yearsOfExperience} Years \n');
  }
}

void main() {
  var emp1 = Employee(
      name: "Sokea",
      baseSalary: 4000,
      skills: [Skill.FLUTTER],
      address: Address(street: "St 177", city: "PP", zipCode: 12301),
      yearsOfExperience: 10);
  emp1.printDetails();

  var emp2 = Employee(
      name: "Ronan",
      baseSalary: 5000,
      skills: [Skill.DART],
      address: Address(street: "St Monivong", city: "PP", zipCode: 12345),
      yearsOfExperience: 15);
  emp2.printDetails();

  var emp3 = Employee.mobileDeveloper(
      name: "Hout",
      baseSalary: 10000,
      address: Address(street: "St Norodom", city: "PP", zipCode: 12312),
      yearsOfExperience: 10);
  emp3.printDetails();
}
