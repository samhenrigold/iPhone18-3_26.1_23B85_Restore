@interface ContainerLock
- (NSOperationQueue)presentedItemOperationQueue;
- (NSURL)presentedItemURL;
- (_TtC18ComputationalGraph13ContainerLock)init;
- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler;
@end

@implementation ContainerLock

- (NSURL)presentedItemURL
{
  v3 = sub_1C6EE41A0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR____TtC18ComputationalGraph13ContainerLock_containerURL, v3);
  v7 = sub_1C6EE4100();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSOperationQueue)presentedItemOperationQueue
{
  if (qword_1EDEF6130 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDEF6138;

  return v3;
}

- (void)accommodatePresentedItemDeletionWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1F9A70, &qword_1C6EF75A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1C6EE4DC0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1C6EF75B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1C6EF75C8;
  v12[5] = v11;
  selfCopy = self;
  sub_1C6ED8AC0(0, 0, v7, &unk_1C6EF75D8, v12);
}

- (_TtC18ComputationalGraph13ContainerLock)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end