import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: karid(),
));
class karid extends StatefulWidget {
   karid({super.key});

  @override
  State<karid> createState() => _karidState();

}

class _karidState extends State<karid> {
  int codingLevel= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
     appBar: AppBar(
       title: const Text('BOLT ID'),
       centerTitle: true,
       backgroundColor: Colors.grey[850],
       elevation: 0.0,
     ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState(() {
            codingLevel+=1;
          });
          },
          backgroundColor: Colors.grey[800],
         child: const Icon(Icons.add) ,
        ),
        body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0,40.0, 30.0, 0.0),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/naruchan.jpg'),
                radius: 40.0,
              ),
            ),
           Divider(
             height: 90.0,
             color: Colors.grey[800],
           ),
           const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
           const SizedBox(height:10.0),
            const Text(
              'Kareem',
              style: TextStyle(
                color: Colors.pinkAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height:30.0),
            const Text(
              'CODING LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            const SizedBox(height:10.0),
             Text(
              '$codingLevel',
              style: const TextStyle(
                color: Colors.pinkAccent,
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height:30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10.0,),
                 const Text(
                  'bolukareem16@gmail.com',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
        )
    );
  }
}




