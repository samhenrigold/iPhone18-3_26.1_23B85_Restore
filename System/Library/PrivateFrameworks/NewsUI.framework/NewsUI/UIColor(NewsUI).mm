@interface UIColor(NewsUI)
+ (id)nu_darkStyleDividerColor;
+ (id)nu_dividerColor;
+ (id)nu_dynamicColor:()NewsUI withDarkStyleVariant:;
+ (id)nu_lightStyleDividerColor;
@end

@implementation UIColor(NewsUI)

+ (id)nu_dynamicColor:()NewsUI withDarkStyleVariant:
{
  v14[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D75C80];
  v6 = a4;
  v7 = a3;
  v8 = [v5 traitCollectionWithUserInterfaceStyle:0];
  v9 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v13[0] = v8;
  v13[1] = v9;
  v14[0] = v7;
  v14[1] = v6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v11 = [MEMORY[0x277D75348] _dynamicColorWithColorsByTraitCollection:v10];

  return v11;
}

+ (id)nu_dividerColor
{
  if (nu_dividerColor_onceToken != -1)
  {
    +[UIColor(NewsUI) nu_dividerColor];
  }

  v2 = nu_dividerColor_dividerColor;

  return v2;
}

+ (id)nu_lightStyleDividerColor
{
  if (nu_lightStyleDividerColor_onceToken != -1)
  {
    +[UIColor(NewsUI) nu_lightStyleDividerColor];
  }

  v2 = nu_lightStyleDividerColor_dividerColor;

  return v2;
}

+ (id)nu_darkStyleDividerColor
{
  if (nu_darkStyleDividerColor_onceToken != -1)
  {
    +[UIColor(NewsUI) nu_darkStyleDividerColor];
  }

  v2 = nu_darkStyleDividerColor_dividerColor;

  return v2;
}

@end