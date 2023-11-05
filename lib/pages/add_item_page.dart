import 'dart:developer';

import 'package:flutter/material.dart';

class AddItemsPage extends StatefulWidget {
  const AddItemsPage({super.key});

  @override
  State<AddItemsPage> createState() => _AddItemsPageState();
}

class _AddItemsPageState extends State<AddItemsPage> {
  String selectedCategory = "Finance";

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
          padding: EdgeInsets.fromLTRB(120.0, 38.0, 0, 0),
          child: Text(
            "New Task",
            style: TextStyle(
              fontSize: 25.0,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 15.0, 15.0, 0.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                hintText: 'What are you planning?',
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
            tileColor: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            leading:  Radio<String>(
              value: "Work",
              groupValue: selectedCategory,
              onChanged: (value) {

                  selectedCategory=value!;
                   setState(() {
                    
                  });
          
              },
            ),
            title: const Text(
              "Work",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
            tileColor: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
           leading:  Radio<String>(
              value: "Work",
              groupValue: selectedCategory,
              onChanged: (value) {
                  selectedCategory=value!;
                  setState(() {
                    
                  });
              },
            ),
            title: const Text(
              "Finance",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
            tileColor: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          leading:  Radio<String>(
              value: "finance",
              groupValue: selectedCategory.toLowerCase(),
              onChanged: (value) {
                selectedCategory=value!;
                 setState(() {
                    
                  });
              },
            ),
            title: const Text(
              "Personal",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          ListTile(
            contentPadding: const EdgeInsets.fromLTRB(40.0, 0.0, 0.0, 0.0),
            tileColor: const Color.fromARGB(255, 255, 255, 255),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
         leading:  Radio<String>(
              value: "Study",
              groupValue: selectedCategory,
              onChanged: (value) {
                  selectedCategory=value!;
                   setState(() {
                    
                  });
              },
            ),
            title: const Text(
              "Study",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
                  log(selectedCategory.toString());
            },
            
            child:  const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Icon(Icons.add),
                Text('Add Task', ),
               
              ],
            ),
            
           
            ), 
            
          
        ],
      ),
    );
  }
}
