@interface AMSUIWebAppearance
+ (AMSUIWebAppearance)defaultAppearance;
+ (AMSUIWebAppearance)tableViewAppearance;
- (id)copyWithZone:(_NSZone *)zone;
- (void)updateBackgroundColorWithJSString:(id)string;
@end

@implementation AMSUIWebAppearance

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AMSUIWebAppearance allocWithZone:?]];
  objc_storeStrong(&v4->_backgroundColor, self->_backgroundColor);
  v4->_clientHandlesDismissability = self->_clientHandlesDismissability;
  return v4;
}

+ (AMSUIWebAppearance)defaultAppearance
{
  v2 = objc_alloc_init(AMSUIWebAppearance);
  defaultPlatformBackgroundColor = [objc_opt_class() defaultPlatformBackgroundColor];
  [(AMSUIWebAppearance *)v2 setBackgroundColor:defaultPlatformBackgroundColor];

  return v2;
}

+ (AMSUIWebAppearance)tableViewAppearance
{
  v2 = objc_alloc_init(AMSUIWebAppearance);
  systemGroupedBackgroundColor = [objc_opt_class() systemGroupedBackgroundColor];
  [(AMSUIWebAppearance *)v2 setBackgroundColor:systemGroupedBackgroundColor];

  return v2;
}

- (void)updateBackgroundColorWithJSString:(id)string
{
  v16[7] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if (stringCopy)
  {
    v15[0] = @"-apple-system-background";
    systemBackgroundColor = [objc_opt_class() systemBackgroundColor];
    v16[0] = systemBackgroundColor;
    v15[1] = @"-apple-system-clear";
    systemClearColor = [objc_opt_class() systemClearColor];
    v16[1] = systemClearColor;
    v15[2] = @"-apple-system-secondary-background";
    secondarySystemBackgroundColor = [objc_opt_class() secondarySystemBackgroundColor];
    v16[2] = secondarySystemBackgroundColor;
    v15[3] = @"-apple-system-tertiary-background";
    tertiarySystemBackgroundColor = [objc_opt_class() tertiarySystemBackgroundColor];
    v16[3] = tertiarySystemBackgroundColor;
    v15[4] = @"-apple-system-grouped-background";
    systemGroupedBackgroundColor = [objc_opt_class() systemGroupedBackgroundColor];
    v16[4] = systemGroupedBackgroundColor;
    v15[5] = @"-apple-system-secondary-grouped-background";
    secondarySystemGroupedBackgroundColor = [objc_opt_class() secondarySystemGroupedBackgroundColor];
    v16[5] = secondarySystemGroupedBackgroundColor;
    v15[6] = @"-apple-system-tertiary-grouped-background";
    tertiarySystemGroupedBackgroundColor = [objc_opt_class() tertiarySystemGroupedBackgroundColor];
    v16[6] = tertiarySystemGroupedBackgroundColor;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:7];

    v13 = [v12 objectForKeyedSubscript:stringCopy];
    if (v13 || ([MEMORY[0x1E69DC888] ams_colorFromHexString:stringCopy], (v13 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v14 = v13;
      [(AMSUIWebAppearance *)self setBackgroundColor:v13];
    }
  }
}

@end