@interface BagService
+ (Bag)emptyBag;
+ (BagService)appstoredBetaService;
+ (BagService)appstoredSandboxService;
+ (BagService)appstoredService;
- (AMSBagProtocol)amsBag;
- (AMSBagProtocol)autoupdatingAMSBag;
- (BagService)init;
- (void)warmUpCache;
@end

@implementation BagService

+ (BagService)appstoredService
{
  v2 = sub_11744(&static AccountClientIdentifier.production.getter);

  return v2;
}

+ (BagService)appstoredSandboxService
{
  v2 = sub_11744(&static AccountClientIdentifier.appStoreSandbox.getter);

  return v2;
}

+ (BagService)appstoredBetaService
{
  v2 = sub_11744(&static AccountClientIdentifier.appStoreBeta.getter);

  return v2;
}

- (void)warmUpCache
{
  v3 = sub_9C94(&qword_25930, &qword_1AC60);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  selfCopy = self;
  sub_188CC();
  v7 = sub_188EC();
  (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = selfCopy;
  v9 = selfCopy;
  sub_11944(0, 0, v5, 0, 0, &unk_1AE50, v8);

  sub_13304(v5, &qword_25930, &qword_1AC60);
}

- (AMSBagProtocol)amsBag
{
  v2 = (self + OBJC_IVAR___BagService_lastRecentBagMutex);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  sub_12D3C(&v2[2], v8, &qword_25970, &qword_1ACF0);
  os_unfair_lock_unlock(v2);
  v4 = v9;
  if (v9)
  {
    v5 = v10;
    sub_F19C(v8, v9);
    v6 = sub_7404(v4, v5);
    sub_128AC(v8);
  }

  else
  {
    sub_13304(v8, &qword_25970, &qword_1ACF0);
    v6 = sub_753C();
  }

  return v6;
}

- (AMSBagProtocol)autoupdatingAMSBag
{
  selfCopy = self;
  v3 = sub_753C();

  return v3;
}

+ (Bag)emptyBag
{
  v7[3] = &type metadata for EmptyBag;
  v7[4] = sub_132B0();
  v2 = type metadata accessor for ObjCBag();
  v3 = objc_allocWithZone(v2);
  sub_12974(v7, v3 + OBJC_IVAR___Bag_bag);
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = objc_msgSendSuper2(&v6, "init");
  sub_128AC(v7);

  return v4;
}

- (BagService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end