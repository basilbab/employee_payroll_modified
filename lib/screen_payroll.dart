import 'package:flutter/material.dart';

class ScreenPayroll extends StatelessWidget {
  const ScreenPayroll({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pay Roll',
          style: TextStyle(
              fontSize: 23, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.purple,
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Employee Name: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee ID: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Department: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Email: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Gender: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee DOB: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Mobile: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Employee Address: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'Basic Pay: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'DA: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'HRA: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Text(
                'TA: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Divider(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                    child: Text(
                  'Net Salary 86000',
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.pink),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
