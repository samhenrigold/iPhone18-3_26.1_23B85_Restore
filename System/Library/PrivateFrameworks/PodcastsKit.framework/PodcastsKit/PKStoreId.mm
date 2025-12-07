@interface PKStoreId
- (NSNumber)numberValue;
- (NSString)stringValue;
- (PKStoreId)init;
- (int64_t)longValue;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKStoreId

- (NSNumber)numberValue
{
  selfCopy = self;
  sub_25EA0A620();
  v4 = v3;

  return v4;
}

- (NSString)stringValue
{

  v2 = sub_25EA1E638();

  return v2;
}

- (int64_t)longValue
{
  selfCopy = self;
  sub_25EA0A9D0();
  v4 = v3;

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  v5 = sub_25EA1E638();
  v6 = sub_25EA1E638();
  [coderCopy encodeObject:v5 forKey:v6];
}

- (PKStoreId)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end