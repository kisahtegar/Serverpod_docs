/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod_client/serverpod_client.dart' as _i1;

class WeatherInfo extends _i1.SerializableEntity {
  WeatherInfo({required this.temparature});

  factory WeatherInfo.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return WeatherInfo(
        temparature: serializationManager
            .deserialize<double>(jsonSerialization['temparature']));
  }

  double temparature;

  @override
  Map<String, dynamic> toJson() {
    return {'temparature': temparature};
  }
}
