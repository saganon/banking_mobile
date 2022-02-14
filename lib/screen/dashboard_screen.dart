import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:banking_mobile/constant/icons_constant.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DashboardScreen();
}

class _DashboardScreen extends State<DashboardScreen> {
  static final _transactionHistory = [
    {
      'id': 0,
      'txnPicture': IconsConstant.shopping,
      'txnTitle': 'Shopping',
      'txnDate': '20 may 12:20',
      'amount': '- \$535.00',
      'amountFontColor': Color.fromRGBO(240, 135, 87, 1),
    },
    {
      'id': 1,
      'txnPicture': IconsConstant.txnPicture,
      'txnTitle': 'Jane Loren',
      'txnDate': '20 may 11:30',
      'amount': '+ \$832.00',
      'amountFontColor': Color.fromRGBO(79, 172, 104, 1),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(
            left: 20.w,
            right: 20.w,
            top: 16.h,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Current Balance',
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF UI Display',
                    ),
                  ),
                  Image.asset(
                    IconsConstant.notificationIcon,
                    width: 32.w,
                    height: 32.h,
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 4.h),
                child: Text(
                  '\$ 2,090.20',
                  style: TextStyle(
                    fontSize: 38.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              Container(
                height: 138.h,
                margin: EdgeInsets.only(top: 24.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Color.fromRGBO(85, 96, 180, 1),
                ),
                child: Container(
                  margin: EdgeInsets.only(
                    top: 12.h,
                    bottom: 12.h,
                    left: 28.w,
                    right: 28.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            IconsConstant.income,
                            width: 48.w,
                            height: 48.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.h),
                            child: Text(
                              '\$ 2,090.20',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                  fontFamily: 'SF UI Display',
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.h),
                            child: Text(
                              'Income',
                              style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF UI Display',
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 28.h, bottom: 28.h),
                        child: VerticalDivider(
                          width: 1,
                          color: Color.fromRGBO(255, 255, 255, 0.5),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            IconsConstant.spending,
                            width: 48.w,
                            height: 48.h,
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.h),
                            child: Text(
                              '\$ 1,290',
                              style: TextStyle(
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w600,
                                fontFamily: 'SF UI Display',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 8.h),
                            child: Text(
                              'Spending',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SF UI Display',
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24.h),
                child: Text(
                  'Your Cards',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'SF UI Display',
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 245, 250, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Image.asset(
                        IconsConstant.visa,
                        width: 65.w,
                        height: 40.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ 1,020.92',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SF UI Display',
                                color: Color.fromRGBO(33, 33, 49, 1),
                              ),
                            ),
                            Text(
                              'Visa',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'SF UI Display',
                                color: Color.fromRGBO(171, 175, 186, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            IconsConstant.next,
                            width: 28.w,
                            height: 28.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(243, 245, 250, 1),
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                ),
                child: Container(
                  margin: EdgeInsets.all(12),
                  child: Row(
                    children: [
                      Image.asset(
                        IconsConstant.mastercard,
                        width: 65.w,
                        height: 40.h,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 16.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '\$ 1,890.30',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'SF UI Display',
                                color: Color.fromRGBO(33, 33, 49, 1),
                              ),
                            ),
                            Text(
                              'MasterCard',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontFamily: 'SF UI Display',
                                color: Color.fromRGBO(171, 175, 186, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.centerRight,
                          child: Image.asset(
                            IconsConstant.next,
                            width: 28.w,
                            height: 28.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 24.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Transactions',
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF UI Display',
                        color: Color.fromRGBO(25, 25, 37, 1),
                      ),
                    ),
                    Text(
                      'View all',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: 'SF UI Display',
                        color: Color.fromRGBO(33, 33, 49, 1),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h),
                child: Text(
                  'Today',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF UI Display',
                    color: Color.fromRGBO(171, 175, 186, 1),
                  ),
                ),
              ),
              ..._transactionHistory
                  .map((e) => _renderTransactionHistoryItem(e))
                  .toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _renderTransactionHistoryItem(Map item) => Container(
        margin: EdgeInsets.only(top: 16.h),
        child: Row(
          children: [
            Container(
              width: 48.w,
              height: 48.h,
              // decoration: BoxDecoration(
              //   color: Color.fromRGBO(243, 245, 250, 1),
              //   borderRadius: BorderRadius.all(Radius.circular(10)),
              // ),
              child: Image.asset(
                item['txnPicture'],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item['txnTitle'],
                    style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'SF UI Display',
                      color: Color.fromRGBO(25, 25, 37, 1),
                    ),
                  ),
                  Text(
                    item['txnDate'],
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontFamily: 'SF UI Display',
                      color: Color.fromRGBO(171, 175, 186, 1),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  item['amount'],
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF UI Display',
                    color: item['amountFontColor'],
                  ),
                ),
              ),
            )
          ],
        ),
      );
}
