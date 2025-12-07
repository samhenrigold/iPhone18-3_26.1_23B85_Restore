@interface MapsSyncStore
+ (_TtC8MapsSync13MapsSyncStore)sharedStore;
+ (id)withStoreWithConfig:(id)config;
- (_TtC8MapsSync13MapsSyncStore)init;
- (_TtC8MapsSync13MapsSyncStore)initWithConfig:(id)config;
- (void)deleteWithObjects:(NSArray *)objects completionHandler:(id)handler;
- (void)resetContainer;
- (void)saveWithObjects:(NSArray *)objects completionHandler:(id)handler;
- (void)setConfig:(id)config;
- (void)subscribe:(id)subscribe;
- (void)unsubscribe:(id)unsubscribe;
- (void)withManagedObjects:(id)objects block:(id)block;
@end

@implementation MapsSyncStore

+ (_TtC8MapsSync13MapsSyncStore)sharedStore
{
  if (qword_1EDB0F2A0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB0F2A8;

  return v3;
}

- (void)subscribe:(id)subscribe
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B62814C0(subscribe, selfCopy, ObjectType);
  swift_unknownObjectRelease();
}

- (void)setConfig:(id)config
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config);
  *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config) = config;
  configCopy = config;
}

+ (id)withStoreWithConfig:(id)config
{
  v4 = type metadata accessor for MapsSyncStore();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates;
  configCopy = config;
  v5[v6] = MapsSyncShouldDeleteDuplicates();
  v8 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_containerInstanceLock;
  *&v5[v8] = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *&v5[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_inDevelopmentStorage] = MEMORY[0x1E69E7CC8];
  *&v5[OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config] = configCopy;
  v11.receiver = v5;
  v11.super_class = v4;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

- (_TtC8MapsSync13MapsSyncStore)initWithConfig:(id)config
{
  v4 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_shouldDeleteDuplicates;
  configCopy = config;
  *(&self->super.isa + v4) = MapsSyncShouldDeleteDuplicates();
  v6 = OBJC_IVAR____TtC8MapsSync13MapsSyncStore_containerInstanceLock;
  *(&self->super.isa + v6) = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_inDevelopmentStorage) = MEMORY[0x1E69E7CC8];
  *(&self->super.isa + OBJC_IVAR____TtC8MapsSync13MapsSyncStore_config) = configCopy;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MapsSyncStore();
  return [(MapsSyncStore *)&v8 init];
}

- (void)resetContainer
{
  if (qword_1EDB0F288 != -1)
  {
    swift_once();
  }

  v2 = sub_1B628170C(MEMORY[0x1E69E7CC0]);
  swift_beginAccess();
  off_1EDB0F290 = v2;
}

- (void)saveWithObjects:(NSArray *)objects completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = objects;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C61D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C61D8;
  v14[5] = v13;
  objectsCopy = objects;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C61E0, v14);
}

- (void)deleteWithObjects:(NSArray *)objects completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB943830, &qword_1B63C5100);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = objects;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1B63BED34();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1B63C61C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1B63C5510;
  v14[5] = v13;
  objectsCopy = objects;
  selfCopy = self;
  sub_1B63BBE9C(0, 0, v9, &unk_1B63C5120, v14);
}

- (void)withManagedObjects:(id)objects block:(id)block
{
  v5 = _Block_copy(block);
  type metadata accessor for MapsSyncObject(0);
  v6 = sub_1B63BECA4();
  _Block_copy(v5);
  selfCopy = self;
  sub_1B6382E28(v6, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)unsubscribe:(id)unsubscribe
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1B62814B4();
  sub_1B634C490(unsubscribe);

  sub_1B628276C();
  sub_1B634C490(unsubscribe);

  swift_unknownObjectRelease();
}

- (_TtC8MapsSync13MapsSyncStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end