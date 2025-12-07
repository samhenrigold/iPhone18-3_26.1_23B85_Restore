@interface UIColor(NSSAdditions)
+ (id)nss_dynamicColor:()NSSAdditions withDarkStyleVariant:;
@end

@implementation UIColor(NSSAdditions)

+ (id)nss_dynamicColor:()NSSAdditions withDarkStyleVariant:
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

@end