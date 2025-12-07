@interface PBUIWallpaperConfigurationManager
+ (void)initialize;
- (BOOL)hasWallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)isProceduralWallpaperInfoValid:(id)valid;
- (BOOL)isVideoSupportedForVariant:(int64_t)variant;
- (BOOL)safeMigrateWallpaperImageIfNecessaryForVariant:(int64_t)variant representingVariants:(int64_t)variants wallpaperMode:(int64_t)mode;
- (BOOL)setProceduralWallpaperIdentifier:(id)identifier options:(id)options forVariants:(int64_t)variants;
- (BOOL)setVideoURL:(id)l forVariant:(int64_t)variant shoudCrop:(BOOL)crop relativeCropRect:(CGRect)rect wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperColor:(id)color forVariants:(int64_t)variants;
- (BOOL)setWallpaperColorName:(id)name forVariants:(int64_t)variants;
- (BOOL)setWallpaperConfigurationFromDefaultWallpaperConfiguration:(id)configuration forVariants:(int64_t)variants wallpaperMode:(int64_t)mode name:(id)name;
- (BOOL)setWallpaperGradient:(id)gradient forVariants:(int64_t)variants;
- (BOOL)setWallpaperImage:(id)image adjustedImage:(id)adjustedImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperImage:(id)image originalImage:(id)originalImage forVariants:(int64_t)variants options:(unint64_t)options;
- (BOOL)setWallpaperImage:(id)image originalImage:(id)originalImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forVariants:(int64_t)variants options:(unint64_t)a9 wallpaperMode:(int64_t)self0 isMigrating:(BOOL)self1;
- (BOOL)setWallpaperImageHashData:(id)data forVariants:(int64_t)variants wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperThumbnailData:(id)data forVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)setWallpaperThumbnailFromFullsizeImage:(id)image forVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (BOOL)shouldSetWallpaperImageHashData;
- (BOOL)variantsShareWallpaperConfiguration;
- (CGAffineTransform)_naturalPreferredTransform:(SEL)transform forNaturalSize:(CGAffineTransform *)size;
- (CGRect)cropRectForOldCropRect:(CGRect)rect portrait:(BOOL)portrait zoomScale:(double)scale oldParallaxFactor:(double)factor forImageSize:(CGSize)size newZoomScale:(double *)zoomScale;
- (CGRect)cropRectForViewPort:(CGRect)port portrait:(BOOL)portrait zoomScale:(double)scale parallaxFactor:(double)factor forImageSize:(CGSize)size contentScaleFactor:(double)scaleFactor;
- (CGSize)wallpaperSize;
- (CGSize)wallpaperSizeIncludingParallaxOverhang;
- (Class)proceduralWallpaperClassForIdentifier:(id)identifier;
- (PBUIMagnifyMode)magnifyMode;
- (PBUIProceduralWallpaperProvider)proceduralWallpaperProvider;
- (PBUIWallpaperConfigurationManager)init;
- (PBUIWallpaperConfigurationManager)initWithWallpaperDataStores:(id)stores;
- (PBUIWallpaperConfigurationManager)initWithWallpaperDataStores:(id)stores wallpaperSize:(CGSize)size scale:(double)scale sizeType:(int64_t)type;
- (PBUIWallpaperConfigurationManagerDelegate)delegate;
- (char)_providerForVariant:(int64_t)variant lockConfig:(id)config homeConfig:(id)homeConfig;
- (double)parallaxFactorForCropRect:(CGRect)rect portrait:(BOOL)portrait forImageSize:(CGSize)size zoomScale:(double)scale;
- (double)thumbnailWidth;
- (id)cleanedProceduralWallpaperInfo:(id)info;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)fallbackWallpaperConfigurationForVarient:(int64_t)varient;
- (id)getWallpaperLegibilitySettingsForVariant:(int64_t)variant;
- (id)migratedWallpaperOptionsForWallpaperOptions:(id)options originalImageSize:(CGSize)size;
- (id)normalizeImage:(id)image;
- (id)posterMigrationInfo;
- (id)proceduralWallpaperInfoForVariant:(int64_t)variant;
- (id)succinctDescription;
- (id)thumbnailDataForImage:(id)image;
- (id)videoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperColorForVariant:(int64_t)variant fromDataStore:(id)store colorName:(id *)name;
- (id)wallpaperConfigurationForVariant:(int64_t)variant;
- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types wallpaperMode:(int64_t)mode;
- (id)wallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperImageHashDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperOriginalImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperThumbnailImageDataForFulfillingLookupForConfiguration:(id)configuration;
- (id)wallpaperThumbnailImageDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (id)wallpaperThumbnailImageDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode inDataStore:(id)store;
- (id)wallpaperThumbnailImageForFulfillingLookupForConfiguration:(id)configuration;
- (id)wallpaperThumbnailImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (int64_t)effectiveSharedVariantForVariants:(int64_t)variants;
- (int64_t)wallpaperTypeForSharedWallpaperConfigurationForTypes:(unint64_t)types;
- (void)clearCacheForVariants:(int64_t)variants memoryOnly:(BOOL)only;
- (void)dealloc;
- (void)delayNotifyingChangeForVariants:(int64_t)variants;
- (void)endChangeBatch;
- (void)getBestCropRect:(CGRect *)rect zoomScale:(double *)scale forImageSize:(CGSize)size portrait:(BOOL)portrait parallaxFactor:(double)factor;
- (void)migrateWallpaperOptionsForImageIfNecessaryForVariant:(int64_t)variant representingVariants:(int64_t)variants;
- (void)notifyDelegateOfChangesToVariants:(int64_t)variants;
- (void)performMigrationWithFailureHandler:(id)handler;
- (void)posterMigrationInfo;
- (void)regenerateStaticWallpaperThumbnailImages;
- (void)regenerateThumbnailIfNecessaryForVariant:(int64_t)variant wallpaperMode:(int64_t)mode;
- (void)regenerateThumbnailsIfNecessary;
- (void)removeDataForTypes:(unint64_t)types variants:(int64_t)variants variantsShareWallpaperConfiguration:(BOOL)configuration;
- (void)removeProceduralWallpaperForVariants:(int64_t)variants;
- (void)removeVideoForVariants:(int64_t)variants;
- (void)removeWallpaperColorForVariants:(int64_t)variants;
- (void)removeWallpaperGradientForVariants:(int64_t)variants;
- (void)removeWallpaperImageDataTypes:(unint64_t)types forVariants:(int64_t)variants;
- (void)removeWallpaperImageHashDataForVariants:(int64_t)variants;
- (void)removeWallpaperImagesForVariants:(int64_t)variants;
- (void)removeWallpaperImagesForVariants:(int64_t)variants variantsShareWallpaperConfiguration:(BOOL)configuration;
- (void)removeWallpaperOptionsForVariants:(int64_t)variants;
- (void)restoreDefaultWallpaperForAllVariantsAndNotify:(BOOL)notify;
- (void)safeMigrateWallpaperImageIfNecessary;
- (void)saveCroppedVideo:(id)video toURL:(id)l cropRect:(CGRect)rect completionHandler:(id)handler;
- (void)wallpaperDidChangeForVariants:(int64_t)variants shouldNotify:(BOOL)notify;
@end

@implementation PBUIWallpaperConfigurationManager

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self && PBUIRegisterForWallpaperExternalChangeNotification___once != -1)
  {
    +[PBUIWallpaperConfigurationManager initialize];
  }
}

- (PBUIWallpaperConfigurationManager)initWithWallpaperDataStores:(id)stores wallpaperSize:(CGSize)size scale:(double)scale sizeType:(int64_t)type
{
  height = size.height;
  width = size.width;
  v33 = *MEMORY[0x277D85DE8];
  storesCopy = stores;
  v25.receiver = self;
  v25.super_class = PBUIWallpaperConfigurationManager;
  v12 = [(PBUIWallpaperConfigurationManager *)&v25 init];
  v13 = v12;
  if (v12)
  {
    v14 = PBUILogCommon(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v34.width = width;
      v34.height = height;
      v20 = NSStringFromCGSize(v34);
      v21 = v20;
      if (type > 4)
      {
        v22 = &stru_282FB34B0;
      }

      else
      {
        v22 = *(&off_2783624B8 + type);
      }

      *location = 138413058;
      *&location[4] = storesCopy;
      v27 = 2112;
      v28 = v20;
      v29 = 2048;
      scaleCopy = scale;
      v31 = 2112;
      v32 = v22;
      _os_log_debug_impl(&dword_21E67D000, v14, OS_LOG_TYPE_DEBUG, "Initialize PBUIWallpaperConfigurationManager with data stores: %@, wallpaper size: %@, scale: %f, size type: %@", location, 0x2Au);
    }

    v15 = [storesCopy copy];
    dataStores = v13->_dataStores;
    v13->_dataStores = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    wallpaperImageCache = v13->_wallpaperImageCache;
    v13->_wallpaperImageCache = v17;

    v13->_wallpaperSize.width = width;
    v13->_wallpaperSize.height = height;
    v13->_wallpaperScale = scale;
    v13->_wallpaperMode = 0;
    v13->_wallpaperSizeType = type;
    v13->_enableWallpaperDimming = 0;
    objc_initWeak(location, v13);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __94__PBUIWallpaperConfigurationManager_initWithWallpaperDataStores_wallpaperSize_scale_sizeType___block_invoke;
    v23[3] = &unk_278362380;
    objc_copyWeak(&v24, location);
    v13->_externalNotificationToken = PBUIRegisterForExternalWallpaperChangeNotificationWithHandler(v23);
    objc_destroyWeak(&v24);
    objc_destroyWeak(location);
  }

  return v13;
}

void __94__PBUIWallpaperConfigurationManager_initWithWallpaperDataStores_wallpaperSize_scale_sizeType___block_invoke(uint64_t a1, uint64_t a2, char a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ((a3 & 1) == 0)
  {
    v5 = WeakRetained;
    [WeakRetained clearCacheForVariants:3 memoryOnly:1];
    WeakRetained = v5;
  }
}

- (PBUIWallpaperConfigurationManager)initWithWallpaperDataStores:(id)stores
{
  v4 = MEMORY[0x277D759A0];
  storesCopy = stores;
  mainScreen = [v4 mainScreen];
  v7 = PBUICurrentDeviceWallpaperSizeType();
  [mainScreen _referenceBounds];
  v9 = v8;
  v11 = v10;
  [mainScreen scale];
  v13 = [(PBUIWallpaperConfigurationManager *)self initWithWallpaperDataStores:storesCopy wallpaperSize:v7 scale:v9 sizeType:v11, v12];

  return v13;
}

- (PBUIWallpaperConfigurationManager)init
{
  v11[1] = *MEMORY[0x277D85DE8];
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  if ([mEMORY[0x277D262A0] userMode] == 1)
  {
  }

  else
  {
    isEphemeralMultiUser = [mEMORY[0x277D262A0] isEphemeralMultiUser];

    if (!isEphemeralMultiUser)
    {
      v5 = objc_alloc_init(PBUIWallpaperDirectoryDataStore);
      v7 = objc_alloc_init(PBUIWallpaperUserDefaultsDataStore);
      v10[0] = v5;
      v10[1] = v7;
      v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];

      goto LABEL_6;
    }
  }

  v5 = objc_alloc_init(PBUIWallpaperSharedDirectoryDataStore);
  v11[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
LABEL_6:

  v8 = [(PBUIWallpaperConfigurationManager *)self initWithWallpaperDataStores:v6];
  return v8;
}

- (void)dealloc
{
  notify_cancel(self->_externalNotificationToken);
  v3.receiver = self;
  v3.super_class = PBUIWallpaperConfigurationManager;
  [(PBUIWallpaperConfigurationManager *)&v3 dealloc];
}

- (CGSize)wallpaperSizeIncludingParallaxOverhang
{
  [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
  v3 = v2;
  v5 = v4;
  v6 = PBUICurrentParallaxDeviceType();

  [PBUIWallpaperParallaxSettings minimumWallpaperSizeForWallpaperSize:v6 deviceType:v3, v5];
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)endChangeBatch
{
  v2 = self->_batchChangeCount - 1;
  self->_batchChangeCount = v2;
  if (!v2)
  {
    if (self->_batchNotifyVariants)
    {
      [(PBUIWallpaperConfigurationManager *)self notifyDelegateOfChangesToVariants:?];
      self->_batchNotifyVariants = 0;
    }
  }
}

- (void)delayNotifyingChangeForVariants:(int64_t)variants
{
  if (![(PBUIWallpaperConfigurationManager *)self isInChangeBatch])
  {
    [(PBUIWallpaperConfigurationManager *)a2 delayNotifyingChangeForVariants:?];
  }

  self->_batchNotifyVariants |= variants;
}

- (BOOL)isVideoSupportedForVariant:(int64_t)variant
{
  delegate = [(PBUIWallpaperConfigurationManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate wallpaperConfigurationManager:self isVideoSupportedForVariant:variant];
  }

  else
  {
    v6 = [(PBUIWallpaperConfigurationManager *)self isVideoSupportedByDefaultForVariant:variant];
  }

  v7 = v6;

  return v7;
}

- (id)wallpaperConfigurationForVariant:(int64_t)variant includingValuesForTypes:(unint64_t)types wallpaperMode:(int64_t)mode
{
  v93 = *MEMORY[0x277D85DE8];
  v8 = PBUILogCommon(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager wallpaperConfigurationForVariant:variant includingValuesForTypes:types wallpaperMode:v8];
  }

  v76 = [(PBUIWallpaperConfigurationManager *)self isVideoSupportedForVariant:variant];
  if (variant == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (variant == 1)
  {
    v10 = ![(PBUIWallpaperConfigurationManager *)self isVideoSupportedForVariant:1];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  v70 = v10;
  modeCopy = mode;
  selfCopy = self;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v11 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
  if (!v11)
  {
    LOBYTE(v71) = 0;
    LOBYTE(v9) = 0;
    v42 = 0;
    v14 = 0;
    v21 = 0;
    v78 = 0;
    v15 = 0;
    v74 = 0;
    v43 = 0;
    variantCopy2 = -1;
    goto LABEL_68;
  }

  v13 = v11;
  v69 = v9;
  v71 = 0;
  LOBYTE(v9) = 0;
  v14 = 0;
  v15 = 0;
  v74 = 0;
  v77 = *v83;
  v78 = 0;
  variantCopy2 = -1;
  *&v12 = 138543618;
  v68 = v12;
  do
  {
    v16 = 0;
    do
    {
      v17 = v14;
      if (*v83 != v77)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v82 + 1) + 8 * v16);
      v19 = [v18 proceduralWallpaperInfoForVariant:{variant, v68}];
      if (v19)
      {
        v20 = v19;
        if ([(PBUIWallpaperConfigurationManager *)selfCopy isProceduralWallpaperInfoValid:v19])
        {
          v44 = [(PBUIWallpaperConfigurationManager *)selfCopy cleanedProceduralWallpaperInfo:v20];
          v45 = PBUIWallpaperLocationForVariant(variant);
          v46 = v18;
          v43 = v44;
          [v46 setProceduralWallpaperInfo:v44 forVariants:v45];

          v42 = 0;
          v21 = 0;
          goto LABEL_68;
        }
      }

      v81 = v14;
      v21 = [(PBUIWallpaperConfigurationManager *)selfCopy wallpaperColorForVariant:variant fromDataStore:v18 colorName:&v81];
      v14 = v81;

      if (v21)
      {
        v42 = 0;
LABEL_66:
        v43 = 0;
        goto LABEL_68;
      }

      v22 = [v18 wallpaperGradientForVariant:variant];
      if (v22)
      {
        v42 = v22;
        v21 = 0;
        goto LABEL_66;
      }

      if (v9)
      {
        LOBYTE(v9) = 1;
        v23 = modeCopy;
        goto LABEL_40;
      }

      v23 = modeCopy;
      if (types)
      {
        v24 = [v18 wallpaperImageForVariant:variant wallpaperMode:modeCopy];

        if (v24)
        {
          LOBYTE(v9) = 1;
          variantCopy2 = variant;
          v74 = v24;
          goto LABEL_40;
        }

        v9 = PBUILogCommon(v25);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v28 = PBUIStringForWallpaperVariant(variant);
          v29 = PBUIStringForWallpaperMode(modeCopy);
          *buf = v68;
          v87 = v28;
          v88 = 2114;
          v89 = v29;
          _os_log_impl(&dword_21E67D000, v9, OS_LOG_TYPE_DEFAULT, "Cannot find image for variant: %{public}@ with wallpaper mode: %{public}@. Defaulting to PBUIWallpaperModeNone image.", buf, 0x16u);
        }

        v30 = [v18 wallpaperImageForVariant:variant wallpaperMode:0];
        LODWORD(v9) = v30 != 0;
        v31 = v9 | v71;
        if (variant == 1 && !v30)
        {
          v32 = [v18 wallpaperImageForVariant:v69 wallpaperMode:modeCopy];
          if (!v32)
          {
            v32 = [v18 wallpaperImageForVariant:v69 wallpaperMode:0];
            v31 = (v32 != 0) | v71;
          }

          v74 = v32;
          v27 = v69;
          LOBYTE(v9) = v32 != 0;
          v71 = v31;
          goto LABEL_37;
        }

        v74 = v30;
        v71 |= v9;
        goto LABEL_39;
      }

      if ([v18 hasWallpaperImageForVariant:variant wallpaperMode:modeCopy])
      {
        LOBYTE(v9) = 1;
LABEL_39:
        variantCopy2 = variant;
        goto LABEL_40;
      }

      v26 = [v18 hasWallpaperImageForVariant:variant wallpaperMode:0];
      LOBYTE(v9) = v26;
      v71 |= v26;
      if (variant != 1 || (v26 & 1) != 0)
      {
        goto LABEL_39;
      }

      if ([v18 hasWallpaperImageForVariant:v69 wallpaperMode:modeCopy])
      {
        v27 = v69;
        LOBYTE(v9) = 1;
LABEL_37:
        variantCopy2 = v27;
        goto LABEL_40;
      }

      LODWORD(v9) = [v18 hasWallpaperImageForVariant:v69 wallpaperMode:0];
      v71 |= v9;
      variantCopy2 = v69;
LABEL_40:
      if (v15)
      {
        v33 = 0;
      }

      else
      {
        v33 = v76;
      }

      if (v33)
      {
        v34 = [v18 verifiedVideoURLForVariant:variant wallpaperMode:v23];
        if (v34)
        {
          v15 = v34;
          v35 = v18;
          variantCopy4 = variant;
          goto LABEL_46;
        }

        if ((v70 & 1) == 0)
        {
          v38 = [v18 verifiedVideoURLForVariant:v69 wallpaperMode:v23];
          if (v38)
          {
            v15 = v38;
            v35 = v18;
            variantCopy4 = v69;
LABEL_46:
            v37 = v23;
LABEL_53:
            v40 = [v35 verifiedOriginalVideoURLForVariant:variantCopy4 wallpaperMode:v37];

            v78 = v40;
            goto LABEL_54;
          }
        }

        v39 = [v18 verifiedVideoURLForVariant:variant wallpaperMode:0];
        if (v39)
        {
          v15 = v39;
          v35 = v18;
          variantCopy4 = variant;
LABEL_52:
          v37 = 0;
          goto LABEL_53;
        }

        if (v70)
        {
          v15 = 0;
        }

        else
        {
          v15 = [v18 verifiedVideoURLForVariant:v69 wallpaperMode:0];
          if (v15)
          {
            v35 = v18;
            variantCopy4 = v69;
            goto LABEL_52;
          }
        }
      }

LABEL_54:
      ++v16;
    }

    while (v13 != v16);
    v41 = [obj countByEnumeratingWithState:&v82 objects:v92 count:16];
    v13 = v41;
    v42 = 0;
    v21 = 0;
    v43 = 0;
  }

  while (v41);
