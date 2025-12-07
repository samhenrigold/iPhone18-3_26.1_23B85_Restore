@interface RDPredefinedObjectKey
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC7remindd21RDPredefinedObjectKey)init;
- (int64_t)hash;
@end

@implementation RDPredefinedObjectKey

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_100743930(v8);

  sub_1001B2134(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = NSObject.hashValue.getter();
  v4 = NSObject.hashValue.getter();

  return v4 ^ v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_100743B88();
  v4 = v3;

  v5 = String._bridgeToObjectiveC()();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (_TtC7remindd21RDPredefinedObjectKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end