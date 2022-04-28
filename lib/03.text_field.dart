import 'package:flutter/material.dart';

void main() => runApp(const Dialog());

class Dialog extends StatelessWidget {
  const Dialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '입력란',
      home: FormPage(),
    );
  }
}

class FormPage extends StatelessWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('입력란')
      ),
      body: const TextForm()
    );
  }
}

class TextForm extends StatefulWidget {
  const TextForm({Key? key}) : super(key: key);

  @override
  State<TextForm> createState() => _TextFormState();
}

class PersonData {
  String? name = '';
  String? phoneNumber = '';
  String? email = '';
  String password = '';
}

// class TextFormFieldState extends State<TextFormField>
//   with RestorationMixin {
//
//   PersonData person = PersonData();
//
//   late FocusNode _phoneNumber, _email, _memo;
//
//   @override
//   void initState() {
//     super.initState();
//     _phoneNumber = FocusNode();
//     _email = FocusNode();
//     _memo = FocusNode();
//   }
//
//   @override
//   void dispose() {
//     _phoneNumber.dispose();
//     _email.dispose();
//     _memo.dispose();
//     super.dispose();
//   }
// }


// TODO: Form UI
class _TextFormState extends State<TextForm> {

  @override
  Widget build(BuildContext context) {
    const sizedBoxSpace = SizedBox(height: 24);

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Form(
        child: Scrollbar(
          child: SingleChildScrollView(
            restorationId: 'text_field_scroll_view',
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                sizedBoxSpace,
                TextFormField(
                  restorationId: 'name_field',
                  textInputAction: TextInputAction.next,
                  textCapitalization: TextCapitalization.words,
                  decoration: const InputDecoration(
                    filled: true,
                    icon: Icon(Icons.person),
                    hintText:'이름을 입력 해주세요.',
                    labelText: '* 이름'
                  ),
                ),
                sizedBoxSpace,
                TextFormField(
                  restorationId: 'phone_number_field',
                  textInputAction: TextInputAction.next,
                  // focusNode: _phoneNumber,
                  decoration: const InputDecoration(
                      filled: true,
                      icon: Icon(Icons.phone),
                      hintText:'수신 가능한 번호를 입력해주세요.',
                      labelText: '* 전화번호',
                      prefix:Text('+82 '),
                  ),
                  keyboardType: TextInputType.phone,
                  maxLength: 14,

                ),
                sizedBoxSpace,
                TextFormField(
                  restorationId: 'email_field',
                  textInputAction: TextInputAction.next,
                  //focusNode: _email,
                  decoration: const InputDecoration(
                      filled: true,
                      icon: Icon(Icons.email),
                      hintText:'이메일 주소',
                      labelText: '이메일'
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
                sizedBoxSpace,
                // const PasswordField(
                //   restorationId: 'password_field',
                //   textInputAction: TextInputAction.next,
                //   // focusNode: _passwordField,
                //   //fieldKey: _passwordFieldKey,
                //   helperText: '8자를 넘을 수 없습니다.',
                //   labelText: '*비밀번호',
                // ),
                sizedBoxSpace,
                TextFormField(
                  restorationId: 'memo',
                  //focusNode: _memo,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: '메모를 입력하세요.',
                    labelText: '메모',
                  ),
                  maxLines: 3,
                ),
                sizedBoxSpace,
                TextFormField(
                  restorationId: 'salary_field',
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '급여',
                    hintText: '원',
                  ),
                ),
                sizedBoxSpace,
                const Text('*기호는 필수 입력란을 의미합니다.'),
                sizedBoxSpace,
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('제출'),
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 50)
                    ),
                  ),
                ),
                sizedBoxSpace,
              ],
            ),
          ),
        ),
      ),
    );
  }
}




