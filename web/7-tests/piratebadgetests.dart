import 'package:unittest/unittest.dart';
import 'package:unittest/vm_config.dart';

void main() {
  useVMConfiguration();
  
  test('QuickSort', () =>
    expect(quickSort([5, 4, 3, 2, 1]),
      orderedEquals([1, 2, 3, 4, 5]))
  );
  
  test('Partition', () {
    List array = [3, 2, 1];
    int index = _partition(array, 0, array.length-1, 1);
    // NOTE: 2 expects
    expect(index, equals(1));
    expect(array, orderedEquals([1, 2, 3]));
  });
}