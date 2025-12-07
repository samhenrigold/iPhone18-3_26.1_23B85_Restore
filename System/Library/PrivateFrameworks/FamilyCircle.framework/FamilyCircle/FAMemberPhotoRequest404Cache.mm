@interface FAMemberPhotoRequest404Cache
- (BOOL)shouldAllowRequestFor:(id)for cacheDuration:(int64_t)duration;
- (FAMemberPhotoRequest404Cache)init;
- (id)getLast404ResponseFor:(id)for;
- (void)save404ResponseFor:(id)for;
@end

@implementation FAMemberPhotoRequest404Cache

- (FAMemberPhotoRequest404Cache)init
{
  v3 = OBJC_IVAR___FAMemberPhotoRequest404Cache_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(&self->super.isa + v3) = JSONEncoder.init()();
  v4 = OBJC_IVAR___FAMemberPhotoRequest404Cache_decoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(&self->super.isa + v4) = JSONDecoder.init()();
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  *(&self->super.isa + OBJC_IVAR___FAMemberPhotoRequest404Cache_persistence) = standardUserDefaults;
  v8.receiver = self;
  v8.super_class = type metadata accessor for MemberPhotoRequest404Cache(standardUserDefaults, v6);
  return [(FAMemberPhotoRequest404Cache *)&v8 init];
}

- (void)save404ResponseFor:(id)for
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  MemberPhotoRequest404Cache.save404Response(for:)(v8);
}

- (id)getLast404ResponseFor:(id)for
{
  v4 = sub_100022F18(&qword_1000B89A8, &qword_10008CE90);
  __chkstk_darwin(v4 - 8, v5);
  v7 = &v18 - v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  selfCopy = self;
  MemberPhotoRequest404Cache.getLast404Response(for:)(v8, v10, v7);

  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v7, 1, v12);
  v15 = 0;
  if (v14 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v7, v12);
    v15 = isa;
  }

  return v15;
}

- (BOOL)shouldAllowRequestFor:(id)for cacheDuration:(int64_t)duration
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  selfCopy = self;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  LOBYTE(duration) = MemberPhotoRequest404Cache.shouldAllowRequest(for:cacheDuration:)(v10, duration);

  return duration & 1;
}

@end