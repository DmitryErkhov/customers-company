import 'package:flutter/material.dart';

import '../../services/app_color_style.dart';
import '../../services/app_text_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColorStyle.backGroundWhite,
      appBar: AppBar(

        backgroundColor: CustomColorStyle.backGroundWhite,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 8),
              width: 35,
              height: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90),
                color: Colors.grey,
              ),
            ),
            //Text('Привет, Александр', style: CustomTextStyle.titleW500S16Style(MediaQuery.of(context).size),),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            // Блок виджета автомобиля

            // Блок виджета ближайших записей
            // Text('Мои ближайшие записи', style: CustomTextStyle.titleW900S16Style(MediaQuery.of(context).size), textAlign: TextAlign.center,),
            //
            // // Блок виджета списка доступных услуг
            // Text('Список доступных услуг', style: CustomTextStyle.titleW900S16Style(MediaQuery.of(context).size), textAlign: TextAlign.center,),
            //
            //
            // // Блок виджета акции и специальные предложения
            // Text('Акции и специальные предложения', style: CustomTextStyle.titleW900S16Style(MediaQuery.of(context).size), textAlign: TextAlign.center,),
            //
            //
            // // Блок виджета местоположения СТО
            // Text('Наше местоположение', style: CustomTextStyle.titleW900S16Style(MediaQuery.of(context).size), textAlign: TextAlign.center,),

          ],
        ),
      ),

      //),
    );
  }
}

