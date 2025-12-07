@interface SettingsQuery
- (_TtC22SearchIntrospectionKit13SettingsQuery)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SettingsQuery

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_264E899B4();
  v6 = sub_264E899B4();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC22SearchIntrospectionKit13SettingsQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end