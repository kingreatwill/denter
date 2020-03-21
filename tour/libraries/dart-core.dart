import 'dart:io';
import 'dart:convert';
import 'dart:async';

import 'package:args/args.dart';

const lineNumber = 'line-number';

ArgResults argResults;

void main(List<String> arguments) {
  exitCode = 0; //presume success
  final parser = new ArgParser()..addFlag(lineNumber, negatable: false, abbr: 'n');

  argResults = parser.parse(arguments);
  List<String> paths = argResults.rest;

  dcat(paths, argResults[lineNumber]);
}

Future dcat(List<String> paths, bool showLineNumbers) async {
  if (paths.isEmpty) {
    // No files provided as arguments. Read from stdin and print each line.
    stdin.pipe(stdout);
  } else {
    for (var path in paths) {
      int lineNumber = 1;
      Stream lines = new File(path)
          .openRead()
          .transform(utf8.decoder)
          .transform(const LineSplitter());
      try {
        await for (var line in lines) {
          if (showLineNumbers) {
            stdout.write('${lineNumber++} ');
          }
          stdout.writeln(line);
        }
      } catch (_) {
        _handleError(path);
      }
    }
  }
}

Future _handleError(String path) async {
  if (await FileSystemEntity.isDirectory(path)) {
    stderr.writeln('error: $path is a directory');
  } else {
    exitCode = 2;
  }
}