@interface CNUIApplicationLaunchOptions
+ (id)defaultOptions;
@end

@implementation CNUIApplicationLaunchOptions

+ (id)defaultOptions
{
  if (defaultOptions_cn_once_token_1 != -1)
  {
    +[CNUIApplicationLaunchOptions defaultOptions];
  }

  v3 = defaultOptions_cn_once_object_1;

  return v3;
}

void __46__CNUIApplicationLaunchOptions_defaultOptions__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[2] = *MEMORY[0x1E69E9840];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v4 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  v18 = getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr)
  {
    v5 = FrontBoardServicesLibrary();
    v16[3] = dlsym(v5, "FBSOpenApplicationOptionKeyUnlockDevice");
    getFBSOpenApplicationOptionKeyUnlockDeviceSymbolLoc_ptr = v16[3];
    v4 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = *v4;
  v19 = v6;
  v7 = MEMORY[0x1E695E118];
  v21[0] = MEMORY[0x1E695E118];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v8 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  v18 = getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr;
  if (!getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr)
  {
    v9 = FrontBoardServicesLibrary();
    v16[3] = dlsym(v9, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
    getFBSOpenApplicationOptionKeyPromptUnlockDeviceSymbolLoc_ptr = v16[3];
    v8 = v16[3];
  }

  _Block_object_dispose(&v15, 8);
  if (!v8)
  {
LABEL_8:
    +[CNUIIDSRequest IDSServiceForService:];
    __break(1u);
  }

  v20 = *v8;
  v21[1] = v7;
  v10 = MEMORY[0x1E695DF20];
  v11 = v20;
  v12 = [v10 dictionaryWithObjects:v21 forKeys:&v19 count:2];
  v13 = [v12 copy];
  v14 = defaultOptions_cn_once_object_1;
  defaultOptions_cn_once_object_1 = v13;
}

@end