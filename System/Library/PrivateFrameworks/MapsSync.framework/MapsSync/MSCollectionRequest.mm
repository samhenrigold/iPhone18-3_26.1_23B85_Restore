@interface MSCollectionRequest
- (MSCollectionRequest)init;
- (MSCollectionRequest)initWithStore:(id)store;
- (id)fetchSyncAndReturnError:(id *)error;
- (id)fetchSyncWithOptions:(id)options error:(id *)error;
- (void)fetchWithCompletionHandler:(id)handler;
- (void)fetchWithOptions:(_TtC8MapsSync20MapsSyncQueryOptions *)options completionHandler:(id)handler;
@end

@implementation MSCollectionRequest

- (MSCollectionRequest)init
{
  if (qword_1EDB0F2A0 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v3 = qword_1EDB0F2A8;

  return [(MSCollectionRequest *)self initWithStore:v3];
}

- (MSCollectionRequest)initWithStore:(id)store
{
  v5 = type metadata accessor for Collection(0);
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
  v11[4] = &unk_1B63C5628;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B63C5530;
  v12[5] = v11;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v7, &unk_1B63C5320, v12);
}

- (id)fetchSyncAndReturnError:(id *)error
{
  selfCopy = self;
  sub_1B635B1B8(0, v4);

  type metadata accessor for Collection(0);
  v5 = sub_1B63BEC94();

  return v5;
}

- (id)fetchSyncWithOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  selfCopy = self;
  sub_1B635B1B8(options, v8);

  type metadata accessor for Collection(0);
  v9 = sub_1B63BEC94();

  return v9;
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
  v13[4] = &unk_1B63C5618;
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

@end