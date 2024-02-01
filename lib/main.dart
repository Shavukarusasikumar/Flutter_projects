import 'package:flutter/material.dart';
// import 'package:dart_eval/dart_eval.dart';
import 'package:math_expressions/math_expressions.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,home: FS(),
    );
  }
}
class FS extends StatefulWidget {
  const FS({super.key});

  @override
  State<FS> createState() => _FSState();
}

class _FSState extends State<FS> {
  @override
  String n='';
  String x='';
  var l=['*','+','-','/','%'];
  var y='';
  double r=0;
  String fun(String n){
    Parser p=Parser();
    Expression exp=p.parse(n);
    ContextModel cm=ContextModel();
    r=exp.evaluate(EvaluationType.REAL, cm);
    n=r.toStringAsFixed(2);
    if (n.endsWith(".00")){
      n=n.substring(0,n.length-3);
    }
    // x=n;
    y=n;
    return y;
  }
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(title: Text('Calculator',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),centerTitle: true,backgroundColor: Colors.black,),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 200,width: 380,
              child: Align(alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Text(x,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(y,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.white),),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Container(height: 80,width: 80,decoration: BoxDecoration(
                      shape: BoxShape.circle,color: Colors.white
                  ),
                    child: Center(child: InkWell(onTap: (){
                      n='';
                      x='';
                      y='';
                      setState(() {

                      });
                    },
                        child: Text('AC',style: TextStyle(fontSize: 40,color: Colors.black,fontWeight: FontWeight.bold),))),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.white
                    ),
                      child: Center(child:Text('%',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    // fun(n);
                    String tmp=n.substring(0,n.length-1);
                    String tmp1=x.substring(0,n.length-1);

                    n=tmp;
                    x=tmp1;
                    // fun(n);
                    setState(() {

                    });

                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.white
                    ),
                      child: Center(child:Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text('←',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black),),
                      )),



                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    var l1=n.split('');
                    var x1=x.split('');
                    if (n=='') n='';
                    else if(l.contains(l1[l1.length-1])){
                      l1[l1.length-1]='/';
                      x1[l1.length-1]='÷';
                      n=l1.join('');
                      x=x1.join('');
                    }
                    else {
                      n += '/';
                      x+='÷';
                      //asasqs
                    }
                    setState(()
                    {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.orange
                    ),
                      child: Center(child:Text('÷',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),

                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='7';
                    x+='7';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child: Text('7',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='8';
                    x+='8';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child:Text('8',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='9';
                    x+='9';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child:Text('9',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    var l1=n.split('');
                    var x1=x.split('');
                    if (n=='') n='';
                    else if(l.contains(l1[l1.length-1])){
                      l1[l1.length-1]='*';
                      x1[x1.length-1]='×';
                      n=l1.join('');
                      x=x1.join('');
                    }
                    else {
                      n += '*';
                      x+='×';
                    }
                    setState(()
                    {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.orange
                    ),
                      child: Center(child:Text('×',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                      ),

                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='4';
                    x+='4';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child: Text('4',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='5';
                    x+='5';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child:Text('5',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),

                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='6';
                    x+='6';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child:Text('6',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),



                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    var l1=n.split('');
                    var x1=x.split('');
                    if (n=='') {
                      n +='-';
                      x+='-';
                    }
                    else if(l.contains(l1[l1.length-1])){
                      l1[l1.length-1]='-';
                      x1[x1.length-1]='-';
                      n=l1.join('');
                      x=x1.join('');
                    }
                    else {
                      n+='-';
                      x+='-';
                    }
                    setState(()
                    {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.orange
                    ),
                      child: Center(child:Text('-',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),

                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='1';
                    x+='1';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child: Text('1',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    n+='2';
                    x+='2';
                    fun(n);
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child:Text('2',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(
                    onTap: (){
                      n+='3';
                      x+='3';
                      fun(n);
                      setState(() {

                      });
                    },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child:Text('3',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    var l1=n.split('');
                    var x1=x.split('');
                    if (n=='') n='';
                    else if(l.contains(l1[l1.length-1])){
                      l1[l1.length-1]='+';
                      x1[x1.length-1]='+';
                      n=l1.join('');
                      x=x1.join('');
                    }
                    else {
                      n+='+';
                      x+='+';
                    }

                    setState(()
                    {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.orange
                    ),
                      child: Center(child:Text('+',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                      ),

                    ),
                  ),
                ),

              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 5),
            child: Row(
              children: [
                InkWell(onTap:(){
                  n+='00';
                  x+='00';
                  fun(n);
                  setState(() {

                  });
                },
                  child: SizedBox(
                    height: 80,width: 80,
                    child: Card(color: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      child: Center(child: Text('00',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),

                InkWell(onTap:(){
                  n+='0';
                  x+='0';
                  setState(() {

                  });
                },
                  child: SizedBox(
                    height: 80,width: 80,
                    child: Card(color: Colors.grey.shade800,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                      child: Center(child: Text('0',style: TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    var l1=n.split('');
                    var x1=x.split('');
                    if (n==''){
                      x+='';
                      n+='';
                    }
                    else if(l1[l1.length-1]=='.'){
                      x=x;
                      n=n;
                    }
                    else {
                      n += '.';
                      x += '.';
                    }
                    setState(() {

                    });
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.grey.shade800
                    ),
                      child: Center(child:Text('.',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)),


                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: InkWell(onTap: (){
                    y=x;
                    fun(n);
                    setState(() {

                    });

                    print(n.substring(n.length-2,n.length-1));
                  },
                    child: Container(height: 80,width: 80,decoration: BoxDecoration(
                        shape: BoxShape.circle,color: Colors.orange
                    ),
                      child: Center(child:Text('=',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                      ),

                    ),
                  ),
                ),
              ],
            ),
          )

        ],
      ),
    );
  }
}