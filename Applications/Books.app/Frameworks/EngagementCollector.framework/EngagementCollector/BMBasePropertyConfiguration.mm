@interface BMBasePropertyConfiguration
- (BMBasePropertyConfiguration)init;
- (BOOL)isEqual:(id)equal;
- (NSString)eventName;
- (NSString)identifier;
@end

@implementation BMBasePropertyConfiguration

- (NSString)eventName
{

  v2 = sub_31300();

  return v2;
}

- (NSString)identifier
{
  if (*(self + OBJC_IVAR___BMBasePropertyConfiguration_identifier + 8))
  {

    v2 = sub_31300();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_31680();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_20C4(v8);

  sub_22DC(v8);
  return v6 & 1;
}

- (BMBasePropertyConfiguration)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end