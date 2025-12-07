@interface AISChildAccountCutOffAgeResponse
- (AISChildAccountCutOffAgeResponse)init;
- (NSString)childCutOffAgeLocalized;
- (int64_t)childCutOffAge;
@end

@implementation AISChildAccountCutOffAgeResponse

- (NSString)childCutOffAgeLocalized
{
  selfCopy = self;
  sub_240759894();

  v3 = sub_24075A084();

  return v3;
}

- (int64_t)childCutOffAge
{
  selfCopy = self;
  v3 = sub_240759884();

  return v3;
}

- (AISChildAccountCutOffAgeResponse)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end