LABEL_68:

  v48 = PBUILogCommon(v47);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v87 = v43;
    v88 = 2112;
    v89 = v15;
    v90 = 2112;
    v91 = v74;
    _os_log_debug_impl(&dword_21E67D000, v48, OS_LOG_TYPE_DEBUG, "Procedural: %@, Video: %@, Static: %@", buf, 0x20u);
  }

  if (v43)
  {
    v50 = [[PBUIWallpaperConfiguration alloc] initWithVariant:variant type:2];
    v49 = [(PBUIWallpaperConfiguration *)v50 setProceduralWallpaperInfo:v43];
    goto LABEL_76;
  }

  if (v21)
  {
    v50 = [[PBUIWallpaperConfiguration alloc] initWithVariant:variant type:4];
    [(PBUIWallpaperConfiguration *)v50 setWallpaperColor:v21];
    v49 = [(PBUIWallpaperConfiguration *)v50 setWallpaperColorName:v14];
    goto LABEL_76;
  }

  if (v42)
  {
    v50 = [[PBUIWallpaperConfiguration alloc] initWithVariant:variant type:5];
    v49 = [(PBUIWallpaperConfiguration *)v50 setWallpaperGradient:v42];
    goto LABEL_76;
  }

  if (((v15 != 0) & v9) == 1)
  {
    v50 = [[PBUIWallpaperConfiguration alloc] initWithVariant:variant type:3];
    [(PBUIWallpaperConfiguration *)v50 setVideoURL:v15];
    [(PBUIWallpaperConfiguration *)v50 setOriginalVideoURL:v78];
    v67 = v50;
    goto LABEL_107;
  }

  if ((v9 & 1) == 0)
  {
    v50 = 0;
LABEL_76:
    if (!v74)
    {
      goto LABEL_79;
    }

LABEL_77:
    if (variantCopy2 != -1)
    {
      wallpaperImageCache = selfCopy->_wallpaperImageCache;
      [MEMORY[0x277CCABB0] numberWithInteger:variantCopy2];
      v53 = v52 = v43;
      [(NSMutableDictionary *)wallpaperImageCache setObject:v74 forKey:v53];

      v43 = v52;
    }

    goto LABEL_79;
  }

  v67 = [[PBUIWallpaperConfiguration alloc] initWithVariant:variant type:1];
  v50 = v67;
LABEL_107:
  v49 = [(PBUIWallpaperConfiguration *)v67 setWallpaperImage:v74];
  if (v74)
  {
    goto LABEL_77;
  }

LABEL_79:
  if (v50)
  {
    goto LABEL_84;
  }

  v54 = PBUILogCommon(v49);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager wallpaperConfigurationForVariant:includingValuesForTypes:wallpaperMode:];
  }

  v55 = [(PBUIWallpaperConfigurationManager *)selfCopy fallbackWallpaperConfigurationForVarient:variant];
  v50 = v55;
  if (v55)
  {
LABEL_84:
    if ((types & 0x10) != 0 && !v43)
    {
      if (v71)
      {
        v56 = [(PBUIWallpaperConfigurationManager *)selfCopy wallpaperOptionsForVariant:variant wallpaperMode:0];
        v57 = v56;
        if (selfCopy->_enableWallpaperDimming)
        {
          [v56 setWallpaperMode:modeCopy];
          [(PBUIWallpaperConfiguration *)v50 setNeedsWallpaperDimmingTreatment:1];
        }
      }

      else
      {
        v57 = [(PBUIWallpaperConfigurationManager *)selfCopy wallpaperOptionsForVariant:variant wallpaperMode:modeCopy];
      }

      if (modeCopy == 3)
      {
        [(PBUIWallpaperConfiguration *)v50 setNeedsInactiveAppearanceTreatment:1];
      }

      [(PBUIWallpaperConfiguration *)v50 setWallpaperOptions:v57];
    }

    if ((types & 2) != 0 && !v43)
    {
      wallpaperOptions = [(PBUIWallpaperConfiguration *)v50 wallpaperOptions];
      v59 = -[PBUIWallpaperConfigurationManager wallpaperOriginalImageForVariant:wallpaperMode:](selfCopy, "wallpaperOriginalImageForVariant:wallpaperMode:", variant, [wallpaperOptions wallpaperMode]);

      [(PBUIWallpaperConfiguration *)v50 setWallpaperOriginalImage:v59];
      v43 = 0;
    }

    if ((types & 4) != 0)
    {
      v60 = [(PBUIWallpaperConfigurationManager *)selfCopy wallpaperThumbnailImageForFulfillingLookupForConfiguration:v50];
      [(PBUIWallpaperConfiguration *)v50 setWallpaperThumbnailImage:v60];
    }

    if ((types & 8) != 0)
    {
      v61 = [(PBUIWallpaperConfigurationManager *)selfCopy wallpaperThumbnailImageDataForFulfillingLookupForConfiguration:v50];
      [(PBUIWallpaperConfiguration *)v50 setWallpaperThumbnailImageData:v61];
    }

    wallpaperOptions2 = [(PBUIWallpaperConfiguration *)v50 wallpaperOptions];
    v63 = -[PBUIWallpaperConfigurationManager wallpaperImageHashDataForVariant:wallpaperMode:](selfCopy, "wallpaperImageHashDataForVariant:wallpaperMode:", variant, [wallpaperOptions2 wallpaperMode]);

    [(PBUIWallpaperConfiguration *)v50 setWallpaperImageHashData:v63];
  }

  v64 = PBUILogCommon(v55);
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager wallpaperConfigurationForVariant:v50 includingValuesForTypes:variant wallpaperMode:v64];
  }

  v65 = v50;
  return v50;
}

- (id)wallpaperConfigurationForVariant:(int64_t)variant
{
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.mobilesafari"])
  {
    v7 = 4;
  }

  else
  {
    v7 = 0;
  }

  v8 = [(PBUIWallpaperConfigurationManager *)self wallpaperConfigurationForVariant:variant includingValuesForTypes:v7];

  return v8;
}

- (id)fallbackWallpaperConfigurationForVarient:(int64_t)varient
{
  v3 = [[PBUIWallpaperConfiguration alloc] initWithVariant:varient type:4];
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(PBUIWallpaperConfiguration *)v3 setWallpaperColor:blackColor];

  return v3;
}

- (char)_providerForVariant:(int64_t)variant lockConfig:(id)config homeConfig:(id)homeConfig
{
  v41 = *MEMORY[0x277D85DE8];
  configCopy = config;
  homeConfigCopy = homeConfig;
  v10 = homeConfigCopy;
  variantCopy = variant;
  if (variant == 1)
  {
    wallpaperType = [homeConfigCopy wallpaperType];
    v13 = wallpaperType;
    if ((wallpaperType & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v14 = 2;
      wallpaperType = [(PBUIWallpaperConfigurationManager *)self hasWallpaperImageForVariant:1 wallpaperMode:2];
      if (wallpaperType)
      {
        goto LABEL_24;
      }

      wallpaperOptions = [v10 wallpaperOptions];
      name = [wallpaperOptions name];
      v17 = [name length];

      if (v17)
      {
        v18 = 2;
LABEL_23:

        v14 = v18;
LABEL_24:
        v21 = PBUILogCommon(wallpaperType);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v26 = PBUIStringForWallpaperVariant(1);
          v27 = PBUIStringForPosterWallpaperMigrationProvider(v14);
          v35 = 138543874;
          v36 = v26;
          v37 = 2114;
          v38 = v27;
          v39 = 2114;
          v40 = v10;
          v28 = "provider for variant %{public}@ is %{public}@ by looking at homescreen variant : %{public}@";
LABEL_34:
          _os_log_impl(&dword_21E67D000, v21, OS_LOG_TYPE_DEFAULT, v28, &v35, 0x20u);

          goto LABEL_35;
        }

        goto LABEL_35;
      }

      v18 = 1;
      if ([(PBUIWallpaperConfigurationManager *)self hasWallpaperImageForVariant:1 wallpaperMode:0])
      {
        goto LABEL_23;
      }

      variantCopy = 0;
      if (v13 != [configCopy wallpaperType])
      {
        wallpaperImageHashData = [v10 wallpaperImageHashData];
        wallpaperImageHashData2 = [configCopy wallpaperImageHashData];
        v31 = [wallpaperImageHashData isEqual:wallpaperImageHashData2];

        if (!v31)
        {
          variantCopy = 1;
        }
      }
    }

    else
    {
      if (wallpaperType == 2)
      {
        v14 = 2;
        goto LABEL_24;
      }

      variantCopy = 1;
    }

    v19 = PBUILogCommon(wallpaperType);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = PBUIStringForWallpaperVariant(1);
      v35 = 138543618;
      v36 = v20;
      v37 = 2114;
      v38 = v10;
      _os_log_impl(&dword_21E67D000, v19, OS_LOG_TYPE_DEFAULT, "cannot determine provider for variant %{public}@ by looking at homescreen variant : %{public}@", &v35, 0x16u);
    }
  }

  if (variantCopy)
  {
LABEL_13:
    v21 = PBUILogCommon(homeConfigCopy);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperConfigurationManager _providerForVariant:variant lockConfig:? homeConfig:?];
    }

    LOBYTE(v14) = 0;
    goto LABEL_35;
  }

  wallpaperType2 = [configCopy wallpaperType];
  if ((wallpaperType2 & 0xFFFFFFFFFFFFFFFDLL) != 1)
  {
    if (wallpaperType2 == 2)
    {
      v14 = 2;
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  v14 = 2;
  wallpaperType2 = [(PBUIWallpaperConfigurationManager *)self hasWallpaperImageForVariant:0 wallpaperMode:2];
  if (wallpaperType2)
  {
    goto LABEL_32;
  }

  wallpaperOptions2 = [configCopy wallpaperOptions];
  name2 = [wallpaperOptions2 name];
  v25 = [name2 length];

  if (!v25)
  {
    if ([(PBUIWallpaperConfigurationManager *)self hasWallpaperImageForVariant:0 wallpaperMode:0])
    {
      v14 = 1;
      goto LABEL_31;
    }

LABEL_37:
    v33 = PBUILogCommon(wallpaperType2);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = PBUIStringForWallpaperVariant(variant);
      v35 = 138543618;
      v36 = v34;
      v37 = 2114;
      v38 = configCopy;
      _os_log_impl(&dword_21E67D000, v33, OS_LOG_TYPE_DEFAULT, "cannot determine provider for variant %{public}@ by looking at homescreen variant : %{public}@", &v35, 0x16u);
    }

    goto LABEL_13;
  }

  v14 = 2;
LABEL_31:

LABEL_32:
  v21 = PBUILogCommon(wallpaperType2);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v26 = PBUIStringForWallpaperVariant(variant);
    v27 = PBUIStringForPosterWallpaperMigrationProvider(v14);
    v35 = 138543874;
    v36 = v26;
    v37 = 2114;
    v38 = v27;
    v39 = 2114;
    v40 = configCopy;
    v28 = "provider for variant %{public}@ is %{public}@ by looking at lockscreen variant : %{public}@";
    goto LABEL_34;
  }

LABEL_35:

  return v14;
}

- (id)posterMigrationInfo
{
  v3 = [(PBUIWallpaperConfigurationManager *)self wallpaperConfigurationForVariant:0 includingValuesForTypes:16 wallpaperMode:0];
  v4 = [(PBUIWallpaperConfigurationManager *)self wallpaperConfigurationForVariant:1 includingValuesForTypes:16 wallpaperMode:0];
  v5 = [(PBUIWallpaperConfigurationManager *)self _providerForVariant:0 lockConfig:v3 homeConfig:v4];
  v6 = [(PBUIWallpaperConfigurationManager *)self _providerForVariant:1 lockConfig:v3 homeConfig:v4];
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_25;
  }

  if (v5 != v6)
  {
    v8 = 2 * (v6 == 1);
    goto LABEL_25;
  }

  if (v5 != 2)
  {
    if ([(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54])
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    goto LABEL_25;
  }

  wallpaperType = [v3 wallpaperType];
  if (wallpaperType != [v4 wallpaperType])
  {
    goto LABEL_20;
  }

  if (wallpaperType == 2)
  {
    proceduralWallpaperIdentifier = [v3 proceduralWallpaperIdentifier];
    proceduralWallpaperIdentifier2 = [v4 proceduralWallpaperIdentifier];
    if (BSEqualStrings())
    {
      proceduralWallpaperInfo = [v3 proceduralWallpaperInfo];
      proceduralWallpaperInfo2 = [v4 proceduralWallpaperInfo];
      if (BSEqualDictionaries())
      {
        proceduralWallpaperOptions = [v3 proceduralWallpaperOptions];
        proceduralWallpaperOptions2 = [v4 proceduralWallpaperOptions];
        v15 = BSEqualDictionaries();
      }

      else
      {
        v15 = 0;
      }

      v8 = v15 & 1;
      goto LABEL_25;
    }

LABEL_20:
    v8 = 0;
    goto LABEL_25;
  }

  wallpaperOptions = [v3 wallpaperOptions];
  wallpaperOptions2 = [v4 wallpaperOptions];
  v18 = BSEqualObjects();

  if (v18)
  {
    name = [wallpaperOptions name];
    v20 = [name length];

    v8 = 1;
    if (!v20)
    {
      if ([(PBUIWallpaperConfigurationManager *)self hasWallpaperImageForVariant:1 wallpaperMode:0])
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }
  }

  else
  {
    v8 = 2;
  }

LABEL_25:
  v21 = [[PBUIPosterWallpaperMigrationInfo alloc] _initWithPairingType:v8 lockProvider:v5 homeProvider:v7];
  v22 = PBUILogCommon(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [PBUIWallpaperConfigurationManager posterMigrationInfo];
  }

  return v21;
}

- (BOOL)hasWallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v7 = [dataStores countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v13 + 1) + 8 * i) hasWallpaperImageForVariant:variant wallpaperMode:mode])
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v8 = [dataStores countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (id)wallpaperImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v23 = *MEMORY[0x277D85DE8];
  wallpaperImageCache = self->_wallpaperImageCache;
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v9 = [(NSMutableDictionary *)wallpaperImageCache objectForKey:v8];

  if (!v9)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
    v11 = [dataStores countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(dataStores);
          }

          v15 = [*(*(&v18 + 1) + 8 * i) wallpaperImageForVariant:variant wallpaperMode:mode];
          if (v15)
          {
            v9 = v15;

            v16 = self->_wallpaperImageCache;
            dataStores = [MEMORY[0x277CCABB0] numberWithInteger:variant];
            [(NSMutableDictionary *)v16 setObject:v9 forKey:dataStores];
            goto LABEL_12;
          }
        }

        v12 = [dataStores countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v9 = 0;
LABEL_12:
  }

  return v9;
}

- (id)wallpaperOriginalImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = [(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v9 = [dataStores countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    v12 = variant == 1 && v7;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(dataStores);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 wallpaperOriginalImageForVariant:variant wallpaperMode:mode];
        if (!v15)
        {
          if (!v12)
          {
            continue;
          }

          if ([v14 hasWallpaperImageForVariant:1 wallpaperMode:mode])
          {
            continue;
          }

          v15 = [v14 wallpaperOriginalImageForVariant:0 wallpaperMode:mode];
          if (!v15)
          {
            continue;
          }
        }

        v16 = v15;
        goto LABEL_16;
      }

      v10 = [dataStores countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_16:

  return v16;
}

- (id)wallpaperThumbnailImageDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v8 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(dataStores);
      }

      v12 = *(*(&v16 + 1) + 8 * v11);
      v13 = [(PBUIWallpaperConfigurationManager *)self wallpaperThumbnailImageDataForVariant:variant wallpaperMode:mode inDataStore:v12];
      v14 = v13;
      if (variant == 1 && !v13)
      {
        v14 = [(PBUIWallpaperConfigurationManager *)self wallpaperThumbnailImageDataForVariant:0 wallpaperMode:mode inDataStore:v12];
      }

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v14 = 0;
  }

  return v14;
}

- (id)wallpaperThumbnailImageDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode inDataStore:(id)store
{
  storeCopy = store;
  v8 = [storeCopy wallpaperThumbnailDataForVariant:variant wallpaperMode:mode];
  if (!v8)
  {
    v8 = [storeCopy wallpaperThumbnailDataForVariant:variant wallpaperMode:0];
  }

  return v8;
}

- (id)wallpaperThumbnailImageForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v4 = [(PBUIWallpaperConfigurationManager *)self wallpaperThumbnailImageDataForVariant:variant wallpaperMode:mode];
  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x277D755B8]) _initWithData:v4 preserveScale:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)wallpaperThumbnailImageForFulfillingLookupForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  wallpaperType = [configurationCopy wallpaperType];
  v6 = 0;
  if (wallpaperType <= 2)
  {
    if (wallpaperType == 1)
    {
      goto LABEL_9;
    }

    if (wallpaperType != 2)
    {
      goto LABEL_13;
    }

    proceduralWallpaperInfo = [configurationCopy proceduralWallpaperInfo];
    v8 = PBUIMagicWallpaperThumbnail(proceduralWallpaperInfo);
LABEL_12:
    v6 = v8;

    goto LABEL_13;
  }

  switch(wallpaperType)
  {
    case 5:
      [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
      v10 = v9;
      [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
      v12 = v10 * v11;
      v14 = v10 * v13;
      [(PBUIWallpaperConfigurationManager *)self thumbnailWidth];
      v16 = round(v15);
      v17 = round(v14 * (v15 / v12));
      proceduralWallpaperInfo = [configurationCopy wallpaperGradient];
      v8 = PBUIWallpaperImageWithGradient(proceduralWallpaperInfo, v16, v17, 1.0);
      goto LABEL_12;
    case 4:
      [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
      v19 = v18;
      [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
      v21 = v19 * v20;
      v23 = v19 * v22;
      [(PBUIWallpaperConfigurationManager *)self thumbnailWidth];
      v25 = round(v24);
      v26 = round(v23 * (v24 / v21));
      proceduralWallpaperInfo = [configurationCopy wallpaperColor];
      v8 = PBUIWallpaperImageWithFlatColor(proceduralWallpaperInfo, v25, v26, 1.0);
      goto LABEL_12;
    case 3:
LABEL_9:
      v6 = -[PBUIWallpaperConfigurationManager wallpaperThumbnailImageForVariant:wallpaperMode:](self, "wallpaperThumbnailImageForVariant:wallpaperMode:", [configurationCopy variant], -[PBUIWallpaperConfigurationManager wallpaperMode](self, "wallpaperMode"));
      break;
  }

LABEL_13:

  return v6;
}

- (id)wallpaperThumbnailImageDataForFulfillingLookupForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  wallpaperType = [configurationCopy wallpaperType];
  v6 = 0;
  if (wallpaperType <= 5)
  {
    if (((1 << wallpaperType) & 0x34) != 0)
    {
      v7 = [(PBUIWallpaperConfigurationManager *)self wallpaperThumbnailImageForFulfillingLookupForConfiguration:configurationCopy];
      v6 = UIImagePNGRepresentation(v7);
    }

    else if (((1 << wallpaperType) & 0xA) != 0)
    {
      v6 = -[PBUIWallpaperConfigurationManager wallpaperThumbnailImageDataForVariant:wallpaperMode:](self, "wallpaperThumbnailImageDataForVariant:wallpaperMode:", [configurationCopy variant], -[PBUIWallpaperConfigurationManager wallpaperMode](self, "wallpaperMode"));
    }
  }

  return v6;
}

- (int64_t)effectiveSharedVariantForVariants:(int64_t)variants
{
  v3 = -1;
  if ((variants & 2) != 0)
  {
    v3 = 1;
  }

  if (variants)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (BOOL)setWallpaperImage:(id)image adjustedImage:(id)adjustedImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode
{
  imageCopy = image;
  adjustedImageCopy = adjustedImage;
  dataCopy = data;
  hashDataCopy = hashData;
  optionsCopy = options;
  [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
  v21 = v20;
  v23 = v22;
  [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
  v25 = v24;
  parallaxDeviceType = [(PBUIWallpaperConfigurationManager *)self parallaxDeviceType];
  [imageCopy scale];
  [optionsCopy bestWallpaperSizeForWallpaperSize:parallaxDeviceType wallpaperScale:v21 deviceType:v23 imageScale:{v25, v27}];
  if (!adjustedImageCopy)
  {
    [optionsCopy cropRect];
    v28 = [imageCopy pbui_cropImageWithRect:? outputSize:?];
    if (!v28)
    {
      v28 = imageCopy;
    }

    adjustedImageCopy = v28;
  }

  [optionsCopy zoomScale];
  v30 = v29;
  if (([optionsCopy supportsCropping] & 1) == 0 && fabs(v30 + -1.0) >= 2.22044605e-16)
  {
    v31 = [adjustedImageCopy pbui_scaleImage:v30];

    pbui_imageHashData = [v31 pbui_imageHashData];

    hashDataCopy = pbui_imageHashData;
    adjustedImageCopy = v31;
  }

  LOBYTE(v35) = 0;
  v33 = [(PBUIWallpaperConfigurationManager *)self setWallpaperImage:adjustedImageCopy originalImage:imageCopy thumbnailData:dataCopy imageHashData:hashDataCopy wallpaperOptions:optionsCopy forVariants:variants options:1 wallpaperMode:mode isMigrating:v35];

  return v33;
}

- (BOOL)setWallpaperImage:(id)image originalImage:(id)originalImage forVariants:(int64_t)variants options:(unint64_t)options
{
  imageCopy = image;
  originalImageCopy = originalImage;
  if (!imageCopy)
  {
    [PBUIWallpaperConfigurationManager setWallpaperImage:a2 originalImage:self forVariants:? options:?];
  }

  LOBYTE(v15) = 0;
  v13 = [(PBUIWallpaperConfigurationManager *)self setWallpaperImage:imageCopy originalImage:originalImageCopy thumbnailData:0 imageHashData:0 wallpaperOptions:0 forVariants:variants options:options wallpaperMode:0 isMigrating:v15];

  return v13;
}

- (BOOL)setWallpaperImage:(id)image originalImage:(id)originalImage thumbnailData:(id)data imageHashData:(id)hashData wallpaperOptions:(id)options forVariants:(int64_t)variants options:(unint64_t)a9 wallpaperMode:(int64_t)self0 isMigrating:(BOOL)self1
{
  v66 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  originalImageCopy = originalImage;
  dataCopy = data;
  hashDataCopy = hashData;
  optionsCopy = options;
  v21 = optionsCopy;
  if (!imageCopy)
  {
    [PBUIWallpaperConfigurationManager setWallpaperImage:a2 originalImage:self thumbnailData:? imageHashData:? wallpaperOptions:? forVariants:? options:? wallpaperMode:? isMigrating:?];
  }

  v22 = PBUILogCommon(optionsCopy);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = PBUIStringForWallpaperLocations(variants);
    *buf = 138543618;
    v63 = v21;
    v64 = 2114;
    v65 = v23;
    _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_DEFAULT, "Set wallpaper options: %{public}@ for variants: %{public}@", buf, 0x16u);
  }

  v24 = objc_autoreleasePoolPush();
  pbui_CGImageBackedImage = [imageCopy pbui_CGImageBackedImage];
  pbui_CGImageBackedImage2 = [originalImageCopy pbui_CGImageBackedImage];

  if (a9)
  {
    v26 = [(PBUIWallpaperConfigurationManager *)self normalizeImage:pbui_CGImageBackedImage];

    pbui_CGImageBackedImage = v26;
  }

  if (![hashDataCopy length])
  {
    pbui_imageHashData = [pbui_CGImageBackedImage pbui_imageHashData];

    hashDataCopy = pbui_imageHashData;
  }

  if (![dataCopy length])
  {
    v28 = [(PBUIWallpaperConfigurationManager *)self thumbnailDataForImage:pbui_CGImageBackedImage];

    dataCopy = v28;
  }

  v29 = [(PBUIWallpaperConfigurationManager *)self effectiveSharedVariantForVariants:variants];
  if ([pbui_CGImageBackedImage CGImage])
  {
    v48 = hashDataCopy;
    v49 = imageCopy;
    v50 = dataCopy;
    if ([v21 wallpaperStatus] == 1 || objc_msgSend(v21, "wallpaperStatus") == 3 || migrating && objc_msgSend(v21, "wallpaperMode") == mode)
    {
      [(PBUIWallpaperConfigurationManager *)self wallpaperWillChangeForVariants:variants];
    }

    if (((pbui_CGImageBackedImage2 == 0) & (a9 >> 1)) != 0)
    {
      v30 = -3;
    }

    else
    {
      v30 = -1;
    }

    v57 = 0u;
    v58 = 0u;
    v53 = v30;
    if ([(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54])
    {
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v51 = v31;
    v59 = 0uLL;
    v60 = 0uLL;
    dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
    v33 = [dataStores countByEnumeratingWithState:&v57 objects:v61 count:16];
    if (v33)
    {
      v34 = v33;
      modeCopy = mode;
      modeCopy2 = mode;
      v35 = *v58;
      v36 = variants & 3;
      while (2)
      {
        for (i = 0; i != v34; ++i)
        {
          if (*v58 != v35)
          {
            objc_enumerationMutation(dataStores);
          }

          v38 = *(*(&v57 + 1) + 8 * i);
          if (migrating)
          {
            if ([*(*(&v57 + 1) + 8 * i) setWallpaperImage:pbui_CGImageBackedImage forVariant:v29 wallpaperMode:mode])
            {
              goto LABEL_40;
            }
          }

          else
          {
            if ([v21 wallpaperStatus] == 1 || objc_msgSend(v21, "wallpaperStatus") == 2)
            {
              if (v36 == 3)
              {
                [v38 removeWallpaperImageDataTypes:v53 forVariants:2];
              }

              else if (variants)
              {
                [v38 moveWallpaperImageDataTypes:v51 fromVariant:0 toVariant:1];
              }

              [v38 removeWallpaperImageDataTypes:1 forVariants:{variants, modeCopy}];
            }

            if ([v38 setWallpaperImage:pbui_CGImageBackedImage forVariant:v29 wallpaperMode:{objc_msgSend(v21, "wallpaperMode", modeCopy)}])
            {
LABEL_40:
              if (pbui_CGImageBackedImage2)
              {
                imageCopy = v49;
                dataCopy = v50;
                selfCopy3 = self;
                if ([v21 wallpaperStatus] == 1)
                {
                  if (migrating)
                  {
LABEL_55:
                    [v38 setWallpaperOriginalImage:pbui_CGImageBackedImage2 forVariant:v29 wallpaperMode:{mode, modeCopy}];
LABEL_56:
                    if (dataCopy)
                    {
                      goto LABEL_57;
                    }

LABEL_68:
                    if (v36 != 3 && !migrating)
                    {
                      v41 = [v38 wallpaperThumbnailDataForVariant:0 wallpaperMode:1];
                      v42 = [v38 wallpaperThumbnailDataForVariant:1 wallpaperMode:1];
                      v43 = [v38 wallpaperThumbnailDataForVariant:0 wallpaperMode:2];
                      v44 = [v38 wallpaperThumbnailDataForVariant:1 wallpaperMode:2];
                      if ([v41 isEqualToData:v42] && objc_msgSend(v43, "isEqualToData:", v44))
                      {
                        [v38 removeWallpaperImageDataTypes:-1 forVariants:2];
                      }

                      dataCopy = v50;
                      selfCopy3 = self;
                    }

LABEL_74:

                    if (v21)
                    {
                      -[PBUIWallpaperConfigurationManager setWallpaperOptions:forVariants:wallpaperMode:](selfCopy3, "setWallpaperOptions:forVariants:wallpaperMode:", v21, variants, [v21 wallpaperMode]);
                    }

                    hashDataCopy = v48;
                    if (v48)
                    {
                      if ([v21 wallpaperStatus] == 1)
                      {
                        if (migrating)
                        {
                          goto LABEL_85;
                        }

LABEL_82:
                        [(PBUIWallpaperConfigurationManager *)selfCopy3 removeWallpaperImageHashDataForVariants:variants, modeCopy];
                      }

                      else if ([v21 wallpaperStatus] == 2 && !migrating)
                      {
                        goto LABEL_82;
                      }

                      if (!migrating)
                      {
                        modeCopy2 = [v21 wallpaperMode];
                      }

LABEL_85:
                      [(PBUIWallpaperConfigurationManager *)selfCopy3 setWallpaperImageHashData:v48 forVariants:variants wallpaperMode:modeCopy2, modeCopy];
                    }

                    if ([v21 wallpaperStatus] == 1 || objc_msgSend(v21, "wallpaperStatus") == 2)
                    {
                      [(PBUIWallpaperConfigurationManager *)selfCopy3 removeAllDataExceptForTypes:10 variants:variants variantsShareWallpaperConfiguration:0];
                    }

                    if ([v21 wallpaperStatus] == 1 || objc_msgSend(v21, "wallpaperStatus") == 3 || migrating && objc_msgSend(v21, "wallpaperMode") == v47)
                    {
                      v39 = 1;
                      [(PBUIWallpaperConfigurationManager *)selfCopy3 wallpaperDidChangeForVariants:variants shouldNotify:1];
                    }

                    else
                    {
                      v39 = 1;
                    }

                    goto LABEL_92;
                  }

LABEL_53:
                  [v38 removeWallpaperImageDataTypes:2 forVariants:{variants, modeCopy}];
                }

                else if ([v21 wallpaperStatus] == 2 && !migrating)
                {
                  goto LABEL_53;
                }

                if (migrating)
                {
                  goto LABEL_55;
                }

                [v38 setWallpaperOriginalImage:pbui_CGImageBackedImage2 forVariant:v29 wallpaperMode:{objc_msgSend(v21, "wallpaperMode")}];
                if (v50)
                {
                  goto LABEL_57;
                }

                goto LABEL_68;
              }

              imageCopy = v49;
              dataCopy = v50;
              selfCopy3 = self;
              if ((a9 >> 1))
              {
                goto LABEL_56;
              }

              [v38 removeWallpaperImageDataTypes:2 forVariants:PBUIWallpaperLocationForVariant(v29)];
              if (!v50)
              {
                goto LABEL_68;
              }

LABEL_57:
              if ([v21 wallpaperStatus] == 1)
              {
                if (migrating)
                {
LABEL_64:
                  [(PBUIWallpaperConfigurationManager *)selfCopy3 setWallpaperThumbnailData:dataCopy forVariant:v29 wallpaperMode:mode];
                  goto LABEL_74;
                }

LABEL_62:
                [(PBUIWallpaperConfigurationManager *)selfCopy3 removeWallpaperImageDataTypes:4 forVariants:variants];
              }

              else if ([v21 wallpaperStatus] == 2 && !migrating)
              {
                goto LABEL_62;
              }

              if (!migrating)
              {
                -[PBUIWallpaperConfigurationManager setWallpaperThumbnailData:forVariant:wallpaperMode:](selfCopy3, "setWallpaperThumbnailData:forVariant:wallpaperMode:", dataCopy, v29, [v21 wallpaperMode]);
                goto LABEL_68;
              }

              goto LABEL_64;
            }
          }
        }

        v34 = [dataStores countByEnumeratingWithState:&v57 objects:v61 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    v39 = 0;
    imageCopy = v49;
    dataCopy = v50;
    hashDataCopy = v48;
  }

  else
  {
    v39 = 0;
  }

LABEL_92:

  objc_autoreleasePoolPop(v24);
  return v39;
}

- (id)normalizeImage:(id)image
{
  v47 = *MEMORY[0x277D85DE8];
  imageCopy = image;
  if (imageCopy)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
    v6 = [dataStores countByEnumeratingWithState:&v34 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(dataStores);
          }

          v10 = [*(*(&v34 + 1) + 8 * i) verifiedVideoURLForVariant:0 wallpaperMode:0];

          if (v10)
          {
            v28 = imageCopy;

            v26 = v28;
            goto LABEL_21;
          }
        }

        v7 = [dataStores countByEnumeratingWithState:&v34 objects:v46 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    cGImage = [imageCopy CGImage];
    Height = CGImageGetHeight(cGImage);
    Width = CGImageGetWidth(cGImage);
    [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
    v15 = v14;
    [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
    [PBUIWallpaperParallaxSettings minimumWallpaperSizeForWallpaperSize:[(PBUIWallpaperConfigurationManager *)self parallaxDeviceType] deviceType:v16, v17];
    if (v19 > v18)
    {
      v18 = v19;
    }

    v20 = v15 * v18;
    if (v20 < Height && v20 < Width)
    {
      UIRectCenteredIntegralRect();
      v22 = v51.size.width;
      v23 = v51.size.height;
      v24 = CGImageCreateWithImageInRect(cGImage, v51);
      if (v24)
      {
        v25 = v24;
        v26 = [objc_alloc(MEMORY[0x277D755B8]) initWithCGImage:v24 scale:0 orientation:v15];

        CGImageRelease(v25);
        v28 = PBUILogCommon(v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          [v26 size];
          v29 = NSStringFromCGSize(v49);
          [v26 scale];
          v31 = v30;
          v50.width = v22;
          v50.height = v23;
          v32 = NSStringFromCGSize(v50);
          *buf = 138544130;
          v39 = v26;
          v40 = 2114;
          v41 = v29;
          v42 = 2048;
          v43 = v31;
          v44 = 2114;
          v45 = v32;
          _os_log_impl(&dword_21E67D000, v28, OS_LOG_TYPE_DEFAULT, "<SpringBoardUI>: Modified wallpaper image: %{public}@ [size=%{public}@, scale=%f] - cgImageSize=%{public}@", buf, 0x2Au);
        }

LABEL_21:

        imageCopy = v26;
      }
    }
  }

  return imageCopy;
}

- (id)thumbnailDataForImage:(id)image
{
  v3 = [MEMORY[0x277D755B8] pbui_thumbnailImageForImage:image];
  pbui_CGImageBackedImage = [v3 pbui_CGImageBackedImage];

  if (pbui_CGImageBackedImage)
  {
    v5 = UIImageJPEGRepresentation(pbui_CGImageBackedImage, 0.8);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)thumbnailWidth
{
  wallpaperSizeType = [(PBUIWallpaperConfigurationManager *)self wallpaperSizeType];
  result = 0.0;
  if (wallpaperSizeType <= 4)
  {
    return dbl_21E70D5F0[wallpaperSizeType];
  }

  return result;
}

- (BOOL)setWallpaperThumbnailFromFullsizeImage:(id)image forVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v8 = [(PBUIWallpaperConfigurationManager *)self thumbnailDataForImage:image];
  if (v8)
  {
    v9 = [(PBUIWallpaperConfigurationManager *)self setWallpaperThumbnailData:v8 forVariant:variant wallpaperMode:mode];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setWallpaperThumbnailData:(id)data forVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v10 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v16 + 1) + 8 * i) setWallpaperThumbnailData:dataCopy forVariant:variant wallpaperMode:mode])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v11 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)removeWallpaperImagesForVariants:(int64_t)variants
{
  variantsShareWallpaperConfiguration = [(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfiguration];

  [(PBUIWallpaperConfigurationManager *)self removeWallpaperImagesForVariants:variants variantsShareWallpaperConfiguration:variantsShareWallpaperConfiguration];
}

- (void)removeWallpaperImagesForVariants:(int64_t)variants variantsShareWallpaperConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  v19 = *MEMORY[0x277D85DE8];
  [(PBUIWallpaperConfigurationManager *)self clearCacheForVariants:3];
  v16 = 0u;
  v17 = 0u;
  v7 = (variants & 3) == 1 && configurationCopy;
  *(&v14 + 1) = 0;
  v15 = 0uLL;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v9 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(dataStores);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (v7)
        {
          [v13 moveWallpaperImageDataTypes:-1 fromVariant:0 toVariant:1];
        }

        else
        {
          [v13 removeWallpaperImageDataTypes:-1 forVariants:variants];
        }
      }

      v10 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)removeWallpaperImageDataTypes:(unint64_t)types forVariants:(int64_t)variants
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v7 = [dataStores countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(dataStores);
        }

        [*(*(&v11 + 1) + 8 * v10++) removeWallpaperImageDataTypes:types forVariants:variants];
      }

      while (v8 != v10);
      v8 = [dataStores countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)wallpaperOptionsForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v7 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(dataStores);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) wallpaperOptionsForVariant:variant wallpaperMode:mode];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)setWallpaperOptions:(id)options forVariants:(int64_t)variants wallpaperMode:(int64_t)mode
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = [options copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v10 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v16 + 1) + 8 * i) setWallpaperOptions:v8 forVariants:variants wallpaperMode:mode])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v11 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)removeWallpaperOptionsForVariants:(int64_t)variants
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v5 = [dataStores countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(dataStores);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeWallpaperOptionsForVariants:variants];
      }

      while (v6 != v8);
      v6 = [dataStores countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (id)wallpaperImageHashDataForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v7 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(dataStores);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) wallpaperImageHashDataForVariant:variant wallpaperMode:mode];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)shouldSetWallpaperImageHashData
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v3 = [dataStores countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v7 + 1) + 8 * i) supportsWallpaperImageHashDataStorage])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [dataStores countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (BOOL)setWallpaperImageHashData:(id)data forVariants:(int64_t)variants wallpaperMode:(int64_t)mode
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = [data copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v10 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v16 + 1) + 8 * i) setWallpaperImageHashData:v8 forVariants:variants wallpaperMode:mode])
        {
          v14 = 1;
          goto LABEL_11;
        }
      }

      v11 = [dataStores countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (void)removeWallpaperImageHashDataForVariants:(int64_t)variants
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v5 = [dataStores countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(dataStores);
        }

        [*(*(&v9 + 1) + 8 * v8++) removeWallpaperImageHashDataForVariants:variants];
      }

      while (v6 != v8);
      v6 = [dataStores countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)variantsShareWallpaperConfiguration
{
  if ([(PBUIWallpaperConfigurationManager *)self isCachedVariantsShareWallpaperConfigurationValid])
  {

    return [(PBUIWallpaperConfigurationManager *)self cachedVariantsShareWallpaperConfiguration];
  }

  else
  {
    v4 = [(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:-1];
    v5 = v4;
    [(PBUIWallpaperConfigurationManager *)self setCachedVariantsShareWallpaperConfiguration:v4];
    [(PBUIWallpaperConfigurationManager *)self setCachedVariantsShareWallpaperConfigurationValid:1];
    return v5;
  }
}

- (int64_t)wallpaperTypeForSharedWallpaperConfigurationForTypes:(unint64_t)types
{
  typesCopy = types;
  v42 = *MEMORY[0x277D85DE8];
  v5 = [(PBUIWallpaperConfigurationManager *)self isVideoSupportedForVariant:0];
  v6 = [(PBUIWallpaperConfigurationManager *)self isVideoSupportedForVariant:1];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v8 = [dataStores countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v8)
  {

    LODWORD(v10) = 0;
    LODWORD(v11) = 0;
    v12 = 0;
    v13 = 0;
    v33 = 0;
    v14 = 0;
LABEL_42:
    v27 = v10 & ~v11 & 1;
    goto LABEL_51;
  }

  v9 = v8;
  v10 = 0;
  v34 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v32 = dataStores;
  v33 = 0;
  v14 = 0;
  v35 = 0;
  v36 = *v38;
  v30 = !v6;
  v31 = !v5;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v38 != v36)
      {
        objc_enumerationMutation(dataStores);
      }

      v16 = *(*(&v37 + 1) + 8 * i);
      if ((typesCopy & 4) == 0)
      {
LABEL_9:
        if ((typesCopy & 0x10) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      }

      if (v14)
      {
        if (v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v14 = [*(*(&v37 + 1) + 8 * i) proceduralWallpaperInfoForVariant:1];
        if (v12)
        {
          goto LABEL_9;
        }
      }

      v12 = [v16 proceduralWallpaperInfoForVariant:0];
      if ((typesCopy & 0x10) == 0)
      {
        goto LABEL_18;
      }

LABEL_10:
      if (v33)
      {
        if (!v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v33 = [(PBUIWallpaperConfigurationManager *)selfCopy wallpaperColorForVariant:1 fromDataStore:v16 colorName:0];
        if (!v13)
        {
LABEL_17:
          v13 = [(PBUIWallpaperConfigurationManager *)selfCopy wallpaperColorForVariant:0 fromDataStore:v16 colorName:0];
        }
      }

LABEL_18:
      if ((typesCopy & 2) != 0)
      {
        if (!(v11 & 1 | (v14 != 0)))
        {
          v11 = 1;
          if (([v16 hasWallpaperImageForVariant:1 wallpaperMode:0] & 1) == 0)
          {
            v11 = [v16 hasWallpaperImageForVariant:1 wallpaperMode:2];
          }
        }

        if (!(v10 & 1 | (v12 != 0)))
        {
          if (([v16 hasWallpaperImageForVariant:0 wallpaperMode:0] & 1) == 0)
          {
            v10 = [v16 hasWallpaperImageForVariant:0 wallpaperMode:2];
            if ((typesCopy & 8) == 0)
            {
              continue;
            }

            goto LABEL_26;
          }

          v10 = 1;
        }
      }

      if ((typesCopy & 8) == 0)
      {
        continue;
      }

LABEL_26:
      if (!((v34 | v31) & 1 | (v12 != 0)))
      {
        v17 = v11;
        v18 = v10;
        v19 = v13;
        v20 = [v16 verifiedVideoURLForVariant:0 wallpaperMode:0];
        if (v20)
        {
          v34 = 1;
        }

        else
        {
          v21 = [v16 verifiedVideoURLForVariant:0 wallpaperMode:2];
          v34 = v21 != 0;
        }

        v13 = v19;
        v10 = v18;
        v11 = v17;
        dataStores = v32;
      }

      if (!((v35 | v30) & 1 | (v14 != 0)))
      {
        v22 = v11;
        v23 = v10;
        v24 = v13;
        v35 = 1;
        v25 = [v16 verifiedVideoURLForVariant:1 wallpaperMode:0];
        if (!v25)
        {
          v26 = [v16 verifiedVideoURLForVariant:1 wallpaperMode:2];
          v35 = v26 != 0;
        }

        v13 = v24;
        v10 = v23;
        v11 = v22;
        dataStores = v32;
      }
    }

    v9 = [dataStores countByEnumeratingWithState:&v37 objects:v41 count:16];
  }

  while (v9);

  if ((v12 != 0) != (v14 != 0))
  {
    goto LABEL_40;
  }

  if (!v12 || !v14)
  {
    if (v12 && !v14)
    {
      v27 = 2;
      goto LABEL_51;
    }

    if ((v13 != 0) != (v33 != 0))
    {
      goto LABEL_40;
    }

    if (v13 && v33)
    {
      if (([v33 isEqual:v13] & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      if (!v13 || v33)
      {
LABEL_61:
        if (((v35 ^ v34) & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_40:
        v27 = 0;
        goto LABEL_51;
      }

      v33 = 0;
    }

    v27 = 4;
    goto LABEL_51;
  }

  if ([v14 isEqualToDictionary:v12])
  {
    v27 = 2;
  }

  else
  {
    v27 = 0;
  }

LABEL_51:

  return v27;
}

- (void)restoreDefaultWallpaperForAllVariantsAndNotify:(BOOL)notify
{
  notifyCopy = notify;
  v5 = PBUILogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager restoreDefaultWallpaperForAllVariantsAndNotify:];
  }

  v6 = soft_PF_IS_PAD_DEVICE();
  if (v6 && (v6 = soft_PUIFeatureEnabled(0), !v6))
  {
    [(PBUIWallpaperConfigurationManager *)self wallpaperWillChangeForVariants:3];
    [(PBUIWallpaperConfigurationManager *)self beginChangeBatch];
    [(PBUIWallpaperConfigurationManager *)self removeDataForTypes:-1 variants:3 variantsShareWallpaperConfiguration:0];
    [(PBUIWallpaperConfigurationManager *)self clearDelayedChangeNotifications];
    [(PBUIWallpaperConfigurationManager *)self endChangeBatch];
    [(PBUIWallpaperConfigurationManager *)self wallpaperDidChangeForVariants:3 shouldNotify:notifyCopy];
  }

  else
  {
    v7 = PBUILogCommon(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperConfigurationManager restoreDefaultWallpaperForAllVariantsAndNotify:];
    }
  }
}

- (BOOL)setWallpaperConfigurationFromDefaultWallpaperConfiguration:(id)configuration forVariants:(int64_t)variants wallpaperMode:(int64_t)mode name:(id)name
{
  configurationCopy = configuration;
  nameCopy = name;
  wallpaperType = [configurationCopy wallpaperType];
  LOBYTE(v13) = 0;
  if (wallpaperType <= 2)
  {
    if (wallpaperType == 1)
    {
      staticImageURL = [configurationCopy staticImageURL];
      path = [staticImageURL path];
      if (path && ([MEMORY[0x277D755B8] imageWithContentsOfFile:path], (v25 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v26 = v25;
        v27 = objc_alloc_init(PBUIWallpaperOptions);
        [(PBUIWallpaperOptions *)v27 setWallpaperMode:mode];
        [(PBUIWallpaperOptions *)v27 setName:nameCopy];
        LOBYTE(v38) = 0;
        LOBYTE(v13) = 1;
        [(PBUIWallpaperConfigurationManager *)self setWallpaperImage:v26 originalImage:v26 thumbnailData:0 imageHashData:0 wallpaperOptions:v27 forVariants:variants options:1 wallpaperMode:0 isMigrating:v38];
      }

      else
      {
        LOBYTE(v13) = 0;
      }
    }

    else if (wallpaperType == 2)
    {
      proceduralWallpaperIdentifier = [configurationCopy proceduralWallpaperIdentifier];
      proceduralWallpaperOptions = [configurationCopy proceduralWallpaperOptions];
      v17 = objc_alloc_init(PBUIWallpaperDefaultsDomain);
      v18 = [[PBUIWallpaperDefaults alloc] initWithdefaultsDomain:v17];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __127__PBUIWallpaperConfigurationManager_setWallpaperConfigurationFromDefaultWallpaperConfiguration_forVariants_wallpaperMode_name___block_invoke;
      v41[3] = &unk_2783623A8;
      v42 = v18;
      v43 = proceduralWallpaperIdentifier;
      v44 = proceduralWallpaperOptions;
      v19 = proceduralWallpaperOptions;
      v13 = proceduralWallpaperIdentifier;
      v20 = v18;
      PBUIWallpaperEnumerateVariantsForLocations(variants, v41);

      LOBYTE(v13) = 0;
    }
  }

  else
  {
    switch(wallpaperType)
    {
      case 3:
        staticImageURL2 = [configurationCopy staticImageURL];
        path2 = [staticImageURL2 path];
        v40 = path2;
        if (path2)
        {
          v13 = [MEMORY[0x277D755B8] imageWithContentsOfFile:path2];
          if (v13)
          {
            [(PBUIWallpaperConfigurationManager *)self setWallpaperImage:v13 originalImage:v13 forVariants:variants options:1];

            LOBYTE(v13) = 1;
          }
        }

        else
        {
          LOBYTE(v13) = 0;
        }

        videoURL = [configurationCopy videoURL];
        v29 = *MEMORY[0x277CBF3A0];
        v30 = *(MEMORY[0x277CBF3A0] + 8);
        v31 = *(MEMORY[0x277CBF3A0] + 16);
        v32 = *(MEMORY[0x277CBF3A0] + 24);
        if (videoURL)
        {
          [(PBUIWallpaperConfigurationManager *)self setVideoURL:videoURL forVariant:0 shoudCrop:0 relativeCropRect:0 wallpaperMode:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
        }

        [staticImageURL2 lastPathComponent];
        v33 = v39 = staticImageURL2;
        stringByDeletingPathExtension = [v33 stringByDeletingPathExtension];
        v35 = [PBUIWallpaperOptions optionsWithName:stringByDeletingPathExtension parallaxFactor:0 zoomScale:1 supportsCropping:1 cropRect:0.0 portrait:1.0 hasVideo:v29 stillTimeInVideo:v30, v31, v32, 0.0];

        [v35 setWallpaperMode:mode];
        [(PBUIWallpaperConfigurationManager *)self setWallpaperOptions:v35 forVariants:variants wallpaperMode:mode];

        break;
      case 4:
        wallpaperColorName = [configurationCopy wallpaperColorName];
        if (wallpaperColorName)
        {
          [(PBUIWallpaperConfigurationManager *)self setWallpaperColorName:wallpaperColorName forVariants:variants];
          LOBYTE(v13) = 1;
        }

        else
        {
          wallpaperColor = [configurationCopy wallpaperColor];
          LOBYTE(v13) = wallpaperColor != 0;
          if (wallpaperColor)
          {
            [(PBUIWallpaperConfigurationManager *)self setWallpaperColor:wallpaperColor forVariants:variants];
          }
        }

        goto LABEL_27;
      case 5:
        wallpaperColorName = [configurationCopy wallpaperGradient];
        LOBYTE(v13) = wallpaperColorName != 0;
        if (wallpaperColorName)
        {
          [(PBUIWallpaperConfigurationManager *)self setWallpaperGradient:wallpaperColorName forVariants:variants];
        }

LABEL_27:

        break;
    }
  }

  return v13;
}

id *__127__PBUIWallpaperConfigurationManager_setWallpaperConfigurationFromDefaultWallpaperConfiguration_forVariants_wallpaperMode_name___block_invoke(id *result, uint64_t a2)
{
  v2 = result;
  if (a2 == 1)
  {
    v3 = 2;
  }

  else
  {
    if (a2)
    {
      return result;
    }

    v3 = 1;
  }

  [result[4] setProceduralIdentifier:result[5] forLocations:v3];
  [v2[4] setProceduralOptions:v2[6] forLocations:v3];
  v4 = v2[4];

  return [v4 setProceduralUserSet:0 forLocations:v3];
}

- (void)clearCacheForVariants:(int64_t)variants memoryOnly:(BOOL)only
{
  variantsCopy = variants;
  v7 = PBUILogCommon(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager clearCacheForVariants:memoryOnly:];
  }

  if (!only)
  {
    v8 = +[PBUIWallpaperCache wallpaperCache];
    [v8 removeEverythingWithCompletion:0];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__PBUIWallpaperConfigurationManager_clearCacheForVariants_memoryOnly___block_invoke;
  v9[3] = &unk_2783623D0;
  v9[4] = self;
  PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v9);
}

void __70__PBUIWallpaperConfigurationManager_clearCacheForVariants_memoryOnly___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  [v2 removeObjectForKey:v3];
}

- (PBUIMagnifyMode)magnifyMode
{
  v2 = self->_magnifyMode;
  if (!v2)
  {
    v2 = +[PBUIMagnifyMode currentMagnifyMode];
    if (!v2)
    {
      v2 = objc_alloc_init(PBUIMagnifyMode);
    }
  }

  return v2;
}

- (void)performMigrationWithFailureHandler:(id)handler
{
  v140 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (!soft_PF_IS_PAD_DEVICE() || soft_PUIFeatureEnabled(0))
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    v7 = [bundleIdentifier isEqualToString:@"com.apple.springboard"];

    if (v7)
    {
      v9 = PBUILogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
      }

      goto LABEL_139;
    }
  }

  v117 = os_transaction_create();
  v116 = objc_autoreleasePoolPush();
  v10 = PBUILogCommon(v116);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

  v11 = objc_alloc_init(PBUIWallpaperDefaultsDomain);
  lockScreenWallpapers = [(PBUIWallpaperDefaultsDomain *)v11 lockScreenWallpapers];

  if (!lockScreenWallpapers)
  {
    v13 = objc_alloc_init(PBUIWallpaperLegacyDefaultsDomain);
    v14 = [PBUIWallpaperDefaultsWrapper lockScreenWrapperForLegacyDefaults:v13];
    wallpaperDefaultsDict = [v14 wallpaperDefaultsDict];

    v16 = MEMORY[0x277CBEAC0];
    v17 = PBUIStringForWallpaperMode(0);
    v18 = [v16 dictionaryWithObject:wallpaperDefaultsDict forKey:v17];

    v19 = [PBUIWallpaperDefaultsWrapper homeScreenWrapperForLegacyDefaults:v13];
    wallpaperDefaultsDict2 = [v19 wallpaperDefaultsDict];

    v21 = MEMORY[0x277CBEAC0];
    v22 = PBUIStringForWallpaperMode(0);
    v23 = [v21 dictionaryWithObject:wallpaperDefaultsDict2 forKey:v22];

    [(PBUIWallpaperDefaultsDomain *)v11 setLockScreenWallpapers:v18];
    [(PBUIWallpaperDefaultsDomain *)v11 setHomeScreenWallpapers:v23];
    [(BSAbstractDefaultDomain *)v13 resetAllDefaults];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = +[PBUIWallpaperDirectoryDataStore defaultDirectoryURL];
  v26 = [v25 URLByAppendingPathComponent:@"LockBackground.jpg" isDirectory:0];
  v27 = NSHomeDirectory();
  v28 = [v27 stringByAppendingPathComponent:@"Library/LockBackground.jpg"];

  v123 = v25;
  v120 = [v25 URLByAppendingPathComponent:@"HomeBackground.jpg" isDirectory:0];
  v122 = v26;
  if ([v26 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (objc_msgSend(defaultManager, "fileExistsAtPath:", v28))
  {
    v29 = 1;
  }

  else
  {
    v29 = [v120 checkResourceIsReachableAndReturnError:0];
  }

  v114 = v29;
  v121 = v28;
  v124 = defaultManager;
  v115 = v11;
  selfCopy = self;
  v119 = handlerCopy;
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v30 = [obj countByEnumeratingWithState:&v134 objects:v139 count:16];
  if (v30)
  {
    v31 = v30;
    LOBYTE(v32) = 0;
    LOBYTE(v33) = 0;
    LOBYTE(v34) = 0;
    LOBYTE(v35) = 0;
    v36 = 0;
    LOBYTE(v37) = 0;
    v127 = *v135;
    v129 = 0;
    while (1)
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v135 != v127)
        {
          objc_enumerationMutation(obj);
        }

        v39 = *(*(&v134 + 1) + 8 * i);
        if ((v129 & 0x100000000) != 0)
        {
          HIDWORD(v129) = 1;
        }

        else
        {
          HIDWORD(v129) = [*(*(&v134 + 1) + 8 * i) hasWallpaperImageForVariant:0 wallpaperMode:0];
        }

        if (v129)
        {
          LODWORD(v129) = 1;
          if (!v37)
          {
            goto LABEL_24;
          }
        }

        else
        {
          LODWORD(v129) = [v39 hasWallpaperImageForVariant:1 wallpaperMode:0];
          if (!v37)
          {
LABEL_24:
            v40 = [v39 proceduralWallpaperInfoForVariant:0];
            v37 = v40 != 0;

            if (!v36)
            {
              goto LABEL_25;
            }

            goto LABEL_30;
          }
        }

        v37 = 1;
        if (!v36)
        {
LABEL_25:
          v41 = [v39 proceduralWallpaperInfoForVariant:1];
          v36 = v41 != 0;

          if (v35)
          {
            goto LABEL_31;
          }

          goto LABEL_26;
        }

LABEL_30:
        v36 = 1;
        if (v35)
        {
LABEL_31:
          v35 = 1;
          if (v34)
          {
            goto LABEL_39;
          }

          goto LABEL_32;
        }

LABEL_26:
        v42 = [v39 wallpaperColorForVariant:0];
        if (v42)
        {
          v35 = 1;
        }

        else
        {
          v47 = [v39 wallpaperColorNameForVariant:0];
          v35 = v47 != 0;
        }

        if (v34)
        {
LABEL_39:
          v34 = 1;
          if (!v33)
          {
            goto LABEL_35;
          }

          goto LABEL_40;
        }

LABEL_32:
        v34 = 1;
        v43 = [v39 wallpaperColorForVariant:1];
        if (!v43)
        {
          v44 = [v39 wallpaperColorNameForVariant:1];
          v34 = v44 != 0;
        }

        if (!v33)
        {
LABEL_35:
          v45 = [v39 wallpaperGradientForVariant:0];
          v33 = v45 != 0;

          if (!v32)
          {
            goto LABEL_36;
          }

          goto LABEL_41;
        }

LABEL_40:
        v33 = 1;
        if (!v32)
        {
LABEL_36:
          v46 = [v39 wallpaperGradientForVariant:1];
          v32 = v46 != 0;

          continue;
        }

LABEL_41:
        v32 = 1;
      }

      v31 = [obj countByEnumeratingWithState:&v134 objects:v139 count:16];
      if (!v31)
      {
        goto LABEL_46;
      }
    }
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v129 = 0;
LABEL_46:

  v48 = objc_alloc_init(PBUIWallpaperDefaultsDomain);
  v49 = [[PBUIWallpaperDefaults alloc] initWithdefaultsDomain:v48];
  v50 = v49;
  if (v37 && v36)
  {
    v112 = 1;
    v113 = 1;
    v51 = v124;
  }

  else
  {
    if (v37)
    {
      v112 = 1;
    }

    else
    {
      v49 = [(PBUIWallpaperDefaults *)v49 proceduralUserSetForVariant:0];
      if (v49)
      {
        v52 = [(PBUIWallpaperDefaults *)v50 proceduralIdentifierForVariant:0];
        v112 = v52 != 0;
      }

      else
      {
        v112 = 0;
      }
    }

    v51 = v124;
    if (v36)
    {
      v113 = 1;
    }

    else
    {
      v49 = [(PBUIWallpaperDefaults *)v50 proceduralUserSetForVariant:1];
      if (v49)
      {
        v53 = [(PBUIWallpaperDefaults *)v50 proceduralIdentifierForVariant:1];
        v113 = v53 != 0;
      }

      else
      {
        v113 = 0;
      }
    }
  }

  if (!v35 || !v34)
  {
    handlerCopy = v119;
    if (v35)
    {
      obja = 1;
      v55 = v121;
      if (!v34)
      {
LABEL_63:
        v56 = [(PBUIWallpaperDefaults *)v50 wallpaperColorDataForVariant:1];
        if (v56)
        {
          v57 = [(PBUIWallpaperDefaults *)v50 wallpaperColorNameForVariant:1];
          v54 = v57 != 0;
        }

        else
        {
          v54 = 0;
        }

        v60 = v114;

        goto LABEL_73;
      }
    }

    else
    {
      v58 = [(PBUIWallpaperDefaults *)v50 wallpaperColorDataForVariant:0];
      if (v58)
      {
        v59 = [(PBUIWallpaperDefaults *)v50 wallpaperColorNameForVariant:0];
        obja = v59 != 0;
      }

      else
      {
        obja = 0;
      }

      v55 = v121;

      if (!v34)
      {
        goto LABEL_63;
      }
    }

    v54 = 1;
    goto LABEL_72;
  }

  v54 = 1;
  obja = 1;
  handlerCopy = v119;
  v55 = v121;
LABEL_72:
  v60 = v114;
LABEL_73:
  v128 = v48;
  if (v33 && v32)
  {
    v61 = 1;
    v62 = 1;
    v63 = selfCopy;
  }

  else
  {
    if (v33)
    {
      v62 = 1;
    }

    else
    {
      v64 = [(PBUIWallpaperDefaults *)v50 wallpaperGradientDataForVariant:0];
      v62 = v64 != 0;
    }

    v63 = selfCopy;
    if (v32)
    {
      v61 = 1;
    }

    else
    {
      v65 = [(PBUIWallpaperDefaults *)v50 wallpaperGradientDataForVariant:1];
      v61 = v65 != 0;
    }
  }

  v66 = PBUILogCommon(v49);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

  v68 = PBUILogCommon(v67);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

  v70 = PBUILogCommon(v69);
  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

  v72 = PBUILogCommon(v71);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

  v74 = PBUILogCommon(v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

  v76 = PBUILogCommon(v75);
  if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

  if (v60 & 1 | ((v129 & 0x100000000) == 0))
  {
    legacyUsesUniqueHomeScreenWallpaper = [(PBUIWallpaperDefaultsDomain *)v128 legacyUsesUniqueHomeScreenWallpaper];
    v78 = v113 || v112 || obja || v54 || v62 || v61;
    v79 = MEMORY[0x277D755B8];
    path = [v122 path];
    v81 = [v79 imageWithContentsOfFile:path];
    v82 = v81;
    if (v81)
    {
      v83 = v81;
    }

    else
    {
      v83 = [MEMORY[0x277D755B8] imageWithContentsOfFile:v55];
    }

    v90 = legacyUsesUniqueHomeScreenWallpaper | v78;

    v92 = PBUILogCommon(v91);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
    }

    v94 = PBUILogCommon(v93);
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEBUG))
    {
      [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
    }

    if ((v90 & 1) == 0)
    {
      if (v83)
      {
        v105 = PBUILogCommon(v95);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
        {
          [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
        }

        v103 = [(PBUIWallpaperConfigurationManager *)v63 setWallpaperImage:v83 originalImage:0 forVariants:3 options:1];
        if (!handlerCopy)
        {
          goto LABEL_129;
        }

        goto LABEL_126;
      }

      [(PBUIWallpaperConfigurationManager *)v63 restoreDefaultWallpaperForAllVariantsAndNotify:0];
LABEL_129:
      v132 = 0u;
      v133 = 0u;
      v130 = 0u;
      v131 = 0u;
      v106 = [&unk_282FD5948 countByEnumeratingWithState:&v130 objects:v138 count:16];
      v89 = v116;
      if (v106)
      {
        v107 = v106;
        v108 = *v131;
        do
        {
          for (j = 0; j != v107; ++j)
          {
            if (*v131 != v108)
            {
              objc_enumerationMutation(&unk_282FD5948);
            }

            v110 = [v123 URLByAppendingPathComponent:*(*(&v130 + 1) + 8 * j) isDirectory:0];
            [v124 removeItemAtURL:v110 error:0];
          }

          v107 = [&unk_282FD5948 countByEnumeratingWithState:&v130 objects:v138 count:16];
        }

        while (v107);
      }

      v51 = v124;
      v55 = v121;
      [v124 removeItemAtPath:v121 error:0];
      v84 = v128;
      [(PBUIWallpaperDefaultsDomain *)v128 clearLegacyDefaults];

      v88 = v117;
      goto LABEL_137;
    }

    v96 = MEMORY[0x277D755B8];
    path2 = [v120 path];
    v98 = [v96 imageWithContentsOfFile:path2];

    v100 = PBUILogCommon(v99);
    if (os_log_type_enabled(v100, OS_LOG_TYPE_DEBUG))
    {
      [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
    }

    if (v83)
    {
      v102 = PBUILogCommon(v101);
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
      {
        [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
      }

      v101 = [(PBUIWallpaperConfigurationManager *)v63 setWallpaperImage:v83 originalImage:0 forVariants:1 options:1];
      v103 = v101;
      if (v98)
      {
LABEL_112:
        v104 = PBUILogCommon(v101);
        if (os_log_type_enabled(v104, OS_LOG_TYPE_DEBUG))
        {
          [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
        }

        v103 &= [(PBUIWallpaperConfigurationManager *)v63 setWallpaperImage:v98 originalImage:0 forVariants:2 options:1];
        goto LABEL_125;
      }
    }

    else
    {
      if (((v112 | HIDWORD(v129) | obja) & 1) == 0)
      {
        v101 = [(PBUIWallpaperConfigurationManager *)v63 restoreDefaultWallpaperForAllVariantsAndNotify:0];
      }

      v103 = 1;
      if (v98)
      {
        goto LABEL_112;
      }
    }

    if (((v113 | v129 | obja) & 1) == 0)
    {
      [(PBUIWallpaperConfigurationManager *)v63 restoreDefaultWallpaperForAllVariantsAndNotify:0];
    }

LABEL_125:

    if (handlerCopy)
    {
LABEL_126:
      if ((v103 & 1) == 0)
      {
        handlerCopy[2](handlerCopy);
      }

      goto LABEL_129;
    }

    goto LABEL_129;
  }

  v84 = v128;
  if ([(PBUIWallpaperConfigurationManager *)v63 variantsShareWallpaperConfigurationForTypes:54])
  {
    v85 = v63;
    v86 = 0;
    v87 = 3;
  }

  else
  {
    [(PBUIWallpaperConfigurationManager *)v63 migrateWallpaperOptionsForImageIfNecessaryForVariant:0 representingVariants:PBUIWallpaperLocationForVariant(0)];
    v87 = PBUIWallpaperLocationForVariant(1);
    v85 = v63;
    v86 = 1;
  }

  [(PBUIWallpaperConfigurationManager *)v85 migrateWallpaperOptionsForImageIfNecessaryForVariant:v86 representingVariants:v87];
  v89 = v116;
  v88 = v117;
  [(PBUIWallpaperConfigurationManager *)v63 safeMigrateWallpaperImageIfNecessary];
LABEL_137:
  [(PBUIWallpaperConfigurationManager *)v63 regenerateThumbnailsIfNecessary];

  objc_autoreleasePoolPop(v89);
  v9 = PBUILogCommon(v111);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager performMigrationWithFailureHandler:];
  }

LABEL_139:
}

- (void)migrateWallpaperOptionsForImageIfNecessaryForVariant:(int64_t)variant representingVariants:(int64_t)variants
{
  v130 = *MEMORY[0x277D85DE8];
  v7 = PBUILogCommon(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PBUIWallpaperConfigurationManager migrateWallpaperOptionsForImageIfNecessaryForVariant:variant representingVariants:v7];
  }

  v8 = [(PBUIWallpaperConfigurationManager *)self wallpaperConfigurationForVariant:variant includingValuesForTypes:19 wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
  wallpaperOptions = [v8 wallpaperOptions];
  wallpaperImage = [v8 wallpaperImage];
  wallpaperOriginalImage = [v8 wallpaperOriginalImage];
  proceduralWallpaperInfo = [v8 proceduralWallpaperInfo];
  v13 = proceduralWallpaperInfo;
  if (wallpaperOptions && wallpaperOriginalImage && !proceduralWallpaperInfo)
  {
    v14 = PBUIWallpaperLocationForVariant(variant);
    if (![wallpaperOptions supportsCropping])
    {
      magnifyMode = [(PBUIWallpaperConfigurationManager *)self magnifyMode];
      [magnifyMode zoomFactor];
      v34 = v33;
      isMagnifyEnabled = [wallpaperOptions isMagnifyEnabled];
      if (!magnifyMode)
      {
        v26 = 0;
        goto LABEL_63;
      }

      v119 = magnifyMode;
      v36 = v34;
      v37 = fabs(v36 + -1.0);
      if (isMagnifyEnabled == v37 >= 2.22044605e-16)
      {
        v26 = 0;
LABEL_62:
        magnifyMode = v119;
LABEL_63:

        if (wallpaperImage)
        {
          wallpaperImageHashData = [v8 wallpaperImageHashData];
          if (!wallpaperImageHashData)
          {
            shouldSetWallpaperImageHashData = [(PBUIWallpaperConfigurationManager *)self shouldSetWallpaperImageHashData];
            if (!shouldSetWallpaperImageHashData)
            {
              goto LABEL_66;
            }

            wallpaperImageHashData = [wallpaperImage pbui_imageHashData];
            if (wallpaperImageHashData)
            {
              [(PBUIWallpaperConfigurationManager *)self setWallpaperImageHashData:wallpaperImageHashData forVariants:variants wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
            }
          }
        }

LABEL_66:
        v102 = PBUILogCommon(shouldSetWallpaperImageHashData);
        if (os_log_type_enabled(v102, OS_LOG_TYPE_DEBUG))
        {
          [PBUIWallpaperConfigurationManager migrateWallpaperOptionsForImageIfNecessaryForVariant:representingVariants:];
        }

        goto LABEL_69;
      }

      v38 = PBUILogCommon(isMagnifyEnabled);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
      {
        [PBUIWallpaperConfigurationManager migrateWallpaperOptionsForImageIfNecessaryForVariant:representingVariants:];
      }

      pbui_resizedImageForCurrentMagnifyMode = [wallpaperOriginalImage pbui_resizedImageForCurrentMagnifyMode];
      LOBYTE(v103) = 1;
      if (![(PBUIWallpaperConfigurationManager *)self setWallpaperImage:pbui_resizedImageForCurrentMagnifyMode originalImage:wallpaperOriginalImage thumbnailData:0 imageHashData:0 wallpaperOptions:0 forVariants:variants options:1 wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode] isMigrating:v103])
      {
        v26 = 0;
LABEL_61:

        goto LABEL_62;
      }

      v26 = [wallpaperOptions copy];
      [v26 setMagnifyEnabled:v37 >= 2.22044605e-16];
      [v26 setZoomScale:1.0 / v36];
      [(PBUIWallpaperConfigurationManager *)self setWallpaperOptions:v26 forVariants:variants wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
      pbui_resizedImageForCurrentMagnifyMode = pbui_resizedImageForCurrentMagnifyMode;
      v31 = pbui_resizedImageForCurrentMagnifyMode;
LABEL_60:

      wallpaperImage = v31;
      goto LABEL_61;
    }

    rect_24 = variants;
    [wallpaperOriginalImage size];
    v16 = v15;
    v18 = v17;
    scale = [wallpaperOriginalImage scale];
    v21 = v20;
    v22 = PBUILogCommon(scale);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_21E67D000, v22, OS_LOG_TYPE_INFO, "//////////__migrateWallpaperOptionsForImageIfNecessary//////////", buf, 2u);
    }

    v24 = PBUILogCommon(v23);
    rect_8 = v14;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v131.width = v16;
      v131.height = v18;
      v25 = NSStringFromSize(v131);
      *buf = 138543618;
      v121 = v25;
      v122 = 2048;
      v123 = v21;
      _os_log_impl(&dword_21E67D000, v24, OS_LOG_TYPE_INFO, "originalImage size %{public}@ scale %g", buf, 0x16u);
    }

    v26 = [(PBUIWallpaperConfigurationManager *)self migratedWallpaperOptionsForWallpaperOptions:wallpaperOptions originalImageSize:v16, v18];
    videoURL = [v8 videoURL];
    rect_16 = [v8 originalVideoURL];
    [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
    v29 = v28;
    v30 = [v26 isLooselyEqualToWallpaperOptions:wallpaperOptions];
    v119 = videoURL;
    if (v30)
    {
      v31 = wallpaperImage;
      variants = rect_24;
      goto LABEL_58;
    }

    variants = rect_24;
    if (videoURL && !rect_16)
    {
      v31 = wallpaperImage;
      goto LABEL_58;
    }

    v109 = v29;
    v110 = v21;
    v40 = PBUILogCommon(v30);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [PBUIWallpaperConfigurationManager migrateWallpaperOptionsForImageIfNecessaryForVariant:representingVariants:];
    }

    [wallpaperOptions cropRect];
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    [wallpaperOptions parallaxFactor];
    v50 = v49;
    [wallpaperOptions zoomScale];
    v52 = v51;
    cropRect = [v26 cropRect];
    v112 = v55;
    rect = v54;
    v111 = v56;
    v108 = v57;
    v58 = PBUILogCommon(cropRect);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
    {
      if (rect_8 == 2)
      {
        v59 = @"Home";
      }

      else
      {
        v59 = @"Lock";
      }

      v137.origin.x = v42;
      v137.origin.y = v44;
      v137.size.width = v46;
      v137.size.height = v48;
      v106 = NSStringFromCGRect(v137);
      v138.origin.x = v42;
      v138.origin.y = v44;
      v138.size.width = v46;
      v138.size.height = v48;
      v105 = v18;
      v60 = v16;
      v61 = v50;
      MidX = CGRectGetMidX(v138);
      v139.origin.x = v42;
      v139.origin.y = v44;
      v139.size.width = v46;
      v139.size.height = v48;
      v132.y = CGRectGetMidY(v139);
      v132.x = MidX;
      v104 = NSStringFromCGPoint(v132);
      *buf = 138413314;
      v121 = v59;
      variants = rect_24;
      v122 = 2114;
      v123 = *&v106;
      v124 = 2114;
      v125 = v104;
      v126 = 2048;
      v127 = v52;
      v128 = 2048;
      v129 = v61;
      v16 = v60;
      v18 = v105;
      _os_log_impl(&dword_21E67D000, v58, OS_LOG_TYPE_INFO, "%@ Old Crop: %{public}@ Center: %{public}@ Zoom: %g Parallax: %g", buf, 0x34u);
    }

    v64 = PBUILogCommon(v63);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
    {
      if (rect_8 == 2)
      {
        v65 = @"Home";
      }

      else
      {
        v65 = @"Lock";
      }

      v66 = v112;
      v140.origin.x = rect;
      v140.origin.y = v112;
      v67 = v111;
      v140.size.width = v111;
      v68 = v108;
      v140.size.height = v108;
      v107 = NSStringFromCGRect(v140);
      v141.origin.x = rect;
      v141.origin.y = v112;
      v141.size.width = v111;
      v141.size.height = v108;
      v69 = CGRectGetMidX(v141);
      v142.origin.x = rect;
      v142.origin.y = v112;
      v142.size.width = v111;
      v142.size.height = v108;
      v133.y = CGRectGetMidY(v142);
      v133.x = v69;
      NSStringFromCGPoint(v133);
      v70 = rect_8b = v26;
      [rect_8b zoomScale];
      v72 = v71;
      [rect_8b parallaxFactor];
      *buf = 138413314;
      v121 = v65;
      variants = rect_24;
      v122 = 2114;
      v123 = *&v107;
      v124 = 2114;
      v125 = v70;
      v126 = 2048;
      v127 = v72;
      v128 = 2048;
      v129 = v73;
      _os_log_impl(&dword_21E67D000, v64, OS_LOG_TYPE_INFO, "%@ New Crop: %{public}@ Center: %{public}@ Zoom: %g Parallax: %g", buf, 0x34u);

      v26 = rect_8b;
    }

    else
    {
      v67 = v111;
      v66 = v112;
      v68 = v108;
    }

    [(PBUIWallpaperConfigurationManager *)self setWallpaperOptions:v26 forVariants:variants wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
    [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
    [v26 bestWallpaperSizeForWallpaperSize:-[PBUIWallpaperConfigurationManager parallaxDeviceType](self wallpaperScale:"parallaxDeviceType") deviceType:v74 imageScale:{v75, v109, v110}];
    v77 = v76;
    v79 = v78;
    rect_8a = [wallpaperOriginalImage pbui_cropImageWithRect:rect outputSize:{v66, v67, v68, v76, v78}];
    v80 = PBUILogCommon(rect_8a);
    if (os_log_type_enabled(v80, OS_LOG_TYPE_INFO))
    {
      v134.width = v16;
      v134.height = v18;
      v81 = NSStringFromCGSize(v134);
      *buf = 138543362;
      v121 = v81;
      _os_log_impl(&dword_21E67D000, v80, OS_LOG_TYPE_INFO, "originalImageSize: %{public}@", buf, 0xCu);

      variants = rect_24;
    }

    v83 = PBUILogCommon(v82);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      v135.width = v77;
      v135.height = v79;
      v84 = NSStringFromCGSize(v135);
      *buf = 138543362;
      v121 = v84;
      _os_log_impl(&dword_21E67D000, v83, OS_LOG_TYPE_INFO, "outputSize: %{public}@", buf, 0xCu);

      variants = rect_24;
    }

    v86 = PBUILogCommon(v85);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      [rect_8a size];
      v87 = NSStringFromCGSize(v136);
      *buf = 138543362;
      v121 = v87;
      _os_log_impl(&dword_21E67D000, v86, OS_LOG_TYPE_INFO, "adjustedImageSize: %{public}@", buf, 0xCu);

      variants = rect_24;
    }

    if (rect_8a)
    {
      v89 = [(PBUIWallpaperConfigurationManager *)self setWallpaperImage:rect_8a originalImage:wallpaperOriginalImage forVariants:variants options:0];
      v31 = rect_8a;

      if (v89)
      {
        if (rect_16)
        {
          CGAffineTransformMakeScale(buf, 1.0 / v16, 1.0 / v18);
          v143.origin.x = rect;
          v143.origin.y = v66;
          v143.size.width = v67;
          v143.size.height = v68;
          v144 = CGRectApplyAffineTransform(v143, buf);
          x = v144.origin.x;
          y = v144.origin.y;
          width = v144.size.width;
          height = v144.size.height;
          v95 = PBUILogCommon(v94);
          if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
          {
            v145.origin.x = x;
            v145.origin.y = y;
            v145.size.width = width;
            v145.size.height = height;
            v96 = NSStringFromCGRect(v145);
            *buf = 138543362;
            v121 = v96;
            _os_log_impl(&dword_21E67D000, v95, OS_LOG_TYPE_INFO, "Re-cropping video to relative rect: %{public}@", buf, 0xCu);
          }

          v98 = PBUILogCommon(v97);
          variants = rect_24;
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            [PBUIWallpaperConfigurationManager migrateWallpaperOptionsForImageIfNecessaryForVariant:representingVariants:];
          }

          [(PBUIWallpaperConfigurationManager *)self setVideoURL:rect_16 forVariant:variant shoudCrop:0 relativeCropRect:0 wallpaperMode:x, y, width, height];
        }

        else
        {
          variants = rect_24;
        }

LABEL_57:

LABEL_58:
        wallpaperImage = PBUILogCommon(v30);
        pbui_resizedImageForCurrentMagnifyMode = rect_16;
        if (os_log_type_enabled(wallpaperImage, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_21E67D000, wallpaperImage, OS_LOG_TYPE_INFO, "/////////////////////////", buf, 2u);
        }

        goto LABEL_60;
      }

      variants = rect_24;
    }

    else
    {
      v31 = wallpaperImage;
    }

    v99 = PBUILogCommon(v88);
    if (os_log_type_enabled(v99, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperConfigurationManager migrateWallpaperOptionsForImageIfNecessaryForVariant:representingVariants:];
    }

    [(PBUIWallpaperConfigurationManager *)self setWallpaperOptions:wallpaperOptions forVariants:variants wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
    goto LABEL_57;
  }

LABEL_69:
}

- (id)migratedWallpaperOptionsForWallpaperOptions:(id)options originalImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  optionsCopy = options;
  [optionsCopy cropRect];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [optionsCopy parallaxFactor];
  v17 = v16;
  [optionsCopy zoomScale];
  v19 = v18;
  isPortrait = [optionsCopy isPortrait];
  v32 = 0.0;
  [(PBUIWallpaperConfigurationManager *)self cropRectForOldCropRect:isPortrait portrait:&v32 zoomScale:v9 oldParallaxFactor:v11 forImageSize:v13 newZoomScale:v15, v19, v17, width, height];
  v25 = v21;
  v26 = v22;
  v27 = v23;
  v28 = v24;
  if (v17 != 0.0)
  {
    [(PBUIWallpaperConfigurationManager *)self parallaxFactorForCropRect:isPortrait portrait:v21 forImageSize:v22 zoomScale:v23, v24, width, height, v32];
    v17 = v29;
  }

  v30 = [optionsCopy copy];
  [v30 setParallaxFactor:v17];
  [v30 setZoomScale:v32];
  [v30 setCropRect:{v25, v26, v27, v28}];

  return v30;
}

