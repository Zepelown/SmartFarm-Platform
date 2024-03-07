import 'package:client/login/loginPage.dart';
import 'package:client/register/terms/checkBoxButtonWidget.dart';
import 'package:flutter/material.dart';

import '../../utill/pageSizeData.dart';

class TermsPage extends StatelessWidget {
  const TermsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TermsLayout(),
    );
  }
}

class TermsLayout extends StatefulWidget{
  const TermsLayout({super.key});

  @override
  State<TermsLayout> createState() => _TermsState();
}

class _TermsState extends State<TermsLayout> {

  bool allAgreement = false;
  bool termsAgreement = false;
  bool privacyAgreement = false;
  bool optionalAgreement = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: pageHeight * 0.05, horizontal: pageWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage())
                      );
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
                    style: TextStyle(fontSize: 18),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: pageHeight * 0.1),
                  ),
                  Row(children:  [
                    Text(
                      "약관 전체 동의",
                      style: TextStyle(fontSize: 17),
                    ),
                    Spacer(),
                      Checkbox(
                        value: allAgreement,
                        onChanged: (value){
                          setState(() {
                            allAgreement = value!;
                            termsAgreement = value;
                            privacyAgreement = value;
                            optionalAgreement = value;
                          });
                        },
                      )
                  ]),
                  Container( height:1.0,
                    width:500.0,
                    color:Colors.black38,
                    ),
                  Row(children: [
                    Text(
                      "(필수) 이용약관 동의",
                      style: TextStyle(fontSize: 14),
                    ),
                    Spacer(),
                    CheckBoxButtonWidget(isChecked: termsAgreement)
                  ]),
                  Row(children:  [
                    Text(
                      "(필수) 개인정보 수집 및 이용 동의",
                      style: TextStyle(fontSize: 14),
                    ),
                    Spacer(),
                    CheckBoxButtonWidget(isChecked: privacyAgreement)
                  ]),
                  Row(children: [
                    Text(
                      "(선택) E-mail 및 SMS 광고성 정보 수신 동의",
                      style: TextStyle(fontSize: 14),
                    ),
                    Spacer(),
                    CheckBoxButtonWidget(isChecked: optionalAgreement)
                  ]),
                ],
              ),
            ),
            Expanded(
                child: ElevatedButton(
                    onPressed: (){
                      print("다음");
                    },
                    child: Text("다음")
                )
            )
          ],
        ),
      )
    );
  }

}
