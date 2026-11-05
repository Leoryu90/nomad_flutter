import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -order * 20),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isInverted ? Colors.white : const Color(0xFF1F2123),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? Colors.black : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    amount,
                    style: TextStyle(
                      color: isInverted
                          ? Colors.black.withAlpha(150)
                          : Colors.white.withAlpha(150),
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    code,
                    style: TextStyle(
                      color: isInverted
                          ? Colors.black.withAlpha(150)
                          : Colors.white.withAlpha(150),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.4,
                child: Transform.translate(
                  offset: const Offset(-5, 10),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.black : Colors.white,
                    size: 78,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
