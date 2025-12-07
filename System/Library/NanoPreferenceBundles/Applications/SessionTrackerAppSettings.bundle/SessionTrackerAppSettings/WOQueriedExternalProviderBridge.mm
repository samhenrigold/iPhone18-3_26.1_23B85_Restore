@interface WOQueriedExternalProviderBridge
- (BOOL)isEnabled;
- (NSData)sourceImageData;
- (NSString)sourceName;
- (WOQueriedExternalProviderBridge)init;
@end

@implementation WOQueriedExternalProviderBridge

- (NSString)sourceName
{
  selfCopy = self;
  sub_22544();
  sub_22434();

  v3 = sub_22864();

  return v3;
}

- (NSData)sourceImageData
{
  selfCopy = self;
  sub_22544();
  v3 = sub_22444();
  v5 = v4;

  v6.super.isa = sub_22214().super.isa;
  sub_1C758(v3, v5);

  return v6.super.isa;
}

- (BOOL)isEnabled
{
  selfCopy = self;
  v3 = sub_22554();

  return v3 == 2;
}

- (WOQueriedExternalProviderBridge)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end