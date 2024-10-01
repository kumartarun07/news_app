import 'package:flutter/material.dart';
import 'package:news_app/ui_helper/app_conts.dart';

class HomePage extends StatelessWidget
{
  TextEditingController abcController = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 10,),
     body: SingleChildScrollView(
       child: Column(mainAxisAlignment: MainAxisAlignment.start,
       children: [
         ListTile(
           leading: Container(
             height: 50,width: 50,
             decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
             image: DecorationImage(image:AssetImage("assets/img/ishan.jpg",),fit: BoxFit.fill)
             ),
           ),
           title: Text("Welcome"),
           subtitle: Text("Tarun Malviya"),
           trailing: Icon(Icons.notifications_outlined,size: 30,color: Colors.black,),
         ),
         SizedBox(height: 20,),
         Container(margin: EdgeInsets.symmetric(horizontal: 15),
           width: 500,
           child: TextField(controller: abcController,
           decoration: InputDecoration(enabledBorder: OutlineInputBorder(),
           prefixIcon: Icon(Icons.search,size: 20,),
             hintText: "Let's see what happend today"
           ),
           ),
         ),
         SizedBox(height: 20,),
         Container(
           height: 270,
           margin: EdgeInsets.symmetric(horizontal: 15),
           child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Breaking News !",style: TextStyle(fontSize: 20),),
                   Text("See all",style: TextStyle(fontSize: 20))
                 ],
               ),
               SizedBox(height: 170,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount: 15,
                     itemBuilder: (_,index){
                   return Container(height: 200,width: 300,
                     margin: EdgeInsets.symmetric(horizontal: 5),
       
                     decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.brown,
                     image:DecorationImage(image:AssetImage("${AppCont.data[index]["Photo"]}",) ,fit: BoxFit.cover) ,
                     ),
       
                   );
                 }),
               ),
               Text("ooooo",style: TextStyle(fontSize: 20),),
       
             ],
           ),
         ),
         Container(
           margin: EdgeInsets.symmetric(horizontal: 15),
           height: 300,width: double.infinity,
           child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Tranding Right Now",style: TextStyle(fontSize: 20)),
                   Text("See all",style: TextStyle(fontSize: 20))
                 ],
               ),
               //SizedBox(height: 15,),
               SizedBox(height: 50,
                 child: ListView.builder(
                   scrollDirection: Axis.horizontal,
                     itemCount: 15,
                     itemBuilder: (_,index){
                       return Container(width: 70,
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Colors.blue,),
                           margin: EdgeInsets.only(right: 10),
                         child:Center(child: Text("${Name.data[index]}",style: TextStyle(fontSize: 10),)),
                       );
                     }),
               ),
              // SizedBox(height: 15,),
               Row(mainAxisAlignment: MainAxisAlignment.start,
       
                 children: [
                   Row(
                     children: [
                       Container(width: 100,height: 100,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.green,
                       image: DecorationImage(image: AssetImage("assets/img/arindam.jpg"),fit: BoxFit.fill)
                       ),
                       )
                     ],
                   ),
                   SizedBox(width: 20,),
                   Column(crossAxisAlignment: CrossAxisAlignment.start,
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Text("Technology \\\\\ Automotive"),
                       Text("Great Ready,Flying Car Already Tested on a Mass Scale",style: TextStyle(fontSize: 5,color: Colors.black,fontWeight: FontWeight.bold),),
                       Text("0  Natailie 6h "),
       
                     ],
                   )
                 ],
               )
             ],
           ),
         )
       
       ],
       ),
     ),
    );
  }
}
