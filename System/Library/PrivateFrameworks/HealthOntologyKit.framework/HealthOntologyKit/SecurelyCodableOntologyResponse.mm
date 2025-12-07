@interface SecurelyCodableOntologyResponse
- (_TtC17HealthOntologyKit31SecurelyCodableOntologyResponse)init;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SecurelyCodableOntologyResponse

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_2519F08A8();
  v6 = sub_2519F0978();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (_TtC17HealthOntologyKit31SecurelyCodableOntologyResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end