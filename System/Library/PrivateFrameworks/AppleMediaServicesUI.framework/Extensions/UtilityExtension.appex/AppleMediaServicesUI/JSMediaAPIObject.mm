@interface JSMediaAPIObject
- (id)lookup:(id)lookup;
@end

@implementation JSMediaAPIObject

- (id)lookup:(id)lookup
{
  lookupCopy = lookup;
  selfCopy = self;
  v6 = sub_10002136C(lookupCopy);

  return v6;
}

@end