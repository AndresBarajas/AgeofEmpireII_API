
import 'package:api_barajas/Model/civilization_model.dart';
import 'package:api_barajas/Provider/provider_civilization.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final _providerCivilization = ProviderCivilization();
  @override
  Widget build(BuildContext context) {
    ThemeData(primaryColor: Colors.pink);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age of Empire-Civilizations'), backgroundColor: Colors.purple[500],),
      backgroundColor: Colors.pink[100],
      body: FutureBuilder(
        future: _providerCivilization.obtenerCivilizations(),
        builder:
         (BuildContext context, AsyncSnapshot<List<CivilizationModel>> snapShot){
           final listCivilization = snapShot.data;
        if(snapShot.hasData){
                  return ListView.builder( 
                    itemCount:  listCivilization!.length ,
                     itemBuilder: (BuildContext context, int i){
                       final civilization = listCivilization [i];
                       return _DesignCivilizations(civilization);
                     });
        } else {
         return Center(child: CircularProgressIndicator());
        }
        },
      ),
    );
  }  
}


class _DesignCivilizations extends StatelessWidget{
  final CivilizationModel civilization;
  _DesignCivilizations(this.civilization);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ()=>Navigator.pushNamed(context, '/details', arguments: civilization),
      title: Text(civilization.name!),
      subtitle: Text(civilization.expansion!),
      trailing: Icon(Icons.remove_red_eye_rounded,),
      
    );
  }
}