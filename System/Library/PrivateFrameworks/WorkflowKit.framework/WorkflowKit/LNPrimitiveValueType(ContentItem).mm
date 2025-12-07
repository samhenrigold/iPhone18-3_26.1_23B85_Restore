@interface LNPrimitiveValueType(ContentItem)
- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem;
@end

@implementation LNPrimitiveValueType(ContentItem)

- (id)wf_contentItemClassWithAppBundleIdentifier:()ContentItem
{
  if ([self typeIdentifier] > 0xC)
  {
    v1 = 0;
  }

  else
  {
    v1 = objc_opt_class();
  }

  return v1;
}

@end