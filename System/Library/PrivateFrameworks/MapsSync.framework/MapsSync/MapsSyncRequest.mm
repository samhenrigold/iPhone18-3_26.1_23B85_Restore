@interface MapsSyncRequest
- (_TtC8MapsSync15MapsSyncRequest)init;
- (void)batchDeleteWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler;
- (void)batchUpdateWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options propertiesToUpdate:(NSDictionary *)update completionHandler:(id)handler;
- (void)countWithCompletionHandler:(id)handler;
- (void)countWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler;
- (void)fetchPropertiesWithOptions:(_TtC8MapsSync30MapsSyncDictionaryQueryOptions *)options completionHandler:(id)handler;
@end

@implementation MapsSyncRequest

- (void)countWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B63BED34();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B63C7198;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C71A0;
  v12[5] = v11;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v7, &unk_1B63C71A8, v12);
}

- (void)countWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C7178;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C7180;
  v14[5] = v13;
  optionsCopy = options;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C7188, v14);
}

- (void)fetchPropertiesWithOptions:(_TtC8MapsSync30MapsSyncDictionaryQueryOptions *)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C7158;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C7160;
  v14[5] = v13;
  optionsCopy = options;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C7168, v14);
}

- (void)batchUpdateWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options propertiesToUpdate:(NSDictionary *)update completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = options;
  v13[3] = update;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1B63BED34();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1B63C7138;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1B63C7140;
  v16[5] = v15;
  optionsCopy = options;
  updateCopy = update;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v11, &unk_1B63C7148, v16);
}

- (void)batchDeleteWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = options;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C7118;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C5510;
  v14[5] = v13;
  optionsCopy = options;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C5120, v14);
}

- (_TtC8MapsSync15MapsSyncRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end