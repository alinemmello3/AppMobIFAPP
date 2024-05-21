 import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MobilidadeInternacional extends StatelessWidget {
  const MobilidadeInternacional({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Servidor / Estudante em Mobilidade Internacional'),
      ),
      body: const MobilidadeInternacionalState(),
    );
  }
}

class MobilidadeInternacionalState extends StatelessWidget {
  const MobilidadeInternacionalState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MobIFAPP'),
        automaticallyImplyLeading: false, // Remove o botão de voltar
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset(
                  'assets/images/itinerante.JPG',
                  width: 50,
                  height: 50,
                ),
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'MobIFAPP',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            const Divider(
              height: 2,
              color: Colors.black,
              thickness: 4,
              indent: 10,
              endIndent: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class MapaComMarcadores extends StatefulWidget {
  const MapaComMarcadores({Key? key}) : super(key: key);

  @override
  MapaComMarcadoresState createState() => MapaComMarcadoresState();
}

class MapaComMarcadoresState extends State<MapaComMarcadores> {
  late GoogleMapController mapController;

  final LatLng _centroMapa = const LatLng(-23.550520, -46.633308);
  final List<Marker> _markers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa com Marcadores'),
      ),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _centroMapa,
          zoom: 10.0,
        ),
        onMapCreated: (GoogleMapController controller) {
          mapController = controller;
          setState(() {
            _markers.add(
              const Marker(
                markerId: MarkerId('id_1'),
                position: LatLng(-23.550520, -46.633308),
                infoWindow: InfoWindow(
                  title: 'Marcador 1',
                  snippet: 'Descrição do marcador 1',
                ),
              ),
            );
          });
        },
        markers: Set.from(_markers),
      ),
    );
  }
}

void main() {
  runApp(const MaterialApp(
    home: MapaComMarcadores(),
  ));
}
