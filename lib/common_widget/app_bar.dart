import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TAppBar({
    super.key,
    this.title,
    this.actions,
    this.showBackArrow = false,
    this.centerTitle = false,
    this.backgroundColor = Colors.transparent,
  });

  final Widget? title;
  final List<Widget>? actions;
  final bool showBackArrow, centerTitle;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: backgroundColor,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: showBackArrow
            ? IconButton(
                onPressed: () => Get.back(),
                icon: const Icon(Icons.arrow_back_ios_new_outlined,
                    color: Colors.black))
            : null,
        title: title,
        actions: actions);
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}