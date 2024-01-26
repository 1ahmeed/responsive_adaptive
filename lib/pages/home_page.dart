import 'package:adaptive_app/pages/widgets/custom_drawer.dart';
import 'package:adaptive_app/pages/widgets/home_view_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
GlobalKey<ScaffoldState> scaffoldKey=GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer:  const CustomDrawer(),
      backgroundColor: Colors.grey,
      appBar:buildAppBar(context),
      body: const HomeViewBody(),
    );
  }

  AppBar? buildAppBar(BuildContext context) {
    return MediaQuery.sizeOf(context).width-32 <900?AppBar(
      backgroundColor: Colors.black,
      leading: GestureDetector(
          onTap: (){
            scaffoldKey.currentState!.openDrawer();
          },
          child: const Icon(Icons.menu,color: Colors.white,)),
    ):null;
  }}


///solution of app bar with layout builder
// class CustomAdaptiveAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
//   const CustomAdaptiveAppBarWidget({Key? key, required this.scaffoldKey}) : super(key: key);
//
//   final GlobalKey<ScaffoldState> scaffoldKey;
//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(builder:(context, constraints) {
//
//       if (constraints.maxWidth<900) {
//         return AppBar(
//           backgroundColor: Colors.black,
//           leading: GestureDetector(
//               onTap: (){
//                 scaffoldKey.currentState!.openDrawer();
//               },
//               child: const Icon(Icons.menu,color: Colors.white,)),
//         );
//       }else{
//         return const SizedBox();
//       }
//     },
//     );
//   }
//
//   @override
//   // TODO: implement preferredSize
//   Size get preferredSize => const Size.fromHeight(56);
// }



