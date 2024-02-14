import 'package:flutter/material.dart';
import 'package:foodflutter/Screens/CustomWidgets/ListTile.dart';
import 'package:foodflutter/Screens/CustomWidgets/Style.dart';
import 'package:foodflutter/Screens/CustomWidgets/circleAvatar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [Icon(Icons.qr_code)],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(
                  width: 50,
                  height: 50,
                  child: circleAvatar(
                      'https://imagensfree.com.br/wp-content/uploads/2021/11/icone-ifood-preto-300x300.png'),
                ),
                const SizedBox(width: 18),
                Text('Nicão Mygo', style: textRobotoBold(16)),
              ],
            ),
          ),
          listTile(Icons.message, 'Conversas', 'Meu histórico de conversas'),
          const Divider(),
          listTile(Icons.notifications, 'Notificações', 'Minha central de notificações'),
          const Divider(),
          listTile(Icons.payment, 'Pagamentos', 'Meus saldos e cartões'),
          const Divider(),
          listTile(Icons.store, 'Assinaturas', 'Minhas assinaturas'),
          const Divider(),
          listTile(Icons.loyalty, 'Clube aiFood', 'Meus benefícios exclusivos'),
          const Divider(),
          listTile(Icons.local_offer, 'Cupons', 'Meus cupons de desconto'),
          const Divider(),
          listTile(Icons.card_giftcard, 'aiFood Cart', 'Minha área de compras e resgates'),
          const Divider(),
          listTile(Icons.loyalty, 'Fidelidade', 'Minhas fidelidades'),
          const Divider(),
          listTile(Icons.favorite, 'Favoritos', 'Meus restaurantes favoritos'),
          const Divider(),
          listTile(Icons.explore, 'Descobrir', 'Encontre novidades quentinhas'),
          const Divider(),
          listTile(Icons.location_on, 'Endereços', 'Meus endereços de entrega'),
          const Divider(),
          listTile(Icons.account_circle, 'Dados da Conta', 'Minhas informações da conta')
    
        ],
      ),
    );
  }
}
