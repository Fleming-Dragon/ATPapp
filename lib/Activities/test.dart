import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:syncfusion_flutter_pdf/pdf.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  File? _pdfFile;
  String _extractedText = '';

  // Method to pick a PDF file
  Future<void> _pickPdf() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      setState(() {
        _pdfFile = File(result.files.single.path!);
        _extractedText = ''; // Clear previous text
      });
    }
  }

  // Method to extract text from the PDF file
  Future<void> _extractTextFromPdf() async {
    if (_pdfFile == null) {
      // Show an error message if no file is selected
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please upload a PDF file first.')),
      );
      return;
    }

    try {
      final pdfBytes = await _pdfFile!.readAsBytes();
      final document = PdfDocument(inputBytes: pdfBytes);
      final extractedText = PdfTextExtractor(document).extractText();
      document.dispose();

      setState(() {
        _extractedText = extractedText;
      });
    } catch (e) {
      // Handle extraction errors
      print(e);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Failed to extract text from the PDF.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PDF Text Extractor'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: _pickPdf,
              child: const Text('Upload PDF'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _extractTextFromPdf,
              child: const Text('Extract Text from PDF'),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  _extractedText.isNotEmpty
                      ? _extractedText
                      : 'No text extracted yet.',
                  style: const TextStyle(fontSize: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
