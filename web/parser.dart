import 'opcodes.dart';

class Parser {
  static List<String> registers_flags = [
    'ax',
    'bx',
    'cx',
    'dx',
    'ip',
    'sp',
    'eq',
    'gt',
    'lt',
    'jp',
    'dz',
    'ov'
  ];

  static bool isAddress(String arg) {
    if (arg.contains(RegExp("[0-9a-f]{1,2}h"))) {
      return true;
    }
    return false;
  }

  static bool isRegisterFlag(String arg) {
    if (registers_flags.contains(arg)) {
      return true;
    }
    return false;
  }

  static List<List<int>> parse(String source) {
    source = source.toLowerCase();
    source = source.replaceAll(RegExp(r"\s+"), " ");
    List<String> instructions = s.split(" ");

    int position = 0;

    List<List<int>> parsed = [];

    while (position < instructions.length) {
      var token = instructions[position];
      switch (token) {
        case 'nop':
          parsed.add([Opcodes.nop.index]);
          position++;
          break;
        case 'hlt':
          parsed.add([Opcodes.hlt.index]);
          position++;
          break;
      }
    }
  }
}