- (BOOL)safeMigrateWallpaperImageIfNecessaryForVariant:(int64_t)variant representingVariants:(int64_t)variants wallpaperMode:(int64_t)mode
{
  v8 = [(PBUIWallpaperConfigurationManager *)self wallpaperImageForVariant:variant wallpaperMode:mode];
  v9 = [(PBUIWallpaperConfigurationManager *)self normalizeImage:v8];
  if (v8 != v9)
  {
    LOBYTE(v11) = 1;
    [(PBUIWallpaperConfigurationManager *)self setWallpaperImage:v9 originalImage:0 thumbnailData:0 imageHashData:0 wallpaperOptions:0 forVariants:variants options:2 wallpaperMode:mode isMigrating:v11];
  }

  return v8 != v9;
}

- (void)safeMigrateWallpaperImageIfNecessary
{
  if ([(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54])
  {
    wallpaperMode = [(PBUIWallpaperConfigurationManager *)self wallpaperMode];
    selfCopy2 = self;
    v5 = 0;
    v6 = 3;
  }

  else
  {
    [(PBUIWallpaperConfigurationManager *)self safeMigrateWallpaperImageIfNecessaryForVariant:0 representingVariants:PBUIWallpaperLocationForVariant(0) wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
    v7 = PBUIWallpaperLocationForVariant(1);
    wallpaperMode = [(PBUIWallpaperConfigurationManager *)self wallpaperMode];
    selfCopy2 = self;
    v5 = 1;
    v6 = v7;
  }

  [(PBUIWallpaperConfigurationManager *)selfCopy2 safeMigrateWallpaperImageIfNecessaryForVariant:v5 representingVariants:v6 wallpaperMode:wallpaperMode];
}

- (void)regenerateThumbnailIfNecessaryForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = [PBUIWallpaperConfigurationManager wallpaperThumbnailImageForVariant:"wallpaperThumbnailImageForVariant:wallpaperMode:" wallpaperMode:?];
  [v7 scale];
  v9 = v8;
  wallpaperScale = [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
  if (v9 != v11)
  {
    v12 = PBUILogCommon(wallpaperScale);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = PBUIStringForWallpaperVariant(variant);
      [v7 scale];
      v15 = v14;
      [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
      v18 = 138543874;
      v19 = v13;
      v20 = 2048;
      v21 = v15;
      v22 = 2048;
      v23 = v16;
      _os_log_impl(&dword_21E67D000, v12, OS_LOG_TYPE_INFO, "Regenerating thumbnail for variant: %{public}@ (existing thumbnail scale: %f, expected scale: %f)", &v18, 0x20u);
    }

    v17 = [(PBUIWallpaperConfigurationManager *)self wallpaperImageForVariant:variant wallpaperMode:mode];
    if (v17)
    {
      [(PBUIWallpaperConfigurationManager *)self setWallpaperThumbnailFromFullsizeImage:v17 forVariant:variant wallpaperMode:mode];
    }
  }
}

- (void)regenerateThumbnailsIfNecessary
{
  [(PBUIWallpaperConfigurationManager *)self regenerateThumbnailIfNecessaryForVariant:0 wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
  if (![(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfiguration])
  {
    wallpaperMode = [(PBUIWallpaperConfigurationManager *)self wallpaperMode];

    [(PBUIWallpaperConfigurationManager *)self regenerateThumbnailIfNecessaryForVariant:1 wallpaperMode:wallpaperMode];
  }
}

- (void)regenerateStaticWallpaperThumbnailImages
{
  v4 = [(PBUIWallpaperConfigurationManager *)self wallpaperImageForVariant:0 wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
  if (v4)
  {
    [(PBUIWallpaperConfigurationManager *)self setWallpaperThumbnailFromFullsizeImage:v4 forVariant:0 wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
  }

  if (![(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54])
  {
    v3 = [(PBUIWallpaperConfigurationManager *)self wallpaperImageForVariant:1 wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
    if (v3)
    {
      [(PBUIWallpaperConfigurationManager *)self setWallpaperThumbnailFromFullsizeImage:v3 forVariant:1 wallpaperMode:[(PBUIWallpaperConfigurationManager *)self wallpaperMode]];
    }
  }
}

- (id)videoURLForVariant:(int64_t)variant wallpaperMode:(int64_t)mode
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v7 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(dataStores);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) verifiedVideoURLForVariant:variant wallpaperMode:mode];
        if (v11)
        {
          v12 = v11;
          goto LABEL_11;
        }
      }

      v8 = [dataStores countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (BOOL)setVideoURL:(id)l forVariant:(int64_t)variant shoudCrop:(BOOL)crop relativeCropRect:(CGRect)rect wallpaperMode:(int64_t)mode
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cropCopy = crop;
  v38 = *MEMORY[0x277D85DE8];
  lCopy = l;
  [(PBUIWallpaperConfigurationManager *)self wallpaperWillChangeForVariants:PBUIWallpaperLocationForVariant(variant)];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v17 = [dataStores countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = *v34;
    while (2)
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(dataStores);
        }

        v20 = *(*(&v33 + 1) + 8 * i);
        if ([v20 setOriginalVideoURL:lCopy forVariant:variant wallpaperMode:mode])
        {
          if (cropCopy)
          {
            v22 = [v20 verifiedOriginalVideoURLForVariant:variant wallpaperMode:mode];
            v23 = [v20 unverifiedVideoURLForVariant:variant wallpaperMode:mode];
            v24 = dispatch_semaphore_create(0);
            v31[0] = 0;
            v31[1] = v31;
            v31[2] = 0x2020000000;
            v32 = 0;
            v25 = [MEMORY[0x277CE6650] assetWithURL:v22];
            v28[0] = MEMORY[0x277D85DD0];
            v28[1] = 3221225472;
            v28[2] = __101__PBUIWallpaperConfigurationManager_setVideoURL_forVariant_shoudCrop_relativeCropRect_wallpaperMode___block_invoke;
            v28[3] = &unk_2783623F8;
            v30 = v31;
            v26 = v24;
            v29 = v26;
            [(PBUIWallpaperConfigurationManager *)self saveCroppedVideo:v25 toURL:v23 cropRect:v28 completionHandler:x, y, width, height];

            dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
            _Block_object_dispose(v31, 8);

            v21 = 1;
          }

          else
          {
            v21 = [v20 setVideoURL:lCopy forVariant:variant wallpaperMode:mode];
          }

          goto LABEL_13;
        }
      }

      v17 = [dataStores countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  v21 = 0;
LABEL_13:

  return v21;
}

- (void)saveCroppedVideo:(id)video toURL:(id)l cropRect:(CGRect)rect completionHandler:(id)handler
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v59[1] = *MEMORY[0x277D85DE8];
  videoCopy = video;
  handlerCopy = handler;
  v15 = *MEMORY[0x277CE5EA8];
  lCopy = l;
  v17 = [videoCopy tracksWithMediaType:v15];
  firstObject = [v17 firstObject];

  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  if (firstObject)
  {
    objc_msgSend_preferredTransform(firstObject);
  }

  [firstObject naturalSize];
  v41 = v19;
  v42 = v20;
  v44 = vabsq_f64(vmlaq_n_f64(vmulq_n_f64(v56, v20), v55, *&v19));
  CGAffineTransformMakeScale(&v54, v44.f64[0], v44.f64[1]);
  v60.origin.x = x;
  v60.origin.y = y;
  v60.size.width = width;
  v60.size.height = height;
  v61 = CGRectApplyAffineTransform(v60, &v54);
  v21 = v61.origin.x;
  v22 = v61.origin.y;
  v23 = v61.size.width;
  v24 = v61.size.height;
  if (v44.f64[0] / v61.size.width >= v44.f64[1] / v61.size.height)
  {
    v25 = v44.f64[0] / v61.size.width;
  }

  else
  {
    v25 = v44.f64[1] / v61.size.height;
  }

  *&v53.a = v55;
  *&v53.c = v56;
  *&v53.tx = v57;
  memset(&v54, 0, sizeof(v54));
  objc_msgSend__naturalPreferredTransform_forNaturalSize_(self, *&v41, v42, v41);
  v52 = v54;
  CGAffineTransformInvert(&v53, &v52);
  v62.origin.x = v21;
  v62.origin.y = v22;
  v62.size.width = v23;
  v62.size.height = v24;
  v63 = CGRectApplyAffineTransform(v62, &v53);
  v26 = v63.origin.x;
  v27 = v63.origin.y;
  v28 = v63.size.width;
  v29 = v63.size.height;
  v51 = v54;
  memset(&v53, 0, sizeof(v53));
  CGAffineTransformMakeTranslation(&v53, -v21, -v22);
  memset(&v52, 0, sizeof(v52));
  CGAffineTransformMakeScale(&v52, v25, v25);
  t1 = v54;
  t2 = v53;
  CGAffineTransformConcat(&v51, &t1, &t2);
  t2 = v51;
  v48 = v52;
  CGAffineTransformConcat(&t1, &t2, &v48);
  v51 = t1;
  v30 = [MEMORY[0x277CE6578] videoCompositionLayerInstructionWithAssetTrack:firstObject];
  *&t1.a = *MEMORY[0x277CC08F0];
  v43 = *&t1.a;
  t1.c = *(MEMORY[0x277CC08F0] + 16);
  c = t1.c;
  [v30 setCropRectangle:&t1 atTime:{v26, v27, v28, v29}];
  t1 = v51;
  *&t2.a = v43;
  t2.c = c;
  [v30 setTransform:&t1 atTime:&t2];
  videoCompositionInstruction = [MEMORY[0x277CE6570] videoCompositionInstruction];
  if (videoCopy)
  {
    objc_msgSend_duration(videoCopy);
  }

  else
  {
    memset(&t2, 0, 24);
  }

  *&v48.a = v43;
  v48.c = c;
  CMTimeRangeMake(&t1, &v48, &t2);
  [videoCompositionInstruction setTimeRange:&t1];
  v59[0] = v30;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:1];
  [videoCompositionInstruction setLayerInstructions:v33];

  v34 = [MEMORY[0x277CE6568] videoCompositionWithPropertiesOfAsset:videoCopy];
  [v34 setRenderSize:*&v44];
  v58 = videoCompositionInstruction;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
  [v34 setInstructions:v35];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [defaultManager removeItemAtURL:lCopy error:0];

  v37 = objc_alloc(MEMORY[0x277CE6400]);
  v38 = [v37 initWithAsset:videoCopy presetName:*MEMORY[0x277CE5C18]];
  [v38 setVideoComposition:v34];
  [v38 setOutputURL:lCopy];

  [v38 setOutputFileType:*MEMORY[0x277CE5DA8]];
  v45[0] = MEMORY[0x277D85DD0];
  v45[1] = 3221225472;
  v45[2] = __87__PBUIWallpaperConfigurationManager_saveCroppedVideo_toURL_cropRect_completionHandler___block_invoke;
  v45[3] = &unk_278362420;
  v46 = v38;
  v47 = handlerCopy;
  v39 = handlerCopy;
  v40 = v38;
  [v40 exportAsynchronouslyWithCompletionHandler:v45];
}

void __87__PBUIWallpaperConfigurationManager_saveCroppedVideo_toURL_cropRect_completionHandler___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  if ([*(a1 + 32) status] == 4)
  {
    v3 = PBUILogCommon(4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __87__PBUIWallpaperConfigurationManager_saveCroppedVideo_toURL_cropRect_completionHandler___block_invoke_cold_1(v2);
    }
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, [*v2 status] == 3);
  }
}

- (CGAffineTransform)_naturalPreferredTransform:(SEL)transform forNaturalSize:(CGAffineTransform *)size
{
  v6 = *&size->c;
  *&retstr->a = *&size->a;
  *&retstr->c = v6;
  *&retstr->tx = *&size->tx;
  a = retstr->a;
  b = retstr->b;
  c = retstr->c;
  d = retstr->d;
  if (retstr->a == 1.0 && b == 0.0 && (c == 0.0 ? (v11 = d == 1.0) : (v11 = 0), v11))
  {
    retstr->tx = 0.0;
    retstr->ty = 0.0;
  }

  else
  {
    v13 = a == 0.0 && b == -1.0 && c == 1.0;
    if (v13 && d == 0.0)
    {
      retstr->tx = 0.0;
      retstr->ty = a5.width;
    }

    else if (a == -1.0 && b == 0.0 && (c == 0.0 ? (v14 = d == -1.0) : (v14 = 0), v14))
    {
      *&retstr->tx = a5;
    }

    else
    {
      v16 = a == 0.0 && b == 1.0 && c == -1.0;
      if (v16 && d == 0.0)
      {
        retstr->tx = a5.height;
        retstr->ty = 0.0;
      }

      else
      {
        v17 = PBUILogCommon(self);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PBUIWallpaperConfigurationManager _naturalPreferredTransform:? forNaturalSize:?];
        }

        v18 = MEMORY[0x277CBF2C0];
        v19 = *(MEMORY[0x277CBF2C0] + 16);
        *&retstr->a = *MEMORY[0x277CBF2C0];
        *&retstr->c = v19;
        *&retstr->tx = *(v18 + 32);
      }
    }
  }

  return self;
}

