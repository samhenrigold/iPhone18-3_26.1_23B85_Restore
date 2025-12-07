@interface MRDNearbyGroup
+ (void)createWithCompletion:(id)completion;
- (NSString)description;
- (NSString)sessionSecret;
- (_TtC12mediaremoted14MRDNearbyGroup)init;
- (void)setSessionSecret:(id)secret;
@end

@implementation MRDNearbyGroup

+ (void)createWithCompletion:(id)completion
{
  v5 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10044F2E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10044F2E8;
  v12[5] = v11;
  sub_1001D34BC(0, 0, v7, &unk_10044F2F0, v12);
}

- (NSString)sessionSecret
{
  selfCopy = self;
  sub_1001E098C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (void)setSessionSecret:(id)secret
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = (self + OBJC_IVAR____TtC12mediaremoted14MRDNearbyGroup____lazy_storage___sessionSecret);
  *v5 = v4;
  v5[1] = v6;
}

- (NSString)description
{
  swift_getObjectType();
  selfCopy = self;
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  v8._countAndFlagsBits = (*((swift_isaMask & selfCopy->super.isa) + 0x68))(v6, v7);
  String.append(_:)(v8);

  v9._countAndFlagsBits = 62;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

- (_TtC12mediaremoted14MRDNearbyGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end