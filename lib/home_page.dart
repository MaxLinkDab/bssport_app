import 'package:app/functional/domain/api_client.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:app/widget/navigation_drawer.dart';
import 'package:app/widget/test_page.dart';
import 'package:app/widget/cloth_page.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MenuCloth {
  final String nameProduct;
  final int codeProduct; //переменная с кодом продукта
  String urlImage; //переменная с ссылкой на изображение
  final int priceAdult; //переменная с ценой
  final int priceKids; //переменная с ценой
  final String description; //переменная с описанием

  MenuCloth(
      { //todo вынимать данные из списка и вставлять их сюда
      required this.nameProduct,
      required this.codeProduct,
      this.urlImage = "",
      required this.priceAdult,
      required this.priceKids,
      this.description = " "});
}

//todo сделать динамическую страницу (все параметры с обложки передаются и отображаются на той странице)

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApiClient().getPosts();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[400],
        body: TileMine(),
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(43, 42, 51, 1),
            centerTitle: true,
            title: const Text("Главная")),
        drawer: const NavigationPanel(),
      ),
    );
  }
}

class TileMine extends StatelessWidget {
  TileMine({Key? key}) : super(key: key);
//todo сделать заполнение плиток через json и написать админское приложение с добавлением текста и картинок в json
  final _clothes = [
    MenuCloth(
        nameProduct: "Кимоно для КАРАТЭ белое 260",
        urlImage: "photo/1.jpg",
        codeProduct: 1,
        priceAdult: 2640,
        priceKids: 2600,
        description:
            "Кимоно для КАРАТЭ Выполнено из прочного отбеленного или черного 100% хлопка плотностью 260 гр/м2 (8 унций). Кимоно имеет усиление на куртке в плечах. Брюки на резинке со вставным шнуром (детские). Взрослые штаны удерживаются вставным шнурком. Превосходно подходит для тренировок и соревнований. Кимоно комплектуется белым поясом"),
    MenuCloth(
        nameProduct: "Кимоно для КАРАТЭ черное 260",
        urlImage: "photo/2.jpg",
        codeProduct: 2,
        priceAdult: 2640,
        priceKids: 2600,
        description:
            "Кимоно для КАРАТЭ Выполнено из прочного отбеленного или черного 100% хлопка плотностью 260 гр/м2 (8 унций). Кимоно имеет усиление на куртке в плечах. Брюки на резинке со вставным шнуром (детские). Взрослые штаны удерживаются вставным шнурком. Превосходно подходит для тренировок и соревнований. Кимоно комплектуется белым поясом"),
    MenuCloth(
        nameProduct: "Кимоно для КАРАТЭ белое 310",
        urlImage: "photo/3.jpg",
        codeProduct: 3,
        priceAdult: 2990,
        priceKids: 2950,
        description:
            "Кимоно для КАРАТЭ Выполнено из прочного отбеленного или черного 100% хлопка плотностью 310 гр/м2 (11 унций). Кимоно имеет усиление на куртке в плечах. Брюки на резинке со вставным шнуром (детские). Взрослые штаны удерживаются вставным шнурком. Превосходно подходит для тренировок и соревнований. Кимоно комплектуется белым поясом"),
    MenuCloth(
        nameProduct: "Кимоно для КАРАТЭ черное 310",
        urlImage: "photo/4.jpg",
        codeProduct: 4,
        priceAdult: 2990,
        priceKids: 2950,
        description:
            "Кимоно для КАРАТЭ Выполнено из прочного отбеленного или черного 100% хлопка плотностью 310 гр/м2 (11 унций). Кимоно имеет усиление на куртке в плечах. Брюки на резинке со вставным шнуром (детские). Взрослые штаны удерживаются вставным шнурком. Превосходно подходит для тренировок и соревнований. Кимоно комплектуется белым поясом"),
    MenuCloth(
      nameProduct: "Кимоно для КАРАТЭ-КИОКУШИНКАЙ  260",
      urlImage: "photo/5.png",
      codeProduct: 5,
      priceAdult: 2740,
      priceKids: 2700,
      description:
          "Кимоно для КАРАТЭ-КИОКУШИНКАЙ  Выполнено из прочного отбеленного 100% хлопка плотностью 260 гр/м2 (8 унций). Кимоно имеет усиление на куртке в плечах. Куртка с укороченым  рукавом и вышивкой  на груди. Брюки на резинке со вставным шнуром (детские). Взрослые штаны удерживаются вставным шнурком. Превосходно подходит для тренировок и соревнований. Кимоно комплектуется белым поясом",
    ),
    MenuCloth(
        nameProduct: "Кимоно для КАРАТЭ черное 310",
        urlImage: "photo/6.png",
        codeProduct: 6,
        priceAdult: 2990,
        priceKids: 2950,
        description:
            "Кимоно для КАРАТЭ Выполнено из прочного отбеленного или черного 100% хлопка плотностью 310 гр/м2 (11 унций). Кимоно имеет усиление на куртке в плечах. Брюки на резинке со вставным шнуром (детские). Взрослые штаны удерживаются вставным шнурком. Превосходно подходит для тренировок и соревнований. Кимоно комплектуется белым поясом"),
  ];
//todo добавить цикл и условие, сравнивать и выводить нужное изображение
//todo можно попробовать  не возращать функцию, а сохранять в переменную
  @override
  Widget build(BuildContext context) {
    double space = 10;
    return ListView.builder(
        itemCount: _clothes.length,
        itemExtent: 190,
        itemBuilder: (BuildContext context, int index) {
          final cloth = _clothes[index];
          if (cloth.urlImage == "") {
            cloth.urlImage =
                "https://upload.wikimedia.org/wikipedia/ru/thumb/a/ac/No_image_available.svg/600px-No_image_available.svg.png";
          }

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: InkWell(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromRGBO(43, 42, 51, 1)
                            .withOpacity(0.2)),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromRGBO(43, 42, 51, 1)
                              .withOpacity(0.2),
                          blurRadius: 8,
                          offset: const Offset(0, 2))
                    ]),
                clipBehavior: Clip.hardEdge,
                child: Stack(children: [
                  Row(
                    children: [
                      Image.asset(
                        cloth.urlImage,
                        width: 120,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              cloth.nameProduct,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              cloth.description,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: space,
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Цена взрослого:    ${cloth.priceAdult} ",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Цена детского:      ${cloth.priceKids}",
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Material(
                      color: Colors.transparent,
                      child: InkWell(
                        borderRadius: BorderRadius.circular(9),
                        onTap: () => Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return ClothPage(
                              nameProduct: cloth.nameProduct,
                              description: cloth.description,
                              urlImage: cloth.urlImage,
                              priceAdult: cloth.priceAdult,
                              priceKids: cloth.priceKids,
                              codeProduct: cloth.codeProduct);
                        })),
                      ))
                ]),
              ),
            ),
          );
        });
  }

  /*-------------------------------------------*/
  /* Widget TileImage(String urlImage) {
     return Container(
         child: Material(
             borderRadius: BorderRadius.circular(10),
             clipBehavior: Clip.antiAliasWithSaveLayer,
             clipBehavior: Clip.antiAliasWithSaveLayer,
             color: Colors.white,
             elevation: 1,
             child: InkWell(
                 splashColor: Colors.black26,
                 onTap: () => debugPrint("tap"),
                 child: Column(
                   mainAxisSize: MainAxisSize.max,
                   children: [
                     Ink.image(
                         image: NetworkImage(urlImage),
                         height: 110,
                         fit: BoxFit.contain),
                     Container(
                       width: 200,
                       child: const Text(
                         "Спортивная одежда",
                         style: TextStyle(
                             fontSize: 24, color: Color.fromRGBO(43, 42, 51, 1)),
                         overflow: TextOverflow.clip,
                         textAlign: TextAlign.center,
                         softWrap: true,
                       ),
                     ),
                     const SizedBox(height: 20)
                   ],
                 ))));
 */
}
