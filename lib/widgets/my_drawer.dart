import 'package:flutter/material.dart';
import 'package:uber_rider_app/mainScreens/trips_history_screen.dart';

import '../global/global.dart';
import '../mainScreens/about_screen.dart';
import '../mainScreens/profile_screen.dart';
import '../splashScreen/splash_screen.dart';


class MyDrawer extends StatelessWidget
{
  final String? name;
  final String? email;

  const MyDrawer({super.key, this.name, this.email});

  @override
  Widget build(BuildContext context)
  {
    return Drawer(
      child: ListView(
        children: [
          //drawer header
          Container(
            height: 165,
            color: Colors.grey,
            child: DrawerHeader(
              decoration: const BoxDecoration(color: Colors.black),
              child: Row(
                children: [
                  const Icon(
                    Icons.person,
                    size: 80,
                    color: Colors.grey,
                  ),


                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        name.toString(),
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Text(
                        email.toString(),
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          const  SizedBox(height: 12.0,),

          //drawer body
          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (c)=> TripsHistoryScreen()));
            },
            child: const ListTile(
              leading: Icon(Icons.history, color: Colors.white54,),
              title: Text(
                "History",
                style: TextStyle(
                  color: Colors.white54
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (c)=> ProfileScreen()));
            },
            child: const ListTile(
              leading: Icon(Icons.person, color: Colors.white54,),
              title: Text(
                "Visit Profile",
                style: TextStyle(
                    color: Colors.white54
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              Navigator.push(context, MaterialPageRoute(builder: (c)=> AboutScreen()));
            },
            child: const ListTile(
              leading: Icon(Icons.info, color: Colors.white54,),
              title: Text(
                "About",
                style: TextStyle(
                    color: Colors.white54
                ),
              ),
            ),
          ),

          GestureDetector(
            onTap: ()
            {
              fAuth.signOut();
              Navigator.push(context, MaterialPageRoute(builder: (c)=> const MySplashScreen()));
            },
            child: const ListTile(
              leading: Icon(Icons.logout, color: Colors.white54,),
              title: Text(
                "Sign Out",
                style: TextStyle(
                    color: Colors.white54
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
