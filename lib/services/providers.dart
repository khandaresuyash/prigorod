import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:prigorod/domain/user/model.dart';

final userProvider = StateProvider<User>((ref) => const Customer(
    id: "id",
    phone_number: "phone_number",
    name: "name",
    city: "city",
    village: "village"));
