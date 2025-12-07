@interface WKWallpaperBundle
+ (BOOL)shouldLoadWallpaperBundleAtURL:(id)l;
+ (id)_createWallpaperBundleInDirectory:(id)directory version:(int64_t)version identifier:(int64_t)identifier name:(id)name family:(id)family wantsDeviceMotion:(BOOL)motion isOffloaded:(BOOL)offloaded logicalScreenClass:(id)self0 thumbnailImageURL:(id)self1 adjustmentTraits:(id)self2 preferredProminentColors:(id)self3 preferredTitleColors:(id)self4 assetMapping:(id)self5;
- (BOOL)isEqual:(id)equal;
- (NADescriptionBuilder)wk_descriptionBuilder;
- (NSString)description;
- (NSString)identifierString;
- (UIImage)thumbnailImage;
- (WKWallpaperBundle)initWithURL:(id)l;
- (id)_bokehWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredAnimationWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredStillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredStripeWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_layeredThumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance;
- (id)_liveWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_parameterizedCAWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_processCommonFileBackedWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_processCommonWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_stillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance;
- (id)_thumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance;
- (id)copyWallpaperRepresentingToDestinationDirectoryURL:(id)l error:(id *)error;
- (id)copyWithZone:(_NSZone *)zone;
- (id)descriptionBuilderBlock;
- (id)fileBasedWallpaperForLocation:(id)location andAppearance:(id)appearance;
- (id)thumbnailRepresentableForLocation:(id)location andAppearance:(id)appearance;
- (id)valueBasedWallpaperForLocation:(id)location andAppearance:(id)appearance;
- (unint64_t)hash;
- (unint64_t)wallpaperBackingTypeForLocation:(id)location;
- (void)_loadBundle;
- (void)_processAssetDictionary:(id)dictionary forLocation:(id)location;
- (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)keypath;
@end

@implementation WKWallpaperBundle

- (WKWallpaperBundle)initWithURL:(id)l
{
  lCopy = l;
  v18 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v7 = [defaultManager fileExistsAtPath:path isDirectory:&v18];
  v8 = v18;

  if (v7 && (v8 & 1) != 0)
  {
    v17.receiver = self;
    v17.super_class = WKWallpaperBundle;
    v9 = [(WKWallpaperBundle *)&v17 init];
    if (v9)
    {
      v10 = [lCopy copy];
      bundleURL = v9->_bundleURL;
      v9->_bundleURL = v10;

      dictionary = [MEMORY[0x1E695DF90] dictionary];
      wallpaperAssetLookup = v9->__wallpaperAssetLookup;
      v9->__wallpaperAssetLookup = dictionary;

      [(WKWallpaperBundle *)v9 _loadBundle];
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v15 = WKLogForCategory(3uLL);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(WKWallpaperBundle *)self initWithURL:lCopy];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v6 = [v4 initWithURL:bundleURL];

  return v6;
}

- (void)_loadBundle
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1E4A23000, v4, v5, "%{public}@: Wallpaper bundle thumbnail does not exist at URL '%{public}@'", v6, v7, v8, v9);
}

