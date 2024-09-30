import 'package:booking/Views/Nav_Bar_Screens/Home_nav.dart';
import 'package:booking/Views/Nav_Bar_Screens/WishList_nav.dart';

import '../../Controller/Constant/Linkers.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedindex=0;
  void navOntab(int index)
  {
    setState(() {
      _selectedindex=index;
    });
  }

  List widgetOptions=
  [
    HomeNav(),
    WishlistNav(),
    HomeNav(),
    HomeNav(),
    HomeNav(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetOptions.elementAt(_selectedindex),
     bottomNavigationBar: BottomNavigationBar(
       backgroundColor: Colors.white,
       currentIndex: _selectedindex,
       onTap: navOntab,
       selectedItemColor: Colors.black,
        /// unselectedItemColor: Colors.blue,
         type: BottomNavigationBarType.fixed,
         items: [
           BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.navBarIcon1)),label: ''),
           BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.navBarIcon2)),label: ''),
           BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.navBarIcon3)),label: ''),
           BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appicons.navBarIcon4)),label: ''),
           BottomNavigationBarItem(icon: Icon(Icons.person),label: ''),
            // BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            // BottomNavigationBarItem(icon: Icon(Icons.person_off),label: 'Profile'),
            // BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'settings'),
            // BottomNavigationBarItem(icon: Icon(Icons.local_activity),label: 'lock'),
         ]
     ),
    );
  }
}
