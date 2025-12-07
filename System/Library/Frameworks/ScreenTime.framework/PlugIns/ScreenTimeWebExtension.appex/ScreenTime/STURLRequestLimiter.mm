@interface STURLRequestLimiter
- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)init;
- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)initWithRate:(int64_t)rate rateInterval:(double)interval;
- (void)incrementRequestCountForBundleIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation STURLRequestLimiter

- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)initWithRate:(int64_t)rate rateInterval:(double)interval
{
  ObjectType = swift_getObjectType();
  v7 = sub_100003510();
  v8 = objc_allocWithZone(ObjectType);
  type metadata accessor for URLRequestLimiter();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v9 + 144) = &_swiftEmptyDictionarySingleton;
  *(v9 + 152) = &_swiftEmptyDictionarySingleton;
  *(v9 + 112) = rate;
  *(v9 + 120) = interval;
  *(v9 + 128) = v7;
  *(v9 + 136) = &off_10000C720;
  *&v8[OBJC_IVAR____TtC22ScreenTimeWebExtension19STURLRequestLimiter_limiter] = v9;
  v12.receiver = v8;
  v12.super_class = ObjectType;
  v10 = [(STURLRequestLimiter *)&v12 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)incrementRequestCountForBundleIdentifier:(id)identifier completionHandler:(id)handler
{
  v6 = sub_1000037A0(&qword_100010CC0, &qword_100007560);
  __chkstk_darwin(v6 - 8);
  v8 = &v17 - v7;
  v9 = _Block_copy(handler);
  v10 = sub_1000061F4();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = sub_100006244();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = v10;
  v15[6] = v12;
  v15[7] = sub_10000467C;
  v15[8] = v13;
  selfCopy = self;
  sub_100003E84(0, 0, v8, &unk_100007678, v15);
}

- (_TtC22ScreenTimeWebExtension19STURLRequestLimiter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end