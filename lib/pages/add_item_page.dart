
import 'package:flutter/material.dart';


class AddItemsPage extends StatefulWidget {


  @override
 State<AddItemsPage> createState() =>  _AddItemsPageState();
}

 
class _AddItemsPageState extends State<AddItemsPage> {
  TextEditingController? _taskController = TextEditingController();
  String selectedCategory = "finance";

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(236, 255, 255, 255),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(25.0),
            child: Icon(
              Icons.close,
              size: 35.0,
            ),
          ),
        ),
        title: const Padding(
          padding: EdgeInsets.fromLTRB(0.0, 38.0, 0, 0),
          child: Text(
            "NewTask",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: 
              EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
              ),
          ],
        ),
      ),
    );
  }
}
