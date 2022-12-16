import 'package:flutter/material.dart';

class CustomProgressIndicatorWidget extends StatelessWidget {
  const CustomProgressIndicatorWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AbsorbPointer(
      absorbing: true,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          color: Colors.transparent,
          child: Container(
            height: 100,
            width: 100,
            constraints: BoxConstraints.expand(),
            child: FittedBox(
              fit: BoxFit.none,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: CircularProgressIndicator(),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Color.fromARGB(100, 105, 105, 105)),
          ),
        ),
      ),
    );
  }
}

Future myCircularProgressIndicator(context) {
  return showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.all(0),
        title: Container(
          height: 100,
          width: 100,
          constraints: BoxConstraints.expand(),
          child: FittedBox(
            fit: BoxFit.none,
            child: SizedBox(
              height: 100,
              width: 100,
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: CircularProgressIndicator(),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
            ),
          ),
          decoration: BoxDecoration(
              color: Color.fromARGB(100, 105, 105, 105)),
        ),
      );
    },
  );
}
Widget myCircularProgressIndicator2(BuildContext context,bool _isDialogLoading) {
  Future.delayed(Duration(milliseconds: 0), () {
      if (_isDialogLoading == true) {
        return showDialog<void>(
          context: context,
          barrierDismissible: false, // user must tap button!
          builder: (BuildContext ctx) {
            return AlertDialog(
              contentPadding: EdgeInsets.only(top: 10),
              content: Container(
                height: 100,
                width: 100,
                constraints: BoxConstraints.expand(),
                child: FittedBox(
                  fit: BoxFit.none,
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(25.0),
                        child: CircularProgressIndicator(),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(100, 105, 105, 105)),
              ),
            );
          },
        );
      }
  });

  return SizedBox.shrink();
}

