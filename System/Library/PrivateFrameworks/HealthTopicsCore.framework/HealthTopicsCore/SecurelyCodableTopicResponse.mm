@interface SecurelyCodableTopicResponse
- (_TtC16HealthTopicsCore28SecurelyCodableTopicResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecurelyCodableTopicResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_251F4DEDC();
  v6 = sub_251F4DF9C();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC16HealthTopicsCore28SecurelyCodableTopicResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end