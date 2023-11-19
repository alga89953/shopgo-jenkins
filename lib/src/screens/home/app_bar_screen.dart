import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppBarShopGo extends StatelessWidget {
  const AppBarShopGo({
    super.key,
  });

  //final Widget child;
  //final double height;

  //CustomAppBar({
  //required this.height,
  //required this.child,
  //}) : super(child: child, preferredSize: Size.fromHeight(height));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('ShopGo'),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset('assets/icons/profile.svg'),
          tooltip: 'Profile',
          onPressed: () async {
            await Navigator.pushNamed(context, '/profile');
          },
        ),
      ],
    );
  }
}
