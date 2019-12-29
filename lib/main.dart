import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:appdemo1/myui.dart';

void main() => runApp(new MyApp());

class RandomEnglishWords extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => RandomEnglishState();

}
class RandomEnglishState extends State<RandomEnglishWords>{
  final _words = <WordPair>[];
  final _checkWords = new Set<WordPair>();
  @override
  Widget build(BuildContext context) { 
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("List of english words"),
      ),
      body: new ListView.builder(itemBuilder: (context, index) {
        if(index >= _words.length){
          _words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_words[index],index);
      }),
    );
  }
  Widget _buildRow(WordPair wordPair ,int index){
    final color = index % 2 == 0 ? Colors.red : Colors.blue;
    final isChecked = _checkWords.contains(wordPair);
    return new ListTile(
      leading: Icon(isChecked ? Icons.check_box : Icons.check_box_outline_blank),
      trailing: Icon(Icons.remove_circle),
      title: Text(
        wordPair.asCamelCase,
        style: TextStyle(
            color: color,
            fontStyle: FontStyle.italic,
            fontSize: 20
        ),
      ),
      onTap: (){
        setState(() {
          if(isChecked){
            _checkWords.remove(wordPair);
          }else{
            _checkWords.add(wordPair);
          }
        });
      },
    );
  }
}



class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "This is my first app",
      home: Myui()
    );
  }
}