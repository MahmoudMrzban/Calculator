import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});


  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  num num1=0;
  num num2=0;
  num res=0;
  String opp='';

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title:  const Text(
            'Calculator', 
            style: TextStyle(
              color: Colors.blueAccent,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
             Icon(
              Icons.calculate,
              size: 35,
              color: Colors.blueAccent,
            ),
            SizedBox(
              width: 90,
            )
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(35),
                child: Center(
                  child: Container(
                    width: 380,
                    height: 150,
                    color: Colors.blueGrey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       Container(
                        alignment: Alignment.center,
                        width: 75,
                        height: 90,
                        color: const Color.fromARGB(255, 228, 192, 179),
                        child: Text('$num1',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                        ),
                       ),
                       Container(
                        alignment: Alignment.center,
                        width: 45,
                        height: 50,
                        color: Colors.white,
                        child:  Text(' $opp ',
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                       ),
                       Container(
                        alignment: Alignment.center,
                        width: 75,
                        height: 90,
                        color: const Color.fromARGB(255, 228, 192, 179),
                        child:  Text('$num2',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                        ),
                       ),
                       const Text('=' ,
                       style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                       ),
                       ),
                       Container(
                        alignment: Alignment.center,
                        width: 75,
                        height: 90,
                        color: Colors.white,
                        child:  Text( ' $res',
                        style: const TextStyle(
                          fontSize: 30,
                        ),
                        ),
                       ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   IconButton(                
                color: Colors.blueAccent,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 228, 192, 60)),
                ),
                onPressed: (){
                  setState( (){
                    num1++;
                  }
                  );
                },
                 icon: const Icon(Icons.add),
                ),
                   const Text('First Number',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                  ),
                   ),
                IconButton(
                color: Colors.redAccent,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 228, 192, 60))
                ),
                onPressed: (){
                  setState( (){
                    num1--;
                  }
                  );
                },
                 icon: const Icon(Icons.remove),
                ),
                ]
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                color: Colors.blueAccent,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 228, 192, 60))
                ),
                onPressed: (){
                  setState( (){
                    num2++;
                  }
                  );
                },
                 icon: const Icon(Icons.add),
                ),
                  const Text('Second Number',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueGrey,
                  ),
                   ),
                IconButton(
                color: Colors.redAccent,
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color.fromRGBO(255, 228, 192, 60))
                ),
                onPressed: (){
                  setState( (){
                    num2--;
                  }
                  );
                },
                 icon: const Icon(Icons.remove),
                ),
                ]
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(230, 40)),
                    ),
                    onPressed: (){
                      setState(() {
                        res = num1+num2;
                        opp = '+';
                      });
                    }, child: const Text('Addition  +', 
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                    ),
                  ),
                  const SizedBox(
                  height: 15,
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(230, 40)),
                    ),
                    onPressed: (){
                      setState(() {
                        res = num1-num2;
                        opp = '-';
                      });
                    }, child: const Text('Subtraction  -', 
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                    ),
                  ),
                  const SizedBox(
                  height: 15,
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(230, 40)),
                    ),
                    onPressed: (){
                      setState(() {
                        res = num1*num2;
                        opp = '*';
                      });
                    }, child: const Text('Multiplication  *', 
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                    ),
                  ),
                  const SizedBox(
                  height: 15,
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      fixedSize: MaterialStatePropertyAll(Size(230, 40)),
                    ),
                    onPressed: (){
                      setState(() {
                        res = num1/num2;
                        opp = '÷';
                      });
                    }, child: const Text('Devision  ÷', 
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                    ),
                  ),
                  const SizedBox(
                  height: 30,
                  width: 350,
                  child: Divider(
                    color: Colors.black,
                  ),
                  ),
                  Container(
                    width: 130,
                    height: 130,
                    child: ElevatedButton(
                      onPressed: (){
                        setState(() {
                          num1 = 0;
                          num2 = 0;
                          res = 0;
                          opp = ' ';
                        });
                      }, child: const Text('Reset', 
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 30,
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      ),
    );
  }
}