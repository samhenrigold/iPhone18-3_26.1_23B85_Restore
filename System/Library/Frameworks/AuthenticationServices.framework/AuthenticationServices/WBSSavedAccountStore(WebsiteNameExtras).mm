@interface WBSSavedAccountStore(WebsiteNameExtras)
- (id)websiteNameProvider;
@end

@implementation WBSSavedAccountStore(WebsiteNameExtras)

- (id)websiteNameProvider
{
  if (websiteNameProvider_once != -1)
  {
    [WBSSavedAccountStore(WebsiteNameExtras) websiteNameProvider];
  }

  v2 = websiteNameProvider_websiteNameProvider;

  return v2;
}

@end