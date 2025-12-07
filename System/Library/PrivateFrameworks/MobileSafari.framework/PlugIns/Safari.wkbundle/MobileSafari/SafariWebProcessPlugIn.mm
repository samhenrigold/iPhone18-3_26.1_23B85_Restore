@interface SafariWebProcessPlugIn
- (id)pageControllerWithBrowserContextController:(id)controller;
@end

@implementation SafariWebProcessPlugIn

- (id)pageControllerWithBrowserContextController:(id)controller
{
  controllerCopy = controller;
  if (objc_opt_respondsToSelector())
  {
    _groupIdentifier = [controllerCopy _groupIdentifier];
  }

  else
  {
    pageGroup = [controllerCopy pageGroup];
    _groupIdentifier = [pageGroup identifier];
  }

  if ([_groupIdentifier isEqualToString:*MEMORY[0x277CDB9E8]])
  {
    v7 = 0x277CDB888;
  }

  else
  {
    v8 = [_groupIdentifier isEqualToString:*MEMORY[0x277D4A988]];
    v7 = &off_2798ED200;
    if (v8)
    {
      v7 = 0x277D4A870;
    }
  }

  v9 = [objc_alloc(*v7) initWithPlugIn:self contextController:controllerCopy];

  return v9;
}

@end