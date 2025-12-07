@interface MPModelSocialPerson
- (BOOL)isEqual:(id)equal;
- (int64_t)hash;
@end

@implementation MPModelSocialPerson

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  MPModelSocialPerson.isEqual(_:)(v9);
  v7 = v6;

  sub_9BC10(v9);
  return v7 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = MPModelSocialPerson.hash.getter();

  return v3;
}

@end