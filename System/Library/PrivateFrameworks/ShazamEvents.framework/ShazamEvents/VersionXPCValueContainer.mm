@interface VersionXPCValueContainer
- (_TtC12ShazamEvents24VersionXPCValueContainer)init;
- (_TtC12ShazamEvents24VersionXPCValueContainer)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation VersionXPCValueContainer

- (_TtC12ShazamEvents24VersionXPCValueContainer)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_1E1008254(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1E10066FC(coderCopy);
}

- (_TtC12ShazamEvents24VersionXPCValueContainer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end