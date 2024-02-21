
import 'package:hive/hive.dart';

import '../home/myClasses.dart';

class MyListAdapter extends TypeAdapter<MyList> {
  @override
  final int typeId = 1;

  @override
  MyList read(BinaryReader reader) {
    return MyList(
      img: reader.read(),
      title: reader.read(),
      subtitle: reader.read(),
    );
  }

  @override
  void write(BinaryWriter writer, MyList obj) {
    writer.write(obj.img);
    writer.write(obj.title);
    writer.write(obj.subtitle);
  }
}
