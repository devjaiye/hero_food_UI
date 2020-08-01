import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
       debugShowCheckedModeBanner: false,
      home: MyApp(),
  )
  );
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //appBar: AppBar( title: Text("Hero Food")),
        backgroundColor: Color(0xFF5E35B1),
        body:  ListView(
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 15.0,left: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back_ios),
                    color: Colors.white,
                    onPressed: (){},
                  ),
                  Container (
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: (){},
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25.0,),
            Padding(padding: EdgeInsets.only(left:40.0),
            child: Row(
              children: <Widget>[
                Text("Local",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sans-Serif',
                  fontWeight: FontWeight.bold,
                  fontSize: 25.0,),),
                SizedBox(width: 10.0,),
                Text("Delicacies",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Sans-Serif',
                  fontSize: 25.0,),)
              ],
            ),
            ),
            SizedBox(height: 45.0,),
            Container(
              height: MediaQuery.of(context).size.height - 185.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0))
              ),
              child: ListView(
                  primary: false,
                  padding: EdgeInsets.only(left: 25.0, right: 20.0),
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                      height:MediaQuery.of(context).size.height - 300.0 ,
                      child: ListView(
                        children: [
                          _buildFoodItem('assets/food_one.png','Pepperito rice', '\$18.00'),
                          _buildFoodItem('assets/food_two.png','Beef jollomi', '\$10.00'),
                          _buildFoodItem('assets/food_four.png','Asaro elepo', '\$21.00'),
                          _buildFoodItem('assets/food_five.png','Beans vegetable', '\$15.00'),
                        ],
                      )
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        height: 45.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0,),
                            borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.search, color: Colors.black,),
                        ),
                      ),

                      Container(
                        height: 45.0,
                        width: 40.0,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0,),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Icon(Icons.favorite, color: Colors.black,),
                        ),
                      ),

                      Container(
                        height: 45.0,
                        width: 120.0,
                        decoration: BoxDecoration(
                          color: Color(0xFF1A237E),
                           border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0,
                            ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Center(
                          child: Text( 'Checkout',
                            style: TextStyle(
                              fontFamily: 'Arial',
                              color: Colors.white,
                              fontSize: 18.0),),),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
    );
  }

  //..
Widget _buildFoodItem(String imgPath, String foodName, String price){
    return Padding(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: InkWell(
        onTap: (){

        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Row(
                children: [
                  Hero(
                    tag: imgPath,
                    child: Image(
                      image: AssetImage(imgPath),
                      fit: BoxFit.cover,
                      height: 75.0, width: 75.0,
                    ),
                  ),
                  SizedBox(width: 10.0,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Text(
                        foodName,
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      Text(
                        price,
                        style: TextStyle(
                          fontFamily: 'Arial',
                          fontSize: 15.0,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  )
                ],
              )
            ),
            IconButton(
              icon: Icon(Icons.add),
              color: Colors.black, onPressed: () {  },
            )
          ],
        ),
      ),

    );

  }

}




