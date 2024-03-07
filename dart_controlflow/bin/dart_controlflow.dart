import 'package:dart_controlflow/dart_controlflow.dart' as dart_controlflow;

void main() {
  dart_controlflow.myNumber('1');

  var patient = dart_controlflow.Patient();

  patient.id = 1;
  patient.firstName = 'John';
  patient.lastName = 'Doe';
  patient.age = 23;
  patient.sex = 'Male';
  patient.address = '123 Main St';
  patient.phoneNumber = '123-456-7890';

  patient.patientInfo();

  print(dart_controlflow.Patient.classInfo);
}