- (void)removeVideoForVariants:(int64_t)variants
{
  variantsCopy = variants;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v5 = [dataStores countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(dataStores);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __60__PBUIWallpaperConfigurationManager_removeVideoForVariants___block_invoke;
        v10[3] = &unk_2783623D0;
        v10[4] = v9;
        PBUIWallpaperEnumerateVariantsForLocations(variantsCopy, v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [dataStores countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (Class)proceduralWallpaperClassForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  proceduralWallpaperProvider = [(PBUIWallpaperConfigurationManager *)self proceduralWallpaperProvider];
  v6 = proceduralWallpaperProvider;
  if (proceduralWallpaperProvider)
  {
    [proceduralWallpaperProvider proceduralWallpaperClassForIdentifier:identifierCopy];
  }

  else
  {
    PBUIMagicWallpaperClassForIdentifier(identifierCopy);
  }
  v7 = ;

  return v7;
}

- (BOOL)isProceduralWallpaperInfoValid:(id)valid
{
  v4 = [valid objectForKey:@"kSBUIMagicWallpaperIdentifierKey"];
  if (v4)
  {
    v5 = [(PBUIWallpaperConfigurationManager *)self proceduralWallpaperClassForIdentifier:v4]!= 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)cleanedProceduralWallpaperInfo:(id)info
{
  v3 = [info mutableCopy];
  v4 = [v3 objectForKeyedSubscript:@"kSBUIMagicWallpaperPresetOptionsKey"];
  v5 = [v4 objectForKeyedSubscript:@"kSBUIMagicWallpaperThumbnailNameKey"];

  v6 = [&unk_282FD59F0 objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"kSBUIMagicWallpaperPresetOptionsKey"];
    v8 = [v7 mutableCopy];

    [v8 setObject:v6 forKeyedSubscript:@"kSBUIMagicWallpaperThumbnailNameKey"];
    [v3 setObject:v8 forKeyedSubscript:@"kSBUIMagicWallpaperPresetOptionsKey"];
  }

  return v3;
}

- (id)proceduralWallpaperInfoForVariant:(int64_t)variant
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v6 = [dataStores countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(dataStores);
      }

      v8 = [*(*(&v13 + 1) + 8 * v10) proceduralWallpaperInfoForVariant:variant];

      if (v8)
      {
        if ([(PBUIWallpaperConfigurationManager *)self isProceduralWallpaperInfoValid:v8])
        {
          break;
        }
      }

      ++v10;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [dataStores countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)setProceduralWallpaperIdentifier:(id)identifier options:(id)options forVariants:(int64_t)variants
{
  v25[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  optionsCopy = options;
  v10 = [(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54];
  [(PBUIWallpaperConfigurationManager *)self wallpaperWillChangeForVariants:variants];
  v24[0] = @"kSBUIMagicWallpaperIdentifierKey";
  v24[1] = @"kSBUIMagicWallpaperPresetOptionsKey";
  v25[0] = identifierCopy;
  v25[1] = optionsCopy;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v13 = [dataStores countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v19 + 1) + 8 * i) setProceduralWallpaperInfo:v11 forVariants:variants])
        {

          [(PBUIWallpaperConfigurationManager *)self removeAllDataExceptForType:2 variants:variants variantsShareWallpaperConfiguration:v10];
          v17 = 1;
          [(PBUIWallpaperConfigurationManager *)self wallpaperDidChangeForVariants:variants shouldNotify:1];
          goto LABEL_11;
        }
      }

      v14 = [dataStores countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (void)removeProceduralWallpaperForVariants:(int64_t)variants
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __74__PBUIWallpaperConfigurationManager_removeProceduralWallpaperForVariants___block_invoke;
  v3[3] = &unk_278362448;
  v3[4] = self;
  v3[5] = variants;
  PBUIWallpaperEnumerateVariantsForLocations(variants, v3);
}

void __74__PBUIWallpaperConfigurationManager_removeProceduralWallpaperForVariants___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) dataStores];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeProceduralWallpaperForVariants:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (BOOL)setWallpaperColor:(id)color forVariants:(int64_t)variants
{
  v20 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v7 = [(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54];
  [(PBUIWallpaperConfigurationManager *)self wallpaperWillChangeForVariants:variants];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v9 = [dataStores countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v15 + 1) + 8 * i) setWallpaperColor:colorCopy forVariants:variants])
        {

          [(PBUIWallpaperConfigurationManager *)self removeAllDataExceptForType:4 variants:variants variantsShareWallpaperConfiguration:v7];
          v13 = 1;
          [(PBUIWallpaperConfigurationManager *)self wallpaperDidChangeForVariants:variants shouldNotify:1];
          goto LABEL_11;
        }
      }

      v10 = [dataStores countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (BOOL)setWallpaperColorName:(id)name forVariants:(int64_t)variants
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v7 = [(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54];
  [(PBUIWallpaperConfigurationManager *)self wallpaperWillChangeForVariants:variants];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v9 = [dataStores countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v15 + 1) + 8 * i) setWallpaperColorName:nameCopy forVariants:variants])
        {

          [(PBUIWallpaperConfigurationManager *)self removeAllDataExceptForType:4 variants:variants variantsShareWallpaperConfiguration:v7];
          v13 = 1;
          [(PBUIWallpaperConfigurationManager *)self wallpaperDidChangeForVariants:variants shouldNotify:1];
          goto LABEL_11;
        }
      }

      v10 = [dataStores countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)removeWallpaperColorForVariants:(int64_t)variants
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __69__PBUIWallpaperConfigurationManager_removeWallpaperColorForVariants___block_invoke;
  v3[3] = &unk_278362448;
  v3[4] = self;
  v3[5] = variants;
  PBUIWallpaperEnumerateVariantsForLocations(variants, v3);
}