- (void)_processAssetDictionary:(id)dictionary forLocation:(id)location
{
  v54 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  locationCopy = location;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = [dictionaryCopy countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v39)
  {
    v38 = *v41;
    *&v7 = 138543874;
    v36 = v7;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v41 != v38)
        {
          objc_enumerationMutation(dictionaryCopy);
        }

        v9 = *(*(&v40 + 1) + 8 * i);
        objc_opt_class();
        v10 = [dictionaryCopy objectForKeyedSubscript:v9];
        if (v10)
        {
          if (objc_opt_isKindOfClass())
          {
            v11 = v10;
          }

          else
          {
            v11 = 0;
          }

          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        objc_opt_class();
        v13 = [v12 objectForKeyedSubscript:@"type"];
        if (v13)
        {
          if (objc_opt_isKindOfClass())
          {
            v14 = v13;
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
        }

        else
        {
          v15 = 0;
        }

        if (!v15)
        {
          v52[0] = @"assets";
          v52[1] = v9;
          v52[2] = @"type";
          v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
          v17 = [v16 componentsJoinedByString:@"."];
          [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
        }

        v18 = WKWallpaperTypeFromString(v15);
        if (v18 > 3)
        {
          if (v18 <= 5)
          {
            if (v18 == 4)
            {
              [(WKWallpaperBundle *)self _layeredStillWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
            }

            else
            {
              [(WKWallpaperBundle *)self _layeredStripeWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
            }
            v19 = ;
          }

          else
          {
            switch(v18)
            {
              case 6:
                v19 = [(WKWallpaperBundle *)self _bokehWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
                break;
              case 7:
                v19 = [(WKWallpaperBundle *)self _layeredAnimationWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
                break;
              case 8:
                v19 = [(WKWallpaperBundle *)self _parameterizedCAWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
                break;
              default:
                goto LABEL_59;
            }
          }

LABEL_48:
          v25 = v19;
          if (v19)
          {
            goto LABEL_49;
          }

          goto LABEL_59;
        }

        if (v18 <= 1)
        {
          if (v18)
          {
            if (v18 != 1)
            {
              goto LABEL_59;
            }

            v19 = [(WKWallpaperBundle *)self _liveWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
          }

          else
          {
            v19 = [(WKWallpaperBundle *)self _stillWallpaperWithMetadataDictionary:v12 wallpaperAppearance:v9];
          }

          goto LABEL_48;
        }

        if (v18 == 2)
        {
          objc_opt_class();
          v23 = [v12 objectForKeyedSubscript:@"representedType"];
          if (v23)
          {
            if (objc_opt_isKindOfClass())
            {
              v24 = v23;
            }

            else
            {
              v24 = 0;
            }

            v22 = v24;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v51[0] = @"assets";
            v51[1] = v9;
            v51[2] = @"representedType";
            v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
            v33 = [v32 componentsJoinedByString:@"."];
            [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v33];
          }

          v31 = [(WKWallpaperBundle *)self _thumbnailWallpaperWithMetadataDictionary:v12 representedType:WKWallpaperTypeFromString(v22) wallpaperAppearance:v9];
        }

        else
        {
          objc_opt_class();
          v20 = [v12 objectForKeyedSubscript:@"representedType"];
          if (v20)
          {
            if (objc_opt_isKindOfClass())
            {
              v21 = v20;
            }

            else
            {
              v21 = 0;
            }

            v22 = v21;
          }

          else
          {
            v22 = 0;
          }

          if (!v22)
          {
            v50[0] = @"assets";
            v50[1] = v9;
            v50[2] = @"representedType";
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
            v30 = [v29 componentsJoinedByString:@"."];
            [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v30];
          }

          v31 = [(WKWallpaperBundle *)self _layeredThumbnailWallpaperWithMetadataDictionary:v12 representedType:WKWallpaperTypeFromString(v22) wallpaperAppearance:v9];
        }

        v25 = v31;

        if (v25)
        {
LABEL_49:
          _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
          v27 = [_wallpaperAssetLookup na_objectForKey:locationCopy withDefaultValue:&__block_literal_global];

          [v27 na_safeSetObject:v25 forKey:v9];
          _wallpaperAssetLookup2 = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
          [_wallpaperAssetLookup2 na_safeSetObject:v27 forKey:locationCopy];

          goto LABEL_61;
        }

LABEL_59:
        v25 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          *buf = v36;
          v45 = v35;
          v46 = 2114;
          v47 = locationCopy;
          v48 = 2114;
          v49 = v9;
          _os_log_error_impl(&dword_1E4A23000, v25, OS_LOG_TYPE_ERROR, "%{public}@: Could not process wallpaper for location '%{public}@' and appearance '%{public}@'.", buf, 0x20u);
        }

LABEL_61:
      }

      v39 = [dictionaryCopy countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v39);
  }
}

+ (BOOL)shouldLoadWallpaperBundleAtURL:(id)l
{
  v61 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  pathExtension = [(__CFString *)lCopy pathExtension];
  lowercaseString = [pathExtension lowercaseString];
  v7 = [lowercaseString isEqualToString:@"wallpaper"];

  if (v7)
  {
    v52 = 0;
    path = [(__CFString *)lCopy path];
    v9 = [defaultManager fileExistsAtPath:path isDirectory:&v52];
    v10 = v52;

    if (!v9 || (v10 & 1) == 0)
    {
      v11 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
      }

      LOBYTE(v20) = 0;
      goto LABEL_28;
    }

    v11 = [(__CFString *)lCopy URLByAppendingPathComponent:@"Wallpaper.plist"];
    path2 = [(__CFString *)lCopy path];
    v13 = [defaultManager fileExistsAtPath:path2];

    if ((v13 & 1) == 0)
    {
      v16 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
      }

      LOBYTE(v20) = 0;
      goto LABEL_27;
    }

    path3 = [v11 path];
    v15 = [path3 containsString:CPSharedResourcesDirectory()];

    if (v15)
    {
      v16 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = CPSharedResourcesDirectory();
        *buf = 136315394;
        v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v55 = 2114;
        v56 = v17;
        v18 = v17;
LABEL_20:
        _os_log_impl(&dword_1E4A23000, v16, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper is in '%{public}@', should load.", buf, 0x16u);

        goto LABEL_21;
      }

      goto LABEL_21;
    }

    path4 = [v11 path];
    v22 = NSTemporaryDirectory();
    v23 = [path4 containsString:v22];

    if (v23)
    {
      v16 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v18 = NSTemporaryDirectory();
        *buf = 136315394;
        v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v55 = 2114;
        v56 = v18;
        goto LABEL_20;
      }

LABEL_21:
      LOBYTE(v20) = 1;
LABEL_27:

LABEL_28:
      goto LABEL_29;
    }

    v51 = 0;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v11 error:&v51];
    v16 = v51;
    if (v16)
    {
      sf_productType = WKLogForCategory(3uLL);
      if (os_log_type_enabled(sf_productType, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
      }

LABEL_25:
      LOBYTE(v20) = 0;
LABEL_26:

      goto LABEL_27;
    }

    wk_wallpaperKitUserDefaults = [MEMORY[0x1E695E000] wk_wallpaperKitUserDefaults];
    wk_ignoreLogicalScreenClassForWallpaperBundle = [wk_wallpaperKitUserDefaults wk_ignoreLogicalScreenClassForWallpaperBundle];

    if ((wk_ignoreLogicalScreenClassForWallpaperBundle & 1) == 0)
    {
      objc_opt_class();
      v29 = [v24 objectForKeyedSubscript:@"logicalScreenClass"];
      if (objc_opt_isKindOfClass())
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      sf_productType = v30;

      v31 = WKLogForCategory(3uLL);
      v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
      if (!sf_productType)
      {
        if (v32)
        {
          *buf = 136315650;
          v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v55 = 2114;
          v56 = @"logicalScreenClass";
          v57 = 2114;
          v58 = v11;
          _os_log_impl(&dword_1E4A23000, v31, OS_LOG_TYPE_DEFAULT, "%s: No entry found for '%{public}@' key in 'Wallpaper.plist' at URL '%{public}@'.", buf, 0x20u);
        }

        LOBYTE(v20) = 0;
        sf_productType = v31;
        goto LABEL_26;
      }

      if (v32)
      {
        path5 = [(__CFString *)lCopy path];
        *buf = 136315650;
        v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v55 = 2114;
        v56 = path5;
        v57 = 2114;
        v58 = sf_productType;
        _os_log_impl(&dword_1E4A23000, v31, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper '%{public}@' logical screen class is '%{public}@'.", buf, 0x20u);
      }

      v34 = WKLogicalScreenClassString();
      if (([v34 isEqualToString:sf_productType]& 1) == 0 && ([sf_productType isEqualToString:@"any"]& 1) == 0)
      {
        v49 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v55 = 2114;
          v56 = sf_productType;
          v57 = 2114;
          v58 = v34;
          v59 = 2114;
          v60 = @"any";
          _os_log_impl(&dword_1E4A23000, v49, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper Bundle logical screen class '%{public}@' does not match the current device logical screen class '%{public}@' or '%{public}@'.", buf, 0x2Au);
        }

        goto LABEL_25;
      }
    }

    wk_wallpaperKitUserDefaults2 = [MEMORY[0x1E695E000] wk_wallpaperKitUserDefaults];
    wk_ignoreProductTypesForWallpaperBundle = [wk_wallpaperKitUserDefaults2 wk_ignoreProductTypesForWallpaperBundle];

    if (wk_ignoreProductTypesForWallpaperBundle)
    {
      sf_productType = WKLogForCategory(3uLL);
      if (os_log_type_enabled(sf_productType, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        _os_log_impl(&dword_1E4A23000, sf_productType, OS_LOG_TYPE_DEFAULT, "%s: Device is configured to load wallpapers for all product types.", buf, 0xCu);
      }

      LOBYTE(v20) = 1;
      goto LABEL_26;
    }

    currentDevice = [MEMORY[0x1E69DC938] currentDevice];
    sf_productType = [currentDevice sf_productType];

    objc_opt_class();
    v38 = [v24 objectForKeyedSubscript:@"unsupportedProductTypes"];
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    if ([v40 count])
    {
      v41 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v55 = 2114;
        v56 = @"unsupportedProductTypes";
        v57 = 2114;
        v58 = v40;
        v59 = 2114;
        v60 = sf_productType;
        _os_log_impl(&dword_1E4A23000, v41, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle has '%{public}@' entry with values '%{public}@', checking if it contains '%{public}@'.", buf, 0x2Au);
      }

      v42 = [MEMORY[0x1E695DFD8] setWithArray:v40];
      if ([v42 containsObject:sf_productType])
      {
        v43 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v55 = 2114;
          v56 = sf_productType;
          _os_log_impl(&dword_1E4A23000, v43, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle is not supported for product type %{public}@.", buf, 0x16u);
        }

        LOBYTE(v20) = 0;
LABEL_72:

        goto LABEL_26;
      }
    }

    v50 = v40;
    objc_opt_class();
    v44 = [v24 objectForKeyedSubscript:@"productTypes"];
    if (objc_opt_isKindOfClass())
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v42 = v45;

    v46 = [v42 count];
    v43 = WKLogForCategory(3uLL);
    v47 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    if (v46)
    {
      if (v47)
      {
        *buf = 136315906;
        v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v55 = 2114;
        v56 = @"productTypes";
        v57 = 2114;
        v58 = v42;
        v59 = 2114;
        v60 = sf_productType;
        _os_log_impl(&dword_1E4A23000, v43, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle has '%{public}@' entry with values '%{public}@', checking if it contains '%{public}@'.", buf, 0x2Au);
      }

      v43 = [MEMORY[0x1E695DFD8] setWithArray:v42];
      v20 = [v43 containsObject:sf_productType];
      if (v20)
      {
        v48 = WKLogForCategory(3uLL);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
          v55 = 2114;
          v56 = sf_productType;
          _os_log_impl(&dword_1E4A23000, v48, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle is supported for product type %{public}@.", buf, 0x16u);
        }
      }
    }

    else
    {
      if (v47)
      {
        *buf = 136315394;
        v54 = "+[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:]";
        v55 = 2114;
        v56 = lCopy;
        _os_log_impl(&dword_1E4A23000, v43, OS_LOG_TYPE_DEFAULT, "%s: Wallpaper bundle at URL '%{public}@' should be loaded", buf, 0x16u);
      }

      LOBYTE(v20) = 1;
    }

    v40 = v50;
    goto LABEL_72;
  }

  v19 = WKLogForCategory(3uLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    +[WKWallpaperBundle shouldLoadWallpaperBundleAtURL:];
  }

  LOBYTE(v20) = 0;
LABEL_29:

  return v20;
}

- (UIImage)thumbnailImage
{
  _thumbnailImage = [(WKWallpaperBundle *)self _thumbnailImage];

  if (!_thumbnailImage)
  {
    thumbnailImageURL = [(WKWallpaperBundle *)self thumbnailImageURL];

    if (thumbnailImageURL)
    {
      v5 = MEMORY[0x1E69DCAB8];
      thumbnailImageURL2 = [(WKWallpaperBundle *)self thumbnailImageURL];
      path = [thumbnailImageURL2 path];
      thumbnailImage = [v5 imageWithContentsOfFile:path];
      [(WKWallpaperBundle *)self set_thumbnailImage:thumbnailImage];
    }

    else
    {
      thumbnailImageURL2 = [(WKWallpaperBundle *)self thumbnailRepresentableForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"];
      path = [(WKWallpaperBundle *)self thumbnailRepresentableForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"dark"];
      v9 = MEMORY[0x1E69DCAB8];
      thumbnailImage = [thumbnailImageURL2 thumbnailImage];
      thumbnailImage2 = [path thumbnailImage];
      v11 = [v9 wk_splitThumbnailWithLightAppearanceImage:thumbnailImage darkAppearanceImage:thumbnailImage2];
      [(WKWallpaperBundle *)self set_thumbnailImage:v11];
    }
  }

  return [(WKWallpaperBundle *)self _thumbnailImage];
}

- (unint64_t)wallpaperBackingTypeForLocation:(id)location
{
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v6 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v7 = [v6 objectForKeyedSubscript:@"default"];

  backingType = [v7 backingType];
  return backingType;
}

- (id)thumbnailRepresentableForLocation:(id)location andAppearance:(id)appearance
{
  appearanceCopy = appearance;
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v10 = [v9 objectForKeyedSubscript:appearanceCopy];

  if ([v10 conformsToProtocol:&unk_1F5EABAB8])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)fileBasedWallpaperForLocation:(id)location andAppearance:(id)appearance
{
  appearanceCopy = appearance;
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v10 = [v9 objectForKeyedSubscript:appearanceCopy];

  if ([v10 conformsToProtocol:&unk_1F5EAC8B0])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (id)valueBasedWallpaperForLocation:(id)location andAppearance:(id)appearance
{
  appearanceCopy = appearance;
  locationCopy = location;
  _wallpaperAssetLookup = [(WKWallpaperBundle *)self _wallpaperAssetLookup];
  v9 = [_wallpaperAssetLookup objectForKeyedSubscript:locationCopy];

  v10 = [v9 objectForKeyedSubscript:appearanceCopy];

  if ([v10 conformsToProtocol:&unk_1F5EAC6A0])
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  return v11;
}

- (NSString)identifierString
{
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:{-[WKWallpaperBundle identifier](self, "identifier")}];
  stringValue = [v2 stringValue];

  return stringValue;
}

- (id)copyWallpaperRepresentingToDestinationDirectoryURL:(id)l error:(id *)error
{
  v38[1] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if ([(WKWallpaperBundle *)self supportsCopying])
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    lastPathComponent = [bundleURL lastPathComponent];

    v9 = [lCopy URLByAppendingPathComponent:lastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v12 = [defaultManager copyItemAtURL:bundleURL2 toURL:v9 error:error];

    if (v12 && ([MEMORY[0x1E696AC08] defaultManager], v13 = objc_claimAutoreleasedReturnValue(), v14 = *MEMORY[0x1E696A3A0], v35 = *MEMORY[0x1E696A3A0], v15 = *MEMORY[0x1E696A3A8], v36 = *MEMORY[0x1E696A3A8], objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v36, &v35, 1), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "path"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v13, "setAttributes:ofItemAtPath:error:", v16, v17, error), v17, v16, v13, v18))
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      v20 = [defaultManager2 enumeratorAtURL:v9 includingPropertiesForKeys:0 options:0 errorHandler:0];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v21 = v20;
      v22 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        while (2)
        {
          v25 = 0;
          do
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v21);
            }

            if (![*(*(&v30 + 1) + 8 * v25) setResourceValue:v15 forKey:v14 error:{error, v30}])
            {

              v26 = 0;
              goto LABEL_16;
            }

            ++v25;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v30 objects:v34 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }
      }

      v26 = v9;
LABEL_16:
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v27 = MEMORY[0x1E696ABC0];
    v28 = WKWallpaperKitErrorDomain;
    v37 = *MEMORY[0x1E696A580];
    v38[0] = @"Unsupported copy action for wallpaper (supportsCopying == NO).";
    lastPathComponent = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    [v27 errorWithDomain:v28 code:-10003 userInfo:lastPathComponent];
    *error = v26 = 0;
  }

  return v26;
}

- (void)_raiseInvalidMetadataExceptionForMetadataKeypath:(id)keypath
{
  v4 = MEMORY[0x1E695DF30];
  v5 = *MEMORY[0x1E695D940];
  v6 = MEMORY[0x1E696AEC0];
  keypathCopy = keypath;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  keypathCopy = [v6 stringWithFormat:@"%@: (path: '%@') metadata does not contain valid value for keypath: '%@'", v9, bundleURL, keypathCopy];

  v12 = [v4 exceptionWithName:v5 reason:keypathCopy userInfo:0];

  [v12 raise];
}

- (id)_processCommonWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v46[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v46[0] = @"assets";
    v46[1] = appearanceCopy;
    v46[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v41 = v10;
  integerValue = [v10 integerValue];
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v45[0] = @"assets";
    v45[1] = appearanceCopy;
    v45[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailImageFileName"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v44[0] = @"assets";
    v44[1] = appearanceCopy;
    v44[2] = @"thumbnailImageFileName";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v23 = appearanceCopy;
  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v25 = [bundleURL URLByAppendingPathComponent:v20];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v25 path];
  v28 = [defaultManager fileExistsAtPath:path];

  if ((v28 & 1) == 0)
  {
    v29 = MEMORY[0x1E695DF30];
    v30 = *MEMORY[0x1E695D940];
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = NSStringFromClass(v32);
    path2 = [v25 path];
    v35 = [v31 stringWithFormat:@"%@: Thumbnail image does not exist at path '%@'", v33, path2];
    v36 = [v29 exceptionWithName:v30 reason:v35 userInfo:0];

    [v36 raise];
  }

  v42[0] = @"identifier";
  v37 = [MEMORY[0x1E696AD98] numberWithInteger:integerValue];
  v43[0] = v37;
  v43[1] = v15;
  v42[1] = @"name";
  v42[2] = @"thumbnailImageFileURL";
  v43[2] = v25;
  v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];

  return v38;
}

- (id)_processCommonFileBackedWallpaperMetadataWithDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v30[3] = *MEMORY[0x1E69E9840];
  appearanceCopy = appearance;
  dictionaryCopy = dictionary;
  v8 = [(WKWallpaperBundle *)self _processCommonWallpaperMetadataWithDictionary:dictionaryCopy wallpaperAppearance:appearanceCopy];
  v9 = [v8 mutableCopy];

  objc_opt_class();
  v10 = [dictionaryCopy objectForKeyedSubscript:@"fullSizeImageFileName"];

  v11 = v10;
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    v30[0] = @"assets";
    v30[1] = appearanceCopy;
    v30[2] = @"fullSizeImageFileName";
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];
    v15 = [v14 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v15];
  }

  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v17 = [bundleURL URLByAppendingPathComponent:v13];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v17 path];
  v20 = [defaultManager fileExistsAtPath:path];

  if ((v20 & 1) == 0)
  {
    v21 = MEMORY[0x1E695DF30];
    v22 = *MEMORY[0x1E695D940];
    v23 = MEMORY[0x1E696AEC0];
    v24 = objc_opt_class();
    v25 = NSStringFromClass(v24);
    path2 = [v17 path];
    v27 = [v23 stringWithFormat:@"%@: Full size image does not exist at path '%@'", v25, path2];
    v28 = [v21 exceptionWithName:v22 reason:v27 userInfo:0];

    [v28 raise];
  }

  [v9 setObject:v17 forKeyedSubscript:@"fullSizeImageFileURL"];

  return v9;
}

