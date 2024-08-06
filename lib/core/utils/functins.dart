import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchMyUrl({context,required String url})
async {
  Uri uri=Uri.parse(url);
  if(await canLaunchUrl(uri))
  {
  await launchUrl(uri);
  }else
    {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('Can Not Load URL')));
    }
}