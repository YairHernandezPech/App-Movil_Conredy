import 'package:conredy/models/barraNotifications.dart';
import 'package:conredy/src/home.dart';
import 'package:flutter/material.dart';

final items = ['DZITYÁ', 'CONCAL', 'CAULCEL', 'CHOLUL', 'CHABLECAL', 'KANAZIN'];
var dia = DateTime.now();
var mostrar = print("Año: ${dia.year} - Mes: ${dia.month} - Dia: ${dia.day}");

class Pago extends StatefulWidget {
  const Pago({super.key});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  State<Pago> createState() => _PagoState();
}

class _PagoState extends State<Pago> {
  String dropdownValue = items.first;

  String? value;

  int _activeCurrenStep = 0;

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController addres = TextEditingController();
  TextEditingController pinCode = TextEditingController();
  TextEditingController numero = TextEditingController();

  List<Step> stepList() {
    return [
      Step(
        state: _activeCurrenStep <= 0 ? StepState.editing : StepState.complete,
        isActive: _activeCurrenStep >= 0,
        title: const Flexible(
          child: Text('Servicio'),
        ),
        content: Container(
          child: Column(
            children: [
              const Text('Selecione en donde quiere su casa'),
              DropdownButton<String>(
                borderRadius: BorderRadius.circular(12),
                value: dropdownValue,
                iconSize: 36,
                icon: const Icon(
                  Icons.arrow_drop_down,
                  color: Colors.blue,
                ),
                isExpanded: true,
                items: items.map(buildMenuItem).toList(),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingrese su numero de targeta',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text("Total a pagar: 167,262,42"),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
      Step(
        state: _activeCurrenStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrenStep >= 1,
        title: const Text('Verifique su cuenta de banco'),
        content: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: addres,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre/s',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: pinCode,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Apellidos',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Fecha de compra: 23/11/2022'),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('Tiempo de plazo de entrega: 1 semana'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Step(
        state: _activeCurrenStep <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeCurrenStep >= 1,
        title: const Text('Contacto'),
        content: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: numero,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingrese su numero de telefono',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text(
                        'En caso de no recibir nunguna llamada marque al siguiente numero'),
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Text('9991997636'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      Step(
        state: StepState.complete,
        isActive: _activeCurrenStep >= 2,
        title: const Text('Estado de la compra: '),
        content: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text('!Felicidades La casa ya es tuya'),
            ],
          ),
        ),
      ),
      Step(
        state: StepState.complete,
        isActive: _activeCurrenStep >= 2,
        title: const Text('Compra finalizada'),
        content: ElevatedButton(
          onPressed: () {
            showNotificacion();
          },
          style: TextButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 61, 129, 198),
          ),
          child: const Text(
            "Listo",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          'Compra de la casa',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Stepper(
        currentStep: _activeCurrenStep,
        steps: stepList(),
        onStepContinue: () {
          if (_activeCurrenStep < (stepList().length - 1)) {
            setState(() {
              _activeCurrenStep += 1;
            });
          }
        },
        onStepCancel: () {
          if (_activeCurrenStep == 0) {
            return;
          }
          setState(() {
            _activeCurrenStep -= 1;
          });
        },
        onStepTapped: (int index) {
          setState(() {
            _activeCurrenStep = index;
          });
        },
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: const TextStyle(
              fontWeight: FontWeight.normal, fontSize: 16, color: Colors.black),
        ),
      );
}
