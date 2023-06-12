import 'package:flutter/material.dart';
import 'package:m_kart/Listofproduct.dart/imaged.dart';

class products extends StatelessWidget {
  final _productimages = [
    "https://www.redwolf.in/image/catalog/marketplace/bingo-acha-aloo/king-couch-potato-t-shirt-india.jpg",
    "https://ih1.redbubble.net/image.1126856604.9989/ssrco,slim_fit_t_shirt,flatlay,101010:01c5ca27c6,front,wide_portrait,750x1000-bg,f8f8f8.jpg",
    "https://m.media-amazon.com/images/I/61gqx7hslmL._UX569_.jpg",
    "https://img.freepik.com/premium-psd/two-mugs-blue-background-mockup_125540-1433.jpg?w=2000",
    "https://images.unsplash.com/photo-1618517351616-38fb9c5210c6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8YmxhY2slMjB0JTIwc2hpcnR8ZW58MHx8MHx8&w=1000&q=80",
    //  "https://cdn.shopify.com/s/files/1/1002/7150/products/New-Mockups---no-hanger---TShirt-I-am-back.jpg?v=1619267537",///
    "https://mydukaan.s3.amazonaws.com/3377706/fd293b93-ebac-449c-a718-157df6bdbf99/whatsapp-image-2021-03-24-at-2-5be36ae9-cfff-4f42-a5dc-9e41b677771c.jpeg"
  ];

  final _productsnames = [
    "Couch Potato|Women",
    "Couch Potato|Black|Men",
    "Couch Potato|Yellow Tshirts",
    "Combo MuG |Black",
    "Couch Potato|grey",
    "Mug |Orchard"
  ];

  final _productrate = [
    "₹599",
    "₹699",
    "₹499",
    "₹399",
    "₹299",
    "₹299",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      color: Color.fromARGB(255, 239, 235, 235),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5),
            child: ListView.builder(
                itemBuilder: ((context, index) => Card(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30)),
                        height: 167,
                        width: 200,
                        child: Stack(
                          children: [
                            imaged(
                              productimage: _productimages[index],
                              productname: _productsnames[index],
                              productrate: _productrate[index],
                            )
                          ],
                        ),
                      ),
                    )),
                /*  separatorBuilder: ((context, index) {
                  return Container(
                      color: Colors.white,
                      margin: EdgeInsets.only(bottom: 10),
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                          onPressed: () => print("name"),
                          icon: Icon(
                            Icons.share,
                            color: Color.fromARGB(255, 66, 65, 65),
                          ),
                          label: Text(
                            "Share Products",
                            style: TextStyle(
                                color: Color.fromARGB(255, 135, 132, 132)),
                          )));
                }),*/
                itemCount: _productsnames.length),
          ),
        ],
      ),
    );
  }
}
