import 'package:flutter/material.dart';
import 'package:to_do_list/pages/details_page.dart';

class CatagoryCard extends StatelessWidget {
  const CatagoryCard({
    super.key, required this.noOfTask, required this.catagory,
  });

final int noOfTask;
final String catagory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsPage(
          catagory: catagory,
        ),),);
      },
      child: Material(
        borderRadius: BorderRadius.circular(20),
        elevation: 15,
        child: SizedBox(
          height: 180,
          width: 180,
          child: Row(
            children: [
              const SizedBox(
                width: 7,
              ),
              Container(
                height: 140,
                width: 6,
                color: Colors.blue,
              ),
              const SizedBox(
                width: 20,
              ),
               Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(
                    height: 18,
                  ),
                  const Icon(
                    Icons.event_note,
                    size: 42,
                  ),
                  Text(
                    "$noOfTask Tasks",
                    style:
                      const  TextStyle(color: Colors.grey, fontSize: 18),
                  ),
                   Text(
                    catagory,
                    style:const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.5),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
