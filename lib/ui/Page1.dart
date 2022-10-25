import 'package:flutter/material.dart';
import 'Page2.dart';

class PageOne extends StatefulWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:Container(
          decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xff3A3A4D), Color(0xff13131D)]
          )
        ),
        child:  Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation:0,
            title:const Text('CYBER HAWK',style: TextStyle(color:Colors.white),)

          ),
          drawer: const Drawer(

          ),
          body: SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                const SizedBox(height:35,),
                const Text('We handle your\nReportings.',style:TextStyle(color:Colors.white,fontSize: 35),),
                const SizedBox(height:35,),
                Center(
                  child: SizedBox(
                    width:MediaQuery.of(context).size.width * (0.9),
                    height:MediaQuery.of(context).size.height * 0.07,
                    child: MaterialButton(
                    onPressed:(){
                      Navigator.push(context,MaterialPageRoute(builder: (context) =>third()));
                    },
                    color: const Color(0xffFFB11F),
                    child:const Text(
                      'REPORT CRIME',
                      style: TextStyle(
                      fontSize: 17.5,
                    ),
                    )
                    ),
                  ),
                ),
                const SizedBox(height:35,),
                const Text('Recommended',
                style: TextStyle(color:Colors.white,),),
                const SizedBox(height:35,),
                Row(
                  children: [
                    // ignore: avoid_unnecessary_containers
                    Container(
                                decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              colors: [Color(0xff3A3A4D), Color.fromARGB(255, 31, 31, 41)]
          )
        ),
                        height: MediaQuery.of(context).size.height * 0.17,
                        width:MediaQuery.of(context).size.width * 0.29,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                        Image.asset('assets/report.jpg'),
                        SizedBox(
                          height:MediaQuery.of(context).size.height *0.020,

                        ),
                        const Text('Reports',style:TextStyle(
                          color: Colors.white,
                          fontWeight:FontWeight.bold,
                        )
                        ),

                        ],
                      ), 
            
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              colors: [
                                Color(0xff3A3A4D),
                                Color.fromARGB(255, 31, 31, 41),
                                ]
                               )
                               ),
                     height: MediaQuery.of(context).size.height * 0.17,
                     width:MediaQuery.of(context).size.width * 0.29,
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Image.asset('assets/smartphone.jpg'),
                        SizedBox(
                          height:MediaQuery.of(context).size.height *0.020,
                        ),
                        const Text('Digital Guide',
                        style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,),),

                        ],
                      ),
                      
                    ),
                    // ignore: avoid_unnecessary_containers
                    Container(
                      decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              colors: [Color(0xff3A3A4D), Color.fromARGB(255, 31, 31, 41)]
          )
        ),
                       height: MediaQuery.of(context).size.height * 0.17,
                       width:MediaQuery.of(context).size.width * 0.29,
                        child:Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Image.asset('assets/dataanalytics.jpg'),
                        SizedBox(height:MediaQuery.of(context).size.height * 0.020,
                        ),
                        const Text('My Analytics',
                        style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,),),

                        ],
                      ),
                     
                    ),
                  ],
                ),
                const SizedBox(height:35,),
                const Text('Recent Reports',
                style: TextStyle(color:Colors.white,),),
                const SizedBox(height:35,),
              
              ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (BuildContext context, int index){
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Container(
                          height:50,
                          width:50,
                          child:ClipRRect(
                            borderRadius:BorderRadius.circular(30),
                            child:Image.asset('assets/parrot.jpg',
                            height:56,
                            width:56,
                            ),
                            )
                          
                        ),
                         // ignore: prefer_const_constructors
                         SizedBox(
                             width: 10,
                            ),
                            // ignore: avoid_unnecessary_containers
                            Container(
                              child:Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(3),
                                       color: const Color(0xff5EBC74)
                                       ),
                                       child: const Text(
                                           " Online Reporting ",
                                             style: TextStyle(
                                              color: Colors.white,
                                             fontSize: 10,
                                             ),
                                            maxLines: 2,
                                            ),
                          
                                    ),
                                    const SizedBox(
                                          width: 14,
                                        ),
                                    Container(
                                   child: const Text(" Instagram ",
                                      style: TextStyle(
                                      fontSize: 10,
                                      color:Colors.white,)),
                                      decoration: BoxDecoration(
                                      border: Border.all(
                                      color: Color(0xff848484)),
                                       borderRadius:
                                    BorderRadius.circular(5)))

                                  ],
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  ),
                                  const Text(
                  "Lorem Ipsum is simply dummy text of the prin…",
                  style:
                      TextStyle(fontSize: 12,color:Colors.white,),
                ),
                const Text(
                    "https://in.images.search.yahoo.com/yhs/search",
                    style: TextStyle(
                        fontSize: 12,color:Colors.white, ))

                              ],)
                            ),
                      ],
                    ),
                  );
                }
                )
                ],
              
              ),
              
            ),

          ),



        ),

    ),
    );
    
  }
}