import 'package:flutter/material.dart';
import 'package:food/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:food/features/authentication/screens/signup/signup.dart';
import 'package:food/navigation_menu.dart';
import 'package:food/utils/constants/sizes.dart';
import 'package:food/utils/constants/text_strings.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical:TSizes.spaceBtwSections ),
        child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(prefixIcon: Icon(Iconsax.direct_right),labelText: TTexts.email),
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields),
      
         TextFormField(
            decoration: const InputDecoration(
               labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
              ) ,
        ),
        const SizedBox(height: TSizes.spaceBtwInputFields / 2),
      
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children:[
            ///Remember Me
            Checkbox(value: true, onChanged: (value){}),
            const Text(TTexts.rememberMe),
          ],
        ),
      
        ///Forgot Password
        TextButton(onPressed: () => Get.to(ForgotPassword()), child:const Text(TTexts.forgetPassword)),
        ],
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
      
                 ///SignIn Button
                  SizedBox(width:double.infinity,child: ElevatedButton(onPressed: () => Get.to(() => const NavigationMenu()), child: Text(TTexts.signIn))),
                  const SizedBox(height: TSizes.spaceBtwItems),

      ///create Account
                  SizedBox(
                    width:double.infinity,
                    child: OutlinedButton(onPressed: () => Get.to(()=> const SignupScreen()) , 
                    child: const Text(TTexts.createAccount))),
        ],
                  
                  ),
      ),
    );
  }
}