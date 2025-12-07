@interface SIResultSection
- (_TtC22SearchIntrospectionKit15SIResultSection)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SIResultSection

- (void)encodeWithCoder:(id)coder
{
  type metadata accessor for SIResult();
  coderCopy = coder;
  selfCopy = self;
  v6 = sub_264E89AD4();
  v7 = sub_264E899B4();
  [coderCopy encodeObject:v6 forKey:v7];
}

- (_TtC22SearchIntrospectionKit15SIResultSection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end