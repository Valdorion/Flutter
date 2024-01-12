import 'package:flutter/material.dart';
import '';
import 'package:provider/provider.dart';

import '../bo/cart.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Finalisation de la commande"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        //une zone récapitulatif de la commande
        //avec le sous total
        //vous économisez
        //le montant de la TVA
        //le montant total
        child: Consumer<Cart>(
          builder: (context, cart, _) => Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Récapitulatif de la commande", style:
                      const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                      Text("Sous-Total"),
                      Text("Vous économisez"),
                      Text("TVA"),
                      Text(
                        "Total",
                        style:
                        const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(""),
                      Text("${cart.priceTotalInEuro()}€"),
                      Text("0.00€"),
                      Text("${cart.priceTotalInEuroTVA()}€"),
                      Text("${cart.priceTotalInEuroAvecTVA()}€")
                    ],
                  ),
                ]),
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            Text("Address de livraison" , style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            //une zone de saisie de l'adresse de livraison
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: const Text("Adresse de livraison"),
                subtitle: const Text("Adresse de livraison"),
                trailing:Icon(Icons.arrow_forward)
              ),
            ),
            Padding(padding: const EdgeInsets.only(top: 20)),
            //une zone de saisie de la methode de paiement
            Text("Méthode de paiement", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
            Row(
              children: [
                Row(
                  children: [
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Image.network("https://w7.pngwing.com/pngs/385/158/png-transparent-apple-card-credit-logo-logos-pay-logos-and-brands-icon.png"),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 30)),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Image.network("https://static-00.iconduck.com/assets.00/visa-credit-card-icon-2048x1594-k6qhfifi.png"),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 30)),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Image.network("https://static-00.iconduck.com/assets.00/mastercard-icon-2048x1286-s6y46dfh.png"),
                        onPressed: () {},
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(left: 30)),
                    Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: Image.network("https://static-00.iconduck.com/assets.00/credit-card-paypal-icon-2048x1366-6m4r1boi.png"),
                        onPressed: () {},
                      ),
                    )
                  ],
                )
              ],
            ),
            Spacer(),
            Text("En cliquant sur 'Confirmer l'achat', vous acceptez les conditions générales de vente de EPSI Shop International. Besoind'aide ? Désolé on peut rien faire."),
            Text("En poursuivant, vous acceptez les Conditions d'utilisation du fournisseur de paiement CoffeeDis."),
            TextButton(
              style: TextButton.styleFrom(
                fixedSize: Size.fromWidth(350),
                textStyle: const TextStyle(fontSize: 20),
                foregroundColor: Colors.white,
                backgroundColor: Theme.of(context).colorScheme.primary,
              ),
              child: const Text("Confirmer l'achat"),
              onPressed: () {},
            ),
          ]),
        ),





        //une zone de texte informant des condition de paiement

        //bouton de confirmation d'achat
      ),
    );
  }
}
