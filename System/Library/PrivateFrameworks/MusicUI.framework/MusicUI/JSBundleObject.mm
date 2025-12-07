@interface JSBundleObject
- (NSDictionary)manifest;
- (id)loadResource:(id)resource;
@end

@implementation JSBundleObject

- (NSDictionary)manifest
{
  sub_2166EF7F8();
  v2 = sub_21700E344();

  return v2;
}

- (id)loadResource:(id)resource
{
  v4 = sub_21700E514();
  v6 = v5;
  selfCopy = self;
  v8 = sub_216C38F88(v4, v6);

  return v8;
}

@end