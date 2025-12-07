@interface XPCMobileDocumentProviderRegistrationRequest
- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)init;
- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation XPCMobileDocumentProviderRegistrationRequest

- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)initWithCoder:(id)coder
{
  swift_getObjectType();
  v4 = sub_21CD16690(coder);
  swift_deallocPartialClassInstance();
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _s7CoreIDV44XPCMobileDocumentProviderRegistrationRequestC6encode4withySo7NSCoderC_tF_0(coderCopy);
}

- (_TtC7CoreIDV44XPCMobileDocumentProviderRegistrationRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end