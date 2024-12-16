import 'package:flutter/material.dart';

class FAQSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 800,
      height: 400,
      child: ListView.separated(
        padding: EdgeInsets.all(16.0),
        itemCount: 4,
        separatorBuilder: (context, index) => SizedBox(height: 16.0),
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
              return _buildFAQItem(
                'Is Turbo Shark really free to use?',
                'Yes, Turbo Shark is completely free and open source. No hidden costs, no premium plans, just pure downloading power!',
              );
            case 1:
              return _buildFAQItem(
                'How does Turbo Shark accelerate downloads?',
                'Turbo Shark uses advanced algorithms and multi-threading to optimize your download speeds. It\'s like strapping a rocket to your downloads!',
              );
            case 2:
              return _buildFAQItem(
                'Is Turbo Shark available on all platforms?',
                'Currently, Turbo Shark is available for Windows, macOS, and Linux. Mobile versions are swimming their way to you soon!',
              );
            case 3:
              return _buildFAQItem(
                'Can I contribute to Turbo Shark\'s development?',
                'We welcome contributions from the community. Check out our GitHub repository to get started. Remember, many fins make light work!',
              );
            default:
              return SizedBox.shrink();
          }
        },
      ),
    );
  }

  Widget _buildFAQItem(String title, String description) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [BoxShadow(color: Colors.blue.withOpacity(.3))]),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              description,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
