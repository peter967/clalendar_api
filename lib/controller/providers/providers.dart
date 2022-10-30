import 'package:clalendar_api/controller/Api/api.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final provider = Provider<Api>((_) => Api());
final dataProvider =
    FutureProvider((ref) async => ref.watch(provider).getData());
