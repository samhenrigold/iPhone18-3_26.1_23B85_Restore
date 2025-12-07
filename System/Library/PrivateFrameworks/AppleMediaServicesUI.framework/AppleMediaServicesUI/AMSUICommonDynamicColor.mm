@interface AMSUICommonDynamicColor
+ (id)dynamicColorWithLightColor:(id)color darkColor:(id)darkColor lightHighContrastColor:(id)contrastColor darkHighContrastColor:(id)highContrastColor;
@end

@implementation AMSUICommonDynamicColor

+ (id)dynamicColorWithLightColor:(id)color darkColor:(id)darkColor lightHighContrastColor:(id)contrastColor darkHighContrastColor:(id)highContrastColor
{
  v32[2] = *MEMORY[0x1E69E9840];
  v9 = MEMORY[0x1E69DD1B8];
  highContrastColorCopy = highContrastColor;
  contrastColorCopy = contrastColor;
  darkColorCopy = darkColor;
  colorCopy = color;
  v14 = [v9 traitCollectionWithUserInterfaceStyle:1];
  v32[0] = v14;
  v15 = [MEMORY[0x1E69DD1B8] _traitCollectionWithContrast:1];
  v32[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v17 = [v9 traitCollectionWithTraitsFromCollections:v16];

  v18 = MEMORY[0x1E69DD1B8];
  v19 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v31[0] = v19;
  v20 = [MEMORY[0x1E69DD1B8] _traitCollectionWithContrast:1];
  v31[1] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v22 = [v18 traitCollectionWithTraitsFromCollections:v21];

  v23 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:0];
  v29[0] = v23;
  v30[0] = colorCopy;
  v24 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:1];
  v29[1] = v24;
  v30[1] = colorCopy;
  v25 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:2];
  v29[2] = v25;
  v29[3] = v17;
  v30[2] = darkColorCopy;
  v30[3] = contrastColorCopy;
  v29[4] = v22;
  v30[4] = highContrastColorCopy;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:5];

  v27 = [MEMORY[0x1E69DC888] _dynamicColorWithColorsByTraitCollection:v26];

  return v27;
}

@end