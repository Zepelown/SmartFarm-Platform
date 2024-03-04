import 'package:client/register/terms/registerTermsPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginLayout(),
    );
  }
}

class LoginLayout extends StatefulWidget{
  const LoginLayout({super.key});

  @override
  State<LoginLayout> createState() => _LoginState();
}


class _LoginState extends State<LoginLayout> {
  // 자동 로그인 여부
  bool switchValue = false;

  // 아이디와 비밀번호 정보
  final TextEditingController userIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '어플 제목',
                  style: TextStyle(
                    fontSize: 30,
                      color: CupertinoColors.activeGreen,
                      fontWeight: FontWeight.bold
                  ),
                ),
                // ID 입력 텍스트필드
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 300,
                    child: CupertinoTextField(
                      controller: userIdController,
                      placeholder: '아이디를 입력해주세요',
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                // 비밀번호 입력 텍스트필드
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: 300,
                    child: CupertinoTextField(
                      controller: passwordController,
                      placeholder: '비밀번호를 입력해주세요',
                      textAlign: TextAlign.center,
                      obscureText: true,
                    ),
                  ),
                ),
                // 자동 로그인 확인 토글 스위치
                SizedBox(
                  width: 300,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '자동로그인 ',
                        style: TextStyle(
                            color: CupertinoColors.systemGreen,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      CupertinoSwitch(
                        // 부울 값으로 스위치 토글 (value)
                        value: switchValue,
                        activeColor: Color.fromRGBO(80, 137, 116, 1),
                        onChanged: (bool? value) {
                          // 스위치가 토글될 때 실행될 코드
                          setState(() {
                            switchValue = value ?? false;
                          });
                        },
                      ),
                      Text('    '),
                      // 계정 생성 페이지로 이동하는 버튼
                      OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TermsPage()
                              )
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color:Color.fromRGBO(80, 137, 116, 1))
                        ),
                        child: Text(
                          '계정생성',
                          style: TextStyle(
                              color: Color.fromRGBO(80, 137, 116, 1)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // 로그인 버튼
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                          '로그인',
                        style: TextStyle(
                            color:Color.fromRGBO(80, 137, 116, 1)
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}