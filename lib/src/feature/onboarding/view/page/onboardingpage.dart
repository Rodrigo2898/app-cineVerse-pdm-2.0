import 'package:flutter/material.dart';
import 'package:onboarding/onboarding.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingState();
}

class _OnboardingState extends State<OnboardingPage> {
  late Material materialButton;
  late int index;
  final onboardingPagesList = [
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: const Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'SUA REDE SOCIAL DE FILMES SÉRIES E DOCUMENTÁRIOS',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                     'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: const Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Descubra novos filmes e conecte-se com outros fãs de cinema de todo mundo',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
                Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
    PageModel(
      widget: DecoratedBox(
        decoration: BoxDecoration(
          color: background,
          border: Border.all(
            width: 0.0,
            color: background,
          ),
        ),
        child: SingleChildScrollView(
          controller: ScrollController(),
          child: const Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 45.0,
                  vertical: 90.0,
                ),
                    //color: pageImageColor),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'COM RECURSOS E UMA INTERFACE FÁCIL, O CINEVERSE É O LUGAR PERFEITO PARA OS AMANTES DE FILMES',
                    style: pageTitleStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 45.0, vertical: 10.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                    style: pageInfoStyle,
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ];

  @override
  void initState() {
    super.initState();
    materialButton = _skipButton();
    index = 0;
  }

  Material _skipButton({void Function(int)? setIndex}) {
    return Material(
      borderRadius: defaultSkipButtonBorderRadius,
      color: defaultSkipButtonColor,
      child: InkWell(
        borderRadius: defaultSkipButtonBorderRadius,
        onTap: () {
          if (setIndex != null) {
            index = 2;
            setIndex(2);
          }
        },
        child: const Padding(
          padding: defaultSkipButtonPadding,
          child: Text(
            'Skip',
            style: defaultSkipButtonTextStyle,
          ),
        ),
      ),
    );
  }

  Material get _signupButton {
    return Material(
      borderRadius: defaultProceedButtonBorderRadius,
      color: defaultProceedButtonColor,
      child: InkWell(
        borderRadius: defaultProceedButtonBorderRadius,
        onTap: () async => {Navigator.pushNamed(context, '/auth')},
        child: const Padding(
          padding: defaultProceedButtonPadding,
          child: Text(
            'Sign up',
            style: defaultProceedButtonTextStyle,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: Onboarding(
          pages: onboardingPagesList,
          onPageChange: (int pageIndex) {
            index = pageIndex;
          },
          startPageIndex: 0,
          footerBuilder: (context, dragDistance, pagesLength, setIndex) {
            return DecoratedBox(
              decoration: BoxDecoration(
                color: background,
                border: Border.all(
                  width: 0.0,
                  color: background,
                ),
              ),
              child: ColoredBox(
                color: background,
                child: Padding(
                  padding: const EdgeInsets.all(45.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomIndicator(
                        netDragPercent: dragDistance,
                        pagesLength: pagesLength,
                        indicator: Indicator(
                          indicatorDesign: IndicatorDesign.line(
                            lineDesign: LineDesign(
                              lineType: DesignType.line_uniform,
                            ),
                          ),
                        ),
                      ),
                      index == pagesLength - 1
                          ? _signupButton
                          : _skipButton(setIndex: setIndex)
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}