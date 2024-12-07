import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:knowknowgram_app/theme/colors.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{

  CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: mediumBlack,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      title: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              Get.offAllNamed('/home');
            },
            child: Text('KNOWKNOWGRAM',
                style: GoogleFonts.modak().copyWith(
                  color: mainMintText,
                  fontSize: 30.0,
                )),
          ),
          const Icon(
            Icons.logout,
            color: Colors.white,
          )
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);

}
