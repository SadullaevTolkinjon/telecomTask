import 'package:flutter/widgets.dart';

class ShowError extends StatelessWidget {
  const ShowError({super.key,this.error});
final error;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Text(error)
        ],
      ),
    );
  }
}
