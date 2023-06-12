import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';
import '../../exports.dart';

class DeviceNotSupportedScreen extends StatelessWidget{
  
  @override
  const DeviceNotSupportedScreen({super.key});
  
  @override
  Widget build(BuildContext context){
    return const Scaffold(
      body: Stack(
        children: [
          // Background Theme
          BackgroundTheme(),

          // Container
          ContainerBox(),

          // Logo
          LogoBanner(),

          // Warning Text
          WarningText(),

          // Close Button
          CloseButton()

        ],
      ),
    );
  }
}

class LogoBanner extends StatelessWidget{
  @override
  const LogoBanner({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.2,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.1,
        left: getWidth(context) * 0.3,
        right: getWidth(context) * 0.3
      ),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/logo/logo.png"),
          fit: BoxFit.fitHeight
        )
      ),
    );
  }
}

class WarningText extends StatelessWidget{
  @override
  const WarningText({super.key});
  
  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.4,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.4,
        left: getWidth(context) * 0.2,
        right: getWidth(context) * 0.2
      ),
      child: ListView(
        children: const [
          Text("Esta aplicación no es compatible con tu dispositivo, utiliza un dispositivo móvil o redimensiona la pantalla actual.", style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold), textAlign: TextAlign.left, )
        ],
      ),
    );
  }
}

class CloseButton extends StatelessWidget{
  @override
  const CloseButton({super.key});
  
  @override
  Widget build(BuildContext context){
    return Container(
      height: getHeight(context) * 0.05,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        top: getHeight(context) * 0.8,
        bottom: getHeight(context) * 0.05,
        left: getWidth(context) * 0.15,
        right: getWidth(context) * 0.15
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child : TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.blueAccent
          ),
          onPressed: (){
            FlutterExitApp.exitApp(iosForceExit: true);
          },
          child: const Text("Aceptar", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 35), textAlign: TextAlign.center,),
        ),
      ),
    );
  }
}