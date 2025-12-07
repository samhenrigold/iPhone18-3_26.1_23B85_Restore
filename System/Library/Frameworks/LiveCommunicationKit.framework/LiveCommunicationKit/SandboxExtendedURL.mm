@interface SandboxExtendedURL
- (NSString)description;
- (_TtC20LiveCommunicationKit18SandboxExtendedURL)init;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SandboxExtendedURL

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (self->url[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy2 = self;
    sandbox_extension_release();
  }

  v6.receiver = self;
  v6.super_class = ObjectType;
  [(SandboxExtendedURL *)&v6 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  SandboxExtendedURL.encode(with:)(coderCopy);
}

- (NSString)description
{
  selfCopy = self;
  SandboxExtendedURL.description.getter();

  v3 = sub_238B6C844();

  return v3;
}

- (_TtC20LiveCommunicationKit18SandboxExtendedURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end