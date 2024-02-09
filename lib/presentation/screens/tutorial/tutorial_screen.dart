import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TutorialsScreen extends StatefulWidget {
  const TutorialsScreen({super.key});

  @override
  State<TutorialsScreen> createState() => _TutorialsScreenState();
}

class _TutorialsScreenState extends State<TutorialsScreen> {
  final PageController pageViewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageViewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
              physics: const BouncingScrollPhysics(),
              controller: pageViewController,
              children: [
                ...slides.map((x) => _Slide(info: x)),
              ]),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text('Skip'),
                onPressed: () => context.pop(),
              )),
          endReached
              ? Positioned(
                  right: 30,
                  bottom: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      child: const Text('Start'),
                      onPressed: () => context.pop(),
                    ),
                  ))
              : const SizedBox()
        ],
      ),
    );
  }
}

final slides = <_SlideInfo>[
  const _SlideInfo(
      'Look for food',
      'Eu in consectetur consectetur et laborum eiusmod.',
      'assets/images/1.png'),
  const _SlideInfo(
      'Fast delivery',
      'Fugiat ipsum ullamco voluptate sunt est et amet adipisicing excepteur occaecat culpa excepteur ut.',
      'assets/images/2.png'),
  const _SlideInfo(
      'Enjoy the food',
      'Do qui officia nostrud deserunt veniam consequat aute proident.',
      'assets/images/3.png')
];

class _SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const _SlideInfo(this.title, this.caption, this.imageUrl);
}

class _Slide extends StatelessWidget {
  const _Slide({required this.info});

  final _SlideInfo info;

  @override
  Widget build(BuildContext context) {
    final titleTheme = Theme.of(context).textTheme.titleLarge;
    final captionTheme = Theme.of(context).textTheme.bodySmall;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image(image: AssetImage(info.imageUrl)),
          const SizedBox(height: 20),
          Text(
            info.title,
            style: titleTheme,
          ),
          const SizedBox(height: 10),
          Text(
            info.caption,
            style: captionTheme,
          )
        ],
      )),
    );
  }
}
