import 'package:flutter/material.dart';

class CheckOut extends StatefulWidget {
  const CheckOut({super.key});

  @override
  State<CheckOut> createState() => _CheckOutState();
}

class _CheckOutState extends State<CheckOut> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
        
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Column(
              children: <Widget>[
            Row(
              children: [
                Text(
                  "Chờ lấy hàng",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,fontFamily: AutofillHints.addressCity),
                ),
                Spacer(),
                Text(
                  "Đang giao",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,fontFamily: AutofillHints.addressCity),
                ),
                Spacer(),
                Text(
                  "Đã giao",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,fontFamily: AutofillHints.addressCity),
                ),
                Spacer(),
                Text(
                  "Đã hủy",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,fontFamily: AutofillHints.addressCity),
                ),
              ],
            ),
              ],
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
                itemCount: 12,
                shrinkWrap: true,
              itemBuilder: (context, index){
                return Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.only(top: 15, ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: const [  
                 BoxShadow(color: Color.fromARGB(255, 208, 207, 207), offset:  Offset(0.0, 3.0),),  
              ],  
                ),
              
                  child: const Column(
                    
                    children:<Widget>[
                      
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Hoa hồng nữ hoàng",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,fontFamily: AutofillHints.addressCity),
                                    
                            ),
                            Spacer(),
                            Text(
                              "Hoàn thành",
                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.green,fontFamily: AutofillHints.addressCity),
                                    
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Text(
                            "23/5/2023 2:05:05 pm",
                            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,fontFamily: AutofillHints.addressCity),
                
                          ),
                          Spacer(),
                          Text(
                            "31.06\$",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,fontFamily: AutofillHints.addressCity),
                
                          ),
                        ],
                      ),
            
                      
                    ],
            
                    
                  ),
               
               );
              },
              
            )
             
          ],
        ),
      ),
    );
  }
}
