import 'dart:core';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Future<pw.Document> _createResume() async {
    final pdf = pw.Document();

    final imageBytes = await rootBundle.load('assets/img/abrar.JPEG');
    final image = pw.MemoryImage(imageBytes.buffer.asUint8List());

    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Row(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              // Left Column
              pw.Container(
                width: 180,
                color: PdfColors.indigo800,
                padding: const pw.EdgeInsets.all(10),
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    // Circular ImageCenter
                    pw.Center(
                      child: pw.ClipOval(
                        child: pw.Container(
                          height: 100,
                          width: 100,
                          child: pw.Image(image, fit: pw.BoxFit.cover),
                        ),
                      ),
                    ),
                    pw.SizedBox(height: 15),
                    // Name
                    pw.Text(
                      'Abrar Khira',
                      style: pw.TextStyle(
                        fontSize: 18,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.white,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.SizedBox(height: 5),
                    pw.Text(
                      'Email: abrarkhira772@gmail.com',
                      style: const pw.TextStyle(
                        fontSize: 10,
                        color: PdfColors.white,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Text(
                      'Phone: +91 8980365212',
                      style: const pw.TextStyle(
                        fontSize: 10,
                        color: PdfColors.white,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Divider(),
                    // Skills
                    pw.Text(
                      'Skills :',
                      style: pw.TextStyle(
                        fontSize: 14,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.white,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Bullet(
                      text: 'Flutter Development',
                      bulletColor: PdfColors.white,
                      style: const pw.TextStyle(
                        color: PdfColors.white,
                      ),
                    ),
                    pw.Bullet(
                      text: 'Rest API',
                      bulletColor: PdfColors.white,
                      style: const pw.TextStyle(
                        color: PdfColors.white,
                      ),
                    ),
                    pw.Bullet(
                      text: 'Firebase',
                      bulletColor: PdfColors.white,
                      style: const pw.TextStyle(
                        color: PdfColors.white,
                      ),
                    ),
                    pw.Bullet(
                      text: 'State Management',
                      bulletColor: PdfColors.white,
                      style: const pw.TextStyle(
                        color: PdfColors.white,
                      ),
                    ),
                    pw.Divider(),
                    pw.SizedBox(height: 10),
                    // Address
                    pw.Text(
                      'Address :',
                      style: pw.TextStyle(
                        fontSize: 14,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.white,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Jamnagar, Gujarat',
                      style: const pw.TextStyle(
                        fontSize: 12,
                        color: PdfColors.white,
                      ),
                      textAlign: pw.TextAlign.center,
                    ),
                    pw.Divider(),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Language :',
                      style: pw.TextStyle(
                        fontSize: 14,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.white,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                    pw.Bullet(
                      text: 'English',
                      bulletColor: PdfColors.white,
                      style: const pw.TextStyle(
                        color: PdfColors.white,
                      ),
                    ),
                    pw.Bullet(
                      text: 'Hindi',
                      bulletColor: PdfColors.white,
                      style: const pw.TextStyle(
                        color: PdfColors.white,
                      ),
                    ),
                    pw.Bullet(
                      text: 'Gujarati',
                      bulletColor: PdfColors.white,
                      style: const pw.TextStyle(
                        color: PdfColors.white,
                      ),
                    ),
                    pw.SizedBox(height: 10),
                  ],
                ),
              ),

              pw.SizedBox(width: 10),
              // Right Column
              pw.Expanded(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.start,
                  children: [
                    // Profile
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'Profile',
                      style: pw.TextStyle(
                        fontSize: 18,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue,
                      ),
                    ),
                    pw.Divider(),
                    pw.Row(
                      children: [
                        pw.Text(
                          'Name: ',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                        pw.Text(
                          'Abrar Khira',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Text(
                          'Date of birth: ',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                        pw.Text(
                          '15/07/2001',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Text(
                          'Gender: ',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                        pw.Text(
                          'Male',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                    pw.Row(
                      children: [
                        pw.Text(
                          'Nationality: ',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                        pw.Text(
                          'INDIA',
                          style: const pw.TextStyle(fontSize: 16),
                        ),
                      ],
                    ),

                    pw.SizedBox(height: 10),
                    // Summary
                    pw.Text(
                      'Experience',
                      style: pw.TextStyle(
                        fontSize: 18,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue,
                      ),
                    ),
                    pw.Divider(),
                    pw.Text(
                      'Flutter Developer with over 6 months of experience building engaging mobile applications.',
                      style: const pw.TextStyle(fontSize: 12),
                    ),
                    pw.Text(
                      'I am working on a project till 3 months as Freelancer.',
                      style: const pw.TextStyle(fontSize: 12),
                    ),
                    pw.SizedBox(height: 10),
                    // Education
                    pw.Text(
                      'Education',
                      style: pw.TextStyle(
                        fontSize: 18,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue,
                      ),
                    ),
                    pw.Divider(),
                    pw.Bullet(text: 'BSc in Chemistry, Saurashtra University'),
                    pw.Bullet(
                        text: 'HSC in Science, Brilliant School of Science'),
                    pw.SizedBox(height: 10),
                    // Projects
                    pw.Text(
                      'Projects',
                      style: pw.TextStyle(
                        fontSize: 18,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue,
                      ),
                    ),
                    pw.Divider(),
                    pw.Text(
                      'WALLPAPER APP',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue,
                      ),
                    ),
                    pw.Bullet(
                        text: 'Apply Wallpaper on Lock Screen and Home Screen'),
                    pw.Bullet(text: 'Save Wallpaper in Gallery'),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'FIREBASE NOTE APP',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue,
                      ),
                    ),
                    pw.Bullet(
                        text:
                            'Add, Update, Delete and Fetch Notes from Firebase'),
                    pw.Bullet(
                        text: 'Adding and Update Profile Picture on Firebase'),
                    pw.SizedBox(height: 10),
                    pw.Text(
                      'PREP ZONE (On Playstore)',
                      style: pw.TextStyle(
                        fontSize: 16,
                        fontWeight: pw.FontWeight.bold,
                        color: PdfColors.blue,
                      ),
                    ),
                    pw.Bullet(text: 'Admin side and User side'),
                    pw.Bullet(
                        text:
                            'Adding Category wise Question and Answer for User'),
                    pw.Bullet(
                        text:
                            'Create & Login with Google account using Firebase'),
                    pw.SizedBox(height: 10),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );

    return pdf;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Resume App',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              const SizedBox(height: 20),
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: 'Press on this ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'View Resume ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Button to Check ',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                    ),
                    TextSpan(
                      text: 'Your Assignment',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () async {
                    final pdf = await _createResume();
                    await Printing.layoutPdf(onLayout: (format) => pdf.save());
                  },
                  child: const Text('View Resume'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
