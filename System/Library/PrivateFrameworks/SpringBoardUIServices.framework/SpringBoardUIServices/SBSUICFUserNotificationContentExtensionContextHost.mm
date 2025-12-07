@interface SBSUICFUserNotificationContentExtensionContextHost
@end

@implementation SBSUICFUserNotificationContentExtensionContextHost

void __81___SBSUICFUserNotificationContentExtensionContextHost__allowedItemPayloadClasses__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:7];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11}];
  v5 = _allowedItemPayloadClasses_allowedItemPayloadClasses;
  _allowedItemPayloadClasses_allowedItemPayloadClasses = v4;
}

@end