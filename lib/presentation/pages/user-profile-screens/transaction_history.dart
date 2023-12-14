import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hair_haven/presentation/widgets/transaction-history/received_transaction_widget.dart';
import 'package:hair_haven/presentation/widgets/transaction-history/sent_transaction_widget.dart';

import '../../../core/theme/mycolors.dart';
class TransactionHistorty extends StatefulWidget {
  const TransactionHistorty({super.key});

  @override
  State<TransactionHistorty> createState() => _TransactionHistortyState();
}

class _TransactionHistortyState extends State<TransactionHistorty> with SingleTickerProviderStateMixin{

  bool _isSwitched=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Your Transaction", style: GoogleFonts.lora(
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: Colors.black
        ),),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
            color: MyColors.primaryColor
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 70.h,
            width: MediaQuery.sizeOf(context).width,

            child: Center(
              child: GestureDetector(
                onTapDown: (TapDownDetails details) {
                  setState(() {
                    _isSwitched = details.localPosition.dx >= 80;
                  });
                },
                child: Container(
                  width: 230,
                  height: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: MyColors.primaryColor.withOpacity(0.2),
                      border: Border.all(width: 1, color: MyColors.primaryColor)
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Center(
                              child: Text("Recieved", style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w400,
                                  fontSize:16.sp,
                                  color: MyColors.primaryColor
                              ),),
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Text("Sent", style: GoogleFonts.manrope(
                                  fontWeight: FontWeight.w400,
                                  fontSize:16.sp,
                                  color: MyColors.primaryColor
                              ),),
                            ),
                          )
                        ],
                      ),
                      AnimatedPositioned(
                        duration: Duration(milliseconds: 250),
                        left: _isSwitched ? 115 : 0,
                        child: Container(
                          width: 115,
                          height: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            color: MyColors.primaryColor,
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            _isSwitched ? 'Sent' : 'Received',
                            style: GoogleFonts.manrope(
                                fontWeight: FontWeight.w600,
                                fontSize: 16.sp,
                                color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  _isSwitched?
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SentTransaction(
                          amount:"125.4", btc: "0.012", date: "14 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                      SentTransaction(
                          amount:"145.4", btc: "0.001", date: "13 December 2023"),
                    ],
                  ):
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ReceivedTransaction(
                          amount: "132.21", btc: "0.00.1", date: "21 JUNE 2023"),
                      ReceivedTransaction(
                          amount: "232.21", btc: "0.01", date: "23 JUNE 2023"),
                      ReceivedTransaction(
                          amount: "182.2", btc: "0.01", date: "25 JUNE 2023"),
                      ReceivedTransaction(
                          amount: "162.2", btc: "0.01", date: "29 JUNE 2023"),
                      ReceivedTransaction(
                          amount: "112.2", btc: "0.012", date: "12 MAY 2023"),
                      ReceivedTransaction(
                          amount: "112.2", btc: "0.012", date: "12 MAY 2023"),
                      ReceivedTransaction(
                          amount: "112.2", btc: "0.012", date: "12 MAY 2023"),
                      ReceivedTransaction(
                          amount: "112.2", btc: "0.012", date: "12 MAY 2023"),
                      ReceivedTransaction(
                          amount: "112.2", btc: "0.012", date: "12 MAY 2023"),
                      ReceivedTransaction(
                          amount: "112.2", btc: "0.012", date: "12 MAY 2023"),
                      ReceivedTransaction(
                          amount: "112.2", btc: "0.012", date: "12 MAY 2023"),

                    ],
                  ),
                ],
              )
            ),
          )
        ],
      ),
    );
  }
}
