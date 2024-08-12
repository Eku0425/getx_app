class User {
  late int id;
  late String  name,company_name;

  User({ required this.id, required this.name,  required this.company_name});

  factory User.fromMap(Map m1)
  {
    return User(id: m1['id'], name:m1 ['name'], company_name: m1['company_name']);
  }

}
