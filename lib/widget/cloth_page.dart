import 'package:flutter/material.dart';
class ClothPage extends StatelessWidget {

   String nameProduct;
   String description;
   String urlImage;
   int priceKids;
   int priceAdult;
   int codeProduct;


   ClothPage({ 
    required this.nameProduct,
    required this.description,
    required this.urlImage,
    required this.priceKids,
    required this.priceAdult,
    required this.codeProduct,
    Key? key,
    }) : super(key: key);

  @override
  Widget build(BuildContext context){
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color.fromRGBO(43, 42, 51, 1),
          title: Text(nameProduct, style: const TextStyle(color: Colors.white))),
        body:  ClothDrawerBody(
          description: description,
          urlImage: urlImage,
          priceAdult: priceAdult,
          priceKids: priceKids,
        )
      ));
  }
}

class ClothDrawerBody extends StatelessWidget {
  String description;
  String urlImage;
  int priceKids;
  int priceAdult;
  ClothDrawerBody({ Key? key,
   required this.description,
   required this.urlImage,
   required this.priceKids,
  required this.priceAdult,
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ 
        const SizedBox(height: 20,),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
        child: Image.asset(urlImage)
          ),

        const SizedBox(height: 20,),
        Text("Стоимость для детей:    $priceKids",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
        Text("Стоимость для взрослых: $priceAdult", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400)),
        const SizedBox(height: 20,),
        const Text("О товаре", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),

        const SizedBox(height: 20,),
        
        Text(description)
      ],
    );
  }
}
/* Widget textName({
  nameProduct
})
{
  
  return Text();
} */
  
