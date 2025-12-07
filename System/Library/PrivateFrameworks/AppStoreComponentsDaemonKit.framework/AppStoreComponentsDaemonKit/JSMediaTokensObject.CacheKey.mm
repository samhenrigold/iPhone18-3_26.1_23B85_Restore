@interface JSMediaTokensObject.CacheKey
- (BOOL)isEqual:(id)equal;
- (_TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey)init;
- (int64_t)hash;
@end

@implementation JSMediaTokensObject.CacheKey

- (int64_t)hash
{
  sub_222739C5C();
  selfCopy = self;
  sub_22273924C();
  sub_22273924C();
  v4 = sub_222739C8C();

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_22273977C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_2226FBFE0(v8);

  sub_222672BA0(v8);
  return v6 & 1;
}

- (_TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end