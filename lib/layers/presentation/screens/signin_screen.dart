import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:matule/core/brand_colors.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  

      // class SigninScreen extends StatelessWidget {
      // SigninScreen({super.key});

      //   bool IsHidden = true;

      //   @override
      //   State<SigninScreen> createState() => _SigninScreenState();

      //   }

      //   @override
      //   class _SigninScreenState extends State<SigninScreen> {
      // Widget build(BuildContext context) {
      //   return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 243, 243, 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: IconButton(
                    onPressed: () { Locale currentLocale = context.locale; Locale newLocale = currentLocale.languageCode == 'en' ? Locale('ru') : Locale('en'); },
                    icon: Icon(CupertinoIcons.globe),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              context.tr('welcome'),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              context.tr('fill_your_details'),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(115, 0, 0, 0),
              ),
            ),
            SizedBox(height: 60),
            Text(
              context.tr('email'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color.fromRGBO(43, 43, 43, 1),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(247, 247, 249, 1),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: TextField(
                autofocus: true,
                decoration: InputDecoration(
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(106, 106, 106, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              context.tr('password'),
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
                color: Color.fromRGBO(43, 43, 43, 1),
              ),
              textAlign: TextAlign.left,
            ),
            SizedBox(height: 12.0),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: BrandColors.background,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(CupertinoIcons.eye),
                  labelStyle: TextStyle(
                    color: Color.fromRGBO(106, 106, 106, 1),
                    fontWeight: FontWeight.w500,
                    fontSize: 14.0,
                  ),
                  filled: true,
                  fillColor: Colors.transparent,
                  disabledBorder: InputBorder.none,
                  border: InputBorder.none,
                ),
              ),
            ),

            // GestureDetector(onTap: () {
            //  setState(() {
            //   widget.IsHidden = ! widget.IsHidden;
            //  });
            //  },
            //  child: Icon(widget.IsHidden ? CupertinoIcons.eye : CupertinoIcons.eye_slash),),
            GestureDetector(
              onTap: () => context.go('/pass'),
              child: Text(
                context.tr('forgot_password'),
                style: TextStyle(
                  fontSize: 15,
                  color: const Color.fromARGB(136, 0, 0, 0),
                ),
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              borderRadius: BorderRadius.circular(14),
              color: BrandColors.accent,
              // onPressed: () => context.push('/'),
              onPressed: () => context.setLocale(Locale('en')),
              child: Text(
                context.tr('sign_in'),
                style: TextStyle(color: BrandColors.subTextLight),
              ),
            ),

            Expanded(
              child: Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        context.tr('new_user'),
                        style: TextStyle(
                          color: const Color.fromARGB(136, 0, 0, 0),
                        ),
                      ),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () => context.push('/create'),
                        child: Text(context.tr('create_account')),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
