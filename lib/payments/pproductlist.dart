import 'package:flutter/material.dart';
import 'package:m_kart/payments/payimages/payimages.dart';
import 'package:m_kart/payments/reaproductlist.dart';

class PproductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 500,
        width: double.infinity,
        color: Color.fromARGB(255, 255, 255, 255),
        child: ListView.builder(
            itemCount: 1,
            itemBuilder: ((context, index) {
              return Card(
                child: Container(
                  child: Column(
                    children: [
                      reaprolist(
                          netimag:
                              "https://www.redwolf.in/image/catalog/marketplace/bingo-acha-aloo/king-couch-potato-t-shirt-india.jpg",
                          recode: " ₹799 desposit to 51555555511",
                          retitile: "Order#54545",
                          retsub: "Jul 12,02:06PM",
                          retprize: "₹999"),
                      reaprolist(
                          netimag:
                              "https://ih1.redbubble.net/image.1126856604.9989/ssrco,slim_fit_t_shirt,flatlay,101010:01c5ca27c6,front,wide_portrait,750x1000-bg,f8f8f8.jpg",
                          recode: " ₹399 desposit to 51555555511",
                          retitile: "Order#1554654",
                          retsub: "May 25,12:06PM",
                          retprize: "₹899"),
                      reaprolist(
                          netimag:
                              "https://m.media-amazon.com/images/I/61gqx7hslmL._UX569_.jpg",
                          recode: " ₹599 desposit to 51555555511",
                          retitile: "Order#165654654",
                          retsub: "june 05,06:42 Am",
                          retprize: "₹299"),
                      reaprolist(
                          netimag:
                              "https://img.freepik.com/premium-psd/two-mugs-blue-background-mockup_125540-1433.jpg?w=2000",
                          recode: " ₹299 desposit to 51555555511",
                          retitile: "Order#84484",
                          retsub: "Dec 16,08:42Pm",
                          retprize: "₹499")
                    ],
                  ),
                ),
              );
            })),
      ),
    );
  }
}
/*class PproductList extends StatelessWidget {
  /*Widget cont1({double? hit, double? wid, dynamic c1image}) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Container(
        height: hit!,
        width: wid!,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: Colors.grey),
            borderRadius: BorderRadius.circular(30),
            color: Color.fromARGB(255, 247, 247, 247)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image(
            height: 20,
            width: 20,
            image: NetworkImage(c1image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  Widget cont2({double? hit2, double? wid2, String? c2tittle, String? c2time}) {
    return Padding(
      padding: EdgeInsets.only(left: 0),
      child: Container(
        height: hit2!,
        width: wid2!,
        color: Color.fromARGB(255, 255, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              c2tittle!,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(
              height: 10,
            ),
            Text(c2time!),
          ],
        ),
      ),
    );
  }

  Widget cont3({double? hit3, double? wid3, String? c3name}) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Container(
        height: hit3!,
        width: wid3!,
        color: Color.fromARGB(255, 255, 255, 255),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              c3name!,
              style: TextStyle(
                  color: Color.fromARGB(
                    255,
                    0,
                    140,
                    255,
                  ),
                  fontWeight: FontWeight.bold),
            ),
            TextButton.icon(
                onPressed: () => print("name"),
                icon: Icon(
                  Icons.circle,
                  color: Color.fromARGB(255, 0, 255, 8),
                ),
                label: Text(
                  "Succesful",
                  style: TextStyle(color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }

  */@override
  Widget build(BuildContext context) {
    return Container(
        child: Container(
            height: 500,
            width: double.infinity,
            color: Color.fromARGB(255, 255, 255, 255),
            child: ListView.separated(
                itemBuilder: ((context, index) {
                  final _data = payimages[index];

                  return Container(
                    height: 120,
                    width: 100,
                    color: Color.fromARGB(255, 0, 0, 0),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            cont1(hit: 80, wid: 80, c1image: _data),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 20,
                              width: 100,
                              color: Colors.green,
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 50),
                          child: cont2(
                              hit2: 200,
                              wid2: 150,
                              c2tittle: paynames[index],
                              c2time: paytimes[index]),
                        ),
                        cont3(hit3: 120, wid3: 130, c3name: payprize[index])
                      ],
                    ),
                  );
                }),
                separatorBuilder: (context, index) => Divider(
                      color: Colors.grey,
                      thickness: 0,
                    ),
                itemCount: payimages.length)));
  }
*/