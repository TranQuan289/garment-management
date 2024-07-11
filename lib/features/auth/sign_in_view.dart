import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:garment_management/common/widgets/text_button_widget.dart';
import 'package:garment_management/common/widgets/text_form_field.dart';
import 'package:garment_management/utils/color_utils.dart';
import 'package:garment_management/utils/routes/routes.dart';

class SignInView extends StatefulWidget {
  const SignInView({Key? key}) : super(key: key);

  @override
  _SignInViewState createState() => _SignInViewState();
}

final TextEditingController nameController = TextEditingController();
final TextEditingController passwordController = TextEditingController();

class _SignInViewState extends State<SignInView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, left: 30, right: 30, bottom: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/img_logo.png',
                  height: 100,
                  width: 100,
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                'Đăng nhập',
                style: TextStyle(
                    color: ColorUtils.primaryColor,
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Tên đăng nhập",
                inputAction: TextInputAction.next,
                controller: nameController,
              ),
              SizedBox(
                height: 20.h,
              ),
              TextFormFieldCustomWidget(
                hint: '',
                label: "Mật khẩu",
                controller: passwordController,
                inputAction: TextInputAction.done,
                obscureText: true,
                // suffixIcon: IconButton(
                //   onPressed: () => {},
                //   icon: Icon(Icons.visibility),
                // ),
              ),
              SizedBox(
                height: 50.h,
              ),
              TextButtonWidget(
                label: 'Login',
                onPressed: () {
                  Routes.goToBottomNavigatorScreen(context);
                },
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
