

import 'package:flutter/material.dart';
import 'package:product_detail_screen/constants.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:product_detail_screen/style.dart';

class Product_Detail extends StatelessWidget {
  const Product_Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
        backgroundColor: kbgColor,
        body: SingleChildScrollView( 
          child: Column(children:  [ const
           ImageSlideshow( 
              height: 200,  
              indicatorColor: Colors.white,
              isLoop: true, 
                children: [
            Image(image: AssetImage('images/Lgledtv1.jpg',),fit: BoxFit.fill,) , 
            Image(image: AssetImage('images/Lgledtv2.jpg',),fit: BoxFit.fill,) , 
            Image(image: AssetImage('images/Lgledtv3.jpg',),fit: BoxFit.fill,) , 
            Image(image: AssetImage('images/Lgledtv4.jpg',),fit: BoxFit.fill,) , 
            Image(image: AssetImage('images/Lgledtv5.jpg',),fit: BoxFit.fill,) ,  
          
            ]
            ),
            Padding(
              padding: const EdgeInsets.all(16.0), 
              child: Column(
                children: [
                   Row(
                   
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                      Text('LG HD LED TV 2021',style: kHeadStyle,),
                      Text('₹34,000',style: kHeadStyle,),    
                    ],
                    ),
                    SizedBox(
                      height: 10, 
                    ),
                    Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ 
                  Text('WebOS',style: kHeadStyle,),
                  Text('Target Price ₹29,000',style: kTpricestyle,), 
                  
                       
                ],
                ),
                
                  
                ],
              ),
            ), 
            
          divider,
          Padding(
            padding: const EdgeInsets.fromLTRB(65,0,100,0), 
            child: Row(
                         
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [ 
                        Text('Size',style: kLabelstyle,),
                        Text('Warranty',style: kLabelstyle,),       
                      ],
                      ),
          ),
            Padding(
              padding: EdgeInsets.fromLTRB(50,0,105,0),       
              child: Column(
                  children: [
                    
                    Row(
                         
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [ 
                Text('49 inch',style: kHeadStyle,), 
                Text('Yes',style: kHeadStyle,),       
              ],
              ),
              
          
          
                  ],
                ),
              ),
              divider, 
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20), 
                child: Row(
                  
                  children: [
                    Text("Description",
                    style: kHeadStyle,),
                    
                   
                  ],
                ),
              ) ,
              SizedBox(height: 7,),
              Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child:  Container(
                      height: 100,
                      width: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(Sample,
                        style: TextStyle(color: kLabelcolor), 
                        
                        
                        ),
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(color: kLabelcolor),
                        borderRadius: BorderRadius.all(Radius.circular(10)), 
                       ),
                    ), 
              
              ),
              Padding(padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  RequiredBid(labelText: 'Required Credits to Register BID',bid: '200',),
                  SizedBox(height: 10,), 
                  RequiredBid(labelText: 'Your Remaning Credits',bid: '300',),  
                ],
              ),
              ),
              Padding(padding: EdgeInsets.only(left: 20,right: 20),
              child: TextButton(
                onPressed: (){},
                child: Container(
                  height: 50,  
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),  
                gradient: LinearGradient(
                   begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xfff7e4a3),   
                    Color(0xffc07e00),
                  ],
                )
                        ),
                        child: Center(
                child: Text("REGISTER BID",style: kButtonStyle,),
                        )
                 ),
              ),
              )
          
            
            
            
          
          ],),
        ),
      )
      );
    
  }
}

class RequiredBid extends StatelessWidget {
   RequiredBid({required this.labelText,required this.bid});
  String labelText;
  String bid;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, 
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(10)),
        
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, 
      
        children: [
          Text(labelText,style: kLabelstyle,),
          SizedBox(height: 5,), 
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.diamond,color: Colors.blue,),
               Text(bid,style: kCreditstyle,)  
            ],
          ),
         

        ],
      ),
    );
  }
}
