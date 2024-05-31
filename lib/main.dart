

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/src/painting/edge_insets.dart';

// import 'dart:js';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home()
  ));
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ayush Singh', style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),), 
              accountEmail: Text('ayush5.230101043@iiitbh.ac.in',style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/ayush.jpeg'),
              ), 
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 34, 34, 52),
                image: DecorationImage(image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/142/751/831/landscape-anime-digital-art-fantasy-art-wallpaper-preview.jpg' ),
                fit: BoxFit.cover
                )
              ),
              
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Projects',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Projects())),
              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Skills',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Experience())),
              },
            ),
            ListTile(
              leading: Icon(Icons.handshake),
              title: Text('Hire Me',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => HireMe())),
              },
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('Download CV',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255,38,34,35),
        // title: Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     Text("Search",style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.w500, fontFamily: 'Poppins' , fontSize: 20 ),),
        //     Text("Menu",style: TextStyle(color: Colors.grey[400],fontWeight: FontWeight.w500, fontFamily: 'Poppins' , fontSize: 20),),
        //   ],
        // ),
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 8, 20, 8),
            child: Builder(
              builder: (context) {
                return IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, 
                icon: Icon(Icons.menu, color: Color.fromARGB(255, 221,198,182), size: 25,));
              }
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              color: Color.fromARGB(255,38,34,35),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage('assets/ayush.jpeg'),
                          radius: 100,
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hey there, I am Ayush Singh',
                        style: TextStyle(fontFamily: 'Poppins',color:  Color.fromARGB(255, 221,198,182) , fontSize: 22),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255,221,198,182),
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5,2,5,2),
                            child: Text(
                              'Programmer & Developer',
                              style: TextStyle(fontFamily: 'Poppins',color: Color.fromARGB(255, 38,34,35), fontSize: 15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [],
                    )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 8, 8, 2),
              child: Text('ABOUT', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontFamily: 'Poppins',fontWeight: FontWeight.w600,letterSpacing: 3 , fontSize: 25),),
            ),
            Container(
              height: 2,
              width: 50,
              color: Colors.black,
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text('Hello I am Ayush Kumar Singh\nI am a passionate flutter developer\n& also have a keen interest in UI/UX\n& also a competetive programmer' ,
                      style: TextStyle(fontFamily: 'Poppins',color: Color.fromARGB(255, 34, 34, 52), fontSize: 15),
                      ),
                      Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(child: Image.asset('assets/instagram.png'),height: 25,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(child: Image.asset('assets/linkedin.png'),height: 25,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(child: Image.asset('assets/whatsapp.png'),height: 25,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(child: Image.asset('assets/envelope-solid.png'),height: 25,),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(child: Image.asset('assets/github.png'),height: 25,),
                ),
              ],
            ),
                    ],
                  ),
                ],
              ),
            ),
  
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


//   EXPERIENCE SECTION 


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



class Experience extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ayush Singh', style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),), 
              accountEmail: Text('ayush5.230101043@iiitbh.ac.in',style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/ayush.jpeg'),
              ), 
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 34, 34, 52),
                image: DecorationImage(image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/142/751/831/landscape-anime-digital-art-fantasy-art-wallpaper-preview.jpg' ),
                fit: BoxFit.cover
                )
              ),
              
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Projects',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Projects())),
              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Skills',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Experience())),
              },
            ),
            ListTile(
              leading: Icon(Icons.handshake),
              title: Text('Hire Me',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => HireMe())),
              },
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('Download CV',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Experience())),
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text('SKILLS',style: TextStyle(color: Color.fromARGB(255, 221,198,182),fontWeight: FontWeight.w500, fontFamily: 'Poppins' , fontSize: 20 , letterSpacing: 3),)),
        backgroundColor: Color.fromARGB(255, 38,34,35),
        leading: 
        IconButton(icon: Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(255, 221,198,182),), 
        onPressed: (){
          Navigator.pop(context);
        },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 8, 20, 8),
            child: Builder(
              builder: (context) {
                return IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, 
                icon: Icon(Icons.menu, color: Color.fromARGB(255, 221,198,182), size: 25,));
              }
            ),
          ),
        ],
        
      ),
      
      body: Column(
        children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          child: Image.asset('assets/flutter.jpeg'),
                        ),
                      ),
                      Text('Flutter Developer', style: TextStyle(fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          child: Image.asset('assets/dsa.png'),
                        ),
                      ),
                      Text("Data Structures",style: TextStyle(fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.w500),)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          child: Row(
                            children: [
                              Image.asset('assets/cpp.png'),
                            ],
                          ),
                        ),
                      ),
                      Text('C++',style: TextStyle(fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.w500),)
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 80,
                          child: Image.asset('assets/javascript.webp'),
                        ),
                      ),
                      Text('JavaScript',style: TextStyle(fontFamily: 'Poppins',color: Colors.black,fontWeight: FontWeight.w500),)
                    ],
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// HIRE ME SECTION

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



