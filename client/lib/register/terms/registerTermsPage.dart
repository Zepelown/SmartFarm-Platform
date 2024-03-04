import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utill/pageSizeData.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TermsPageLayout(),
    );
  }
}

class TermsPageLayout extends StatefulWidget {
  const TermsPageLayout({super.key});

  @override
  State<TermsPageLayout> createState() => _TermsState();
}

class _TermsState extends State<TermsPageLayout> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: pageHeight * 0.05, horizontal: pageWidth * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                print('Image clicked!');
              },
              child: Image.asset(
                'common/icon_back_arrow.png',
                width: pageWidth * 0.05,
                height: pageHeight * 0.05,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: pageHeight * 0.1),
            ),
            Image.asset('register/icon_register_terms_of_use.png'),
            Text(
                "스마트팜 사용자를 위한 커뮤니티 \n'앱이름'",
              style: ,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: pageHeight * 0.1),
            ),
            Row(children: [
              Text(
                  "약관 전체 동의",
                style: titleTermsOfUseTextStyle,
              ),
              Spacer(),
              Image.asset(
                "common/icon_back_arrow.png",
                width: pageWidth * 0.05,
                height: pageWidth * 0.05,
              )
            ]),
            Row(children: [
              Text(
                  "(필수) 이용약관 동의",
                style: subtitleTermsOfUseTextStyle,
              ),
              Spacer(),
              Image.asset(
                "common/icon_back_arrow.png",
                width: pageWidth * 0.05,
                height: pageWidth * 0.05,
              )
            ]),
          ],
        ),
      )),
    );
  }
}
