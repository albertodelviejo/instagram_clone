import 'package:flutter/material.dart';

import '../../../../navigator.dart';

class LoginAppBar extends StatelessWidget {
  const LoginAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () => AppNavigator.pop(),
        icon: const Icon(
          Icons.chevron_left_sharp,
        ),
      ),
    );
  }
}
