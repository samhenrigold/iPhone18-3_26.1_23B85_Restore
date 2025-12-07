@interface PommesRenderOptions
- (_TtC21SiriInformationSearch19PommesRenderOptions)init;
- (_TtC21SiriInformationSearch19PommesRenderOptions)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PommesRenderOptions

- (_TtC21SiriInformationSearch19PommesRenderOptions)init
{
  ObjectType = swift_getObjectType();
  v3 = (*(ObjectType + 128))(destructiveProjectEnumData for UserPromptExperience.PromptType, 0);
  swift_deallocPartialClassInstance();
  return v3;
}

- (_TtC21SiriInformationSearch19PommesRenderOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = specialized PommesRenderOptions.init(coder:)(coderCopy);

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  PommesRenderOptions.encode(with:)(coderCopy);
}

@end