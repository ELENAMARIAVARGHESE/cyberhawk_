import 'package:flutter/material.dart';
class third extends StatefulWidget {
  const third({Key? key}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration:const BoxDecoration(
          gradient:LinearGradient(
            begin:Alignment.topLeft,
            end:Alignment.bottomRight,
            colors:[Color(0xff13131D),Color(0xff13131D)]

          )
          
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Row(
              children: [
                Text("Add images or videos",style: TextStyle(color: Colors.white),)
              ],
            ),
            backgroundColor: Colors.black,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Container(
                  child: MaterialButton(onPressed: (){},
                  child: Column(
                    children: [
                      SizedBox(height: 55,width: 500,),
                      Icon(Icons.add_photo_alternate_outlined,color: Colors.amber,size: 35,),
                      SizedBox(height: 10,),
                      Text("Tap to add image",style: TextStyle(color: Colors.white),),
                      SizedBox(height: 55,width: 500,)
                    ],
                  ),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: MaterialButton(onPressed: (){},
                    child: Column(
                      children: [
                        SizedBox(height: 55,width: 500,),
                        Icon(Icons.video_library_outlined,color: Colors.amber,size: 35,),
                        SizedBox(height: 10,),
                        Text("Tap to add video",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 55,width: 500,),
                      ],
                    ),),
                ),
                SizedBox(height: 30,),
                Container(
                  child: MaterialButton(onPressed: (){},
                    child: Column(
                      children: [
                        SizedBox(height: 55,width: 500,),
                        Icon(Icons.volume_up,color: Colors.amber,size: 35,),
                        SizedBox(height: 10,),
                        Text("Tap to add audio",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 55,width: 500,)
                      ],
                    ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    
                    child:MaterialButton(
                      onPressed:(){},
                      color: Colors.yellow,
                      child:Row(
                        children: [
                          SizedBox(width:165),
                          Text("Next",style:TextStyle(color:Colors.black),)
                        ],

                      ),
                      
                    ),
                    
                  ),
                )
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,color:Colors.white),
      
                label: '',
                backgroundColor: Colors.black,
      
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: '',
                backgroundColor: Colors.black,
              ),
      
      
            ],
            selectedLabelStyle: TextStyle(fontSize: 0),
            selectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}