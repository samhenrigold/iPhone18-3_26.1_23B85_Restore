@interface MSCollectionPlaceItemRequest
- (MSCollectionPlaceItemRequest)init;
- (MSCollectionPlaceItemRequest)initWithStore:(id)store;
- (id)fetchSyncAndReturnError:(id *)error;
- (id)fetchSyncWithOptions:(id)options error:(id *)error;
- (void)fetchWithCompletionHandler:(id)handler;
- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler;
- (void)fetchWithSearchTerm:(NSString *)term sortDescriptors:(NSArray *)descriptors range:(_TtC8MapsSync13MapsSyncRange *)range completionHandler:(id)handler;
@end

@implementation MSCollectionPlaceItemRequest

- (MSCollectionPlaceItemRequest)init
{
  if (qword_1EDB0F2A0 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v3 = qword_1EDB0F2A8;

  return [(MSCollectionPlaceItemRequest *)self initWithStore:v3];
}

- (MSCollectionPlaceItemRequest)initWithStore:(id)store
{
  v5 = type metadata accessor for CollectionPlaceItem(0);
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__store) = store;
  *(&self->super.super.isa + OBJC_IVAR____TtC8MapsSync15MapsSyncRequest__type) = v5;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsSyncRequest();
  storeCopy = store;
  return [(MapsSyncRequest *)&v8 init];
}

- (void)fetchWithCompletionHandler:(id)handler
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
  v11[4] = &unk_1B63C55B0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C5530;
  v12[5] = v11;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v7, &unk_1B63C5320, v12);
}

- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler
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
  v13[4] = &unk_1B63C55A0;
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

- (void)fetchWithSearchTerm:(NSString *)term sortDescriptors:(NSArray *)descriptors range:(_TtC8MapsSync13MapsSyncRange *)range completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = term;
  v15[3] = descriptors;
  v15[4] = range;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_1B63BED34();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1B63C4BB0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1B63C5510;
  v18[5] = v17;
  termCopy = term;
  descriptorsCopy = descriptors;
  rangeCopy = range;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v13, &unk_1B63C5120, v18);
}

- (id)fetchSyncAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1B635AAB0(0, v4);

  type metadata accessor for CollectionPlaceItem(0);
  v5 = sub_1B63BEC94();

  return v5;
}

- (id)fetchSyncWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  selfCopy = self;
  sub_1B635AAB0(options, v8);

  type metadata accessor for CollectionPlaceItem(0);
  v9 = sub_1B63BEC94();

  return v9;
}

@end