void __69__PBUIWallpaperConfigurationManager_removeWallpaperColorForVariants___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) dataStores];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeWallpaperColorForVariants:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (id)wallpaperColorForVariant:(int64_t)variant fromDataStore:(id)store colorName:(id *)name
{
  storeCopy = store;
  v8 = [storeCopy wallpaperColorNameForVariant:variant];
  if (!v8)
  {
LABEL_8:
    v10 = [storeCopy wallpaperColorForVariant:variant];
    goto LABEL_9;
  }

  v9 = [MEMORY[0x277D75348] pui_wallpaperColorForName:v8];
  if (!v9)
  {
    v12 = PBUILogCommon(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PBUIWallpaperConfigurationManager wallpaperColorForVariant:fromDataStore:colorName:];
    }

    goto LABEL_8;
  }

  v10 = v9;
  if (name)
  {
    v11 = v8;
    *name = v8;
  }

LABEL_9:

  return v10;
}

- (BOOL)setWallpaperGradient:(id)gradient forVariants:(int64_t)variants
{
  v20 = *MEMORY[0x277D85DE8];
  gradientCopy = gradient;
  v7 = [(PBUIWallpaperConfigurationManager *)self variantsShareWallpaperConfigurationForTypes:54];
  [(PBUIWallpaperConfigurationManager *)self wallpaperWillChangeForVariants:variants];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  v9 = [dataStores countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(dataStores);
        }

        if ([*(*(&v15 + 1) + 8 * i) setWallpaperGradient:gradientCopy forVariants:variants])
        {

          [(PBUIWallpaperConfigurationManager *)self removeAllDataExceptForType:5 variants:variants variantsShareWallpaperConfiguration:v7];
          v13 = 1;
          [(PBUIWallpaperConfigurationManager *)self wallpaperDidChangeForVariants:variants shouldNotify:1];
          goto LABEL_11;
        }
      }

      v10 = [dataStores countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (void)removeWallpaperGradientForVariants:(int64_t)variants
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __72__PBUIWallpaperConfigurationManager_removeWallpaperGradientForVariants___block_invoke;
  v3[3] = &unk_278362448;
  v3[4] = self;
  v3[5] = variants;
  PBUIWallpaperEnumerateVariantsForLocations(variants, v3);
}

