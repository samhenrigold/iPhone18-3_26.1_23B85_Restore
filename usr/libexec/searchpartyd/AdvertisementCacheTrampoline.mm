@interface AdvertisementCacheTrampoline
- (_TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline)init;
- (void)advertisementCacheSimulation:(BOOL)simulation completion:(id)completion;
- (void)advertisementsForSearchCriteria:(id)criteria completion:(id)completion;
- (void)beaconAdvertisementAtFileURL:(id)l beaconIdentifier:(id)identifier scanDate:(id)date completion:(id)completion;
- (void)beaconPayloadsForSearchCriteria:(id)criteria completion:(id)completion;
- (void)clearCacheWithCompletion:(id)completion;
- (void)markAdvertisementsProcessed:(id)processed completion:(id)completion;
- (void)markFilesProcessed:(id)processed completion:(id)completion;
@end

@implementation AdvertisementCacheTrampoline

- (void)markFilesProcessed:(id)processed completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for URL();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v8 = self + OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation;
  swift_beginAccess();
  v9 = *(v8 + 3);
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 32);
  selfCopy = self;
  swift_unknownObjectRetain();
  v11(v6, sub_10026AE30, v7, ObjectType, v9);
  swift_unknownObjectRelease();
}

- (void)beaconPayloadsForSearchCriteria:(id)criteria completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self + OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation;
  swift_beginAccess();
  v9 = *(v8 + 3);
  ObjectType = swift_getObjectType();
  criteriaCopy = criteria;
  selfCopy = self;
  swift_unknownObjectRetain();
  v11 = sub_1003CCA70();
  v13 = v12;
  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1001BC2E0;
  *(v16 + 24) = v7;
  v17 = *(v9 + 24);

  v17(v11, v13, v15, sub_10026ACF4, v16, ObjectType, v9);
  swift_unknownObjectRelease();
}

- (void)beaconAdvertisementAtFileURL:(id)l beaconIdentifier:(id)identifier scanDate:(id)date completion:(id)completion
{
  v8 = type metadata accessor for Date();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v26 = &selfCopy - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &selfCopy - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for URL();
  v27 = *(v13 - 8);
  v28 = v13;
  __chkstk_darwin(v13);
  v15 = &selfCopy - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = self + OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation;
  swift_beginAccess();
  v19 = *(v18 + 1);
  ObjectType = swift_getObjectType();
  v21 = *(v19 + 8);
  selfCopy = self;
  swift_unknownObjectRetain();
  v22 = v12;
  v23 = v12;
  v24 = v26;
  v21(v15, v22, v26, sub_1001BC108, v17, ObjectType, v19);

  (*(v31 + 8))(v24, v32);
  (*(v29 + 8))(v23, v30);
  (*(v27 + 8))(v15, v28);
  swift_unknownObjectRelease();
}

- (void)markAdvertisementsProcessed:(id)processed completion:(id)completion
{
  v5 = _Block_copy(completion);
  type metadata accessor for UUID();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  _Block_copy(v5);
  selfCopy = self;
  sub_10026A388(v6, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)advertisementsForSearchCriteria:(id)criteria completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  criteriaCopy = criteria;
  selfCopy = self;
  sub_10026AC00(selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)advertisementCacheSimulation:(BOOL)simulation completion:(id)completion
{
  simulationCopy = simulation;
  v6 = _Block_copy(completion);
  v7 = self + OBJC_IVAR____TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline_implementation;
  swift_beginAccess();
  v8 = *v7;
  v9 = *(v7 + 1);
  ObjectType = swift_getObjectType();
  v14 = v8;
  selfCopy = self;
  v12 = *(v7 + 1);
  v13 = *(v7 + 2);
  (*(v12 + 16))(simulationCopy, ObjectType);
  *v7 = v14;
  *(v7 + 1) = v9;
  *(v7 + 1) = v12;
  *(v7 + 2) = v13;
  swift_endAccess();
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)clearCacheWithCompletion:(id)completion
{
  v4 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  __chkstk_darwin(v4 - 8);
  v6 = &v11 - v5;
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = sub_10001E370;
  v10[5] = v8;
  sub_10025EDD4(0, 0, v6, &unk_101395730, v10);
}

- (_TtC12searchpartydP33_EBCE4CC9FC18641636B173DB27D7BE0028AdvertisementCacheTrampoline)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end