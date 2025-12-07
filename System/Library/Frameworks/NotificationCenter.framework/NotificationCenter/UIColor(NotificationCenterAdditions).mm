@interface UIColor(NotificationCenterAdditions)
+ (id)nc_labelColor;
@end

@implementation UIColor(NotificationCenterAdditions)

+ (id)nc_labelColor
{
  v17[3] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277D75348];
  v15 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:0];
  v16[0] = v15;
  v14 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:3 category:1 andUserInterfaceStyle:1];
  v13 = [v14 _visualStylingForStyle:0];
  color = [v13 color];
  v17[0] = color;
  v1 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:1];
  v16[1] = v1;
  v2 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:3 category:1 andUserInterfaceStyle:1];
  v3 = [v2 _visualStylingForStyle:0];
  color2 = [v3 color];
  v17[1] = color2;
  v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:2];
  v16[2] = v5;
  v6 = [MEMORY[0x277D26740] _visualStylingProviderForRecipe:3 category:1 andUserInterfaceStyle:2];
  v7 = [v6 _visualStylingForStyle:0];
  color3 = [v7 color];
  v17[2] = color3;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v10 = [v0 _dynamicColorWithColorsByTraitCollection:v9];

  return v10;
}

@end