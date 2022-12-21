import 'package:flutter/material.dart';
import 'package:iec_group/constants/app_colors.dart';
import 'package:iec_group/constants/app_numbers.dart';
import 'package:iec_group/constants/app_text_style.dart';
// import 'package:iec_group/qr_page/qr_scanner_page.dart';

// Widget ackAlert(context, String a) {
//   Future.delayed(Duration(milliseconds: 0), () {
//     if (a != null || a.isNotEmpty) {
//       return showDialog<void>(
//         barrierDismissible: false,
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             backgroundColor: Colors.transparent,
//             contentPadding: EdgeInsets.all(0),
//             title: Center(
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: AppColors.white,
//                   borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
//                 ),
//                 width: MediaQuery.of(context).size.width / 1.1,
//                 padding: EdgeInsets.only(right: 6, left: 8, bottom: 5, top: 25),
//                 child: Column(
//                   children: [
//                     Icon(
//                       Icons.error_outline_rounded,
//                       size: 50,
//                       color: AppColors.buttonRed,
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Text(
//                       "Error",
//                       textAlign: TextAlign.center,
//                       style: kProfileTitleValue,
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Text(
//                       a,
//                       textAlign: TextAlign.center,
//                       style: kAlertDesc,
//                     ),
//                     SizedBox(
//                       height: 5,
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         TextButton(
//                           child: Text("OK",
//                               style: kProfileTitle),
//                           onPressed: () {
//                             Navigator.of(context).pop();
//                           },
//                         ),
//                       ],
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       );
//     }
//   });
// }

Future hasCheckedAckAlert(context, String a, bool checkIn) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.all(0),
        title: Center(
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.circular(AppNumbers.buttonRadius),
            ),
            width: MediaQuery.of(context).size.width / 1.1,
            padding: EdgeInsets.only(right: 6, left: 8, bottom: 5, top: 25),
            child: Column(
              children: [
                Text(
                  a,
                  textAlign: TextAlign.center,
                  style: kAlertDesc,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      child: Text(
                        'Ok',
                        style: kProfileTitle,
                      ),
                      onPressed: () {
                        Navigator.popUntil(context, (route) => route.isFirst);
                        // Navigator.pushNamed(context, QRViewPage.routeName,
                        //     arguments: checkIn);
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}

Future loggingIndicator(context) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return Center(
        child: CircularProgressIndicator(),
      );
    },
  );
}
