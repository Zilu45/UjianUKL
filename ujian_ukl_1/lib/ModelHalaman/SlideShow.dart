// import 'package:flutter/material.dart';

// class BannerSlider extends StatefulWidget {
//   const BannerSlider({super.key});

//   @override
//   _BannerSliderState createState() => _BannerSliderState();
// }

// class _BannerSliderState extends State<BannerSlider> {
//   final PageController _pageController = PageController();
//   final List<String> banners = List.generate(
//     3,
//     (index) => 'Doksli/iklan.png',
    
//   ); // Ganti sesuai jalur aset Anda.
//   int _currentPage = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.bottomCenter,
//       children: [
//         SizedBox(
//           height: 150,
//           child: PageView.builder(
//             controller: _pageController,
//             onPageChanged: (int index) {
//               setState(() {
//                 _currentPage = index;
//               });
//             },
//             itemCount: banners.length,
//             itemBuilder: (context, index) {
//               return BannerItem(imagePath: banners[index]);
//             },
//           ),
//         ),
//         Positioned(
//           bottom: 10,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: List.generate(
//               banners.length,
//               (index) => AnimatedContainer(
//                 duration: const Duration(milliseconds: 300),
//                 margin: const EdgeInsets.symmetric(horizontal: 4.0),
//                 height: _currentPage == index ? 10.0 : 8.0,
//                 width: _currentPage == index ? 10.0 : 8.0,
//                 decoration: BoxDecoration(
//                   color: _currentPage == index ? Colors.black : Colors.grey,
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// class BannerItem extends StatelessWidget {
//   final String imagePath;

//   const BannerItem({super.key, required this.imagePath});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       decoration: BoxDecoration(
//         image: DecorationImage(
//           image: AssetImage(imagePath),
//           fit: BoxFit.cover,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  final PageController _pageController = PageController();
  final List<String> banners = [
    'Doksli/iklan.png',
    'Doksli/iklan5.png',
    'Doksli/iklan6.png',
  ]; 

  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SizedBox(
          height: 150,
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (int index) {
              setState(() {
                _currentPage = index;
              });
            },
            itemCount: banners.length,
            itemBuilder: (context, index) {
              return BannerItem(imagePath: banners[index]);
            },
          ),
        ),
        Positioned(
          bottom: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              banners.length,
              (index) => AnimatedContainer(
                duration: const Duration(milliseconds: 5),
                margin: const EdgeInsets.symmetric(horizontal: 4.0),
                height: _currentPage == index ? 10.0 : 8.0,
                width: _currentPage == index ? 10.0 : 8.0,
                decoration: BoxDecoration(
                  color: _currentPage == index ? Colors.black : Colors.grey,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BannerItem extends StatelessWidget {
  final String imagePath;

  const BannerItem({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