void __72__PBUIWallpaperConfigurationManager_removeWallpaperGradientForVariants___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = [*(a1 + 32) dataStores];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) removeWallpaperGradientForVariants:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)removeDataForTypes:(unint64_t)types variants:(int64_t)variants variantsShareWallpaperConfiguration:(BOOL)configuration
{
  configurationCopy = configuration;
  typesCopy = types;
  if ((types & 8) != 0)
  {
    [(PBUIWallpaperConfigurationManager *)self removeVideoForVariants:variants];
    if ((typesCopy & 2) == 0)
    {
LABEL_3:
      if ((typesCopy & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((types & 2) == 0)
  {
    goto LABEL_3;
  }

  [(PBUIWallpaperConfigurationManager *)self removeWallpaperImagesForVariants:variants variantsShareWallpaperConfiguration:configurationCopy];
  [(PBUIWallpaperConfigurationManager *)self removeWallpaperOptionsForVariants:variants];
  [(PBUIWallpaperConfigurationManager *)self removeWallpaperImageHashDataForVariants:variants];
  if ((typesCopy & 4) == 0)
  {
LABEL_4:
    if ((typesCopy & 0x10) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    [(PBUIWallpaperConfigurationManager *)self removeWallpaperColorForVariants:variants];
    if ((typesCopy & 0x20) == 0)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_9:
  [(PBUIWallpaperConfigurationManager *)self removeProceduralWallpaperForVariants:variants];
  if ((typesCopy & 0x10) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((typesCopy & 0x20) == 0)
  {
    return;
  }

LABEL_11:

  [(PBUIWallpaperConfigurationManager *)self removeWallpaperGradientForVariants:variants];
}

- (void)wallpaperDidChangeForVariants:(int64_t)variants shouldNotify:(BOOL)notify
{
  notifyCopy = notify;
  [(PBUIWallpaperConfigurationManager *)self setCachedVariantsShareWallpaperConfigurationValid:0];
  [(PBUIWallpaperConfigurationManager *)self clearCacheForVariants:variants];
  if (notifyCopy)
  {
    if ([(PBUIWallpaperConfigurationManager *)self isInChangeBatch])
    {

      [(PBUIWallpaperConfigurationManager *)self delayNotifyingChangeForVariants:variants];
    }

    else
    {

      [(PBUIWallpaperConfigurationManager *)self notifyDelegateOfChangesToVariants:variants];
    }
  }
}

- (void)notifyDelegateOfChangesToVariants:(int64_t)variants
{
  delegate = [(PBUIWallpaperConfigurationManager *)self delegate];
  [delegate wallpaperConfigurationManager:self didChangeWallpaperConfigurationForVariants:variants];
}

- (id)getWallpaperLegibilitySettingsForVariant:(int64_t)variant
{
  delegate = [(PBUIWallpaperConfigurationManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate wallpaperConfigurationManager:self legibilitySettingsForVariant:variant];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (CGRect)cropRectForViewPort:(CGRect)port portrait:(BOOL)portrait zoomScale:(double)scale parallaxFactor:(double)factor forImageSize:(CGSize)size contentScaleFactor:(double)scaleFactor
{
  height = size.height;
  width = size.width;
  portraitCopy = portrait;
  v13 = port.size.height;
  v14 = port.size.width;
  y = port.origin.y;
  x = port.origin.x;
  v71 = *MEMORY[0x277D85DE8];
  v18 = PBUILogCommon(self);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_21E67D000, v18, OS_LOG_TYPE_INFO, "//////////PBUIWallpaperCropRectForViewPort//////////", &buf, 2u);
  }

  v20 = PBUILogCommon(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    v74.origin.x = x;
    v74.origin.y = y;
    v74.size.width = v14;
    v74.size.height = v13;
    v21 = NSStringFromCGRect(v74);
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = v21;
    _os_log_impl(&dword_21E67D000, v20, OS_LOG_TYPE_INFO, "viewPort: %{public}@", &buf, 0xCu);
  }

  v23 = PBUILogCommon(v22);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = scale;
    _os_log_impl(&dword_21E67D000, v23, OS_LOG_TYPE_INFO, "zoomScale: %g", &buf, 0xCu);
  }

  if (scale == 0.0 || (width == *MEMORY[0x277CBF3A8] ? (v25 = height == *(MEMORY[0x277CBF3A8] + 8)) : (v25 = 0), v25))
  {
    v53 = *MEMORY[0x277CBF3A0];
    v55 = *(MEMORY[0x277CBF3A0] + 8);
    v57 = *(MEMORY[0x277CBF3A0] + 16);
    v59 = *(MEMORY[0x277CBF3A0] + 24);
  }

  else
  {
    v26 = width * scale;
    v27 = height * scale;
    v28 = PBUILogCommon(v24);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v72.width = v26;
      v72.height = v27;
      v29 = NSStringFromCGSize(v72);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v29;
      _os_log_impl(&dword_21E67D000, v28, OS_LOG_TYPE_INFO, "scaledImageSize: %{public}@", &buf, 0xCu);
    }

    v69 = v27;

    [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
    v31 = v30;
    v33 = v32;
    parallaxDeviceType = [(PBUIWallpaperConfigurationManager *)self parallaxDeviceType];
    if (factor == 0.0)
    {
      v35 = 0.0;
    }

    else
    {
      v35 = 1.0;
    }

    v36 = [PBUIWallpaperParallaxSettings bestWallpaperSizeForWallpaperSize:parallaxDeviceType deviceType:portraitCopy parallaxFactor:v31 portrait:v33, v35, *&v26];
    v38 = v37;
    v40 = v39;
    v41 = PBUILogCommon(v36);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v73.width = v38;
      v73.height = v40;
      v42 = NSStringFromCGSize(v73);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v42;
      _os_log_impl(&dword_21E67D000, v41, OS_LOG_TYPE_INFO, "bestSize: %{public}@", &buf, 0xCu);
    }

    v44 = (v38 - v14) * 0.5;
    v45 = (v40 - v13) * 0.5;
    if (v44 >= x)
    {
      v44 = x;
    }

    if (v44 >= v68 - (x + v14))
    {
      v44 = v68 - (x + v14);
    }

    if (v45 >= y)
    {
      v45 = y;
    }

    if (v45 >= v69 - (y + v13))
    {
      v45 = v69 - (y + v13);
    }

    if (v44 >= 0.0)
    {
      v46 = v44;
    }

    else
    {
      v46 = 0.0;
    }

    if (v45 >= 0.0)
    {
      v47 = v45;
    }

    else
    {
      v47 = 0.0;
    }

    v48 = PBUILogCommon(v43);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v46;
      _os_log_impl(&dword_21E67D000, v48, OS_LOG_TYPE_INFO, "extraX: %g", &buf, 0xCu);
    }

    v50 = PBUILogCommon(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf.a) = 134217984;
      *(&buf.a + 4) = v47;
      _os_log_impl(&dword_21E67D000, v50, OS_LOG_TYPE_INFO, "extraY: %g", &buf, 0xCu);
    }

    CGAffineTransformMakeScale(&buf, 1.0 / scaleFactor, 1.0 / scaleFactor);
    v75.origin.x = x - v46;
    v75.origin.y = y - v47;
    v75.size.width = v14 + v46 * 2.0;
    v75.size.height = v13 + v47 * 2.0;
    CGRectApplyAffineTransform(v75, &buf);
    v51 = UIRectCenteredRect();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v59 = v58;
    v60 = PBUILogCommon(v51);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
    {
      v76.origin.x = v53;
      v76.origin.y = v55;
      v76.size.width = v57;
      v76.size.height = v59;
      v61 = NSStringFromCGRect(v76);
      LODWORD(buf.a) = 138543362;
      *(&buf.a + 4) = v61;
      _os_log_impl(&dword_21E67D000, v60, OS_LOG_TYPE_INFO, "PBUIWallpaperCropRectForViewPort: %{public}@", &buf, 0xCu);
    }

    v63 = PBUILogCommon(v62);
    if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf.a) = 0;
      _os_log_impl(&dword_21E67D000, v63, OS_LOG_TYPE_INFO, "/////////////////////////", &buf, 2u);
    }
  }

  v64 = v53;
  v65 = v55;
  v66 = v57;
  v67 = v59;
  result.size.height = v67;
  result.size.width = v66;
  result.origin.y = v65;
  result.origin.x = v64;
  return result;
}

- (CGRect)cropRectForOldCropRect:(CGRect)rect portrait:(BOOL)portrait zoomScale:(double)scale oldParallaxFactor:(double)factor forImageSize:(CGSize)size newZoomScale:(double *)zoomScale
{
  height = size.height;
  width = size.width;
  portraitCopy = portrait;
  v13 = rect.size.height;
  v14 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  CGAffineTransformMakeScale(&v41, scale, scale);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = v14;
  v42.size.height = v13;
  CGRectApplyAffineTransform(v42, &v41);
  [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
  UIRectCenteredRect();
  [PBUIWallpaperConfigurationManager cropRectForViewPort:"cropRectForViewPort:portrait:zoomScale:parallaxFactor:forImageSize:contentScaleFactor:" portrait:portraitCopy zoomScale:0x3FF0000000000000 parallaxFactor:? forImageSize:? contentScaleFactor:?];
  v18 = v43.origin.x;
  v19 = v43.origin.y;
  v20 = v43.size.width;
  v21 = v43.size.height;
  v22 = width * scale;
  v40 = height * scale;
  MinX = CGRectGetMinX(v43);
  if (MinX <= -0.0)
  {
    v24 = MinX;
  }

  else
  {
    v24 = -0.0;
  }

  v44.origin.x = v18;
  v44.origin.y = v19;
  v44.size.width = v20;
  v44.size.height = v21;
  v25 = CGRectGetMaxX(v44) - v22;
  if (v25 < 0.0)
  {
    v25 = 0.0;
  }

  v26 = v25 - v24;
  v45.origin.x = v18;
  v45.origin.y = v19;
  v45.size.width = v20;
  v45.size.height = v21;
  MinY = CGRectGetMinY(v45);
  if (MinY <= -0.0)
  {
    v28 = -MinY;
  }

  else
  {
    v28 = 0.0;
  }

  v46.origin.x = v18;
  v46.origin.y = v19;
  v46.size.width = v20;
  v46.size.height = v21;
  v29 = CGRectGetMaxY(v46) - v40;
  if (v29 < 0.0)
  {
    v29 = 0.0;
  }

  v30 = (v28 + v29) / v21;
  if (v26 / v20 >= v30)
  {
    v30 = v26 / v20;
  }

  v31 = 1.0 - v30;
  CGAffineTransformMakeScale(&v41, v31, v31);
  v47.origin.x = v18;
  v47.origin.y = v19;
  v47.size.width = v20;
  v47.size.height = v21;
  CGRectApplyAffineTransform(v47, &v41);
  UIRectCenteredIntegralRect();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  CGAffineTransformMakeScale(&v41, 1.0 / scale, 1.0 / scale);
  v48.origin.x = v33;
  v48.origin.y = v35;
  v48.size.width = v37;
  v48.size.height = v39;
  result = CGRectApplyAffineTransform(v48, &v41);
  if (zoomScale)
  {
    *zoomScale = 1.0 / v31 * scale;
  }

  return result;
}

- (double)parallaxFactorForCropRect:(CGRect)rect portrait:(BOOL)portrait forImageSize:(CGSize)size zoomScale:(double)scale
{
  size = size.height;
  width = size.width;
  height = rect.size.height;
  v9 = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v82 = *MEMORY[0x277D85DE8];
  v13 = PBUILogCommon(self);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_21E67D000, v13, OS_LOG_TYPE_INFO, "//////////PBUIWallpaperParallaxFactorForCropRect//////////", &buf, 2u);
  }

  CGAffineTransformMakeScale(&buf, scale, scale);
  v85.origin.x = x;
  v85.origin.y = y;
  v85.size.width = v9;
  v85.size.height = height;
  CGRectApplyAffineTransform(v85, &buf);
  [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
  v15 = v14;
  v17 = v16;
  v18 = UIRectCenteredRect();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v78 = v25;
  v26 = PBUILogCommon(v18);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v83.width = width;
    v83.height = size;
    v27 = NSStringFromCGSize(v83);
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = v27;
    _os_log_impl(&dword_21E67D000, v26, OS_LOG_TYPE_INFO, "imageSize %{public}@", &buf, 0xCu);
  }

  parallaxDeviceType = [(PBUIWallpaperConfigurationManager *)self parallaxDeviceType];
  v77 = v24;
  if (v24 / width >= v78 / size)
  {
    v29 = v24 / width;
  }

  else
  {
    v29 = v78 / size;
  }

  v30 = [PBUIWallpaperParallaxSettings minimumWallpaperSizeForWallpaperSize:parallaxDeviceType deviceType:v15, v17];
  v32 = v31 / width;
  v34 = v33 / size;
  if (v32 >= v34)
  {
    v35 = v32;
  }

  else
  {
    v35 = v34;
  }

  v36 = PBUILogCommon(v30);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = scale;
    _os_log_impl(&dword_21E67D000, v36, OS_LOG_TYPE_INFO, "zoomScale %g", &buf, 0xCu);
  }

  v38 = PBUILogCommon(v37);
  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v29;
    _os_log_impl(&dword_21E67D000, v38, OS_LOG_TYPE_INFO, "minimumZoomScale %g", &buf, 0xCu);
  }

  v40 = PBUILogCommon(v39);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v35;
    _os_log_impl(&dword_21E67D000, v40, OS_LOG_TYPE_INFO, "minimumZoomScaleForParallax %g", &buf, 0xCu);
  }

  v41 = fmin(fmax((scale - v29) / (v35 - v29), 0.0), 1.0);
  v43 = PBUILogCommon(v42);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v41;
    _os_log_impl(&dword_21E67D000, v43, OS_LOG_TYPE_INFO, "zoomFactor %g", &buf, 0xCu);
  }

  v76 = v41;

  v44 = [PBUIWallpaperParallaxSettings overhangSizeForDeviceType:parallaxDeviceType];
  v46 = v45;
  v79 = v47;
  v48 = PBUILogCommon(v44);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v84.width = v46;
    v84.height = v79;
    v49 = NSStringFromCGSize(v84);
    LODWORD(buf.a) = 138543362;
    *(&buf.a + 4) = v49;
    _os_log_impl(&dword_21E67D000, v48, OS_LOG_TYPE_INFO, "overhangSize %{public}@", &buf, 0xCu);
  }

  v50 = v20;
  v51 = v20 / v46;
  v53 = PBUILogCommon(v52);
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v20 / v46;
    _os_log_impl(&dword_21E67D000, v53, OS_LOG_TYPE_INFO, "minOffsetXFactor %g", &buf, 0xCu);
  }

  v54 = v22;
  v55 = v22 / v79;
  v57 = PBUILogCommon(v56);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v22 / v79;
    _os_log_impl(&dword_21E67D000, v57, OS_LOG_TYPE_INFO, "minOffsetYFactor %g", &buf, 0xCu);
  }

  v58 = width * scale;
  v59 = size * scale;

  if (v51 >= v55)
  {
    v61 = v55;
  }

  else
  {
    v61 = v51;
  }

  v62 = fmin(fmax(v61, 0.0), 1.0);
  v63 = PBUILogCommon(v60);
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v62;
    _os_log_impl(&dword_21E67D000, v63, OS_LOG_TYPE_INFO, "minOffsetFactor %g", &buf, 0xCu);
  }

  v86.origin.x = v50;
  v86.origin.y = v54;
  v86.size.width = v77;
  v86.size.height = v78;
  v64 = (v58 - CGRectGetMaxX(v86)) / v46;
  v87.origin.x = v50;
  v87.origin.y = v54;
  v87.size.width = v77;
  v87.size.height = v78;
  v66 = (v59 - CGRectGetMaxY(v87)) / v79;
  if (v64 < v66)
  {
    v66 = v64;
  }

  v67 = fmin(fmax(v66, 0.0), 1.0);
  v68 = PBUILogCommon(v65);
  if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v67;
    _os_log_impl(&dword_21E67D000, v68, OS_LOG_TYPE_INFO, "maxOffsetFactor %g", &buf, 0xCu);
  }

  v70 = v76;
  if (v76 > v62)
  {
    v70 = v62;
  }

  if (v70 <= v67)
  {
    v71 = v70;
  }

  else
  {
    v71 = v67;
  }

  v72 = PBUILogCommon(v69);
  if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf.a) = 134217984;
    *(&buf.a + 4) = v71;
    _os_log_impl(&dword_21E67D000, v72, OS_LOG_TYPE_INFO, "result: %g", &buf, 0xCu);
  }

  v74 = PBUILogCommon(v73);
  if (os_log_type_enabled(v74, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.a) = 0;
    _os_log_impl(&dword_21E67D000, v74, OS_LOG_TYPE_INFO, "/////////////////////////", &buf, 2u);
  }

  return v71;
}

