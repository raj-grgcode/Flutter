import 'package:flutter/material.dart';

class BookingForm extends StatefulWidget {
  const BookingForm({super.key});

  @override
  State<BookingForm> createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();

  int seatCount = 1;
  String bookedName = "";

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // TextFormField with validation
          TextFormField(
            controller: nameController,
            decoration: const InputDecoration(labelText: "Passenger name"),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Name can't be empty";
              }
              return null;
            },
          ),
          const SizedBox(height: 16),

          // setState counter — seat count
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Seats: "),
              IconButton(
                onPressed: () {
                  setState(() {
                    if (seatCount > 1) seatCount--;
                  });
                },
                icon: const Icon(Icons.remove),
              ),
              Text("$seatCount", style: const TextStyle(fontSize: 18)),
              IconButton(
                onPressed: () {
                  setState(() {
                    seatCount++;
                  });
                },
                icon: const Icon(Icons.add),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Submit button — validates form, then updates state
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                setState(() {
                  bookedName = nameController.text;
                });
              }
            },
            child: const Text("Book Trip"),
          ),
          const SizedBox(height: 16),

          // Result, only shows after a successful booking
          if (bookedName.isNotEmpty)
            Text("Booked for $bookedName — $seatCount seat(s)"),
        ],
      ),
    );
  }
}
