import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool inProgress = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          toolbarHeight: 29,
          leading: Image.network('https://i.ibb.co/xskgzfs/User-icon.jpg'),
          title: const Text('MEDICINE',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
          actions: [
            Image.network('https://i.ibb.co/HrmZXVv/Cart-Icon.jpg')
          ],
        ),
        body: inProgress  ? Center(child: CircularProgressIndicator(),) : SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20,right: 27,left: 10),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                  width: MediaQuery.sizeOf(context).width,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search Medicine & Health Products',
                      suffixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 18,),
                Stack(
                  children: [
                    Container(
                    height: 155,
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      color: Colors.deepPurple[200]
                    ),
                  ),
                    const Positioned(
                      top: 17,
                      right: 133,
                      left: 24,
                      child: SizedBox(
                        height: 25,
                        width: 230,
                        child: Text('UPLOAD PRESCRIPTION',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Positioned(
                      top: 45,
                      right: 112,
                      left: 24,
                      child: Container(
                        height: 50,
                        width: 250,
                        child: const Text('Upload a Prescription and Tell Us what you Need. We do the Rest.!',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Positioned(
                      top: 105,
                      // right: 254,
                      left: 24,
                      bottom: 18,
                      child: Container(
                        height: 3,
                        width: 108,
                        child: const Text('Flat 25% off on Medicines*',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),),
                      ),
                    ),
                    Positioned(
                      top: 95,
                      right: 24,
                      bottom: 18,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                        onPressed: (){},
                        child: const Text('Order Now',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w600),),

                      ),
                    ),

                  ]
                ),
                const SizedBox(height: 20,),
                ///2nd Container
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Stack(alignment: Alignment.topLeft,
                        children: [
                          Container(
                          height: 185,
                          width: MediaQuery.sizeOf(context).width-60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            color: Colors.green[200]
                          ),
                        ),
                          const Positioned(
                            top: 15,
                            right: 133,
                            left: 38,
                            child: SizedBox(
                              height: 52,
                              width: 93,
                              child: Text('80%',style: TextStyle(fontSize: 41,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          const Positioned(
                            top: 59,
                            // right: 112,
                            left: 84,
                            child: SizedBox(
                              height: 13,
                              width: 42,
                              child: Text('OFFER',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          const Positioned(
                            top: 72,
                            // right: 254,
                            left: 24,
                            // bottom: 18,
                            child: SizedBox(
                              height: 18,
                              width: 142,
                              child: Text('On Health Products',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                            ),
                          ),
                          Positioned(
                            top: 102,
                            left: 24,
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                onPressed: (){},
                                child: const Text('Shop Now',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w600),),

                              ),

                          ),
                          const Positioned(
                            bottom: 10,
                            left: 24,
                            child: SizedBox(
                              height: 28,
                              width: 142,
                              child: Text('Homeopathy, Ayurvedic, Personal Care & More',style: TextStyle(fontSize: 10,),),
                            ),

                          ),
                           Positioned(
                            bottom: 18,
                            right: 11,
                            child: Container(
                              height: 95,
                              width: 100,
                              decoration: const BoxDecoration(
                                image: DecorationImage(image: NetworkImage('https://i.ibb.co/60kpF2F/image-2-removebg-preview.png'),fit: BoxFit.cover),
                              ),
                            ),
                          ),
                        ]
                      ),
                      const SizedBox(width: 5,),
                      Stack(alignment: Alignment.topLeft,
                          children: [
                            Container(
                              height: 185,
                              width: MediaQuery.sizeOf(context).width-60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.deepOrange[200]
                              ),
                            ),
                            const Positioned(
                              top: 15,
                              right: 133,
                              left: 38,
                              child: SizedBox(
                                height: 52,
                                width: 93,
                                child: Text('60%',style: TextStyle(fontSize: 41,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            const Positioned(
                              top: 59,
                              // right: 112,
                              left: 84,
                              child: SizedBox(
                                height: 13,
                                width: 42,
                                child: Text('OFFER',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            const Positioned(
                              top: 72,
                              // right: 254,
                              left: 24,
                              // bottom: 18,
                              child: SizedBox(
                                height: 18,
                                width: 142,
                                child: Text('On Health Products',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Positioned(
                              top: 102,
                              left: 24,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                onPressed: (){},
                                child: const Text('Shop Now',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w600),),

                              ),

                            ),
                            const Positioned(
                              bottom: 10,
                              left: 24,
                              child: SizedBox(
                                height: 28,
                                width: 142,
                                child: Text('Homeopathy, Ayurvedic, Personal Care & More',style: TextStyle(fontSize: 10,),),
                              ),

                            ),
                            Positioned(
                              bottom: 18,
                              right: 11,
                              child: Container(
                                height: 95,
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: NetworkImage('https://i.ibb.co/60kpF2F/image-2-removebg-preview.png'),fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ]
                      ),
                      const SizedBox(width: 5,),
                      Stack(alignment: Alignment.topLeft,
                          children: [
                            Container(
                              height: 185,
                              width: MediaQuery.sizeOf(context).width-60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.yellow[200]
                              ),
                            ),
                            const Positioned(
                              top: 15,
                              right: 133,
                              left: 38,
                              child: SizedBox(
                                height: 52,
                                width: 93,
                                child: Text('50%',style: TextStyle(fontSize: 41,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            const Positioned(
                              top: 59,
                              // right: 112,
                              left: 84,
                              child: SizedBox(
                                height: 13,
                                width: 42,
                                child: Text('OFFER',style: TextStyle(fontSize: 11,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            const Positioned(
                              top: 72,
                              // right: 254,
                              left: 24,
                              // bottom: 18,
                              child: SizedBox(
                                height: 18,
                                width: 142,
                                child: Text('On Health Products',style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                              ),
                            ),
                            Positioned(
                              top: 102,
                              left: 24,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                                onPressed: (){},
                                child: const Text('Shop Now',style: TextStyle(color: Colors.white,fontSize: 15,fontWeight:FontWeight.w600),),

                              ),

                            ),
                            const Positioned(
                              bottom: 10,
                              left: 24,
                              child: SizedBox(
                                height: 28,
                                width: 142,
                                child: Text('Homeopathy, Ayurvedic, Personal Care & More',style: TextStyle(fontSize: 10,),),
                              ),

                            ),
                            Positioned(
                              bottom: 18,
                              right: 11,
                              child: Container(
                                height: 95,
                                width: 100,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(image: NetworkImage('https://i.ibb.co/60kpF2F/image-2-removebg-preview.png'),fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ]
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,),
                ///New Container Start
                SizedBox(
                  height: 27,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text('Popular Categories',style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 9.0),
                            child: TextButton(onPressed: (){}, child: const Text('See All',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)),
                          ),
                          IconButton(onPressed: (){}, icon: const Icon(Icons.navigate_next))
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 390,
                  width: MediaQuery.sizeOf(context).width,
                  color: Colors.white70,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                children: [
                                  const SizedBox(
                                  width: 120,
                                  height: 166,
                                ),
                                  Positioned(
                                    top: 19,
                                    left: 16,
                                    child: SizedBox(
                                    width: 88,
                                    height: 88,
                                    child: Image.network('https://i.ibb.co/WKGdQvq/image-3.jpg'),                                   ),
                                  ),
                                  const Positioned(
                                    top: 128,
                                    left: 19,
                                    child: SizedBox(
                                    width: 84,
                                    height: 40,
                                    child: Text('Nutritional Drinks',style: TextStyle(fontSize: 14,fontWeight:  FontWeight.bold),),
                                    ),
                                  ),
                          ]
                              ),
                              /// 2nd con
                              Stack(
                                children: [
                                  const SizedBox(
                                  width: 120,
                                  height: 166,
                                ),
                                  Positioned(
                                    top: 19,
                                    left: 16,
                                    child: SizedBox(
                                    width: 88,
                                    height: 88,
                                    child: Image.network('https://i.ibb.co/r2whyVQ/image-4.jpg'),                                   ),
                                  ),
                                  const Positioned(
                                    top: 128,
                                    left: 19,
                                    child: SizedBox(
                                    width: 84,
                                    height: 40,
                                    child: Text('Ayurveda',style: TextStyle(fontSize: 14,fontWeight:  FontWeight.bold),),
                                    ),
                                  ),
                          ]
                              ),
                            //   3rd
                              Stack(
                                  children: [
                                    const SizedBox(
                                      width: 120,
                                      height: 166,
                                    ),
                                    Positioned(
                                      top: 19,
                                      left: 16,
                                      child: SizedBox(
                                        width: 88,
                                        height: 88,
                                        child: Image.network('https://i.ibb.co/Df8DbRc/03.jpg'),                                   ),
                                    ),
                                    const Positioned(
                                      top: 128,
                                      left: 19,
                                      child: SizedBox(
                                        width: 84,
                                        height: 40,
                                        child: Text('Vitamins & Supplement',style: TextStyle(fontSize: 14,fontWeight:  FontWeight.bold),),
                                      ),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Stack(
                                  children: [
                                    const SizedBox(
                                      width: 120,
                                      height: 166,
                                    ),
                                    Positioned(
                                      top: 19,
                                      left: 16,
                                      child: SizedBox(
                                        width: 88,
                                        height: 88,
                                        child: Image.network('https://i.ibb.co/rsL2hMH/04-1.jpg'),                                   ),
                                    ),
                                    const Positioned(
                                      top: 128,
                                      left: 19,
                                      child: SizedBox(
                                        width: 84,
                                        height: 40,
                                        child: Text('Nutritional ',style: TextStyle(fontSize: 14,fontWeight:  FontWeight.bold),),
                                      ),
                                    ),
                                  ]
                              ),
                              /// 2nd con
                              Stack(
                                  children: [
                                    const SizedBox(
                                      width: 120,
                                      height: 166,
                                    ),
                                    Positioned(
                                      top: 19,
                                      left: 16,
                                      child: SizedBox(
                                        width: 88,
                                        height: 88,
                                        child: Image.network('https://i.ibb.co/bz39Knr/05-1.jpg'),                                   ),
                                    ),
                                    const Positioned(
                                      top: 128,
                                      left: 19,
                                      child: SizedBox(
                                        width: 84,
                                        height: 40,
                                        child: Text('Ayurveda',style: TextStyle(fontSize: 14,fontWeight:  FontWeight.bold),),
                                      ),
                                    ),
                                  ]
                              ),
                              //   3rd
                              Stack(
                                  children: [
                                    const SizedBox(
                                      width: 120,
                                      height: 166,
                                    ),
                                    Positioned(
                                      top: 19,
                                      left: 16,
                                      child: SizedBox(
                                        width: 88,
                                        height: 88,
                                        child: Image.network('https://i.ibb.co/j5nYvVs/06.jpg'),                                   ),
                                    ),
                                    const Positioned(
                                      top: 128,
                                      left: 19,
                                      child: SizedBox(
                                        width: 84,
                                        height: 40,
                                        child: Text('??',style: TextStyle(fontSize: 14,fontWeight:  FontWeight.bold),),
                                      ),
                                    ),
                                  ]
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("Next Screen"))
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.network('https://i.ibb.co/ThYF83v/01.jpg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.network('https://i.ibb.co/ckXNGM0/02.jpg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.network('https://i.ibb.co/vJmZyNZ/03-1.jpg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.network('https://i.ibb.co/2SwFy2q/04.jpg'),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Image.network('https://i.ibb.co/SXFCB5v/05.jpg'),
              label: '',
            ),

          ],
          selectedItemColor: Colors.blue,
        ),
      ),
    );
  }
}