- (id)_thumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance
{
  v6 = [(WKWallpaperBundle *)self _processCommonWallpaperMetadataWithDictionary:dictionary wallpaperAppearance:appearance];
  objc_opt_class();
  v7 = [v6 objectForKeyedSubscript:@"identifier"];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  objc_opt_class();
  v10 = [v6 objectForKeyedSubscript:@"name"];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  objc_opt_class();
  v13 = [v6 objectForKeyedSubscript:@"thumbnailImageFileURL"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = -[WKThumbnailWallpaper initWithIdentifier:name:type:representedType:backingType:thumbnailImageURL:]([WKThumbnailWallpaper alloc], "initWithIdentifier:name:type:representedType:backingType:thumbnailImageURL:", [v9 unsignedIntegerValue], v12, 2, type, 0, v15);

  return v16;
}

- (id)_stillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v4 = [(WKWallpaperBundle *)self _processCommonFileBackedWallpaperMetadataWithDictionary:dictionary wallpaperAppearance:appearance];
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"identifier"];
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"name"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  objc_opt_class();
  v11 = [v4 objectForKeyedSubscript:@"fullSizeImageFileURL"];
  if (v11)
  {
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  objc_opt_class();
  v14 = [v4 objectForKeyedSubscript:@"thumbnailImageFileURL"];
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = -[WKStillWallpaper initWithIdentifier:name:type:thumbnailImageURL:fullsizeImageURL:]([WKStillWallpaper alloc], "initWithIdentifier:name:type:thumbnailImageURL:fullsizeImageURL:", [v7 unsignedIntegerValue], v10, 0, v16, v13);

  return v17;
}

