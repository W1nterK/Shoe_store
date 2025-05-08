import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CreateUser extends StatelessWidget {
  const CreateUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: Color.fromRGBO(245, 243, 243, 1), borderRadius: BorderRadius.circular(100)),
                  child: IconButton(onPressed: () => context.go('/'), icon: Icon(CupertinoIcons.back)),
                )
              ],
            ),
            SizedBox(height: 15,),
            Text(
              'Регистрация',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            Text(
              'Заполните свои данные или продолжите через социальные медиа',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: const Color.fromARGB(115, 0, 0, 0),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 48.0,
              decoration: BoxDecoration(
                color: Color.fromRGBO(245, 243, 243, 1),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: TextField(
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
            CupertinoButton(
              borderRadius: BorderRadius.circular(14),
              color: const Color.fromARGB(255, 0, 166, 243),
              onPressed: () {},
              child: Text(
                'Зарегистрироваться',
                style: TextStyle(color: CupertinoColors.white),
              ),
            ),
           ]
        ),
      ),
    );
  }
}
