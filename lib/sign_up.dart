import 'package:cofee_app/home_page.dart';
import 'package:flutter/material.dart';
class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);
   var Name = TextEditingController();
   var Address = TextEditingController();
   var Age = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  child: Image(
                    image: AssetImage('images/logo.png'),
                  ),
                ),
              ),
              SizedBox( height: 24),
              TextField(
                  controller:Name,
                  obscureText: true,
                  decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Name'
                  )
              ),
              SizedBox( height: 24),
              TextField(
                controller: Age,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Age'
                ),
              ),
              SizedBox( height: 24),
              TextField(
                  controller:Address,
                  obscureText: true,
                  decoration:InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Location'
                  )
              ),
              SizedBox( height: 24),
              ElevatedButton(
                child: Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(
                    builder: (BuildContext context){
                      return Home();
                    }
                  ));
                },
              ),
            ]),
      ),
    );
  }
}
