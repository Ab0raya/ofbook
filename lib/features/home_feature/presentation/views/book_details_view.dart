import 'package:flutter/material.dart';
import 'package:ofbook/features/home_feature/presentation/views/widgets/book_details_view_body.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
