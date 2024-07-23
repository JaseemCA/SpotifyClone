import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotifyclone/common/widgets/button/basic_app_button.dart';
import 'package:spotifyclone/core/config/assets/app_images.dart';
import 'package:spotifyclone/core/config/assets/app_vector.dart';
import 'package:spotifyclone/core/config/theme/app_colors.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          padding:
            const  EdgeInsetsDirectional.symmetric(vertical: 40, horizontal: 40),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImages.introBG,
                  ))),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo)),
              const Spacer(),
              const Text(
                'Enjoy listening to music',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
              const SizedBox(height: 25),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sagittis enim purus sed phasellus. Cursus ornare id scelerisque aliquam.',
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: AppColors.gray),
                    textAlign: TextAlign.center,
              ),
            const  SizedBox(height: 20),
            BasicAppButton(onPressed: (){}, title: 'Get Started',)
            ],
          ),
        ),
        Container(
          color: Colors.black.withOpacity(0.15),
        )
      ],
    ));
  }
}
