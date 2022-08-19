class SafeButtonController {
  double opacity = 1.0;
  bool canClick = true;

  void protectButton(void Function(void Function() fn) setState, int seconds) {
    setState(() {
      canClick = false;
    });
    Future.delayed(Duration(seconds: seconds)).then((value) {
      setState(() {
        canClick = true;
      });
    });
  }
}
