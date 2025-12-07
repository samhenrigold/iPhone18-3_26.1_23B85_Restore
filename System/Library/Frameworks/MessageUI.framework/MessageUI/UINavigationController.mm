@interface UINavigationController
@end

@implementation UINavigationController

void __86__UINavigationController_MFMailComposeRemoteService__mf_keyPathsMapForUICustomization__block_invoke(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x1E69E9840];
  v9[0] = @"navigationBar.tintColor";
  v10[0] = objc_opt_class();
  v9[1] = @"navigationBar.barStyle";
  v10[1] = objc_opt_class();
  v9[2] = @"navigationBar.titleTextAttributes";
  v7[0] = *MEMORY[0x1E69DB648];
  v2 = +[(_MFValueTransformer *)_MFFontToFontDescriptorTransformer];
  v8[0] = v2;
  v7[1] = *MEMORY[0x1E69DB650];
  v8[1] = objc_opt_class();
  v7[2] = *MEMORY[0x1E69DB6A8];
  v3 = +[(_MFValueTransformer *)_MFNSShadowTransformer];
  v8[2] = v3;
  v7[3] = *MEMORY[0x1E69DE3E8];
  v8[3] = objc_opt_class();
  v7[4] = *MEMORY[0x1E69DE3F0];
  v8[4] = objc_opt_class();
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:5];
  v10[2] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v6 = mf_keyPathsMapForUICustomization_keyPathsMap;
  mf_keyPathsMapForUICustomization_keyPathsMap = v5;
}

void __84__UINavigationController_MFUtilities__mf_viewControllerOfClass_startFromTopOfStack___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

@end