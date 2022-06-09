import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:qalbu/model/menu_data.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    final double itemHeight = (size.height - kToolbarHeight) / 2.5;
    final double itemWidth = size.width / 2;

    return GridView.count(
      primary: false,
      shrinkWrap: true,
      crossAxisCount: 4,
      crossAxisSpacing: 12,
      childAspectRatio: (itemWidth / itemHeight),
      children: menuData.map((menu) {
        return InkWell(
          onTap: () {},
          child: SizedBox(
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    menu.image,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Text(
                      menu.title,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
