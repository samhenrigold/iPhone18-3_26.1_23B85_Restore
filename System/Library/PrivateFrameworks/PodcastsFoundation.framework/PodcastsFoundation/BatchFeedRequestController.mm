@interface BatchFeedRequestController
+ (void)fetchOutOfDateShowUUIDsWith:(NSArray *)with completionHandler:(id)handler;
+ (void)fetchOutOfDateShowUUIDsWithIncludeImplicit:(BOOL)implicit completionHandler:(id)handler;
- (_TtC18PodcastsFoundation26BatchFeedRequestController)init;
@end

@implementation BatchFeedRequestController

+ (void)fetchOutOfDateShowUUIDsWith:(NSArray *)with completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1D917886C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D91A6E80;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D91A6E88;
  v14[5] = v13;
  withCopy = with;
  sub_1D901312C(0, 0, v9, &unk_1D91A6E90, v14);
}

+ (void)fetchOutOfDateShowUUIDsWithIncludeImplicit:(BOOL)implicit completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = implicit;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_1D917886C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D91A6E38;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D918B978;
  v14[5] = v13;
  sub_1D901312C(0, 0, v9, &unk_1D918B980, v14);
}

- (_TtC18PodcastsFoundation26BatchFeedRequestController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for BatchFeedRequestController();
  return [(BatchFeedRequestController *)&v3 init];
}

@end