- (id)_liveWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v57[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  v7 = [(WKWallpaperBundle *)self _processCommonFileBackedWallpaperMetadataWithDictionary:dictionaryCopy wallpaperAppearance:?];
  objc_opt_class();
  v8 = [v7 objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v54 = v9;
  }

  else
  {
    v54 = 0;
  }

  objc_opt_class();
  v10 = [v7 objectForKeyedSubscript:@"name"];
  if (v10)
  {
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v53 = v11;
  }

  else
  {
    v53 = 0;
  }

  objc_opt_class();
  v12 = [v7 objectForKeyedSubscript:@"fullSizeImageFileURL"];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  objc_opt_class();
  v15 = [v7 objectForKeyedSubscript:@"thumbnailImageFileURL"];
  if (v15)
  {
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"videoFileName"];
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  if (!v20)
  {
    v57[0] = @"assets";
    v57[1] = appearanceCopy;
    v57[2] = @"videoFileName";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  bundleURL = [(WKWallpaperBundle *)self bundleURL];
  v24 = [bundleURL URLByAppendingPathComponent:v20];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v24 path];
  v27 = [defaultManager fileExistsAtPath:path];

  if ((v27 & 1) == 0)
  {
    v52 = MEMORY[0x1E695DF30];
    v28 = *MEMORY[0x1E695D940];
    v29 = MEMORY[0x1E696AEC0];
    v30 = objc_opt_class();
    v31 = NSStringFromClass(v30);
    [v24 path];
    v32 = v7;
    v33 = dictionaryCopy;
    selfCopy = self;
    v35 = v17;
    v37 = v36 = v14;
    v38 = [v29 stringWithFormat:@"%@: Video asset does not exist at path '%@'", v31, v37];
    v39 = [v52 exceptionWithName:v28 reason:v38 userInfo:0];

    v14 = v36;
    v17 = v35;
    self = selfCopy;
    dictionaryCopy = v33;
    v7 = v32;

    [v39 raise];
  }

  v40 = [dictionaryCopy objectForKeyedSubscript:@"stillTimeInVideo"];
  if (v40)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v42 = v40;
    if ((isKindOfClass & 1) == 0)
    {
      v56[0] = @"assets";
      v56[1] = appearanceCopy;
      v56[2] = @"stillTimeInVideo";
      v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:3];
      v44 = [v43 componentsJoinedByString:@"."];
      [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v44];

      v42 = v40;
    }
  }

  else
  {
    v42 = &unk_1F5EAA6E8;
  }

  v45 = v42;

  v46 = [WKLiveWallpaper alloc];
  unsignedIntegerValue = [v54 unsignedIntegerValue];
  [v45 doubleValue];
  v49 = v48;

  v50 = [(WKLiveWallpaper *)v46 initWithIdentifier:unsignedIntegerValue name:v53 type:1 thumbnailImageURL:v17 fullsizeImageURL:v14 videoAssetURL:v24 stillTimeInVideo:v49];

  return v50;
}

- (id)_layeredThumbnailWallpaperWithMetadataDictionary:(id)dictionary representedType:(unint64_t)type wallpaperAppearance:(id)appearance
{
  v83[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v9 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v9)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    v83[0] = @"assets";
    v83[1] = appearanceCopy;
    v83[2] = @"identifier";
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
    v13 = [v12 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v13];
  }

  integerValue = [v11 integerValue];
  objc_opt_class();
  v14 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    v82[0] = @"assets";
    v82[1] = appearanceCopy;
    v82[2] = @"name";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:3];
    v18 = [v17 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v18];
  }

  objc_opt_class();
  v19 = [dictionaryCopy objectForKeyedSubscript:@"backgroundThumbnailImageFileName"];
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = 0x1E696A000uLL;
  v78 = v21;
  v79 = v16;
  if (v21)
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v24 = [bundleURL URLByAppendingPathComponent:v21];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v24 path];
    v27 = [defaultManager fileExistsAtPath:path];

    if ((v27 & 1) == 0)
    {
      v28 = MEMORY[0x1E695DF30];
      v29 = *MEMORY[0x1E695D940];
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      [v24 path];
      v34 = v33 = v24;
      v35 = [v30 stringWithFormat:@"%@: Background thumbnail asset does not exist at path '%@'", v32, v34];
      v36 = [v28 exceptionWithName:v29 reason:v35 userInfo:0];

      v24 = v33;
      v22 = 0x1E696A000;

      [v36 raise];
    }
  }

  else
  {
    v24 = 0;
  }

  objc_opt_class();
  v37 = [dictionaryCopy objectForKeyedSubscript:@"foregroundThumbnailImageFileName"];
  if (v37)
  {
    if (objc_opt_isKindOfClass())
    {
      v38 = v37;
    }

    else
    {
      v38 = 0;
    }

    v39 = v38;
  }

  else
  {
    v39 = 0;
  }

  v76 = dictionaryCopy;
  v77 = v24;
  v75 = appearanceCopy;
  if (v39)
  {
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v41 = [bundleURL2 URLByAppendingPathComponent:v39];

    defaultManager2 = [*(v22 + 3080) defaultManager];
    path2 = [v41 path];
    v44 = [defaultManager2 fileExistsAtPath:path2];

    if ((v44 & 1) == 0)
    {
      v45 = MEMORY[0x1E695DF30];
      v46 = *MEMORY[0x1E695D940];
      v47 = MEMORY[0x1E696AEC0];
      v48 = objc_opt_class();
      v49 = NSStringFromClass(v48);
      [v41 path];
      v50 = v22;
      selfCopy = self;
      v53 = v52 = v11;
      v54 = [v47 stringWithFormat:@"%@: Foreground thumbnail asset does not exist at path '%@'", v49, v53];
      v55 = [v45 exceptionWithName:v46 reason:v54 userInfo:0];

      v11 = v52;
      self = selfCopy;
      v22 = v50;

      appearanceCopy = v75;
      dictionaryCopy = v76;
      [v55 raise];
    }
  }

  else
  {
    v41 = 0;
  }

  objc_opt_class();
  v56 = [dictionaryCopy objectForKeyedSubscript:@"floatingThumbnailImageFileName"];
  if (v56)
  {
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  if (v58)
  {
    v74 = v11;
    bundleURL3 = [(WKWallpaperBundle *)self bundleURL];
    v60 = [bundleURL3 URLByAppendingPathComponent:v58];

    defaultManager3 = [*(v22 + 3080) defaultManager];
    path3 = [v60 path];
    v63 = [defaultManager3 fileExistsAtPath:path3];

    if ((v63 & 1) == 0)
    {
      v64 = MEMORY[0x1E695DF30];
      v65 = *MEMORY[0x1E695D940];
      v66 = MEMORY[0x1E696AEC0];
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      path4 = [v60 path];
      v70 = [v66 stringWithFormat:@"%@: Floating thumbnail asset does not exist at path '%@'", v68, path4];
      v71 = [v64 exceptionWithName:v65 reason:v70 userInfo:0];

      [v71 raise];
    }

    appearanceCopy = v75;
    dictionaryCopy = v76;
    v11 = v74;
  }

  else
  {
    v60 = 0;
  }

  v72 = [[WKLayeredThumbnailWallpaper alloc] initWithIdentifier:integerValue name:v79 type:3 representedType:type backgroundThumbnailImageURL:v77 foregroundThumbnailImageURL:v41 floatingThumbnailImageURL:v60];

  return v72;
}

