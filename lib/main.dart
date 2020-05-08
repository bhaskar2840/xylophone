import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void soundPlay(int soundno) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/note$soundno.wav"),
    );}
  Expanded buildKey({Color color, int soundno}){return Expanded(child:FlatButton(
                color:color,
                onPressed: () {
                  soundPlay(soundno);
                }, child:Text(''),
                
              ),);}
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[ buildKey(color:Colors.red,soundno:1),
                        buildKey(color:Colors.orange,soundno:2),
                        buildKey(color:Colors.yellow,soundno:3),
                        buildKey(color:Colors.green,soundno:4),
                        buildKey(color:Colors.teal,soundno:5),
                        buildKey(color:Colors.blue,soundno:6),
                        buildKey(color:Colors.indigo,soundno:7),
                        buildKey(color:Colors.purple,soundno:1), 
            
                   
                        ],
                      ),
                    ),
                  ),
                );
              }
            }
            
            

