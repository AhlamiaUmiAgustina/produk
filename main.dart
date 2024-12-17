import 'package:flutter/material.dart';
import 'package:tokomia/helpers/user_info.dart';
import 'package:tokomia/ui/login_page.dart';
import 'package:tokomia/ui/produk_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key : key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  widget page = const CircularProgressIndicator();

  @override
  void iniState() {
    super.initState();
    isLogin();
  }

  void isLogin() async {
    var token = await UserInfo().getToken();
    if (token != null) {
      setState(() {
        page = const Produk
      });
    }
  }
}
