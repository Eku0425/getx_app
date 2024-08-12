import 'package:get/get.dart';

import '../modal/user_modal.dart';

class UserController extends GetxController{


  RxList<User> UserDatalist = <User>[].obs;

  void addUser(Map user)
  {
    UserDatalist.add(User.fromMap(user));

    // User u1 = User.fromMap(user);
    // UserDatalist.add(u1) ;

  }

  void removeUser(int index)
  {
    UserDatalist.removeAt(index);
  }

  void updateUser(int index ,Map user)
  {
    UserDatalist[index]=User.fromMap(user);
  }

}