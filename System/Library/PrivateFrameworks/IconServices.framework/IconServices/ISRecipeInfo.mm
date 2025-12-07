@interface ISRecipeInfo
+ (id)appRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor preferRichRecipe:(BOOL)recipe;
+ (id)appRecipeForPlatformStyle:(unint64_t)style descriptor:(id)descriptor resourcePlatform:(unint64_t)platform preferRichRecipe:(BOOL)recipe;
+ (id)documentRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor;
+ (id)genericRecipeWithAppliedDescriptorRecipeAttributes:(id)attributes;
@end

@implementation ISRecipeInfo

+ (id)appRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor preferRichRecipe:(BOOL)recipe
{
  descriptorCopy = descriptor;
  if (!recipe)
  {
    v8 = +[ISDefaults sharedInstance];
    iconStackAppIconsAllowed = [v8 iconStackAppIconsAllowed];

    if (iconStackAppIconsAllowed)
    {
      goto LABEL_12;
    }
  }

  if (platform <= 7)
  {
    if (platform != 1)
    {
      if (platform == 2)
      {
        v12 = ISiOSMacAppRecipe;
        goto LABEL_13;
      }

      if (platform == 4)
      {
        v10 = objc_opt_new();
        [(ISrOSAppRecipe *)v10 updateRecipeWithImageDescriptor:descriptorCopy];
        goto LABEL_18;
      }
    }

LABEL_12:
    v12 = ISGenericRecipe;
LABEL_13:
    v10 = objc_alloc_init(v12);
    goto LABEL_18;
  }

  if (platform == 8)
  {
    v11 = ISwatchOSAppRecipe;
LABEL_15:
    v10 = objc_alloc_init(v11);
    -[ISrOSAppRecipe setShouldApplyMask:](v10, "setShouldApplyMask:", [descriptorCopy shouldApplyMask]);
    goto LABEL_18;
  }

  if (platform != 16)
  {
    if (platform != 32)
    {
      goto LABEL_12;
    }

    v11 = IStvOSAppRecipe;
    goto LABEL_15;
  }

  v10 = objc_alloc_init(ISrOSAppRecipe);
  -[ISrOSAppRecipe setShouldApplyMask:](v10, "setShouldApplyMask:", [descriptorCopy shouldApplyMask]);
  -[ISrOSAppRecipe setTemplateVariant:](v10, "setTemplateVariant:", [descriptorCopy templateVariant]);
LABEL_18:

  return v10;
}

+ (id)documentRecipeForPlatform:(unint64_t)platform descriptor:(id)descriptor
{
  v5 = objc_alloc_init(ISDocumentRecipe);
  [(ISDocumentRecipe *)v5 setPlatform:platform];

  return v5;
}

+ (id)appRecipeForPlatformStyle:(unint64_t)style descriptor:(id)descriptor resourcePlatform:(unint64_t)platform preferRichRecipe:(BOOL)recipe
{
  recipeCopy = recipe;
  descriptorCopy = descriptor;
  v10 = descriptorCopy;
  switch(style)
  {
    case 2uLL:
      platformCopy = platform;
      goto LABEL_7;
    case 1uLL:
      platformCopy = 4;
LABEL_7:
      v14 = [ISRecipeInfo appRecipeForPlatform:platformCopy descriptor:descriptorCopy preferRichRecipe:recipeCopy];
      goto LABEL_11;
    case 0uLL:
      v11 = +[ISPlatformInfo sharedInstance];
      v12 = +[ISRecipeInfo appRecipeForPlatform:descriptor:preferRichRecipe:](ISRecipeInfo, "appRecipeForPlatform:descriptor:preferRichRecipe:", [v11 nativePlatform], v10, recipeCopy);

      goto LABEL_12;
  }

  v15 = _ISDefaultLog(descriptorCopy);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    [ISRecipeInfo appRecipeForPlatformStyle:style descriptor:v15 resourcePlatform:? preferRichRecipe:?];
  }

  v14 = objc_alloc_init(ISGenericRecipe);
LABEL_11:
  v12 = v14;
LABEL_12:

  return v12;
}

+ (id)genericRecipeWithAppliedDescriptorRecipeAttributes:(id)attributes
{
  v3 = objc_alloc_init(ISGenericRecipe);

  return v3;
}

+ (void)appRecipeForPlatformStyle:(uint64_t)a1 descriptor:(NSObject *)a2 resourcePlatform:preferRichRecipe:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_1A77B8000, a2, OS_LOG_TYPE_FAULT, "Unknown platform style: %lu", &v2, 0xCu);
}

@end