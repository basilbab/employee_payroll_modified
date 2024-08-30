import 'dart:ffi';

import 'package:employee_payroll_modified/domain/employee.dart';
import 'package:flutter/material.dart';

class ScreenPayroll extends StatefulWidget {
  final String employeeName;
  final String employeeID;
  final String emplooyeeDepartment;
  final String employeeEmail;
  final String employeeMobile;
  final String employeeGender;
  final String employeeAddress;
  final String employeeBasicPay;
  const ScreenPayroll(
      {super.key,
      required this.employeeName,
      required this.employeeID,
      required this.emplooyeeDepartment,
      required this.employeeEmail,
      required this.employeeGender,
      required this.employeeAddress,
      required this.employeeMobile,
      required this.employeeBasicPay});

  @override
  State<ScreenPayroll> createState() => _ScreenPayrollState();
}

class _ScreenPayrollState extends State<ScreenPayroll> {
  late double da, hra, ta, netSal = 0;
  @override
  void calculateNetSalary() {
    int basicPay = int.parse((widget.employeeBasicPay));
    da = da = basicPay * 0.2;
    hra = basicPay * .11;
    ta = basicPay * .3;
    setState(() {
      netSal = basicPay + da + hra + ta;
    });
  }

  @override
  void initState() {
    calculateNetSalary();
    super.initState();
  }

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
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Employee Name: ${widget.employeeName}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Text(
                'Employee ID: ${widget.employeeID}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Text(
                'Employee Department: ${widget.emplooyeeDepartment}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Text(
                'Employee Email: ${widget.employeeEmail}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Text(
                'Employee Gender: ${widget.employeeGender}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              const Text(
                'Employee DOB: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Text(
                'Employee Mobile: ${widget.employeeMobile}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Text(
                'Employee Address: ${widget.employeeAddress}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Text(
                'Basic Pay: ${widget.employeeBasicPay}',
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              const Text(
                'DA: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              const Text(
                'HRA: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              const Text(
                'TA: Dummy Data',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              const Divider(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                    child: Text(
                  'Net Salary $netSal',
                  style: const TextStyle(
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
