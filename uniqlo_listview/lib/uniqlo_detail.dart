import 'package:flutter/material.dart';
import 'package:uniqlo_listview/Model/uniqlo.dart';

class UniqloDetail extends StatefulWidget {
  final Uniqlo uniqlo;
  const UniqloDetail({super.key, required this.uniqlo});

  @override
  State<UniqloDetail> createState() => _UniqloDetailState();
}

class _UniqloDetailState extends State<UniqloDetail> {
  int qty = 1;
  int get unitPrice {
    final raw = widget.uniqlo.price;
    final digits = raw.replaceAll(RegExp(r'[^0-9]'), '');
    return int.tryParse(digits) ?? 0;
  }

  int get totalPrice => unitPrice * qty;

  String formatPrice(int v) {
    final s = v.toString();
    final buf = StringBuffer();
    for (int i = 0; i < s.length; i++) {
      final idxFromEnd = s.length - i;
      buf.write(s[i]);
      if (idxFromEnd > 1 && idxFromEnd % 3 == 1) buf.write(',');
    }
    return buf.toString();
  }

  @override
  Widget build(BuildContext context) {
    final u = widget.uniqlo;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(u.imgLabel),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                width: 260,
                height: 260,
                child: Image.asset(
                  u.imageUrl,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Text(
              u.imgLabel,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 16),

            Text(
              u.description,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),

            const SizedBox(height: 10),
            Row(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (qty > 1) qty--;
                        });
                      },
                      icon: const Icon(Icons.remove),
                    ),
                    Text(
                      '$qty',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          qty++;
                        });
                      },
                      icon: const Icon(Icons.add),
                    ),
                  ],
                ),

                const Spacer(),
                Text(
                  'Total: ${formatPrice(totalPrice)} THB',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
