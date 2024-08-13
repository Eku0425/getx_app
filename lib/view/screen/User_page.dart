import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/User_controller.dart';

UserController userController = Get.put(UserController());

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (context) =>AlertDialog(
            title: Text('Add Employee'),
            content: Column(
              children: [
                TextField(

                )
              ],
            ),
          )
             
          );
        },
        child: Icon(Icons.add,),
      ),
      appBar: AppBar(
        title: Text(
          'User page',
          style: TextStyle(fontSize: 25, color: Colors.blue),
        ),
        actions: [
          Icon(
            Icons.menu,
            size: 30,
          )
        ],
      ),
      body: Obx(
            () =>
            ListView.builder(
              itemCount: userController.userDataList.length,
              itemBuilder: (context, index) =>
                  ListTile(
                    title: Text('${userController.userDataList[index].name}'),
                    leading: Text(
                        userController.userDataList[index].id.toString()),
                    subtitle:
                    Text('${userController.userDataList[index].company_name}'),
                    trailing: Row(
                      children: [Icon(Icons.edit), Icon(Icons.delete)],
                    ),
                  ),
            ),
      ),
    );
  }
}
