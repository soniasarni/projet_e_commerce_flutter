import"package:flutter/material.dart";
import"package:carousel_pro/carousel_pro.dart";
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
Widget image_carousel= new Container(
  height:160.0,
  child:Carousel(
  boxFit:BoxFit.cover,
    images: [
      AssetImage("images/im2.jpg"),
      AssetImage("images/im4.jpg"),
      AssetImage("images/im5.jpg"),
      AssetImage("images/im6.jpg"),
      AssetImage("images/im7.jpg"),
      AssetImage("images/IM9.jpg")
    ],
    autoplay:true,
  ),
);
    return Scaffold(

      appBar: AppBar(

        elevation: 0.0,
        backgroundColor: Colors.pink[900],
        title: Text('happy life'),
        actions:<Widget>[
          new IconButton(icon:Icon(Icons.search,color:Colors.white,),onPressed:(){}),
          new IconButton(icon:Icon(Icons.shopping_cart,color:Colors.white,),onPressed:(){}),
        ],
      ),
      drawer:Drawer(
        child:ListView(
         children:<Widget> [
           //header
           UserAccountsDrawerHeader(
               accountName: Text('test test'),
               accountEmail: Text("exemple@gmail.com"),
               currentAccountPicture: GestureDetector(
               child:CircleAvatar(
                 radius:30,
                 backgroundImage:AssetImage("images/prof.png"),
               ),
             ),
             decoration:BoxDecoration(color:Colors.pink[900]),
           ),
//body
         InkWell(
           onTap: (){},
           child: ListTile(
             title:Text('home page'),
             leading:Icon(Icons.home,color:Colors.pink[900]),
             trailing:Icon(Icons.arrow_right,color:Colors.pink[900]),

           ),
         ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title:Text('My account'),
               leading:Icon(Icons.account_circle_sharp,color:Colors.pink[900]),
               trailing:Icon(Icons.arrow_right,color:Colors.pink[900]),

             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title:Text('My orders'),
               leading:Icon(Icons.shopping_basket,color:Colors.pink[900]),
               trailing:Icon(Icons.arrow_right,color:Colors.pink[900]),

             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title:Text("categories"),
               leading:Icon(Icons.dashboard,color:Colors.pink[900]),
               trailing:Icon(Icons.arrow_right,color:Colors.pink[900]),

             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title:Text("Favorites"),
               leading:Icon(Icons.favorite,color:Colors.pink[900]),
               trailing:Icon(Icons.arrow_right,color:Colors.pink[900]),

             ),
           ),
           Divider(color:Colors.cyan,),
           InkWell(
             onTap: (){},
             child: ListTile(
               title:Text("setting"),
               leading:Icon(Icons.settings,color:Colors.grey,),
               trailing:Icon(Icons.arrow_right,color:Colors.grey,),

             ),
           ),
           InkWell(
             onTap: (){},
             child: ListTile(
               title:Text("about"),
               leading:Icon(Icons.help,color:Colors.grey,),
               trailing:Icon(Icons.arrow_right,color:Colors.grey,),

             ),
           ),
         ],
        )
      ),
        body:ListView(
          children: [
            image_carousel
          ],
        ) ,
    );
  }
}
