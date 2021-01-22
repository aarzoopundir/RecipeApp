import 'package:flutter/material.dart';
import 'package:food_app/filters_screen.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon,Function tapHandler ) {
    return ListTile(
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 150,
            width: double.infinity,
            padding: EdgeInsets.all(30),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Let\'s Cook!',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.pink),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.supervised_user_circle,
                    ),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Sign in to Unlock more recipes!',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                )
              ],
            )

          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Meals',
            Icons.restaurant,
              (){
              Navigator.of(context).pushReplacementNamed('/');
              }
          ),
          buildListTile(
            'Filters',
            Icons.settings,
              (){
              Navigator.of(context).pushReplacementNamed(FilterScreen.routeName);
              }
          ),
          Divider(
            indent: 10,
            thickness: 2,
            endIndent: 10,
          ),
          ListTile(
            leading: Icon(
              Icons.supervisor_account,
            ),
            title: Text(
              'Sign In',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.fastfood
            ),
            title: Text(
              'About Us',
              style: TextStyle(
                fontFamily: 'RobotoCondensed',
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            indent: 10,
            thickness: 2,
            endIndent: 10,
          ),
          SizedBox(
            height: 70,
          ),
          Column(

            children:[
             Text(
              'RATE OUR APP!',
              style: TextStyle(
                color: Colors.purple,
                fontSize: 30,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold
              ),
            ),
              SmoothStarRating(
                isReadOnly: false,
                size: 35,
               
              )
      ]
          )

        ],
      ),
    );
  }
}
