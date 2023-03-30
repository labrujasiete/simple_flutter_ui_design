import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(image: AssetImage('assets/tundra_tree.jpg')),

          Title()

        ],
      )
    );
  }
}






class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10 ),
      child: Row(
        children: [
    
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Lake Campground', style: TextStyle( fontWeight: FontWeight.bold )),
              Text('some name, Switzerland', style: TextStyle( color: Colors.black45 ),),
            ],
          ),
    
          Expanded(child: Container()),

          Icon(Icons.star, color: Colors.red ),
          Text('41')
    
        ],
      ),
    );
  }
}