@interface UITableViewCell
+ (double)safari_defaultHeightOfTrivialInstance;
- (void)safari_setCompletionIcon:(void *)icon;
- (void)safari_setLinkedPageTitle:(uint64_t)title URL:;
- (void)safari_setLinkedPageTitle:(uint64_t)title description:;
@end

@implementation UITableViewCell

+ (double)safari_defaultHeightOfTrivialInstance
{
  v1 = objc_opt_self();
  v2 = safari_defaultHeightOfTrivialInstance_cellForMeasurement;
  if (!safari_defaultHeightOfTrivialInstance_cellForMeasurement)
  {
    v3 = [[v1 alloc] initWithStyle:3 reuseIdentifier:0];
    v4 = safari_defaultHeightOfTrivialInstance_cellForMeasurement;
    safari_defaultHeightOfTrivialInstance_cellForMeasurement = v3;

    v2 = safari_defaultHeightOfTrivialInstance_cellForMeasurement;
  }

  [v2 sizeThatFits:{1.79769313e308, 1.79769313e308}];
  return v5;
}

- (void)safari_setLinkedPageTitle:(uint64_t)title description:
{
  if (result)
  {
    return [result _safari_setLinkedPageTitle:a2 description:title];
  }

  return result;
}

- (void)safari_setLinkedPageTitle:(uint64_t)title URL:
{
  if (result)
  {
    return [result _safari_setLinkedPageTitle:a2 URL:title];
  }

  return result;
}

- (void)safari_setCompletionIcon:(void *)icon
{
  if (icon)
  {
    imageView = [icon imageView];
    v3 = MEMORY[0x277D755B8];
    v4 = systemImageNameForCompletionIcon(a2);
    v5 = [v3 systemImageNamed:v4];
    [imageView setImage:v5];

    labelColor = [MEMORY[0x277D75348] labelColor];
    [imageView setTintColor:labelColor];

    v7 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918] scale:2];
    [imageView setPreferredSymbolConfiguration:v7];
  }
}

@end