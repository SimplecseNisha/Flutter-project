import 'package:flutter/material.dart';

class CommonAppBackground extends StatefulWidget {
  Widget? child;
  CommonAppBackground({Key? key, required this.child}) : super(key: key);

  @override
  State<CommonAppBackground> createState() => _CommonAppBackgroundState();
}

class _CommonAppBackgroundState extends State<CommonAppBackground> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Stack(
        children: [
          Column(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(170),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.red.shade200, Colors.orange.shade100]),
                  ),
                  width: 170,
                  height: 170,
                ),
              ),
              const SizedBox(
                height: 340,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  alignment: Alignment.bottomRight,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(220),
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Colors.red.shade100, Colors.yellow.shade100]),
                  ),
                  width: 220,
                  height: 220,
                ),
              )
            ],
          ),
          widget.child ?? const SizedBox()
        ],
      ),
    );
  }
}
