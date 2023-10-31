import 'package:flutter/material.dart';
import 'package:to_do_list/pages/add_item_page.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 210, 200, 200),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation:0, 
        leading: Padding(
          padding: const EdgeInsets.only(top: 02.0),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 36.0,
            ),
          ),
        ),
        
        foregroundColor: Colors.black,
      ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddItemsPage()),
          );
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25.0, 15.0, 0.0, 0.0),
            child: Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  height: 30,
                  width: 5,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                const Text(
                  'Finance',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  ),
                ),
               
              ],
            ),
          ),
           const SizedBox(
                  height: 28,
                ),
          const Padding(
            padding: EdgeInsets.fromLTRB(25.0, 0.0, 25.0, 0.0),
            child: Column(
              children: [
                ListTile(
                  tileColor: Colors.white, 
                  leading: Icon(Icons.radio_button_unchecked,
                  color: Colors.yellow,),
                  title: Text(
                    "Money Deposit"
                  ),
                  trailing: Icon(Icons.done,
                  color: Colors.yellow,),
                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  tileColor: Colors.white, 
                  leading: Icon(Icons.radio_button_unchecked),
                  title: Text(
                    "Pay Tax"
                  ),
                  
                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  tileColor: Colors.white, 
                  leading: Icon(Icons.radio_button_unchecked),
                  title: Text(
                    "Repair the car"
                  ),
                
                ),
                SizedBox(
                  height: 40,
                ),
                ListTile(
                  tileColor: Colors.white, 
                  leading: Icon(Icons.radio_button_unchecked),
                  title: Text(
                    "Repair the car"
                  ),
                
                ),
                // Material(
                //   elevation:5,
                //   borderRadius: BorderRadius.circular(12),
                //   child: Container(
                //     decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(12),
                //     ),
                //     height: 100,
                //     width: double.infinity,
                    
                //     child: const Row(
                //       children: [
                //         Icon(Icons.abc),
                //         Text(
                //           "Money Deposit",
                //         ),
                //         Icon(Icons.abc),
                //       ],
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
