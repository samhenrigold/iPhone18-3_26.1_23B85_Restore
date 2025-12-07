@interface NSBundle(CoreMaterialAdditions)
+ (id)coreMaterialOverrideRecipeBundleURL;
+ (void)_setCoreMaterialOverrideRecipeBundleURL:()CoreMaterialAdditions;
+ (void)coreMaterialOverrideRecipeBundle;
@end

@implementation NSBundle(CoreMaterialAdditions)

+ (void)coreMaterialOverrideRecipeBundle
{
  v1 = __coreMaterialOverrideRecipeBundle;
  if (!__coreMaterialOverrideRecipeBundle)
  {
    coreMaterialOverrideRecipeBundleURL = [self coreMaterialOverrideRecipeBundleURL];
    if (coreMaterialOverrideRecipeBundleURL)
    {
      v3 = [MEMORY[0x1E696AAE8] bundleWithURL:?];
      v4 = __coreMaterialOverrideRecipeBundle;
      __coreMaterialOverrideRecipeBundle = v3;
    }

    if (!__coreMaterialOverrideRecipeBundle)
    {
      null = [MEMORY[0x1E695DFB0] null];
      v6 = __coreMaterialOverrideRecipeBundle;
      __coreMaterialOverrideRecipeBundle = null;
    }

    v1 = __coreMaterialOverrideRecipeBundle;
  }

  null2 = [MEMORY[0x1E695DFB0] null];
  if (v1 == null2)
  {
    v8 = 0;
  }

  else
  {
    v8 = __coreMaterialOverrideRecipeBundle;
  }

  v9 = v8;

  return v8;
}

+ (id)coreMaterialOverrideRecipeBundleURL
{
  v0 = _MTGetCoreMaterialPlatformConfiguration();
  overrideRecipeBundleURL = [v0 overrideRecipeBundleURL];

  return overrideRecipeBundleURL;
}

+ (void)_setCoreMaterialOverrideRecipeBundleURL:()CoreMaterialAdditions
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  MTRegisterCoreMaterialLogging();
  v4 = _MTGetCoreMaterialPlatformConfiguration();
  overrideRecipeBundleURL = [v4 overrideRecipeBundleURL];
  if (v3 | overrideRecipeBundleURL && ([v3 isEqual:?] & 1) == 0)
  {
    v6 = objc_opt_respondsToSelector();
    v7 = MTLogConfiguration;
    if (v6)
    {
      if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138543362;
        v10 = v3;
        _os_log_impl(&dword_1BF527000, v7, OS_LOG_TYPE_DEFAULT, "Updating CoreMaterial override recipe bundle URL: %{public}@", &v9, 0xCu);
      }

      [v4 setOverrideRecipeBundleURL:?];
      v8 = __coreMaterialOverrideRecipeBundle;
      __coreMaterialOverrideRecipeBundle = 0;
    }

    else if (os_log_type_enabled(MTLogConfiguration, OS_LOG_TYPE_ERROR))
    {
      [(NSBundle(CoreMaterialAdditions) *)v3 _setCoreMaterialOverrideRecipeBundleURL:v4, v7];
    }
  }
}

+ (void)_setCoreMaterialOverrideRecipeBundleURL:()CoreMaterialAdditions .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1BF527000, log, OS_LOG_TYPE_ERROR, "Attempt to override recipe bundle URL (%{public}@) not supported by platform configuration: %{public}@", &v3, 0x16u);
}

@end