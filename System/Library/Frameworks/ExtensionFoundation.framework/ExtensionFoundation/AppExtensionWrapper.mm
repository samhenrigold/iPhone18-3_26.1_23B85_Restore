@interface AppExtensionWrapper
- (BOOL)shouldAcceptConnection:(id)connection;
- (_TtC19ExtensionFoundation19AppExtensionWrapper)init;
@end

@implementation AppExtensionWrapper

- (BOOL)shouldAcceptConnection:(id)connection
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept);
  connectionCopy = connection;
  selfCopy = self;
  v7 = v4(connectionCopy);

  return v7 & 1;
}

- (_TtC19ExtensionFoundation19AppExtensionWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end