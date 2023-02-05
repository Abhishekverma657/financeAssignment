//  import 'dart:js_util';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class SCreeen1 extends StatefulWidget {
  const SCreeen1({super.key});

  @override
  State<SCreeen1> createState() => _SCreeen1State();
}

class _SCreeen1State extends State<SCreeen1> {
   List<SalesData> data=[
     SalesData("1",13),
      SalesData("2",25),
       SalesData("3",15),
        SalesData("4",35),
         SalesData("5",25),
          SalesData("6",5),
           SalesData("7",13),
            SalesData("8",15),


   ];
    int age=1000;
     int year=1;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.transparent,
         title: Text("Polygon"),
        actions: [Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CircleAvatar(
             backgroundColor: Color.fromARGB(255, 63, 62, 62),
            child: Icon(Icons.bookmark_border_rounded)),
        )]),
       backgroundColor: Color.fromARGB(255, 42, 41, 41),
        body:   SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(children: [
            
                 Container(
                   height: 80,
                    color: Color.fromARGB(255, 42, 38, 38),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                 
                                     children:
                   [
                     CircleAvatar(backgroundColor: Colors.purple,
                      
                     child: Icon(Icons.monetization_on_rounded),),
                       Padding(
                         padding: const EdgeInsets.only(right: 130, top:20),
                         child: Column(
                                     
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("94749.0",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 15)),
                            Text("Matic" , style: TextStyle(color: Colors.blue),),
                            
                          ],
                         ),
                       ),
                         Container(
                             height: 25,
                             width: 90,
                           decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(7)
                           ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 1),
                              child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                Text("Discuss"),
                                 Icon(Icons.arrow_right)
                              ],),
                            ),
                           )
                   
                            
                            ],),
                 ),
                   Container(
                    //  width: 500,
                      height: 500,
                      // height: double.infinity,
                     child: 
                     SfCartesianChart( 
                      //  plotAreaBorderColor: Colors.amber,
                       
                       
                      primaryXAxis: CategoryAxis(),
                      //  title: ChartTitle(text: "Half year sales"),
                        legend: Legend(isVisible: false),
                         
                      
                         tooltipBehavior: TooltipBehavior(enable: true),
                          series: <ChartSeries<SalesData,String>>[
                             LineSeries<SalesData,String>(
                               color: Colors.green,
                               dataSource: data,
                               
                               xValueMapper: (SalesData sales ,_)=>sales.month,
                                yValueMapper: (SalesData salse ,_)=>salse.sales,
                                // name: "Sales",
                                dataLabelSettings: DataLabelSettings(isVisible: false)
                               
                             )
                  
                          ],
                  
                     ),
                   ),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 
                 children: [
                   Container(
                  color: Color.fromARGB(255, 16, 15, 15),
                      height: 30,
                       width: 300,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
          
                       children: [
                        Text("1H", style:  TextStyle(color: Colors.white),),
                          Text("1D", style:  TextStyle(color: Colors.white),),
                            Text("1W", style:  TextStyle(color: Colors.white),),
                              Text("1M", style:  TextStyle(color: Colors.white),),
                                Text("5Y", style:  TextStyle(color: Colors.white),),
                                
                       ],
                     ),
                   ),
                    Container(
                       width: 50, height: 30,
                         color: Color.fromARGB(255, 16, 15, 15),
                          child: Icon(Icons.line_style,color: Color.fromARGB(157, 247, 95, 53),),
                       
                    ),
                  
                 ],
               ),
                SizedBox(height: 10,),
                Container(
                   height: 150,
                    width: double.infinity,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color:  Color.fromARGB(255, 16, 15, 15),
                       
                     ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row( 
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              Text("Analyst Rating " , style: TextStyle( fontWeight: FontWeight.bold, fontSize: 20 , color: Colors.white),),
                               Icon(Icons.star_half, color: Colors.blueAccent,)
                        
                             ],
                          ),
                        ),
                      
                         Row( 
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Container(
                               height: 40,
                                width: 150,
                                 decoration: BoxDecoration(color:  Colors.blue, 
                                 borderRadius: BorderRadius.circular(20)),
                                  child: Center(child: Text("BUY"  ,style: TextStyle( color: Colors.white, fontWeight: FontWeight.bold),)),
                             ),
                               Container(
                               height: 40,
                                width: 150,
                                 decoration: BoxDecoration(color:  Colors.white, 
                                 borderRadius: BorderRadius.circular(20)),
                                   child: Center(child: Text("SALE"  ,style: TextStyle( fontWeight: FontWeight.bold),))
                             ),
                           ],
                         ),
                          SizedBox(height: 8,),
                      
                      
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Column(
                               children: [
                                 Text("Strong " ,style: TextStyle(color: Colors.grey),),
                                   Text("Buy " ,style: TextStyle(color: Colors.grey),),

                               ],
                             ),
                              Text("Buy",style: TextStyle(color: Colors.grey),),
                               Text("Hold",style: TextStyle(color: Colors.grey),),
                                Text("Sale",style: TextStyle(color: Colors.grey),),
                                 Column(
                                   children: [
                                     Text("Strong",style: TextStyle(color: Colors.grey),),
                                       Text("sale" ,style: TextStyle(color: Colors.grey),),
                                   ],
                                 ),



                           ],
                         )

                      ]),
                     
                ),
               SizedBox(height: 20,),
                Container(
                 height: 100,
                    width: double.infinity,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color:  Color.fromARGB(255, 16, 15, 15),),
                    
                    child: Column(children: [ 
                       Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                            Text("Your Portfolio Exposure", style: TextStyle(color: Colors.amber, fontSize: 18),),
                             Text("₹ 14,90,334", style: TextStyle(color: Colors.white, fontSize: 18),),
                       
                           ],
                         ),
                         
                       ),
                        Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Column(
                            children: [
                              Text("Invested" , style: TextStyle(color: Colors.grey  ),),
                                Text("₹6483" , style: TextStyle(color: Colors.grey  ),),
                            ],
                          ),
                           Column(
                             children: [
                               Text("Invested", style: TextStyle(color: Colors.grey  ),),
                                 Text("1.5", style: TextStyle(color: Colors.grey  ),),
                               
                             ],
                           ),
                            Column(
                              children: [
                                Text("Broker", style: TextStyle(color: Colors.grey  ),),
                                 Icon(Icons.join_right , color: Colors.grey,)
                              ],
                            ),
                        ],)
                  ]),
                ),
                 SizedBox(height: 50,),
                 
               Stack(
                alignment: Alignment.topCenter,
                children: [

                 Container(
                   height: 30, decoration: BoxDecoration(
                     color: Colors.white,
                    borderRadius: BorderRadius.only(bottomLeft: Radius.elliptical(80, 90),bottomRight: Radius.elliptical(80, 90)) ),),
                       Container(
                    height: 20,
                     width: 130,
                     color: Color.fromARGB(255, 118, 117, 117),
                      child: Text("Historical Yeald"),
                   ),
                  
               
                 
                     
             
                 
                             
                ],
               ),
                  SizedBox(height: 20,),
                  Container(
                   height: 270,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color:  Color.fromARGB(255, 16, 15, 15),),
                       child: Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("If You Would have invested", style: TextStyle(color: Colors.grey),),
                              Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                   Text("\$  "+age.toString() ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  Slider(
                                    
                                      value: age.toDouble(),
                                    onChanged: (value) {
                                      setState(() {
                                   age = value.toInt();
                                     });
                                     },
                                       min: 1000,
                                      max: 1000000,
                             ),
                                ],
                              ),
                              Text("For Experience", style: TextStyle(color: Colors.grey),),
                              Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceAround,

                                children: [
                                   Text(year.toString()+"  Year" ,style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                                  Slider(
                                    
                                      value: year.toDouble(),
                                    onChanged: (value) {
                                      setState(() {
                                   year = value.toInt();
                                     });
                                     },
                                       min: 1,
                                      max: 150,
                             ),
                                ],
                              ),
                               Text("You would have", style: TextStyle(color: Colors.grey)),
                                SizedBox(height: 6,),
                                Row(
                                  children: [
                                    Text("\$1120.78", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 25)),
                                    Text("8428.242 MATIC", style: TextStyle(color: Colors.blue,fontSize: 12))
                                  ],
                                ),
                                 SizedBox(height: 6,),
                                 Container(
                                   height: 30,
                                    width: double.infinity,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color:  Color.fromARGB(255, 37, 36, 36),),
                                   
                                   child: Row(
                                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                       Container(
                                         width: 60,
                                          height: 20,
                                         
                                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Color.fromARGB(255, 8, 92, 161),),
                                         child: Row(
                                           children: [
                                            Icon(Icons.monetization_on ,color: Colors.white,size: 15,),
                                             Text("matic", style: TextStyle(color: Colors.white)),
                                           ],
                                         ),
                                       ),
                                        Row(
                                         children: [
                                          Icon(Icons.monetization_on ,color: Colors.white,size: 15,),
                                           Text("BTC", style: TextStyle(color: Color.fromARGB(255, 123, 122, 122))),
                                         ],
                                       ),
                                        Row(
                                         children: [
                                          Icon(Icons.monetization_on ,color: Colors.white,size: 15,),
                                           Text("ETH", style: TextStyle(color: Color.fromARGB(255, 123, 122, 122))),
                                         ],
                                       ),
                                 
                                    ],
                                   ),
                                 )
                          ],
                       
                         ),
                       ),
                     ),
                      SizedBox(height: 25,),
                      Container(
                         height: 700,
                          width: double.infinity,
                           decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color:  Color.fromARGB(255, 16, 15, 15),),
                       child: Padding(
                         padding: const EdgeInsets.all(20.0),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            
                           Text("About Matic",style: TextStyle(color: Colors.blue,fontSize: 20),),
                             SizedBox(height: 15,),
                            Row( 
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                Text("Market Cap", style: TextStyle(color: Colors.grey),),
                                 Text("875859Cr", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold , fontSize: 17),)
                               ],
                            ),
                       Divider(thickness: 1,color: Color.fromARGB(255, 111, 111, 111),),
                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                Text("Revenu", style: TextStyle(color: Colors.grey),),
                                 Row(
                                   children: [
                                     Container(
                                      height: 18,width: 50,
                                       decoration: BoxDecoration(
                                        color: Colors.red,
                                         borderRadius: BorderRadius.circular(10)
                                       ),
                                        child: Center(child: Text("-50.2%")),
                                     ),
                                      SizedBox(width: 6,),
                                     Text("84535.359Cr", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold , fontSize: 17)),
                                   ],
                                 )
                               ],
                            ),
                         Divider(thickness: 1,color: Color.fromARGB(255, 111, 111, 111),),
                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                Text("P/E ratio", style: TextStyle(color: Colors.grey),),
                                 Text("8758.59Cr", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold , fontSize: 17))
                               ],
                            ),
                             Divider(thickness: 1,color: Color.fromARGB(255, 111, 111, 111),),
                            //  SizedBox(height: 5,),
                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                Text("profit", style: TextStyle(color: Colors.grey),),
                                 Row(
                                   children: [
                                     Container(
                                      height: 18,width: 50,
                                       decoration: BoxDecoration(
                                        color: Colors.red,
                                         borderRadius: BorderRadius.circular(10)
                                       ),
                                        child: Center(child: Text("-80.2%")),
                                     ),
                                        SizedBox(width: 6,),

                                     Text("8758.59Cr", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold , fontSize: 17)),
                                   ],
                                 )
                               ],
                            ),
                         Divider(thickness: 1,color: Color.fromARGB(255, 111, 111, 111),),
                             Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                Text("Divident Yield", style: TextStyle(color: Colors.grey),),
                                 Text("8758.59Cr", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold , fontSize: 17))
                               ],
                            ),
                              Divider(thickness: 1,color: Color.fromARGB(255, 111, 111, 111),),
                               SizedBox(height: 15,),
                              Text("Technical  indicators",style: TextStyle(color: Colors.blue,fontSize: 20),),
                             SizedBox(height: 25,),
                         
                              Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Comulative market segment" ,style: TextStyle(color: Colors.white,fontSize: 17), ),
                                   Text("674", style: TextStyle(color: Colors.green, fontSize: 20),)
                                ],
                              ),
                               SizedBox(height: 4,),
                               Text("Market sentiment, also known as investor attention, is the general prevailing attitude of investors as to anticipated price development in a market",style: TextStyle(color: Colors.grey)),
                                 SizedBox(height: 7,),
                                Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Relative Strength Index(RSI)" ,style: TextStyle(color: Colors.white,fontSize: 17), ),
                                   Text("37.88", style: TextStyle(color: Colors.green, fontSize: 20),)
                                ],
                              ),
                              SizedBox(height: 4,),
                               Text("The relative strength index (RSI) measures the price momentum of a stock or other security.",
                                style: TextStyle(color: Colors.grey),
                               ),
                               SizedBox(height: 7,),
                                Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Volatility" ,style: TextStyle(color: Colors.white,fontSize: 17), ),
                                   Text("0.54", style: TextStyle(color: Colors.green, fontSize: 20),)
                                ],
                              ),
                               SizedBox(height: 4,),
                               Text("It is a rate at which the price of a security increases or decreases for a given set of returns",
                                style: TextStyle(color: Colors.grey),
                               ),
                               SizedBox(height: 7,),


                         ]),
                       ),
                      )
            
                  
            ]),
          ),
        ),
    );
     
  }
   
}
 class SalesData{
  late final String month;
   late final double sales;
  
    SalesData(this.month ,this.sales);

 }