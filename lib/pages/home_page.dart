import 'package:flutter/material.dart';
import 'package:to_do_list/pages/add_item_page.dart';
import 'package:to_do_list/reusableWidgets/catagory_bottom.dart';
import '../reusableWidgets/catagory_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(235, 210, 200, 200),
      appBar: AppBar(
        leading: const Padding(
          // ltrb bhanko?
          padding: EdgeInsets.fromLTRB(5, 20, 0, 0),
          child: Icon(
            Icons.menu,
            color: Color.fromARGB(255, 58, 12, 183),
            size: 25.0,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions:  [
    

CircleAvatar(
    backgroundColor: Colors.transparent,
    child: SizedBox(
    width: 40,
      height: 40,
      child: ClipOval(
        child: Image.asset("assets/images/pic1.jpg",
      ),
    ),
),
),
        ],
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
      body: const HomepageBody(),
    );
  }
}

class HomepageBody extends StatelessWidget {
  const HomepageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "To Do List",
            style: TextStyle(
                fontSize: 23, color: Colors.black, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CategoryButton(text: "Today"),
              CategoryButton(text: "Week"),
              CategoryButton(text: "Month"),
              
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                 CatagoryCard(noOfTask: 3, catagory: "Work",),
                   CatagoryCard(noOfTask: 4, catagory: "Finance",),
                ],
              ),

            SizedBox(
              height: 40,
            ),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CatagoryCard(noOfTask: 5, catagory: "Personal",),
                   CatagoryCard(noOfTask: 6, catagory: "Study",),
                ],
              ),

            ],
          ),
        ],
      ),
    );
  }
}

