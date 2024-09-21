import 'package:vma/core/models/pig.dart';
import 'package:vma/core/models/pig_health_status.dart';

class PigRepository {
  Future<List<Pig>> getAllPigs() async {
    List<Pig> pigList = [
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '1',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '2',
        breed: 'Pig 1',
        herdId: '1',
        cageId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.sick,
        nextVaccinationDate: DateTime.now(),
      ),
      Pig(
        id: '3',
        breed: 'Pig 1',
        herdId: '1',
        code: 'PIG0001',
        cageCode: 'CA1234',
        cageId: '1',
        weight: 1,
        height: 1,
        width: 1,
        lastUpdated: DateTime.now(),
        healthStatus: PigHealthStatus.normal,
        nextVaccinationDate: DateTime.now(),
      ),
    ];
    return Future.value(pigList);
  }
}
