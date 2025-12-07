@interface CNAutocompleteAvatarUtilities
+ (id)os_log;
+ (id)roadsideImage;
@end

@implementation CNAutocompleteAvatarUtilities

+ (id)os_log
{
  if (os_log_cn_once_token_1_2 != -1)
  {
    +[CNAutocompleteAvatarUtilities os_log];
  }

  v3 = os_log_cn_once_object_1_2;

  return v3;
}

uint64_t __39__CNAutocompleteAvatarUtilities_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.autocomplete.ui", "avatar");
  v1 = os_log_cn_once_object_1_2;
  os_log_cn_once_object_1_2 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)roadsideImage
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CNAutocompleteAvatarUtilities_roadsideImage__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (roadsideImage_cn_once_token_3 != -1)
  {
    dispatch_once(&roadsideImage_cn_once_token_3, block);
  }

  v2 = roadsideImage_cn_once_object_3;

  return v2;
}

void __46__CNAutocompleteAvatarUtilities_roadsideImage__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = [objc_opt_class() os_log];
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __46__CNAutocompleteAvatarUtilities_roadsideImage__block_invoke_cold_1(v1);
  }

  v24.width = 100.0;
  v24.height = 100.0;
  UIGraphicsBeginImageContextWithOptions(v24, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  *components = xmmword_1B81557C0;
  v22 = unk_1B81557D0;
  v4 = CGColorCreate(DeviceRGB, components);
  *v19 = xmmword_1B81557E0;
  v20 = unk_1B81557F0;
  v5 = CGColorCreate(DeviceRGB, v19);
  v18[0] = v4;
  v18[1] = v5;
  *locations = xmmword_1B81557B0;
  v6 = CGGradientCreateWithColors(DeviceRGB, [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2], locations);
  v27.origin.x = 0.0;
  v27.origin.y = 0.0;
  v27.size.width = 100.0;
  v27.size.height = 100.0;
  MinY = CGRectGetMinY(v27);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 100.0;
  v28.size.height = 100.0;
  v26.y = CGRectGetMaxY(v28);
  v25.x = 0.0;
  v26.x = 0.0;
  v25.y = MinY;
  CGContextDrawLinearGradient(CurrentContext, v6, v25, v26, 0);
  CGGradientRelease(v6);
  CGColorRelease(v4);
  CGColorRelease(v5);
  CGColorSpaceRelease(DeviceRGB);
  v8 = MEMORY[0x1E69DCAD8];
  v9 = [MEMORY[0x1E69DC888] whiteColor];
  v10 = [MEMORY[0x1E69DC888] whiteColor];
  *&v16[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
  v12 = [v8 configurationWithPaletteColors:v11];

  v13 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"car.front.waves.down.fill" withConfiguration:v12];
  v29.origin.x = 0.0;
  v29.origin.y = 0.0;
  v29.size.width = 100.0;
  v29.size.height = 100.0;
  v30 = CGRectInset(v29, 20.0, 20.0);
  [v13 drawInRect:{v30.origin.x, v30.origin.y, v30.size.width, v30.size.height}];
  v14 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  v15 = roadsideImage_cn_once_object_3;
  roadsideImage_cn_once_object_3 = v14;
}

@end