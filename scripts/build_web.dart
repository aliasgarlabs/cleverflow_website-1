import 'dart:io';
import 'package:path/path.dart' as path;
import 'package:process_run/shell.dart';
void main() async {
  Shell shell = Shell();
  await shell.run('flutter build web');
  // Delete public folder if exists
  if(Directory('docs').existsSync()) {
    Directory('docs').deleteSync(recursive: true);
  }
  // Create public folder
  Directory('docs').createSync();
  // Copy assets to the newly built build folder
  await copyDirectory(Directory('assets'), Directory('build/web/assets'));
  // Copy all build files to public folder
  await copyDirectory(Directory('build/web'), Directory('docs'));

  // Create CNAME file
  File cnameFile = await File('docs/CNAME').create();

  // Write the subdomain to the CNAME file
  await cnameFile.writeAsString('beta.cleverflowhq.com');
  
  // Success
  print('Build for web success.');
}
Future<void> copyDirectory(Directory source, Directory destination) async {
  await for (var entity in source.list(recursive: false)) {
    if (entity is Directory) {
      var newDirectory =
      Directory(path.join(destination.absolute.path, path.basename(entity.path)));
      await newDirectory.create();
      await copyDirectory(entity.absolute, newDirectory);
    } else if (entity is File) {
      await entity.copy(path.join(destination.path, path.basename(entity.path)));
    }
  }
}