- (id)_layeredStillWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v140[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v140[0] = @"assets";
    v140[1] = appearanceCopy;
    v140[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v140 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v135 = v10;
  integerValue = [v10 integerValue];
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v139[0] = @"assets";
    v139[1] = appearanceCopy;
    v139[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v139 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"backgroundThumbnailImageFileName"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = 0x1E696A000uLL;
  v132 = v20;
  if (v20)
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v23 = [bundleURL URLByAppendingPathComponent:v20];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v23 path];
    v26 = [defaultManager fileExistsAtPath:path];

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x1E695DF30];
      v28 = *MEMORY[0x1E695D940];
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      NSStringFromClass(v30);
      v31 = v15;
      v33 = v32 = appearanceCopy;
      [v23 path];
      v35 = v34 = v23;
      v36 = [v29 stringWithFormat:@"%@: Background thumbnail asset does not exist at path '%@'", v33, v35];
      v37 = [v27 exceptionWithName:v28 reason:v36 userInfo:0];

      v23 = v34;
      v21 = 0x1E696A000;

      appearanceCopy = v32;
      v15 = v31;
      [v37 raise];
    }
  }

  else
  {
    v23 = 0;
  }

  objc_opt_class();
  v38 = [dictionaryCopy objectForKeyedSubscript:@"foregroundThumbnailImageFileName"];
  if (v38)
  {
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;
  }

  else
  {
    v40 = 0;
  }

  v130 = v40;
  v131 = v23;
  selfCopy = self;
  if (v40)
  {
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v42 = [bundleURL2 URLByAppendingPathComponent:v40];

    defaultManager2 = [*(v21 + 3080) defaultManager];
    path2 = [v42 path];
    v45 = [defaultManager2 fileExistsAtPath:path2];

    if ((v45 & 1) == 0)
    {
      v46 = MEMORY[0x1E695DF30];
      v47 = *MEMORY[0x1E695D940];
      v48 = MEMORY[0x1E696AEC0];
      v49 = objc_opt_class();
      NSStringFromClass(v49);
      v50 = v15;
      v52 = v51 = appearanceCopy;
      path3 = [v42 path];
      v54 = [v48 stringWithFormat:@"%@: Foreground thumbnail asset does not exist at path '%@'", v52, path3];
      v55 = [v46 exceptionWithName:v47 reason:v54 userInfo:0];

      appearanceCopy = v51;
      v15 = v50;
      self = selfCopy;
      [v55 raise];
    }
  }

  else
  {
    v42 = 0;
  }

  objc_opt_class();
  v56 = [dictionaryCopy objectForKeyedSubscript:@"floatingThumbnailImageFileName"];
  if (v56)
  {
    if (objc_opt_isKindOfClass())
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }

    v58 = v57;
  }

  else
  {
    v58 = 0;
  }

  v129 = v42;

  v136 = appearanceCopy;
  v134 = v15;
  v128 = v58;
  if (v58)
  {
    bundleURL3 = [(WKWallpaperBundle *)self bundleURL];
    v60 = [bundleURL3 URLByAppendingPathComponent:v58];

    defaultManager3 = [*(v21 + 3080) defaultManager];
    path4 = [v60 path];
    v63 = [defaultManager3 fileExistsAtPath:path4];

    if ((v63 & 1) == 0)
    {
      v64 = MEMORY[0x1E695DF30];
      v65 = *MEMORY[0x1E695D940];
      v66 = MEMORY[0x1E696AEC0];
      v67 = objc_opt_class();
      v68 = NSStringFromClass(v67);
      path5 = [v60 path];
      v70 = [v66 stringWithFormat:@"%@: Floating thumbnail asset does not exist at path '%@'", v68, path5];
      v71 = [v64 exceptionWithName:v65 reason:v70 userInfo:0];

      v21 = 0x1E696A000;
      [v71 raise];
    }
  }

  else
  {
    v60 = 0;
  }

  objc_opt_class();
  v72 = [dictionaryCopy objectForKeyedSubscript:@"backgroundFullSizeImageFileName"];
  if (v72)
  {
    if (objc_opt_isKindOfClass())
    {
      v73 = v72;
    }

    else
    {
      v73 = 0;
    }

    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  if (v74)
  {
    bundleURL4 = [(WKWallpaperBundle *)self bundleURL];
    v76 = [bundleURL4 URLByAppendingPathComponent:v74];

    defaultManager4 = [*(v21 + 3080) defaultManager];
    path6 = [v76 path];
    v79 = [defaultManager4 fileExistsAtPath:path6];

    if ((v79 & 1) == 0)
    {
      v80 = MEMORY[0x1E695DF30];
      v81 = *MEMORY[0x1E695D940];
      v82 = MEMORY[0x1E696AEC0];
      v83 = objc_opt_class();
      v84 = NSStringFromClass(v83);
      [v76 path];
      v86 = v85 = v60;
      v87 = [v82 stringWithFormat:@"%@: Background full size asset does not exist at path '%@'", v84, v86];
      v88 = [v80 exceptionWithName:v81 reason:v87 userInfo:0];

      v60 = v85;
      self = selfCopy;
      [v88 raise];
    }
  }

  else
  {
    v76 = 0;
  }

  objc_opt_class();
  v89 = [dictionaryCopy objectForKeyedSubscript:@"foregroundFullSizeImageFileName"];
  if (v89)
  {
    if (objc_opt_isKindOfClass())
    {
      v90 = v89;
    }

    else
    {
      v90 = 0;
    }

    v91 = v90;
  }

  else
  {
    v91 = 0;
  }

  v138 = dictionaryCopy;
  v92 = v76;
  v127 = v91;
  if (v91)
  {
    v93 = v60;
    bundleURL5 = [(WKWallpaperBundle *)self bundleURL];
    v95 = [bundleURL5 URLByAppendingPathComponent:v91];

    defaultManager5 = [MEMORY[0x1E696AC08] defaultManager];
    path7 = [v95 path];
    v98 = [defaultManager5 fileExistsAtPath:path7];

    if ((v98 & 1) == 0)
    {
      v99 = MEMORY[0x1E695DF30];
      v100 = *MEMORY[0x1E695D940];
      v101 = MEMORY[0x1E696AEC0];
      v102 = objc_opt_class();
      v103 = NSStringFromClass(v102);
      path8 = [v95 path];
      v104 = [v101 stringWithFormat:@"%@: Foreground full size asset does not exist at path '%@'", v103, path8];
      v106 = [v99 exceptionWithName:v100 reason:v104 userInfo:0];

      dictionaryCopy = v138;
      [v106 raise];
    }

    v60 = v93;
  }

  else
  {
    v95 = 0;
  }

  objc_opt_class();
  v107 = [dictionaryCopy objectForKeyedSubscript:@"floatingFullSizeImageFileName"];
  if (v107)
  {
    if (objc_opt_isKindOfClass())
    {
      v108 = v107;
    }

    else
    {
      v108 = 0;
    }

    v109 = v108;
  }

  else
  {
    v109 = 0;
  }

  if (v109)
  {
    v126 = v74;
    v110 = v60;
    bundleURL6 = [(WKWallpaperBundle *)selfCopy bundleURL];
    v112 = [bundleURL6 URLByAppendingPathComponent:v109];

    defaultManager6 = [MEMORY[0x1E696AC08] defaultManager];
    path9 = [v112 path];
    v115 = [defaultManager6 fileExistsAtPath:path9];

    if ((v115 & 1) == 0)
    {
      v116 = MEMORY[0x1E695DF30];
      v117 = *MEMORY[0x1E695D940];
      v118 = MEMORY[0x1E696AEC0];
      v119 = objc_opt_class();
      v120 = NSStringFromClass(v119);
      path10 = [v112 path];
      v121 = [v118 stringWithFormat:@"%@: Floating full size asset does not exist at path '%@'", v120, path10];
      v123 = [v116 exceptionWithName:v117 reason:v121 userInfo:0];

      [v123 raise];
    }

    v60 = v110;
    v74 = v126;
  }

  else
  {
    v112 = 0;
  }

  v124 = [[WKLayeredStillWallpaper alloc] initWithIdentifier:integerValue name:v134 backgroundThumbnailImageURL:v131 foregroundThumbnailImageURL:v129 floatingThumbnailImageURL:v60 backgroundFullSizeImageURL:v92 foregroundFullSizeImageURL:v95 floatingFullSizeImageURL:v112];

  return v124;
}

- (id)_layeredStripeWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v55[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v55[0] = @"assets";
    v55[1] = appearanceCopy;
    v55[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  integerValue = [v10 integerValue];
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (!v15)
  {
    v54[0] = @"assets";
    v54[1] = appearanceCopy;
    v54[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v50 = v10;

  if (!v20)
  {
    v53[0] = @"assets";
    v53[1] = appearanceCopy;
    v53[2] = @"backgroundColor";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v23 = appearanceCopy;
  v24 = [MEMORY[0x1E69DC888] wk_colorWithHexString:v20];
  objc_opt_class();
  v25 = [dictionaryCopy objectForKeyedSubscript:@"stripeAngleDegrees"];
  if (v25)
  {
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  if (!v27)
  {
    v52[0] = @"assets";
    v52[1] = v23;
    v52[2] = @"stripeAngleDegrees";
    v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:3];
    v29 = [v28 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v29];
  }

  objc_opt_class();
  v30 = [dictionaryCopy objectForKeyedSubscript:@"stripeHeightFactor"];
  if (v30)
  {
    if (objc_opt_isKindOfClass())
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (!v32)
  {
    v51[0] = @"assets";
    v51[1] = v23;
    v51[2] = @"stripeHeightFactor";
    v33 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
    v34 = [v33 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v34];
  }

  objc_opt_class();
  v35 = [dictionaryCopy objectForKeyedSubscript:@"firstStripeVerticalOffsetScaleFactor"];
  if (v35)
  {
    if (objc_opt_isKindOfClass())
    {
      v36 = v35;
    }

    else
    {
      v36 = 0;
    }

    v37 = v36;
  }

  else
  {
    v37 = 0;
  }

  if (v37)
  {
    objc_opt_class();
    v38 = [dictionaryCopy objectForKeyedSubscript:@"firstStripeVerticalOffsetScaleFactor"];
    if (v38)
    {
      if (objc_opt_isKindOfClass())
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      v40 = v39;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = &unk_1F5EAA700;
  }

  v41 = [WKLayeredStripeWallpaper alloc];
  [v27 doubleValue];
  v43 = v42;
  [v32 doubleValue];
  v45 = v44;
  [v40 doubleValue];
  v47 = [(WKLayeredStripeWallpaper *)v41 initWithIdentifier:integerValue name:v15 backgroundColor:v24 stripeAngleDegrees:v43 stripeHeightFactor:v45 firstStripeOffsetScaleFactor:v46];

  return v47;
}

- (id)_bokehWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v71[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v71[0] = @"assets";
    v71[1] = appearanceCopy;
    v71[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v71 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  v63 = v10;
  integerValue = [v10 integerValue];
  objc_opt_class();
  v13 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v62 = v15;
  if (!v15)
  {
    v70[0] = @"assets";
    v70[1] = appearanceCopy;
    v70[2] = @"name";
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v70 count:3];
    v17 = [v16 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v17];
  }

  objc_opt_class();
  v18 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColors"];
  if (v18)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (!v20)
  {
    v69[0] = @"assets";
    v69[1] = appearanceCopy;
    v69[2] = @"backgroundColors";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:3];
    v22 = [v21 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v22];
  }

  v60 = v20;
  v59 = [v20 na_map:&__block_literal_global_277];
  objc_opt_class();
  v23 = [dictionaryCopy objectForKeyedSubscript:@"bubbleColors"];
  if (v23)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  if (!v25)
  {
    v68[0] = @"assets";
    v68[1] = appearanceCopy;
    v68[2] = @"bubbleColors";
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:3];
    v27 = [v26 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v27];
  }

  v57 = v25;
  v58 = [v25 na_map:&__block_literal_global_279];
  objc_opt_class();
  v28 = [dictionaryCopy objectForKeyedSubscript:@"bubbleCount"];
  if (v28)
  {
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
  }

  else
  {
    v30 = 0;
  }

  if (!v30)
  {
    v67[0] = @"assets";
    v67[1] = appearanceCopy;
    v67[2] = @"bubbleCount";
    v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v67 count:3];
    v32 = [v31 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v32];
  }

  objc_opt_class();
  v33 = [dictionaryCopy objectForKeyedSubscript:@"bubbleScale"];
  if (v33)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (!v35)
  {
    v66[0] = @"assets";
    v66[1] = appearanceCopy;
    v66[2] = @"bubbleScale";
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:3];
    v37 = [v36 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v37];
  }

  selfCopy = self;
  v39 = appearanceCopy;
  objc_opt_class();
  v40 = [dictionaryCopy objectForKeyedSubscript:@"parallaxMultiplier"];
  if (v40)
  {
    if (objc_opt_isKindOfClass())
    {
      v41 = v40;
    }

    else
    {
      v41 = 0;
    }

    v42 = v41;
  }

  else
  {
    v42 = 0;
  }

  if (!v42)
  {
    v65[0] = @"assets";
    v65[1] = appearanceCopy;
    v65[2] = @"parallaxMultiplier";
    v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:3];
    v44 = [v43 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)selfCopy _raiseInvalidMetadataExceptionForMetadataKeypath:v44];
  }

  objc_opt_class();
  v45 = [dictionaryCopy objectForKeyedSubscript:@"thumbnailSeed"];
  if (v45)
  {
    if (objc_opt_isKindOfClass())
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
  }

  else
  {
    v47 = 0;
  }

  if (!v47)
  {
    v64[0] = @"assets";
    v64[1] = v39;
    v64[2] = @"thumbnailSeed";
    v48 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:3];
    v49 = [v48 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)selfCopy _raiseInvalidMetadataExceptionForMetadataKeypath:v49];
  }

  v50 = [WKBokehWallpaper alloc];
  integerValue2 = [v30 integerValue];
  [v35 doubleValue];
  v53 = v52;
  [v42 doubleValue];
  v55 = -[WKBokehWallpaper initWithIdentifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:](v50, "initWithIdentifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:", integerValue, v62, v59, v58, integerValue2, [v47 integerValue], v53, v54);

  return v55;
}

