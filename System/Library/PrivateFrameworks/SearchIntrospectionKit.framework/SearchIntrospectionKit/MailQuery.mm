@interface MailQuery
- (_TtC22SearchIntrospectionKit9MailQuery)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MailQuery

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_264E899B4();
  v6 = sub_264E899B4();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC22SearchIntrospectionKit9MailQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end