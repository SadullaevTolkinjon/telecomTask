import 'package:flutter/widgets.dart';

class ShowError extends StatelessWidget {
  const ShowError({super.key, this.error});
  final error;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              "Something went wrong",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(error),
            )
          ],
        ),
      ),
    );
  }
}
