import 'package:cofee_app/Cofee_type.dart';
import 'package:cofee_app/ccofeefile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cofee_app/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex =0;

  void Pressed ( int index){
    setState(() {
      selectedIndex = index;
    });// we create a function here so as to make any of the widget tapped to change color
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 170,
        backgroundColor: Colors.black38.withOpacity(0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100,),
            Text('Profile',style: TextStyle( fontSize: 25,),),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.orange,
              ),

            ),
            Text('Settings',style: TextStyle( fontSize: 25,),),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.orange,
              ),

            ),
            Text('Track Order',style: TextStyle( fontSize: 25,),),
            SizedBox(
              height: 20,
              child: Divider(
                color: Colors.orange,
              ),
            ),
            Text('Help',style: TextStyle( fontSize: 25,),),
          ],
        ),
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        actions: [
          Padding(padding: EdgeInsets.all(10),
              child: IconButton(
                icon: Icon(Icons.person),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(
                      builder:(BuildContext context){
                        return Profile();
                      } ));
                },
              )),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        onTap: Pressed,
        currentIndex:selectedIndex,// current index is used to tell which of the navigation bar will show the color kike press the default is always 1
        type: BottomNavigationBarType.fixed,// we stated the type since we are using more than more than one item
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lock),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],

      ),
      body: Column(children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Text(
              'Find the best coffee for you',
          style:GoogleFonts.bebasNeue (
            fontSize: 50,
          ),),
        ),
        Padding(
          padding: EdgeInsets.all(25),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText:'find your cofee',
              focusedBorder: OutlineInputBorder(),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade600)
              )
            )
          ),
        ),
        Container(
          height: 20,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              CofeeType(Type: 'Cappucino', Selected: true,),
              CofeeType(Type: 'Latte', Selected: true,),
              CofeeType(Type: 'Black', Selected: true,),
            ],
          ),
        ),
        SizedBox(height: 2),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
             Cofee(
                 coffeImage: 'images/app7.jpg',
                 cofeeName:'Latte',
                 cofeeCost: '\$4.20',
             ),
              Cofee(
                coffeImage: 'images/app4.jpg',
                cofeeName:'Cappucino',
                cofeeCost: '\$4.10',
              ),
              Cofee(
                coffeImage: 'images/app2.jpg',
                cofeeName:'Milk Cofee Thing',
                cofeeCost: '\$4.60',
              ),


          ],),
        )

      ],),
    );
  }
}
