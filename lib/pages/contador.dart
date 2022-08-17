import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  const Contador({Key? key}) : super(key: key);
  _ContadorState createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  int count = 0;

  bool get isEmpty => count == 0;
  bool get isFull => count == 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/images/image.jpg'),
              fit: BoxFit.cover,
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  isFull ? 'Não pode entrar!' : 'Pode entar!',
                  style: TextStyle(
                    color: isFull ? Colors.yellowAccent : Colors.white,
                    //color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  count.toString(),
                  style: TextStyle(
                    color: isFull ? Colors.red : Colors.white,
                    fontSize: 45,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                const SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: isEmpty
                              ? Colors.white.withOpacity(0.2)
                              : Colors.white,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: isEmpty
                            ? null
                            : () {
                                setState(() {
                                  count--;
                                });
                                //print(count);
                              },
                        child: Text("Saiu",
                            style: TextStyle(
                                color: isEmpty
                                    ? Colors.white.withOpacity(0.2)
                                    : Colors.black,
                                fontSize: 25))),
                    const SizedBox(
                      width: 60,
                    ),
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: isFull
                              ? Colors.white.withOpacity(0.2)
                              : Colors.white,
                          fixedSize: const Size(100, 100),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24),
                          ),
                        ),
                        onPressed: isFull
                            ? null
                            : () {
                                setState(() {
                                  count++;
                                  //clients.add(_controller.text);
                                  //print(clients);
                                });
                              },
                        child: Text("Entrou",
                            style: TextStyle(
                                color: isFull
                                    ? Colors.white.withOpacity(0.2)
                                    : Colors.black,
                                fontSize: 25))),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    isFull
                        ? Text("O contador atingiu seu limite!",
                            style: TextStyle(
                              color: Colors.yellow,
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                            ))
                        : Text(""),
                  ],
                ),
              ],
            )));
  }
}
