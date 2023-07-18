import 'package:flutter/material.dart';

import '../router/routerlinks.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.routerLink,
    this.onOpenModal,
    this.onPressed,
  });
  final RouterLinks? routerLink;

  final void Function()? onOpenModal;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
          backgroundColor: const Color(0xffFF460A),
          minimumSize: const Size(314, 70),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
      onPressed: () {
        if (onOpenModal != null) {
          onOpenModal!();
        }
        if (routerLink != null) {
          Navigator.pushNamed(context, routerLink!.linkRouter);
        }
      },
      child: Text(
        routerLink?.title ?? 'Complete order',
        style: const TextStyle(fontSize: 17, color: Colors.white),
      ),
    );
  }
}
