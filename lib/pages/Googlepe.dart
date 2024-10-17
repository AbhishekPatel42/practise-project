import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pay/pay.dart';

class Googlepe extends StatefulWidget {
  const Googlepe({super.key});

  @override
  State<Googlepe> createState() => _GooglepeState();
}

class _GooglepeState extends State<Googlepe> {
  final paymentItems = <PaymentItem>[];

  @override
  void initState() {
    super.initState(); // Call super.initState() first

    paymentItems.add(PaymentItem(
        amount: "0.01",
        label: "PaymentCheck",

        status: PaymentItemStatus.final_price));
  }

  @override
  Widget build(BuildContext context) {
    // Replace 'your_gpay_json_file.json' with the actual path to your gpay.json file
    //final gpayConfiguration = ;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: rootBundle.loadString('assets/gpay.json'),
                builder: (context, data) {
                  return data == null
                      ? SizedBox()
                      : Center(
                          child: GooglePayButton(
                            paymentConfiguration:
                                PaymentConfiguration.fromJsonString(
                                    data.requireData),
                            paymentItems: paymentItems,
                            onPaymentResult: (data) {
                              print("Payment Successfull");
                            },
                          ),
                        );
                }),
          )
        ],
      ),
    );
  }
}
