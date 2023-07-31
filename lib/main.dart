import 'package:flutter/material.dart';
import 'reservations.dart';

void main() {
  runApp(const MaterialApp(home: ReservationProject()));
}

class ReservationProject extends StatefulWidget {
  const ReservationProject({super.key});

  
  @override

State<ReservationProject> createState()=>ReservationProjectState();
}

class ReservationProjectState extends State<ReservationProject>{
  String pageCaption="Home Page";
  String pageName="Home";
  Widget homePageButton(){
    return Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
         ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return const ReservationPage();
              },
            ));
          },
          child: const Text("Reservations"),
        ),

      ]),
    );
  }

@override
Widget build(BuildContext context){
  return MaterialApp(
    title:"Reservation App",
    home: Scaffold(
      appBar:AppBar(
        title: Row(
          children: [Text(pageCaption),
          const Spacer(),
    ElevatedButton(
      onPressed: (){
        setState(() {
          pageName="Home";
          pageCaption="Home Page";
        });
      }, 
      child: const Icon(Icons.close)),
      const SizedBox(
        width:5,
      ),
      ],
      ),
      ),
      body: Builder(builder:(context){
        switch(pageName){
          case "register":
          return const ReservationProject();

          default:
          return homePageButton();
        }
      }), 
      ),
  );
}

  }

 
