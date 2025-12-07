@interface SecurelyCodableTopicRequestToken
- (NSString)description;
- (_TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecurelyCodableTopicRequestToken

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_251F4DEDC();
  v6 = sub_251F4DF9C();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (NSString)description
{
  swift_getObjectType();
  selfCopy = self;
  sub_251F4E3CC();
  MEMORY[0x2530931F0](58, 0xE100000000000000);
  v4 = TopicRequestToken.description.getter();
  MEMORY[0x2530931F0](v4);

  v5 = sub_251F4DF9C();

  return v5;
}

- (_TtC16HealthTopicsCore32SecurelyCodableTopicRequestToken)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end