class HireMe extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ayush Singh', style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),), 
              accountEmail: Text('ayush5.230101043@iiitbh.ac.in',style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/ayush.jpeg'),
              ), 
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 34, 34, 52),
                image: DecorationImage(image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/142/751/831/landscape-anime-digital-art-fantasy-art-wallpaper-preview.jpg' ),
                fit: BoxFit.cover
                )
              ),
              
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Projects',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Projects())),
              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Skills',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Experience())),
              },
            ),
            ListTile(
              leading: Icon(Icons.handshake),
              title: Text('Hire Me',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => HireMe())),
              },
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('Download CV',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Experience())),
              },
            ),
            
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text('Hire Me',style: TextStyle(color: Color.fromARGB(255, 221,198,182),fontWeight: FontWeight.w500, fontFamily: 'Poppins' , fontSize: 20 , letterSpacing: 3),)),
        backgroundColor: Color.fromARGB(255, 38,34,35),
        leading: 
        IconButton(icon: Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(255, 221,198,182),), 
        onPressed: (){
          Navigator.pop(context);
        },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 8, 20, 8),
            child: Builder(
              builder: (context) {
                return IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, 
                icon: Icon(Icons.menu, color: Color.fromARGB(255, 221,198,182), size: 25,));
              }
            ),
          ),
        ],
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


// PROJECTS SECTION


///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


class Projects extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Ayush Singh', style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),), 
              accountEmail: Text('ayush5.230101043@iiitbh.ac.in',style: TextStyle(color: Colors.white, fontFamily: 'Poppins'),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/ayush.jpeg'),
              ), 
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 34, 34, 52),
                image: DecorationImage(image: NetworkImage('https://c4.wallpaperflare.com/wallpaper/142/751/831/landscape-anime-digital-art-fantasy-art-wallpaper-preview.jpg' ),
                fit: BoxFit.cover
                )
              ),
              
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Home())),
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Projects',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Projects())),
              },
            ),
            ListTile(
              leading: Icon(Icons.explore),
              title: Text('Skills',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Experience())),
              },
            ),
            ListTile(
              leading: Icon(Icons.handshake),
              title: Text('Hire Me',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => HireMe())),
              },
            ),
            ListTile(
              leading: Icon(Icons.download),
              title: Text('Download CV',style: TextStyle(color: Colors.black,fontFamily: 'Popping',fontWeight: FontWeight.w500),),
              onTap: ()=>{
                Navigator.push(context, MaterialPageRoute(builder: (context) => Experience())),
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Center(child: Text('Projects',style: TextStyle(color: Color.fromARGB(255, 221,198,182),fontWeight: FontWeight.w500, fontFamily: 'Poppins' , fontSize: 20 , letterSpacing: 3),)),
        backgroundColor: Color.fromARGB(255, 38,34,35),
        leading: 
        IconButton(icon: Icon(Icons.arrow_back_ios_new, color: Color.fromARGB(255, 221,198,182),), 
        onPressed: (){
          Navigator.pop(context);
        },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 8, 20, 8),
            child: Builder(
              builder: (context) {
                return IconButton(onPressed: (){
                  Scaffold.of(context).openDrawer();
                }, 
                icon: Icon(Icons.menu, color: Color.fromARGB(255, 221,198,182), size: 25,));
              }
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 68, 68, 68),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(4,4),
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/bookmyshow.jpg', 
                      fit: BoxFit.cover
                      ),
                    ),

                ),
                height: 200,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Book My Show Clone',style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 15),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 38,34,35),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 68, 68, 68),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(4,4),
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: 
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/netflix.png', 
                      fit: BoxFit.cover
                      ),
                    ),
                ),
                height: 200,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Netflix Clone',style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 15),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 68, 68, 68),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(4,4),
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset('assets/ultraedit.jpg', 
                      fit: BoxFit.cover
                      ),
                    ),

                ),
                height: 200,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('UltraEdit Clone',style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 15),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 0, 0, 0),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 68, 68, 68),
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(4,4),
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(4, 4, 4, 4),
                  child: 
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(4,4),
                                  )
                                ]
                              ),
                              child: Image.asset('assets/app1.jpg',
                              fit: BoxFit.cover, 
                              width: 80,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(4,4),
                                  )
                                ]
                              ),
                              child: Image.asset('assets/app2.jpg',
                              fit: BoxFit.cover, 
                              width: 80,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    blurRadius: 10,
                                    spreadRadius: 2,
                                    offset: Offset(4,4),
                                  )
                                ]
                              ),
                              child: Image.asset('assets/app3.jpg',
                              fit: BoxFit.cover, 
                              width: 80,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ),
                height: 200,
                width: 340,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Portfolio App',style: TextStyle(color: Colors.black,fontFamily: 'Poppins',fontSize: 15),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                color: Color.fromARGB(255, 221,198,182),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