id __79__WKWallpaperBundle__bokehWallpaperWithMetadataDictionary_wallpaperAppearance___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DC888] wk_colorWithHexString:v3];

  return v6;
}

id __79__WKWallpaperBundle__bokehWallpaperWithMetadataDictionary_wallpaperAppearance___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = v2;
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DC888] wk_colorWithHexString:v3];

  return v6;
}

- (id)_layeredAnimationWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v77[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v7 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v7)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (!v9)
  {
    v77[0] = @"assets";
    v77[1] = appearanceCopy;
    v77[2] = @"identifier";
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v77 count:3];
    v11 = [v10 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v11];
  }

  integerValue = [v9 integerValue];
  objc_opt_class();
  v12 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (!v14)
  {
    v76[0] = @"assets";
    v76[1] = appearanceCopy;
    v76[2] = @"name";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v76 count:3];
    v16 = [v15 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v16];
  }

  objc_opt_class();
  v17 = [dictionaryCopy objectForKeyedSubscript:@"backgroundAnimationFileName"];
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  v73 = v19;
  v74 = v14;
  if (v19)
  {
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v21 = [bundleURL URLByAppendingPathComponent:v19];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v21 path];
    v24 = [defaultManager fileExistsAtPath:path];

    if ((v24 & 1) == 0)
    {
      v25 = MEMORY[0x1E695DF30];
      v26 = *MEMORY[0x1E695D940];
      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      path2 = [v21 path];
      v31 = [v27 stringWithFormat:@"%@: Background animation asset does not exist at path '%@'", v29, path2];
      v32 = [v25 exceptionWithName:v26 reason:v31 userInfo:0];

      [v32 raise];
    }
  }

  else
  {
    v21 = 0;
  }

  objc_opt_class();
  v33 = [dictionaryCopy objectForKeyedSubscript:@"foregroundAnimationFileName"];
  if (v33)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  if (v35)
  {
    bundleURL2 = [(WKWallpaperBundle *)self bundleURL];
    v37 = [bundleURL2 URLByAppendingPathComponent:v35];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    path3 = [v37 path];
    v40 = [defaultManager2 fileExistsAtPath:path3];

    if ((v40 & 1) == 0)
    {
      v68 = MEMORY[0x1E695DF30];
      v41 = *MEMORY[0x1E695D940];
      v42 = MEMORY[0x1E696AEC0];
      v43 = objc_opt_class();
      NSStringFromClass(v43);
      v44 = v70 = v21;
      path4 = [v37 path];
      v46 = [v42 stringWithFormat:@"%@: Foreground animation asset does not exist at path '%@'", v44, path4];
      v47 = [v68 exceptionWithName:v41 reason:v46 userInfo:0];

      v21 = v70;
      [v47 raise];
    }
  }

  else
  {
    v37 = 0;
  }

  objc_opt_class();
  v48 = [dictionaryCopy objectForKeyedSubscript:@"floatingAnimationFileNameKey"];
  if (v48)
  {
    if (objc_opt_isKindOfClass())
    {
      v49 = v48;
    }

    else
    {
      v49 = 0;
    }

    v50 = v49;
  }

  else
  {
    v50 = 0;
  }

  if (v50)
  {
    v69 = v35;
    v71 = dictionaryCopy;
    v51 = v21;
    bundleURL3 = [(WKWallpaperBundle *)self bundleURL];
    v53 = [bundleURL3 URLByAppendingPathComponent:v50];

    defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
    path5 = [v53 path];
    v56 = [defaultManager3 fileExistsAtPath:path5];

    if ((v56 & 1) == 0)
    {
      v57 = MEMORY[0x1E695DF30];
      v58 = *MEMORY[0x1E695D940];
      v59 = MEMORY[0x1E696AEC0];
      v60 = objc_opt_class();
      v61 = NSStringFromClass(v60);
      [v53 path];
      v63 = v62 = v9;
      v64 = [v59 stringWithFormat:@"%@: Floating animation asset does not exist at path '%@'", v61, v63];
      v65 = [v57 exceptionWithName:v58 reason:v64 userInfo:0];

      v9 = v62;
      [v65 raise];
    }

    v21 = v51;
    v35 = v69;
    dictionaryCopy = v71;
  }

  else
  {
    v53 = 0;
  }

  v66 = [[WKLayeredAnimationWallpaper alloc] initWithIdentifier:integerValue name:v74 backgroundAnimationFileURL:v21 foregroundAnimationFileURL:v37 floatingAnimationFileURL:v53];

  return v66;
}

- (id)_parameterizedCAWallpaperWithMetadataDictionary:(id)dictionary wallpaperAppearance:(id)appearance
{
  v40[3] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  appearanceCopy = appearance;
  objc_opt_class();
  v8 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v40[0] = @"assets";
    v40[1] = appearanceCopy;
    v40[2] = @"identifier";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
    v12 = [v11 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v12];
  }

  integerValue = [v10 integerValue];
  objc_opt_class();
  v14 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  if (v14)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (!v16)
  {
    v39[0] = @"assets";
    v39[1] = appearanceCopy;
    v39[2] = @"name";
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v18 = [v17 componentsJoinedByString:@"."];
    [(WKWallpaperBundle *)self _raiseInvalidMetadataExceptionForMetadataKeypath:v18];
  }

  objc_opt_class();
  v19 = [dictionaryCopy objectForKeyedSubscript:@"assetFileName"];
  if (v19)
  {
    if (objc_opt_isKindOfClass())
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v21)
  {
    v37 = integerValue;
    v38 = appearanceCopy;
    bundleURL = [(WKWallpaperBundle *)self bundleURL];
    v23 = [bundleURL URLByAppendingPathComponent:v21];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    path = [v23 path];
    v26 = [defaultManager fileExistsAtPath:path];

    if ((v26 & 1) == 0)
    {
      v27 = MEMORY[0x1E695DF30];
      v28 = *MEMORY[0x1E695D940];
      v29 = MEMORY[0x1E696AEC0];
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      path2 = [v23 path];
      v33 = [v29 stringWithFormat:@"%@: CA asset does not exist at path '%@'", v31, path2];
      v34 = [v27 exceptionWithName:v28 reason:v33 userInfo:0];

      [v34 raise];
    }

    integerValue = v37;
    appearanceCopy = v38;
  }

  else
  {
    v23 = 0;
  }

  v35 = [[WKParameterizedCAWallpaper alloc] initWithIdentifier:integerValue name:v16 fileURL:v23];

  return v35;
}

