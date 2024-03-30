import 'package:flutter/material.dart';
class Termes extends StatelessWidget {
  const Termes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.grey,
        title:const Text("Conditions d'utilisations",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
        centerTitle: true,
        leading: IconButton(
          icon:const Icon(
            Icons.close,
            color: Colors.black,
            size: 30,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Conditions legales",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,decoration: TextDecoration.underline),),
            Text("Mentions obligatoires",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,decoration: TextDecoration.underline),),
            SizedBox(height: 15,),
            Text("Les présentes conditions générales d’utilisation ont pour objet l’encadrement juridique des modalités de mise à disposition des services de l’application DocsCivil CI et leur utilisation par « l’Utilisateur »."
            ),
            SizedBox(height: 15,),
            Text("Les conditions générales d’utilisation doivent être acceptées par tout Utilisateur souhaitant accéder à l’application. Elles constituent le contrat entre l’application et l’Utilisateur. L’accès à l’application par l’Utilisateur signifie son acceptation des présentes conditions générales d’utilisation."
            ),
            SizedBox(height: 15,),
            Text("En cas de non-acceptation des conditions générales d’utilisation stipulées dans le présent contrat, l’Utilisateur se doit de renoncer à l’accès des services proposés par l’application.\nDocsCivil CI se réserve le droit de modifier unilatéralement et à tout moment le contenu des présentes conditions générales d’utilisation"
            ),
            SizedBox(height:20 ,),
            Text("Conditions generales d'utilisation",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,decoration: TextDecoration.underline),),
            SizedBox(height: 15,),
            Text("l’application DocsCivil CI est par principe accessible aux utilisateurs 24/24h, 7/7j, sauf interruption, programmée ou non, pour les besoins de sa maintenance ou cas de force majeure. En cas d’impossibilité d’accès au service, DocsCivil CI s’engage à faire son maximum afin de rétablir l’accès au service et s’efforcera alors de communiquer préalablement aux utilisateurs les dates et heures de l’intervention. N’étant soumis qu’à une obligation de moyen, DocsCivil CI ne saurait être tenu pour responsable de tout dommage, quelle qu’en soit la nature, résultant d’une indisponibilité du service."
            ),
            SizedBox(height: 15,),
            Text("Compte tenu des délais de traitement et d’acheminement postal si vous indiquez avec précision la date (jour-mois-année) de l’acte civil ou les références des autres documents vous les recevrez au plus tard dans 05 jours. Si votre demande n’est pas précise des recherches sont nécessaires et le traitement de votre demande peut mettre plus de temps"
            ),

          ],
        ),
      ),
    );
  }
}
