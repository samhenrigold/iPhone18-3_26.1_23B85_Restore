@interface TUIControlLayout
- (id)collectLinkEntities;
@end

@implementation TUIControlLayout

- (id)collectLinkEntities
{
  v2 = objc_msgSend_box(self, a2);
  linkEntities = [v2 linkEntities];

  return linkEntities;
}

@end