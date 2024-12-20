import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:invi/ListTable.dart';
import 'package:invi/auth_screen.dart';
// import 'package:invi/loginpage.dart';
import 'package:invi/main.dart';
import 'package:invi/recordPage.dart';



class IntroPage extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    return Scaffold(





      appBar: AppBar(

        title: Text('IntroPage'),
        backgroundColor: Colors.purple[200],
        actions: [
          ElevatedButton(

            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red[500],
              foregroundColor: Colors.white,
            ),
            
            onPressed: () {
              // Call the logout function here
              _logout(context);
            },child: Text('Logout', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
          ),
        ],

      ),


      body:

      SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Center(
          
              child: Container(
                height: 595,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
          
                      children: [
          
          
                        Padding(
                          padding: const EdgeInsets.all(25.0),
                          child: Center(
                            child: Container(
                              width: 350,
                              child: Center(
                                child: Text('Welcome to the Inventory Management System App!', style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.bold,
                                ),),
                              ),
                            ),
                          ),
                        ),//Title in intro page
          
          
                        SizedBox(height: 20,),
          
          
          
                        Row(
          
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
          
                          children: [
          
          
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:(context) =>MyHomePage(title: 'home page'),
                                    ));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.cyanAccent.shade400,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.black
                                    )
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Create Requisition Form', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue.shade900,
                                    ),),
                                  ),
                                ),
                              ),
                            ),//button Create Requisition Form
          
          
                            SizedBox(width: 20,),
          
          
          
          
          
                            InkWell(
                              onTap:(){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:(context) =>ListTable(),
                                  ));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.cyanAccent.shade400,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.black
                                    )
                                ),
                                child: Center(
                                  child: Text('List of Items', style: TextStyle(
                                    fontSize: 20,

                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade900,
                                  ),),
                                ),
                              ),
                            ),// button List of item
          
          
                          ],
                        ),//row 1
          
          
          
          
                        SizedBox(height: 40,),
          
          
                        Row(
          
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
          
                          children: [
          
          
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:(context) =>MyHomePage(title: 'home page'),
                                    ));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.cyanAccent.shade400,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.black
                                    )
                                ),
                                child: Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Download pdf', style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue.shade900,
                                    ),),
                                  ),
                                ),
                              ),
                            ),//button  Download pdf
          
          
                            SizedBox(width: 20,),
          
          
                            InkWell(
                              onTap: (){
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:(context) => RecordPage(),
                                    ));
                              },
                              child: Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.cyanAccent.shade400,
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                        width: 2,
                                        color: Colors.black
                                    )
                                ),
                                child: Center(
                                  child: Text('Records', style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue.shade900,
                                  ),),
                                ),
                              ),
                            ),// Records button
          
          
                          ],
                        ),//row 2
          
          
                        SizedBox(height: 120,),
          
          
          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
          
                          children: [

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  foregroundColor: Colors.white,
                                ),
          
                                onPressed: (){
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder:(context) =>MyHomePage(title: 'home page'),
                                  ));
                            },
                                child: Text('Next', style: TextStyle(fontSize: 15),)),//Next Elevated Button
          
                          ],
                        ),//row 3
          
          
                      ],
                    ),
                  ),
                ),
              ),
            ),
          
          
          
            ],
          ),
        ),
      ),
    );

  }
void _logout(BuildContext context) {

  Navigator.pushReplacement(
    context,
    MaterialPageRoute(builder: (context) => AuthScreen()),
  );
}//logout function
}