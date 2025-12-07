@interface ESIMProfileInfo
- (NSString)description;
- (_TtC9SEService15ESIMProfileInfo)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ESIMProfileInfo

- (NSString)description
{
  selfCopy = self;
  ESIMProfileInfo.description.getter();

  v3 = sub_1C7C7D2E4();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_1C7C7D2E4();
  v7 = sub_1C7C7D2E4();
  [coderCopy encodeObject:v6 forKey:v7];

  v8 = *(&selfCopy->super.isa + OBJC_IVAR____TtC9SEService15ESIMProfileInfo_exactSize);
  v9 = sub_1C7C7D2E4();
  [coderCopy encodeInteger:v8 forKey:v9];
}

- (_TtC9SEService15ESIMProfileInfo)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end