- (void)getBestCropRect:(CGRect *)rect zoomScale:(double *)scale forImageSize:(CGSize)size portrait:(BOOL)portrait parallaxFactor:(double)factor
{
  portraitCopy = portrait;
  height = size.height;
  width = size.width;
  [PBUIWallpaperParallaxSettings minimumZoomScaleForWallpaperSize:[(PBUIWallpaperConfigurationManager *)self parallaxDeviceType] parallaxFactor:size.width deviceType:size.height, factor];
  v19 = v14;
  [(PBUIWallpaperConfigurationManager *)self cropRectForOldCropRect:portraitCopy portrait:&v19 zoomScale:0.0 oldParallaxFactor:0.0 forImageSize:width newZoomScale:height, v14, factor, width, height];
  if (rect)
  {
    rect->origin.x = v15;
    rect->origin.y = v16;
    rect->size.width = v17;
    rect->size.height = v18;
  }

  if (scale)
  {
    *scale = v19;
  }
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PBUIWallpaperConfigurationManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  dataStores = [(PBUIWallpaperConfigurationManager *)self dataStores];
  [v4 appendArraySection:dataStores withName:@"dataStores" skipIfEmpty:0];

  [(PBUIWallpaperConfigurationManager *)self wallpaperSize];
  v6 = [v4 appendSize:@"wallpaperSize" withName:?];
  [(PBUIWallpaperConfigurationManager *)self wallpaperScale];
  v7 = [v4 appendFloat:@"wallpaperScale" withName:?];
  wallpaperSizeType = [(PBUIWallpaperConfigurationManager *)self wallpaperSizeType];
  if (wallpaperSizeType > 4)
  {
    v9 = &stru_282FB34B0;
  }

  else
  {
    v9 = *(&off_2783624B8 + wallpaperSizeType);
  }

  v10 = [v4 appendObject:v9 withName:@"wallpaperSizeType"];

  return v4;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PBUIWallpaperConfigurationManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (PBUIWallpaperConfigurationManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)wallpaperSize
{
  width = self->_wallpaperSize.width;
  height = self->_wallpaperSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (PBUIProceduralWallpaperProvider)proceduralWallpaperProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_proceduralWallpaperProvider);

  return WeakRetained;
}

- (void)delayNotifyingChangeForVariants:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperConfigurationManager.m" lineNumber:242 description:@"Should only call this when in a change batch"];
}

- (void)wallpaperConfigurationForVariant:(uint64_t)a1 includingValuesForTypes:(unint64_t)a2 wallpaperMode:(uint64_t)a3 .cold.1(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v11 = a3;
  v18 = *MEMORY[0x277D85DE8];
  v13 = PBUIStringForWallpaperVariant(a1);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (a2)
  {
    v5 = 0;
    do
    {
      if (a2)
      {
        v6 = 1 << v5;
        v7 = &stru_282FB34B0;
        switch(1 << v5)
        {
          case 1:
            v7 = @"static image";
            break;
          case 2:
            v7 = @"original static image";
            break;
          case 3:
          case 5:
          case 6:
          case 7:
            break;
          case 4:
            v7 = @"thumbnail image";
            break;
          case 8:
            v7 = @"thumbnail image data";
            break;
          default:
            if (v6 == 32)
            {
              v8 = @"procedural wallpaper instance";
            }

            else
            {
              v8 = &stru_282FB34B0;
            }

            if (v6 == 16)
            {
              v7 = @"wallpaper options";
            }

            else
            {
              v7 = v8;
            }

            break;
        }

        [v4 addObject:{v7, v11}];
      }

      ++v5;
      v9 = a2 >= 2;
      a2 >>= 1;
    }

    while (v9);
  }

  v10 = [v4 componentsJoinedByString:{@", ", v11}];

  *buf = 138543618;
  v15 = v13;
  v16 = 2114;
  v17 = v10;
  _os_log_debug_impl(&dword_21E67D000, v12, OS_LOG_TYPE_DEBUG, "Get wallpaper configuration for variant: %{public}@ (include: %{public}@)", buf, 0x16u);
}

- (void)wallpaperConfigurationForVariant:includingValuesForTypes:wallpaperMode:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)wallpaperConfigurationForVariant:(uint64_t)a1 includingValuesForTypes:(uint64_t)a2 wallpaperMode:(NSObject *)a3 .cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = PBUIStringForWallpaperVariant(a2);
  v6 = 138412546;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_debug_impl(&dword_21E67D000, a3, OS_LOG_TYPE_DEBUG, "Constructed configuration %@ for variant %{public}@", &v6, 0x16u);
}

- (void)_providerForVariant:(uint64_t)a1 lockConfig:homeConfig:.cold.1(uint64_t a1)
{
  v1 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7(&dword_21E67D000, v2, v3, "failed to determine provider of variant %{public}@", v4, v5, v6, v7);
}

- (void)posterMigrationInfo
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_21E67D000, v0, OS_LOG_TYPE_ERROR, "migration info resolved to %{public}@", v1, 0xCu);
}

- (void)setWallpaperImage:(uint64_t)a1 originalImage:(uint64_t)a2 forVariants:options:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperConfigurationManager.m" lineNumber:845 description:{@"Invalid parameter not satisfying: %@", @"image"}];
}

- (void)setWallpaperImage:(uint64_t)a1 originalImage:(uint64_t)a2 thumbnailData:imageHashData:wallpaperOptions:forVariants:options:wallpaperMode:isMigrating:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PBUIWallpaperConfigurationManager.m" lineNumber:851 description:{@"Invalid parameter not satisfying: %@", @"image"}];
}

- (void)restoreDefaultWallpaperForAllVariantsAndNotify:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)clearCacheForVariants:memoryOnly:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)performMigrationWithFailureHandler:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)performMigrationWithFailureHandler:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)performMigrationWithFailureHandler:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)performMigrationWithFailureHandler:.cold.5()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)performMigrationWithFailureHandler:.cold.6()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)performMigrationWithFailureHandler:.cold.7()
{
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xEu);
}

- (void)performMigrationWithFailureHandler:.cold.8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)performMigrationWithFailureHandler:.cold.9()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)performMigrationWithFailureHandler:.cold.10()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)performMigrationWithFailureHandler:.cold.11()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)performMigrationWithFailureHandler:.cold.12()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)performMigrationWithFailureHandler:.cold.13()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)performMigrationWithFailureHandler:.cold.14()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)migrateWallpaperOptionsForImageIfNecessaryForVariant:(uint64_t)a1 representingVariants:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = PBUIStringForWallpaperVariant(a1);
  OUTLINED_FUNCTION_5_0();
  _os_log_debug_impl(&dword_21E67D000, a2, OS_LOG_TYPE_DEBUG, "Migrate wallpaper options for %{public}@", v4, 0xCu);
}

- (void)migrateWallpaperOptionsForImageIfNecessaryForVariant:representingVariants:.cold.3()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_2_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)migrateWallpaperOptionsForImageIfNecessaryForVariant:representingVariants:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __87__PBUIWallpaperConfigurationManager_saveCroppedVideo_toURL_cropRect_completionHandler___block_invoke_cold_1(id *a1)
{
  v1 = [*a1 error];
  v2 = [v1 localizedDescription];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7(&dword_21E67D000, v3, v4, "Failed with error: %{public}@", v5, v6, v7, v8);
}

- (void)_naturalPreferredTransform:(_OWORD *)a1 forNaturalSize:.cold.1(_OWORD *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = a1[1];
  *&v9.a = *a1;
  *&v9.c = v1;
  *&v9.tx = a1[2];
  v2 = NSStringFromCGAffineTransform(&v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7(&dword_21E67D000, v3, v4, "naturalPreferredTransform: unrecognized preferred transform (%@). The resulting video may be (part) black\n", v5, v6, v7, v8);
}

- (void)wallpaperColorForVariant:fromDataStore:colorName:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_5_0();
  _os_log_error_impl(&dword_21E67D000, v0, OS_LOG_TYPE_ERROR, "Error retrieving color from user defaults: unknown color name '%{public}@' specified.", v1, 0xCu);
}

@end