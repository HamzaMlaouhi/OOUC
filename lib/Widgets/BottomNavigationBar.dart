import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:auto_size_text/auto_size_text.dart';

class CustomerBottomNavigationBar extends StatefulWidget {
  CustomerBottomNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomerBottomNavigationBar> createState() =>
      _CustomerBottomNavigationBarState();
}

class _CustomerBottomNavigationBarState
    extends State<CustomerBottomNavigationBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return ClipRRect(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(20),
      ),
      child: Container(
        height: screenHeight * 0.10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(20),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              spreadRadius: 0,
              blurRadius: 10,
            ),
          ],
        ),
        child: Row(
          children: [
            BottomNavigationBarItem(
              0,
              'First',
            ),
            BottomNavigationBarItem(
              1,
              'Second',
            ),
            BottomNavigationBarItem(
              2,
              'Third',
            ),
          ],
        ),
      ),
    );
  }

  Expanded BottomNavigationBarItem(index, label) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            currentIndex = index;
          });
        },
        child: Container(
          color: currentIndex == index ? Colors.grey[300] : Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/Bedroom.svg',
                height: 24,
                width: 24,
                color: currentIndex == index
                    ? Colors.white
                    : Colors.black.withOpacity(0.5),
              ),
              AutoSizeText(
                label,
                maxLines: 1,
                style: TextStyle(
                  color: currentIndex == index
                      ? Colors.white
                      : Colors.black.withOpacity(0.5),
                  fontSize: 16,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
