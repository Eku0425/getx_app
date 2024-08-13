import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../modal/user_modal.dart';

class UserController extends GetxController{


  RxList<User> userDataList = <User>[].obs;
  var txtName = TextEditingController();
  var txtId = TextEditingController();
  var txtSalary = TextEditingController();
  var txtCompanyName = TextEditingController();

  void addUser(Map user)
  {
    userDataList.add(User.fromMap(user));
    // User u1 = User.fromMap(user);
    // UserDataList.add(u1) ;
  }

  void removeUser(int index)
  {
    userDataList.removeAt(index);
  }

  void updateUser(int index ,Map user)
  {
    // UserDatalist[index]=User.fromMap(user);

    txtCompanyName = TextEditingController(text: userDataList[index].company_name);
    txtId = TextEditingController(text: userDataList[index].id.toString());
    txtName = TextEditingController(text: userDataList[index].name);
    txtSalary = TextEditingController(text: userDataList[index].salary.toString());

  }

}