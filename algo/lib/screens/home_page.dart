import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: 
      SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              MyCard(
                title: 'Capítulo 1: El Comienzo de Steve', 
                text: 'En un vasto mundo lleno de posibilidades, Steve despertó en un claro rodeado de árboles altos y montañas distantes. Sin recuerdos de cómo llegó allí, decidió que su primera misión sería sobrevivir. Recolectó madera de los árboles cercanos, construyó herramientas básicas y se aventuró en busca de comida. Al caer la noche, con solo una pequeña cabaña de madera para protegerlo, Steve escuchó los aterradores sonidos de criaturas acercándose: zombies, esqueletos, y lo peor de todo, los escalofriantes sonidos de los creepers. Esa noche, Steve comprendió que su viaje sería peligroso y lleno de desafíos.', 
                imageSource: 'assets/img/nostalgia.jpeg',
                showImageFirst: true,
              ),
              MyCard(
                title: 'Capítulo 2: El Viaje Subterráneo', 
                text: 'Con el amanecer, Steve supo que necesitaba recursos más valiosos para prosperar. Decidió cavar una mina en busca de carbón, hierro y tal vez, si tenía suerte, diamantes. Cuanto más profundizaba, más oscuros y peligrosos se volvían los túneles. Se enfrentó a enjambres de arañas y esquivó lava burbujeante. Finalmente, en las profundidades de la tierra, encontró su primera veta de diamantes. El brillo azul de las piedras lo llenó de esperanza. Sin embargo, también despertó algo más profundo, un portal olvidado y sellado durante siglos.', 
                imageSource: 'assets/img/cave.jpeg',
                showImageFirst: false,
              ),
              MyCard(
                title: 'Capítulo 3: El Portal al Nether', 
                text: 'Siguiendo su instinto, Steve utilizó los materiales que recolectó para construir un portal al Nether. El inquietante zumbido del portal lo llenó de dudas, pero su curiosidad era mayor. Al cruzar, se encontró en un paisaje infernal, donde ríos de lava fluían y criaturas hostiles como los ghasts y piglins deambulaban. Aquí, Steve buscó fortaleza, enfrentándose a peligros inimaginables para recolectar varas de Blaze y Nether Wart, materiales necesarios para crear pociones poderosas. Con los recursos en mano, regresó al mundo normal, pero no sin antes notar una figura sombría observándolo desde la distancia.', 
                imageSource: 'assets/img/nether.jpeg',
                showImageFirst: true,
              ),
              MyCard(
                title: 'Capítulo 4: El Misterio de la Ender Pearl', 
                text: 'De regreso en su mundo, Steve sabía que su próximo objetivo era encontrar una fortaleza del Fin. Pero para activar el portal, necesitaba ojos de Ender, creados a partir de perlas de Enderman y polvo de Blaze. Steve viajó por desiertos y junglas, cazando a las elusivas criaturas conocidas como Enderman. Cada perla que obtenía lo acercaba más a su destino, pero también aumentaba la sensación de que estaba siendo observado. En uno de sus enfrentamientos, un Enderman dejó caer una perla diferente, una que parecía resonar con una energía oscura y desconocida.', 
                imageSource: 'assets/img/enderman.jpeg',
                showImageFirst: false,
              ),
              MyCard(
                title: 'Capítulo 5: El Dragón del End', 
                text: 'Finalmente, con todos los ojos de Ender en su poder, Steve localizó la fortaleza del Fin. Descendió a las oscuras y húmedas mazmorras hasta encontrar el portal al Fin. Con un nerviosismo creciente, activó el portal y saltó al vacío. Al llegar, fue recibido por el rugido atronador del dragón del End. Armado con su espada de diamante y pociones, Steve destruyó los cristales que curaban al dragón y se enfrentó a la bestia en una batalla épica. Con su último golpe, el dragón cayó, liberando una explosión de experiencia y revelando un huevo misterioso. Pero su victoria fue breve, ya que la figura sombría del Nether apareció de nuevo, más cerca que nunca.', 
                imageSource: 'assets/img/end.png',
                showImageFirst: true,
              ),
              MyCard(
                title: 'Capítulo 6: El Verdadero Enemigo', 
                text: 'Steve, ahora un héroe en su mundo, sabía que la figura que lo había estado siguiendo representaba una amenaza mayor que cualquier criatura que había enfrentado. Regresó al Nether, siguiendo las huellas de la sombra. En lo más profundo del Nether, encontró una antigua ciudad olvidada, donde la figura finalmente se reveló: Herobrine, un ser legendario con poderes que rivalizaban con los suyos. La batalla que siguió fue feroz y devastadora, pero con su ingenio y valentía, Steve logró derrotar a Herobrine, sellando su poder para siempre. Sin embargo, sabía que su mundo siempre estaría lleno de misterios y desafíos, y que su aventura apenas comenzaba.', 
                imageSource: 'assets/img/herobrine.png',
                showImageFirst: false,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String title;
  final String text;
  final String imageSource;
  // final Color containerColor;
  final bool showImageFirst;

  const MyCard({
    super.key,
    required this.title,
    required this.text,
    required this.imageSource,
    required this.showImageFirst,
    // required this.containerColor,
  });

@override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0,5,0,5),
      width: double.infinity,
      height: 200,
      // color: containerColor,
      // padding: const EdgeInsets.all(8),
      child: SingleChildScrollView(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: showImageFirst == true ?
          [
            Container(
              width: 200,
              height: 200,
              // color: Colors.amberAccent,
              child: Image.asset(
                  imageSource,
                  width: 200,
                  height: 200,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(5),
              height: 200,
              width: 200,
              // color: Colors.brown,
              child: ListView(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  Text(
                    text,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            )
          ] :
          [
            Container(
              padding: const EdgeInsets.all(5),
              height: 200,
              width: 200,
              // color: Colors.brown,
              child: ListView(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold
                      ),
                    ),
                  Text(
                    text,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontSize: 10,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 200,
              height: 200,
              // color: Colors.amberAccent,
              child: Image.asset(
                  imageSource,
                  width: 200,
                  height: 200,
              ),
            ),
          ],
        ),
      )
    );
  }
}