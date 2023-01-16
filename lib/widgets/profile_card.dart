import 'package:flutter/material.dart';
class ProfileCard extends StatelessWidget {
  final String name;
  final String status;
  final String uri;
  final int index;
  const ProfileCard({Key? key, required this.name, required this.status, required this.index, required this.uri}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 7.0,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(uri),
                      )
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 50,top: 8),
                  height: 15,
                  width: 15,
                  decoration: BoxDecoration(
                      color:status=='Away'?Colors.orange: Colors.green,
                      borderRadius: BorderRadius.circular(7.5)
                  ),
                )

              ],
            ),
            const SizedBox(height: 20,),
            Text(name,style: const TextStyle(
                fontSize: 14,fontWeight: FontWeight.bold,color: Colors.black
            ),),
            SizedBox(height: 8,),
            Text(status,style: const TextStyle(
                fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey
            ),),
            const SizedBox(height: 12,),
            Expanded(child: Container(
              width: 175,
              decoration: BoxDecoration(
                color: status=='online'?Colors.grey:Colors.green,
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(10),bottomLeft: Radius.circular(10)),
              ),
              child: Center(
                child: Text('Request',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16
                ),),
              ),
            ))
          ],
        ),
        margin: index.isEven?const EdgeInsets.fromLTRB(10, 0, 25, 10):const EdgeInsets.fromLTRB(25, 0, 5, 10)
    );;
  }
}
