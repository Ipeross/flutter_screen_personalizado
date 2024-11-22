import 'package:flutter/material.dart';

import 'detailed_list_screen.dart'; // Asegúrate de que este import apunta a donde está DetailedListScreen.

class Listview2Screen extends StatelessWidget {
  final options = const [
    {
      'name': 'Targaryen',
      'descripcion':
          'Los Targaryen son una antigua y poderosa casa noble de Westeros, conocida por su sangre valyria y su conexión con los dragones. Gobernaron los Siete Reinos durante casi 300 años después de la Conquista de Aegon. Su lema es Fuego y Sangre, y destacan por su cabello plateado y ojos violeta, rasgos distintivos de su linaje valyrio.',
      'imageUrl': 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/004d960f-9616-46fc-b086-ef939001e3e3/d5a4a34-d61dead1-0b44-443b-8bae-80a2532e0ad8.png/v1/fill/w_1024,h_725,q_80,strp/house_of_targaryen_logo_by_metgod_d5a4a34-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NzI1IiwicGF0aCI6IlwvZlwvMDA0ZDk2MGYtOTYxNi00NmZjLWIwODYtZWY5MzkwMDFlM2UzXC9kNWE0YTM0LWQ2MWRlYWQxLTBiNDQtNDQzYi04YmFlLTgwYTI1MzJlMGFkOC5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.Rq-i3lWB_it2jrQrsrYCcuPGnMc7BLqNuOYfiwntvMc',
    },
    {
      'name': 'Stark',
      'descripcion':
          'Los Stark son una casa noble del Norte de Westeros, conocida por su honor y lealtad. Gobernantes de Invernalia, su lema es "Se acerca el invierno", reflejando su preparación y resiliencia ante tiempos difíciles. Los Stark tienen una fuerte conexión con los lobos huargos, que son su emblema, y son reconocidos por su sentido del deber y justicia.',
      'imageUrl': 'https://static1.srcdn.com/wordpress/wp-content/uploads/house-stark-sigil-winter-is-coming.jpg?q=50&fit=crop&w=1140&h=&dpr=1.5',
    },
    {
      'name': 'Lannister',
      'descripcion':
          'Los Lannister son una poderosa casa de las Tierras del Oeste, conocidos por su riqueza derivada de sus minas de oro. Gobernantes de Roca Casterly, su lema no oficial, "Un Lannister siempre paga sus deudas", subraya su orgullo y determinación. Con un león como emblema, son astutos, ambiciosos y expertos en política y manipulación.',
      'imageUrl': 'https://i0.wp.com/xn--lacompaialibredebraavos-yhc.com/wp-content/uploads/2017/06/Game-of-Thrones-House-Lannister-Sigils-Wallpaper.jpg?fit=1024%2C663&ssl=1',
    },
    {
      'name': 'Baratheon',
      'descripcion':
          'Los Baratheon son una casa de las Tierras de la Tormenta, reconocidos por su fuerza y temperamento. Gobernantes de Bastión de Tormentas, su lema es "Nuestra es la furia", reflejando su naturaleza apasionada y decidida. Con un ciervo coronado como emblema, son guerreros formidables y líderes por derecho de conquista.',
      'imageUrl': 'https://images5.fanpop.com/image/photos/29900000/House-a-song-of-ice-and-fire-29965901-1920-1080.jpg',
    }
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Listview Tipo 2'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final casa = options[index];
          return ListTile(
            trailing: const Icon(Icons.arrow_forward_ios_outlined),
            title: Text(casa['name']!), // Accedemos a 'name'
            onTap: () {
              // Navegar a DetailedListScreen pasando los datos de la casa
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailedListScreen(
                    name: casa['name']!,
                    description: casa['descripcion']!,
                    imageUrl: casa['imageUrl']!, // Puede ser un string vacío
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
