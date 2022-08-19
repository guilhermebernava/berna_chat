import 'package:berna_chat/core/widgets/safe_button/safe_button_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../themes/app_colors.dart';

class SafeButton extends StatefulWidget {
  final Size size;
  final int seconds;
  final VoidCallback onTap;
  final Widget child;
  final EdgeInsets padding;
  final Color color;

  const SafeButton({
    Key? key,
    required this.size,
    required this.onTap,
    required this.child,
    this.seconds = 2,
    this.padding = const EdgeInsets.all(15),
    this.color = AppColors.primary,
  }) : super(key: key);

  @override
  State<SafeButton> createState() => _SafeButtonState();
}

class _SafeButtonState extends State<SafeButton> with TickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _animation;
  final controller = Modular.get<SafeButtonController>();

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 470));

    _animation = TweenSequence(
      [
        TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.5), weight: 1),
        TweenSequenceItem(tween: Tween(begin: 0.5, end: 1.0), weight: 1),
      ],
    ).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.linear));

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (_, __) => Padding(
        padding: EdgeInsets.symmetric(vertical: widget.size.height * 0.02),
        child: GestureDetector(
          onTap: controller.canClick
              ? () {
                  controller.protectButton(setState, 1);
                  _animationController.forward().then((value) {
                    _animationController.reset();
                  });
                  widget.onTap();
                }
              : null,
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: widget.color.withOpacity(_animation.value),
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  color: AppColors.primary.withOpacity(_animation.value),
                  width: 2),
              boxShadow: widget.color != Colors.transparent
                  ? [
                      BoxShadow(
                        color: AppColors.darkPrimary.withOpacity(0.8),
                        blurRadius: 10,
                        spreadRadius: 4,
                        offset: const Offset(0, 1),
                        blurStyle: BlurStyle.inner,
                      )
                    ]
                  : [
                      BoxShadow(
                        color:
                            AppColors.darkPrimary.withOpacity(_animation.value),
                        blurRadius: 5,
                        spreadRadius: 0,
                        offset: const Offset(0, 1),
                        blurStyle: BlurStyle.outer,
                      ),
                    ],
            ),
            child: Padding(
              padding: widget.padding,
              child: Opacity(
                opacity: _animation.value,
                child: Center(
                  child: widget.child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
