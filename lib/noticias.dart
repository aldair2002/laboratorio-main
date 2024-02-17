import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Noticias'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SizedBox(height: 16.0),
          NoticiaCard(
            titulo: 'Feria de Tecnología',
            fecha: '16 de febrero 2024',
            contenido:
                'Esta es tu oportunidad.',
            imagenUrl: 'https://forbes.es/wp-content/uploads/2022/11/tecnologia-cambio-futuro-humano.jpg',
          ),
        ],
      ),
    );
  }
}

class NoticiaCard extends StatelessWidget {
  final String titulo;
  final String fecha;
  final String contenido;
  final String imagenUrl;

  const NoticiaCard({
    required this.titulo,
    required this.fecha,
    required this.contenido,
    required this.imagenUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titulo,
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    fecha,
                    style: TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text(
                    contenido,
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.0),
            Image.network(
              imagenUrl,
              width: 80.0,
              height: 80.0,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
