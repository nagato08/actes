import 'package:flutter/material.dart';
class FoireQuestions extends StatelessWidget {
  const FoireQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation:0,
        backgroundColor: Colors.grey,
        title: Text("Foire aux questions",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
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

      body:const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("Qui peut passer les commandes de documents administratifs en ligne ?",
              style: TextStyle(decoration: TextDecoration.underline,fontSize: 15,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15,),
            Text("Les documents ne pourront être donnés qu’aux personnes concernées qui ont la majorité, leurs parents directs (liens de sang ou de mariage) ou tuteur légal ou mandataire pouvant produire la preuve au retrait conformément aux articles 31 et 52 des lois N° 64-374 et N° 83-799 relatives à l’Etat Civil.",
            ),
            SizedBox(height: 20,),
            Text("Quel est le délai moyen de traitement ?",
              style: TextStyle(decoration: TextDecoration.underline,fontSize: 15,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15,),
            Text("Compte tenu des délais de traitement et d’acheminement postal si vous indiquez avec précision la date (jour-mois-année) de l’acte civil ou les références des autres documents vous les recevrez au plus tard dans 05 jours. Si votre demande n’est pas précise des recherches sont nécessaires et le traitement de votre demande peut mettre plus de temps.",
            ),
            SizedBox(height: 20,),
            Text("Peut-on recevoir les documents à domicile ?",
              style: TextStyle(decoration: TextDecoration.underline,fontSize: 15,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15,),
            Text("Oui cela est possible en choisissant l’option courrier express ou porte à porte à la commande. Ce service vous sera facturé en option à un coût supplémentaire qui vous sera précisé en fonction du lieu de livraison.",
            ),
            SizedBox(height: 20,),
            Text("Quelles sont les mentions devant figures dans un acte de naissance?",
              style: TextStyle(decoration: TextDecoration.underline,fontSize: 15,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15,),
            Text("L’acte de naissance contient l’ensemble des informations de natures juridique et administrative relatives à l’enfant. Pour ce fait, il comporte :Le nom familial qui au Cameroun est généralement celui du père de l’enfant, un prénoms, la date et le lieu de naissance de l’enfant."
                "Les noms de famille, les prénoms, les professions, et les dates de naissance des parents, sans oublier leurs adresses et régime matrimoniaux.\nCependant, la survenance d’un événement peut modifier ou compléter certaines mentions de l’acte de naissance. ceux si pourront par la suite changer la situation juridique ou familiale de son titulaire. Le législateur Camerounais veut que ces modifications et ajouts soient reportés à marge de l’acte de naissance."
                "\nCes éléments portés sur la marge sont entre autre un changement de nom de famille ou de prénom, un changement du régime matrimonial, un mariage, un divorce ou une séparation des corps des parents, la reconnaissance d’ un enfant.",
            ),
            SizedBox(height: 20,),
            Text("Quel est la demarche a suivre pour etablir un acte de naissance?",
              style: TextStyle(decoration: TextDecoration.underline,fontSize: 15,fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 15,),
            Text("Au Cameroun, l’acte de naissance est établit lors de la déclaration de naissance ce qui signifie donc que pour que l’enfant ait un acte de naissance, il faut nécessairement la présence d’ une personne ayant assisté a l’accouchement qui est le plus souvent me père."
                "\nLa déclaration se fait a la mairie du lieu de naissance ou directement à l’hôpital si la structure assure une permanence de l’officier d’état civil au sein de son service de maternité. En déclarant la naissance il doit se munir pour cela :"
                "\nDes pièces d’identité des parents"
                "\nDu certificat de naissance établit par le médecin ou la sage femme."
                "\nUne fois la naissance de l’enfant déclarée, son acte de naissance doit être immédiatement rédigé. Le législateur camerounais donne un délais maximum de 90 jours à compté du jour de naissance pour l’établissement du dit document. Passer ce délai il suivra une procédure particulière. Une copie originale de l’acte de naissance est alors établie et remis aux parents pour qu’ils puissent faire certaines démarches administratives."
                "\nUne souche serra conservé à la mairie ou l’acte à été établit, un autre au niveau du centre d’état civil régional et la dernière au niveau national. Ce qui signifie qu’en cas de perte, vol, ou de détérioration, l’intéressé peut se rendre dans l’un des trois point cités afin de se faire établir un autre acte de naissance ayant les même coordonnées que la précédente."
            ),
          ],
        ),
      ),
    );
  }
}
