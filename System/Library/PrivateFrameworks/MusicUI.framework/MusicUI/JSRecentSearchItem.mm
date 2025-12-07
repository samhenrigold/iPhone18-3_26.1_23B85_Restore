@interface JSRecentSearchItem
- (JSValue)contentDescriptor;
- (JSValue)timestamp;
@end

@implementation JSRecentSearchItem

- (JSValue)timestamp
{
  selfCopy = self;
  v3 = sub_216E9D78C(sub_216E9DA3C);

  return v3;
}

- (JSValue)contentDescriptor
{
  selfCopy = self;
  v3 = sub_216E9D78C(sub_216E9DA04);

  return v3;
}

@end