// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// DataGenerator
// **************************************************************************

// ignore_for_file: unused_local_variable, always_declare_return_types, non_constant_identifier_names
mixin _$UserModelAdapter on Repository<User> {
  @override
  Map<String, Map<String, Object>> relationshipsFor([User model]) => {
        'todos': {'type': 'todos', 'kind': 'HasMany', 'instance': model?.todos}
      };

  @override
  Map<String, Repository> get relatedRepositories =>
      {'todos': manager.locator<Repository<Todo>>()};

  @override
  localDeserialize(map, {metadata}) {
    for (var key in relationshipsFor().keys) {
      map[key] = {
        '_': [map[key], !map.containsKey(key), manager]
      };
    }
    return _$UserFromJson(map);
  }

  @override
  localSerialize(model) {
    final map = _$UserToJson(model);
    for (var e in relationshipsFor(model).entries) {
      map[e.key] = (e.value['instance'] as Relationship)?.toJson();
    }
    return map;
  }
}

class $UserRepository = Repository<User>
    with
        _$UserModelAdapter,
        RemoteAdapter<User>,
        WatchAdapter<User>,
        StandardJSONAdapter<User>,
        JSONPlaceholderAdapter<User>;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as int,
    name: json['name'] as String,
    todos: json['todos'] == null
        ? null
        : HasMany.fromJson(json['todos'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'todos': instance.todos,
    };
