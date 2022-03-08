import 'package:app/home_page.dart';
import 'package:app/widget/navigationPanel/basket.dart';
import 'package:app/widget/navigationPanel/favorite.dart';
import 'package:app/widget/navigationPanel/profile.dart';
import 'package:flutter/material.dart';
import 'package:app/widget/test_page.dart';

class NavigationPanel extends StatelessWidget {
  const NavigationPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: const Color.fromRGBO(43, 42, 51, 1),
        child: ListView(
          children: <Widget>[
            Image.asset("asset/image/logo.png", width: 100, height: 100,),
            // const SizedBox(height: 48),
            const Divider(height: 16),
            
            buildMenuItem(icon: Icons.home_rounded, colorIcon: Colors.white, text: "Главная", onClicked: () => selectItem(context, 0)),
            buildMenuItem(icon: Icons.favorite,colorIcon: Colors.red, text: "Избранное", onClicked: () => selectItem(context, 1)),
            buildMenuItem(icon: Icons.shopping_bag_rounded,colorIcon: Colors.brown[200],text: "Корзина", onClicked: () => selectItem(context, 2)),
            buildMenuItem(icon: Icons.account_circle_rounded,colorIcon: Colors.blue,text: "Мой профиль", onClicked: () => selectItem(context, 3)),
            
            
          ],
        ),
      ),
    );
  }

 void selectItem(BuildContext context, int index){
      // Navigator.of(context).pop();
     switch (index) {

      case 0:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const MainPage()));
        break;

      case 1:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Favorite()));
        break;

      case 2:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Basket()));
        break;

      case 3:
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Profile()));
        break;

       default: Navigator.of(context).push(MaterialPageRoute(builder: (context) => const TestPage()));
      }

 }

Widget buildMenuItem({
  required String text,
  Color ?colorIcon,
  IconData? icon,
  VoidCallback? onClicked,
 
}){
final color = Colors.grey[300];
final hoverColor = Colors.red[800];

return ListTile(
  
  leading: Icon(icon, color: colorIcon,),
  title: Text(text, style: TextStyle(color: color, fontSize: 20)),
  hoverColor: hoverColor,
  onTap: onClicked,
);
} 

}