id __32__WKWallpaperBundle_na_identity__block_invoke(uint64_t a1)
{
  if (WKWallpaperMetadataOptionPreferredTitleColorKey_block_invoke_na_once_token_21 != -1)
  {
    __32__WKWallpaperBundle_na_identity__block_invoke_cold_1();
  }

  v2 = WKWallpaperMetadataOptionPreferredTitleColorKey_block_invoke_na_once_object_21;

  return v2;
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_2()
{
  WKWallpaperMetadataOptionPreferredTitleColorKey_block_invoke_na_once_object_21 = __32__WKWallpaperBundle_na_identity__block_invoke_3();

  return MEMORY[0x1EEE66BB8]();
}

id __32__WKWallpaperBundle_na_identity__block_invoke_3()
{
  v0 = [MEMORY[0x1E69B3788] builder];
  v1 = [v0 appendIntegerCharacteristic:&__block_literal_global_307];
  v2 = [v0 appendIntegerCharacteristic:&__block_literal_global_309];
  v3 = [v0 appendCharacteristic:&__block_literal_global_312];
  v4 = [v0 appendCharacteristic:&__block_literal_global_314];
  v5 = [v0 appendCharacteristic:&__block_literal_global_316];
  v6 = [v0 appendCharacteristic:&__block_literal_global_318];
  v7 = [v0 appendCharacteristic:&__block_literal_global_320];
  v8 = [v0 appendCharacteristic:&__block_literal_global_322];
  v9 = [v0 appendCharacteristic:&__block_literal_global_324];
  v10 = [v0 appendCharacteristic:&__block_literal_global_326];
  v11 = [v0 appendCharacteristic:&__block_literal_global_328];
  v12 = [v0 appendCharacteristic:&__block_literal_global_330];
  v13 = [v0 appendCharacteristic:&__block_literal_global_332];
  v14 = [v0 appendCharacteristic:&__block_literal_global_334];
  v15 = [v0 build];

  return v15;
}

id __32__WKWallpaperBundle_na_identity__block_invoke_8(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [a2 _wallpaperAssetLookup];
  v4 = [v3 allValues];
  v5 = [v2 setWithArray:v4];

  return v5;
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_11(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isAppearanceAware];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 hasDistinctWallpapersForLocations];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_13(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 wantsDeviceMotion];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_14(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 isOffloaded];

  return [v2 numberWithBool:v3];
}

uint64_t __32__WKWallpaperBundle_na_identity__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 disableModifyingLegibilityBlur];

  return [v2 numberWithBool:v3];
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

+ (id)_createWallpaperBundleInDirectory:(id)directory version:(int64_t)version identifier:(int64_t)identifier name:(id)name family:(id)family wantsDeviceMotion:(BOOL)motion isOffloaded:(BOOL)offloaded logicalScreenClass:(id)self0 thumbnailImageURL:(id)self1 adjustmentTraits:(id)self2 preferredProminentColors:(id)self3 preferredTitleColors:(id)self4 assetMapping:(id)self5
{
  motionCopy = motion;
  v101 = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  nameCopy = name;
  familyCopy = family;
  classCopy = class;
  lCopy = l;
  traitsCopy = traits;
  colorsCopy = colors;
  titleColorsCopy = titleColors;
  mappingCopy = mapping;
  if ([mappingCopy na_allSatisfy:&__block_literal_global_337])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v72 = [uUIDString stringByAppendingPathExtension:@"wallpaper"];

    v81 = [directoryCopy URLByAppendingPathComponent:v72 isDirectory:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v97 = 0;
    v22 = [defaultManager createDirectoryAtURL:v81 withIntermediateDirectories:1 attributes:0 error:&v97];
    v23 = v97;

    if ((v22 & 1) == 0)
    {
      v38 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
      }

      v37 = 0;
      goto LABEL_54;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342;
    aBlock[3] = &unk_1E8766A98;
    v96 = 0;
    aBlock[4] = v81;
    v68 = _Block_copy(aBlock);
    if (lCopy)
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      lastPathComponent = [lCopy lastPathComponent];
      v26 = [v81 URLByAppendingPathComponent:lastPathComponent];
      v94 = v23;
      v27 = [defaultManager2 copyItemAtURL:lCopy toURL:v26 error:&v94];
      v28 = v94;

      if ((v27 & 1) == 0)
      {
        dictionary = WKLogForCategory(3uLL);
        if (os_log_type_enabled(dictionary, OS_LOG_TYPE_ERROR))
        {
          +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
        }

        v37 = 0;
        goto LABEL_53;
      }

      v23 = v28;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:version];
    [dictionary na_safeSetObject:v30 forKey:@"version"];

    v31 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
    [dictionary na_safeSetObject:v31 forKey:@"identifier"];

    [dictionary na_safeSetObject:nameCopy forKey:@"name"];
    [dictionary na_safeSetObject:familyCopy forKey:@"family"];
    v32 = [mappingCopy count];
    if (v32 < 2)
    {
      v39 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];

      if (v39)
      {
        [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];
      }

      else
      {
        [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      }
      v33 = ;
      v34 = [v33 objectForKey:@"dark"];
    }

    else
    {
      v33 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      v34 = [v33 objectForKey:@"dark"];
    }

    v40 = v34;

    v41 = [MEMORY[0x1E696AD98] numberWithBool:v40 != 0];
    [dictionary na_safeSetObject:v41 forKey:@"appearanceAware"];

    v42 = [MEMORY[0x1E696AD98] numberWithBool:motionCopy];
    [dictionary na_safeSetObject:v42 forKey:@"wantsDeviceMotion"];

    v43 = [MEMORY[0x1E696AD98] numberWithBool:offloaded];
    [dictionary na_safeSetObject:v43 forKey:@"offloaded"];

    [dictionary na_safeSetObject:classCopy forKey:@"logicalScreenClass"];
    [dictionary na_safeSetObject:colorsCopy forKey:@"preferredProminentColor"];
    [dictionary na_safeSetObject:titleColorsCopy forKey:@"preferredTitleColor"];
    lastPathComponent2 = [lCopy lastPathComponent];
    [dictionary na_safeSetObject:lastPathComponent2 forKey:@"thumbnailImageFileName"];

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    if (v32 < 2)
    {
      v47 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationLockAndHomeScreen"];
      if (!v47)
      {
        v47 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      }

      v48 = [v47 na_dictionaryByMappingValues:&__block_literal_global_351];
      [dictionary2 setObject:v48 forKeyedSubscript:@"lockAndHome"];
    }

    else
    {
      v45 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationCoverSheet"];
      v46 = [v45 na_dictionaryByMappingValues:&__block_literal_global_346];
      [dictionary2 setObject:v46 forKeyedSubscript:@"lock"];

      v47 = [mappingCopy objectForKeyedSubscript:@"WKWallpaperLocationHomeScreen"];
      v48 = [v47 na_dictionaryByMappingValues:&__block_literal_global_349];
      [dictionary2 setObject:v48 forKeyedSubscript:@"home"];
    }

    [dictionary na_safeSetObject:dictionary2 forKey:@"assets"];
    propertyListRepresentation = [traitsCopy propertyListRepresentation];
    [dictionary na_safeSetObject:propertyListRepresentation forKey:@"adjustments"];

    v69 = [v81 URLByAppendingPathComponent:@"Wallpaper.plist"];
    v93 = 0;
    v67 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:100 options:0 error:&v93];
    v28 = v93;

    if (v28)
    {
      v50 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
      }
    }

    else
    {
      v92 = 0;
      v51 = [v67 writeToURL:v69 options:1 error:&v92];
      v28 = v92;
      if (v51)
      {
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v50 = mappingCopy;
        v52 = [v50 countByEnumeratingWithState:&v88 objects:v99 count:16];
        if (v52)
        {
          v53 = *v89;
          v64 = *v89;
          do
          {
            v65 = v52;
            for (i = 0; i != v65; ++i)
            {
              if (*v89 != v53)
              {
                objc_enumerationMutation(v50);
              }

              v54 = [v50 objectForKeyedSubscript:*(*(&v88 + 1) + 8 * i)];
              v86 = 0u;
              v87 = 0u;
              v84 = 0u;
              v85 = 0u;
              v55 = v54;
              v56 = [v55 countByEnumeratingWithState:&v84 objects:v98 count:16];
              if (v56)
              {
                v57 = *v85;
                v58 = v28;
                while (2)
                {
                  for (j = 0; j != v56; ++j)
                  {
                    if (*v85 != v57)
                    {
                      objc_enumerationMutation(v55);
                    }

                    v60 = [v55 objectForKeyedSubscript:*(*(&v84 + 1) + 8 * j)];
                    v83 = v58;
                    [v60 copyWallpaperContentsToDestinationDirectoryURL:v81 error:&v83];
                    v28 = v83;

                    if (v28)
                    {
                      v62 = WKLogForCategory(3uLL);
                      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
                      {
                        +[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:];
                      }

                      goto LABEL_51;
                    }

                    v58 = 0;
                  }

                  v56 = [v55 countByEnumeratingWithState:&v84 objects:v98 count:16];
                  v58 = 0;
                  v28 = 0;
                  if (v56)
                  {
                    continue;
                  }

                  break;
                }
              }

              v53 = v64;
            }

            v52 = [v50 countByEnumeratingWithState:&v88 objects:v99 count:16];
          }

          while (v52);
        }

        v37 = [[WKWallpaperBundle alloc] initWithURL:v81];
        goto LABEL_52;
      }

      v50 = WKLogForCategory(3uLL);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        path = [v69 path];
        [WKWallpaperBundle _createWallpaperBundleInDirectory:path version:v28 identifier:buf name:v50 family:? wantsDeviceMotion:? isOffloaded:? logicalScreenClass:? thumbnailImageURL:? adjustmentTraits:? preferredProminentColors:? preferredTitleColors:? assetMapping:?];
      }
    }

