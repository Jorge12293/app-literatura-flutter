import 'package:app_arwise/src/domain/class/content.dart';
import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  Content content;
  ExamplePage({required this.content});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 1),
          SizedBox(
            height: MediaQuery.of(context).size.height * 1,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                const Card(
                  elevation: 3,
                  color: Colors.white,
                  child: Center(
                    child: Text('EJEMPLOS',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 23),
                        textAlign: TextAlign.center),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                (widget.content.urlExample != null)
                ?ClipRect(
                  child: SizedBox(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.65,
                  child:FadeInImage(
                    placeholder: const AssetImage('assets/img/jar-loading.gif'),
                    image: NetworkImage(widget.content.urlExample.toString()),
                  )),
                )
                :Column(
                  children: [
                    Center(child: Text('No hay imagen'.toUpperCase(),style:const TextStyle(fontWeight: FontWeight.bold))),
                    ClipRect(
                      child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.65,
                      child:const Image(image: AssetImage('assets/img/no-image.png'))
                    ))
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_amarilla.png'),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_rosa.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_verde.png'),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_rosa.png'),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 80,
              width: 80,
              child: Image.asset('assets/img/logos/esquina_azul.png'),
            ),
          ),
          Positioned(
              bottom: 60,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('BACK <'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side:
                              const BorderSide(width: 4.0, color: Colors.black),
                        ),
                        backgroundColor: const Color(0xfffcd24f),
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text('START'),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          side:
                              const BorderSide(width: 4.0, color: Colors.black),
                        ),
                        backgroundColor: const Color(0xfffcd24f),
                        foregroundColor: Colors.black,
                        textStyle: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
