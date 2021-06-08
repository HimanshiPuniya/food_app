import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();

}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: ListView.builder(
       itemCount: 10, itemBuilder: (BuildContext context , index){
       return Padding(
         padding: const EdgeInsets.only(left: 10.0 , right: 10.0 , top: 10.0 , bottom: 10.0),
         child: Card(
           child: Column(
             children: [
               Stack(
                 children: [
                   Container(
                     height: MediaQuery.of(context).size.height / 4.5,
                     decoration: BoxDecoration(
                         image: DecorationImage(
                             image: AssetImage('assets/images/splash_image.jpg'),
                             fit: BoxFit.cover
                         )
                     ),
                   ),
                   Container(
                     color: Colors.white,
                     padding: EdgeInsets.only(left : 8.0 , top: 8.0 , bottom: 8.0 , right: 25.0),
                     child: Text('Open' , style: TextStyle(fontWeight: FontWeight.bold),),
                   )
                 ],
               ),
               Padding(
                 padding: const EdgeInsets.only(left: 8.0 , right: 8.0, bottom: 8.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.end,
                   children: [
                     ListTile(
                       contentPadding: EdgeInsets.symmetric(vertical: 0.0 , horizontal: 0.0),
                       title: Text('Special pizza' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.bold),),
                       trailing: ElevatedButton(
                         onPressed: (){},
                         style: ElevatedButton.styleFrom(primary: Colors.green),
                         child: Text('3.1*' , ),
                       ),
                     ),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Text('Pizza, Fast Food' , style: TextStyle(fontSize: 18 , fontWeight: FontWeight.normal),),
                         Text('Rs. 100 for me' , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),)
                       ],
                     )
                   ],
                 ),
               ),
             ],
           ),
         ),
       );
     }),
    );
  }
}
