@interface MRDMediaBundleManager
+ (MRDMediaBundleManager)shared;
- (MRDMediaBundleManager)init;
- (NSDictionary)bundles;
- (id)cachedEligibilityOf:(id)of;
- (void)queryEligibilityOf:(NSString *)of completionHandler:(id)handler;
- (void)queryEligibilityOfAll:(NSArray *)all completionHandler:(id)handler;
- (void)setBundles:(id)bundles;
@end

@implementation MRDMediaBundleManager

+ (MRDMediaBundleManager)shared
{
  if (qword_100535B10 != -1)
  {
    swift_once();
  }

  v3 = qword_1005385A8;

  return v3;
}

- (void)queryEligibilityOfAll:(NSArray *)all completionHandler:(id)handler
{
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = all;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100459EF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100459F00;
  v14[5] = v13;
  allCopy = all;
  selfCopy = self;
  sub_1001D34BC(0, 0, v9, &unk_100459F08, v14);
}

- (id)cachedEligibilityOf:(id)of
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8 = sub_10000CBD8(v4, v6);

  return v8;
}

- (NSDictionary)bundles
{
  swift_beginAccess();
  sub_100004E30();

  v2.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setBundles:(id)bundles
{
  sub_100004E30();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10035750C(v4);
}

- (MRDMediaBundleManager)init
{
  *(self + OBJC_IVAR___MRDMediaBundleManager_isSupported) = 1;
  v3 = OBJC_IVAR___MRDMediaBundleManager_bundles;
  *(self + v3) = sub_10000A070(_swiftEmptyArrayStorage, &qword_100527BD0, &unk_100459F30);
  v4 = OBJC_IVAR___MRDMediaBundleManager_mediaBundlesLock;
  sub_1001BC5A8(&qword_100528660, &qword_100450550);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(self + v4) = v5;
  *(self + OBJC_IVAR___MRDMediaBundleManager__mediaBundles) = sub_100359B2C(_swiftEmptyArrayStorage);
  v7.receiver = self;
  v7.super_class = type metadata accessor for MRDMediaBundleManager();
  return [(MRDMediaBundleManager *)&v7 init];
}

- (void)queryEligibilityOf:(NSString *)of completionHandler:(id)handler
{
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = of;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100459EC0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100459ED0;
  v14[5] = v13;
  ofCopy = of;
  selfCopy = self;
  sub_1001D34BC(0, 0, v9, &unk_100459EE0, v14);
}

@end