LABEL_51:

    v37 = 0;
LABEL_52:

LABEL_53:
    v68[2]();

    v23 = v28;
LABEL_54:

    v36 = uUID;
    goto LABEL_55;
  }

  v35 = WKLogForCategory(3uLL);
  v36 = v35;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    [WKWallpaperBundle _createWallpaperBundleInDirectory:v35 version:? identifier:? name:? family:? wantsDeviceMotion:? isOffloaded:? logicalScreenClass:? thumbnailImageURL:? adjustmentTraits:? preferredProminentColors:? preferredTitleColors:? assetMapping:?];
    v37 = 0;
    v36 = v35;
  }

  else
  {
    v37 = 0;
  }

LABEL_55:

  return v37;
}

uint64_t __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = [v3 supportsCopying];
  v5 = v4 & [v3 supportsSerialization];
  if ((v5 & 1) == 0)
  {
    v6 = WKLogForCategory(3uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_2_cold_1();
    }
  }

  return v5;
}

void __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    v2 = WKLogForCategory(3uLL);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342_cold_1(a1, v2, v3, v4, v5, v6, v7, v8);
    }

    v9 = [MEMORY[0x1E696AC08] defaultManager];
    [v9 removeItemAtURL:*(a1 + 32) error:0];
  }
}

- (NADescriptionBuilder)wk_descriptionBuilder
{
  v3 = [MEMORY[0x1E69B3778] builderWithObject:self];
  objc_initWeak(&location, self);
  activeMultilinePrefix = [v3 activeMultilinePrefix];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__WKWallpaperBundle_wk_descriptionBuilder__block_invoke;
  v7[3] = &unk_1E8766AE0;
  objc_copyWeak(&v9, &location);
  v5 = v3;
  v8 = v5;
  [v5 appendBodySectionWithName:0 multilinePrefix:activeMultilinePrefix block:v7];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);

  return v5;
}

void __42__WKWallpaperBundle_wk_descriptionBuilder__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained descriptionBuilderBlock];
  v2[2](v2, *(a1 + 32));
}

- (NSString)description
{
  wk_descriptionBuilder = [(WKWallpaperBundle *)self wk_descriptionBuilder];
  build = [wk_descriptionBuilder build];

  return build;
}

- (id)descriptionBuilderBlock
{
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__WKWallpaperBundle_descriptionBuilderBlock__block_invoke;
  v4[3] = &unk_1E8766B08;
  objc_copyWeak(&v5, &location);
  v2 = _Block_copy(v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

void __44__WKWallpaperBundle_descriptionBuilderBlock__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained identifierString];
  [v3 appendString:v5 withName:@"identifierString"];

  v6 = [v3 appendInteger:objc_msgSend(WeakRetained withName:{"version"), @"version"}];
  v7 = [WeakRetained name];
  [v3 appendString:v7 withName:@"name"];

  v8 = [WeakRetained family];
  v9 = [v8 length];

  if (v9)
  {
    v10 = [WeakRetained family];
    [v3 appendString:v10 withName:@"family"];
  }

  v11 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"isAppearanceAware"), @"isAppearanceAware"}];
  v12 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"hasDistinctWallpapersForLocations"), @"hasDistinctWallpapersForLocations"}];
  v13 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"wantsDeviceMotion"), @"wantsDeviceMotion"}];
  v14 = [v3 appendBool:objc_msgSend(WeakRetained withName:{"isOffloaded"), @"isOffloaded"}];
  v15 = [WeakRetained adjustmentTraits];
  v16 = [v3 appendObject:v15 withName:@"adjustmentTraits"];

  v17 = [WeakRetained preferredTitleColors];
  v39 = v3;
  v18 = [v3 appendObject:v17 withName:@"preferredTitleColors"];

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [WeakRetained _wallpaperAssetLookup];
  v36 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v36)
  {
    v35 = *v45;
    do
    {
      v19 = 0;
      do
      {
        if (*v45 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v19;
        v20 = *(*(&v44 + 1) + 8 * v19);
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v21 = [WeakRetained _wallpaperAssetLookup];
        v22 = [v21 objectForKeyedSubscript:v20];

        v38 = v22;
        v23 = [v22 countByEnumeratingWithState:&v40 objects:v49 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v41;
          do
          {
            v26 = 0;
            do
            {
              if (*v41 != v25)
              {
                objc_enumerationMutation(v38);
              }

              v27 = *(*(&v40 + 1) + 8 * v26);
              v28 = [WeakRetained _wallpaperAssetLookup];
              v29 = [v28 objectForKeyedSubscript:v20];
              v30 = [v29 objectForKeyedSubscript:v27];
              v48[0] = @"_wallpaperAssetLookup";
              v48[1] = v20;
              v48[2] = v27;
              v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:3];
              v32 = [v31 componentsJoinedByString:@"."];
              v33 = [v39 appendObject:v30 withName:v32];

              ++v26;
            }

            while (v24 != v26);
            v24 = [v38 countByEnumeratingWithState:&v40 objects:v49 count:16];
          }

          while (v24);
        }

        v19 = v37 + 1;
      }

      while (v37 + 1 != v36);
      v36 = [obj countByEnumeratingWithState:&v44 objects:v50 count:16];
    }

    while (v36);
  }
}

- (void)initWithURL:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3(&dword_1E4A23000, v4, v5, "%{public}@: Wallpaper bundle does not exist at URL '%{public}@', returning nil.", v6, v7, v8, v9);
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: URL does not have valid path extension ('.wallpaper') '%{public}@.", v2, v3, v4, v5, v6);
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: No wallpaper bundle found at URL '%{public}@.", v2, v3, v4, v5, v6);
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.3()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: No 'Wallpaper.plist' file found at URL '%{public}@.", v2, v3, v4, v5, v6);
}

+ (void)shouldLoadWallpaperBundleAtURL:.cold.4()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1E4A23000, v0, v1, "%s: Could not decode 'Wallpaper.plist' at URL '%{public}@', error '%{public}@'.", v2);
}

+ (void)_createWallpaperBundleInDirectory:(os_log_t)log version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "+[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:]";
  _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%s: Cannot create wallpaper bundle because one or more assets do not support copying or serialization.", &v1, 0xCu);
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Failed to create wallpaper bundle directory, error '%{public}@'.", v2, v3, v4, v5, v6);
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.3()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Failed to copy bundle thumbnail image, error '%{public}@'.", v2, v3, v4, v5, v6);
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.4()
{
  v2 = 136315650;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_1E4A23000, v0, v1, "%s: Could not serialized wallpaper metadata '%{public}@'.  Error: '%{public}@'.", v2);
}

+ (void)_createWallpaperBundleInDirectory:(uint8_t *)buf version:(os_log_t)log identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.5(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315650;
  *(buf + 4) = "+[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:]";
  *(buf + 6) = 2114;
  *(buf + 14) = a1;
  *(buf + 11) = 2114;
  *(buf + 3) = a2;
  _os_log_error_impl(&dword_1E4A23000, log, OS_LOG_TYPE_ERROR, "%s: Could not write out wallpaper metadata to path '%{public}@'.  Error: '%{public}@'.", buf, 0x20u);
}

+ (void)_createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:.cold.6()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Failed to copy wallpaper resources, error '%{public}@'.", v2, v3, v4, v5, v6);
}

void __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_2_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_1E4A23000, v0, v1, "%s: Cannot create wallpaper bundle because wallpaper %{public}@ either cannot copy or cannot serialize.", v2, v3, v4, v5, v6);
}

void __229__WKWallpaperBundle__createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping___block_invoke_342_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *v8 = 136315394;
  *&v8[4] = "+[WKWallpaperBundle _createWallpaperBundleInDirectory:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:]_block_invoke";
  *&v8[12] = 2114;
  *&v8[14] = *(a1 + 32);
  OUTLINED_FUNCTION_2(&dword_1E4A23000, a2, a3, "%s: Performing cleanup of '%{public}@'.", a5, a6, a7, a8, *v8, *&v8[8], *&v8[16], *MEMORY[0x1E69E9840]);
}

@end