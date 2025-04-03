import 'package:flutter/material.dart';
import 'package:raqamlar/core/resources/app_colors.dart';
import 'package:raqamlar/core/widgets/motivation_model.dart';

import '../../../../core/resources/custom_styles.dart';
import '../../../../gen/assets.gen.dart';

class WMotivation extends StatefulWidget {
  final MotivationModel motivation;

  const WMotivation({
    super.key,
    required this.motivation,
  });

  @override
  State<WMotivation> createState() => _WMotivationState();
}

class _WMotivationState extends State<WMotivation>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final Tween<double> _sizeTween;
  bool _isExpanded = false;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.fastOutSlowIn,
    );
    _sizeTween = Tween(begin: 0, end: 1);
    super.initState();
  }

  void _expandOnChanged() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
    _isExpanded ? _controller.forward() : _controller.reverse();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: _expandOnChanged,
            child: Container(
              padding: const EdgeInsetsDirectional.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          widget.motivation.title,
                          overflow: TextOverflow.visible,
                          style: CustomStyle.black14w700,
                        ),
                      ),
                      if (_isExpanded)
                        Assets.svg.minus.svg()
                      else
                        Assets.svg.plus.svg()
                    ],
                  ),
                  SizeTransition(
                    sizeFactor: _sizeTween.animate(_animation),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsetsDirectional.symmetric(vertical: 8),
                          child: Divider(height: 1, color: AppColors.inputGrey),
                        ),
                        Text(
                          widget.motivation.subtitle,
                          style: CustomStyle.black14w400,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
