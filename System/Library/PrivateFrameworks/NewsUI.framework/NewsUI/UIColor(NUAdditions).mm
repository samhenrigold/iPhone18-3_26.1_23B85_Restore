@interface UIColor(NUAdditions)
+ (id)arrayOfColors;
+ (id)nu_dynamicColor:()NUAdditions withDarkStyleVariant:;
+ (id)nu_safeColorForIdentifier:()NUAdditions;
@end

@implementation UIColor(NUAdditions)

+ (id)nu_safeColorForIdentifier:()NUAdditions
{
  v4 = a3;
  arrayOfColors = [self arrayOfColors];
  v6 = [v4 hash];

  v7 = [arrayOfColors objectAtIndex:{v6 % objc_msgSend(arrayOfColors, "count")}];

  return v7;
}

+ (id)arrayOfColors
{
  v26[8] = *MEMORY[0x277D85DE8];
  systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
  systemPurpleColor = [MEMORY[0x277D75348] systemPurpleColor];
  v24 = 0.0;
  v25 = 0.0;
  v22 = 0.0;
  v23 = 0.0;
  [systemPurpleColor getRed:&v25 green:&v24 blue:&v23 alpha:&v22];
  v20 = 0.0;
  v21 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  [systemBlueColor getRed:&v21 green:&v20 blue:&v19 alpha:&v18];
  v15 = [MEMORY[0x277D75348] colorWithRed:1.0 green:0.678431373 blue:0.0 alpha:1.0];
  v26[0] = v15;
  v14 = [MEMORY[0x277D75348] colorWithRed:0.992156863 green:0.466666667 blue:0.156862745 alpha:1.0];
  v26[1] = v14;
  v0 = MEMORY[0x277D75348];
  v13 = [MEMORY[0x277D75348] colorWithRed:0.411764706 green:0.337254902 blue:0.701960784 alpha:1.0];
  v1 = [MEMORY[0x277D75348] colorWithRed:v25 green:v24 blue:v23 alpha:v22];
  v2 = [v0 nu_dynamicColor:v13 withDarkStyleVariant:v1];
  v26[2] = v2;
  v3 = [MEMORY[0x277D75348] colorWithRed:0.764705882 green:0.384313725 blue:0.874509804 alpha:1.0];
  v26[3] = v3;
  v4 = [MEMORY[0x277D75348] colorWithRed:0.360784314 green:0.752941176 blue:0.549019608 alpha:1.0];
  v26[4] = v4;
  v5 = [MEMORY[0x277D75348] colorWithRed:0.0274509804 green:0.709803922 blue:0.796078431 alpha:1.0];
  v26[5] = v5;
  v6 = [MEMORY[0x277D75348] colorWithRed:0.0 green:0.478431373 blue:1.0 alpha:1.0];
  v26[6] = v6;
  v7 = MEMORY[0x277D75348];
  v8 = [MEMORY[0x277D75348] colorWithRed:0.149019608 green:0.28627451 blue:0.549019608 alpha:1.0];
  v9 = [MEMORY[0x277D75348] colorWithRed:v21 green:v20 blue:v19 alpha:v18];
  v10 = [v7 nu_dynamicColor:v8 withDarkStyleVariant:v9];
  v26[7] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:8];

  return v11;
}

+ (id)nu_dynamicColor:()NUAdditions withDarkStyleVariant:
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