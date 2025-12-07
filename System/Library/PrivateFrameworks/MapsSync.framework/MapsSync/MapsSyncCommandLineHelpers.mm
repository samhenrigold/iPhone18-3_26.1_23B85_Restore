@interface MapsSyncCommandLineHelpers
+ (NSString)contactHandleKey;
+ (NSString)coreDataScheme;
+ (NSString)dateFormat;
+ (NSString)identifierKey;
+ (NSString)legacyMapItemStorageKey;
+ (NSString)legacyObjectPrefix;
+ (NSString)legacyRelationshipsFetchKey;
+ (NSString)legacyRelationshipsIdentifierKey;
+ (NSString)legacyRelationshipsKey;
+ (NSString)legacyRelationshipsObjectKey;
+ (NSString)mixinMapItemEntityNameKey;
+ (NSString)mixinMapItemStorageKey;
+ (NSString)objectIdKey;
- (_TtC8MapsSync26MapsSyncCommandLineHelpers)init;
- (id)dictionaryFrom:(id)from;
- (id)managedObjectWithEntityName:(id)name from:(id)from in:(id)in;
- (void)coreDataStackWithDatabaseURL:(NSURL *)l completionHandler:(id)handler;
- (void)deleteObjectWithUrl:(NSURL *)url identifier:(NSUUID *)identifier managedObjectId:(NSURL *)id completionHandler:(id)handler;
- (void)exportDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler;
- (void)getCountsWithUrl:(NSURL *)url completionHandler:(id)handler;
- (void)importDatabaseWithUrl:(NSURL *)url dictionary:(NSDictionary *)dictionary completionHandler:(id)handler;
- (void)purgeDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler;
- (void)setupRelationshipsFrom:(id)from in:(id)in clearExisting:(BOOL)existing;
@end

@implementation MapsSyncCommandLineHelpers

+ (NSString)dateFormat
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)coreDataScheme
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)objectIdKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)identifierKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)contactHandleKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyObjectPrefix
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsFetchKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsIdentifierKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyRelationshipsObjectKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)legacyMapItemStorageKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)mixinMapItemEntityNameKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

+ (NSString)mixinMapItemStorageKey
{
  v2 = sub_1B63BEBC4();

  return v2;
}

- (void)exportDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = url;
  v13[3] = name;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B63BED34();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C6498;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B63C64A0;
  v16[5] = v15;
  urlCopy = url;
  nameCopy = name;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v11, &unk_1B63C64A8, v16);
}

- (void)importDatabaseWithUrl:(NSURL *)url dictionary:(NSDictionary *)dictionary completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = url;
  v13[3] = dictionary;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B63BED34();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C6478;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B63C6480;
  v16[5] = v15;
  urlCopy = url;
  dictionaryCopy = dictionary;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v11, &unk_1B63C6488, v16);
}

- (void)getCountsWithUrl:(NSURL *)url completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = url;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C6458;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C6460;
  v14[5] = v13;
  urlCopy = url;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C6468, v14);
}

- (void)purgeDatabaseWithUrl:(NSURL *)url entityName:(NSString *)name completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = url;
  v13[3] = name;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B63BED34();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C6438;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B63C6440;
  v16[5] = v15;
  urlCopy = url;
  nameCopy = name;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v11, &unk_1B63C6448, v16);
}

- (void)deleteObjectWithUrl:(NSURL *)url identifier:(NSUUID *)identifier managedObjectId:(NSURL *)id completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = url;
  v15[3] = identifier;
  v15[4] = id;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1B63BED34();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B63C6418;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B63C6420;
  v18[5] = v17;
  urlCopy = url;
  identifierCopy = identifier;
  idCopy = id;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v13, &unk_1B63C6428, v18);
}

- (id)dictionaryFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1B6389CF4(fromCopy);

  v6 = sub_1B63BEB54();

  return v6;
}

- (id)managedObjectWithEntityName:(id)name from:(id)from in:(id)in
{
  v7 = sub_1B63BEBD4();
  v9 = v8;
  v10 = sub_1B63BEB74();
  inCopy = in;
  selfCopy = self;
  v13 = sub_1B638A994(v7, v9, v10, inCopy);

  return v13;
}

- (void)setupRelationshipsFrom:(id)from in:(id)in clearExisting:(BOOL)existing
{
  existingCopy = existing;
  v8 = sub_1B63BEB74();
  inCopy = in;
  selfCopy = self;
  sub_1B63929BC(v8, inCopy, existingCopy);
}

- (void)coreDataStackWithDatabaseURL:(NSURL *)l completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = l;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C6408;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C5510;
  v14[5] = v13;
  lCopy = l;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C5120, v14);
}

- (_TtC8MapsSync26MapsSyncCommandLineHelpers)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MapsSyncCommandLineHelpers();
  return [(MapsSyncCommandLineHelpers *)&v3 init];
}

@end