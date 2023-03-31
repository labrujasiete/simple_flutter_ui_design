import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/tundra_tree.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric( horizontal: 20, vertical: 10 ),
            child: Text('Id minim ullamco in laboris cillum enim dolor excepteur. Culpa dolore id esse quis ipsum est eiusmod nisi. Non nostrud pariatur ex ea. Ipsum cupidatat in ad deserunt nulla eu aute mollit Lorem reprehenderit. Ullamco ex mollit amet cupidatat cillum. Officia quis do nisi aliqua est.')
            )
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


class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 25, vertical: 10 ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
        
          CustomButton(icon: Icons.phone, text: 'CALL',),
          CustomButton(icon: Icons.directions_outlined, text: 'ROUTE',),
          CustomButton(icon: Icons.share, text: 'SHARE',),
    
    
        ],
      ),
    );
  }
}


class CustomButton extends StatelessWidget {

  final IconData icon;
  final String text;

  const CustomButton({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(bottom: 10),
          child: Icon( icon, color: Colors.blue, size: 30,)
          ),
        Text(text, style: TextStyle( color: Colors.blue ))
      ],
    );
  }
}



