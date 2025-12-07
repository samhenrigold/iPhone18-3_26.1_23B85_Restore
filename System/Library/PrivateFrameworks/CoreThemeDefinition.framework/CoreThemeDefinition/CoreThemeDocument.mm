@interface CoreThemeDocument
+ (BOOL)defaultAllowsExtendedRangePixelFormats;
+ (id)_imageAssetURLsByCopyingFileURLs:(id)ls toManagedLocationAtURL:(id)l error:(id *)error;
+ (id)_sharedDocumentList;
+ (id)createConfiguredDocumentAtURL:(id)l error:(id *)error;
+ (id)createConfiguredDocumentAtURL:(id)l targetPlatform:(int64_t)platform error:(id *)error;
+ (id)dataModelNameForVersion:(int64_t)version;
+ (id)defaultThemeBitSourceURLForDocumentURL:(id)l;
+ (id)migrateDocumentAtURL:(id)l ofType:(id)type error:(id *)error;
+ (int)shouldConvertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier error:(id *)error;
+ (int64_t)dataModelVersion;
+ (int64_t)dataModelVersionFromMetadata:(id)metadata;
+ (int64_t)targetPlatformForMOC:(id)c;
+ (void)_addThemeDocument:(id)document;
+ (void)initialize;
- (BOOL)_canremoveKeyAttribte:(unsigned __int16)attribte;
- (BOOL)_matchesAllExceptGamut:(id)gamut andKeySpec:(id)spec;
- (BOOL)_production:(id)_production containsScale:(unsigned int)scale andIdiom:(unsigned int)idiom andSubtype:(unsigned int)subtype;
- (BOOL)_testRenditionForP3:(id)p3;
- (BOOL)_updateRenditionPackings:(id)packings error:(id *)error;
- (BOOL)allowsExtendedRangePixelFormats;
- (BOOL)buildModelError:(id *)error;
- (BOOL)canImportNamedAssetImportInfo:(id)info;
- (BOOL)checkCompatibilityOfDocumentAtURL:(id)l ofType:(id)type error:(id *)error;
- (BOOL)configurePersistentStoreCoordinatorForURL:(id)l ofType:(id)type modelConfiguration:(id)configuration storeOptions:(id)options error:(id *)error;
- (BOOL)createCustomArtworkProductionsForCustomAssets:(id)assets withImportInfos:(id)infos error:(id *)error;
- (BOOL)createPSDReferenceArtworkForRenditionGroup:(id)group atDestination:(id)destination error:(id *)error;
- (BOOL)customizationExistsForSchemaDefinition:(id)definition;
- (BOOL)customizeSchemaEffectDefinition:(id)definition shouldReplaceExisting:(BOOL)existing error:(id *)error;
- (BOOL)customizeSchemaElementDefinition:(id)definition usingArtworkFormat:(id)format shouldReplaceExisting:(BOOL)existing error:(id *)error;
- (BOOL)customizeSchemaMaterialDefinition:(id)definition shouldReplaceExisting:(BOOL)existing error:(id *)error;
- (BOOL)customizeSchemaPartDefinition:(id)definition usingArtworkFormat:(id)format nameElement:(id)element shouldReplaceExisting:(BOOL)existing error:(id *)error;
- (BOOL)featureEnabled:(int)enabled;
- (BOOL)needToCreateForwardstopFor2018DeploymentVariant:(id)variant withCompressionTypes:(id)types;
- (BOOL)needToCreateForwardstopFor2019DeploymentVariant:(id)variant withCompressionTypes:(id)types;
- (BOOL)readFromURL:(id)l ofType:(id)type error:(id *)error;
- (BOOL)renameThemeBitSourceFolderTo:(id)to error:(id *)error;
- (BOOL)shouldAllowHevcCompression;
- (BOOL)shouldCreate2018ForwardstopForLossless;
- (BOOL)shouldGenerateDisplayGamut:(unsigned int)gamut;
- (BOOL)shouldGenerateScale:(unsigned int)scale;
- (CGColorSpace)createCGColorSpaceWithIdentifier:(unint64_t)identifier;
- (CoreThemeDocument)init;
- (CoreThemeDocument)initWithContentsOfURL:(id)l ofType:(id)type error:(id *)error;
- (CoreThemeDocument)initWithType:(id)type error:(id *)error;
- (CoreThemeDocument)initWithType:(id)type targetPlatform:(int64_t)platform error:(id *)error;
- (NSURL)themeBitSourceURL;
- (NSUUID)uuid;
- (TDCatalogGlobals)catalogGlobals;
- (const)renditionKeyFormat;
- (const)untrimmedRenditionKeyFormat;
- (id)_addAssetsAtFileURLs:(id)ls createProductions:(BOOL)productions referenceFiles:(BOOL)files bitSource:(id)source customInfos:(id)infos sortedCustomInfos:(id *)customInfos;
- (id)_addAssetsFromCustomAssetInfos:(id)infos bitSource:(id)source error:(id *)error;
- (id)_cachedConstantsForEntity:(id)entity;
- (id)_createNamedElementWithIdentifier:(int64_t)identifier;
- (id)_createNamedElementWithNextAvailableIdentifier;
- (id)_createPhotoshopElementProductionWithAsset:(id)asset;
- (id)_customizedSchemaDefinitionsForEntity:(id)entity;
- (id)_genericPartDefinition;
- (id)_iconLayerStackFromLayerStackRendition:(id)rendition withName:(id)name matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error;
- (id)_namedColorFromColorRendition:(id)rendition;
- (id)_namedGradientFromGradientRendition:(id)rendition matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance;
- (id)_namedImageEffectPartDefinition;
- (id)_namedImagePartDefinition;
- (id)_namedTextEffectPartDefinition;
- (id)_predicateForRenditionKeySpec:(id)spec;
- (id)_renditionInSet:(id)set matchingAppearance:(id)appearance;
- (id)_sizeIndexesByNameFromNamedAssetImportInfos:(id)infos;
- (id)_themeBitSource:(id *)source;
- (id)_themeBitSourceForReferencedFilesAtURLs:(id)ls createIfNecessary:(BOOL)necessary;
- (id)allObjectsForEntity:(id)entity withSortDescriptors:(id)descriptors;
- (id)appearanceWithIdentifier:(int64_t)identifier;
- (id)appearanceWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed;
- (id)artworkFormat;
- (id)assetAtFileURL:(id)l;
- (id)assetAtPath:(id)path;
- (id)compressionTypes;
- (id)constantWithName:(id)name forIdentifier:(int64_t)identifier;
- (id)createAssetWithName:(id)name fileType:(id)type scaleFactor:(unsigned int)factor inCategory:(id)category forThemeBitSource:(id)source;
- (id)createAssetWithName:(id)name inCategory:(id)category forThemeBitSource:(id)source;
- (id)createAssetWithName:(id)name scaleFactor:(unsigned int)factor inCategory:(id)category forThemeBitSource:(id)source;
- (id)createEffectStyleProductionForPartDefinition:(id)definition withNameIdentifier:(id)identifier;
- (id)createElementProductionWithAsset:(id)asset;
- (id)createNamedArtworkProductionsForAssets:(id)assets customInfos:(id)infos skipLastStep:(BOOL)step error:(id *)error;
- (id)createNamedColorProductionsForImportInfos:(id)infos error:(id *)error;
- (id)createNamedEffectProductionWithName:(id)name isText:(BOOL)text;
- (id)createNamedGradientProductionsForImportInfos:(id)infos error:(id *)error;
- (id)createProductionWithRenditionGroup:(id)group forPartDefinition:(id)definition artworkFormat:(id)format nameElement:(id)element shouldReplaceExisting:(BOOL)existing error:(id *)error;
- (id)createReferencePNGForSchemaRendition:(id)rendition withPartDefinition:(id)definition atLocation:(id)location error:(id *)error;
- (id)createTextStyleProductionsForImportInfos:(id)infos error:(id *)error;
- (id)defaultBaseFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition;
- (id)defaultPNGFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition;
- (id)defaultPathComponentsForPartDefinition:(id)definition;
- (id)deploymentTargets;
- (id)directions;
- (id)displayGamuts;
- (id)effectComponentWithType:(unsigned int)type inRendition:(id)rendition createIfNeeded:(BOOL)needed;
- (id)effectParameterValueWithType:(unsigned int)type inComponent:(id)component createIfNeeded:(BOOL)needed;
- (id)elementProductionsWithName:(id)name;
- (id)featureSetClasses;
- (id)folderNameFromRenditionKey:(id)key forPartDefinition:(id)definition;
- (id)glyphRenderingModes;
- (id)glyphWeights;
- (id)glyphsSizes;
- (id)historian;
- (id)idioms;
- (id)localizationWithIdentifier:(int64_t)identifier;
- (id)localizationWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed;
- (id)managedObjectModel;
- (id)mappingForPhotoshopLayerIndex:(int64_t)index themeDrawingLayerIdentifier:(int64_t)identifier;
- (id)metadatumForKey:(id)key;
- (id)minimalDisplayNameForThemeConstant:(id)constant;
- (id)namedArtworkProductionWithName:(id)name;
- (id)namedArtworkProductions;
- (id)namedEffectProductionWithName:(id)name;
- (id)namedEffectProductions;
- (id)namedElementWithName:(id)name;
- (id)namedElementsForElementDefinition:(id)definition;
- (id)newObjectForEntity:(id)entity;
- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors;
- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors error:(id *)error;
- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors withContext:(id)context error:(id *)error;
- (id)pathToAsset:(id)asset;
- (id)persistentStoreTypeForFileType:(id)type;
- (id)psdImageRefForAsset:(id)asset;
- (id)relativePathToProductionData;
- (id)renditionsMatchingRenditionKeySpec:(id)spec;
- (id)rootPathForProductionData;
- (id)schemaDefinitionWithElementID:(int64_t)d;
- (id)schemaPartDefinitionWithElementID:(int64_t)d partID:(int64_t)iD;
- (id)sizeClasses;
- (id)slicesComputedForImageSize:(CGSize)size usingSliceInsets:(id)insets resizableSliceSize:(CGSize)sliceSize withRenditionType:(int64_t)type;
- (id)textureFaces;
- (id)themeBitSourceFolderName;
- (id)themeConstant:(id)constant withIdentifier:(int64_t)identifier;
- (id)updateAutomaticTexturesForCustomInfos:(id)infos allTextureInfos:(id)textureInfos;
- (id)updateToEmbeddedSchemaVersion2AndReturnAlertString:(id *)string;
- (id)updatedVersionsMetadataFromMetadata:(id)metadata;
- (int)renditionKeySemantics;
- (int64_t)_compareFlattenedKeySpec1:(id)spec1 toKeySpec2:(id)spec2;
- (int64_t)targetPlatform;
- (uint64_t)_tidyUpLayerStacks;
- (uint64_t)catalogGlobals;
- (uint64_t)checksum;
- (unint64_t)colorSpaceID;
- (unint64_t)countForEntity:(id)entity withPredicate:(id)predicate;
- (unint64_t)countOfRenditionsMatchingRenditionKeySpec:(id)spec;
- (unint64_t)countOfRenditionsMatchingRenditionKeySpecs:(id)specs;
- (unsigned)checksum;
- (void)_addLayerReference:(id)reference toMutableIconLayerStack:(id)stack matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error;
- (void)_addLegacyIconAssetsForLayerStack:(id)stack forAppearance:(id)appearance renderedAppearance:(unint64_t)renderedAppearance renderingMode:(id)mode error:(id *)error;
- (void)_addLegacyIconAssetsForLayerStackProduction:(id)production withName:(id)name error:(id *)error;
- (void)_addResolvedLayerReferenceToFlattenedImageRendition:(id)rendition usingArtworkRendition:(id)artworkRendition andLayerReference:(id)reference;
- (void)_automaticP3GenerationFromSRGB;
- (void)_automaticSRGBGenerationFromP3;
- (void)_backwardsCompatibilityPatchForLayoutDirection;
- (void)_configureAfterFirstSave;
- (void)_createForwardstopRenditions;
- (void)_delete:(id)_delete withRendition:(id)rendition;
- (void)_generateWatchImages;
- (void)_getFilename:(id *)filename scaleFactor:(unsigned int *)factor category:(id *)category bitSource:(id *)source forFileURL:(id)l;
- (void)_groupPackableRenditions;
- (void)_insertRendition:(id)rendition forKey:(id)key;
- (void)_makeRadiosityImages;
- (void)_makeSolidLayerStackTextures;
- (void)_normalizeRenditionKeySpec:(id)spec forSchemaRendition:(id)rendition;
- (void)_optimizeForDeviceTraits;
- (void)_processModelProductions;
- (void)_removeRedundantPDFBasedRenditions:(id)renditions;
- (void)_removeRedundantPDFBasedRenditionsForAssets:(id)assets;
- (void)_tidyUpLayerStacks;
- (void)_tidyUpRecognitionImages;
- (void)_updateDeviceTraits;
- (void)_updateKeyFormatWithContext:(id)context;
- (void)addDeviceTraitForOptimization:(id)optimization;
- (void)addThemeBitSourceAtPath:(id)path createProductions:(BOOL)productions;
- (void)changedObjectsNotification:(id)notification;
- (void)convertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier;
- (void)createForwardstops:(id)forwardstops withCompressionTypes:(id)types withDeploymentTargets:(id)targets;
- (void)createNamedGlyphVectorForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error;
- (void)createNamedIconLayerStacksForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error;
- (void)createNamedModelsForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error;
- (void)createNamedRecognitionObjectsForAssets:(id)assets customInfos:(id)infos error:(id *)error;
- (void)createNamedRenditionGroupProductionsForImportInfos:(id)infos error:(id *)error;
- (void)createNamedTexturesForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error;
- (void)dealloc;
- (void)deleteNamedAssets:(id)assets shouldDeleteAssetFiles:(BOOL)files completionHandler:(id)handler;
- (void)deleteObject:(id)object;
- (void)deleteObjects:(id)objects;
- (void)deleteProduction:(id)production shouldDeleteAssetFiles:(BOOL)files;
- (void)deleteProductions:(id)productions shouldDeleteAssetFiles:(BOOL)files;
- (void)exportCursorsToURL:(id)l;
- (void)importCursorsFromURL:(id)l getUnusedImportedCursors:(id *)cursors getUnupdatedCursors:(id *)unupdatedCursors;
- (void)importCustomAssetsWithImportInfos:(id)infos completionHandler:(id)handler;
- (void)importNamedAssetsFromFileURLs:(id)ls referenceFiles:(BOOL)files completionHandler:(id)handler;
- (void)importNamedAssetsWithImportInfos:(id)infos referenceFiles:(BOOL)files completionHandler:(id)handler;
- (void)incrementallyPackRenditionsSinceDate:(id)date error:(id *)error;
- (void)packRenditionsError:(id *)error;
- (void)primeArrayControllers;
- (void)removeCustomizationForSchemaDefinition:(id)definition shouldDeleteAssetFiles:(BOOL)files;
- (void)resetThemeConstants;
- (void)setAllowsExtendedRangePixelFormats:(BOOL)formats;
- (void)setMetadatum:(id)metadatum forKey:(id)key;
- (void)setMinimumDeploymentVersion:(id)version;
- (void)setOptimizeForDeviceTraits:(id)traits;
- (void)setRelativePathToProductionData:(id)data;
- (void)setTargetPlatform:(int64_t)platform;
- (void)setUuid:(id)uuid;
- (void)updateRenditionSpec:(id)spec;
@end

@implementation CoreThemeDocument

+ (void)initialize
{
  __coreThemeLoggingEnabled = getenv("CoreThemeLoggingEnabled") != 0;
  v2 = getenv("CoreUI_PACKING");
  if (v2)
  {
    v3 = v2;
    v4 = strdup(v2);
    __stringp = v4;
    v5 = strsep(&__stringp, ":");
    v6 = strsep(&__stringp, ":");
    v7 = atoi(v5);
    __packing_max_area = v7;
    if (v6)
    {
      v8 = atoi(v6);
      __packing_imageSize_allowed = v8;
    }

    else
    {
      v8 = __packing_imageSize_allowed;
    }

    free(v4);
    NSLog(&cfstr_Corethemedocum_0.isa, v3, v7, v8);
  }
}

- (void)setMinimumDeploymentVersion:(id)version
{
  minimumDeploymentVersion = self->_minimumDeploymentVersion;
  if (minimumDeploymentVersion != version)
  {

    v6 = [version copy];
    self->_minimumDeploymentVersion = v6;
    v7 = [(NSString *)v6 componentsSeparatedByString:@"."];
    v8 = [(NSArray *)v7 count];
    if (v8)
    {
      v9 = v8;
      self->_majorVersion = [-[NSArray objectAtIndex:](v7 objectAtIndex:{0), "intValue"}];
      if (v9 != 1)
      {
        self->_minorVersion = [-[NSArray objectAtIndex:](v7 objectAtIndex:{1), "intValue"}];
        if (v9 < 3)
        {
          v10 = 0;
        }

        else
        {
          v10 = [-[NSArray objectAtIndex:](v7 objectAtIndex:{2), "intValue"}];
        }

LABEL_8:
        self->_patchVersion = v10;
        if ([(CoreThemeDocument *)self targetPlatform])
        {
          if ([(CoreThemeDocument *)self targetPlatform]== 5)
          {
LABEL_10:
            v11 = MEMORY[0x277D02668];
            v12 = 2;
LABEL_26:
            [v11 setFileEncoding:v12];
            goto LABEL_27;
          }

          targetPlatform = [(CoreThemeDocument *)self targetPlatform];
          majorVersion = self->_majorVersion;
          if (targetPlatform == 4)
          {
            if (majorVersion >= 2)
            {
              goto LABEL_10;
            }

            v11 = MEMORY[0x277D02668];
            if (majorVersion == 1)
            {
LABEL_25:
              v12 = 1;
              goto LABEL_26;
            }
          }

          else
          {
            if (majorVersion >= 9)
            {
              goto LABEL_10;
            }

            v11 = MEMORY[0x277D02668];
            if (majorVersion == 8)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v13 = self->_majorVersion;
          if (v13 >= 10)
          {
            if (v13 != 10)
            {
              goto LABEL_10;
            }

            minorVersion = self->_minorVersion;
            if (minorVersion > 10)
            {
              goto LABEL_10;
            }

            if (minorVersion >= 10)
            {
              v11 = MEMORY[0x277D02668];
              goto LABEL_25;
            }
          }

          v11 = MEMORY[0x277D02668];
        }

        v12 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      self->_majorVersion = 0x7FFFFFFF;
    }

    v10 = 0;
    self->_minorVersion = 0;
    goto LABEL_8;
  }

LABEL_27:

  [(CoreThemeDocument *)self _updateDeviceTraits];
}

- (void)setOptimizeForDeviceTraits:(id)traits
{
  if (traits)
  {
    [(CoreThemeDocument *)self addDeviceTraitForOptimization:?];
  }

  else
  {
    [(CoreThemeDocument *)self removeDeviceTraitsForOptimization];
  }
}

- (void)addDeviceTraitForOptimization:(id)optimization
{
  if (optimization)
  {
    deviceTraits = self->_deviceTraits;
    if (!deviceTraits)
    {
      deviceTraits = objc_alloc_init(MEMORY[0x277CBEB18]);
      self->_deviceTraits = deviceTraits;
    }

    [(NSMutableArray *)deviceTraits addObject:optimization];
    if ([optimization dynamicDisplayModeValue] == 1)
    {
      v6 = [optimization copyWithZone:{-[CoreThemeDocument zone](self, "zone")}];
      [v6 setScale:1.0];
      [v6 setDisplayGamut:@"sRGB"];
      [(NSMutableArray *)self->_deviceTraits addObject:v6];
    }
  }
}

- (BOOL)shouldGenerateScale:(unsigned int)scale
{
  v17 = *MEMORY[0x277D85DE8];
  deviceTraits = self->_deviceTraits;
  if (!deviceTraits)
  {
LABEL_11:
    LOBYTE(v5) = 1;
    return v5;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    scaleCopy = scale;
LABEL_4:
    v9 = 0;
    while (1)
    {
      if (*v13 != v7)
      {
        objc_enumerationMutation(deviceTraits);
      }

      [*(*(&v12 + 1) + 8 * v9) scale];
      if (v10 == scaleCopy)
      {
        goto LABEL_11;
      }

      if (v6 == ++v9)
      {
        v6 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v12 objects:v16 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          goto LABEL_4;
        }

        return v5;
      }
    }
  }

  return v5;
}

- (void)updateRenditionSpec:(id)spec
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return;
  }

  if (![(CoreThemeDocument *)self targetPlatform])
  {
    majorVersion = self->_majorVersion;
    if (majorVersion < 10 || (majorVersion == 10 ? (v9 = self->_minorVersion <= 9) : (v9 = 0), v9))
    {
      v7 = 0;
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if ([(CoreThemeDocument *)self targetPlatform]== 5 || [(CoreThemeDocument *)self targetPlatform]!= 1 && [(CoreThemeDocument *)self targetPlatform]!= 4 && [(CoreThemeDocument *)self targetPlatform]!= 3 && [(CoreThemeDocument *)self targetPlatform]!= 2)
  {
LABEL_16:
    v7 = 1;
    goto LABEL_18;
  }

  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v6 = self->_majorVersion;
  if (targetPlatform != 4)
  {
    if (v6 < 8 || (v11 = 1, v6 == 8) && self->_minorVersion < 0)
    {
      v11 = 0;
    }

    [spec setAllowsMultiPassEncoding:v11];
    [spec setAllowsOptimalRowbytesPacking:v11];
    v12 = self->_majorVersion;
    if (v12 > 8)
    {
      goto LABEL_20;
    }

    v7 = 0;
    if (v12 == 8 && self->_minorVersion >= 4)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v7 = v6 > 1;
LABEL_18:
  [spec setAllowsMultiPassEncoding:v7];
LABEL_19:
  [spec setAllowsOptimalRowbytesPacking:v7];
LABEL_20:
  shouldSupportCompactCompression = [(CoreThemeDocument *)self shouldSupportCompactCompression];

  [spec setAllowsCompactCompression:shouldSupportCompactCompression];
}

- (BOOL)shouldAllowHevcCompression
{
  if ([(CoreThemeDocument *)self featureEnabled:20])
  {
    return 0;
  }

  return [(CoreThemeDocument *)self featureEnabled:12];
}

- (BOOL)shouldCreate2018ForwardstopForLossless
{
  if ([(CoreThemeDocument *)self featureEnabled:11])
  {
    return 0;
  }

  else
  {
    return ![(CoreThemeDocument *)self featureEnabled:13];
  }
}

- (void)changedObjectsNotification:(id)notification
{
  if ([objc_msgSend(notification "object")])
  {
    userInfo = [notification userInfo];
    array = [MEMORY[0x277CBEB18] array];
    [array addObjectsFromArray:{objc_msgSend(objc_msgSend(userInfo, "objectForKey:", *MEMORY[0x277CBE188]), "allObjects")}];
    [array addObjectsFromArray:{objc_msgSend(objc_msgSend(userInfo, "objectForKey:", *MEMORY[0x277CBE310]), "allObjects")}];
    historian = [(CoreThemeDocument *)self historian];

    [historian updateEntriesForManagedObjects:array];
  }
}

- (id)_predicateForRenditionKeySpec:(id)spec
{
  v20[29] = *MEMORY[0x277D85DE8];
  v4 = sel_part;
  v17 = @"part";
  v18 = sel_part;
  v19 = @"direction";
  v20[0] = sel_direction;
  v20[1] = @"state";
  v20[2] = sel_state;
  v20[3] = @"presentationState";
  v20[4] = sel_presentationState;
  v20[5] = @"size";
  v20[6] = sel_size;
  v20[7] = @"element";
  v20[8] = sel_element;
  v20[9] = @"value";
  v20[10] = sel_value;
  v20[11] = @"layer";
  v20[12] = sel_layer;
  v20[13] = @"idiom";
  v20[14] = sel_idiom;
  v20[15] = @"graphicsFeatureSetClass";
  v20[16] = sel_graphicsFeatureSetClass;
  v20[17] = @"sizeClassHorizontal";
  v20[18] = sel_sizeClassHorizontal;
  v20[19] = @"sizeClassVertical";
  v20[20] = sel_sizeClassVertical;
  v20[21] = @"appearance";
  v20[22] = sel_appearance;
  v20[23] = @"localization";
  v20[24] = sel_localization;
  v20[25] = @"target";
  v20[26] = sel_target;
  v20[27] = 0;
  v20[28] = 0;
  v5 = @"nameIdentifier";
  v6 = sel_nameIdentifier;
  v7 = v16;
  v15 = @"dimension1";
  v16[0] = sel_dimension1;
  v16[1] = @"dimension2";
  v16[2] = sel_dimension2;
  v16[3] = @"scaleFactor";
  v16[4] = sel_scaleFactor;
  v16[5] = @"subtype";
  v16[6] = sel_subtype;
  v16[7] = @"memoryClass";
  v16[8] = sel_memoryClass;
  v16[9] = 0;
  v16[10] = 0;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:21];
  do
  {
    [v8 addObject:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"keySpec.%K == %d", v5, objc_msgSend(spec, "performSelector:", v6))}];
    v5 = *(v7 - 1);
    v6 = *v7;
    v7 += 2;
  }

  while (v5);
  v9 = v17;
  if (v17)
  {
    v10 = v20;
    do
    {
      v11 = [spec performSelector:v4];
      if (v11)
      {
        v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"keySpec.%K.identifier == %d", v9, objc_msgSend(v11, "identifier")];
      }

      else
      {
        v12 = [MEMORY[0x277CCAC30] predicateWithFormat:@"( keySpec.%K.identifier == 0 OR keySpec.%K == NULL)", v9, v9];
      }

      [v8 addObject:v12];
      v9 = *(v10 - 1);
      v4 = *v10;
      v10 += 2;
    }

    while (v9);
  }

  v13 = [MEMORY[0x277CCA920] andPredicateWithSubpredicates:v8];

  return v13;
}

- (void)_getFilename:(id *)filename scaleFactor:(unsigned int *)factor category:(id *)category bitSource:(id *)source forFileURL:(id)l
{
  lastPathComponent = [l lastPathComponent];
  v14 = [TDAsset scaleFactorFromImageFilename:lastPathComponent];
  v15 = [-[CoreThemeDocument rootPathForProductionData](self "rootPathForProductionData")];
  if (!(category | source))
  {
    goto LABEL_26;
  }

  v16 = v15;
  v17 = [objc_msgSend(l "URLByStandardizingPath")];
  if ([v17 rangeOfString:v16 options:8])
  {
    if (category)
    {
      *category = 0;
    }

    if (source)
    {
      *source = 0;
    }

    goto LABEL_26;
  }

  v18 = [objc_msgSend(v17 substringFromIndex:{objc_msgSend(v16, "length") + (objc_msgSend(objc_msgSend(v16, "substringWithRange:", objc_msgSend(v16, "length") - 1, 1), "isEqualToString:", @"/", "stringByDeletingLastPathComponent"}];
  pathComponents = [(__CFString *)v18 pathComponents];
  if ((!-[CoreThemeDocument metadatumForKey:](self, "metadatumForKey:", @"hasNoBitSource") || -[CoreThemeDocument isCustomLook](self, "isCustomLook")) && [pathComponents count])
  {
    v20 = [pathComponents objectAtIndex:0];
  }

  else
  {
    v20 = &stru_28599CA78;
  }

  if (-[__CFString length](v20, "length") && [pathComponents count] >= 2)
  {
    v18 = [(__CFString *)v18 substringFromIndex:[(__CFString *)v20 length]+ 1];
    if (!source)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if ([(__CFString *)v20 length])
    {
      v18 = &stru_28599CA78;
    }

    if (!source)
    {
      goto LABEL_24;
    }
  }

  v21 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"ThemeBitSource", [MEMORY[0x277CCAC30] predicateWithFormat:@"path == %@", v20], 0);
  if ([v21 count] == 1 && (objc_msgSend(v21, "objectAtIndex:", 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v22 = [v21 objectAtIndex:0];
  }

  else
  {
    v22 = 0;
  }

  *source = v22;
LABEL_24:
  if (category)
  {
    *category = v18;
  }

LABEL_26:
  if (filename)
  {
    *filename = lastPathComponent;
  }

  if (factor)
  {
    *factor = v14;
  }
}

+ (id)_sharedDocumentList
{
  if (_sharedDocumentList_pred != -1)
  {
    +[CoreThemeDocument _sharedDocumentList];
  }

  return sDocList;
}

void *__40__CoreThemeDocument__sharedDocumentList__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:2];
  sDocList = result;
  return result;
}

+ (void)_addThemeDocument:(id)document
{
  [self _sharedDocumentList];
  v4 = sDocList;

  [v4 addObject:document];
}

- (CoreThemeDocument)init
{
  v6.receiver = self;
  v6.super_class = CoreThemeDocument;
  v2 = [(CoreThemeDocument *)&v6 init];
  if (v2)
  {
    v2->constantArrayControllers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->cachedConstantArrays = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_cachedAppearances = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_cachedUnknownAppearanceIds = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->_cachedLocalizations = objc_alloc_init(MEMORY[0x277CBEB18]);
    v2->_cachedUnknownLocalizationIds = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->_cachedModelAssets = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(CoreThemeDocument *)v2 primeArrayControllers];
    v3 = [TDThreadMOCOrganizer alloc];
    v2->m_mocOrganizer = -[TDThreadMOCOrganizer initWithDocument:mainThread:](v3, "initWithDocument:mainThread:", v2, [MEMORY[0x277CCACC8] currentThread]);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel_changedObjectsNotification_ name:*MEMORY[0x277CBE1B8] object:0];
    -[CoreThemeDocument setTargetPlatform:](v2, "setTargetPlatform:", [objc_opt_class() defaultTargetPlatform]);
    v2->_majorVersion = 0x7FFFFFFF;
    v2->_minorVersion = 0x7FFFFFFF;
    v2->_patchVersion = 0x7FFFFFFF;
  }

  return v2;
}

- (CoreThemeDocument)initWithType:(id)type targetPlatform:(int64_t)platform error:(id *)error
{
  v11.receiver = self;
  v11.super_class = CoreThemeDocument;
  v7 = [(TDPersistentDocument *)&v11 initWithType:type error:error];
  v8 = v7;
  if (v7)
  {
    v7->_majorVersion = 0x7FFFFFFF;
    v7->_minorVersion = 0x7FFFFFFF;
    v7->_patchVersion = 0x7FFFFFFF;
    v9 = [(CoreThemeDocument *)v7 buildModelError:error];
    [(CoreThemeDocument *)v8 setTargetPlatform:platform];
    if (!v9)
    {

      return 0;
    }
  }

  return v8;
}

- (CoreThemeDocument)initWithType:(id)type error:(id *)error
{
  v8.receiver = self;
  v8.super_class = CoreThemeDocument;
  v5 = [(TDPersistentDocument *)&v8 initWithType:type error:?];
  v6 = v5;
  if (v5)
  {
    v5->_majorVersion = 0x7FFFFFFF;
    v5->_minorVersion = 0x7FFFFFFF;
    v5->_patchVersion = 0x7FFFFFFF;
    if (![(CoreThemeDocument *)v5 buildModelError:error])
    {

      return 0;
    }
  }

  return v6;
}

- (CoreThemeDocument)initWithContentsOfURL:(id)l ofType:(id)type error:(id *)error
{
  v9.receiver = self;
  v9.super_class = CoreThemeDocument;
  v6 = [(TDPersistentDocument *)&v9 initWithContentsOfURL:l ofType:type error:?];
  v7 = v6;
  if (v6)
  {
    v6->_majorVersion = 0x7FFFFFFF;
    v6->_minorVersion = 0x7FFFFFFF;
    v6->_patchVersion = 0x7FFFFFFF;
    if (![(CoreThemeDocument *)v6 buildModelError:error])
    {

      return 0;
    }
  }

  return v7;
}

+ (id)createConfiguredDocumentAtURL:(id)l error:(id *)error
{
  defaultTargetPlatform = [objc_opt_class() defaultTargetPlatform];

  return [self createConfiguredDocumentAtURL:l targetPlatform:defaultTargetPlatform error:error];
}

+ (id)createConfiguredDocumentAtURL:(id)l targetPlatform:(int64_t)platform error:(id *)error
{
  v8 = [self alloc];
  result = [v8 initWithType:CoreThemeDocumentFileType targetPlatform:platform error:error];
  if (result)
  {
    v10 = result;
    [result setFileURL:l];
    if ([objc_msgSend(v10 "managedObjectContext")])
    {
      [v10 _configureAfterFirstSave];
      if ([objc_msgSend(v10 "managedObjectContext")])
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

+ (int64_t)dataModelVersionFromMetadata:(id)metadata
{
  v4 = [metadata objectForKey:@"CoreThemeDefinitionDataModelKey"];
  v5 = [metadata objectForKey:@"NSProThemeDefinitionDataModelKey"];
  if (v4)
  {
    v5 = v4;
  }

  return [v5 integerValue];
}

+ (id)migrateDocumentAtURL:(id)l ofType:(id)type error:(id *)error
{
  v8 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:*MEMORY[0x277CBE2E8] URL:l options:0 error:error];
  if (!v8)
  {
    return 0;
  }

  v9 = -[CoreThemeDefinitionMigrator initWithURL:oldVersion:newVersion:]([CoreThemeDefinitionMigrator alloc], "initWithURL:oldVersion:newVersion:", l, [self dataModelVersionFromMetadata:v8], objc_msgSend(self, "dataModelVersion"));
  if (!v9)
  {
    if (error)
    {
      v12 = 0;
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unrecognized document format, migration failed", @"reason"}];
      return v12;
    }

    return 0;
  }

  v10 = v9;
  [self presentMigrationProgress];
  if ([(CoreThemeDefinitionMigrator *)v10 migrateWithError:error])
  {
    temporaryMigrationPath = [(CoreThemeDefinitionMigrator *)v10 temporaryMigrationPath];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:temporaryMigrationPath];
    NSLog(&cfstr_CreatedTempora.isa, temporaryMigrationPath);
  }

  else
  {
    v12 = 0;
  }

  [self closeMigrationProgress];
  return v12;
}

- (void)dealloc
{
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  keyFormat = self->_keyFormat;
  if (keyFormat)
  {
    free(keyFormat);
  }

  [(CoreThemeDocument *)self setPathToRepresentedDocument:0];

  +[TDVectorGlyphReader clearInstanceCache];
  [(NSMutableArray *)self->_tempFilesToCleanup enumerateObjectsUsingBlock:&__block_literal_global_207];

  v4.receiver = self;
  v4.super_class = CoreThemeDocument;
  [(TDPersistentDocument *)&v4 dealloc];
}

uint64_t __28__CoreThemeDocument_dealloc__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCAA00] defaultManager];

  return [v3 removeItemAtURL:a2 error:0];
}

- (id)updateToEmbeddedSchemaVersion2AndReturnAlertString:(id *)string
{
  v34 = *MEMORY[0x277D85DE8];
  _namedTextEffectPartDefinition = [(CoreThemeDocument *)self _namedTextEffectPartDefinition];
  _namedImageEffectPartDefinition = [(CoreThemeDocument *)self _namedImageEffectPartDefinition];
  v5 = [(CoreThemeDocument *)self partWithIdentifier:178];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v23 = _namedTextEffectPartDefinition;
  selfCopy = self;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"EffectStyleProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"partDefinition = %@", _namedTextEffectPartDefinition], 0);
  v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        [objc_msgSend(v11 "baseKeySpec")];
        [v11 setPartDefinition:_namedImageEffectPartDefinition];
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        renditions = [v11 renditions];
        v13 = [renditions countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v25;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v25 != v15)
              {
                objc_enumerationMutation(renditions);
              }

              [objc_msgSend(*(*(&v24 + 1) + 8 * j) "keySpec")];
            }

            v14 = [renditions countByEnumeratingWithState:&v24 objects:v32 count:16];
          }

          while (v14);
        }

        v17 = -[CoreThemeDocument createEffectStyleProductionForPartDefinition:withNameIdentifier:](selfCopy, "createEffectStyleProductionForPartDefinition:withNameIdentifier:", v23, [objc_msgSend(v11 "name")]);
        [array addObject:{objc_msgSend(objc_msgSend(v11, "name"), "name")}];
        [array2 addObject:v17];
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v8);
  }

  return @"Named Effects now support both high quality and simplified text variants. Your original effect definitions have been classified as 'High Quality Image Effects' and new 'Simplified Text Effect' effect definitions have been created with the same name, using default values. Adjust your effect definitions accordingly.";
}

- (id)managedObjectModel
{
  result = self->m_managedObjectModel;
  if (!result)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CoreThemeDefinition"];
    v5 = objc_alloc(MEMORY[0x277CBE450]);
    result = [v5 initWithContentsOfURL:{objc_msgSend(MEMORY[0x277CBEBC0], "fileURLWithPath:", objc_msgSend(v4, "pathForResource:ofType:", +[CoreThemeDocument dataModelNameForVersion:](CoreThemeDocument, "dataModelNameForVersion:", +[CoreThemeDocument dataModelVersion](CoreThemeDocument, "dataModelVersion")), @"mom"}];
    self->m_managedObjectModel = result;
    if (!result)
    {
      NSLog(&cfstr_Corethemedocum_1.isa, [v4 pathForResource:+[CoreThemeDocument dataModelNameForVersion:](CoreThemeDocument ofType:{"dataModelNameForVersion:", +[CoreThemeDocument dataModelVersion](CoreThemeDocument, "dataModelVersion")), @"mom"}]);
      return self->m_managedObjectModel;
    }
  }

  return result;
}

- (id)historian
{
  result = self->m_historian;
  if (!result)
  {
    result = [[TDHistorian alloc] initWithDocument:self];
    self->m_historian = result;
  }

  return result;
}

- (id)_cachedConstantsForEntity:(id)entity
{
  v5 = [(NSMutableDictionary *)self->cachedConstantArrays objectForKey:?];
  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1];
    v5 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self, "allObjectsForEntity:withSortDescriptors:", entity, [MEMORY[0x277CBEA60] arrayWithObject:v6]);

    if (v5)
    {
      [(NSMutableDictionary *)self->cachedConstantArrays setObject:v5 forKey:entity];
    }
  }

  return v5;
}

- (id)themeConstant:(id)constant withIdentifier:(int64_t)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  if (identifier > 0xFFFFFFFE)
  {
    return 0;
  }

  identifierCopy = identifier;
  v7 = [(CoreThemeDocument *)self _cachedConstantsForEntity:?];
  if (![v7 count])
  {
    v8 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:1];
    v7 = -[CoreThemeDocument allObjectsForEntity:withSortDescriptors:](self, "allObjectsForEntity:withSortDescriptors:", constant, [MEMORY[0x277CBEA60] arrayWithObject:v8]);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = *v16;
LABEL_6:
  v12 = 0;
  while (1)
  {
    if (*v16 != v11)
    {
      objc_enumerationMutation(v7);
    }

    v13 = *(*(&v15 + 1) + 8 * v12);
    if ([v13 identifier] == identifierCopy)
    {
      return v13;
    }

    if (v10 == ++v12)
    {
      v10 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      v13 = 0;
      if (v10)
      {
        goto LABEL_6;
      }

      return v13;
    }
  }
}

- (id)effectParameterValueWithType:(unsigned int)type inComponent:(id)component createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v7 = *&type;
  v28 = *MEMORY[0x277D85DE8];
  parameters = [component parameters];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [parameters countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v24 != v12)
      {
        objc_enumerationMutation(parameters);
      }

      v14 = *(*(&v23 + 1) + 8 * v13);
      if ([objc_msgSend(v14 "parameterType")] == v7)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [parameters countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  if (!v14 && neededCopy)
  {
    v14 = [(CoreThemeDocument *)self newObjectForEntity:@"EffectParameterValue"];
    [v14 setComponent:component];
    v15 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"EffectParameterType", [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier == %d", v7], 0);
    if ([v15 count])
    {
      [v14 setParameterType:{objc_msgSend(v15, "objectAtIndex:", 0)}];
      v16 = v7 - 2;
      if ((v7 - 2) > 6)
      {
        v18 = &unk_2859AC500;
        v17 = &unk_2859AC488;
        v19 = &unk_2859AC488;
      }

      else
      {
        v17 = *(&off_278EBB470 + v16);
        v18 = qword_278EBB4A8[v16];
        v19 = *(&off_278EBB4E0 + v16);
      }

      [v14 setIntValue:v17];
      [v14 setColorValue:&unk_2859AC488];
      [v14 setFloatValue:v18];
      [v14 setAngleValue:v19];
      v20 = [objc_msgSend(component "effectType")];
      if (v7 == 2 && v20 == 1397715043)
      {
        [v14 setFloatValue:&unk_2859AC520];
      }

      v21 = [objc_msgSend(component "effectType")];
      if (v7 == 2 && v21 == 1180787813)
      {
        [v14 setFloatValue:&unk_2859AC520];
      }
    }
  }

  return v14;
}

- (id)effectComponentWithType:(unsigned int)type inRendition:(id)rendition createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v7 = *&type;
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  components = [rendition components];
  v10 = [components countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v26 != v12)
      {
        objc_enumerationMutation(components);
      }

      v14 = *(*(&v25 + 1) + 8 * v13);
      if ([objc_msgSend(v14 "effectType")] == v7)
      {
        break;
      }

      if (v11 == ++v13)
      {
        v11 = [components countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v14 = 0;
  }

  if (!v14 && neededCopy)
  {
    v14 = [(CoreThemeDocument *)self newObjectForEntity:@"EffectComponent"];
    [v14 setEffectType:{-[CoreThemeDocument effectTypeWithIdentifier:](self, "effectTypeWithIdentifier:", v7)}];
    v15 = [MEMORY[0x277D026D8] requiredEffectParametersForEffectType:v7];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          -[CoreThemeDocument effectParameterValueWithType:inComponent:createIfNeeded:](self, "effectParameterValueWithType:inComponent:createIfNeeded:", [*(*(&v21 + 1) + 8 * i) unsignedIntValue], v14, 1);
        }

        v17 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v17);
    }

    [v14 setRendition:rendition];
  }

  return v14;
}

- (id)constantWithName:(id)name forIdentifier:(int64_t)identifier
{
  v6 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", name, [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %ld", identifier], 0);
  if ([v6 count])
  {

    return [v6 objectAtIndex:0];
  }

  else
  {
    v8 = [(CoreThemeDocument *)self newObjectForEntity:name];

    return v8;
  }
}

- (id)psdImageRefForAsset:(id)asset
{
  v3 = [-[CoreThemeDocument rootPathForProductionData](self "rootPathForProductionData")];
  if (![objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")])
  {
    return 0;
  }

  v4 = [objc_alloc(MEMORY[0x277D026C0]) initWithPath:v3];

  return v4;
}

- (id)appearanceWithIdentifier:(int64_t)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  if (-[NSMutableSet containsObject:](self->_cachedUnknownAppearanceIds, "containsObject:", [MEMORY[0x277CCABB0] numberWithInteger:?]))
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedAppearances = self->_cachedAppearances;
  v7 = [(NSMutableArray *)cachedAppearances countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(cachedAppearances);
      }

      firstObject = *(*(&v13 + 1) + 8 * v10);
      if ([firstObject identifier] == identifier)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)cachedAppearances countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    if (firstObject)
    {
      return firstObject;
    }
  }

LABEL_13:
  v11 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"Appearance", [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %d", identifier], 0);
  if ([v11 count] >= 2)
  {
    [CoreThemeDocument appearanceWithIdentifier:];
  }

  firstObject = [v11 firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_cachedAppearances addObject:firstObject];
  }

  return firstObject;
}

- (id)appearanceWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v9 = [(CoreThemeDocument *)self appearanceWithIdentifier:?];
  if (v9)
  {
    v10 = v9;
    if (!name)
    {
      return v10;
    }
  }

  else if (!name || !neededCopy || (v10 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"Appearance"), [v10 setIdentifier:identifier], objc_msgSend(v10, "setName:", name), -[NSMutableArray addObject:](self->_cachedAppearances, "addObject:", v10), v10, !v10))
  {
    -[NSMutableSet addObject:](self->_cachedUnknownAppearanceIds, "addObject:", [MEMORY[0x277CCABB0] numberWithInteger:identifier]);
    return 0;
  }

  if (([objc_msgSend(v10 "name")] & 1) == 0)
  {
    [CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:];
  }

  return v10;
}

- (id)localizationWithIdentifier:(int64_t)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  if (-[NSMutableSet containsObject:](self->_cachedUnknownLocalizationIds, "containsObject:", [MEMORY[0x277CCABB0] numberWithInteger:?]))
  {
    return 0;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedLocalizations = self->_cachedLocalizations;
  v7 = [(NSMutableArray *)cachedLocalizations countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
LABEL_5:
    v10 = 0;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(cachedLocalizations);
      }

      firstObject = *(*(&v13 + 1) + 8 * v10);
      if ([firstObject identifier] == identifier)
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)cachedLocalizations countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v8)
        {
          goto LABEL_5;
        }

        goto LABEL_13;
      }
    }

    if (firstObject)
    {
      return firstObject;
    }
  }

LABEL_13:
  v11 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"Localization", [MEMORY[0x277CCAC30] predicateWithFormat:@"identifier = %d", identifier], 0);
  if ([v11 count] >= 2)
  {
    [CoreThemeDocument localizationWithIdentifier:];
  }

  firstObject = [v11 firstObject];
  if (firstObject)
  {
    [(NSMutableArray *)self->_cachedLocalizations addObject:firstObject];
  }

  return firstObject;
}

- (id)localizationWithIdentifier:(int64_t)identifier name:(id)name createIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  v10 = [(CoreThemeDocument *)self localizationWithIdentifier:?];
  if (v10)
  {
    v11 = v10;
    if (!name)
    {
      return v11;
    }
  }

  else if (!name || !neededCopy || (v11 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"Localization"), [v11 setIdentifier:identifier], objc_msgSend(v11, "setName:", name), -[NSMutableArray addObject:](self->_cachedLocalizations, "addObject:", v11), v11, !v11))
  {
    -[NSMutableSet addObject:](self->_cachedUnknownLocalizationIds, "addObject:", [MEMORY[0x277CCABB0] numberWithInteger:identifier]);
    return 0;
  }

  if (([objc_msgSend(v11 "name")] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
  }

  return v11;
}

- (id)mappingForPhotoshopLayerIndex:(int64_t)index themeDrawingLayerIdentifier:(int64_t)identifier
{
  if (!index)
  {
    return 0;
  }

  v7 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"LayerMapping", [MEMORY[0x277CCAC30] predicateWithFormat:@"photoshopLayerIndex = %d AND themeDrawingLayer.identifier = %d", index, identifier], 0);
  if (![v7 count])
  {
    v10 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"ThemeDrawingLayer" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"identifier = %d", identifier), 0), "objectAtIndex:", 0}];
    v9 = [(CoreThemeDocument *)self newObjectForEntity:@"LayerMapping"];
    [v9 setPhotoshopLayerIndex:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", index)}];
    [v9 setThemeDrawingLayer:v10];
    return v9;
  }

  return [v7 objectAtIndex:0];
}

- (id)allObjectsForEntity:(id)entity withSortDescriptors:(id)descriptors
{
  v6 = 0;
  v4 = [(CoreThemeDocument *)self allObjectsForEntity:entity withSortDescriptors:descriptors error:&v6];
  if (v6)
  {
    [CoreThemeDocument allObjectsForEntity:withSortDescriptors:];
  }

  return v4;
}

- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors
{
  v7 = 0;
  v5 = [(CoreThemeDocument *)self objectsForEntity:entity withPredicate:predicate sortDescriptors:descriptors error:&v7];
  if (v7)
  {
    [CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:];
  }

  return v5;
}

- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors error:(id *)error
{
  v11 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];

  return [(CoreThemeDocument *)self objectsForEntity:entity withPredicate:predicate sortDescriptors:descriptors withContext:v11 error:error];
}

- (id)objectsForEntity:(id)entity withPredicate:(id)predicate sortDescriptors:(id)descriptors withContext:(id)context error:(id *)error
{
  v13 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v13 setEntity:{objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self, "managedObjectModel"), "entitiesByName"), "objectForKey:", entity)}];
  if (predicate)
  {
    [v13 setPredicate:predicate];
  }

  if (descriptors)
  {
    [v13 setSortDescriptors:descriptors];
  }

  v14 = [context executeFetchRequest:v13 error:error];

  return v14;
}

- (unint64_t)countForEntity:(id)entity withPredicate:(id)predicate
{
  v7 = objc_alloc_init(MEMORY[0x277CBE428]);
  [v7 setEntity:{objc_msgSend(objc_msgSend(-[CoreThemeDocument managedObjectModel](self, "managedObjectModel"), "entitiesByName"), "objectForKey:", entity)}];
  if (predicate)
  {
    [v7 setPredicate:predicate];
  }

  v10 = 0;
  v8 = [objc_msgSend(-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];

  return v8;
}

- (id)newObjectForEntity:(id)entity
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument newObjectForEntity:];
  }

  v6 = [objc_msgSend(-[CoreThemeDocument managedObjectModel](self "managedObjectModel")];
  v7 = [objc_alloc(NSClassFromString(objc_msgSend(v6 "managedObjectClassName")))];
  if (!v7)
  {
    [CoreThemeDocument newObjectForEntity:];
  }

  return v7;
}

- (void)deleteObjects:(id)objects
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument deleteObjects:];
  }

  managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];
  objectEnumerator = [objects objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [managedObjectContext deleteObject:nextObject2];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }
}

- (void)deleteObject:(id)object
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument deleteObject:];
  }

  managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];

  [managedObjectContext deleteObject:object];
}

- (void)deleteProduction:(id)production shouldDeleteAssetFiles:(BOOL)files
{
  [production deleteRenditionsInDocument:self shouldDeleteAssetFiles:files];

  [(CoreThemeDocument *)self deleteObject:production];
}

- (void)deleteProductions:(id)productions shouldDeleteAssetFiles:(BOOL)files
{
  filesCopy = files;
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [productions countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(productions);
        }

        [(CoreThemeDocument *)self deleteProduction:*(*(&v11 + 1) + 8 * v10++) shouldDeleteAssetFiles:filesCopy];
      }

      while (v8 != v10);
      v8 = [productions countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)minimalDisplayNameForThemeConstant:(id)constant
{
  displayName = [constant displayName];
  identifier = [constant identifier];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d-", identifier];
  v7 = [displayName stringByReplacingOccurrencesOfString:@" " withString:&stru_28599CA78];

  return [v7 stringByReplacingOccurrencesOfString:v6 withString:&stru_28599CA78];
}

- (id)folderNameFromRenditionKey:(id)key forPartDefinition:(id)definition
{
  partFeatures = [definition partFeatures];
  element = [definition element];
  v9 = [objc_msgSend(element "displayName")];
  if ([objc_msgSend(element "parts")] < 2)
  {
    v10 = 0;
    if ((partFeatures & 0x200) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = [objc_msgSend(objc_msgSend(definition "displayName")];
    if ((partFeatures & 0x200) != 0)
    {
LABEL_3:
      v11 = 0;
      goto LABEL_6;
    }
  }

  v11 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument sizeWithIdentifier:](self, "sizeWithIdentifier:", [key themeSize]));
LABEL_6:
  if ((partFeatures & 0x38) != 0)
  {
    v12 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", [key themeDirection]));
  }

  else
  {
    v12 = 0;
  }

  if ((~partFeatures & 0x10004) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument presentationStateWithIdentifier:](self, "presentationStateWithIdentifier:", [key themePresentationState]));
  }

  themeScale = [key themeScale];
  if (v10)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v10];
  }

  if (v11)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v11];
  }

  if (v12)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v12];
  }

  if (v13)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v13];
  }

  if (themeScale != 2)
  {
    return v9;
  }

  return [v9 stringByAppendingString:@"@2x"];
}

- (id)defaultPNGFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition
{
  v4 = [(CoreThemeDocument *)self defaultBaseFileNameForSchemaRendition:rendition withPartDefinition:definition];

  return [v4 stringByAppendingPathExtension:@"png"];
}

- (id)defaultBaseFileNameForSchemaRendition:(id)rendition withPartDefinition:(id)definition
{
  partFeatures = [definition partFeatures];
  v8 = [objc_alloc(MEMORY[0x277D026C8]) initWithKeyList:{objc_msgSend(rendition, "key")}];
  v9 = [(CoreThemeDocument *)self folderNameFromRenditionKey:v8 forPartDefinition:definition];
  themeScale = [v8 themeScale];
  if (themeScale == 2)
  {
    v11 = @"@2x";
    v9 = [v9 stringByReplacingOccurrencesOfString:@"@2x" withString:&stru_28599CA78];
  }

  else
  {
    v11 = 0;
  }

  if ((*&partFeatures & 0x10004) == 4)
  {
    v12 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument presentationStateWithIdentifier:](self, "presentationStateWithIdentifier:", [v8 themePresentationState]));
  }

  else
  {
    v12 = 0;
  }

  if ([v8 themeLayer] >= 1)
  {
    v13 = -[CoreThemeDocument drawingLayerWithIdentifier:](self, "drawingLayerWithIdentifier:", [v8 themeLayer]);
    goto LABEL_11;
  }

  if ((partFeatures & 0x1000) == 0)
  {
    v13 = -[CoreThemeDocument stateWithIdentifier:](self, "stateWithIdentifier:", [v8 themeState]);
LABEL_11:
    v14 = [(CoreThemeDocument *)self minimalDisplayNameForThemeConstant:v13];
    if ((partFeatures & 0x4000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v14 = 0;
  if ((partFeatures & 0x4000) == 0)
  {
LABEL_12:
    if (partFeatures)
    {
      v15 = -[CoreThemeDocument minimalDisplayNameForThemeConstant:](self, "minimalDisplayNameForThemeConstant:", -[CoreThemeDocument valueWithIdentifier:](self, "valueWithIdentifier:", [v8 themeValue]));
      goto LABEL_17;
    }

LABEL_19:
    v18 = 0;
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_15:
  cuiPartDefinition = [definition cuiPartDefinition];
  themeDimension1 = [v8 themeDimension1];
  if (themeDimension1 >= [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self, "targetPlatform")), "dimensionDefinitionCountForPartDefinition:", cuiPartDefinition}])
  {
    goto LABEL_19;
  }

  v15 = [objc_msgSend(MEMORY[0x277CCACA8] stringWithUTF8String:{*(cuiPartDefinition + 32 * themeDimension1 + 64)), "stringByReplacingOccurrencesOfString:withString:", @" ", &stru_28599CA78}];
LABEL_17:
  v18 = v15;
  if (v12)
  {
LABEL_20:
    v9 = [v9 stringByAppendingFormat:@"_%@", v12];
  }

LABEL_21:
  if (v14)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v14];
  }

  if (v18)
  {
    v9 = [v9 stringByAppendingFormat:@"_%@", v18];
  }

  if (themeScale == 2)
  {
    v9 = [v9 stringByAppendingFormat:@"%@", v11];
  }

  return v9;
}

- (id)defaultPathComponentsForPartDefinition:(id)definition
{
  v4 = [objc_msgSend(objc_msgSend(definition "element")];
  v5 = [objc_msgSend(definition "element")];

  return [v4 stringByAppendingPathComponent:v5];
}

- (id)createReferencePNGForSchemaRendition:(id)rendition withPartDefinition:(id)definition atLocation:(id)location error:(id *)error
{
  v10 = [(CoreThemeDocument *)self defaultPNGFileNameForSchemaRendition:rendition withPartDefinition:definition];
  if (location)
  {
    v11 = [location URLByAppendingPathComponent:v10];
    if (([objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")] & 1) == 0)
    {
      [(CoreThemeDocument *)self assetManagementDelegate];
      if (objc_opt_respondsToSelector())
      {
        [(TDAssetManagementDelegate *)[(CoreThemeDocument *)self assetManagementDelegate] willCreateAssetAtURL:v11];
      }

      v12 = CGImageDestinationCreateWithURL(v11, @"public.png", 1uLL, 0);
      CGImageDestinationAddImage(v12, [objc_msgSend(rendition "referenceImage")], 0);
      v13 = CGImageDestinationFinalize(v12);
      CFRelease(v12);
      if (!v13)
      {
        v10 = 0;
        if (error)
        {
          *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Unable to write image", *MEMORY[0x277CCA450])}];
        }
      }
    }
  }

  return v10;
}

- (id)_themeBitSource:(id *)source
{
  v4 = [(CoreThemeDocument *)self allObjectsForEntity:@"ThemeBitSource" withSortDescriptors:0];
  if ([v4 count])
  {
    if ([v4 count] >= 2)
    {
      NSLog(&cfstr_ExpectingOnlyO.isa, [v4 count]);
    }

    return [v4 objectAtIndex:0];
  }

  else
  {
    if (source)
    {
      *source = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA050] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"No ThemeBitSource found", *MEMORY[0x277CCA450])}];
    }

    return 0;
  }
}

- (id)_themeBitSourceForReferencedFilesAtURLs:(id)ls createIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __79__CoreThemeDocument__themeBitSourceForReferencedFilesAtURLs_createIfNecessary___block_invoke;
  v19[3] = &unk_278EBB058;
  v19[4] = v7;
  [ls enumerateObjectsUsingBlock:v19];
  if ([objc_msgSend(objc_msgSend(v7 "lastObject")])
  {
    [v7 removeLastObject];
  }

  pathComponents = [(NSURL *)[(TDPersistentDocument *)self fileURL] pathComponents];
  UncommonItemInArrays = indexOfFirstUncommonItemInArrays(v7, pathComponents);
  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = [(NSArray *)pathComponents count];
  v12 = [v7 count];
  if (UncommonItemInArrays != 0x7FFFFFFFFFFFFFFFLL && UncommonItemInArrays < v11)
  {
    v13 = v12;
    if (UncommonItemInArrays < v11 - 1)
    {
      v14 = ~UncommonItemInArrays + v11;
      do
      {
        [v10 addObject:@"../"];
        --v14;
      }

      while (v14);
    }

    if (UncommonItemInArrays < v13)
    {
      do
      {
        [v10 addObject:{objc_msgSend(v7, "objectAtIndex:", UncommonItemInArrays++)}];
      }

      while (v13 != UncommonItemInArrays);
    }
  }

  v15 = [MEMORY[0x277CCACA8] pathWithComponents:v10];
  v16 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:error:](self, "objectsForEntity:withPredicate:sortDescriptors:error:", @"ThemeBitSource", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == %@", @"path", v15], 0, 0);
  if ([v16 count])
  {
    return [v16 objectAtIndex:0];
  }

  if (!necessaryCopy)
  {
    return 0;
  }

  v17 = -[TDThemeBitSource initWithEntity:insertIntoManagedObjectContext:]([TDThemeBitSource alloc], "initWithEntity:insertIntoManagedObjectContext:", [objc_msgSend(-[CoreThemeDocument managedObjectModel](self "managedObjectModel")], -[TDPersistentDocument managedObjectContext](self, "managedObjectContext"));
  [(TDThemeBitSource *)v17 setPath:v15];
  return v17;
}

_BYTE *__79__CoreThemeDocument__themeBitSourceForReferencedFilesAtURLs_createIfNecessary___block_invoke(_BYTE *result, void *a2, uint64_t a3)
{
  if (*MEMORY[0x277CBEEE8] != a2)
  {
    v4 = result;
    v5 = [a2 pathComponents];
    v6 = *(v4 + 4);
    if (a3)
    {
      result = indexOfFirstUncommonItemInArrays(v6, v5);
      if (result != 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = result;
        v9 = *(v4 + 4);
        v10 = [v9 count] - result;

        return [v9 removeObjectsInRange:{v8, v10}];
      }
    }

    else
    {
      [v6 addObjectsFromArray:v5];
      v7 = *(v4 + 4);

      return [v7 removeLastObject];
    }
  }

  return result;
}

- (BOOL)createPSDReferenceArtworkForRenditionGroup:(id)group atDestination:(id)destination error:(id *)error
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  [(CoreThemeDocument *)self assetManagementDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(TDAssetManagementDelegate *)[(CoreThemeDocument *)self assetManagementDelegate] willCreateAssetAtURL:destination];
  }

  if (([defaultManager fileExistsAtPath:{objc_msgSend(destination, "path")}] & 1) == 0)
  {
    if ([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")])
    {
      mutablePSDImageRef = [group mutablePSDImageRef];
    }

    else
    {
      mutablePSDImageRef = [group mutablePSDImageRefColumnStyle];
    }

    [mutablePSDImageRef saveToURL:destination completionHandler:0];
  }

  return 1;
}

- (id)createProductionWithRenditionGroup:(id)group forPartDefinition:(id)definition artworkFormat:(id)format nameElement:(id)element shouldReplaceExisting:(BOOL)existing error:(id *)error
{
  existingCopy = existing;
  v225 = *MEMORY[0x277D85DE8];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  selfCopy = self;
  v11 = [(CoreThemeDocument *)self allObjectsForEntity:@"ElementProduction" withSortDescriptors:0];
  groupCopy = group;
  [objc_msgSend(group "baseKey")];
  v214 = 0u;
  v215 = 0u;
  v216 = 0u;
  v217 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v214 objects:v224 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v215;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v215 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v214 + 1) + 8 * i);
        [objc_msgSend(v17 "baseKeySpec")];
        CUISystemThemeRenditionKeyFormat();
        if (CUIEqualRenditionKeys())
        {
          v18 = [objc_msgSend(objc_msgSend(objc_msgSend(v17 "partDefinition")];
          v19 = v18;
          if (v18)
          {
            v20 = v17;
          }

          else
          {
            v20 = v14;
          }

          if (v18)
          {
            v21 = !existingCopy;
          }

          else
          {
            v21 = 1;
          }

          if (v21)
          {
            v14 = v20;
            if (v18)
            {
              goto LABEL_22;
            }
          }

          else
          {
            [v17 deleteRenditionsInDocument:selfCopy shouldDeleteAssetFiles:1];
            [(CoreThemeDocument *)selfCopy deleteObject:v17];
            if (v19)
            {
              goto LABEL_22;
            }
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v214 objects:v224 count:16];
    }

    while (v13);
  }

  else
  {
    v14 = 0;
  }

LABEL_22:
  definitionCopy3 = definition;
  v23 = selfCopy;
  v24 = -[CoreThemeDocument allowMultipleInstancesOfElementID:](selfCopy, "allowMultipleInstancesOfElementID:", [definition elementID]);
  if (v14 && !v24)
  {
    return v14;
  }

  if ([format isEqualToString:CoreThemeArtworkFormatPNG])
  {
    v14 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"SchemaElementProduction"];
    [v14 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
    v25 = groupCopy;
    v26 = [objc_msgSend(groupCopy "renditions")];
    [v14 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v26, "type"))}];
    [v14 setRenditionSubtype:{-[CoreThemeDocument renditionSubtypeWithIdentifier:](selfCopy, "renditionSubtypeWithIdentifier:", objc_msgSend(v26, "subtype"))}];
    slices = [v26 slices];
    if ([slices count])
    {
      v28 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
      v210 = 0u;
      v211 = 0u;
      v212 = 0u;
      v213 = 0u;
      v29 = [slices countByEnumeratingWithState:&v210 objects:v223 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v211;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v211 != v31)
            {
              objc_enumerationMutation(slices);
            }

            [*(*(&v210 + 1) + 8 * j) rectValue];
            v34 = v33;
            v36 = v35;
            v38 = v37;
            v40 = v39;
            v41 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"Slice"];
            [v41 setSliceRect:{v34, v36, v38, v40}];
            [v28 addObject:v41];
          }

          v30 = [slices countByEnumeratingWithState:&v210 objects:v223 count:16];
        }

        while (v30);
      }

      [v14 setSlices:v28];
      v25 = groupCopy;
      definitionCopy3 = definition;
    }

    v42 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
    [v42 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(v25 withDocument:{"baseKey"), "keyList"), selfCopy}];
    [v14 setBaseKeySpec:v42];

    [v14 setPartDefinition:definitionCopy3];
    obja = [v25 renditions];
    v43 = [(CoreThemeDocument *)selfCopy defaultPathComponentsForPartDefinition:definitionCopy3];
    v44 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](selfCopy, "rootPathForProductionData")}];
    v45 = -[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](selfCopy, "folderNameFromRenditionKey:forPartDefinition:", [v25 baseKey], definitionCopy3);
    v46 = [v43 stringByAppendingPathComponent:v45];
    [v14 setFolderName:v45];
    [v14 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"From: %@", v45)}];
    v47 = [(CoreThemeDocument *)selfCopy _themeBitSource:error];
    if (v47)
    {
      v48 = v47;
      v49 = [objc_msgSend(v44 URLByAppendingPathComponent:{objc_msgSend(v47, "name")), "URLByAppendingPathComponent:", v46}];
      if ([defaultManager fileExistsAtPath:{objc_msgSend(v49, "path")}] & 1) != 0 || (v209 = 0, (objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v49, 1, 0, &v209)))
      {
        v171 = [objc_msgSend(v25 "baseKey")];
        v205 = 0u;
        v206 = 0u;
        v207 = 0u;
        v208 = 0u;
        v50 = [obja countByEnumeratingWithState:&v205 objects:v222 count:16];
        if (v50)
        {
          v51 = v50;
          v165 = v48;
          v168 = v46;
          v187 = v14;
          v52 = *v206;
          do
          {
            for (k = 0; k != v51; ++k)
            {
              if (*v206 != v52)
              {
                objc_enumerationMutation(obja);
              }

              v54 = *(*(&v205 + 1) + 8 * k);
              v209 = 0;
              v55 = [(CoreThemeDocument *)v23 createReferencePNGForSchemaRendition:v54 withPartDefinition:definitionCopy3 atLocation:v49 error:&v209];
              if (v209)
              {
                v56 = [objc_msgSend(v49 URLByAppendingPathComponent:{v55), "path"}];
                NSLog(&cfstr_UnableToCreate.isa, v56, [v209 localizedDescription]);
              }

              else
              {
                v57 = [(CoreThemeDocument *)v23 newObjectForEntity:@"PNGAsset"];
                [v57 setCategory:v168];
                [v57 setName:v55];
                [v57 setSource:v165];
                [v57 setScaleFactor:v171];
                v58 = [(CoreThemeDocument *)v23 newObjectForEntity:@"SchemaRenditionSpec"];
                [objc_msgSend(v58 "keySpec")];
                -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](v23, "_normalizeRenditionKeySpec:forSchemaRendition:", [v58 keySpec], v54);
                [v58 setAsset:v57];
                [v58 setProduction:v187];
                [v58 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](v23, "renditionTypeWithIdentifier:", objc_msgSend(v54, "type"))}];
                [(CoreThemeDocument *)v23 assetManagementDelegate];
                if (objc_opt_respondsToSelector())
                {
                  -[TDAssetManagementDelegate didCreateAsset:atURL:](-[CoreThemeDocument assetManagementDelegate](selfCopy, "assetManagementDelegate"), "didCreateAsset:atURL:", v57, [v49 URLByAppendingPathComponent:v55]);
                }

                v23 = selfCopy;
                definitionCopy3 = definition;
              }
            }

            v51 = [obja countByEnumeratingWithState:&v205 objects:v222 count:16];
          }

          while (v51);
          return v187;
        }

        return v14;
      }

      if (error)
      {
        localizedDescription = [v209 localizedDescription];
        if (localizedDescription)
        {
          v115 = localizedDescription;
        }

        else
        {
          v115 = @"Unable to write new folder to file system.";
        }

        v116 = MEMORY[0x277CCA9B8];
        v117 = *MEMORY[0x277CCA050];
        v118 = v14;
        code = [v209 code];
        v120 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Couldn't create folder for reference assets.", *MEMORY[0x277CCA450], v115, *MEMORY[0x277CCA470], 0}];
        v121 = code;
        v14 = v118;
        *error = [v116 errorWithDomain:v117 code:v121 userInfo:v120];
      }
    }

    v122 = selfCopy;
    goto LABEL_113;
  }

  if (![format isEqualToString:CoreThemeArtworkFormatPSD])
  {
    if (![format isEqualToString:CoreThemeArtworkFormatCAAR])
    {
      return 0;
    }

    v81 = [(CoreThemeDocument *)selfCopy _themeBitSource:error];
    if (!v81)
    {
      return 0;
    }

    v82 = v81;
    v83 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](selfCopy, "rootPathForProductionData")}];
    v84 = [(CoreThemeDocument *)selfCopy defaultPathComponentsForPartDefinition:definition];
    v85 = [objc_msgSend(v83 URLByAppendingPathComponent:{objc_msgSend(v82, "name")), "URLByAppendingPathComponent:", v84}];
    definitionCopy5 = definition;
    v87 = v85;
    if (([defaultManager fileExistsAtPath:{objc_msgSend(v85, "path")}] & 1) == 0)
    {
      v209 = 0;
      if (([defaultManager createDirectoryAtURL:v87 withIntermediateDirectories:1 attributes:0 error:&v209] & 1) == 0)
      {
        goto LABEL_117;
      }

      definitionCopy5 = definition;
    }

    v88 = -[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](selfCopy, "folderNameFromRenditionKey:forPartDefinition:", [groupCopy baseKey], definitionCopy5);
    v89 = [v88 stringByAppendingPathExtension:@"caml"];
    v90 = [v87 URLByAppendingPathComponent:v89];
    if (([v90 checkResourceIsReachableAndReturnError:error] & 1) == 0)
    {
      v89 = [v88 stringByAppendingPathExtension:@"ca"];
      v90 = [v87 URLByAppendingPathComponent:v89];
    }

    if (([v90 checkResourceIsReachableAndReturnError:error] & 1) == 0)
    {
      v89 = [v88 stringByAppendingPathExtension:@"caar"];
      v90 = [v87 URLByAppendingPathComponent:v89];
    }

    [(CoreThemeDocument *)selfCopy assetManagementDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(TDAssetManagementDelegate *)[(CoreThemeDocument *)selfCopy assetManagementDelegate] willCreateAssetAtURL:v90];
    }

    v91 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"MicaAsset"];
    [v91 setCategory:v84];
    [v91 setName:v89];
    [v91 setScaleFactor:{objc_msgSend(objc_msgSend(groupCopy, "baseKey"), "themeScale")}];
    [v91 setSource:v82];
    [(CoreThemeDocument *)selfCopy assetManagementDelegate];
    if (objc_opt_respondsToSelector())
    {
      [(TDAssetManagementDelegate *)[(CoreThemeDocument *)selfCopy assetManagementDelegate] didCreateAsset:v91 atURL:v90];
    }

    v175 = v90;
    v92 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"MicaElementProduction"];
    [v92 setAsset:v91];
    [v92 setPartDefinition:definition];
    [v92 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Production for %@", objc_msgSend(v84, "stringByAppendingPathComponent:", v89))}];
    [v92 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
    v93 = [objc_msgSend(groupCopy "renditions")];
    [v92 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v93, "type"))}];
    [v92 setRenditionSubtype:{-[CoreThemeDocument renditionSubtypeWithIdentifier:](selfCopy, "renditionSubtypeWithIdentifier:", objc_msgSend(v93, "subtype"))}];
    v94 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
    [v94 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(groupCopy withDocument:{"baseKey"), "keyList"), selfCopy}];
    v187 = v92;
    [v92 setBaseKeySpec:v94];

    layer = [MEMORY[0x277CD9ED0] layer];
    [layer setName:@"rootLayer"];
    objb = layer;
    [layer setFrame:{0.0, 0.0, 128.0, 128.0}];
    schemaLayersAndLayerGroups = [groupCopy schemaLayersAndLayerGroups];
    array = [MEMORY[0x277CBEB18] array];
    v189 = 0u;
    v190 = 0u;
    v191 = 0u;
    v192 = 0u;
    v97 = [schemaLayersAndLayerGroups countByEnumeratingWithState:&v189 objects:v218 count:16];
    if (v97)
    {
      v98 = v97;
      v99 = 0x277D02000uLL;
      v100 = *v190;
      lastObject = layer;
      do
      {
        for (m = 0; m != v98; ++m)
        {
          if (*v190 != v100)
          {
            objc_enumerationMutation(schemaLayersAndLayerGroups);
          }

          v103 = *(*(&v189 + 1) + 8 * m);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v103 isStart])
            {
              layer2 = [MEMORY[0x277CD9ED0] layer];
              [layer2 setName:{objc_msgSend(v103, "name")}];
              [lastObject addSublayer:layer2];
              [array addObject:layer2];
              lastObject = layer2;
            }

            else
            {
              [array removeLastObject];
              lastObject = objb;
              if ([array count])
              {
                lastObject = [array lastObject];
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              rendition = [v103 rendition];
              v106 = v100;
              v107 = v99;
              v108 = schemaLayersAndLayerGroups;
              v109 = [(CoreThemeDocument *)v23 newObjectForEntity:@"MicaRenditionSpec"];
              keySpec = [v109 keySpec];
              v111 = [rendition key];
              v112 = keySpec;
              v23 = selfCopy;
              [v112 setAttributesFromRenditionKey:v111 withDocument:selfCopy];
              -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](selfCopy, "_normalizeRenditionKeySpec:forSchemaRendition:", [v109 keySpec], rendition);
              [v109 setProduction:v187];
              [v109 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(rendition, "type"))}];
              [v109 setLayerPath:{objc_msgSend(objc_msgSend(objc_msgSend(array, "valueForKey:", @"name", "arrayByAddingObject:", objc_msgSend(v103, "name")), "componentsJoinedByString:", @"/"}];
              layer3 = [MEMORY[0x277CD9ED0] layer];
              [layer3 setName:{objc_msgSend(v103, "name")}];
              [lastObject bounds];
              [layer3 setFrame:?];
              [lastObject addSublayer:layer3];

              schemaLayersAndLayerGroups = v108;
              v99 = v107;
              v100 = v106;
            }
          }
        }

        v98 = [schemaLayersAndLayerGroups countByEnumeratingWithState:&v189 objects:v218 count:16];
      }

      while (v98);
    }

    [v175 fileSystemRepresentation];
    CAEncodeLayerTreeToFile();
    return v187;
  }

  v59 = [(CoreThemeDocument *)selfCopy _themeBitSource:error];
  if (!v59)
  {
    return 0;
  }

  v60 = v59;
  v61 = [objc_alloc(MEMORY[0x277CBEBC0]) initFileURLWithPath:{-[CoreThemeDocument rootPathForProductionData](selfCopy, "rootPathForProductionData")}];
  v62 = [(CoreThemeDocument *)selfCopy defaultPathComponentsForPartDefinition:definition];
  v63 = [objc_msgSend(v61 URLByAppendingPathComponent:{objc_msgSend(v60, "name")), "URLByAppendingPathComponent:", v62}];
  if (([defaultManager fileExistsAtPath:{objc_msgSend(v63, "path")}] & 1) == 0)
  {
    v209 = 0;
    if (([defaultManager createDirectoryAtURL:v63 withIntermediateDirectories:1 attributes:0 error:&v209] & 1) == 0)
    {
LABEL_117:
      if (error)
      {
        localizedDescription2 = [v209 localizedDescription];
        if (localizedDescription2)
        {
          v129 = localizedDescription2;
        }

        else
        {
          v129 = @"Unable to write new folder to file system.";
        }

        v130 = MEMORY[0x277CCA9B8];
        v131 = *MEMORY[0x277CCA050];
        code2 = [v209 code];
        *error = [v130 errorWithDomain:v131 code:code2 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Couldn't create folder for reference assets.", *MEMORY[0x277CCA450], v129, *MEMORY[0x277CCA470], 0)}];
      }

      return 0;
    }
  }

  v64 = [-[CoreThemeDocument folderNameFromRenditionKey:forPartDefinition:](selfCopy folderNameFromRenditionKey:objc_msgSend(groupCopy forPartDefinition:{"baseKey"), definition), "stringByAppendingPathExtension:", @"psd"}];
  v65 = [v63 URLByAppendingPathComponent:v64];
  if (![(CoreThemeDocument *)selfCopy createPSDReferenceArtworkForRenditionGroup:groupCopy atDestination:v65 error:error])
  {
    if (error)
    {
      v123 = MEMORY[0x277CCA9B8];
      v124 = *MEMORY[0x277CCA050];
      v125 = MEMORY[0x277CBEAC0];
      v126 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't make reference PSD image. Filename: %@", v64];
      v127 = [v123 errorWithDomain:v124 code:0 userInfo:{objc_msgSend(v125, "dictionaryWithObject:forKey:", v126, *MEMORY[0x277CCA450])}];
      v14 = 0;
      *error = v127;
      return v14;
    }

    return 0;
  }

  v66 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopAsset"];
  [v66 setCategory:v62];
  [v66 setName:v64];
  [v66 setScaleFactor:{objc_msgSend(objc_msgSend(groupCopy, "baseKey"), "themeScale")}];
  [v66 setSource:v60];
  [(CoreThemeDocument *)selfCopy assetManagementDelegate];
  if (objc_opt_respondsToSelector())
  {
    [(TDAssetManagementDelegate *)[(CoreThemeDocument *)selfCopy assetManagementDelegate] didCreateAsset:v66 atURL:v65];
  }

  v14 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopElementProduction"];
  [v14 setAsset:v66];
  [v14 setPartDefinition:definition];
  [v14 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Production for %@", objc_msgSend(v62, "stringByAppendingPathComponent:", v64))}];
  [v14 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
  v67 = [objc_msgSend(groupCopy "renditions")];
  [v14 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v67, "type"))}];
  [v14 setRenditionSubtype:{-[CoreThemeDocument renditionSubtypeWithIdentifier:](selfCopy, "renditionSubtypeWithIdentifier:", objc_msgSend(v67, "subtype"))}];
  v68 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
  [v68 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(groupCopy withDocument:{"baseKey"), "keyList"), selfCopy}];
  [v14 setBaseKeySpec:v68];

  partFeatures = [definition partFeatures];
  if ((partFeatures & 0x8000) != 0)
  {
    v70 = 3;
  }

  else
  {
    v70 = 4;
  }

  if ((partFeatures & 0x10004) == 4)
  {
    v71 = 1;
  }

  else
  {
    v71 = v70;
  }

  [v14 setRowIterationType:{-[CoreThemeDocument iterationTypeWithIdentifier:](selfCopy, "iterationTypeWithIdentifier:", v71)}];
  if ((partFeatures & 0x4000) != 0)
  {
    v72 = 2;
  }

  else
  {
    v72 = 4;
  }

  if (partFeatures)
  {
    v73 = 0;
  }

  else
  {
    v73 = v72;
  }

  [v14 setColumnIterationType:{-[CoreThemeDocument iterationTypeWithIdentifier:](selfCopy, "iterationTypeWithIdentifier:", v73)}];
  v74 = [MEMORY[0x277CBEB58] set];
  v75 = [objc_msgSend(definition validStatesWithDocument:{selfCopy), "count"}];
  v183 = partFeatures;
  if ((partFeatures & 0x80) != 0)
  {
    [v74 addObject:{-[CoreThemeDocument mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:](selfCopy, "mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:", v75++, 3)}];
  }

  if ((partFeatures & 0x2000) != 0)
  {
    [v74 addObject:{-[CoreThemeDocument mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:](selfCopy, "mappingForPhotoshopLayerIndex:themeDrawingLayerIdentifier:", v75, 2)}];
  }

  if ([v74 count])
  {
    [v14 addLayerMappings:v74];
  }

  if (([objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] & 1) == 0)
  {
    [v14 setRowCount:&unk_2859AC4D0];
    [v14 setColumnCount:&unk_2859AC4D0];
    objc = [groupCopy schemaLayersAndLayerGroups];
    array2 = [MEMORY[0x277CBEB18] array];
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v204 = 0u;
    v133 = [objc countByEnumeratingWithState:&v201 objects:v221 count:16];
    if (v133)
    {
      v134 = v133;
      v187 = v14;
      lastObject2 = 0;
      v136 = *v202;
      v172 = *v202;
      do
      {
        for (n = 0; n != v134; ++n)
        {
          if (*v202 != v136)
          {
            objc_enumerationMutation(objc);
          }

          v138 = *(*(&v201 + 1) + 8 * n);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v138 isStart])
            {
              v139 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopLayer"];
              [v139 setName:{objc_msgSend(v138, "name")}];
              [v139 setParentLayer:lastObject2];
              [array2 addObject:v139];
              lastObject2 = v139;
            }

            else
            {
              [array2 removeLastObject];
              if ([array2 count])
              {
                lastObject2 = [array2 lastObject];
              }

              else
              {
                lastObject2 = 0;
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v140 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopLayer"];
              [v140 setParentLayer:lastObject2];
              [v140 setName:{objc_msgSend(v138, "name")}];
              rendition2 = [v138 rendition];
              v142 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopRenditionSpec"];
              [v142 setProduction:v187];
              [objc_msgSend(v142 "keySpec")];
              [objc_msgSend(v142 "keySpec")];
              -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](selfCopy, "_normalizeRenditionKeySpec:forSchemaRendition:", [v142 keySpec], rendition2);
              v136 = v172;
              [v142 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(rendition2, "type"))}];
              [v142 setPhotoshopLayer:v140];
            }
          }
        }

        v134 = [objc countByEnumeratingWithState:&v201 objects:v221 count:16];
      }

      while (v134);
      return v187;
    }

    return v14;
  }

  v76 = -[CTDPSDPreviewRef initWithPath:]([CTDPSDPreviewRef alloc], "initWithPath:", [v65 path]);
  if (!v76)
  {
    return 0;
  }

  v77 = v76;
  rowSlices = [v67 rowSlices];
  columnSlices = [v67 columnSlices];
  if ([(CTDPSDPreviewRef *)v77 sliceRowCount]< 1)
  {
    sliceRowCount = 0;
  }

  else
  {
    sliceRowCount = [(CTDPSDPreviewRef *)v77 sliceRowCount];
  }

  if ([(CTDPSDPreviewRef *)v77 sliceColumnCount]< 1)
  {
    sliceColumnCount = 0;
  }

  else
  {
    sliceColumnCount = [(CTDPSDPreviewRef *)v77 sliceColumnCount];
  }

  if ([v67 type] == 6)
  {
    v144 = 1;
    v145 = 1;
  }

  else
  {
    if (sliceRowCount < 1 || sliceColumnCount < 1 || (v158 = sliceRowCount / rowSlices, sliceRowCount % rowSlices) || sliceColumnCount % columnSlices)
    {
      if (error)
      {
        v159 = MEMORY[0x277CCA9B8];
        v160 = *MEMORY[0x277CCA050];
        v161 = v14;
        v162 = MEMORY[0x277CBEAC0];
        v163 = [MEMORY[0x277CCACA8] stringWithFormat:@"Reference PSD has wrong number of slices. Couldn't create production. Filename: %@", v64];
        v164 = v162;
        v14 = v161;
        *error = [v159 errorWithDomain:v160 code:0 userInfo:{objc_msgSend(v164, "dictionaryWithObject:forKey:", v163, *MEMORY[0x277CCA450])}];
      }

      -[CoreThemeDocument deleteObject:](selfCopy, "deleteObject:", [v14 asset]);
      v122 = selfCopy;
LABEL_113:
      [(CoreThemeDocument *)v122 deleteObject:v14];
      return 0;
    }

    v145 = (sliceColumnCount / columnSlices);
    v144 = v158;
  }

  [v14 setRowCount:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v144)}];
  [v14 setColumnCount:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", v145)}];
  v197 = 0u;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  themeSchemaLayers = [groupCopy themeSchemaLayers];
  v173 = [themeSchemaLayers countByEnumeratingWithState:&v197 objects:v220 count:16];
  if (v173)
  {
    v187 = v14;
    v169 = *v198;
    do
    {
      v146 = 0;
      do
      {
        if (*v198 != v169)
        {
          objc_enumerationMutation(themeSchemaLayers);
        }

        v176 = v146;
        v147 = *(*(&v197 + 1) + 8 * v146);
        v193 = 0u;
        v194 = 0u;
        v195 = 0u;
        v196 = 0u;
        objd = [v147 renditions];
        v148 = [objd countByEnumeratingWithState:&v193 objects:v219 count:16];
        if (v148)
        {
          v149 = v148;
          v150 = *v194;
          do
          {
            for (ii = 0; ii != v149; ++ii)
            {
              if (*v194 != v150)
              {
                objc_enumerationMutation(objd);
              }

              v152 = *(*(&v193 + 1) + 8 * ii);
              v153 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PhotoshopRenditionSpec"];
              [v153 setProduction:v187];
              [objc_msgSend(v153 "keySpec")];
              -[CoreThemeDocument _normalizeRenditionKeySpec:forSchemaRendition:](selfCopy, "_normalizeRenditionKeySpec:forSchemaRendition:", [v153 keySpec], v152);
              [v153 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy, "renditionTypeWithIdentifier:", objc_msgSend(v152, "type"))}];
              [v153 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", objc_msgSend(v147, "index")), @"layer"}];
              [v152 renditionCoordinatesForPartFeatures:v183];
              v155 = v154;
              [v153 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", (v144 + ~v156) & ~((v144 + ~v156) >> 63)), @"row"}];
              [v153 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v155), @"column"}];
            }

            v149 = [objd countByEnumeratingWithState:&v193 objects:v219 count:16];
          }

          while (v149);
        }

        v146 = v176 + 1;
      }

      while (v176 + 1 != v173);
      v173 = [themeSchemaLayers countByEnumeratingWithState:&v197 objects:v220 count:16];
    }

    while (v173);
    return v187;
  }

  return v14;
}

- (void)_normalizeRenditionKeySpec:(id)spec forSchemaRendition:(id)rendition
{
  if (![spec size])
  {
    [spec setSize:{-[CoreThemeDocument sizeWithIdentifier:](self, "sizeWithIdentifier:", 0)}];
  }

  if (![spec state])
  {
    [spec setState:{-[CoreThemeDocument stateWithIdentifier:](self, "stateWithIdentifier:", 0)}];
  }

  if (![spec presentationState])
  {
    [spec setPresentationState:{-[CoreThemeDocument presentationStateWithIdentifier:](self, "presentationStateWithIdentifier:", 0)}];
  }

  if (![spec direction])
  {
    [spec setDirection:{-[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", 0)}];
  }

  if (![spec value])
  {
    [spec setValue:{-[CoreThemeDocument valueWithIdentifier:](self, "valueWithIdentifier:", 0)}];
  }

  if (![spec layer])
  {
    v6 = [(CoreThemeDocument *)self drawingLayerWithIdentifier:0];

    [spec setLayer:v6];
  }
}

- (id)createEffectStyleProductionForPartDefinition:(id)definition withNameIdentifier:(id)identifier
{
  if (identifier)
  {
    v7 = @"NamedEffectProduction";
  }

  else
  {
    v7 = @"EffectStyleProduction";
  }

  v8 = [(CoreThemeDocument *)self newObjectForEntity:v7];
  [v8 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
  [v8 setRenditionType:{-[CoreThemeDocument renditionTypeWithIdentifier:](self, "renditionTypeWithIdentifier:", 7)}];
  v9 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
  v10 = [MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self, "targetPlatform")}];
  [definition element];
  [v9 setAttributesFromRenditionKey:objc_msgSend(v10 withDocument:{"partDefinitionWithName:forElementDefinition:", objc_msgSend(definition, "name"), objc_msgSend(objc_opt_class(), "elementDefinitionWithName:withSchema:", objc_msgSend(objc_msgSend(definition, "element"), "name"), v10)) + 16, self}];
  [v8 setBaseKeySpec:v9];

  if (identifier)
  {
    [objc_msgSend(v8 "baseKeySpec")];
  }

  [v8 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"System Effect: %@ - %@", objc_msgSend(objc_msgSend(definition, "element"), "name"), objc_msgSend(definition, "name"))}];
  [v8 setPartDefinition:definition];
  [v8 generateRenditionsWithDocument:self];

  return v8;
}

- (id)namedEffectProductionWithName:(id)name
{
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedEffectProduction"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name = %@", name];
  v7 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  [v5 setPredicate:name];
  v10 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v10];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup.isa, name, [v10 localizedDescription]);
    return 0;
  }

  else
  {
    result = [v8 count];
    if (result)
    {
      return [v8 objectAtIndex:0];
    }
  }

  return result;
}

- (id)_namedTextEffectPartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Named Text", @"Named Effect"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)_namedImageEffectPartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Named Image", @"Named Effect"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)createNamedEffectProductionWithName:(id)name isText:(BOOL)text
{
  if (text)
  {
    _namedTextEffectPartDefinition = [(CoreThemeDocument *)self _namedTextEffectPartDefinition];
  }

  else
  {
    _namedTextEffectPartDefinition = [(CoreThemeDocument *)self _namedImageEffectPartDefinition];
  }

  v7 = _namedTextEffectPartDefinition;
  v8 = [(CoreThemeDocument *)self namedEffectProductionWithName:name];
  if (v8)
  {
    v9 = [objc_msgSend(v8 "name")];

    return [(CoreThemeDocument *)self createEffectStyleProductionForPartDefinition:v7 withNameIdentifier:v9];
  }

  else
  {
    _createNamedElementWithNextAvailableIdentifier = [(CoreThemeDocument *)self _createNamedElementWithNextAvailableIdentifier];
    v12 = -[CoreThemeDocument createEffectStyleProductionForPartDefinition:withNameIdentifier:](self, "createEffectStyleProductionForPartDefinition:withNameIdentifier:", v7, [_createNamedElementWithNextAvailableIdentifier identifier]);
    [_createNamedElementWithNextAvailableIdentifier setName:name];
    [_createNamedElementWithNextAvailableIdentifier setProduction:v12];
    return v12;
  }
}

- (id)_createPhotoshopElementProductionWithAsset:(id)asset
{
  v5 = [(CoreThemeDocument *)self newObjectForEntity:@"PhotoshopElementProduction"];
  [v5 setValue:asset forKey:@"asset"];
  [v5 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 0), @"isExcludedFromFilter"}];
  [v5 setValue:-[CoreThemeDocument renditionTypeWithIdentifier:](self forKey:{"renditionTypeWithIdentifier:", 0), @"renditionType"}];
  v6 = [(CoreThemeDocument *)self iterationTypeWithIdentifier:4];
  [v5 setValue:v6 forKey:@"rowIterationType"];
  [v5 setValue:v6 forKey:@"columnIterationType"];
  v7 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
  [v7 setScaleFactor:{objc_msgSend(asset, "scaleFactor")}];
  [v5 setValue:v7 forKey:@"baseKeySpec"];

  [v5 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"From: %@/%@", objc_msgSend(asset, "category"), objc_msgSend(asset, "name")), @"comment"}];
  return v5;
}

- (id)_namedImagePartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Artwork Image", @"Named Asset"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)_createNamedElementWithNextAvailableIdentifier
{
  cachedMaxIdentifierInUse = self->cachedMaxIdentifierInUse;
  if (cachedMaxIdentifierInUse > 0)
  {
LABEL_2:
    self->cachedMaxIdentifierInUse = cachedMaxIdentifierInUse + 1;
    return [(CoreThemeDocument *)self _createNamedElementWithIdentifier:?];
  }

  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"identifier" ascending:0];
  v6 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedElement"];
  v7 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  [v6 setSortDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v5)}];

  [v6 setFetchLimit:1];
  v9 = 0;
  v8 = [v7 executeFetchRequest:v6 error:&v9];

  if (!v9)
  {
    cachedMaxIdentifierInUse = [v8 count];
    if (cachedMaxIdentifierInUse)
    {
      cachedMaxIdentifierInUse = [v8 objectAtIndex:0];
      if (cachedMaxIdentifierInUse)
      {
        cachedMaxIdentifierInUse = [objc_msgSend(cachedMaxIdentifierInUse "identifier")];
      }
    }

    goto LABEL_2;
  }

  NSLog(&cfstr_UnableToComput.isa, [v9 localizedDescription]);
  return 0;
}

- (id)_createNamedElementWithIdentifier:(int64_t)identifier
{
  v5 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedElement"];
  [v5 setIdentifier:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", identifier)}];
  if (self->cachedMaxIdentifierInUse < identifier)
  {
    self->cachedMaxIdentifierInUse = identifier;
  }

  return v5;
}

- (id)namedElementWithName:(id)name
{
  if (!name)
  {
    return 0;
  }

  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedElement"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@", name];
  managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];
  [v5 setPredicate:name];
  v10 = 0;
  v8 = [managedObjectContext executeFetchRequest:v5 error:&v10];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup_0.isa, name, [v10 localizedDescription]);
    return 0;
  }

  else
  {
    result = [v8 count];
    if (result)
    {
      return [v8 objectAtIndex:0];
    }
  }

  return result;
}

- (id)namedElementsForElementDefinition:(id)definition
{
  v3 = [objc_msgSend(objc_msgSend(objc_msgSend(definition "parts")];

  return [v3 allObjects];
}

- (id)elementProductionsWithName:(id)name
{
  v5 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"name" ascending:0];
  v6 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"ElementProduction"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name = %@", name];
  [v6 setSortDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v5)}];
  [v6 setPredicate:name];
  v10 = 0;
  v8 = [objc_msgSend(-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup_1.isa, name, [v10 localizedDescription]);
    return 0;
  }

  return v8;
}

- (id)namedArtworkProductionWithName:(id)name
{
  v5 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NamedArtworkProduction"];
  name = [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name = %@", name];
  v7 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  [v5 setPredicate:name];
  v10 = 0;
  v8 = [v7 executeFetchRequest:v5 error:&v10];

  if (v10)
  {
    NSLog(&cfstr_UnableToLookup_1.isa, name, [v10 localizedDescription]);
    return 0;
  }

  else
  {
    result = [v8 count];
    if (result)
    {
      return [v8 objectAtIndex:0];
    }
  }

  return result;
}

- (id)slicesComputedForImageSize:(CGSize)size usingSliceInsets:(id)insets resizableSliceSize:(CGSize)sliceSize withRenditionType:(int64_t)type
{
  v6 = 0;
  v55 = *MEMORY[0x277D85DE8];
  if (size.width <= 0.0 || size.height <= 0.0)
  {
    return v6;
  }

  var3 = insets.var3;
  var2 = insets.var2;
  var1 = insets.var1;
  var0 = insets.var0;
  if (insets.var0 < 0.0 && insets.var2 < 0.0 && insets.var3 < 0.0 && insets.var1 < 0.0)
  {
    return 0;
  }

  width = size.width;
  height = size.height;
  if (insets.var0 >= 0.0 && type == 3 && insets.var2 >= 0.0 && insets.var1 >= 0.0 && insets.var3 >= 0.0)
  {
    if (sliceSize.width >= 1.0)
    {
      v14 = sliceSize.width;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = width - (insets.var1 + insets.var3) - v14;
    if (v15 < 0.0)
    {
      v15 = 0.0;
    }

    v16 = height;
    v17 = height - (insets.var0 + var2);
    if (sliceSize.height >= 1.0)
    {
      v18 = sliceSize.height;
    }

    else
    {
      v18 = 1.0;
    }

    v19 = v17 - v18;
    if (v17 - v18 < 0.0)
    {
      v19 = 0.0;
    }

    v20 = insets.var1 + v14 + v15;
    if (width - v20 >= 0.0)
    {
      v21 = width - v20;
    }

    else
    {
      v21 = 0.0;
    }

    v22 = var0 + v18 + v19;
    if (v16 - v22 >= 0.0)
    {
      v23 = v16 - v22;
    }

    else
    {
      v23 = 0.0;
    }

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:9];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, var1, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, 0.0, v14, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", v20, 0.0, v21, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, var0, var1, v18)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, var0, v14, v18)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", v20, var0, v21, v18)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, v22, var1, v23)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, v22, v14, v23)}];
    v25 = MEMORY[0x277CCAE60];
    v26 = v20;
    v27 = v22;
    v28 = v21;
    v29 = v23;
    goto LABEL_49;
  }

  if (type == 1 && insets.var1 >= 0.0 && insets.var3 >= 0.0)
  {
    if (sliceSize.width >= 1.0)
    {
      v30 = sliceSize.width;
    }

    else
    {
      v30 = 1.0;
    }

    if (width - (insets.var1 + insets.var3) - v30 >= 0.0)
    {
      v31 = width - (insets.var1 + insets.var3) - v30;
    }

    else
    {
      v31 = 0.0;
    }

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, var1, height)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", var1, 0.0, v30, height)}];
    v32 = var1 + v30;
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", v32, 0.0, v31, height)}];
    v25 = MEMORY[0x277CCAE60];
    v26 = v32 + v31;
    v27 = 0.0;
    v28 = var3;
    v29 = height;
LABEL_49:
    [v24 addObject:{objc_msgSend(v25, "valueWithRect:", v26, v27, v28, v29)}];
    goto LABEL_50;
  }

  if (insets.var0 >= 0.0 && type == 2 && insets.var2 >= 0.0)
  {
    if (sliceSize.height >= 1.0)
    {
      v33 = sliceSize.height;
    }

    else
    {
      v33 = 1.0;
    }

    if (height - (insets.var0 + insets.var2) - v33 >= 0.0)
    {
      v34 = height - (insets.var0 + insets.var2) - v33;
    }

    else
    {
      v34 = 0.0;
    }

    v24 = [MEMORY[0x277CBEB18] arrayWithCapacity:4];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, width, var0)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, var0, width, v33)}];
    [v24 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, var0 + v33, width, v34)}];
    v25 = MEMORY[0x277CCAE60];
    v26 = 0.0;
    v27 = v33 + var0 + v34;
    v28 = width;
    v29 = var2;
    goto LABEL_49;
  }

  if (type > 0xC || ((1 << type) & 0x1801) == 0)
  {
    v49 = +[TDLogger defaultLogger];
    [v49 logError:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Edge insets were specified but didn't match the rendition type"}];
  }

  v24 = [MEMORY[0x277CBEB18] arrayWithObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithRect:", 0.0, 0.0, width, height)}];
LABEL_50:
  if (![v24 count])
  {
    return 0;
  }

  v6 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(v24, "count")}];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v35 = [v24 countByEnumeratingWithState:&v50 objects:v54 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v50 + 1) + 8 * i) rectValue];
        v40 = v39;
        v42 = v41;
        v44 = v43;
        v46 = v45;
        v47 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
        [v47 setSliceRect:{v40, v42, v44, v46}];
        [v6 addObject:v47];
      }

      v36 = [v24 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v36);
  }

  return v6;
}

- (id)createTextStyleProductionsForImportInfos:(id)infos error:(id *)error
{
  if (![infos count])
  {
    return 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v29 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v28 = [(CoreThemeDocument *)self partWithIdentifier:231];
  v27 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1015];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  idioms = [(CoreThemeDocument *)self idioms];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  v7 = [infos sortedArrayUsingComparator:&__block_literal_global_605];
  if ([v7 count])
  {
    v8 = 0;
    v23 = array;
    do
    {
      v9 = [v7 objectAtIndex:v8];
      lastObject = [array lastObject];
      v11 = [objc_msgSend(objc_msgSend(lastObject "name")];
      if (lastObject)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if ((v12 & 1) != 0 || (lastObject = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"TextStyleProduction"), v13 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v9 nameIdentifier]), objc_msgSend(v13, "setName:", objc_msgSend(v9, "name")), objc_msgSend(v13, "setProduction:", lastObject), objc_msgSend(lastObject, "setRenditionType:", v27), v14 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"RenditionKeySpec"), objc_msgSend(v14, "setElement:", v29), objc_msgSend(v14, "setPart:", v28), objc_msgSend(v14, "setNameIdentifier:", objc_msgSend(objc_msgSend(v13, "identifier"), "unsignedIntValue")), objc_msgSend(lastObject, "setBaseKeySpec:", v14), v14, lastObject))
      {
        v15 = [(CoreThemeDocument *)self newObjectForEntity:@"TextStyleRenditionSpec"];
        [v15 setAlignment:{objc_msgSend(v9, "textAlignment")}];
        [v15 setFontName:{objc_msgSend(v9, "fontName")}];
        [v9 fontSize];
        *&v16 = v16;
        [v15 setFontSize:v16];
        [v9 maxPointSize];
        *&v17 = v17;
        [v15 setMaxPointSize:v17];
        [v9 minPointSize];
        *&v18 = v18;
        [v15 setMinPointSize:v18];
        [v15 setScalingStyle:{objc_msgSend(v9, "scalingStyle")}];
        [v15 setProduction:lastObject];
        [v15 setRenditionType:v27];
        v19 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v19 setNameIdentifier:{objc_msgSend(objc_msgSend(lastObject, "baseKeySpec"), "nameIdentifier")}];
        [v19 setElement:v29];
        [v19 setPart:v28];
        [v19 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v9, "displayGamut"))}];
        [v19 setIdiom:{objc_msgSend(idioms, "objectAtIndex:", objc_msgSend(v9, "idiom"))}];
        [v19 setSubtype:{objc_msgSend(v9, "subtype")}];
        v20 = [sizeClasses objectAtIndexedSubscript:{objc_msgSend(v9, "sizeClassHorizontal")}];
        v21 = [sizeClasses objectAtIndexedSubscript:{objc_msgSend(v9, "sizeClassVertical")}];
        [v19 setSizeClassHorizontal:v20];
        [v19 setSizeClassVertical:v21];
        [v19 setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v9, "appearanceIdentifier"), objc_msgSend(v9, "appearanceName"), 1)}];
        [v19 setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v9, "localizationIdentifier"), objc_msgSend(v9, "localizationName"), 1)}];
        [v15 setKeySpec:v19];

        array = v23;
        if ((v12 & 1) == 0)
        {
          [v23 addObject:lastObject];
        }
      }

      ++v8;
    }

    while (v8 < [v7 count]);
  }

  return array;
}

uint64_t __68__CoreThemeDocument_createTextStyleProductionsForImportInfos_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

- (id)createNamedColorProductionsForImportInfos:(id)infos error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v7 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v30 = [(CoreThemeDocument *)self partWithIdentifier:217];
  v29 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1009];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  idioms = [(CoreThemeDocument *)self idioms];
  v8 = [infos sortedArrayUsingComparator:&__block_literal_global_613];
  if ([v8 count])
  {
    v9 = 0;
    v24 = v7;
    v25 = array;
    v26 = v8;
    while (1)
    {
      v10 = [v8 objectAtIndex:v9];
      if (![v10 colorComponents])
      {
        [CoreThemeDocument createNamedColorProductionsForImportInfos:error:];
      }

      lastObject = [array lastObject];
      v12 = [objc_msgSend(objc_msgSend(lastObject "name")];
      if (lastObject)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      if ((v13 & 1) == 0)
      {
        lastObject = [(CoreThemeDocument *)self newObjectForEntity:@"NamedColorProduction"];
        v14 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v10 nameIdentifier]);
        [v14 setName:{objc_msgSend(v10, "name")}];
        [v14 setProduction:lastObject];
        [lastObject setRenditionType:v29];
        v15 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v15 setElement:v7];
        [v15 setPart:v30];
        [v15 setNameIdentifier:{objc_msgSend(objc_msgSend(v14, "identifier"), "unsignedIntValue")}];
        [lastObject setBaseKeySpec:v15];

        if (!lastObject)
        {
          goto LABEL_22;
        }
      }

      v16 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedColorRenditionSpec"];
      colorComponents = [v10 colorComponents];
      if ([colorComponents count] == 4)
      {
        break;
      }

      if ([colorComponents count] == 2)
      {
        v18 = 0;
        v19 = 0;
        v20 = 1;
        goto LABEL_14;
      }

LABEL_15:
      if ([v10 colorSpaceID])
      {
        colorSpaceID = [v10 colorSpaceID];
      }

      else
      {
        colorSpaceID = 1;
      }

      [v16 setColorSpaceID:colorSpaceID];
      if ([objc_msgSend(v10 "systemColorName")])
      {
        [v16 setSystemColorName:{objc_msgSend(v10, "systemColorName")}];
      }

      [v16 setProduction:lastObject];
      [v16 setRenditionType:v29];
      v22 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
      [v22 setNameIdentifier:{objc_msgSend(objc_msgSend(lastObject, "baseKeySpec"), "nameIdentifier")}];
      [v22 setElement:v7];
      [v22 setPart:v30];
      [v22 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v10, "displayGamut"))}];
      [v22 setIdiom:{objc_msgSend(idioms, "objectAtIndex:", objc_msgSend(v10, "idiom"))}];
      [v22 setSubtype:{objc_msgSend(v10, "subtype")}];
      [v22 setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v10, "appearanceIdentifier"), objc_msgSend(v10, "appearanceName"), 1)}];
      [v22 setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v10, "localizationIdentifier"), objc_msgSend(v10, "localizationName"), 1)}];
      [v16 setKeySpec:v22];

      v8 = v26;
      if ((v13 & 1) == 0)
      {
        [array addObject:lastObject];
      }

LABEL_22:
      if (++v9 >= [v8 count])
      {
        return array;
      }
    }

    v18 = 1;
    v19 = 2;
    v20 = 3;
LABEL_14:
    [objc_msgSend(colorComponents objectAtIndex:{0), "doubleValue"}];
    [v16 setRed:?];
    [objc_msgSend(colorComponents objectAtIndex:{v18), "doubleValue"}];
    [v16 setGreen:?];
    [objc_msgSend(colorComponents objectAtIndex:{v19), "doubleValue"}];
    [v16 setBlue:?];
    [objc_msgSend(colorComponents objectAtIndex:{v20), "doubleValue"}];
    [v16 setAlpha:?];
    v7 = v24;
    array = v25;
    goto LABEL_15;
  }

  return array;
}

uint64_t __69__CoreThemeDocument_createNamedColorProductionsForImportInfos_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

- (id)createNamedGradientProductionsForImportInfos:(id)infos error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v28 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v27 = [(CoreThemeDocument *)self partWithIdentifier:247];
  v26 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1021];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  idioms = [(CoreThemeDocument *)self idioms];
  v6 = [infos sortedArrayUsingComparator:&__block_literal_global_624];
  if ([v6 count])
  {
    v7 = 0;
    v23 = v6;
    do
    {
      v8 = [v6 objectAtIndex:v7];
      v9 = [objc_msgSend(v8 "colorNames")];
      if (v9 != [objc_msgSend(v8 "colorStops")])
      {
        [CoreThemeDocument createNamedGradientProductionsForImportInfos:error:];
      }

      if (![objc_msgSend(v8 "colorNames")])
      {
        [CoreThemeDocument createNamedGradientProductionsForImportInfos:error:];
      }

      lastObject = [array lastObject];
      v11 = [objc_msgSend(objc_msgSend(lastObject "name")];
      if (lastObject)
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }

      if ((v12 & 1) != 0 || (lastObject = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"NamedGradientProduction"), v13 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v8 nameIdentifier]), objc_msgSend(v13, "setName:", objc_msgSend(v8, "name")), objc_msgSend(v13, "setProduction:", lastObject), objc_msgSend(lastObject, "setRenditionType:", v26), v14 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", @"RenditionKeySpec"), objc_msgSend(v14, "setElement:", v28), objc_msgSend(v14, "setPart:", v27), objc_msgSend(v14, "setNameIdentifier:", objc_msgSend(objc_msgSend(v13, "identifier"), "unsignedIntValue")), objc_msgSend(lastObject, "setBaseKeySpec:", v14), v14, lastObject))
      {
        v30 = v12;
        v15 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedGradientRenditionSpec"];
        [v15 setGradientType:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(v8, "gradientType"))}];
        [v8 gradientStartPoint];
        [v15 setGradientStartPoint:?];
        [v8 gradientEndPoint];
        [v15 setGradientEndPoint:?];
        orderedSet = [MEMORY[0x277CBEB40] orderedSet];
        v17 = [objc_msgSend(v8 "colorStops")];
        if (v17)
        {
          v18 = v17;
          for (i = 0; i != v18; ++i)
          {
            v20 = [(CoreThemeDocument *)self newObjectForEntity:@"ColorStop"];
            [v20 setStop:{objc_msgSend(objc_msgSend(v8, "colorStops"), "objectAtIndex:", i)}];
            [v20 setColorName:{objc_msgSend(objc_msgSend(v8, "colorNames"), "objectAtIndex:", i)}];
            [orderedSet addObject:v20];
          }
        }

        [v15 setColorStops:orderedSet];
        [v15 setProduction:lastObject];
        [v15 setRenditionType:v26];
        v21 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v21 setNameIdentifier:{objc_msgSend(objc_msgSend(lastObject, "baseKeySpec"), "nameIdentifier")}];
        [v21 setElement:v28];
        [v21 setPart:v27];
        [v21 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v8, "displayGamut"))}];
        [v21 setIdiom:{objc_msgSend(idioms, "objectAtIndex:", objc_msgSend(v8, "idiom"))}];
        [v21 setSubtype:{objc_msgSend(v8, "subtype")}];
        [v21 setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v8, "appearanceIdentifier"), objc_msgSend(v8, "appearanceName"), 1)}];
        [v21 setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v8, "localizationIdentifier"), objc_msgSend(v8, "localizationName"), 1)}];
        [v15 setKeySpec:v21];

        v6 = v23;
        if ((v30 & 1) == 0)
        {
          [array addObject:lastObject];
        }
      }

      ++v7;
    }

    while (v7 < [v6 count]);
  }

  return array;
}

uint64_t __72__CoreThemeDocument_createNamedGradientProductionsForImportInfos_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

- (id)_sizeIndexesByNameFromNamedAssetImportInfos:(id)infos
{
  v36 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = [infos sortedArrayUsingComparator:&__block_literal_global_642];
  v27 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v6 count];
  name = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    if (v8 < [v6 count])
    {
      v9 = [v6 objectAtIndex:v8];
    }

    if (!name)
    {
      name = [v9 name];
    }

    if (![name isEqualToString:{objc_msgSend(v9, "name")}] || v8 == objc_msgSend(v6, "count"))
    {
      if ([v27 count])
      {
        v10 = [v27 sortedArrayUsingComparator:&__block_literal_global_644];
        if (v10 && name)
        {
          [dictionary setObject:v10 forKey:name];
        }

        else
        {
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
        }
      }

      if (v8 >= [v6 count])
      {
        v11 = 0;
      }

      else
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      name = [v9 name];
    }

    if (v8 < [v6 count])
    {
      iconSize = [v9 iconSize];
      if (iconSize)
      {
        v13 = iconSize;
        if ([v27 indexOfObject:iconSize] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v27 addObject:v13];
        }
      }
    }

    ++v8;
  }

  while (v8 <= [v6 count]);
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = [dictionary allKeys];
  v14 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v32;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v31 + 1) + 8 * i);
        v19 = [dictionary valueForKey:v18];
        v20 = [MEMORY[0x277CBEB58] set];
        if ([v19 count])
        {
          v21 = 0;
          do
          {
            v22 = [(CoreThemeDocument *)self newObjectForEntity:@"MultisizeImageSetSizeIndex"];
            [objc_msgSend(v19 objectAtIndex:{v21), "sizeValue"}];
            v24 = v23;
            [v22 setWidth:v25];
            [v22 setHeight:v24];
            [v22 setIndex:(v21 + 1)];
            [v20 addObject:v22];
            ++v21;
          }

          while (v21 < [v19 count]);
        }

        [dictionary2 setObject:v20 forKey:v18];
      }

      v15 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v15);
  }

  return dictionary2;
}

uint64_t __65__CoreThemeDocument__sizeIndexesByNameFromNamedAssetImportInfos___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [a2 name];
  v5 = [a3 name];

  return [v4 compare:v5];
}

uint64_t __65__CoreThemeDocument__sizeIndexesByNameFromNamedAssetImportInfos___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  [a2 sizeValue];
  v5 = v4;
  v7 = v6;
  [a3 sizeValue];
  v10 = v8 * v9;
  if (v5 * v7 < v10)
  {
    return -1;
  }

  else
  {
    return v5 * v7 > v10;
  }
}

- (BOOL)needToCreateForwardstopFor2018DeploymentVariant:(id)variant withCompressionTypes:(id)types
{
  if (![(CoreThemeDocument *)self needToCreateForwardstopForPlatform])
  {
    return 0;
  }

  if ([objc_msgSend(variant "renditionType")])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  compressionType = [variant compressionType];
  if (compressionType == [types objectAtIndex:3])
  {

    return [(CoreThemeDocument *)self shouldCreateForwardstopForLossy];
  }

  else
  {
    compressionType2 = [variant compressionType];
    if (compressionType2 != [types objectAtIndex:2])
    {
      compressionType3 = [variant compressionType];
      if (compressionType3 != [types objectAtIndex:0])
      {
        return 0;
      }
    }

    return [(CoreThemeDocument *)self shouldCreate2018ForwardstopForLossless];
  }
}

- (BOOL)needToCreateForwardstopFor2019DeploymentVariant:(id)variant withCompressionTypes:(id)types
{
  if (![(CoreThemeDocument *)self needToCreateForwardstopForPlatform])
  {
    return 0;
  }

  if ([objc_msgSend(variant "renditionType")])
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  [variant production];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return 0;
  }

  compressionType = [variant compressionType];
  if (compressionType != [types objectAtIndex:2])
  {
    compressionType2 = [variant compressionType];
    if (compressionType2 != [types objectAtIndex:0])
    {
      return 0;
    }
  }

  return [(CoreThemeDocument *)self shouldCreate2019ForwardstopForLossless];
}

- (void)createForwardstops:(id)forwardstops withCompressionTypes:(id)types withDeploymentTargets:(id)targets
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ![(CoreThemeDocument *)self isArtworkRenditionEligibleForForwardstop:forwardstops])
  {
    return;
  }

  v9 = [(CoreThemeDocument *)self needToCreateForwardstopFor2018DeploymentVariant:forwardstops withCompressionTypes:types];
  v10 = [(CoreThemeDocument *)self needToCreateForwardstopFor2019DeploymentVariant:forwardstops withCompressionTypes:types];
  if (v9)
  {
    v11 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
    [objc_msgSend(forwardstops "keySpec")];
    [forwardstops copyAttributesInto:v11];
    [v11 setAllowsPaletteImageCompression:{-[CoreThemeDocument shouldAllowPaletteImageCompressionForDeploymentTarget:](self, "shouldAllowPaletteImageCompressionForDeploymentTarget:", 3)}];
    [v11 setAllowsDeepmapCompression:{-[CoreThemeDocument shouldAllowDeepmapCompressionForDeploymentTarget:](self, "shouldAllowDeepmapCompressionForDeploymentTarget:", 3)}];
    [v11 setAllowsHevcCompression:{-[CoreThemeDocument shouldAllowHevcCompressionForDeploymentTarget:](self, "shouldAllowHevcCompressionForDeploymentTarget:", 3)}];
    [v11 setProduction:{objc_msgSend(forwardstops, "production")}];
    [v11 setAsset:{objc_msgSend(forwardstops, "asset")}];
    [v11 setSlices:{objc_msgSend(forwardstops, "slices")}];
    [v11 resetToBaseKeySpec];
    [objc_msgSend(forwardstops "keySpec")];
    [objc_msgSend(v11 "keySpec")];

    if (v10)
    {
      v13 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
      [forwardstops copyAttributesInto:v13];
LABEL_9:
      [v13 setAllowsDeepmap2Compression:{-[CoreThemeDocument shouldAllowDeepmap2CompressionForDeploymentTarget:](self, "shouldAllowDeepmap2CompressionForDeploymentTarget:", 5)}];
      [v13 setProduction:{objc_msgSend(forwardstops, "production")}];
      [v13 setAsset:{objc_msgSend(forwardstops, "asset")}];
      [v13 setSlices:{objc_msgSend(forwardstops, "slices")}];
      [v13 resetToBaseKeySpec];
      [objc_msgSend(forwardstops "keySpec")];
      [objc_msgSend(v13 "keySpec")];

      return;
    }
  }

  else
  {
    [forwardstops setAllowsPaletteImageCompression:{-[CoreThemeDocument shouldAllowPaletteImageCompression](self, "shouldAllowPaletteImageCompression")}];
    [forwardstops setAllowsHevcCompression:{-[CoreThemeDocument shouldAllowHevcCompression](self, "shouldAllowHevcCompression")}];
    [forwardstops setAllowsDeepmapCompression:{-[CoreThemeDocument shouldAllowDeepmapCompression](self, "shouldAllowDeepmapCompression")}];
    if (v10)
    {
      v13 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
      [objc_msgSend(forwardstops "keySpec")];
      [forwardstops copyAttributesInto:v13];
      goto LABEL_9;
    }
  }

  shouldAllowDeepmap2Compression = [(CoreThemeDocument *)self shouldAllowDeepmap2Compression];

  [forwardstops setAllowsDeepmap2Compression:shouldAllowDeepmap2Compression];
}

- (id)compressionTypes
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02768] + 16))
  {
    v4 = MEMORY[0x277D02768];
    do
    {
      [array addObject:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)deploymentTargets
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02770] + 16))
  {
    v4 = MEMORY[0x277D02770];
    do
    {
      [array addObject:{-[CoreThemeDocument deploymentTargetWithIdentifier:](self, "deploymentTargetWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)idioms
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027B0] + 16))
  {
    v4 = MEMORY[0x277D027B0];
    do
    {
      [array addObject:{-[CoreThemeDocument idiomWithIdentifier:](self, "idiomWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)displayGamuts
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02780] + 16))
  {
    v4 = MEMORY[0x277D02780];
    do
    {
      [array addObject:{-[CoreThemeDocument displayGamutWithIdentifier:](self, "displayGamutWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)sizeClasses
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027F8] + 16))
  {
    v4 = MEMORY[0x277D027F8];
    do
    {
      [array addObject:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)featureSetClasses
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027A0] + 16))
  {
    v4 = MEMORY[0x277D027A0];
    do
    {
      [array addObject:{-[CoreThemeDocument graphicsFeatureSetClassWithIdentifier:](self, "graphicsFeatureSetClassWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)directions
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02778] + 16))
  {
    v4 = MEMORY[0x277D02778];
    do
    {
      [array addObject:{-[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)textureFaces
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D027E0] + 16))
  {
    v4 = MEMORY[0x277D027E0];
    do
    {
      [array addObject:{-[CoreThemeDocument textureFaceWithIdentifier:](self, "textureFaceWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)glyphsSizes
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02810] + 16))
  {
    v4 = MEMORY[0x277D02810];
    do
    {
      [array addObject:{-[CoreThemeDocument glyphSizeWithIdentifier:](self, "glyphSizeWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)glyphWeights
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02818] + 16))
  {
    v4 = MEMORY[0x277D02818];
    do
    {
      [array addObject:{-[CoreThemeDocument glyphWeightWithIdentifier:](self, "glyphWeightWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (id)glyphRenderingModes
{
  array = [MEMORY[0x277CBEB18] array];
  if (*(MEMORY[0x277D02808] + 16))
  {
    v4 = MEMORY[0x277D02808];
    do
    {
      [array addObject:{-[CoreThemeDocument vectorGlyphRenderingModeWithIdentifier:](self, "vectorGlyphRenderingModeWithIdentifier:", *v4)}];
      v5 = v4[5];
      v4 += 3;
    }

    while (v5);
  }

  return array;
}

- (void)_createForwardstopRenditions
{
  v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"RenditionSpec" withSortDescriptors:0];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  deploymentTargets = [(CoreThemeDocument *)self deploymentTargets];
  if ([v3 count])
  {
    v6 = 0;
    do
    {
      -[CoreThemeDocument createForwardstops:withCompressionTypes:withDeploymentTargets:](self, "createForwardstops:withCompressionTypes:withDeploymentTargets:", [v3 objectAtIndex:v6++], compressionTypes, deploymentTargets);
    }

    while (v6 < [v3 count]);
  }
}

- (id)createNamedArtworkProductionsForAssets:(id)assets customInfos:(id)infos skipLastStep:(BOOL)step error:(id *)error
{
  stepCopy = step;
  v306 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  _namedImagePartDefinition = [(CoreThemeDocument *)self _namedImagePartDefinition];
  v236 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v230 = [(CoreThemeDocument *)self partWithIdentifier:181];
  v211 = [(CoreThemeDocument *)self partWithIdentifier:42];
  v217 = [(CoreThemeDocument *)self partWithIdentifier:208];
  v207 = [(CoreThemeDocument *)self partWithIdentifier:218];
  v228 = [(CoreThemeDocument *)self partWithIdentifier:220];
  v234 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  v199 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1];
  v198 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:2];
  v197 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:3];
  v223 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1002];
  v222 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1018];
  v201 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1006];
  v206 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1010];
  idioms = [(CoreThemeDocument *)self idioms];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  deploymentTargets = [(CoreThemeDocument *)self deploymentTargets];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  directions = [(CoreThemeDocument *)self directions];
  obj = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedArtworkProduction", 0, 0)}];
  array2 = [MEMORY[0x277CBEB18] array];
  v237 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:10];
  v204 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:11];
  v213 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:12];
  v210 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:20];
  v209 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:23];
  v212 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:30];
  v203 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:21];
  v202 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:24];
  v208 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:31];
  v200 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:34];
  v231 = [(CoreThemeDocument *)self templateRenderingModeWithIdentifier:0];
  v227 = [(CoreThemeDocument *)self templateRenderingModeWithIdentifier:1];
  v225 = [(CoreThemeDocument *)self templateRenderingModeWithIdentifier:2];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v293 = 0u;
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v9 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
  v10 = [v9 countByEnumeratingWithState:&v293 objects:v305 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v294;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v294 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v293 + 1) + 8 * i)), objc_msgSend(*(*(&v293 + 1) + 8 * i), "identifier")}];
      }

      v11 = [v9 countByEnumeratingWithState:&v293 objects:v305 count:16];
    }

    while (v11);
  }

  infosCopy6 = infos;
  v214 = [(CoreThemeDocument *)self _sizeIndexesByNameFromNamedAssetImportInfos:infos];
  assetsCopy = assets;
  selfCopy = self;
  if ([assets count])
  {
    v16 = 0;
    v17 = *MEMORY[0x277CBF3A0];
    v18 = *(MEMORY[0x277CBF3A0] + 8);
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
    v241 = *MEMORY[0x277CBEEE8];
    v215 = *(MEMORY[0x277CBF3A8] + 8);
    v216 = *MEMORY[0x277CBF3A8];
    v232 = *MEMORY[0x277CBED10];
    assetsCopy2 = assets;
    while (1)
    {
      v21 = [assetsCopy objectAtIndex:v16];
      v22 = [infosCopy6 count];
      v244 = v16;
      if (v22 != [assetsCopy count])
      {
        break;
      }

      v23 = [infosCopy6 objectAtIndex:v16];
      v24 = v23;
      if (v21 == v241)
      {
        name = [v23 name];
        v25 = v24;
        if (!v24)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_15;
        }

        v25 = v23;
        name = [v23 name];
      }

      if ([v25 renditionType] != 1002 && objc_msgSend(v25, "renditionType") != 1018 && objc_msgSend(v25, "renditionType") != 1004 && objc_msgSend(v25, "renditionType") != 1006)
      {
        v220 = v20;
        v251 = v19;
        v254 = v18;
        v61 = v25;
        v62 = v215;
        v63 = v216;
        if ([v25 renditionType] != 1000)
        {
          [v21 sourceImageSizeWithDocument:self];
          v63 = v64;
          v62 = v65;
        }

        [v25 sliceInsets];
        v67 = v66;
        v69 = v68;
        v71 = v70;
        v73 = v72;
        [v25 resizableSliceSize];
        v196 = v74;
        v76 = v75;
        v77 = [v21 fileURLWithDocument:self];
        v194 = v63;
        v195 = v62;
        v246 = v76;
        v248 = v67;
        if ([v25 renditionType] == 1000 || objc_msgSend(v25, "renditionType") == 1017 || objc_msgSend(objc_msgSend(v77, "pathExtension"), "caseInsensitiveCompare:", @"PDF") && objc_msgSend(objc_msgSend(v77, "pathExtension"), "caseInsensitiveCompare:", @"SVG"))
        {
          v31 = v220;
          v32 = v251;
          v33 = v254;
          v34 = v17;
        }

        else
        {
          v166 = assetsCopy;
          v193 = v17;
          fileScaleFactor = [v21 fileScaleFactor];
          scaleFactor = [v21 scaleFactor];
          [v61 alignmentRect];
          v34 = v169;
          v33 = v170;
          v32 = v171;
          v31 = v172;
          if (fileScaleFactor)
          {
            v173 = fileScaleFactor;
          }

          else
          {
            v175 = +[TDAsset scaleFactorFromImageFilename:](TDAsset, "scaleFactorFromImageFilename:", [v77 lastPathComponent]);
            if (v175)
            {
              v173 = v175;
            }

            else
            {
              v173 = 1.0;
            }
          }

          [v21 setFileScaleFactor:v173];
          v176 = scaleFactor / v173;
          assetsCopy = v166;
          if (v176 != 1.0)
          {
            v69 = v69 * v176;
            v71 = v71 * v176;
            v73 = v73 * v176;
            v196 = v196 * v176;
            v246 = v246 * v176;
            v248 = v248 * v176;
            v34 = v34 * v176;
            v33 = v33 * v176;
            v31 = v31 * v176;
            v32 = v32 * v176;
          }

          v17 = v193;
        }

        v25 = v61;
        v29 = -[CoreThemeDocument slicesComputedForImageSize:usingSliceInsets:resizableSliceSize:withRenditionType:](self, "slicesComputedForImageSize:usingSliceInsets:resizableSliceSize:withRenditionType:", [v61 renditionType], v194, v195, v248, v69, v71, v73, v196, v246);
        v78 = [v29 count];
        if (v78 < 1)
        {
          v245 = 0;
          v247 = v234;
          v19 = v251;
          v18 = v254;
          v20 = v220;
          goto LABEL_30;
        }

        v79 = v78;
        v19 = v251;
        v18 = v254;
        v20 = v220;
        if ([v61 renditionType] < 1)
        {
          goto LABEL_306;
        }

        if (v79 == 9)
        {
          v25 = v61;
          renditionType = [v61 renditionType];
          v245 = 0;
          v35 = v234;
          if (renditionType == 3)
          {
            v35 = v197;
          }
        }

        else
        {
          if (v79 != 4)
          {
LABEL_306:
            v245 = 0;
            v247 = v234;
            v25 = v61;
            goto LABEL_30;
          }

          v25 = v61;
          if ([v61 renditionType] == 1)
          {
            v80 = v199;
          }

          else
          {
            v80 = v234;
          }

          renditionType2 = [v61 renditionType];
          v245 = 0;
          v35 = v198;
          if (renditionType2 != 2)
          {
            v35 = v80;
          }
        }

        goto LABEL_29;
      }

      if ([v25 renditionType] == 1002 || objc_msgSend(v25, "renditionType") == 1018)
      {
        renditionType3 = [v25 renditionType];
        v245 = 0;
        v29 = 0;
        v30 = v223;
        if (renditionType3 != 1002)
        {
          v30 = v222;
        }
      }

      else
      {
        if ([v25 renditionType] == 1004)
        {
          v52 = v25;
          if (!self->_explicitlyPackedIdentifiers)
          {
            self->_explicitlyPackedIdentifiers = objc_alloc_init(MEMORY[0x277CBEB38]);
          }

          v292 = 0u;
          v291 = 0u;
          v290 = 0u;
          v289 = 0u;
          containedImageNames = [v25 containedImageNames];
          v53 = [containedImageNames countByEnumeratingWithState:&v289 objects:v304 count:16];
          if (v53)
          {
            v54 = v53;
            v55 = *v290;
            do
            {
              for (j = 0; j != v54; ++j)
              {
                if (*v290 != v55)
                {
                  objc_enumerationMutation(containedImageNames);
                }

                -[NSMutableDictionary setObject:forKey:](self->_explicitlyPackedIdentifiers, "setObject:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v52, "nameIdentifier")}], *(*(&v289 + 1) + 8 * j));
              }

              v54 = [containedImageNames countByEnumeratingWithState:&v289 objects:v304 count:16];
            }

            while (v54);
          }

          explicitlyPackedPackings = self->_explicitlyPackedPackings;
          if (!explicitlyPackedPackings)
          {
            explicitlyPackedPackings = objc_alloc_init(MEMORY[0x277CBEB38]);
            self->_explicitlyPackedPackings = explicitlyPackedPackings;
          }

          -[NSMutableDictionary setObject:forKey:](explicitlyPackedPackings, "setObject:forKey:", [v52 name], objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v52, "nameIdentifier")));
          explicitlyPackedContents = self->_explicitlyPackedContents;
          assetsCopy = assetsCopy2;
          if (!explicitlyPackedContents)
          {
            explicitlyPackedContents = objc_alloc_init(MEMORY[0x277CBEB38]);
            self->_explicitlyPackedContents = explicitlyPackedContents;
          }

          -[NSMutableDictionary setObject:forKey:](explicitlyPackedContents, "setObject:forKey:", [v52 containedImageNames], objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v52, "nameIdentifier")));
          infosCopy6 = infos;
          goto LABEL_303;
        }

        renditionType4 = [v25 renditionType];
        v245 = 0;
        v29 = 0;
        v30 = v234;
        if (renditionType4 == 1006)
        {
          v30 = v201;
        }
      }

      v247 = v30;
      v31 = v20;
      v32 = v19;
      v33 = v18;
      v34 = v17;
LABEL_30:
      v250 = v21;
      v252 = v25;
      if ([v25 renditionType] == 1002 || objc_msgSend(v25, "renditionType") == 1018)
      {
        v287 = 0u;
        v288 = 0u;
        v285 = 0u;
        v286 = 0u;
        v36 = [obj countByEnumeratingWithState:&v285 objects:v303 count:16];
        if (!v36)
        {
          goto LABEL_114;
        }

        v37 = v36;
        v38 = *v286;
LABEL_34:
        v39 = 0;
        while (1)
        {
          if (*v286 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v285 + 1) + 8 * v39);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v40 "name")])
          {
            break;
          }

          if (v37 == ++v39)
          {
            v37 = [obj countByEnumeratingWithState:&v285 objects:v303 count:16];
            if (v37)
            {
              goto LABEL_34;
            }

            goto LABEL_114;
          }
        }
      }

      else if ([v25 iconSize])
      {
        v283 = 0uLL;
        v284 = 0uLL;
        v281 = 0uLL;
        v282 = 0uLL;
        v41 = [obj countByEnumeratingWithState:&v281 objects:v302 count:16];
        if (!v41)
        {
          goto LABEL_114;
        }

        v42 = v41;
        v43 = *v282;
LABEL_45:
        v44 = 0;
        while (1)
        {
          if (*v282 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v281 + 1) + 8 * v44);
          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v40 "name")])
          {
            break;
          }

          if (v42 == ++v44)
          {
            v42 = [obj countByEnumeratingWithState:&v281 objects:v302 count:16];
            v45 = 0;
            if (v42)
            {
              goto LABEL_45;
            }

            goto LABEL_115;
          }
        }
      }

      else
      {
        v279 = 0uLL;
        v280 = 0uLL;
        v277 = 0uLL;
        v278 = 0uLL;
        v46 = [obj countByEnumeratingWithState:&v277 objects:v301 count:16];
        if (!v46)
        {
          goto LABEL_114;
        }

        v47 = v46;
        v48 = *v278;
LABEL_55:
        v49 = 0;
        while (1)
        {
          if (*v278 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v277 + 1) + 8 * v49);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass() & 1) == 0 && ([objc_msgSend(objc_msgSend(v40 "name")])
              {
                break;
              }
            }
          }

          if (v47 == ++v49)
          {
            v47 = [obj countByEnumeratingWithState:&v277 objects:v301 count:16];
            v45 = 0;
            if (v47)
            {
              goto LABEL_55;
            }

            goto LABEL_115;
          }
        }
      }

      if (!v40)
      {
        goto LABEL_114;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v252 renditionType] != 1002 && objc_msgSend(v252, "renditionType") != 1018)
      {
        flattenedImageProduction = [v40 flattenedImageProduction];
        v50 = v245;
        if (flattenedImageProduction)
        {
          v40 = flattenedImageProduction;
          goto LABEL_112;
        }

        v82 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"NamedArtworkProduction"];
        [v40 setFlattenedImageProduction:v82];
        v83 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
        [v83 setElement:{objc_msgSend(objc_msgSend(v40, "baseKeySpec"), "element")}];
        [v83 setPart:v217];
        [v82 setBaseKeySpec:v83];
        [v82 setRenditionType:v234];

        if (v82)
        {
          v40 = v82;
LABEL_112:
          v84 = v252;
          if ((v50 & 1) == 0)
          {
            goto LABEL_177;
          }

          goto LABEL_178;
        }

LABEL_114:
        v45 = 0;
        goto LABEL_115;
      }

      v50 = v245;
      if ([v252 renditionType] != 1002 && objc_msgSend(v252, "renditionType") != 1018 || !objc_msgSend(v40, "isMemberOfClass:", objc_opt_class()))
      {
        goto LABEL_112;
      }

      v45 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"NamedArtworkProduction"];
      [v45 setBaseKeySpec:{objc_msgSend(v40, "baseKeySpec")}];
      [v45 setRenditions:{objc_msgSend(v40, "renditions")}];
      [objc_msgSend(v45 "baseKeySpec")];
      [v45 setRenditionType:{objc_msgSend(v40, "renditionType")}];
LABEL_115:
      if ([v252 renditionType] == 1002 || objc_msgSend(v252, "renditionType") == 1018)
      {
        v85 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"LayerStackProduction"];
        v40 = v85;
        v50 = v245;
        if (v45)
        {
          [v85 setFlattenedImageProduction:v45];
        }
      }

      else
      {
        v50 = v245;
        if ([v252 iconSize])
        {
          v40 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"MultisizeImageSetProduction"];
          [v40 setSizeIndexes:{objc_msgSend(v214, "objectForKey:", objc_msgSend(v252, "name"))}];
          v86 = v40;
        }

        else
        {
          v86 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"NamedArtworkProduction"];
          v40 = v86;
        }

        [v86 setMakeOpaqueIfPossible:1];
      }

      v87 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
      if (v50)
      {
        _createNamedElementWithNextAvailableIdentifier = [(CoreThemeDocument *)selfCopy _createNamedElementWithNextAvailableIdentifier];
      }

      else
      {
        _createNamedElementWithNextAvailableIdentifier = -[CoreThemeDocument _createNamedElementWithIdentifier:](selfCopy, "_createNamedElementWithIdentifier:", [v252 nameIdentifier]);
      }

      v89 = _createNamedElementWithNextAvailableIdentifier;
      [_createNamedElementWithNextAvailableIdentifier setName:name];
      [v89 setProduction:v40];
      [v87 setElement:v236];
      v84 = v252;
      if ((v50 & 1) != 0 || (v90 = [v252 iconSize], v91 = v228, !v90))
      {
        v91 = v230;
      }

      [v87 setPart:v91];
      [v87 setNameIdentifier:{objc_msgSend(objc_msgSend(v89, "identifier"), "unsignedIntValue")}];
      [v40 setBaseKeySpec:v87];

      [v40 setPartDefinition:_namedImagePartDefinition];
      [v40 setIsExcludedFromFilter:v232];
      [v40 setRenditionType:v247];
      [v40 setRenditionSubtype:v237];
      [v40 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Named Image from: %@", objc_msgSend(v21, "name"))}];
      if (v50)
      {
        if (+[TDAsset isTemplateFromImageFilename:](TDAsset, "isTemplateFromImageFilename:", [v21 name]))
        {
          v92 = v40;
          v93 = v227;
        }

        else
        {
          v92 = v40;
          v93 = v231;
        }

        [v92 setTemplateRenderingMode:v93];
        goto LABEL_176;
      }

      renditionSubtype = [v252 renditionSubtype];
      if (renditionSubtype > 22)
      {
        if (renditionSubtype <= 29)
        {
          v95 = v209;
          if (renditionSubtype != 23)
          {
            v95 = v202;
            if (renditionSubtype != 24)
            {
              goto LABEL_151;
            }
          }
        }

        else
        {
          v95 = v212;
          if (renditionSubtype != 30)
          {
            v95 = v208;
            if (renditionSubtype != 31)
            {
              if (renditionSubtype != 34)
              {
                goto LABEL_151;
              }

              v95 = v200;
            }
          }
        }
      }

      else if (renditionSubtype <= 11)
      {
        v95 = v237;
        if (renditionSubtype != 10)
        {
          v95 = v204;
          if (renditionSubtype != 11)
          {
            goto LABEL_151;
          }
        }
      }

      else
      {
        v95 = v213;
        if (renditionSubtype != 12)
        {
          v95 = v210;
          if (renditionSubtype != 20)
          {
            v95 = v203;
            if (renditionSubtype != 21)
            {
              goto LABEL_151;
            }
          }
        }
      }

      [v40 setRenditionSubtype:v95];
LABEL_151:
      templateRenderingMode = [v252 templateRenderingMode];
      v97 = v231;
      if (!templateRenderingMode || (v97 = v225, templateRenderingMode == 2) || (v97 = v227, templateRenderingMode == 1))
      {
        [v40 setTemplateRenderingMode:v97];
      }

      [v40 setOptOutOfThinning:{objc_msgSend(v252, "optOutOfThinning", v97)}];
      [v40 setIsFlippable:{objc_msgSend(v252, "isFlippable")}];
      [v40 setDateOfLastChange:{objc_msgSend(v252, "modificationDate")}];
      [v40 setHasCustomDateOfLastChange:1];
      if ([(CoreThemeDocument *)selfCopy featureEnabled:17])
      {
        [v40 setPreservesVectorRepresentation:{objc_msgSend(v252, "preservesVectorRepresentation")}];
      }

      [v40 setAutoscalingType:{objc_msgSend(v252, "autoscalingType")}];
      tags = [v252 tags];
      if ([tags count] && -[CoreThemeDocument featureEnabled:](selfCopy, "featureEnabled:", 1))
      {
        v221 = v29;
        v99 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v273 = 0u;
        v274 = 0u;
        v275 = 0u;
        v276 = 0u;
        v100 = [tags countByEnumeratingWithState:&v273 objects:v300 count:16];
        if (v100)
        {
          v101 = v100;
          v102 = *v274;
          do
          {
            for (k = 0; k != v101; ++k)
            {
              if (*v274 != v102)
              {
                objc_enumerationMutation(tags);
              }

              v104 = *(*(&v273 + 1) + 8 * k);
              v105 = [v8 objectForKey:v104];
              if ([v105 count])
              {
                if ([v105 count] != 1)
                {
                  [CoreThemeDocument createNamedArtworkProductionsForAssets:customInfos:skipLastStep:error:];
                }

                v106 = [v105 objectAtIndex:0];
              }

              else
              {
                v106 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"Tag"];
                [v106 setIdentifier:v104];
                [v8 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v106), v104}];
              }

              [v99 addObject:v106];
            }

            v101 = [tags countByEnumeratingWithState:&v273 objects:v300 count:16];
          }

          while (v101);
        }

        [v40 addTags:v99];
        v107 = [tags count];
        if (v107 != [v99 count])
        {
          [CoreThemeDocument createNamedArtworkProductionsForAssets:customInfos:skipLastStep:error:];
        }

        assetsCopy = assetsCopy2;
        v84 = v252;
        v50 = v245;
        v29 = v221;
      }

      if ([objc_msgSend(v84 "universalTypeIdentifier")])
      {
        [v40 setUniversalTypeIdentifier:{objc_msgSend(v84, "universalTypeIdentifier")}];
      }

LABEL_176:
      [obj addObject:v40];
      [array addObject:v40];
      if ((v50 & 1) == 0)
      {
LABEL_177:
        iconSize = [v84 iconSize];
        v51 = @"MultisizeImageRenditionSpec";
        if (iconSize)
        {
          goto LABEL_182;
        }
      }

LABEL_178:
      identifier = [v247 identifier];
      v51 = @"LayerStackRenditionSpec";
      if (identifier != 1002)
      {
        if ([v247 identifier] == 1018)
        {
          v51 = @"LayerStackRenditionSpec";
        }

        else
        {
          v51 = @"SimpleArtworkRenditionSpec";
        }
      }

LABEL_182:
      v110 = [(CoreThemeDocument *)selfCopy newObjectForEntity:v51];
      v111 = v110;
      [v110 setProduction:v40];
      [v110 setPreserveForArchiveOnly:{objc_msgSend(v84, "preserveForArchiveOnly")}];
      objc_opt_class();
      infosCopy6 = infos;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v110 setAsset:v250];
          if (v50)
          {
            v50 = 1;
          }

          else
          {
            [v84 canvasSize];
            [v110 setCanvasSize:?];
            v249 = v110;
            [v110 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", objc_msgSend(v84, "compressionType"))}];
            v120 = objc_alloc_init(MEMORY[0x277CBEB40]);
            v269 = 0u;
            v270 = 0u;
            v271 = 0u;
            v272 = 0u;
            layerReferences = [v84 layerReferences];
            v122 = [layerReferences countByEnumeratingWithState:&v269 objects:v299 count:16];
            if (v122)
            {
              v123 = v122;
              v124 = *v270;
              do
              {
                for (m = 0; m != v123; ++m)
                {
                  if (*v270 != v124)
                  {
                    objc_enumerationMutation(layerReferences);
                  }

                  v126 = *(*(&v269 + 1) + 8 * m);
                  v127 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"LayerReference"];
                  [v126 frame];
                  [v127 setFrameRect:{floor(v128), floor(v129)}];
                  [v127 setName:{objc_msgSend(v126, "layerName")}];
                  v130 = MEMORY[0x277CCABB0];
                  [v126 opacity];
                  [v127 setOpacity:{objc_msgSend(v130, "numberWithDouble:")}];
                  [v127 setBlendMode:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(v126, "blendMode"))}];
                  [v127 setMakeOpaqueIfPossible:{objc_msgSend(v126, "makeOpaqueIfPossible")}];
                  [v127 setGradientOrColorName:{objc_msgSend(v126, "gradientOrColorName")}];
                  [v126 blurStrength];
                  [v127 setBlurStrength:?];
                  [v127 setHasLightingEffects:{objc_msgSend(v126, "hasLightingEffects")}];
                  [v127 setGathersSpecularByElement:{objc_msgSend(v126, "gathersSpecularByElement")}];
                  [v127 setShadowStyle:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v126, "shadowStyle"))}];
                  v131 = MEMORY[0x277CCABB0];
                  [v126 shadowOpacity];
                  [v127 setShadowOpacity:{objc_msgSend(v131, "numberWithDouble:")}];
                  [v127 setHasSpecular:{objc_msgSend(v126, "hasSpecular")}];
                  v132 = MEMORY[0x277CCABB0];
                  [v126 translucency];
                  [v127 setTranslucency:{objc_msgSend(v132, "numberWithDouble:")}];
                  v133 = [obj filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v126, "layerName"))}];
                  if ([v133 count] && (objc_msgSend(v133, "objectAtIndex:", 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (v134 = objc_msgSend(v133, "objectAtIndex:", 0)) != 0)
                  {
                    v135 = v134;
                    [v127 setReference:v134];
                    [v135 setMakeOpaqueIfPossible:{objc_msgSend(v127, "makeOpaqueIfPossible")}];
                  }

                  else
                  {
                    [array2 addObject:v127];
                  }

                  [v120 addObject:v127];
                }

                v123 = [layerReferences countByEnumeratingWithState:&v269 objects:v299 count:16];
              }

              while (v123);
            }

            v110 = v249;
            [v249 setLayerReferences:v120];

            v50 = 0;
            assetsCopy = assetsCopy2;
            infosCopy6 = infos;
            v84 = v252;
          }
        }

        goto LABEL_238;
      }

      if (![objc_msgSend(objc_msgSend(v250 fileURLWithDocument:{selfCopy), "pathExtension"), "caseInsensitiveCompare:", @"SVG"}])
      {
        [v110 setColorSpaceID:{objc_msgSend(v84, "colorSpaceID")}];
      }

      [v110 setAsset:v250];
      [v84 physicalSizeInMeters];
      if (v112 <= 0.0 || v113 <= 0.0)
      {
        v50 = v245;
        if (v112 == 0.0 && v113 == 0.0)
        {
          [v110 setPhysicalSizeInMeters:{v216, v215}];
        }

        else
        {
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
        }
      }

      else
      {
        [v110 setPhysicalSizeInMeters:?];
        v50 = v245;
      }

      v307.origin.x = v34;
      v307.origin.y = v33;
      v307.size.width = v32;
      v307.size.height = v31;
      if (CGRectIsEmpty(v307))
      {
        if (v50)
        {
          goto LABEL_199;
        }

        [v84 alignmentRect];
        v34 = v114;
        v33 = v115;
        v32 = v116;
        v31 = v117;
      }

      [v110 setAlignmentRect:{v34, v33, v32, v31}];
LABEL_199:
      if ([v29 count])
      {
        [v110 setSlices:v29];
      }

      if ([v84 renditionType] == 1000)
      {
        if (![(CoreThemeDocument *)selfCopy featureEnabled:5])
        {
          goto LABEL_236;
        }

        if ([v84 compressionType] == 2 || !objc_msgSend(v84, "compressionType") || objc_msgSend(v84, "compressionType") == 1)
        {
          goto LABEL_235;
        }

        [v110 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", 0)}];
        if ([v84 compressionType] && objc_msgSend(v84, "compressionType") != 1)
        {
          NSLog(&cfstr_CoreuiOnlyLoss.isa, [v84 name], objc_msgSend(v84, "fileURL"));
        }
      }

      else
      {
        compressionType = [v84 compressionType];
        if ((compressionType - 4) >= 2)
        {
          if (compressionType == 3)
          {
            if (![(CoreThemeDocument *)selfCopy featureEnabled:3])
            {
              goto LABEL_236;
            }
          }

          else if (compressionType == 7)
          {
            v119 = selfCopy;
            if (![(CoreThemeDocument *)selfCopy featureEnabled:10])
            {
LABEL_232:
              if ([(CoreThemeDocument *)v119 featureEnabled:3])
              {
                v136 = compressionTypes;
                compressionType2 = 3;
LABEL_237:
                [v110 setCompressionType:{objc_msgSend(v136, "objectAtIndexedSubscript:", compressionType2)}];
                goto LABEL_238;
              }

LABEL_236:
              v136 = compressionTypes;
              compressionType2 = 0;
              goto LABEL_237;
            }
          }

LABEL_235:
          compressionType2 = [v84 compressionType];
          v136 = compressionTypes;
          goto LABEL_237;
        }

        v119 = selfCopy;
        if (![(CoreThemeDocument *)selfCopy featureEnabled:4])
        {
          goto LABEL_232;
        }

        [v110 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", objc_msgSend(v84, "compressionType"))}];
        if ([(CoreThemeDocument *)selfCopy targetPlatform]== 1 || [(CoreThemeDocument *)selfCopy targetPlatform]== 4 || [(CoreThemeDocument *)selfCopy targetPlatform]== 3)
        {
          [objc_msgSend(v110 "keySpec")];
        }
      }

LABEL_238:
      [v110 resetToBaseKeySpec];
      keySpec = [v110 keySpec];
      [keySpec setScaleFactor:{objc_msgSend(v250, "scaleFactor")}];
      if ([v40 preservesVectorRepresentation] && !objc_msgSend(keySpec, "scaleFactor") && (!objc_msgSend(objc_msgSend(objc_msgSend(v250, "fileURLWithDocument:", selfCopy), "pathExtension"), "caseInsensitiveCompare:", @"PDF") || !objc_msgSend(objc_msgSend(objc_msgSend(v250, "fileURLWithDocument:", selfCopy), "pathExtension"), "caseInsensitiveCompare:", @"SVG") && !objc_msgSend(objc_msgSend(keySpec, "glyphWeight"), "identifier")))
      {
        [keySpec setScaleFactor:{objc_msgSend(v250, "fileScaleFactor")}];
        [keySpec setPart:v211];
      }

      v139 = v50;
      if (v50)
      {
        [keySpec setSubtype:{+[TDAsset subtypeFromImageFilename:](TDAsset, "subtypeFromImageFilename:", objc_msgSend(v250, "name"))}];
        v84 = v252;
        idiom = +[TDAsset idiomFromImageFilename:](TDAsset, "idiomFromImageFilename:", [v250 name]);
      }

      else
      {
        [keySpec setSubtype:{objc_msgSend(v84, "subtype")}];
        idiom = [v84 idiom];
      }

      v141 = [idioms objectAtIndex:idiom];
      [keySpec setIdiom:v141];
      if ([v141 identifier] == 6)
      {
        [v40 setMakeOpaqueIfPossible:1];
      }

      if (!v139)
      {
        [keySpec setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v84, "displayGamut"))}];
        v142 = [sizeClasses objectAtIndexedSubscript:{objc_msgSend(v84, "sizeClassHorizontal")}];
        v143 = [sizeClasses objectAtIndexedSubscript:{objc_msgSend(v252, "sizeClassVertical")}];
        [keySpec setSizeClassHorizontal:v142];
        v144 = v143;
        v84 = v252;
        [keySpec setSizeClassVertical:v144];
        [keySpec setMemoryClass:{objc_msgSend(v252, "memoryClass")}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          goto LABEL_257;
        }

        compressionType3 = [v110 compressionType];
        if (compressionType3 == [compressionTypes objectAtIndexedSubscript:4] || (v146 = objc_msgSend(v110, "compressionType"), v146 == objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", 5)))
        {
          v84 = v252;
          if (![(CoreThemeDocument *)selfCopy targetPlatform])
          {
            goto LABEL_267;
          }

          if ([(CoreThemeDocument *)selfCopy targetPlatform]== 2)
          {
            goto LABEL_267;
          }

          [keySpec setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", 2)}];
          if ([(CoreThemeDocument *)selfCopy targetPlatform]!= 1)
          {
            goto LABEL_267;
          }

          v148 = deploymentTargets;
          v149 = 1;
        }

        else
        {
          v147 = [objc_msgSend(objc_msgSend(v110 "asset")];
          if ([v147 caseInsensitiveCompare:@"HEIF"] && objc_msgSend(v147, "caseInsensitiveCompare:", @"HEIC"))
          {
            v84 = v252;
LABEL_257:
            [keySpec setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(v84, "graphicsFeatureSetClass"))}];
LABEL_267:
            if ([v84 appearanceName])
            {
              [keySpec setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](selfCopy, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v84, "appearanceIdentifier"), objc_msgSend(v84, "appearanceName"), 1)}];
            }

            if ([v84 localizationName])
            {
              [keySpec setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](selfCopy, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v84, "localizationIdentifier"), objc_msgSend(v84, "localizationName"), 1)}];
            }

            [keySpec setDirection:{objc_msgSend(directions, "objectAtIndexedSubscript:", objc_msgSend(v84, "layoutDirection"))}];
            goto LABEL_272;
          }

          v84 = v252;
          if ([(CoreThemeDocument *)selfCopy targetPlatform]!= 1 && [(CoreThemeDocument *)selfCopy targetPlatform]!= 4 && [(CoreThemeDocument *)selfCopy targetPlatform]!= 3)
          {
            goto LABEL_267;
          }

          v148 = deploymentTargets;
          v149 = 2;
        }

        [keySpec setTarget:{objc_msgSend(v148, "objectAtIndexedSubscript:", v149)}];
        goto LABEL_267;
      }

      [keySpec setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", 0)}];
      [keySpec setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", 0)}];
      [keySpec setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", 0)}];
LABEL_272:
      if ([v84 iconSize])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            sizeIndexes = [v40 sizeIndexes];
            v268[0] = MEMORY[0x277D85DD0];
            v268[1] = 3221225472;
            v268[2] = __91__CoreThemeDocument_createNamedArtworkProductionsForAssets_customInfos_skipLastStep_error___block_invoke;
            v268[3] = &unk_278EBB0C0;
            v268[4] = v84;
            v151 = [objc_msgSend(sizeIndexes objectsPassingTest:{v268), "anyObject"}];
            if (v151)
            {
              v152 = v151;
              [keySpec setDimension2:{objc_msgSend(v151, "index")}];
              [v110 setSizeIndex:v152];
            }

            multisizeImageSetRenditions = [v40 multisizeImageSetRenditions];
            v267[0] = MEMORY[0x277D85DD0];
            v267[1] = 3221225472;
            v267[2] = __91__CoreThemeDocument_createNamedArtworkProductionsForAssets_customInfos_skipLastStep_error___block_invoke_2;
            v267[3] = &unk_278EBB0C0;
            v267[4] = keySpec;
            v154 = [objc_msgSend(multisizeImageSetRenditions objectsPassingTest:{v267), "anyObject"}];
            if (v154)
            {
              [v110 setMultisizeImageSetRendition:v154];
              v84 = v252;
            }

            else
            {
              v155 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"MultisizeImageSetRenditionSpec"];
              [v155 setRenditionType:v206];
              infosCopy6 = infos;
              v156 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
              [v156 setElement:v236];
              [v156 setPart:v207];
              [v156 setNameIdentifier:{objc_msgSend(v252, "nameIdentifier")}];
              [v156 setIdiom:{objc_msgSend(keySpec, "idiom")}];
              [v156 setSubtype:{objc_msgSend(keySpec, "subtype")}];
              [v155 setKeySpec:v156];

              [v155 setProduction:v40];
              [v110 setMultisizeImageSetRendition:v155];
              v157 = v155;
              v84 = v252;
              [v157 setMultisizeImageSetProduction:v40];
            }
          }
        }
      }

      [v110 setPreserveForArchiveOnly:{objc_msgSend(v84, "preserveForArchiveOnly")}];
      if ([(CoreThemeDocument *)selfCopy targetPlatform])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          compressionType4 = [v110 compressionType];
          if ((compressionType4 == [compressionTypes objectAtIndexedSubscript:4] || (v159 = objc_msgSend(v110, "compressionType"), v159 == objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", 5))) && objc_msgSend(objc_msgSend(objc_msgSend(v110, "keySpec"), "target"), "identifier") == 1)
          {
            v160 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"SimpleArtworkRenditionSpec"];
            [v160 setProduction:v40];
            [v160 setAsset:{objc_msgSend(v110, "asset")}];
            [v110 alignmentRect];
            [v160 setAlignmentRect:?];
            [v160 setSlices:{objc_msgSend(v110, "slices")}];
            [v160 setIsBackstop:1];
            [v110 copyAttributesInto:v160];
            if ([(CoreThemeDocument *)selfCopy featureEnabled:3])
            {
              v161 = 3;
            }

            else
            {
              v161 = 0;
            }

            [v160 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", v161)}];
            if ([objc_msgSend(v160 "compressionType")] == 3)
            {
              [v160 setAllowsHevcCompression:{-[CoreThemeDocument shouldAllowHevcCompression](selfCopy, "shouldAllowHevcCompression")}];
            }

            else if (![objc_msgSend(v160 "compressionType")])
            {
              [v160 setAllowsPaletteImageCompression:{-[CoreThemeDocument shouldAllowPaletteImageCompression](selfCopy, "shouldAllowPaletteImageCompression")}];
              [v160 setAllowsDeepmapCompression:{-[CoreThemeDocument shouldAllowDeepmapCompression](selfCopy, "shouldAllowDeepmapCompression")}];
              [v160 setAllowsDeepmap2Compression:{-[CoreThemeDocument shouldAllowDeepmap2Compression](selfCopy, "shouldAllowDeepmap2Compression")}];
            }

            [v160 resetToBaseKeySpec];
            keySpec2 = [v160 keySpec];
            [keySpec2 setIdiom:{objc_msgSend(objc_msgSend(v110, "keySpec"), "idiom")}];
            [keySpec2 setScaleFactor:{objc_msgSend(objc_msgSend(v110, "keySpec"), "scaleFactor")}];
            [keySpec2 setSubtype:{objc_msgSend(objc_msgSend(v110, "keySpec"), "subtype")}];
            [keySpec2 setGamut:{objc_msgSend(objc_msgSend(v110, "keySpec"), "gamut")}];
            [keySpec2 setSizeClassHorizontal:{objc_msgSend(objc_msgSend(v110, "keySpec"), "sizeClassHorizontal")}];
            [keySpec2 setSizeClassVertical:{objc_msgSend(objc_msgSend(v110, "keySpec"), "sizeClassVertical")}];
            [keySpec2 setMemoryClass:{objc_msgSend(objc_msgSend(v110, "keySpec"), "memoryClass")}];
            [keySpec2 setDirection:{objc_msgSend(objc_msgSend(v110, "keySpec"), "direction")}];
            [keySpec2 setGraphicsFeatureSetClass:0];
            if (([v160 allowsPaletteImageCompression] & 1) != 0 || (objc_msgSend(v160, "allowsHevcCompression") & 1) != 0 || objc_msgSend(v160, "allowsDeepmapCompression"))
            {
              [objc_msgSend(v160 "keySpec")];
            }

            if ([v160 allowsDeepmap2Compression])
            {
              [objc_msgSend(v160 "keySpec")];
            }

            infosCopy6 = infos;
          }

          else
          {
            v162 = [objc_msgSend(objc_msgSend(v110 "asset")];
            if ((![v162 caseInsensitiveCompare:@"HEIF"] || !objc_msgSend(v162, "caseInsensitiveCompare:", @"HEIC")) && objc_msgSend(objc_msgSend(objc_msgSend(v110, "keySpec"), "target"), "identifier") == 2)
            {
              v163 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"SimpleArtworkRenditionSpec"];
              [v163 setProduction:v40];
              [v163 resetToBaseKeySpec];
              keySpec3 = [v163 keySpec];
              [v163 setAsset:{objc_msgSend(v110, "asset")}];
              [v110 alignmentRect];
              [v163 setAlignmentRect:?];
              [v163 setSlices:{objc_msgSend(v110, "slices")}];
              [v163 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", 3)}];
              [v163 setIsBackstop:1];
              [keySpec3 setIdiom:{objc_msgSend(objc_msgSend(v110, "keySpec"), "idiom")}];
              [keySpec3 setScaleFactor:{objc_msgSend(objc_msgSend(v110, "keySpec"), "scaleFactor")}];
              [keySpec3 setSubtype:{objc_msgSend(objc_msgSend(v110, "keySpec"), "subtype")}];
              [keySpec3 setGamut:{objc_msgSend(objc_msgSend(v110, "keySpec"), "gamut")}];
              [keySpec3 setSizeClassHorizontal:{objc_msgSend(objc_msgSend(v110, "keySpec"), "sizeClassHorizontal")}];
              [keySpec3 setSizeClassVertical:{objc_msgSend(objc_msgSend(v110, "keySpec"), "sizeClassVertical")}];
              [keySpec3 setMemoryClass:{objc_msgSend(objc_msgSend(v110, "keySpec"), "memoryClass")}];
              [keySpec3 setDirection:{objc_msgSend(objc_msgSend(v110, "keySpec"), "direction")}];
              [keySpec3 setGraphicsFeatureSetClass:0];
              [keySpec3 setAppearance:{objc_msgSend(objc_msgSend(v110, "keySpec"), "appearance")}];
              [keySpec3 setTarget:{objc_msgSend(deploymentTargets, "objectAtIndexedSubscript:", 0)}];
            }
          }
        }
      }

LABEL_303:
      v16 = v244 + 1;
      self = selfCopy;
      if (v244 + 1 >= [assetsCopy count])
      {
        goto LABEL_318;
      }
    }

    if (v21 == v241)
    {
      name2 = [0 name];
    }

    else
    {
LABEL_15:
      name2 = [v21 baseName];
    }

    name = name2;
    v25 = 0;
LABEL_28:
    v29 = 0;
    v245 = 1;
    v31 = v20;
    v32 = v19;
    v33 = v18;
    v34 = v17;
    v35 = v234;
LABEL_29:
    v247 = v35;
    goto LABEL_30;
  }

LABEL_318:
  if (stepCopy)
  {
  }

  else
  {
    [(CoreThemeDocument *)self _removeRedundantPDFBasedRenditionsForAssets:assetsCopy];
    v265 = 0u;
    v266 = 0u;
    v263 = 0u;
    v264 = 0u;
    v177 = [array2 countByEnumeratingWithState:&v263 objects:v298 count:16];
    if (v177)
    {
      v178 = v177;
      v179 = *v264;
      do
      {
        for (n = 0; n != v178; ++n)
        {
          if (*v264 != v179)
          {
            objc_enumerationMutation(array2);
          }

          v181 = *(*(&v263 + 1) + 8 * n);
          v182 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](selfCopy, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedArtworkProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name == %@", objc_msgSend(v181, "name")], 0);
          if ([v182 count] && (objc_msgSend(v182, "objectAtIndex:", 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v183 = [v182 objectAtIndex:0];
          }

          else
          {
            NSLog(&cfstr_CouldnTResolve.isa, [v181 name], objc_msgSend(objc_msgSend(objc_msgSend(v181, "stack"), "production"), "name"));
            v183 = 0;
          }

          [v181 setReference:v183];
          [v183 setMakeOpaqueIfPossible:{objc_msgSend(v181, "makeOpaqueIfPossible")}];
        }

        v178 = [array2 countByEnumeratingWithState:&v263 objects:v298 count:16];
      }

      while (v178);
    }

    if (selfCopy->_explicitlyPackedIdentifiers)
    {
      v184 = [(CoreThemeDocument *)selfCopy allObjectsForEntity:@"NamedElement" withSortDescriptors:0];
      v259 = 0u;
      v260 = 0u;
      v261 = 0u;
      v262 = 0u;
      obja = [(NSMutableDictionary *)selfCopy->_explicitlyPackedIdentifiers allKeys];
      v185 = [obja countByEnumeratingWithState:&v259 objects:v297 count:16];
      if (v185)
      {
        v186 = v185;
        v187 = *v260;
        do
        {
          for (ii = 0; ii != v186; ++ii)
          {
            if (*v260 != v187)
            {
              objc_enumerationMutation(obja);
            }

            v189 = *(*(&v259 + 1) + 8 * ii);
            v190 = [(NSMutableDictionary *)selfCopy->_explicitlyPackedIdentifiers objectForKey:v189];
            [(NSMutableDictionary *)selfCopy->_explicitlyPackedIdentifiers removeObjectForKey:v189];
            v191 = [objc_msgSend(v184 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name == %@", v189)), "firstObject"}];
            if (v191)
            {
              -[NSMutableDictionary setObject:forKey:](selfCopy->_explicitlyPackedIdentifiers, "setObject:forKey:", v190, [v191 identifier]);
            }

            else
            {
              NSLog(&cfstr_Corethemedefin_2.isa, v189);
            }
          }

          v186 = [obja countByEnumeratingWithState:&v259 objects:v297 count:16];
        }

        while (v186);
      }
    }
  }

  return array;
}

BOOL __91__CoreThemeDocument_createNamedArtworkProductionsForAssets_customInfos_skipLastStep_error___block_invoke(uint64_t a1, void *a2)
{
  [objc_msgSend(*(a1 + 32) "iconSize")];
  v4 = v3;
  return [a2 height] == v5 && objc_msgSend(a2, "width") == v4;
}

BOOL __91__CoreThemeDocument_createNamedArtworkProductionsForAssets_customInfos_skipLastStep_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) idiom];
  result = 0;
  if (v4 == [objc_msgSend(a2 "keySpec")])
  {
    v5 = [*(a1 + 32) subtype];
    if (v5 == [objc_msgSend(a2 "keySpec")])
    {
      return 1;
    }
  }

  return result;
}

- (void)createNamedTexturesForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error
{
  v100[1] = *MEMORY[0x277D85DE8];
  error = [(CoreThemeDocument *)self elementWithIdentifier:41, files, source, error];
  v65 = [(CoreThemeDocument *)self partWithIdentifier:181];
  v100[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"mipLevel" ascending:0];
  v62 = [MEMORY[0x277CBEA60] arrayWithObjects:v100 count:1];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  idioms = [(CoreThemeDocument *)self idioms];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  directions = [(CoreThemeDocument *)self directions];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  textureFaces = [(CoreThemeDocument *)self textureFaces];
  if ([(CoreThemeDocument *)self featureEnabled:8])
  {
    v55 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1007];
    v54 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:10];
    v60 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v7 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
    v8 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v93;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v93 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v60 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v92 + 1) + 8 * i)), objc_msgSend(*(*(&v92 + 1) + 8 * i), "identifier")}];
        }

        v9 = [v7 countByEnumeratingWithState:&v92 objects:v99 count:16];
      }

      while (v9);
    }

    v58 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedTextureProduction", 0, 0)}];
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v91 = 0u;
    v57 = [infos countByEnumeratingWithState:&v88 objects:v98 count:16];
    if (v57)
    {
      v56 = *v89;
      v64 = *MEMORY[0x277CBEEE8];
      do
      {
        v12 = 0;
        do
        {
          if (*v89 != v56)
          {
            objc_enumerationMutation(infos);
          }

          v59 = v12;
          v13 = *(*(&v88 + 1) + 8 * v12);
          v14 = [v58 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v13, "name"))}];
          if ([v14 firstObject] && (objc_msgSend(v14, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            firstObject = [v14 firstObject];
          }

          else
          {
            firstObject = [(CoreThemeDocument *)self newObjectForEntity:@"NamedTextureProduction"];
            v16 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v13 nameIdentifier]);
            [v16 setName:{objc_msgSend(v13, "name")}];
            [v16 setProduction:firstObject];
            v17 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
            [firstObject setBaseKeySpec:v17];
            [v17 setElement:error];
            [v17 setNameIdentifier:{objc_msgSend(objc_msgSend(v16, "identifier"), "unsignedIntValue")}];
            [firstObject setDateOfLastChange:{objc_msgSend(v13, "modificationDate")}];
            [firstObject setOptOutOfThinning:{objc_msgSend(v13, "optOutOfThinning")}];
            [firstObject setTextureInterpretation:{-[CoreThemeDocument textureInterpretaitionWithIdentifier:](self, "textureInterpretaitionWithIdentifier:", objc_msgSend(v13, "textureInterpretation"))}];
            [firstObject setRenditionType:v55];
            [firstObject setRenditionSubtype:v54];

            [v58 addObject:firstObject];
            if (v13)
            {
              tags = [v13 tags];
              if ([tags count])
              {
                v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
                v84 = 0u;
                v85 = 0u;
                v86 = 0u;
                v87 = 0u;
                v20 = [tags countByEnumeratingWithState:&v84 objects:v97 count:16];
                if (v20)
                {
                  v21 = v20;
                  v22 = *v85;
                  v67 = tags;
                  do
                  {
                    for (j = 0; j != v21; ++j)
                    {
                      if (*v85 != v22)
                      {
                        objc_enumerationMutation(v67);
                      }

                      v24 = *(*(&v84 + 1) + 8 * j);
                      v25 = [v60 objectForKey:v24];
                      if ([v25 count])
                      {
                        if ([v25 count] != 1)
                        {
                          [CoreThemeDocument createNamedTexturesForCustomInfos:referenceFiles:bitSource:error:];
                        }

                        v26 = [v25 objectAtIndex:0];
                      }

                      else
                      {
                        v26 = [(CoreThemeDocument *)self newObjectForEntity:@"Tag"];
                        [v26 setIdentifier:v24];
                        [v60 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v26), v24}];
                      }

                      [v19 addObject:v26];
                    }

                    tags = v67;
                    v21 = [v67 countByEnumeratingWithState:&v84 objects:v97 count:16];
                  }

                  while (v21);
                }

                [firstObject addTags:v19];
                v27 = [tags count];
                if (v27 != [v19 count])
                {
                  [CoreThemeDocument createNamedTexturesForCustomInfos:referenceFiles:bitSource:error:];
                }
              }

              if ([objc_msgSend(v13 "universalTypeIdentifier")])
              {
                [firstObject setUniversalTypeIdentifier:{objc_msgSend(v13, "universalTypeIdentifier")}];
              }
            }
          }

          v28 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRenditionSpec"];
          [v28 setProduction:firstObject];
          [v28 setPixelFormat:-[CoreThemeDocument pixelFormatWithIdentifier:](self, "pixelFormatWithIdentifier:", objc_msgSend(v13, "texturePixelFormat"))];
          [v28 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", 0)}];
          -[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", [v13 compressionType]);
          [v28 setCubeMap:{objc_msgSend(v13, "cubeMap")}];
          [v28 setWidth:{objc_msgSend(v13, "textureWidth")}];
          [v28 setHeight:{objc_msgSend(v13, "textureHeight")}];
          [v28 resetToBaseKeySpec];
          [v28 setPreserveForArchiveOnly:{objc_msgSend(v13, "preserveForArchiveOnly")}];
          keySpec = [v28 keySpec];
          [keySpec setIdiom:{objc_msgSend(idioms, "objectAtIndexedSubscript:", objc_msgSend(v13, "idiom"))}];
          [keySpec setScaleFactor:{objc_msgSend(v13, "scaleFactor")}];
          [keySpec setSubtype:{objc_msgSend(v13, "subtype")}];
          [keySpec setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v13, "displayGamut"))}];
          [keySpec setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v13, "sizeClassHorizontal"))}];
          [keySpec setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v13, "sizeClassVertical"))}];
          [keySpec setMemoryClass:{objc_msgSend(v13, "memoryClass")}];
          [keySpec setDirection:{objc_msgSend(directions, "objectAtIndexedSubscript:", objc_msgSend(v13, "layoutDirection"))}];
          [keySpec setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(v13, "graphicsFeatureSetClass"))}];
          [keySpec setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v13, "appearanceIdentifier"), objc_msgSend(v13, "appearanceName"), 1)}];
          [keySpec setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v13, "localizationIdentifier"), objc_msgSend(v13, "localizationName"), 1)}];
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          textureInfos = [v13 textureInfos];
          v30 = [textureInfos countByEnumeratingWithState:&v80 objects:v96 count:16];
          if (v30)
          {
            v31 = v30;
            v68 = *v81;
            do
            {
              for (k = 0; k != v31; ++k)
              {
                if (*v81 != v68)
                {
                  objc_enumerationMutation(textureInfos);
                }

                v33 = *(*(&v80 + 1) + 8 * k);
                v77 = 0;
                sourceCopy = source;
                v78 = 0;
                v79 = 0;
                fileURL = [v33 fileURL];
                flipped = [v33 flipped];
                if (fileURL)
                {
                  v36 = fileURL == v64;
                }

                else
                {
                  v36 = 1;
                }

                if (!v36)
                {
                  v39 = flipped;
                  [(CoreThemeDocument *)self _getFilename:&v79 scaleFactor:&v77 category:&v78 bitSource:&sourceCopy forFileURL:fileURL];
LABEL_47:
                  pathComponents = [fileURL pathComponents];
                  UncommonItemInArrays = indexOfFirstUncommonItemInArrays([objc_msgSend(sourceCopy fileURLWithDocument:{self), "pathComponents"}], pathComponents);
                  v42 = [pathComponents subarrayWithRange:{UncommonItemInArrays, objc_msgSend(pathComponents, "count") + ~UncommonItemInArrays}];
                  v78 = [MEMORY[0x277CCACA8] pathWithComponents:v42];
                  goto LABEL_48;
                }

                textureInfos2 = [v13 textureInfos];
                v38 = [objc_msgSend(textureInfos2 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"(mipLevel < %d) AND (fileURL != nil) AND (textureFace = %d)", objc_msgSend(v33, "mipLevel"), objc_msgSend(v33, "textureFace"))), "sortedArrayUsingDescriptors:", v62}];
                fileURL = [objc_msgSend(v38 "firstObject")];
                v39 = [objc_msgSend(v38 "firstObject")];
                [(CoreThemeDocument *)self _getFilename:&v79 scaleFactor:&v77 category:&v78 bitSource:&sourceCopy forFileURL:fileURL];
                if (fileURL)
                {
                  goto LABEL_47;
                }

LABEL_48:
                v43 = v79;
                scaleFactor = [v13 scaleFactor];
                v45 = [(CoreThemeDocument *)self createAssetWithName:v43 fileType:@"texture" scaleFactor:scaleFactor inCategory:v78 forThemeBitSource:sourceCopy];
                v46 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureImageRenditionSpec"];
                [v46 setPreserveForArchiveOnly:{objc_msgSend(v13, "preserveForArchiveOnly")}];
                if (([v13 compressionType] & 0xFFFFFFFFFFFFFFFELL) == 4 && !-[CoreThemeDocument featureEnabled:](self, "featureEnabled:", 4))
                {
                  if ([(CoreThemeDocument *)self featureEnabled:3])
                  {
                    compressionType = 3;
                  }

                  else
                  {
                    compressionType = 0;
                  }
                }

                else
                {
                  compressionType = [v13 compressionType];
                }

                [v46 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", compressionType)}];
                [v46 setProduction:firstObject];
                [v46 setAsset:v45];
                [v46 setFlipped:v39];
                mipLevel = [v33 mipLevel];
                if ([v28 width] >> mipLevel < 2)
                {
                  v49 = 1;
                }

                else
                {
                  v49 = ([v28 width] >> mipLevel);
                }

                [v46 setWidth:v49];
                if ([v28 height] >> mipLevel < 2)
                {
                  v50 = 1;
                }

                else
                {
                  v50 = ([v28 height] >> mipLevel);
                }

                [v46 setHeight:v50];
                v51 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureMipLevel"];
                if ([v13 cubeMap])
                {
                  [v51 setFace:{objc_msgSend(textureFaces, "objectAtIndexedSubscript:", objc_msgSend(v33, "textureFace"))}];
                }

                [v51 setLevel:mipLevel];
                [v51 setTextureImage:v46];
                [v28 addMipLevelsObject:v51];

                keySpec2 = [v46 keySpec];
                [keySpec2 setElement:error];
                [keySpec2 setPart:v65];
                [keySpec2 setNameIdentifier:{objc_msgSend(objc_msgSend(firstObject, "baseKeySpec"), "nameIdentifier")}];
                [keySpec2 setIdiom:{objc_msgSend(idioms, "objectAtIndexedSubscript:", objc_msgSend(v13, "idiom"))}];
                [keySpec2 setScaleFactor:{objc_msgSend(v13, "scaleFactor")}];
                [keySpec2 setSubtype:{objc_msgSend(v13, "subtype")}];
                [keySpec2 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v13, "displayGamut"))}];
                [keySpec2 setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v13, "sizeClassHorizontal"))}];
                [keySpec2 setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v13, "sizeClassVertical"))}];
                [keySpec2 setMemoryClass:{objc_msgSend(v13, "memoryClass")}];
                [keySpec2 setDirection:{objc_msgSend(directions, "objectAtIndexedSubscript:", objc_msgSend(v13, "layoutDirection"))}];
                [keySpec2 setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(v13, "graphicsFeatureSetClass"))}];
                [keySpec2 setDimension2:{objc_msgSend(v33, "mipLevel")}];
                [keySpec2 setAppearance:{objc_msgSend(objc_msgSend(v28, "keySpec"), "appearance")}];
              }

              v31 = [textureInfos countByEnumeratingWithState:&v80 objects:v96 count:16];
            }

            while (v31);
          }

          v12 = v59 + 1;
        }

        while (v59 + 1 != v57);
        v57 = [infos countByEnumeratingWithState:&v88 objects:v98 count:16];
      }

      while (v57);
    }
  }
}

- (void)createNamedModelsForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error
{
  sourceCopy = source;
  v71 = *MEMORY[0x277D85DE8];
  error = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1011, files, source, error];
  v42 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:10];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v9 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
  v10 = [v9 countByEnumeratingWithState:&v64 objects:v70 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v65;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v65 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v8 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v64 + 1) + 8 * i)), objc_msgSend(*(*(&v64 + 1) + 8 * i), "identifier")}];
      }

      v11 = [v9 countByEnumeratingWithState:&v64 objects:v70 count:16];
    }

    while (v11);
  }

  v49 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"ModelIOProduction", 0, 0)}];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v15 = v42;
  v14 = error;
  v48 = [infos countByEnumeratingWithState:&v60 objects:v69 count:16];
  if (v48)
  {
    v47 = *v61;
    v41 = sourceCopy;
    do
    {
      v16 = 0;
      do
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(infos);
        }

        v51 = v16;
        v17 = *(*(&v60 + 1) + 8 * v16);
        v57 = 0;
        v56 = sourceCopy;
        v58 = 0;
        v59 = 0;
        fileURL = [v17 fileURL];
        v18 = [v49 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v17, "name"))}];
        if ([v18 firstObject])
        {
          [v18 firstObject];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            firstObject = [v18 firstObject];
LABEL_35:
            v32 = fileURL;
            goto LABEL_36;
          }
        }

        firstObject = [(CoreThemeDocument *)self newObjectForEntity:@"ModelIOProduction"];
        v20 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v17 nameIdentifier]);
        [v20 setName:{objc_msgSend(v17, "name")}];
        [v20 setProduction:firstObject];
        v21 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v21 setElement:{-[CoreThemeDocument elementWithIdentifier:](self, "elementWithIdentifier:", 164)}];
        [v21 setPart:{-[CoreThemeDocument partWithIdentifier:](self, "partWithIdentifier:", 60)}];
        [v21 setNameIdentifier:{objc_msgSend(objc_msgSend(v20, "identifier"), "unsignedIntValue")}];
        [firstObject setBaseKeySpec:v21];
        [firstObject setDateOfLastChange:{objc_msgSend(v17, "modificationDate")}];
        [firstObject setRenditionType:v14];
        [firstObject setRenditionSubtype:v15];

        [v49 addObject:firstObject];
        if (!v17)
        {
          goto LABEL_35;
        }

        tags = [v17 tags];
        if ([tags count])
        {
          v45 = firstObject;
          v46 = v17;
          v23 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v24 = [tags countByEnumeratingWithState:&v52 objects:v68 count:16];
          if (v24)
          {
            v25 = v24;
            v26 = *v53;
            do
            {
              for (j = 0; j != v25; ++j)
              {
                if (*v53 != v26)
                {
                  objc_enumerationMutation(tags);
                }

                v28 = *(*(&v52 + 1) + 8 * j);
                v29 = [v8 objectForKey:v28];
                if ([v29 count])
                {
                  if ([v29 count] != 1)
                  {
                    [CoreThemeDocument createNamedModelsForCustomInfos:referenceFiles:bitSource:error:];
                  }

                  v30 = [v29 objectAtIndex:0];
                }

                else
                {
                  v30 = [(CoreThemeDocument *)self newObjectForEntity:@"Tag"];
                  [v30 setIdentifier:v28];
                  [v8 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v30), v28}];
                }

                [v23 addObject:v30];
              }

              v25 = [tags countByEnumeratingWithState:&v52 objects:v68 count:16];
            }

            while (v25);
          }

          firstObject = v45;
          [v45 addTags:v23];
          v31 = [tags count];
          if (v31 != [v23 count])
          {
            [CoreThemeDocument createNamedModelsForCustomInfos:referenceFiles:bitSource:error:];
          }

          sourceCopy = v41;
          v15 = v42;
          v14 = error;
          v17 = v46;
        }

        v32 = fileURL;
        if ([objc_msgSend(v17 "universalTypeIdentifier")])
        {
          [firstObject setUniversalTypeIdentifier:{objc_msgSend(v17, "universalTypeIdentifier")}];
        }

LABEL_36:
        [(CoreThemeDocument *)self _getFilename:&v59 scaleFactor:&v57 category:&v58 bitSource:&v56 forFileURL:v32];
        if (v32)
        {
          pathComponents = [v32 pathComponents];
          UncommonItemInArrays = indexOfFirstUncommonItemInArrays([objc_msgSend(v56 fileURLWithDocument:{self), "pathComponents"}], pathComponents);
          v35 = [pathComponents subarrayWithRange:{UncommonItemInArrays, objc_msgSend(pathComponents, "count") + ~UncommonItemInArrays}];
          v58 = [MEMORY[0x277CCACA8] pathWithComponents:v35];
        }

        v36 = v59;
        scaleFactor = [v17 scaleFactor];
        v38 = [(CoreThemeDocument *)self createAssetWithName:v36 fileType:@"model" scaleFactor:scaleFactor inCategory:v58 forThemeBitSource:v56];
        v39 = [(CoreThemeDocument *)self newObjectForEntity:@"ModelIORenditionSpec"];
        [v39 setAsset:v38];
        [v39 setProduction:firstObject];
        [v39 setPreserveForArchiveOnly:{objc_msgSend(v17, "preserveForArchiveOnly")}];
        [v39 resetToBaseKeySpec];
        keySpec = [v39 keySpec];
        [keySpec setIdiom:{-[CoreThemeDocument idiomWithIdentifier:](self, "idiomWithIdentifier:", objc_msgSend(v17, "idiom"))}];
        [keySpec setScaleFactor:{objc_msgSend(v17, "scaleFactor")}];
        [keySpec setSubtype:{objc_msgSend(v17, "subtype")}];
        [keySpec setGamut:{-[CoreThemeDocument displayGamutWithIdentifier:](self, "displayGamutWithIdentifier:", objc_msgSend(v17, "displayGamut"))}];
        [keySpec setSizeClassHorizontal:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", objc_msgSend(v17, "sizeClassHorizontal"))}];
        [keySpec setSizeClassVertical:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", objc_msgSend(v17, "sizeClassVertical"))}];
        [keySpec setMemoryClass:{objc_msgSend(v17, "memoryClass")}];
        [keySpec setDirection:{-[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", objc_msgSend(v17, "layoutDirection"))}];
        [keySpec setGraphicsFeatureSetClass:{-[CoreThemeDocument graphicsFeatureSetClassWithIdentifier:](self, "graphicsFeatureSetClassWithIdentifier:", objc_msgSend(v17, "graphicsFeatureSetClass"))}];
        [keySpec setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v17, "appearanceIdentifier"), objc_msgSend(v17, "appearanceName"), 1)}];
        [keySpec setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v17, "localizationIdentifier"), objc_msgSend(v17, "localizationName"), 1)}];

        v16 = v51 + 1;
      }

      while (v51 + 1 != v48);
      v48 = [infos countByEnumeratingWithState:&v60 objects:v69 count:16];
    }

    while (v48);
  }
}

- (void)createNamedRecognitionObjectsForAssets:(id)assets customInfos:(id)infos error:(id *)error
{
  infosCopy = infos;
  v56 = *MEMORY[0x277D85DE8];
  error = [(CoreThemeDocument *)self elementWithIdentifier:85, infos, error];
  v42 = [(CoreThemeDocument *)self partWithIdentifier:207];
  v41 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1014];
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v8 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
  v9 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v51;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v51 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [v7 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v50 + 1) + 8 * i)), objc_msgSend(*(*(&v50 + 1) + 8 * i), "identifier")}];
      }

      v10 = [v8 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v10);
  }

  v43 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RecognitionObjectProduction", 0, 0)}];
  v14 = error;
  assetsCopy2 = assets;
  if ([infosCopy count])
  {
    v15 = 0;
    v37 = infosCopy;
    do
    {
      v44 = v15;
      v16 = [infosCopy objectAtIndex:v15];
      v17 = [v43 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v16, "name"))}];
      if ([v17 firstObject] && (objc_msgSend(v17, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v18 = v16;
        firstObject = [v17 firstObject];
      }

      else
      {
        v20 = [(CoreThemeDocument *)self newObjectForEntity:@"RecognitionObjectProduction"];
        if ([v16 nameIdentifier])
        {
          _createNamedElementWithNextAvailableIdentifier = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v16 nameIdentifier]);
        }

        else
        {
          _createNamedElementWithNextAvailableIdentifier = [(CoreThemeDocument *)self _createNamedElementWithNextAvailableIdentifier];
        }

        v22 = _createNamedElementWithNextAvailableIdentifier;
        [_createNamedElementWithNextAvailableIdentifier setName:{objc_msgSend(v16, "name")}];
        [v22 setProduction:v20];
        v45 = v20;
        v23 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v45 setBaseKeySpec:v23];
        [v23 setElement:v14];
        [v23 setPart:v42];
        [v23 setNameIdentifier:{objc_msgSend(objc_msgSend(v22, "identifier"), "unsignedIntValue")}];
        [v45 setDateOfLastChange:{objc_msgSend(v16, "modificationDate")}];
        [v45 setRenditionType:v41];

        firstObject = v45;
        [v43 addObject:v45];
        if (v16)
        {
          tags = [v16 tags];
          v25 = v44;
          if ([tags count])
          {
            v40 = v16;
            v26 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v27 = [tags countByEnumeratingWithState:&v46 objects:v54 count:16];
            if (v27)
            {
              v28 = v27;
              v29 = *v47;
              do
              {
                for (j = 0; j != v28; ++j)
                {
                  if (*v47 != v29)
                  {
                    objc_enumerationMutation(tags);
                  }

                  v31 = *(*(&v46 + 1) + 8 * j);
                  v32 = [v7 objectForKey:v31];
                  if ([v32 count])
                  {
                    if ([v32 count] != 1)
                    {
                      [CoreThemeDocument createNamedRecognitionObjectsForAssets:customInfos:error:];
                    }

                    v33 = [v32 objectAtIndex:0];
                  }

                  else
                  {
                    v33 = [(CoreThemeDocument *)self newObjectForEntity:@"Tag"];
                    [v33 setIdentifier:v31];
                    [v7 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v33), v31}];
                  }

                  [v26 addObject:v33];
                }

                v28 = [tags countByEnumeratingWithState:&v46 objects:v54 count:16];
              }

              while (v28);
            }

            [v45 addTags:v26];
            v34 = [tags count];
            if (v34 != [v26 count])
            {
              [CoreThemeDocument createNamedRecognitionObjectsForAssets:customInfos:error:];
            }

            infosCopy = v37;
            v14 = error;
            assetsCopy2 = assets;
            v16 = v40;
            v25 = v44;
          }

          v18 = v16;
          firstObject = v45;
          if ([objc_msgSend(v16 "universalTypeIdentifier")])
          {
            [v45 setUniversalTypeIdentifier:{objc_msgSend(v16, "universalTypeIdentifier")}];
          }

          goto LABEL_37;
        }

        v18 = 0;
      }

      v25 = v44;
LABEL_37:
      v35 = [(CoreThemeDocument *)self newObjectForEntity:@"RecognitionObjectRenditionSpec"];
      [v35 setAsset:{objc_msgSend(assetsCopy2, "objectAtIndex:", v25)}];
      [v35 setProduction:firstObject];
      [v35 setVersion:{objc_msgSend(v18, "objectVersion")}];
      [v18 transformation];
      [v35 setReferenceOriginTransform:?];
      [v35 setPreserveForArchiveOnly:{objc_msgSend(v18, "preserveForArchiveOnly")}];
      [v35 resetToBaseKeySpec];
      keySpec = [v35 keySpec];
      [keySpec setIdiom:{-[CoreThemeDocument idiomWithIdentifier:](self, "idiomWithIdentifier:", objc_msgSend(v18, "idiom"))}];
      [keySpec setScaleFactor:{objc_msgSend(v18, "scaleFactor")}];
      [keySpec setSubtype:{objc_msgSend(v18, "subtype")}];
      [keySpec setGamut:{-[CoreThemeDocument displayGamutWithIdentifier:](self, "displayGamutWithIdentifier:", objc_msgSend(v18, "displayGamut"))}];
      [keySpec setSizeClassHorizontal:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", objc_msgSend(v18, "sizeClassHorizontal"))}];
      [keySpec setSizeClassVertical:{-[CoreThemeDocument sizeClassWithIdentifier:](self, "sizeClassWithIdentifier:", objc_msgSend(v18, "sizeClassVertical"))}];
      [keySpec setMemoryClass:{objc_msgSend(v18, "memoryClass")}];
      [keySpec setDirection:{-[CoreThemeDocument directionWithIdentifier:](self, "directionWithIdentifier:", objc_msgSend(v18, "layoutDirection"))}];
      [keySpec setGraphicsFeatureSetClass:{-[CoreThemeDocument graphicsFeatureSetClassWithIdentifier:](self, "graphicsFeatureSetClassWithIdentifier:", objc_msgSend(v18, "graphicsFeatureSetClass"))}];

      v15 = v25 + 1;
    }

    while (v15 < [infosCopy count]);
  }
}

- (void)createNamedGlyphVectorForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error
{
  v123 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [(CoreThemeDocument *)self displayGamuts:infos];
  idioms = [(CoreThemeDocument *)self idioms];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  directions = [(CoreThemeDocument *)self directions];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  glyphsSizes = [(CoreThemeDocument *)self glyphsSizes];
  glyphWeights = [(CoreThemeDocument *)self glyphWeights];
  glyphRenderingModes = [(CoreThemeDocument *)self glyphRenderingModes];
  v101 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v86 = [(CoreThemeDocument *)self partWithIdentifier:59];
  v95 = [(CoreThemeDocument *)self partWithIdentifier:181];
  v94 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  v80 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1017];
  v96 = [(CoreThemeDocument *)self deploymentTargetWithIdentifier:5];
  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v84 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v10 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
  v11 = [v10 countByEnumeratingWithState:&v116 objects:v122 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v117;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v117 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [v84 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v116 + 1) + 8 * i)), objc_msgSend(*(*(&v116 + 1) + 8 * i), "identifier")}];
      }

      v12 = [v10 countByEnumeratingWithState:&v116 objects:v122 count:16];
    }

    while (v12);
  }

  [(CoreThemeDocument *)self targetPlatform];
  v90 = CUIMaxScaleForTargetPlatform();
  [(CoreThemeDocument *)self targetPlatform];
  v85 = CUIMinScaleForTargetPlatform();
  v82 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedVectorGlyphProduction", 0, 0)}];
  infosCopy2 = infos;
  if ([infos count])
  {
    v16 = 0;
    v17 = *MEMORY[0x277CBF3A0];
    v18 = *(MEMORY[0x277CBF3A0] + 8);
    v19 = *(MEMORY[0x277CBF3A0] + 16);
    v20 = *(MEMORY[0x277CBF3A0] + 24);
    v97 = glyphsSizes;
    v98 = v7;
    v104 = featureSetClasses;
    while (1)
    {
      v83 = v16;
      v21 = [infosCopy2 objectAtIndex:v16];
      v113 = 0;
      v114 = 0;
      v115 = 0;
      fileURL = [v21 fileURL];
      [(CoreThemeDocument *)self _getFilename:&v115 scaleFactor:&v113 category:&v114 bitSource:&sourceCopy forFileURL:fileURL];
      if (fileURL)
      {
        pathComponents = [fileURL pathComponents];
        UncommonItemInArrays = indexOfFirstUncommonItemInArrays([objc_msgSend(sourceCopy fileURLWithDocument:{self), "pathComponents"}], pathComponents);
        v25 = [pathComponents subarrayWithRange:{UncommonItemInArrays, objc_msgSend(pathComponents, "count") + ~UncommonItemInArrays}];
        v114 = [MEMORY[0x277CCACA8] pathWithComponents:v25];
      }

      v26 = [v82 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v21, "name"))}];
      if ([v26 firstObject] && (objc_msgSend(v26, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        firstObject = [v26 firstObject];
        v28 = targetPlatform;
        v29 = v84;
      }

      else
      {
        firstObject = [(CoreThemeDocument *)self newObjectForEntity:@"NamedVectorGlyphProduction"];
        if ([v21 nameIdentifier])
        {
          _createNamedElementWithNextAvailableIdentifier = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v21 nameIdentifier]);
        }

        else
        {
          _createNamedElementWithNextAvailableIdentifier = [(CoreThemeDocument *)self _createNamedElementWithNextAvailableIdentifier];
        }

        v31 = _createNamedElementWithNextAvailableIdentifier;
        v29 = v84;
        [_createNamedElementWithNextAvailableIdentifier setName:{objc_msgSend(v21, "name")}];
        [v31 setProduction:firstObject];
        v32 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [firstObject setBaseKeySpec:v32];
        [v32 setElement:v101];
        [v32 setPart:v86];
        [v32 setNameIdentifier:{objc_msgSend(objc_msgSend(v31, "identifier"), "unsignedIntValue")}];
        [v32 setTarget:v96];
        [firstObject setDateOfLastChange:{objc_msgSend(v21, "modificationDate")}];
        [firstObject setRenditionType:v80];
        [firstObject setIsFlippable:{objc_msgSend(v21, "isFlippable")}];

        [v82 addObject:firstObject];
        if (v21)
        {
          tags = [v21 tags];
          if ([tags count])
          {
            v107 = fileURL;
            v102 = firstObject;
            v34 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            v35 = [tags countByEnumeratingWithState:&v109 objects:v121 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v110;
              do
              {
                for (j = 0; j != v36; ++j)
                {
                  if (*v110 != v37)
                  {
                    objc_enumerationMutation(tags);
                  }

                  v39 = *(*(&v109 + 1) + 8 * j);
                  v40 = [v84 objectForKey:v39];
                  if ([v40 count])
                  {
                    if ([v40 count] != 1)
                    {
                      [CoreThemeDocument createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:];
                    }

                    v41 = [v40 objectAtIndex:0];
                  }

                  else
                  {
                    v41 = [(CoreThemeDocument *)self newObjectForEntity:@"Tag"];
                    [v41 setIdentifier:v39];
                    [v84 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v41), v39}];
                  }

                  [v34 addObject:v41];
                }

                v36 = [tags countByEnumeratingWithState:&v109 objects:v121 count:16];
              }

              while (v36);
            }

            firstObject = v102;
            [v102 addTags:v34];
            v42 = [tags count];
            if (v42 != [v34 count])
            {
              [CoreThemeDocument createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:];
            }

            fileURL = v107;
          }

          if ([objc_msgSend(v21 "universalTypeIdentifier")])
          {
            [firstObject setUniversalTypeIdentifier:{objc_msgSend(v21, "universalTypeIdentifier")}];
          }

          [firstObject setVectorGlyphRenderingMode:{objc_msgSend(glyphRenderingModes, "objectAtIndex:", objc_msgSend(v21, "vectorGlyphRenderingMode"))}];
        }

        v28 = targetPlatform;
      }

      if (!fileURL)
      {
        [CoreThemeDocument createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:];
      }

      v43 = [TDVectorGlyphReader vectorGlyphReaderWithURL:fileURL platform:v28 error:error];
      if (!v43)
      {
        break;
      }

      v103 = firstObject;
      v44 = 1;
      v106 = v43;
      do
      {
        v45 = v44 & 2;
        if (targetPlatform)
        {
          v45 = v44;
        }

        v87 = v45;
        v46 = 1;
        v108 = v44;
        do
        {
          v93 = v46;
          if ([TDVectorGlyphReader vectorGlyphExistsWithWeight:v43 size:"vectorGlyphExistsWithWeight:size:error:" error:?])
          {
LABEL_46:
            v47 = [(CoreThemeDocument *)self newObjectForEntity:@"VectorGlyphRenditionSpec"];
            v48 = v115;
            scaleFactor = [v21 scaleFactor];
            v50 = [(CoreThemeDocument *)self createAssetWithName:v48 fileType:@"png" scaleFactor:scaleFactor inCategory:v114 forThemeBitSource:sourceCopy];
            [v50 setScaleFactor:0];
            [v50 setFileScaleFactor:{objc_msgSend(v21, "scaleFactor")}];
            if (![v50 fileScaleFactor])
            {
              [v50 setFileScaleFactor:1];
            }

            v89 = v50;
            [v47 setAsset:v50];
            [v47 setProduction:v103];
            [v47 setAlignmentRect:{v17, v18, v19, v20}];
            v51 = 1;
            v52 = v93;
            if (v87 == 2)
            {
              v53 = idioms;
              v54 = sizeClasses;
              v55 = v104;
              v56 = directions;
              if (v93 == 4)
              {
                v57 = CUIMinDimensionForVectorGlyph();
                v51 = v85 > v90;
                if (v57 < CUIMaxDimensionForVectorGlyph())
                {
                  do
                  {
                    v58 = [(CoreThemeDocument *)self newObjectForEntity:@"AvaliableVectorSize"];
                    v59 = v47;
                    v60 = MEMORY[0x277CCABB0];
                    CUIPointSizeForDimensionForVectorGlyph();
                    v62 = v60;
                    v47 = v59;
                    [v58 setPointSize:{objc_msgSend(v62, "numberWithInt:", v61)}];
                    [v59 addAvaliablePointSizesObject:v58];

                    ++v57;
                  }

                  while (CUIMaxDimensionForVectorGlyph() > v57);
                  v51 = v85 > v90;
                  v52 = 4;
                  v55 = v104;
                  v56 = directions;
                  v54 = sizeClasses;
                }
              }
            }

            else
            {
              v53 = idioms;
              v54 = sizeClasses;
              v55 = v104;
              v56 = directions;
            }

            [v47 resetToBaseKeySpec];
            keySpec = [v47 keySpec];
            [keySpec setElement:v101];
            [keySpec setPart:v86];
            [keySpec setIdiom:{objc_msgSend(v53, "objectAtIndexedSubscript:", objc_msgSend(v21, "idiom"))}];
            [keySpec setScaleFactor:{objc_msgSend(v89, "fileScaleFactor")}];
            [keySpec setSubtype:{objc_msgSend(v21, "subtype")}];
            [keySpec setGamut:{objc_msgSend(v98, "objectAtIndexedSubscript:", objc_msgSend(v21, "displayGamut"))}];
            [keySpec setSizeClassHorizontal:{objc_msgSend(v54, "objectAtIndexedSubscript:", objc_msgSend(v21, "sizeClassHorizontal"))}];
            [keySpec setSizeClassVertical:{objc_msgSend(v54, "objectAtIndexedSubscript:", objc_msgSend(v21, "sizeClassVertical"))}];
            [keySpec setMemoryClass:{objc_msgSend(v21, "memoryClass")}];
            [keySpec setDirection:{objc_msgSend(v56, "objectAtIndexedSubscript:", objc_msgSend(v21, "layoutDirection"))}];
            [keySpec setGraphicsFeatureSetClass:{objc_msgSend(v55, "objectAtIndexedSubscript:", objc_msgSend(v21, "graphicsFeatureSetClass"))}];
            [keySpec setGlyphSize:{objc_msgSend(v97, "objectAtIndexedSubscript:", v108)}];
            [keySpec setGlyphWeight:{objc_msgSend(glyphWeights, "objectAtIndexedSubscript:", v52)}];
            [keySpec setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v21, "appearanceIdentifier"), objc_msgSend(v21, "appearanceName"), 1)}];
            [keySpec setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v21, "localizationIdentifier"), objc_msgSend(v21, "localizationName"), 1)}];
            if (!v51)
            {
              v69 = v85;
              do
              {
                if ([(CoreThemeDocument *)self shouldGenerateScale:v69])
                {
                  for (k = CUIMinDimensionForVectorGlyph(); k < CUIMaxDimensionForVectorGlyph(); k = (k + 1))
                  {
                    v71 = [(CoreThemeDocument *)self newObjectForEntity:@"VectorGlyphImageRenditionSpec"];
                    v72 = v115;
                    scaleFactor2 = [v21 scaleFactor];
                    v74 = [(CoreThemeDocument *)self createAssetWithName:v72 fileType:@"png" scaleFactor:scaleFactor2 inCategory:v114 forThemeBitSource:sourceCopy];
                    [v74 setFileScaleFactor:{objc_msgSend(v21, "scaleFactor")}];
                    [v74 setScaleFactor:v69];
                    [v71 setAsset:v74];
                    CUIPointSizeForDimensionForVectorGlyph();
                    v76 = v75;
                    [(TDVectorGlyphReader *)v106 defaultPointSize];
                    [v71 setPostScaleFactor:v76 / v77];
                    [v71 setRenditionType:v94];
                    [v71 setAllowsDeepmap2Compression:{-[CoreThemeDocument shouldAllowDeepmap2CompressionForDeploymentTarget:](self, "shouldAllowDeepmap2CompressionForDeploymentTarget:", objc_msgSend(v96, "identifier"))}];
                    [v71 setProduction:v103];
                    [v71 resetToBaseKeySpec];
                    keySpec2 = [v71 keySpec];
                    [keySpec2 setElement:v101];
                    [keySpec2 setPart:v95];
                    [keySpec2 setIdiom:{objc_msgSend(idioms, "objectAtIndexedSubscript:", objc_msgSend(v21, "idiom"))}];
                    [keySpec2 setScaleFactor:v69];
                    [keySpec2 setSubtype:{objc_msgSend(v21, "subtype")}];
                    [keySpec2 setGamut:{objc_msgSend(v98, "objectAtIndexedSubscript:", objc_msgSend(v21, "displayGamut"))}];
                    [keySpec2 setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v21, "sizeClassHorizontal"))}];
                    [keySpec2 setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v21, "sizeClassVertical"))}];
                    [keySpec2 setMemoryClass:{objc_msgSend(v21, "memoryClass")}];
                    [keySpec2 setDirection:{objc_msgSend(directions, "objectAtIndexedSubscript:", objc_msgSend(v21, "layoutDirection"))}];
                    [keySpec2 setGraphicsFeatureSetClass:{objc_msgSend(v104, "objectAtIndexedSubscript:", objc_msgSend(v21, "graphicsFeatureSetClass"))}];
                    [keySpec2 setGlyphSize:{objc_msgSend(v97, "objectAtIndexedSubscript:", v108)}];
                    [keySpec2 setGlyphWeight:{objc_msgSend(glyphWeights, "objectAtIndexedSubscript:", v93)}];
                    [keySpec2 setDimension2:k];
                    [keySpec2 setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v21, "appearanceIdentifier"), objc_msgSend(v21, "appearanceName"), 1)}];
                    [keySpec2 setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v21, "localizationIdentifier"), objc_msgSend(v21, "localizationName"), 1)}];
                  }
                }

                v69 = (v69 + 1);
              }

              while (v69 <= v90);
            }
          }

          else
          {
            v63 = CUIPreferredVectorGlyphConfigurationsForPlatform();
            v64 = *v63;
            if (*v63)
            {
              v65 = v63 + 3;
              do
              {
                v66 = *(v65 - 2);
                if (!v66)
                {
                  break;
                }

                if (v64 == v93 && v66 == v108)
                {
                  if ([TDVectorGlyphReader isInterpolatableForWeight:v106 size:"isInterpolatableForWeight:size:"])
                  {
                    goto LABEL_46;
                  }

                  break;
                }

                v67 = *v65;
                v65 += 3;
                v64 = v67;
              }

              while (v67);
            }
          }

          v46 = v93 + 1;
          v43 = v106;
        }

        while (v93 != 9);
        v44 = v108 + 1;
      }

      while (v108 != 3);

      v16 = v83 + 1;
      infosCopy2 = infos;
      if (v83 + 1 >= [infos count])
      {
        goto LABEL_74;
      }
    }
  }

  else
  {
LABEL_74:
  }
}

- (void)createNamedIconLayerStacksForCustomInfos:(id)infos referenceFiles:(BOOL)files bitSource:(id)source error:(id *)error
{
  v167 = *MEMORY[0x277D85DE8];
  files = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1019, files];
  v95 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1020];
  v94 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v93 = [(CoreThemeDocument *)self partWithIdentifier:245];
  v92 = [(CoreThemeDocument *)self partWithIdentifier:246];
  v113 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedArtworkProduction", 0, 0)}];
  v106 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedColorProduction", 0, 0)}];
  v104 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedGradientProduction", 0, 0)}];
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  idioms = [(CoreThemeDocument *)self idioms];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  array3 = [MEMORY[0x277CBEB18] array];
  v86 = [MEMORY[0x277CBEB58] set];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = infos;
  v101 = [infos countByEnumeratingWithState:&v154 objects:v166 count:16];
  if (v101)
  {
    v97 = *v155;
    v90 = *MEMORY[0x277CBED10];
    do
    {
      v8 = 0;
      do
      {
        if (*v155 != v97)
        {
          objc_enumerationMutation(obj);
        }

        v103 = v8;
        v9 = *(*(&v154 + 1) + 8 * v8);
        name = [v9 name];
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v11 = [v113 countByEnumeratingWithState:&v150 objects:v165 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v151;
LABEL_8:
          v14 = 0;
          while (1)
          {
            if (*v151 != v13)
            {
              objc_enumerationMutation(v113);
            }

            v15 = *(*(&v150 + 1) + 8 * v14);
            objc_opt_class();
            if (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(objc_msgSend(v15 "name")])
            {
              break;
            }

            if (v12 == ++v14)
            {
              v12 = [v113 countByEnumeratingWithState:&v150 objects:v165 count:16];
              if (v12)
              {
                goto LABEL_8;
              }

              goto LABEL_17;
            }
          }

          if (v15)
          {
            goto LABEL_24;
          }
        }

LABEL_17:
        v15 = [(CoreThemeDocument *)self newObjectForEntity:@"LayerStackProduction"];
        v16 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v9 nameIdentifier]);
        [v16 setName:name];
        [v16 setProduction:v15];
        v17 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v17 setElement:v94];
        renditionType = [v9 renditionType];
        if (renditionType == 1019)
        {
          v19 = v93;
        }

        else
        {
          v19 = v92;
        }

        if (renditionType == 1019)
        {
          v20 = files;
        }

        else
        {
          v20 = v95;
        }

        [v17 setPart:v19];
        [v15 setRenditionType:v20];
        [v17 setNameIdentifier:{objc_msgSend(objc_msgSend(v16, "identifier"), "unsignedIntValue")}];
        [v15 setBaseKeySpec:v17];

        [v15 setIsExcludedFromFilter:v90];
        [array addObject:v15];
        [v113 addObject:v15];
LABEL_24:
        if ([v9 renditionType] == 1019)
        {
          selfCopy3 = self;
          v22 = [(CoreThemeDocument *)self newObjectForEntity:@"LayerStackRenditionSpec"];
          if ([v9 generateFallbackIcon])
          {
            [v86 addObject:name];
          }

          [dictionary setObject:v15 forKey:name];
        }

        else
        {
          selfCopy3 = self;
          v22 = [(CoreThemeDocument *)self newObjectForEntity:@"LayerGroupRenditionSpec"];
        }

        v23 = v22;
        [v22 setProduction:v15];
        [v22 setPreserveForArchiveOnly:{objc_msgSend(v9, "preserveForArchiveOnly")}];
        if ([v9 renditionType] == 1019)
        {
          [v9 canvasSize];
          [v22 setCanvasSize:?];
          v149 = 0;
          v148 = 0;
          sourceCopy = source;
          v146 = 0;
          -[CoreThemeDocument _getFilename:scaleFactor:category:bitSource:forFileURL:](selfCopy3, "_getFilename:scaleFactor:category:bitSource:forFileURL:", &v149, &v146, &v148, &sourceCopy, [v9 fileURL]);
          [v22 setAsset:{-[CoreThemeDocument createAssetWithName:fileType:scaleFactor:inCategory:forThemeBitSource:](selfCopy3, "createAssetWithName:fileType:scaleFactor:inCategory:forThemeBitSource:", v149, @"imagestack", v146, v148, source)}];
        }

        [v22 resetToBaseKeySpec];
        keySpec = [v22 keySpec];
        [keySpec setIdiom:{objc_msgSend(idioms, "objectAtIndex:", objc_msgSend(v9, "idiom"))}];
        v25 = [displayGamuts objectAtIndexedSubscript:{objc_msgSend(v9, "displayGamut")}];
        [keySpec setMemoryClass:{objc_msgSend(v9, "memoryClass")}];
        [keySpec setGamut:v25];
        [keySpec setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(v9, "graphicsFeatureSetClass"))}];
        [keySpec setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](selfCopy3, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v9, "appearanceIdentifier"), objc_msgSend(v9, "appearanceName"), 1)}];
        [keySpec setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](selfCopy3, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v9, "localizationIdentifier"), objc_msgSend(v9, "localizationName"), 1)}];
        [v22 setPreserveForArchiveOnly:{objc_msgSend(v9, "preserveForArchiveOnly")}];
        v26 = objc_alloc_init(MEMORY[0x277CBEB40]);
        if (![objc_msgSend(v9 "layerReferences")])
        {
          renditionType2 = [v9 renditionType];
          name2 = [v9 name];
          v29 = @"CoreThemeDefinition: TDNamedAssetImportInfo group with name '%@' has NO layerReferences it should have at least 1";
          if (renditionType2 == 1019)
          {
            v29 = @"CoreThemeDefinition: TDNamedAssetImportInfo for icon with name '%@' has NO layerReferences it should have at least 1";
          }

          NSLog(&v29->isa, name2);
        }

        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        v108 = v9;
        layerReferences = [v9 layerReferences];
        v30 = [layerReferences countByEnumeratingWithState:&v142 objects:v164 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v143;
          do
          {
            for (i = 0; i != v31; ++i)
            {
              if (*v143 != v32)
              {
                objc_enumerationMutation(layerReferences);
              }

              v34 = *(*(&v142 + 1) + 8 * i);
              v35 = [(CoreThemeDocument *)selfCopy3 newObjectForEntity:@"LayerReference"];
              [v34 frame];
              [v35 setFrameRect:{floor(v36), floor(v37)}];
              [v35 setName:{objc_msgSend(v34, "layerName")}];
              v38 = MEMORY[0x277CCABB0];
              [v34 opacity];
              [v35 setOpacity:{objc_msgSend(v38, "numberWithDouble:")}];
              [v35 setBlendMode:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(v34, "blendMode"))}];
              [v35 setMakeOpaqueIfPossible:{objc_msgSend(v34, "makeOpaqueIfPossible")}];
              [v35 setGradientOrColorName:{objc_msgSend(v34, "gradientOrColorName")}];
              [v34 blurStrength];
              [v35 setBlurStrength:?];
              [v35 setHasLightingEffects:{objc_msgSend(v34, "hasLightingEffects")}];
              [v35 setGathersSpecularByElement:{objc_msgSend(v34, "gathersSpecularByElement")}];
              [v35 setShadowStyle:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", objc_msgSend(v34, "shadowStyle"))}];
              v39 = MEMORY[0x277CCABB0];
              [v34 shadowOpacity];
              [v35 setShadowOpacity:{objc_msgSend(v39, "numberWithDouble:")}];
              [v35 setHasSpecular:{objc_msgSend(v34, "hasSpecular")}];
              v40 = MEMORY[0x277CCABB0];
              [v34 translucency];
              [v35 setTranslucency:{objc_msgSend(v40, "numberWithDouble:")}];
              if ([objc_msgSend(v34 "layerName")])
              {
                v41 = [v113 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v34, "layerName"))}];
                if ([v41 count])
                {
                  [array2 addObject:{objc_msgSend(v41, "firstObject")}];
                }

                else
                {
                  v41 = [v104 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v34, "layerName"))}];
                }

                if (![v41 count])
                {
                  v41 = [v106 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v34, "layerName"))}];
                }

                if ([v41 count])
                {
                  v43 = [v41 objectAtIndex:0];
                  if (v43)
                  {
                    v44 = v43;
                    [v35 setReference:v43];
                    [v44 setMakeOpaqueIfPossible:{objc_msgSend(v35, "makeOpaqueIfPossible")}];
                    goto LABEL_51;
                  }
                }
              }

              else
              {
                v42 = -[CoreThemeDocument renditionTypeWithIdentifier:](selfCopy3, "renditionTypeWithIdentifier:", [v108 renditionType]);
                selfCopy3 = self;
                NSLog(&cfstr_Layerreference_0.isa, v34, [v108 name], objc_msgSend(v42, "constantName"));
              }

              [array3 addObject:v35];
LABEL_51:
              [v26 addObject:v35];
            }

            v31 = [layerReferences countByEnumeratingWithState:&v142 objects:v164 count:16];
          }

          while (v31);
        }

        [v22 setLayerReferences:v26];

        v8 = v103 + 1;
      }

      while (v103 + 1 != v101);
      v101 = [obj countByEnumeratingWithState:&v154 objects:v166 count:16];
    }

    while (v101);
  }

  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v45 = [array3 countByEnumeratingWithState:&v138 objects:v163 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v139;
    do
    {
      for (j = 0; j != v46; ++j)
      {
        if (*v139 != v47)
        {
          objc_enumerationMutation(array3);
        }

        v49 = *(*(&v138 + 1) + 8 * j);
        if (![v49 reference])
        {
          v50 = [v113 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v49, "name"))}];
          if ([v50 count])
          {
            [array2 addObject:{objc_msgSend(v50, "firstObject")}];
          }

          else
          {
            v50 = [v104 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v49, "name"))}];
          }

          if (![v50 count])
          {
            v50 = [v106 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v49, "name"))}];
          }

          if ([v50 count])
          {
            firstObject = [v50 firstObject];
            [v49 setReference:firstObject];
            [firstObject setMakeOpaqueIfPossible:{objc_msgSend(v49, "makeOpaqueIfPossible")}];
          }

          else
          {
            NSLog(&cfstr_CouldnTResolve_0.isa, [v49 name], objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v49, "stack"), "production"), "name"), "name"));
          }
        }
      }

      v46 = [array3 countByEnumeratingWithState:&v138 objects:v163 count:16];
    }

    while (v46);
  }

  if ([v86 count])
  {
    [(CoreThemeDocument *)self targetPlatform];
    v52 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"MultisizeImageSetProduction", objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name IN %@", v86), 0)}];
    v134 = 0u;
    v135 = 0u;
    v136 = 0u;
    v137 = 0u;
    v53 = [v52 countByEnumeratingWithState:&v134 objects:v162 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v135;
      do
      {
        for (k = 0; k != v54; ++k)
        {
          if (*v135 != v55)
          {
            objc_enumerationMutation(v52);
          }

          v57 = *(*(&v134 + 1) + 8 * k);
          v130 = 0u;
          v131 = 0u;
          v132 = 0u;
          v133 = 0u;
          renditions = [v57 renditions];
          v59 = [renditions countByEnumeratingWithState:&v130 objects:v161 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v131;
            do
            {
              for (m = 0; m != v60; ++m)
              {
                if (*v131 != v61)
                {
                  objc_enumerationMutation(renditions);
                }

                v63 = *(*(&v130 + 1) + 8 * m);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  -[CoreThemeDocument deleteObject:](self, "deleteObject:", [v63 asset]);
                  [objc_msgSend(v63 "asset")];
                }
              }

              v60 = [renditions countByEnumeratingWithState:&v130 objects:v161 count:16];
            }

            while (v60);
          }
        }

        v54 = [v52 countByEnumeratingWithState:&v134 objects:v162 count:16];
      }

      while (v54);
    }

    [(CoreThemeDocument *)self deleteObjects:v52];
    allKeys = [dictionary allKeys];
    v126 = 0u;
    v127 = 0u;
    v128 = 0u;
    v129 = 0u;
    v65 = [allKeys countByEnumeratingWithState:&v126 objects:v160 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v127;
      do
      {
        for (n = 0; n != v66; ++n)
        {
          if (*v127 != v67)
          {
            objc_enumerationMutation(allKeys);
          }

          -[CoreThemeDocument _addLegacyIconAssetsForLayerStackProduction:withName:error:](self, "_addLegacyIconAssetsForLayerStackProduction:withName:error:", [dictionary objectForKey:*(*(&v126 + 1) + 8 * n)], *(*(&v126 + 1) + 8 * n), error);
        }

        v66 = [allKeys countByEnumeratingWithState:&v126 objects:v160 count:16];
      }

      while (v66);
    }
  }

  if ([array2 count])
  {
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v107 = [array2 countByEnumeratingWithState:&v122 objects:v159 count:16];
    if (v107)
    {
      v105 = *v123;
      do
      {
        for (ii = 0; ii != v107; ++ii)
        {
          if (*v123 != v105)
          {
            objc_enumerationMutation(array2);
          }

          v70 = *(*(&v122 + 1) + 8 * ii);
          v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v112 = v70;
          renditions2 = [v70 renditions];
          v73 = [renditions2 countByEnumeratingWithState:&v118 objects:v158 count:16];
          if (v73)
          {
            v74 = v73;
            v114 = 0;
            v116 = v71;
            v109 = ii;
            v75 = *v119;
            while (1)
            {
              for (jj = 0; jj != v74; ++jj)
              {
                if (*v119 != v75)
                {
                  objc_enumerationMutation(renditions2);
                }

                v77 = *(*(&v118 + 1) + 8 * jj);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v78 = [objc_msgSend(objc_msgSend(v77 "asset")];
                  if ([v78 caseInsensitiveCompare:@"SVG"])
                  {
                    if (![v78 caseInsensitiveCompare:@"PNG"] || !objc_msgSend(v78, "caseInsensitiveCompare:", @"JPEG") || !objc_msgSend(v78, "caseInsensitiveCompare:", @"JPG") || !objc_msgSend(v78, "caseInsensitiveCompare:", @"HEIC"))
                    {
                      asset = [v77 asset];
                      [asset sourceImageSizeWithDocument:self];
                      v81 = v80;
                      v83 = v82;
                      if (v80 <= 1024.0 || [objc_msgSend(asset "scaledWidth")])
                      {
                        if (v83 <= 1024.0 || [objc_msgSend(asset "scaledHeight")])
                        {
                          continue;
                        }

                        v84 = v83;
                      }

                      else
                      {
                        v84 = v81;
                      }

                      v85 = 1024.0 / v84;
                      if (1024.0 / v84 != 1.0)
                      {
                        [asset setScaledWidth:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", vcvtmd_s64_f64(v81 * v85))}];
                        [asset setScaledHeight:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithInteger:", vcvtmd_s64_f64(v83 * v85))}];
                      }
                    }
                  }

                  else if ([objc_msgSend(v77 "asset")])
                  {
                    [v116 addObject:v77];
                    -[CoreThemeDocument deleteObject:](self, "deleteObject:", [v77 asset]);
                  }

                  else
                  {
                    v114 = v77;
                  }
                }
              }

              v74 = [renditions2 countByEnumeratingWithState:&v118 objects:v158 count:16];
              if (!v74)
              {
                ii = v109;
                v71 = v116;
                if (v114)
                {
                  [objc_msgSend(v114 "keySpec")];
                  [v112 setPreservesVectorRepresentation:1];
                  [(CoreThemeDocument *)self deleteObjects:v116];
                }

                break;
              }
            }
          }
        }

        v107 = [array2 countByEnumeratingWithState:&v122 objects:v159 count:16];
      }

      while (v107);
    }
  }
}

- (void)_addLegacyIconAssetsForLayerStackProduction:(id)production withName:(id)name error:(id *)error
{
  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v9 = @"UIAppearanceAny";
  v24 = targetPlatform;
  if (targetPlatform)
  {
    v10 = @"UIAppearanceLight";
  }

  else
  {
    v9 = @"NSAppearanceNameSystem";
    v10 = @"NSAppearanceNameAqua";
  }

  if (targetPlatform)
  {
    v11 = @"UIAppearanceDark";
  }

  else
  {
    v11 = @"NSAppearanceNameDarkAqua";
  }

  v12 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", v9), 0), "firstObject"}];
  v13 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", v10), 0), "firstObject"}];
  v14 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", v11), 0), "firstObject"}];
  v15 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"Appearance" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name == %@", @"ISAppearanceTintable", 0), "firstObject"}];
  v16 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v13);
  if (v16)
  {
    v17 = [(CoreThemeDocument *)self _iconLayerStackFromLayerStackRendition:v16 withName:name matchingAppearance:v13 fallbackAppearance:v12 error:error];
    -[CoreThemeDocument _addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:](self, "_addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:", v17, v12, 0, [MEMORY[0x277D1B180] color], error);
    if (v24 == 1)
    {
      v18 = v12;
      v19 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v14);
      if (v19 || (v19 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v12)) != 0)
      {
        v20 = [(CoreThemeDocument *)self _iconLayerStackFromLayerStackRendition:v19 withName:name matchingAppearance:v14 fallbackAppearance:v12 error:error];
        -[CoreThemeDocument _addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:](self, "_addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:", v20, v14, 1, [MEMORY[0x277D1B180] color], error);
      }

      v21 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v15);
      if (v21 || (v21 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [production renditions], v18)) != 0)
      {
        v22 = [(CoreThemeDocument *)self _iconLayerStackFromLayerStackRendition:v21 withName:name matchingAppearance:v15 fallbackAppearance:v18 error:error];
        v23 = [MEMORY[0x277D1B180] tintWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];

        [(CoreThemeDocument *)self _addLegacyIconAssetsForLayerStack:v22 forAppearance:v15 renderedAppearance:1 renderingMode:v23 error:error];
      }
    }
  }

  else if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:5 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Failed to find a light mode icon rendition for layered icon production", *MEMORY[0x277CCA450], 0, 0)}];
  }
}

- (id)_iconLayerStackFromLayerStackRendition:(id)rendition withName:(id)name matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error
{
  v26 = *MEMORY[0x277D85DE8];
  if (rendition)
  {
    [(CoreThemeDocument *)self targetPlatform];
    CUIMaxScaleForTargetPlatform();
    v13 = objc_alloc(MEMORY[0x277D026A0]);
    [rendition canvasSize];
    v14 = [v13 initWithName:name withSize:? atScale:?];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    layerReferences = [rendition layerReferences];
    v16 = [layerReferences countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(layerReferences);
          }

          [(CoreThemeDocument *)self _addLayerReference:*(*(&v21 + 1) + 8 * v19++) toMutableIconLayerStack:v14 matchingAppearance:appearance fallbackAppearance:fallbackAppearance error:error];
        }

        while (v17 != v19);
        v17 = [layerReferences countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v17);
    }

    [v14 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(rendition, "keySpec"), "appearance"), "name")}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)_namedColorFromColorRendition:(id)rendition
{
  components[4] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277D02688]);
  v6 = -[CoreThemeDocument createCGColorSpaceWithIdentifier:](self, "createCGColorSpaceWithIdentifier:", [rendition colorSpaceID]);
  [rendition red];
  components[0] = v7;
  [rendition green];
  components[1] = v8;
  [rendition blue];
  components[2] = v9;
  [rendition alpha];
  components[3] = v10;
  v11 = CGColorCreate(v6, components);
  [v5 setCGColor:v11];
  [v5 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(rendition, "keySpec"), "appearance"), "name")}];
  CGColorRelease(v11);
  CGColorSpaceRelease(v6);
  return v5;
}

- (id)_namedGradientFromGradientRendition:(id)rendition matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance
{
  v38 = *MEMORY[0x277D85DE8];
  v28 = objc_alloc_init(MEMORY[0x277D02690]);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [rendition colorStops];
  v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        colorName = [v13 colorName];
        v15 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedColorProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", colorName), 0), "firstObject"}];
        v16 = [objc_msgSend(v15 "renditions")];
        renditions = [v15 renditions];
        if (v16 < 2)
        {
          anyObject = [renditions anyObject];
        }

        else
        {
          v18 = [(CoreThemeDocument *)self _renditionInSet:renditions matchingAppearance:fallbackAppearance];
          v19 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v15 renditions], appearance);
          if (v19)
          {
            anyObject = v19;
          }

          else
          {
            anyObject = v18;
          }
        }

        v21 = -[CoreThemeDocument createCGColorSpaceWithIdentifier:](self, "createCGColorSpaceWithIdentifier:", [anyObject colorSpaceID]);
        [anyObject red];
        components[0] = v22;
        [anyObject green];
        components[1] = v23;
        [anyObject blue];
        components[2] = v24;
        [anyObject alpha];
        components[3] = v25;
        v26 = CGColorCreate(v21, components);
        [array addObject:v26];
        [array2 addObject:{objc_msgSend(v13, "stop")}];
        CGColorRelease(v26);
        CGColorSpaceRelease(v21);
      }

      v10 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v10);
  }

  [v28 setColors:array andStops:array2];
  [v28 setGradientType:{objc_msgSend(objc_msgSend(rendition, "gradientType"), "integerValue")}];
  [v28 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(rendition, "keySpec"), "appearance"), "name")}];
  [rendition gradientStartPoint];
  [v28 setGradientStartPoint:?];
  [rendition gradientEndPoint];
  [v28 setGradientEndPoint:?];
  return v28;
}

- (id)_renditionInSet:(id)set matchingAppearance:(id)appearance
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3052000000;
  v10 = __Block_byref_object_copy__0;
  v11 = __Block_byref_object_dispose__0;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__CoreThemeDocument__renditionInSet_matchingAppearance___block_invoke;
  v6[3] = &unk_278EBB0E8;
  v6[4] = appearance;
  v6[5] = &v7;
  [set enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);
  return v4;
}

void *__56__CoreThemeDocument__renditionInSet_matchingAppearance___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [objc_msgSend(objc_msgSend(a2 "keySpec")];
  result = [*(a1 + 32) identifier];
  if (v6 == result)
  {
    *(*(*(a1 + 40) + 8) + 40) = a2;
    *a3 = 1;
  }

  return result;
}

- (void)_addLayerReference:(id)reference toMutableIconLayerStack:(id)stack matchingAppearance:(id)appearance fallbackAppearance:(id)fallbackAppearance error:(id *)error
{
  v107 = *MEMORY[0x277D85DE8];
  name = [reference name];
  [reference frameRect];
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  [objc_msgSend(reference "opacity")];
  v20 = v19;
  [objc_msgSend(reference "translucency")];
  v22 = v21;
  v91 = [objc_msgSend(reference "blendMode")];
  gradientOrColorName = [reference gradientOrColorName];
  [reference blurStrength];
  v25 = v24;
  hasSpecular = [reference hasSpecular];
  hasLightingEffects = [reference hasLightingEffects];
  gathersSpecularByElement = [reference gathersSpecularByElement];
  v90 = [objc_msgSend(reference "shadowStyle")];
  [objc_msgSend(reference "shadowOpacity")];
  v27 = v26;
  [(CoreThemeDocument *)self targetPlatform];
  v88 = CUIMaxScaleForTargetPlatform();
  v95 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedArtworkProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v28 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedColorProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v93 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedGradientProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v29 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"LayerStackProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", name), 0), "firstObject"}];
  v30 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedColorProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", gradientOrColorName), 0), "firstObject"}];
  v31 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self objectsForEntity:@"NamedGradientProduction" withPredicate:objc_msgSend(MEMORY[0x277CCAC30] sortDescriptors:{"predicateWithFormat:", @"name.name == %@", gradientOrColorName), 0), "firstObject"}];
  if (v28)
  {
    if ([objc_msgSend(appearance "name")])
    {
      v32 = 0;
    }

    else
    {
      v32 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v28 renditions], fallbackAppearance);
    }

    v36 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v28 renditions], appearance);
    if (v36)
    {
      v37 = v36;
    }

    else
    {
      v37 = v32;
    }

    if (v37)
    {
      v38 = [(CoreThemeDocument *)self _namedColorFromColorRendition:?];
LABEL_28:

      [stack addLayer:v38];
    }
  }

  else
  {
    v33 = v30;
    v34 = gradientOrColorName;
    if (v93)
    {
      if ([objc_msgSend(appearance "name")])
      {
        v35 = 0;
      }

      else
      {
        v35 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v93 renditions], fallbackAppearance);
      }

      v51 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v93 renditions], appearance);
      if (v51)
      {
        v52 = v51;
      }

      else
      {
        v52 = v35;
      }

      if (v52)
      {
        v38 = [(CoreThemeDocument *)self _namedGradientFromGradientRendition:v52 matchingAppearance:appearance fallbackAppearance:appearance];
        goto LABEL_28;
      }
    }

    else
    {
      v94 = v31;
      v39 = v25;
      appearanceCopy2 = appearance;
      if (v95 && [v95 isMemberOfClass:objc_opt_class()])
      {
        v41 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v95 renditions], fallbackAppearance);
        v42 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v95 renditions], appearance);
        if (v42)
        {
          v41 = v42;
        }

        v43 = [objc_msgSend(v41 "asset")];
        if (v33)
        {
          v44 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], fallbackAppearance);
          v45 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], appearance);
          if (v45)
          {
            v46 = v45;
          }

          else
          {
            v46 = v44;
          }

          v47 = [(CoreThemeDocument *)self _namedColorFromColorRendition:v46];
          v48 = 0;
          v49 = hasLightingEffects;
          v50 = v34;
        }

        else
        {
          v49 = hasLightingEffects;
          v50 = gradientOrColorName;
          if (v94)
          {
            v81 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v94 renditions], fallbackAppearance);
            v82 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v94 renditions], appearance);
            if (v82)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            v48 = [(CoreThemeDocument *)self _namedGradientFromGradientRendition:v83 matchingAppearance:appearance fallbackAppearance:appearance];
          }

          else
          {
            v48 = 0;
          }

          v47 = 0;
        }

        if ([-[__CFURL pathExtension](v43 "pathExtension")])
        {
          v101 = objc_alloc_init(MEMORY[0x277D026A8]);
          v84 = CGImageSourceCreateWithURL(v43, 0);
          if (v84)
          {
            v85 = v84;
            ImageAtIndex = CGImageSourceCreateImageAtIndex(v84, 0, 0);
            CFRelease(v85);
            if (ImageAtIndex)
            {
              [v101 setScale:v88];
              [v101 setFrame:{v12, v14, v16, v18}];
              [v101 setOpacity:v20];
              [v101 setImage:ImageAtIndex];
              [v101 setBlurStrength:v39];
              [v101 setHasLightingEffects:v49];
              [v101 setGradientOrColorName:v50];
              if (v47)
              {
                [v101 setColor:{objc_msgSend(v47, "cgColor")}];
                v87 = v91;
              }

              else
              {
                v87 = v91;
                if (v48)
                {
                  [v101 setGradient:v48];
                }
              }

              [v101 setBlendMode:v87];
              [v101 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(v41, "keySpec"), "appearance"), "name")}];
              [stack addLayer:v101];
              CGImageRelease(ImageAtIndex);
            }
          }
        }

        else
        {
          v101 = objc_alloc_init(MEMORY[0x277D026B0]);
          [v101 setSvgDocumentURL:v43];
          [v101 setSvgDocument:CGSVGDocumentCreateFromURL()];
          CGSVGDocumentRelease();
          [v101 setScale:v88];
          [v101 setFrame:{v12, v14, v16, v18}];
          [v101 setOpacity:v20];
          [v101 setBlurStrength:v39];
          [v101 setHasLightingEffects:v49];
          [v101 setGradientOrColorName:v50];
          [v101 setBlendMode:v91];
          if (v47)
          {
            [v101 setColor:{objc_msgSend(v47, "cgColor")}];
          }

          else if (v48)
          {
            [v101 setGradient:v48];
          }

          [v101 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(v41, "keySpec"), "appearance"), "name")}];
          [stack addLayer:v101];
        }
      }

      else if (v29)
      {
        v53 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v29 renditions], fallbackAppearance);
        v54 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v29 renditions], appearance);
        if (v54)
        {
          v55 = v54;
        }

        else
        {
          v55 = v53;
        }

        v56 = objc_alloc_init(MEMORY[0x277D02698]);
        [v56 setOpacity:v20];
        [v56 setBlendMode:v91];
        [v56 setBlurStrength:v39];
        [v56 setHasLightingEffects:hasLightingEffects];
        [v56 setGathersSpecularByElement:gathersSpecularByElement];
        if (v33)
        {
          v57 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], fallbackAppearance);
          v58 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v33 renditions], appearance);
          if (v58)
          {
            v59 = v58;
          }

          else
          {
            v59 = v57;
          }

          v60 = [(CoreThemeDocument *)self _namedColorFromColorRendition:v59];
          v61 = hasSpecular;
          v62 = v90;
          if (v60)
          {
            [v56 setColor:{objc_msgSend(v60, "cgColor")}];
          }
        }

        else
        {
          v61 = hasSpecular;
          v62 = v90;
          if (v94)
          {
            v63 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v94 renditions], fallbackAppearance);
            v64 = -[CoreThemeDocument _renditionInSet:matchingAppearance:](self, "_renditionInSet:matchingAppearance:", [v94 renditions], appearance);
            v65 = v64 ? v64 : v63;
            v66 = [(CoreThemeDocument *)self _namedGradientFromGradientRendition:v65 matchingAppearance:appearance fallbackAppearance:appearance];
            if (v66)
            {
              [v56 setGradient:v66];
            }
          }
        }

        [v56 setShadowStyle:v62];
        [v56 setShadowOpacity:v27];
        [v56 setHasSpecular:v61];
        [v56 setTranslucency:v22];
        [v56 setAppearance:{objc_msgSend(objc_msgSend(objc_msgSend(v55, "keySpec"), "appearance"), "name")}];
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        layerReferences = [v55 layerReferences];
        v68 = [layerReferences countByEnumeratingWithState:&v102 objects:v106 count:16];
        fallbackAppearanceCopy2 = fallbackAppearance;
        if (v68)
        {
          v70 = v68;
          v71 = *v103;
          v97 = *MEMORY[0x277CCA450];
          do
          {
            for (i = 0; i != v70; ++i)
            {
              if (*v103 != v71)
              {
                objc_enumerationMutation(layerReferences);
              }

              v73 = *(*(&v102 + 1) + 8 * i);
              if (v73 == reference)
              {
                _CUILog(4, "infinite recursion for layer group %@", [reference name]);
                if (error)
                {
                  selfCopy = self;
                  v75 = [MEMORY[0x277CCACA8] stringWithFormat:@"infinite recursion for layer group %@ in icon %@", objc_msgSend(reference, "name"), objc_msgSend(stack, "name")];
                  v76 = MEMORY[0x277CCA9B8];
                  v77 = CoreThemeDefinitionErrorDomain[0];
                  v78 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v75, v97, 0}];
                  v79 = v76;
                  v80 = v77;
                  self = selfCopy;
                  fallbackAppearanceCopy2 = fallbackAppearance;
                  appearanceCopy2 = appearance;
                  *error = [v79 errorWithDomain:v80 code:201 userInfo:v78];
                }
              }

              else
              {
                [(CoreThemeDocument *)self _addLayerReference:v73 toMutableIconLayerStack:v56 matchingAppearance:appearanceCopy2 fallbackAppearance:fallbackAppearanceCopy2 error:error];
              }
            }

            v70 = [layerReferences countByEnumeratingWithState:&v102 objects:v106 count:16];
          }

          while (v70);
        }

        [stack addLayer:v56];
      }
    }
  }
}

- (void)_addLegacyIconAssetsForLayerStack:(id)stack forAppearance:(id)appearance renderedAppearance:(unint64_t)renderedAppearance renderingMode:(id)mode error:(id *)error
{
  v85[7] = *MEMORY[0x277D85DE8];
  if (!stack)
  {
    return;
  }

  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v11 = 0;
  selfCopy = self;
  v55 = targetPlatform;
  errorCopy = error;
  if (targetPlatform > 1)
  {
    if (targetPlatform > 3)
    {
      if (targetPlatform == 4)
      {
        v11 = 5;
      }

      else if (targetPlatform == 5)
      {
        v11 = 8;
      }

      goto LABEL_16;
    }

    if (targetPlatform == 2)
    {
      v11 = 7;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  if (targetPlatform == -1)
  {
    _CUILog(4, "Unknown target platform %d", -1);
    v11 = 0;
    goto LABEL_16;
  }

  if (targetPlatform)
  {
    if (targetPlatform != 1)
    {
LABEL_16:
      v68[0] = @"size";
      v68[1] = @"scale";
      v69[0] = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
      v69[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
      v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v69 forKeys:v68 count:2];
      v12 = MEMORY[0x277CBEA60];
      v13 = &v70;
      v14 = 1;
      goto LABEL_17;
    }

LABEL_9:
    v11 = targetPlatform;
    goto LABEL_16;
  }

  v83[0] = @"size";
  v83[1] = @"scale";
  v84[0] = [MEMORY[0x277CCAE60] valueWithSize:{16.0, 16.0}];
  v84[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v85[0] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  v81[0] = @"size";
  v81[1] = @"scale";
  v82[0] = [MEMORY[0x277CCAE60] valueWithSize:{32.0, 32.0}];
  v82[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v85[1] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:2];
  v79[0] = @"size";
  v80[0] = [MEMORY[0x277CCAE60] valueWithSize:{64.0, 64.0}];
  v79[1] = @"scale";
  v80[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v85[2] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v80 forKeys:v79 count:2];
  v77[0] = @"size";
  v77[1] = @"scale";
  v78[0] = [MEMORY[0x277CCAE60] valueWithSize:{128.0, 128.0}];
  v78[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v85[3] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  v75[0] = @"size";
  v75[1] = @"scale";
  v76[0] = [MEMORY[0x277CCAE60] valueWithSize:{256.0, 256.0}];
  v76[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v85[4] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  v73[0] = @"size";
  v73[1] = @"scale";
  v74[0] = [MEMORY[0x277CCAE60] valueWithSize:{512.0, 512.0}];
  v74[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:2];
  v85[5] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  v71[0] = @"size";
  v71[1] = @"scale";
  v72[0] = [MEMORY[0x277CCAE60] valueWithSize:{1024.0, 1024.0}];
  v72[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:1];
  v85[6] = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
  v12 = MEMORY[0x277CBEA60];
  v11 = 7;
  v13 = v85;
  v14 = 7;
LABEL_17:
  v15 = [v12 arrayWithObjects:v13 count:v14];
  array = [MEMORY[0x277CBEB18] array];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v15;
  v17 = [v15 countByEnumeratingWithState:&v63 objects:v67 count:16];
  v59 = array;
  if (v17)
  {
    v18 = v17;
    v19 = *v64;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v64 != v19)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v63 + 1) + 8 * i);
        [objc_msgSend(v21 objectForKey:{@"size", "sizeValue"}];
        v24 = [stack finalizedIconWithSize:objc_msgSend(objc_msgSend(v21 scale:"objectForKey:" deviceClass:@"scale" appearance:"unsignedIntegerValue") renderingMode:{v11, renderedAppearance, mode, v22, v23}];
        if (v24)
        {
          v25 = v24;
          v26 = objc_alloc_init(MEMORY[0x277D1B178]);
          v27 = [v25 renderedLegacyCompatibleIconWithConfiguration:v26 forDeviceClass:v11];

          array = v59;
          [v59 addObject:v27];
        }
      }

      v18 = [v15 countByEnumeratingWithState:&v63 objects:v67 count:16];
    }

    while (v18);
  }

  v28 = selfCopy;
  appearanceCopy2 = appearance;
  if ([array count])
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v56 = objc_alloc_init(MEMORY[0x277CBEB18]);
    if ([array count])
    {
      v31 = 0;
      while (1)
      {
        v32 = [array objectAtIndex:v31];
        v33 = -[CoreThemeDocument namedElementWithName:](v28, "namedElementWithName:", [stack name]);
        v34 = [obj objectAtIndex:v31];
        [objc_msgSend(v34 objectForKey:{@"size", "sizeValue"}];
        v36 = v35;
        v38 = v37;
        v39 = [objc_msgSend(v34 objectForKey:{@"scale", "unsignedIntegerValue"}];
        v40 = [objc_msgSend(stack "name")];
        name = [appearanceCopy2 name];
        v42 = [MEMORY[0x277CBEBC0] fileURLWithPath:NSTemporaryDirectory()];
        if (name)
        {
          v43 = name;
        }

        else
        {
          v43 = @"Any";
        }

        v44 = [v42 URLByAppendingPathComponent:{objc_msgSend(v40, "stringByAppendingFormat:", @"_%@_%@.png", v43, objc_msgSend(objc_msgSend(MEMORY[0x277CCAC38], "processInfo"), "globallyUniqueString"))}];
        v45 = CGImageDestinationCreateWithURL(v44, @"public.png", 1uLL, 0);
        CGImageDestinationAddImage(v45, v32, 0);
        CGImageDestinationFinalize(v45);
        CFRelease(v45);
        tempFilesToCleanup = v28->_tempFilesToCleanup;
        if (!tempFilesToCleanup)
        {
          tempFilesToCleanup = objc_alloc_init(MEMORY[0x277CBEB18]);
          v28->_tempFilesToCleanup = tempFilesToCleanup;
        }

        [(NSMutableArray *)tempFilesToCleanup addObject:v44];
        array = v59;
        appearanceCopy2 = appearance;
        if (!renderedAppearance && (v36 >= 1024.0 || v38 >= 1024.0))
        {
          appearanceIconFilesForName = v28->_appearanceIconFilesForName;
          if (!appearanceIconFilesForName)
          {
            appearanceIconFilesForName = objc_alloc_init(MEMORY[0x277CBEB38]);
            v28->_appearanceIconFilesForName = appearanceIconFilesForName;
          }

          -[NSMutableDictionary setObject:forKey:](appearanceIconFilesForName, "setObject:forKey:", v44, [stack name]);
        }

        v48 = objc_alloc_init(TDNamedAssetImportInfo);
        -[TDNamedAssetImportInfo setName:](v48, "setName:", [stack name]);
        -[TDNamedAssetImportInfo setNameIdentifier:](v48, "setNameIdentifier:", [objc_msgSend(v33 "identifier")]);
        if (v55 == 4)
        {
          break;
        }

        if (v55 != 1)
        {
          v50 = 0;
          goto LABEL_45;
        }

        [(TDNamedAssetImportInfo *)v48 setIdiom:1];
        [(TDNamedAssetImportInfo *)v48 setRenditionType:0];
        [(TDNamedAssetImportInfo *)v48 setFileURL:v44];
        [v56 addObject:v44];
        -[TDNamedAssetImportInfo setIconSize:](v48, "setIconSize:", [MEMORY[0x277CCAE60] valueWithSize:{v36, v38}]);
        [(TDNamedAssetImportInfo *)v48 setDisplayGamut:0];
        [(TDNamedAssetImportInfo *)v48 setScaleFactor:v39];
        -[TDNamedAssetImportInfo setModificationDate:](v48, "setModificationDate:", [MEMORY[0x277CBEAA8] date]);
        -[TDNamedAssetImportInfo setAppearanceName:](v48, "setAppearanceName:", [appearance name]);
        -[TDNamedAssetImportInfo setAppearanceIdentifier:](v48, "setAppearanceIdentifier:", [appearance identifier]);
        [v30 addObject:v48];

        v48 = objc_alloc_init(TDNamedAssetImportInfo);
        -[TDNamedAssetImportInfo setName:](v48, "setName:", [stack name]);
        -[TDNamedAssetImportInfo setNameIdentifier:](v48, "setNameIdentifier:", [objc_msgSend(v33 "identifier")]);
        [(TDNamedAssetImportInfo *)v48 setIdiom:2];
        [(TDNamedAssetImportInfo *)v48 setRenditionType:0];
        [(TDNamedAssetImportInfo *)v48 setFileURL:v44];
        v28 = selfCopy;
        [v56 addObject:v44];
        v49 = MEMORY[0x277CCAE60];
LABEL_46:
        -[TDNamedAssetImportInfo setIconSize:](v48, "setIconSize:", [v49 valueWithSize:{v36, v38}]);
        [(TDNamedAssetImportInfo *)v48 setDisplayGamut:0];
        [(TDNamedAssetImportInfo *)v48 setScaleFactor:v39];
        -[TDNamedAssetImportInfo setModificationDate:](v48, "setModificationDate:", [MEMORY[0x277CBEAA8] date]);
        -[TDNamedAssetImportInfo setAppearanceName:](v48, "setAppearanceName:", [appearance name]);
        -[TDNamedAssetImportInfo setAppearanceIdentifier:](v48, "setAppearanceIdentifier:", [appearance identifier]);
        [v30 addObject:v48];

        if (++v31 >= [v59 count])
        {
          goto LABEL_47;
        }
      }

      v50 = 5;
LABEL_45:
      [(TDNamedAssetImportInfo *)v48 setIdiom:v50];
      [(TDNamedAssetImportInfo *)v48 setRenditionType:0];
      [(TDNamedAssetImportInfo *)v48 setFileURL:v44];
      [v56 addObject:v44];
      v49 = MEMORY[0x277CCAE60];
      goto LABEL_46;
    }

LABEL_47:
    array2 = [MEMORY[0x277CBEA60] array];
    v51 = [(CoreThemeDocument *)v28 _addAssetsAtFileURLs:v56 createProductions:0 referenceFiles:1 bitSource:[(CoreThemeDocument *)v28 _themeBitSourceForReferencedFilesAtURLs:v56 createIfNecessary:1] customInfos:v30 sortedCustomInfos:&array2];
    v52 = [v51 count];
    if (v52 != [array2 count])
    {
      [CoreThemeDocument _addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:];
    }

    [(CoreThemeDocument *)v28 createNamedArtworkProductionsForAssets:v51 customInfos:array2 skipLastStep:1 error:errorCopy];
  }
}

- (id)updateAutomaticTexturesForCustomInfos:(id)infos allTextureInfos:(id)textureInfos
{
  v52 = *MEMORY[0x277D85DE8];
  if ([infos count])
  {
    v47 = 0;
    v38 = [textureInfos mutableCopy];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v37 = [infos countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v37)
    {
      v36 = *v44;
      v7 = *MEMORY[0x277CBEEE8];
      obj = infos;
      do
      {
        v8 = 0;
        do
        {
          if (*v44 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v43 + 1) + 8 * v8);
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v42 = 0u;
          textureInfos = [v9 textureInfos];
          v11 = [textureInfos countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v40;
            while (2)
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v40 != v13)
                {
                  objc_enumerationMutation(textureInfos);
                }

                v15 = *(*(&v39 + 1) + 8 * i);
                if ([v15 fileURL] != v7)
                {
                  v16 = CGImageSourceCreateWithURL([v15 fileURL], 0);
                  if (v16)
                  {
                    v17 = v16;
                    ImageAtIndex = CGImageSourceCreateImageAtIndex(v16, 0, 0);
                    CFRelease(v17);
                    if (ImageAtIndex)
                    {
                      v47 = 2;
                      memset(v51, 0, sizeof(v51));
                      v19 = -1;
                      v20 = &v50;
                      do
                      {
                        [(CoreThemeDocument *)self targetPlatform];
                        [v9 displayGamut];
                        [v9 textureInterpretation];
                        v21 = CUIGetFormatForFeatureSetAndPixelFormat();
                        v22 = v47;
                        *(v51 + v47) = v21;
                        v47 = v22 - 1;
                        ++v20;
                        ++v19;
                      }

                      while (v22 > 0);
                      if (v19)
                      {
                        v23 = v19 + 1;
                        while (*(v51 + (v23 - 2)) == *v20)
                        {
                          if (--v23 <= 1)
                          {
                            goto LABEL_24;
                          }
                        }
                      }

                      else
                      {
LABEL_24:
                        v23 = 1;
                      }

                      targetPlatform = [(CoreThemeDocument *)self targetPlatform];
                      if (targetPlatform <= 5 && ((1 << targetPlatform) & 0x3A) != 0)
                      {
                        if (v23 >= 1)
                        {
                          v25 = 0;
                          v26 = v23;
                          do
                          {
                            v27 = *(v51 + v25);
                            if (v27)
                            {
                              v28 = [v9 copyWithZone:0];
                              [v28 setTexturePixelFormat:v27];
                              [v28 setGraphicsFeatureSetClass:v25];
                              [v38 addObject:v28];
                            }

                            ++v25;
                          }

                          while (v26 != v25);
                        }
                      }

                      else
                      {
                        if ([(CoreThemeDocument *)self featureEnabled:18])
                        {
                          v29 = v23 - 1;
                        }

                        else
                        {
                          v29 = 0;
                        }

                        if ((v29 & 0x80000000) == 0)
                        {
                          while (1)
                          {
                            v30 = *(v51 + v29);
                            v31 = v29;
                            if (v30)
                            {
                              break;
                            }

                            --v29;
                            if (v31 < 1)
                            {
                              goto LABEL_32;
                            }
                          }

                          v32 = [v9 copyWithZone:0];
                          [v32 setTexturePixelFormat:v30];
                          [v32 setGraphicsFeatureSetClass:v31];
                          [v38 addObject:v32];
                        }
                      }

LABEL_32:
                      CFRelease(ImageAtIndex);
                    }

                    goto LABEL_33;
                  }
                }
              }

              v12 = [textureInfos countByEnumeratingWithState:&v39 objects:v48 count:16];
              if (v12)
              {
                continue;
              }

              break;
            }
          }

LABEL_33:
          ++v8;
        }

        while (v8 != v37);
        v33 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
        v37 = v33;
      }

      while (v33);
    }

    return v38;
  }

  return textureInfos;
}

+ (id)_imageAssetURLsByCopyingFileURLs:(id)ls toManagedLocationAtURL:(id)l error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(ls, "count")}];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [l URLByAppendingPathComponent:@"NamedImages"];
  if (([v10 checkResourceIsReachableAndReturnError:0] & 1) != 0 || (v11 = objc_msgSend(defaultManager, "createDirectoryAtURL:withIntermediateDirectories:attributes:error:", v10, 1, 0, error), result = 0, v11))
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = [ls countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v13)
    {
      v14 = v13;
      errorCopy = error;
      v15 = *v25;
      v16 = *MEMORY[0x277CBEEE8];
      while (2)
      {
        v17 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(ls);
          }

          v18 = *(*(&v24 + 1) + 8 * v17);
          if (v18 == v16)
          {
            v20 = v8;
            v21 = v16;
          }

          else
          {
            v23 = 0;
            v19 = [v10 URLByAppendingPathComponent:{objc_msgSend(v18, "lastPathComponent")}];
            if ([v19 checkResourceIsReachableAndReturnError:&v23] && (NSLog(&cfstr_FileAlreadyExi.isa, v18), (objc_msgSend(defaultManager, "removeItemAtURL:error:", v19, &v23) & 1) == 0) || (objc_msgSend(defaultManager, "copyItemAtURL:toURL:error:", v18, v19, &v23) & 1) == 0)
            {
              if (errorCopy)
              {
                *errorCopy = v23;
              }

              return 0;
            }

            v20 = v8;
            v21 = v19;
          }

          [v20 addObject:v21];
          ++v17;
        }

        while (v14 != v17);
        v14 = [ls countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    return v8;
  }

  return result;
}

- (int64_t)_compareFlattenedKeySpec1:(id)spec1 toKeySpec2:(id)spec2
{
  scaleFactor = [spec1 scaleFactor];
  if (scaleFactor != [spec2 scaleFactor])
  {
    return -1;
  }

  idiom = [spec1 idiom];
  if (idiom != [spec2 idiom])
  {
    return -1;
  }

  subtype = [spec1 subtype];
  if (subtype != [spec2 subtype])
  {
    return -1;
  }

  gamut = [spec1 gamut];
  if (gamut == [spec2 gamut])
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

- (void)_addResolvedLayerReferenceToFlattenedImageRendition:(id)rendition usingArtworkRendition:(id)artworkRendition andLayerReference:(id)reference
{
  v8 = [(CoreThemeDocument *)self newObjectForEntity:@"ResolvedImageLayerReference"];
  [v8 setReference:artworkRendition];
  [v8 setBlendMode:{objc_msgSend(reference, "blendMode")}];
  [reference frameRect];
  [v8 setFrameRect:?];
  [v8 setName:{objc_msgSend(reference, "name")}];
  [v8 setOpacity:{objc_msgSend(reference, "opacity")}];
  [rendition addLayerReferencesObject:v8];
  asset = [artworkRendition asset];

  [rendition setAsset:asset];
}

- (void)_makeRadiosityImages
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self partWithIdentifier:209];
  v20 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"LayerStackProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"renditionType.identifier == %d", 1002], 0);
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v4 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v4;
        v5 = *(*(&v28 + 1) + 8 * v4);
        flattenedImageProduction = [v5 flattenedImageProduction];
        if (flattenedImageProduction)
        {
          v7 = flattenedImageProduction;
          v8 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkElementProduction"];
          [v8 setTemplateRenderingMode:{objc_msgSend(v7, "templateRenderingMode")}];
          v9 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
          [v9 setElement:{objc_msgSend(objc_msgSend(v5, "baseKeySpec"), "element")}];
          [v9 setPart:v3];
          [v8 setBaseKeySpec:v9];
          [v8 setRenditionType:v20];
          [v8 setTags:{objc_msgSend(v5, "tags")}];
          [v5 setRadiosityImageProduction:v8];
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          renditions = [v7 renditions];
          v11 = [renditions countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v11)
          {
            v12 = v11;
            v13 = *v25;
            do
            {
              for (i = 0; i != v12; ++i)
              {
                if (*v25 != v13)
                {
                  objc_enumerationMutation(renditions);
                }

                v15 = *(*(&v24 + 1) + 8 * i);
                v16 = [(CoreThemeDocument *)self newObjectForEntity:@"RadiosityImageRenditionSpec"];
                [v16 setFlattenedImage:v15];
                [v16 setProduction:v8];
                [v16 setAsset:{objc_msgSend(v15, "asset")}];
                v17 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
                [v17 setElement:{objc_msgSend(objc_msgSend(v15, "keySpec"), "element")}];
                [v17 setPart:v3];
                [v17 setScaleFactor:{objc_msgSend(objc_msgSend(v15, "keySpec"), "scaleFactor")}];
                [v17 setIdiom:{objc_msgSend(objc_msgSend(v15, "keySpec"), "idiom")}];
                [v17 setSubtype:{objc_msgSend(objc_msgSend(v15, "keySpec"), "subtype")}];
                [v17 setNameIdentifier:{objc_msgSend(objc_msgSend(v15, "keySpec"), "nameIdentifier")}];
                [v17 setGraphicsFeatureSetClass:{objc_msgSend(objc_msgSend(v15, "keySpec"), "graphicsFeatureSetClass")}];
                [v17 setTarget:{objc_msgSend(objc_msgSend(v15, "keySpec"), "target")}];
                [v17 setGamut:{objc_msgSend(objc_msgSend(v15, "keySpec"), "gamut")}];
                [v16 setCompressionType:{objc_msgSend(v15, "compressionType")}];
                [v16 setKeySpec:v17];
                v18 = [v17 scaleFactor] * 40.0;
                [v16 setWidth:{(objc_msgSend(v15, "width") + v18 * 2.0)}];
                [v16 setHeight:{(objc_msgSend(v15, "height") + v18 * 2.0)}];
              }

              v12 = [renditions countByEnumeratingWithState:&v24 objects:v32 count:16];
            }

            while (v12);
          }
        }

        v4 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }
}

- (void)_tidyUpLayerStacks
{
  v172 = *MEMORY[0x277D85DE8];
  idioms = [(CoreThemeDocument *)self idioms];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  deploymentTargets = [(CoreThemeDocument *)self deploymentTargets];
  v3 = [(CoreThemeDocument *)self objectsForEntity:@"LayerStackProduction" withPredicate:0 sortDescriptors:0];
  v93 = [(CoreThemeDocument *)self partWithIdentifier:208];
  v74 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  v90 = [(CoreThemeDocument *)self graphicsFeatureSetClassWithIdentifier:2];
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  v158 = 0u;
  obj = v3;
  v77 = [v3 countByEnumeratingWithState:&v155 objects:v171 count:16];
  if (v77)
  {
    v76 = *v156;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v156 != v76)
      {
        objc_enumerationMutation(obj);
      }

      v5 = *(*(&v155 + 1) + 8 * v4);
      if ([objc_msgSend(v5 "renditionType")] == 1019)
      {
        break;
      }

      v78 = v4;
      renditions = [v5 renditions];
      v85 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(renditions, "count")}];
      v151 = 0u;
      v152 = 0u;
      v153 = 0u;
      v154 = 0u;
      renditions2 = [v5 renditions];
      v8 = [renditions2 countByEnumeratingWithState:&v151 objects:v170 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v152;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v152 != v10)
            {
              objc_enumerationMutation(renditions2);
            }

            v12 = *(*(&v151 + 1) + 8 * i);
            v13 = objc_alloc_init(_TDLayerStackFilterHelper);
            [(_TDLayerStackFilterHelper *)v13 setLayerStackRendition:v12];
            [v85 addObject:v13];
          }

          v9 = [renditions2 countByEnumeratingWithState:&v151 objects:v170 count:16];
        }

        while (v9);
      }

      if ([v85 count])
      {
        v14 = 0;
        do
        {
          v15 = [v85 objectAtIndex:v14];
          if ([v85 count])
          {
            v16 = 0;
            do
            {
              if (v14 != v16)
              {
                [v15 establishExclusionsWithHelper:objc_msgSend(v85 idioms:"objectAtIndex:" sizeClasses:{v16), idioms, sizeClasses}];
              }

              ++v16;
            }

            while (v16 < [v85 count]);
          }

          ++v14;
        }

        while (v14 < [v85 count]);
      }

      name = [v5 name];
      flattenedImageProduction = [v5 flattenedImageProduction];
      if (flattenedImageProduction)
      {
        v86 = [objc_msgSend(v5 "flattenedImageProduction")];
      }

      else
      {
        v17 = [(CoreThemeDocument *)self newObjectForEntity:@"NamedArtworkProduction"];
        [v5 setFlattenedImageProduction:v17];
        [v17 setTags:{objc_msgSend(v5, "tags")}];
        v18 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
        [v18 setElement:{objc_msgSend(objc_msgSend(v5, "baseKeySpec"), "element")}];
        [v18 setPart:v93];
        [v17 setBaseKeySpec:v18];
        flattenedImageProduction = v17;
        [v17 setRenditionType:v74];
        v86 = 0;
      }

      v149 = 0u;
      v150 = 0u;
      v147 = 0u;
      v148 = 0u;
      renditions3 = [v5 renditions];
      v83 = [renditions3 countByEnumeratingWithState:&v147 objects:v169 count:16];
      if (v83)
      {
        v82 = *v148;
        do
        {
          v19 = 0;
          do
          {
            if (*v148 != v82)
            {
              objc_enumerationMutation(renditions3);
            }

            v84 = v19;
            v20 = *(*(&v147 + 1) + 8 * v19);
            array = [MEMORY[0x277CBEB18] array];
            v143 = 0u;
            v144 = 0u;
            v145 = 0u;
            v146 = 0u;
            v96 = v20;
            layerReferences = [v20 layerReferences];
            v103 = [layerReferences countByEnumeratingWithState:&v143 objects:v168 count:16];
            if (v103)
            {
              v101 = *v144;
              do
              {
                v21 = 0;
                do
                {
                  if (*v144 != v101)
                  {
                    objc_enumerationMutation(layerReferences);
                  }

                  v105 = v21;
                  v22 = *(*(&v143 + 1) + 8 * v21);
                  v139 = 0u;
                  v140 = 0u;
                  v141 = 0u;
                  v142 = 0u;
                  v23 = [objc_msgSend(v22 "reference")];
                  v24 = [v23 countByEnumeratingWithState:&v139 objects:v167 count:16];
                  if (v24)
                  {
                    v25 = v24;
                    v26 = *v140;
                    do
                    {
                      for (j = 0; j != v25; ++j)
                      {
                        if (*v140 != v26)
                        {
                          objc_enumerationMutation(v23);
                        }

                        v28 = *(*(&v139 + 1) + 8 * j);
                        v135 = 0u;
                        v136 = 0u;
                        v137 = 0u;
                        v138 = 0u;
                        v29 = [array countByEnumeratingWithState:&v135 objects:v166 count:16];
                        if (v29)
                        {
                          v30 = v29;
                          v31 = *v136;
LABEL_42:
                          v32 = 0;
                          while (1)
                          {
                            if (*v136 != v31)
                            {
                              objc_enumerationMutation(array);
                            }

                            if (!-[CoreThemeDocument _compareFlattenedKeySpec1:toKeySpec2:](self, "_compareFlattenedKeySpec1:toKeySpec2:", *(*(&v135 + 1) + 8 * v32), [v28 keySpec]))
                            {
                              break;
                            }

                            if (v30 == ++v32)
                            {
                              v30 = [array countByEnumeratingWithState:&v135 objects:v166 count:16];
                              if (v30)
                              {
                                goto LABEL_42;
                              }

                              goto LABEL_48;
                            }
                          }
                        }

                        else
                        {
LABEL_48:
                          [array addObject:{objc_msgSend(v28, "keySpec")}];
                        }
                      }

                      v25 = [v23 countByEnumeratingWithState:&v139 objects:v167 count:16];
                    }

                    while (v25);
                  }

                  v21 = v105 + 1;
                }

                while (v105 + 1 != v103);
                v103 = [layerReferences countByEnumeratingWithState:&v143 objects:v168 count:16];
              }

              while (v103);
            }

            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v33 = [v85 countByEnumeratingWithState:&v131 objects:v165 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v132;
              while (2)
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v132 != v35)
                  {
                    objc_enumerationMutation(v85);
                  }

                  v37 = *(*(&v131 + 1) + 8 * k);
                  if ([v37 layerStackRendition] == v96)
                  {
                    if (v37)
                    {
                      array2 = [MEMORY[0x277CBEB18] array];
                      v127 = 0u;
                      v128 = 0u;
                      v129 = 0u;
                      v130 = 0u;
                      v39 = [array countByEnumeratingWithState:&v127 objects:v164 count:16];
                      if (v39)
                      {
                        v40 = v39;
                        v41 = *v128;
                        do
                        {
                          for (m = 0; m != v40; ++m)
                          {
                            if (*v128 != v41)
                            {
                              objc_enumerationMutation(array);
                            }

                            v43 = *(*(&v127 + 1) + 8 * m);
                            if ([v37 allowKey:v43])
                            {
                              [array2 addObject:v43];
                            }
                          }

                          v40 = [array countByEnumeratingWithState:&v127 objects:v164 count:16];
                        }

                        while (v40);
                      }

                      array = array2;
                    }

                    goto LABEL_73;
                  }
                }

                v34 = [v85 countByEnumeratingWithState:&v131 objects:v165 count:16];
                if (v34)
                {
                  continue;
                }

                break;
              }
            }

LABEL_73:
            v125 = 0u;
            v126 = 0u;
            v123 = 0u;
            v124 = 0u;
            v44 = [v86 countByEnumeratingWithState:&v123 objects:v163 count:16];
            if (v44)
            {
              v45 = v44;
              v46 = *v124;
              do
              {
                for (n = 0; n != v45; ++n)
                {
                  if (*v124 != v46)
                  {
                    objc_enumerationMutation(v86);
                  }

                  v48 = *(*(&v123 + 1) + 8 * n);
                  v119 = 0u;
                  v120 = 0u;
                  v121 = 0u;
                  v122 = 0u;
                  v49 = [array countByEnumeratingWithState:&v119 objects:v162 count:16];
                  if (v49)
                  {
                    v50 = v49;
                    v51 = *v120;
                    while (2)
                    {
                      for (ii = 0; ii != v50; ++ii)
                      {
                        if (*v120 != v51)
                        {
                          objc_enumerationMutation(array);
                        }

                        v53 = *(*(&v119 + 1) + 8 * ii);
                        if (!-[CoreThemeDocument _compareFlattenedKeySpec1:toKeySpec2:](self, "_compareFlattenedKeySpec1:toKeySpec2:", v53, [v48 keySpec]))
                        {
                          [v96 canvasSize];
                          [v48 setWidth:v54];
                          [v96 canvasSize];
                          [v48 setHeight:v55];
                          [objc_msgSend(v48 "keySpec")];
                          [array removeObject:v53];
                          goto LABEL_88;
                        }
                      }

                      v50 = [array countByEnumeratingWithState:&v119 objects:v162 count:16];
                      if (v50)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_88:
                  ;
                }

                v45 = [v86 countByEnumeratingWithState:&v123 objects:v163 count:16];
              }

              while (v45);
            }

            v117 = 0u;
            v118 = 0u;
            v115 = 0u;
            v116 = 0u;
            v56 = v96;
            v88 = [array countByEnumeratingWithState:&v115 objects:v161 count:16];
            if (v88)
            {
              v87 = *v116;
              do
              {
                v57 = 0;
                do
                {
                  if (*v116 != v87)
                  {
                    objc_enumerationMutation(array);
                  }

                  v89 = v57;
                  v58 = *(*(&v115 + 1) + 8 * v57);
                  for (jj = [v56 compressionType]; ; jj = objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", 0))
                  {
                    v60 = jj;
                    if (![v58 scaleFactor])
                    {
                      break;
                    }

                    v97 = v60;
                    v61 = [(CoreThemeDocument *)self newObjectForEntity:@"FlattenedImageRenditionSpec"];
                    layerReferences2 = [v56 layerReferences];
                    v111 = 0u;
                    v112 = 0u;
                    v113 = 0u;
                    v114 = 0u;
                    v99 = layerReferences2;
                    v106 = [layerReferences2 countByEnumeratingWithState:&v111 objects:v160 count:16];
                    if (v106)
                    {
                      v104 = *v112;
                      v98 = v61;
                      do
                      {
                        for (kk = 0; kk != v106; ++kk)
                        {
                          if (*v112 != v104)
                          {
                            objc_enumerationMutation(v99);
                          }

                          v64 = *(*(&v111 + 1) + 8 * kk);
                          v107 = 0u;
                          v108 = 0u;
                          v109 = 0u;
                          v110 = 0u;
                          v65 = [objc_msgSend(v64 "reference")];
                          v66 = [v65 countByEnumeratingWithState:&v107 objects:v159 count:16];
                          if (v66)
                          {
                            v67 = v66;
                            v68 = *v108;
LABEL_104:
                            v69 = 0;
                            while (1)
                            {
                              if (*v108 != v68)
                              {
                                objc_enumerationMutation(v65);
                              }

                              v70 = *(*(&v107 + 1) + 8 * v69);
                              if (!-[CoreThemeDocument _compareFlattenedKeySpec1:toKeySpec2:](self, "_compareFlattenedKeySpec1:toKeySpec2:", v58, [v70 keySpec]))
                              {
                                break;
                              }

                              if (v67 == ++v69)
                              {
                                v67 = [v65 countByEnumeratingWithState:&v107 objects:v159 count:16];
                                if (v67)
                                {
                                  goto LABEL_104;
                                }

                                goto LABEL_110;
                              }
                            }
                          }

                          else
                          {
LABEL_110:
                            v70 = [MEMORY[0x277D02670] bestMatchUsingObjects:objc_msgSend(objc_msgSend(objc_msgSend(v64 getAttributeValueUsing:"reference") scaleFactor:"renditions") deviceIdiom:"allObjects") deviceSubtype:&__block_literal_global_881 displayGamut:objc_msgSend(objc_msgSend(v58 deploymentTarget:"idiom") layoutDirection:"identifier") sizeClassHorizontal:objc_msgSend(v58 sizeClassVertical:"subtype") memoryClass:objc_msgSend(objc_msgSend(v58 graphicsFeatureSetClass:"gamut") graphicsFallBackOrder:"identifier") deviceSubtypeFallBackOrder:{objc_msgSend(objc_msgSend(v58, "target"), "identifier"), objc_msgSend(v58, "scaleFactor"), objc_msgSend(objc_msgSend(v58, "direction"), "identifier"), objc_msgSend(objc_msgSend(v58, "sizeClassHorizontal"), "identifier"), objc_msgSend(objc_msgSend(v58, "sizeClassVertical"), "identifier"), objc_msgSend(v58, "memoryClass"), objc_msgSend(objc_msgSend(v58, "graphicsFeatureSetClass"), "identifier"), 0, 0}];
                            if (!v70)
                            {
                              [CoreThemeDocument _tidyUpLayerStacks];
                            }

                            v61 = v98;
                          }

                          [(CoreThemeDocument *)self _addResolvedLayerReferenceToFlattenedImageRendition:v61 usingArtworkRendition:v70 andLayerReference:v64];
                        }

                        v106 = [v99 countByEnumeratingWithState:&v111 objects:v160 count:16];
                      }

                      while (v106);
                    }

                    [v61 setOpaque:1];
                    v56 = v96;
                    [v96 canvasSize];
                    [v61 setWidth:{objc_msgSend(v58, "scaleFactor") * v71}];
                    [v96 canvasSize];
                    [v61 setHeight:{objc_msgSend(v58, "scaleFactor") * v72}];
                    v73 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
                    [v73 setPart:v93];
                    [v73 setScaleFactor:{objc_msgSend(v58, "scaleFactor")}];
                    [v73 setIdiom:{objc_msgSend(v58, "idiom")}];
                    [v73 setSubtype:{objc_msgSend(v58, "subtype")}];
                    [v73 setGamut:{objc_msgSend(v58, "gamut")}];
                    [v61 setCompressionType:v97];
                    [v73 setElement:{objc_msgSend(objc_msgSend(flattenedImageProduction, "baseKeySpec"), "element")}];
                    [v73 setNameIdentifier:{objc_msgSend(objc_msgSend(name, "identifier"), "unsignedIntValue")}];
                    [v61 setKeySpec:v73];
                    [v61 setProduction:flattenedImageProduction];
                    if ([objc_msgSend(v61 "compressionType")] != 4 && objc_msgSend(objc_msgSend(v61, "compressionType"), "identifier") != 5)
                    {
                      break;
                    }

                    [v73 setGraphicsFeatureSetClass:v90];
                    [v73 setTarget:{objc_msgSend(deploymentTargets, "objectAtIndexedSubscript:", 1)}];
                  }

                  v57 = v89 + 1;
                }

                while (v89 + 1 != v88);
                v88 = [array countByEnumeratingWithState:&v115 objects:v161 count:16];
              }

              while (v88);
            }

            v19 = v84 + 1;
          }

          while (v84 + 1 != v83);
          v83 = [renditions3 countByEnumeratingWithState:&v147 objects:v169 count:16];
        }

        while (v83);
      }

      v4 = v78 + 1;
      if (v78 + 1 == v77)
      {
        v77 = [obj countByEnumeratingWithState:&v155 objects:v171 count:16];
        if (v77)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [(CoreThemeDocument *)self _makeRadiosityImages];
  [(CoreThemeDocument *)self _makeSolidLayerStackTextures];
}

- (void)_tidyUpRecognitionImages
{
  v45 = *MEMORY[0x277D85DE8];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  obj = [(CoreThemeDocument *)self allObjectsForEntity:@"ContentsRenditionSpec" withSortDescriptors:0];
  v20 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
  if (v20)
  {
    v19 = *v38;
    do
    {
      v2 = 0;
      do
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v2;
        v3 = *(*(&v37 + 1) + 8 * v2);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        contains = [v3 contains];
        v4 = [contains countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v4)
        {
          v5 = v4;
          v24 = *v34;
          do
          {
            for (i = 0; i != v5; ++i)
            {
              if (*v34 != v24)
              {
                objc_enumerationMutation(contains);
              }

              v7 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedArtworkProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"name.name == %@", objc_msgSend(*(*(&v33 + 1) + 8 * i), "name")], 0);
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v32 = 0u;
              v8 = [v7 countByEnumeratingWithState:&v29 objects:v42 count:16];
              if (v8)
              {
                v9 = v8;
                v10 = *v30;
                do
                {
                  for (j = 0; j != v9; ++j)
                  {
                    if (*v30 != v10)
                    {
                      objc_enumerationMutation(v7);
                    }

                    v12 = *(*(&v29 + 1) + 8 * j);
                    [v12 setRecognitionImage:1];
                    v27 = 0u;
                    v28 = 0u;
                    v25 = 0u;
                    v26 = 0u;
                    renditions = [v12 renditions];
                    v14 = [renditions countByEnumeratingWithState:&v25 objects:v41 count:16];
                    if (v14)
                    {
                      v15 = v14;
                      v16 = *v26;
                      do
                      {
                        for (k = 0; k != v15; ++k)
                        {
                          if (*v26 != v16)
                          {
                            objc_enumerationMutation(renditions);
                          }

                          [*(*(&v25 + 1) + 8 * k) setMonochrome:1];
                        }

                        v15 = [renditions countByEnumeratingWithState:&v25 objects:v41 count:16];
                      }

                      while (v15);
                    }
                  }

                  v9 = [v7 countByEnumeratingWithState:&v29 objects:v42 count:16];
                }

                while (v9);
              }
            }

            v5 = [contains countByEnumeratingWithState:&v33 objects:v43 count:16];
          }

          while (v5);
        }

        v2 = v21 + 1;
      }

      while (v21 + 1 != v20);
      v20 = [obj countByEnumeratingWithState:&v37 objects:v44 count:16];
    }

    while (v20);
  }
}

- (void)_makeSolidLayerStackTextures
{
  v74 = *MEMORY[0x277D85DE8];
  [(CoreThemeDocument *)self targetPlatform];
  if (CUISDFTexturesSupported())
  {
    v3 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"LayerStackProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"renditionType.identifier == %d", 1018], 0);
    v48 = [(CoreThemeDocument *)self elementWithIdentifier:41];
    v47 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1007];
    v46 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:10];
    v51 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"NamedTextureProduction", 0, 0)}];
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v3;
    v35 = [v3 countByEnumeratingWithState:&v66 objects:v73 count:16];
    if (v35)
    {
      v4 = @"RenditionKeySpec";
      v34 = *v67;
      do
      {
        v5 = 0;
        do
        {
          if (*v67 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = v5;
          v6 = *(*(&v66 + 1) + 8 * v5);
          v62 = 0u;
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          renditions = [v6 renditions];
          v39 = [renditions countByEnumeratingWithState:&v62 objects:v72 count:16];
          if (v39)
          {
            v38 = *v63;
            do
            {
              v7 = 0;
              do
              {
                if (*v63 != v38)
                {
                  objc_enumerationMutation(renditions);
                }

                v40 = v7;
                v8 = *(*(&v62 + 1) + 8 * v7);
                v58 = 0u;
                v59 = 0u;
                v60 = 0u;
                v61 = 0u;
                layerReferences = [v8 layerReferences];
                v43 = [layerReferences countByEnumeratingWithState:&v58 objects:v71 count:16];
                if (v43)
                {
                  v42 = *v59;
                  do
                  {
                    v9 = 0;
                    do
                    {
                      if (*v59 != v42)
                      {
                        objc_enumerationMutation(layerReferences);
                      }

                      v44 = v9;
                      v10 = *(*(&v58 + 1) + 8 * v9);
                      v54 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v57 = 0u;
                      v45 = [objc_msgSend(v10 "reference")];
                      v50 = [v45 countByEnumeratingWithState:&v54 objects:v70 count:16];
                      if (v50)
                      {
                        v49 = *v55;
                        do
                        {
                          v11 = 0;
                          do
                          {
                            if (*v55 != v49)
                            {
                              objc_enumerationMutation(v45);
                            }

                            v53 = v11;
                            v12 = *(*(&v54 + 1) + 8 * v11);
                            v13 = [v12 _createImageRefWithURL:objc_msgSend(objc_msgSend(v12 andDocument:"asset") format:"fileURLWithDocument:" vectorBased:{self), self, 0, 0}];
                            [(CoreThemeDocument *)self targetPlatform];
                            CUICreateSDFEdgeTexturePixelFormat();
                            v14 = [(CoreThemeDocument *)self pixelFormatWithIdentifier:CUIConvertFromTXRPixelFormat()];
                            [(CoreThemeDocument *)self targetPlatform];
                            CUICreateSDFGradientTexturePixelFormat();
                            v52 = [(CoreThemeDocument *)self pixelFormatWithIdentifier:CUIConvertFromTXRPixelFormat()];
                            v15 = [v51 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.identifier == %d", objc_msgSend(objc_msgSend(objc_msgSend(v12, "production"), "name"), "identifier"))}];
                            if ([v15 firstObject] && (objc_msgSend(v15, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                            {
                              firstObject = [v15 firstObject];
                            }

                            else
                            {
                              firstObject = [(CoreThemeDocument *)self newObjectForEntity:@"NamedTextureProduction"];
                              v17 = [(CoreThemeDocument *)self newObjectForEntity:v4];
                              [objc_msgSend(v12 "keySpec")];
                              [firstObject setBaseKeySpec:v17];
                              [objc_msgSend(firstObject "baseKeySpec")];
                              [firstObject setName:{objc_msgSend(objc_msgSend(v12, "production"), "name")}];
                              [firstObject setTextureInterpretation:{-[CoreThemeDocument textureInterpretaitionWithIdentifier:](self, "textureInterpretaitionWithIdentifier:", 0)}];
                              [firstObject setRenditionType:v47];
                              [firstObject setRenditionSubtype:v46];
                              [firstObject setTags:{objc_msgSend(objc_msgSend(v12, "production"), "tags")}];

                              [v51 addObject:firstObject];
                            }

                            v18 = -[CoreThemeDocument createAssetWithName:fileType:scaleFactor:inCategory:forThemeBitSource:](self, "createAssetWithName:fileType:scaleFactor:inCategory:forThemeBitSource:", [objc_msgSend(v12 "asset")], @"texture", objc_msgSend(objc_msgSend(v12, "asset"), "scaleFactor"), objc_msgSend(objc_msgSend(v12, "asset"), "category"), objc_msgSend(objc_msgSend(v12, "asset"), "source"));
                            v19 = [(CoreThemeDocument *)self newObjectForEntity:v4];
                            [objc_msgSend(v12 "keySpec")];
                            v20 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRenditionSpec"];
                            [v20 setProduction:firstObject];
                            [v20 setPixelFormat:v14];
                            [v20 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v20 setCubeMap:0];
                            [v20 setWidth:CGImageGetWidth(v13)];
                            [v20 setHeight:CGImageGetWidth(v13)];
                            [v20 setKeySpec:v19];
                            [objc_msgSend(v20 "keySpec")];
                            [objc_msgSend(v20 "keySpec")];
                            [objc_msgSend(v20 "keySpec")];
                            [objc_msgSend(v20 "keySpec")];

                            v21 = [(CoreThemeDocument *)self newObjectForEntity:v4];
                            [objc_msgSend(v12 "keySpec")];
                            v22 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRawRenditionSpec"];
                            [v22 setProduction:firstObject];
                            [v18 addRenditionsObject:v22];
                            [v22 setAsset:v18];
                            [v22 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v22 setKeySpec:v21];
                            v23 = v4;
                            [objc_msgSend(v22 "keySpec")];
                            v24 = [(CoreThemeDocument *)self partWithIdentifier:181];
                            keySpec = [v22 keySpec];
                            v26 = v24;
                            v4 = v23;
                            [keySpec setPart:v26];
                            [objc_msgSend(v22 "keySpec")];
                            [objc_msgSend(v22 "keySpec")];
                            [v22 setWidth:CGImageGetWidth(v13)];
                            [v22 setHeight:CGImageGetWidth(v13)];

                            v27 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureMipLevel"];
                            [v27 setTexture:v20];
                            [v27 setTextureImage:v22];
                            [v27 setLevel:0];
                            [v20 addMipLevelsObject:v27];

                            v28 = [(CoreThemeDocument *)self newObjectForEntity:v23];
                            [objc_msgSend(v12 "keySpec")];
                            v29 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRenditionSpec"];
                            [v29 setProduction:firstObject];
                            [v29 setPixelFormat:v52];
                            [v29 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v29 setCubeMap:0];
                            [v29 setWidth:CGImageGetWidth(v13)];
                            [v29 setHeight:CGImageGetWidth(v13)];
                            [v29 setKeySpec:v28];
                            [objc_msgSend(v29 "keySpec")];
                            [objc_msgSend(v29 "keySpec")];
                            [objc_msgSend(v29 "keySpec")];
                            [objc_msgSend(v29 "keySpec")];

                            v30 = [(CoreThemeDocument *)self newObjectForEntity:v23];
                            [objc_msgSend(v12 "keySpec")];
                            v31 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureRawRenditionSpec"];
                            [v31 setProduction:firstObject];
                            [v18 addRenditionsObject:v31];
                            [v31 setAsset:v18];
                            [v31 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 0)}];
                            [v31 setKeySpec:v30];
                            [objc_msgSend(v31 "keySpec")];
                            [objc_msgSend(v31 "keySpec")];
                            [objc_msgSend(v31 "keySpec")];
                            [objc_msgSend(v31 "keySpec")];
                            [v31 setWidth:CGImageGetWidth(v13)];
                            [v31 setHeight:CGImageGetWidth(v13)];

                            v32 = [(CoreThemeDocument *)self newObjectForEntity:@"TextureMipLevel"];
                            [v32 setTexture:v29];
                            [v32 setTextureImage:v31];
                            [v32 setLevel:0];
                            [v29 addMipLevelsObject:v32];

                            CGImageRelease(v13);
                            v11 = v53 + 1;
                          }

                          while (v50 != v53 + 1);
                          v50 = [v45 countByEnumeratingWithState:&v54 objects:v70 count:16];
                        }

                        while (v50);
                      }

                      v9 = v44 + 1;
                    }

                    while (v44 + 1 != v43);
                    v43 = [layerReferences countByEnumeratingWithState:&v58 objects:v71 count:16];
                  }

                  while (v43);
                }

                v7 = v40 + 1;
              }

              while (v40 + 1 != v39);
              v39 = [renditions countByEnumeratingWithState:&v62 objects:v72 count:16];
            }

            while (v39);
          }

          v5 = v36 + 1;
        }

        while (v36 + 1 != v35);
        v35 = [obj countByEnumeratingWithState:&v66 objects:v73 count:16];
      }

      while (v35);
    }
  }
}

- (void)createNamedRenditionGroupProductionsForImportInfos:(id)infos error:(id *)error
{
  v74 = *MEMORY[0x277D85DE8];
  v47 = [(CoreThemeDocument *)self idioms:infos];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  directions = [(CoreThemeDocument *)self directions];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v6 = [(CoreThemeDocument *)self objectsForEntity:@"Tag" withPredicate:0 sortDescriptors:0];
  v7 = [v6 countByEnumeratingWithState:&v66 objects:v73 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v67;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v67 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [v5 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", *(*(&v66 + 1) + 8 * i)), objc_msgSend(*(*(&v66 + 1) + 8 * i), "identifier")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v66 objects:v73 count:16];
    }

    while (v8);
  }

  v42 = [(CoreThemeDocument *)self elementWithIdentifier:85];
  v41 = [(CoreThemeDocument *)self partWithIdentifier:206];
  v40 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1013];
  v49 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"GroupedRecognitionProduction", 0, 0)}];
  v39 = [(CoreThemeDocument *)self renditionSubtypeWithIdentifier:10];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v50 = [infos countByEnumeratingWithState:&v62 objects:v72 count:16];
  if (v50)
  {
    v48 = *v63;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v63 != v48)
        {
          objc_enumerationMutation(infos);
        }

        v12 = *(*(&v62 + 1) + 8 * j);
        v13 = [v49 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name.name == %@", objc_msgSend(v12, "name"))}];
        if ([v13 firstObject] && (objc_msgSend(v13, "firstObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          [v13 firstObject];
        }

        else
        {
          v14 = [(CoreThemeDocument *)self newObjectForEntity:@"GroupedRecognitionProduction"];
          v15 = -[CoreThemeDocument _createNamedElementWithIdentifier:](self, "_createNamedElementWithIdentifier:", [v12 nameIdentifier]);
          [v15 setName:{objc_msgSend(v12, "name")}];
          [v15 setProduction:v14];
          v16 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
          [v14 setBaseKeySpec:v16];
          [v16 setElement:v42];
          [v16 setPart:v41];
          [v16 setNameIdentifier:{objc_msgSend(objc_msgSend(v15, "identifier"), "unsignedIntValue")}];
          [v14 setDateOfLastChange:{objc_msgSend(v12, "modificationDate")}];
          [v14 setOptOutOfThinning:{objc_msgSend(v12, "optOutOfThinning")}];
          [v14 setRenditionType:v40];
          [v14 setRenditionSubtype:v39];

          v53 = j;
          if (v12)
          {
            tags = [v12 tags];
            if ([tags count])
            {
              v38 = v14;
              v51 = v12;
              v18 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v58 = 0u;
              v59 = 0u;
              v60 = 0u;
              v61 = 0u;
              v19 = [tags countByEnumeratingWithState:&v58 objects:v71 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v59;
                do
                {
                  for (k = 0; k != v20; ++k)
                  {
                    if (*v59 != v21)
                    {
                      objc_enumerationMutation(tags);
                    }

                    v23 = *(*(&v58 + 1) + 8 * k);
                    v24 = [v5 objectForKey:v23];
                    if ([v24 count])
                    {
                      if ([v24 count] != 1)
                      {
                        [CoreThemeDocument createNamedRenditionGroupProductionsForImportInfos:error:];
                      }

                      v25 = [v24 objectAtIndex:0];
                    }

                    else
                    {
                      v25 = [(CoreThemeDocument *)self newObjectForEntity:@"Tag"];
                      [v25 setIdentifier:v23];
                      [v5 setObject:objc_msgSend(MEMORY[0x277CBEA60] forKey:{"arrayWithObject:", v25), v23}];
                    }

                    [v18 addObject:v25];
                  }

                  v20 = [tags countByEnumeratingWithState:&v58 objects:v71 count:16];
                }

                while (v20);
              }

              v14 = v38;
              [v38 addTags:v18];
              v26 = [tags count];
              if (v26 != [v18 count])
              {
                [CoreThemeDocument createNamedRenditionGroupProductionsForImportInfos:error:];
              }

              v12 = v51;
            }

            if ([objc_msgSend(v12 "universalTypeIdentifier")])
            {
              [v14 setUniversalTypeIdentifier:{objc_msgSend(v12, "universalTypeIdentifier")}];
            }
          }

          v27 = [(CoreThemeDocument *)self newObjectForEntity:@"ContentsRenditionSpec"];
          [v27 setProduction:v14];
          [v27 resetToBaseKeySpec];
          v52 = v27;
          keySpec = [v27 keySpec];
          [keySpec setIdiom:{objc_msgSend(v47, "objectAtIndexedSubscript:", objc_msgSend(v12, "idiom"))}];
          [keySpec setScaleFactor:{objc_msgSend(v12, "scaleFactor")}];
          [keySpec setSubtype:{objc_msgSend(v12, "subtype")}];
          [keySpec setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(v12, "displayGamut"))}];
          [keySpec setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v12, "sizeClassHorizontal"))}];
          [keySpec setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(v12, "sizeClassVertical"))}];
          [keySpec setMemoryClass:{objc_msgSend(v12, "memoryClass")}];
          [keySpec setDirection:{objc_msgSend(directions, "objectAtIndexedSubscript:", objc_msgSend(v12, "layoutDirection"))}];
          [keySpec setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(v12, "graphicsFeatureSetClass"))}];
          [keySpec setAppearance:{-[CoreThemeDocument appearanceWithIdentifier:name:createIfNeeded:](self, "appearanceWithIdentifier:name:createIfNeeded:", objc_msgSend(v12, "appearanceIdentifier"), objc_msgSend(v12, "appearanceName"), 1)}];
          [keySpec setLocalization:{-[CoreThemeDocument localizationWithIdentifier:name:createIfNeeded:](self, "localizationWithIdentifier:name:createIfNeeded:", objc_msgSend(v12, "localizationIdentifier"), objc_msgSend(v12, "localizationName"), 1)}];
          v29 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v54 = 0u;
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          containedImageNames = [v12 containedImageNames];
          v31 = [containedImageNames countByEnumeratingWithState:&v54 objects:v70 count:16];
          if (v31)
          {
            v32 = v31;
            v33 = *v55;
            do
            {
              for (m = 0; m != v32; ++m)
              {
                if (*v55 != v33)
                {
                  objc_enumerationMutation(containedImageNames);
                }

                v35 = *(*(&v54 + 1) + 8 * m);
                v36 = [(CoreThemeDocument *)self newObjectForEntity:@"ContentsName"];
                [v36 setName:v35];
                [v29 addObject:v36];
              }

              v32 = [containedImageNames countByEnumeratingWithState:&v54 objects:v70 count:16];
            }

            while (v32);
          }

          [v52 setContains:v29];

          j = v53;
        }
      }

      v50 = [infos countByEnumeratingWithState:&v62 objects:v72 count:16];
    }

    while (v50);
  }
}

- (BOOL)_production:(id)_production containsScale:(unsigned int)scale andIdiom:(unsigned int)idiom andSubtype:(unsigned int)subtype
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  renditions = [_production renditions];
  v10 = [renditions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(renditions);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if ([objc_msgSend(v14 "keySpec")] == scale && objc_msgSend(objc_msgSend(objc_msgSend(v14, "keySpec"), "idiom"), "identifier") == idiom && objc_msgSend(objc_msgSend(v14, "keySpec"), "subtype") == subtype)
        {
          LOBYTE(v10) = 1;
          return v10;
        }

        ++v13;
      }

      while (v11 != v13);
      v10 = [renditions countByEnumeratingWithState:&v16 objects:v20 count:16];
      v11 = v10;
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return v10;
}

- (void)_generateWatchImages
{
  v188 = *MEMORY[0x277D85DE8];
  if ([(CoreThemeDocument *)self targetPlatform]== 4)
  {
    v174 = 0u;
    v175 = 0u;
    v176 = 0u;
    v177 = 0u;
    obj = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SimpleArtworkElementProduction", [MEMORY[0x277CCAC30] predicateWithFormat:@"autoscalingType > 0"], 0);
    v130 = [obj countByEnumeratingWithState:&v174 objects:v187 count:16];
    if (v130)
    {
      v129 = *v175;
      do
      {
        v3 = 0;
        do
        {
          if (*v175 != v129)
          {
            v4 = v3;
            objc_enumerationMutation(obj);
            v3 = v4;
          }

          v131 = v3;
          v5 = *(*(&v174 + 1) + 8 * v3);
          v132 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v170 = 0u;
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          v136 = v5;
          renditions = [v5 renditions];
          v7 = [renditions countByEnumeratingWithState:&v170 objects:v186 count:16];
          if (v7)
          {
            v8 = v7;
            v9 = *v171;
            do
            {
              for (i = 0; i != v8; ++i)
              {
                if (*v171 != v9)
                {
                  objc_enumerationMutation(renditions);
                }

                v11 = *(*(&v170 + 1) + 8 * i);
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v11 "asset")] && (!objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "idiom"), "identifier") || objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "idiom"), "identifier") == 5) && !objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphSize"), "identifier") && !objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphWeight"), "identifier") && (!objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v11, "asset"), "name"), "pathExtension"), "caseInsensitiveCompare:", @"PDF") || !objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(v11, "asset"), "name"), "pathExtension"), "caseInsensitiveCompare:", @"SVG")))
                {
                  [v132 addObject:v11];
                }
              }

              v8 = [renditions countByEnumeratingWithState:&v170 objects:v186 count:16];
            }

            while (v8);
          }

          v168 = 0u;
          v169 = 0u;
          v166 = 0u;
          v167 = 0u;
          v12 = v136;
          v134 = [v132 countByEnumeratingWithState:&v166 objects:v185 count:16];
          if (v134)
          {
            v133 = *v167;
            do
            {
              v13 = 0;
              do
              {
                if (*v167 != v133)
                {
                  objc_enumerationMutation(v132);
                }

                v135 = v13;
                v14 = *(*(&v166 + 1) + 8 * v13);
                entity = [v14 entity];
                v137 = entity;
                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v12, [objc_msgSend(v14 "keySpec")], 5, 320))
                {
                  v16 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices = [v14 slices];
                  if ([slices count])
                  {
                    v18 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
                    v162 = 0u;
                    v163 = 0u;
                    v164 = 0u;
                    v165 = 0u;
                    v19 = [slices countByEnumeratingWithState:&v162 objects:v184 count:16];
                    if (v19)
                    {
                      v20 = v19;
                      v21 = *v163;
                      do
                      {
                        for (j = 0; j != v20; ++j)
                        {
                          if (*v163 != v21)
                          {
                            objc_enumerationMutation(slices);
                          }

                          [*(*(&v162 + 1) + 8 * j) sliceRect];
                          v24 = v23;
                          v26 = v25;
                          v28 = v27;
                          v30 = v29;
                          v31 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v31 setSliceRect:{v24, v26, v28, v30}];
                          [v18 addObject:v31];
                        }

                        v20 = [slices countByEnumeratingWithState:&v162 objects:v184 count:16];
                      }

                      while (v20);
                    }

                    [v16 setSlices:v18];
                    v12 = v136;
                    entity = v137;
                  }

                  [v16 setAsset:{objc_msgSend(v14, "asset")}];
                  [v16 setProduction:v12];
                  [objc_msgSend(v14 "production")];
                  [objc_msgSend(v14 "keySpec")];
                  [objc_msgSend(v16 "keySpec")];
                  [v16 setPostScaleFactor:0.91];
                  [v16 setCompressionType:{objc_msgSend(v14, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v12, [objc_msgSend(v14 "keySpec")], 5, 384))
                {
                  v32 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices2 = [v14 slices];
                  if ([slices2 count])
                  {
                    v34 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices2, "count")}];
                    v158 = 0u;
                    v159 = 0u;
                    v160 = 0u;
                    v161 = 0u;
                    v35 = [slices2 countByEnumeratingWithState:&v158 objects:v183 count:16];
                    if (v35)
                    {
                      v36 = v35;
                      v37 = *v159;
                      do
                      {
                        for (k = 0; k != v36; ++k)
                        {
                          if (*v159 != v37)
                          {
                            objc_enumerationMutation(slices2);
                          }

                          [*(*(&v158 + 1) + 8 * k) sliceRect];
                          v40 = v39;
                          v42 = v41;
                          v44 = v43;
                          v46 = v45;
                          v47 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v47 setSliceRect:{v40, v42, v44, v46}];
                          [v34 addObject:v47];
                        }

                        v36 = [slices2 countByEnumeratingWithState:&v158 objects:v183 count:16];
                      }

                      while (v36);
                    }

                    [v32 setSlices:v34];
                    v12 = v136;
                    entity = v137;
                  }

                  [v32 setAsset:{objc_msgSend(v14, "asset")}];
                  [v32 setProduction:v12];
                  [objc_msgSend(v14 "production")];
                  [objc_msgSend(v14 "keySpec")];
                  [objc_msgSend(v32 "keySpec")];
                  [v32 setPostScaleFactor:1.0];
                  [v32 setCompressionType:{objc_msgSend(v14, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v12, [objc_msgSend(v14 "keySpec")], 5, 340))
                {
                  v48 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices3 = [v14 slices];
                  if ([slices3 count])
                  {
                    v50 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices3, "count")}];
                    v154 = 0u;
                    v155 = 0u;
                    v156 = 0u;
                    v157 = 0u;
                    v51 = [slices3 countByEnumeratingWithState:&v154 objects:v182 count:16];
                    if (v51)
                    {
                      v52 = v51;
                      v53 = *v155;
                      do
                      {
                        for (m = 0; m != v52; ++m)
                        {
                          if (*v155 != v53)
                          {
                            objc_enumerationMutation(slices3);
                          }

                          [*(*(&v154 + 1) + 8 * m) sliceRect];
                          v56 = v55;
                          v58 = v57;
                          v60 = v59;
                          v62 = v61;
                          v63 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v63 setSliceRect:{v56, v58, v60, v62}];
                          [v50 addObject:v63];
                        }

                        v52 = [slices3 countByEnumeratingWithState:&v154 objects:v182 count:16];
                      }

                      while (v52);
                    }

                    [v48 setSlices:v50];
                    v12 = v136;
                    entity = v137;
                  }

                  [v48 setAsset:{objc_msgSend(v14, "asset")}];
                  [v48 setProduction:v12];
                  [objc_msgSend(v14 "production")];
                  [objc_msgSend(v14 "keySpec")];
                  [objc_msgSend(v48 "keySpec")];
                  [v48 setPostScaleFactor:1.0];
                  [v48 setCompressionType:{objc_msgSend(v14, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v12, [objc_msgSend(v14 "keySpec")], 5, 390))
                {
                  v64 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices4 = [v14 slices];
                  if ([slices4 count])
                  {
                    v66 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices4, "count")}];
                    v150 = 0u;
                    v151 = 0u;
                    v152 = 0u;
                    v153 = 0u;
                    v67 = [slices4 countByEnumeratingWithState:&v150 objects:v181 count:16];
                    if (v67)
                    {
                      v68 = v67;
                      v69 = *v151;
                      do
                      {
                        for (n = 0; n != v68; ++n)
                        {
                          if (*v151 != v69)
                          {
                            objc_enumerationMutation(slices4);
                          }

                          [*(*(&v150 + 1) + 8 * n) sliceRect];
                          v72 = v71;
                          v74 = v73;
                          v76 = v75;
                          v78 = v77;
                          v79 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v79 setSliceRect:{v72, v74, v76, v78}];
                          [v66 addObject:v79];
                        }

                        v68 = [slices4 countByEnumeratingWithState:&v150 objects:v181 count:16];
                      }

                      while (v68);
                    }

                    [v64 setSlices:v66];
                    v12 = v136;
                    entity = v137;
                  }

                  [v64 setAsset:{objc_msgSend(v14, "asset")}];
                  [v64 setProduction:v12];
                  [objc_msgSend(v14 "production")];
                  [objc_msgSend(v14 "keySpec")];
                  [objc_msgSend(v64 "keySpec")];
                  [v64 setPostScaleFactor:1.1];
                  [v64 setCompressionType:{objc_msgSend(v14, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v12, [objc_msgSend(v14 "keySpec")], 5, 430))
                {
                  v80 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices5 = [v14 slices];
                  if ([slices5 count])
                  {
                    v82 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices5, "count")}];
                    v146 = 0u;
                    v147 = 0u;
                    v148 = 0u;
                    v149 = 0u;
                    v83 = [slices5 countByEnumeratingWithState:&v146 objects:v180 count:16];
                    if (v83)
                    {
                      v84 = v83;
                      v85 = *v147;
                      do
                      {
                        for (ii = 0; ii != v84; ++ii)
                        {
                          if (*v147 != v85)
                          {
                            objc_enumerationMutation(slices5);
                          }

                          [*(*(&v146 + 1) + 8 * ii) sliceRect];
                          v88 = v87;
                          v90 = v89;
                          v92 = v91;
                          v94 = v93;
                          v95 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v95 setSliceRect:{v88, v90, v92, v94}];
                          [v82 addObject:v95];
                        }

                        v84 = [slices5 countByEnumeratingWithState:&v146 objects:v180 count:16];
                      }

                      while (v84);
                    }

                    [v80 setSlices:v82];
                    v12 = v136;
                    entity = v137;
                  }

                  [v80 setAsset:{objc_msgSend(v14, "asset")}];
                  [v80 setProduction:v12];
                  [objc_msgSend(v14 "production")];
                  [objc_msgSend(v14 "keySpec")];
                  [objc_msgSend(v80 "keySpec")];
                  [v80 setPostScaleFactor:1.06];
                  [v80 setCompressionType:{objc_msgSend(v14, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v12, [objc_msgSend(v14 "keySpec")], 5, 484))
                {
                  v96 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices6 = [v14 slices];
                  if ([slices6 count])
                  {
                    v98 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices6, "count")}];
                    v142 = 0u;
                    v143 = 0u;
                    v144 = 0u;
                    v145 = 0u;
                    v99 = [slices6 countByEnumeratingWithState:&v142 objects:v179 count:16];
                    if (v99)
                    {
                      v100 = v99;
                      v101 = *v143;
                      do
                      {
                        for (jj = 0; jj != v100; ++jj)
                        {
                          if (*v143 != v101)
                          {
                            objc_enumerationMutation(slices6);
                          }

                          [*(*(&v142 + 1) + 8 * jj) sliceRect];
                          v104 = v103;
                          v106 = v105;
                          v108 = v107;
                          v110 = v109;
                          v111 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v111 setSliceRect:{v104, v106, v108, v110}];
                          [v98 addObject:v111];
                        }

                        v100 = [slices6 countByEnumeratingWithState:&v142 objects:v179 count:16];
                      }

                      while (v100);
                    }

                    [v96 setSlices:v98];
                    v12 = v136;
                    entity = v137;
                  }

                  [v96 setAsset:{objc_msgSend(v14, "asset")}];
                  [v96 setProduction:v12];
                  [objc_msgSend(v14 "production")];
                  [objc_msgSend(v14 "keySpec")];
                  [objc_msgSend(v96 "keySpec")];
                  [v96 setPostScaleFactor:1.19];
                  [v96 setCompressionType:{objc_msgSend(v14, "compressionType")}];
                }

                if (!-[CoreThemeDocument _production:containsScale:andIdiom:andSubtype:](self, "_production:containsScale:andIdiom:andSubtype:", v12, [objc_msgSend(v14 "keySpec")], 5, 502))
                {
                  v112 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [entity name]);
                  slices7 = [v14 slices];
                  if ([slices7 count])
                  {
                    v114 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices7, "count")}];
                    v138 = 0u;
                    v139 = 0u;
                    v140 = 0u;
                    v141 = 0u;
                    v115 = [slices7 countByEnumeratingWithState:&v138 objects:v178 count:16];
                    if (v115)
                    {
                      v116 = v115;
                      v117 = *v139;
                      do
                      {
                        for (kk = 0; kk != v116; ++kk)
                        {
                          if (*v139 != v117)
                          {
                            objc_enumerationMutation(slices7);
                          }

                          [*(*(&v138 + 1) + 8 * kk) sliceRect];
                          v120 = v119;
                          v122 = v121;
                          v124 = v123;
                          v126 = v125;
                          v127 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                          [v127 setSliceRect:{v120, v122, v124, v126}];
                          [v114 addObject:v127];
                        }

                        v116 = [slices7 countByEnumeratingWithState:&v138 objects:v178 count:16];
                      }

                      while (v116);
                    }

                    [v112 setSlices:v114];
                    v12 = v136;
                  }

                  [v112 setAsset:{objc_msgSend(v14, "asset")}];
                  [v112 setProduction:v12];
                  [objc_msgSend(v14 "production")];
                  [objc_msgSend(v14 "keySpec")];
                  [objc_msgSend(v112 "keySpec")];
                  [v112 setPostScaleFactor:1.19];
                  [v112 setCompressionType:{objc_msgSend(v14, "compressionType")}];
                }

                v13 = v135 + 1;
              }

              while (v135 + 1 != v134);
              v134 = [v132 countByEnumeratingWithState:&v166 objects:v185 count:16];
            }

            while (v134);
          }

          v3 = v131 + 1;
        }

        while (v131 + 1 != v130);
        v130 = [obj countByEnumeratingWithState:&v174 objects:v187 count:16];
      }

      while (v130);
    }
  }
}

- (void)_backwardsCompatibilityPatchForLayoutDirection
{
  v69 = *MEMORY[0x277D85DE8];
  if (![(CoreThemeDocument *)self featureEnabled:9])
  {
    v3 = [(CoreThemeDocument *)self directionWithIdentifier:5];
    v4 = [(CoreThemeDocument *)self directionWithIdentifier:4];
    v39 = [(CoreThemeDocument *)self directionWithIdentifier:0];
    v5 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SimpleArtworkRenditionSpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"keySpec.direction == %@ OR keySpec.direction == %@", v3, v4], 0);
    array = [MEMORY[0x277CBEB18] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v61;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v61 != v9)
          {
            objc_enumerationMutation(v5);
          }

          production = [*(*(&v60 + 1) + 8 * i) production];
          if (([array containsObject:production] & 1) == 0)
          {
            [array addObject:production];
          }
        }

        v8 = [v5 countByEnumeratingWithState:&v60 objects:v68 count:16];
      }

      while (v8);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v12 = v39;
    v41 = [array countByEnumeratingWithState:&v56 objects:v67 count:16];
    if (v41)
    {
      v40 = *v57;
      v37 = array;
      v38 = v3;
      do
      {
        v13 = 0;
        do
        {
          if (*v57 != v40)
          {
            objc_enumerationMutation(array);
          }

          v14 = *(*(&v56 + 1) + 8 * v13);
          v52 = 0u;
          v53 = 0u;
          v54 = 0u;
          v55 = 0u;
          v42 = v13;
          v43 = v14;
          renditions = [v14 renditions];
          v16 = [renditions countByEnumeratingWithState:&v52 objects:v66 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v53;
LABEL_18:
            v19 = 0;
            while (1)
            {
              if (*v53 != v18)
              {
                objc_enumerationMutation(renditions);
              }

              v20 = *(*(&v52 + 1) + 8 * v19);
              if ([objc_msgSend(v20 "keySpec")] == v12 || !objc_msgSend(objc_msgSend(v20, "keySpec"), "direction"))
              {
                break;
              }

              if (v17 == ++v19)
              {
                v17 = [renditions countByEnumeratingWithState:&v52 objects:v66 count:16];
                if (v17)
                {
                  goto LABEL_18;
                }

                goto LABEL_25;
              }
            }
          }

          else
          {
LABEL_25:
            v21 = [(CoreThemeDocument *)self newObjectForEntity:@"SimpleArtworkRenditionSpec"];
            v48 = 0u;
            v49 = 0u;
            v50 = 0u;
            v51 = 0u;
            renditions2 = [v43 renditions];
            v23 = [renditions2 countByEnumeratingWithState:&v48 objects:v65 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v49;
LABEL_27:
              v26 = 0;
              while (1)
              {
                if (*v49 != v25)
                {
                  objc_enumerationMutation(renditions2);
                }

                v27 = *(*(&v48 + 1) + 8 * v26);
                if ([objc_msgSend(v27 "keySpec")] == v3)
                {
                  break;
                }

                if (v24 == ++v26)
                {
                  v24 = [renditions2 countByEnumeratingWithState:&v48 objects:v65 count:16];
                  if (v24)
                  {
                    goto LABEL_27;
                  }

                  goto LABEL_35;
                }
              }

              if (v27)
              {
                goto LABEL_36;
              }
            }

LABEL_35:
            v27 = [objc_msgSend(v43 "renditions")];
LABEL_36:
            [v27 alignmentRect];
            [v21 setAlignmentRect:?];
            [v21 setAlignmentRectString:{objc_msgSend(objc_msgSend(v27, "alignmentRectString"), "copy")}];
            [v21 setIsTintable:{objc_msgSend(v27, "isTintable")}];
            [v21 setNonAlphaImageAreaString:{objc_msgSend(objc_msgSend(v27, "nonAlphaImageAreaString"), "copy")}];
            [v21 setOriginalImageSizeString:{objc_msgSend(objc_msgSend(v27, "originalImageSizeString"), "copy")}];
            [v21 setAsset:{objc_msgSend(v27, "asset")}];
            [v21 setCompressionType:{objc_msgSend(v27, "compressionType")}];
            slices = [v27 slices];
            v44 = 0u;
            v45 = 0u;
            v46 = 0u;
            v47 = 0u;
            v29 = [slices countByEnumeratingWithState:&v44 objects:v64 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v45;
              do
              {
                for (j = 0; j != v30; ++j)
                {
                  if (*v45 != v31)
                  {
                    objc_enumerationMutation(slices);
                  }

                  v33 = *(*(&v44 + 1) + 8 * j);
                  v34 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                  [v33 sliceRect];
                  [v34 setSliceRect:?];
                  [v34 setSliceRectString:{objc_msgSend(objc_msgSend(v33, "sliceRectString"), "copy")}];
                  [v34 setProduction:{objc_msgSend(v33, "production")}];
                  [v34 setRendition:v21];
                }

                v30 = [slices countByEnumeratingWithState:&v44 objects:v64 count:16];
              }

              while (v30);
            }

            [v21 setAlphaCrop:{objc_msgSend(v27, "alphaCrop")}];
            [v21 setHeight:{objc_msgSend(v27, "height")}];
            [v21 setMonochrome:{objc_msgSend(v27, "monochrome")}];
            [v21 setOpaque:{objc_msgSend(v27, "opaque")}];
            [v21 setPackedPointX:{objc_msgSend(v27, "packedPointX")}];
            [v21 setPackedPointY:{objc_msgSend(v27, "packedPointY")}];
            [v21 setWidth:{objc_msgSend(v27, "width")}];
            [v27 postScaleFactor];
            [v21 setPostScaleFactor:?];
            [v43 addRenditionsObject:v21];
            [v21 setRenditionType:{objc_msgSend(v27, "renditionType")}];
            v35 = [(CoreThemeDocument *)self newObjectForEntity:@"RenditionKeySpec"];
            v12 = v39;
            [v35 setDirection:v39];
            keySpec = [v27 keySpec];
            [v35 setDimension1:{objc_msgSend(keySpec, "dimension1")}];
            [v35 setDimension2:{objc_msgSend(keySpec, "dimension2")}];
            [v35 setMemoryClass:{objc_msgSend(keySpec, "memoryClass")}];
            [v35 setNameIdentifier:{objc_msgSend(keySpec, "nameIdentifier")}];
            [v35 setScaleFactor:{objc_msgSend(keySpec, "scaleFactor")}];
            [v35 setSubtype:{objc_msgSend(keySpec, "subtype")}];
            [v35 setElement:{objc_msgSend(keySpec, "element")}];
            [v35 setGamut:{objc_msgSend(keySpec, "gamut")}];
            [v35 setGraphicsFeatureSetClass:{objc_msgSend(keySpec, "graphicsFeatureSetClass")}];
            [v35 setIdiom:{objc_msgSend(keySpec, "idiom")}];
            [v35 setLayer:{objc_msgSend(keySpec, "layer")}];
            [v35 setPart:{objc_msgSend(keySpec, "part")}];
            [v35 setPresentationState:{objc_msgSend(keySpec, "presentationState")}];
            [v35 setPreviousState:{objc_msgSend(keySpec, "previousState")}];
            [v35 setSize:{objc_msgSend(keySpec, "size")}];
            [v35 setSizeClassVertical:{objc_msgSend(keySpec, "sizeClassVertical")}];
            [v35 setSizeClassHorizontal:{objc_msgSend(keySpec, "sizeClassHorizontal")}];
            [v35 setState:{objc_msgSend(keySpec, "state")}];
            [v35 setTarget:{objc_msgSend(keySpec, "target")}];
            [v35 setValue:{objc_msgSend(keySpec, "value")}];
            [v35 setGlyphSize:{objc_msgSend(keySpec, "glyphSize")}];
            [v35 setGlyphWeight:{objc_msgSend(keySpec, "glyphWeight")}];
            [v35 setAppearance:{objc_msgSend(keySpec, "appearance")}];
            [v35 setLocalization:{objc_msgSend(keySpec, "localization")}];
            [v21 setKeySpec:v35];
            array = v37;
            v3 = v38;
          }

          v13 = v42 + 1;
        }

        while (v42 + 1 != v41);
        v41 = [array countByEnumeratingWithState:&v56 objects:v67 count:16];
      }

      while (v41);
    }
  }
}

- (void)importNamedAssetsFromFileURLs:(id)ls referenceFiles:(BOOL)files completionHandler:(id)handler
{
  if (files)
  {
    v9 = [(CoreThemeDocument *)self _themeBitSourceForReferencedFilesAtURLs:ls createIfNecessary:1];
  }

  else
  {
    v9 = [(CoreThemeDocument *)self _themeBitSource:0];
  }

  v10 = v9;
  if (v9)
  {
    v11 = [-[CoreThemeDocument rootPathForProductionData](self "rootPathForProductionData")];
    v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v11 isDirectory:1];
    global_queue = dispatch_get_global_queue(0, 0);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke;
    v15[3] = &unk_278EBB158;
    filesCopy = files;
    v15[4] = ls;
    v15[5] = self;
    v15[7] = v10;
    v15[8] = handler;
    v15[6] = v12;
    dispatch_async(global_queue, v15);
  }

  else if (handler)
  {
    v14 = *(handler + 2);

    v14(handler, 0, 0);
  }
}

void __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v4 = [MEMORY[0x277CBEA60] array];
  v5 = *MEMORY[0x277CBE868];
  v29[0] = *MEMORY[0x277CBE868];
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v19 = a1;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * i);
        if ([objc_msgSend(objc_msgSend(v12 resourceValuesForKeys:v6 error:{0), "objectForKey:", v5), "BOOLValue"}])
        {
          v13 = [v3 enumeratorAtURL:v12 includingPropertiesForKeys:v4 options:6 errorHandler:0];
          v14 = [v13 nextObject];
          if (v14)
          {
            v15 = v14;
            do
            {
              [v2 addObject:v15];
              v15 = [v13 nextObject];
            }

            while (v15);
          }
        }

        else
        {
          [v2 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);
  }

  v16 = *(v19 + 72);
  if (v16)
  {
    goto LABEL_17;
  }

  v23 = 0;
  v17 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:v2 toManagedLocationAtURL:*(v19 + 48) error:&v23];
  if (v17)
  {
    v2 = v17;
    v16 = *(v19 + 72);
LABEL_17:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke_2;
    block[3] = &unk_278EBB130;
    block[4] = *(v19 + 40);
    block[5] = v2;
    v22 = v16;
    v21 = *(v19 + 56);
    dispatch_async(MEMORY[0x277D85CD0], block);
    return;
  }

  NSLog(&cfstr_UnableToImport_0.isa, [v23 localizedDescription]);
  v18 = *(v19 + 64);
  if (v18)
  {
    (*(v18 + 16))(v18, 0, v23);
  }
}

uint64_t __84__CoreThemeDocument_importNamedAssetsFromFileURLs_referenceFiles_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) undoManager];
  v12 = 0;
  v13 = 0;
  [v2 disableUndoRegistration];
  v3 = objc_autoreleasePoolPush();
  v4 = [*(a1 + 32) addAssetsAtFileURLs:*(a1 + 40) createProductions:0 referenceFiles:*(a1 + 64) bitSource:*(a1 + 48) customInfos:0];
  objc_autoreleasePoolPop(v3);
  v5 = objc_autoreleasePoolPush();
  [*(a1 + 32) createNamedArtworkProductionsForAssets:v4 customInfos:0 skipLastStep:0 error:&v13];
  v6 = v13;
  objc_autoreleasePoolPop(v5);

  if (v13)
  {
    NSLog(&cfstr_UnableToImport_1.isa, [v13 localizedDescription]);
    v7 = *(a1 + 56);
    if (v7)
    {
      (*(v7 + 16))(v7, 0, v13);
    }
  }

  v8 = objc_autoreleasePoolPush();
  [*(a1 + 32) _tidyUpRecognitionImages];
  [*(a1 + 32) _generateWatchImages];
  [*(a1 + 32) _automaticSRGBGenerationFromP3];
  [*(a1 + 32) _automaticP3GenerationFromSRGB];
  [*(a1 + 32) _createForwardstopRenditions];
  [*(a1 + 32) _tidyUpLayerStacks];
  [*(a1 + 32) _optimizeForDeviceTraits];
  [*(a1 + 32) _backwardsCompatibilityPatchForLayoutDirection];
  objc_autoreleasePoolPop(v8);
  v9 = objc_autoreleasePoolPush();
  [*(a1 + 32) packRenditionsError:&v12];
  objc_autoreleasePoolPop(v9);
  v10 = v12;
  [v2 enableUndoRegistration];
  if (v10)
  {
    NSLog(&cfstr_UnableToPackIm.isa, [v12 localizedDescription]);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))(result, v10 == 0, v12);
  }

  return result;
}

- (BOOL)canImportNamedAssetImportInfo:(id)info
{
  if ([info renditionType] != 1018 || (-[CoreThemeDocument targetPlatform](self, "targetPlatform"), LODWORD(v5) = CUISDFTexturesSupported(), v5))
  {
    if (!-[CoreThemeDocument featureEnabled:](self, "featureEnabled:", 19) || [info renditionType] < 0 || objc_msgSend(info, "renditionType") > 5 || (v5 = objc_msgSend(objc_msgSend(objc_msgSend(info, "fileURL"), "pathExtension"), "caseInsensitiveCompare:", @"HEIF")) != 0 && (v5 = objc_msgSend(objc_msgSend(objc_msgSend(info, "fileURL"), "pathExtension"), "caseInsensitiveCompare:", @"HEIC")) != 0)
    {
      [(CoreThemeDocument *)self targetPlatform];
      v6 = CUIMaxScaleForTargetPlatform();
      LOBYTE(v5) = -[CoreThemeDocument targetPlatform](self, "targetPlatform") == 4 && [info idiom] == 5 && objc_msgSend(info, "scaleFactor") >= v6 || objc_msgSend(info, "scaleFactor") <= v6;
    }
  }

  return v5;
}

- (void)importNamedAssetsWithImportInfos:(id)infos referenceFiles:(BOOL)files completionHandler:(id)handler
{
  filesCopy = files;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  array6 = [MEMORY[0x277CBEB18] array];
  array7 = [MEMORY[0x277CBEB18] array];
  array8 = [MEMORY[0x277CBEB18] array];
  array9 = [MEMORY[0x277CBEB18] array];
  array10 = [MEMORY[0x277CBEB18] array];
  array11 = [MEMORY[0x277CBEB18] array];
  array12 = [MEMORY[0x277CBEB18] array];
  array13 = [MEMORY[0x277CBEB18] array];
  array14 = [MEMORY[0x277CBEB18] array];
  array15 = [MEMORY[0x277CBEB18] array];
  array16 = [MEMORY[0x277CBEB18] array];
  array17 = [MEMORY[0x277CBEB18] array];
  v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  CUILogLogToStderr();
  self->_donotstoreDocumentChecksum = 1;
  *(v45 + 24) = 0;
  array18 = [MEMORY[0x277CBEB18] array];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke;
  v41[3] = &unk_278EBB1A8;
  v42 = vdupq_n_s64(0x404E000000000000uLL);
  v41[4] = self;
  v41[5] = infos;
  v43 = vdupq_n_s64(0x4056800000000000uLL);
  v41[6] = array18;
  v41[7] = handler;
  v41[8] = &v44;
  [infos enumerateObjectsUsingBlock:v41];
  if (v45[3])
  {
    goto LABEL_13;
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_3;
  v40[3] = &unk_278EBB1D0;
  v40[4] = self;
  v40[5] = array13;
  v40[6] = array2;
  v40[7] = array3;
  v40[8] = array4;
  v40[9] = array5;
  v40[10] = array8;
  v40[11] = array15;
  v40[12] = array6;
  v40[13] = array14;
  v40[14] = array17;
  v40[15] = array;
  v40[16] = array12;
  v40[17] = v12;
  [array18 enumerateObjectsUsingBlock:v40];
  if ([v12 count])
  {
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_4;
    v39[3] = &unk_278EBB1F8;
    v39[4] = v12;
    [array enumerateObjectsUsingBlock:v39];
  }

  if ([array12 count])
  {
    if (handler)
    {
      (*(handler + 2))(handler, 0, [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:1 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObject:forKey:", @"Misconfigured TDNamedAssetInfo", *MEMORY[0x277CCA450])}]);
    }

    goto LABEL_13;
  }

  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_5;
  v38[3] = &unk_278EBB1F8;
  v38[4] = array10;
  [array enumerateObjectsUsingBlock:v38];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_6;
  v37[3] = &unk_278EBB1F8;
  v37[4] = array11;
  [array2 enumerateObjectsUsingBlock:v37];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_7;
  v36[3] = &unk_278EBB1F8;
  v36[4] = array11;
  [array13 enumerateObjectsUsingBlock:v36];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_8;
  v35[3] = &unk_278EBB1F8;
  v35[4] = array9;
  [array8 enumerateObjectsUsingBlock:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_9;
  v34[3] = &unk_278EBB1F8;
  v34[4] = array16;
  [array15 enumerateObjectsUsingBlock:v34];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_10;
  v33[3] = &unk_278EBB1F8;
  v33[4] = array7;
  [array6 enumerateObjectsUsingBlock:v33];
  if (filesCopy)
  {
    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v14 addObjectsFromArray:array10];
    [v14 addObjectsFromArray:array11];
    [v14 addObjectsFromArray:array16];
    v15 = [(CoreThemeDocument *)self _themeBitSourceForReferencedFilesAtURLs:v14 createIfNecessary:1];

    if (v15)
    {
LABEL_9:
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_11;
      block[3] = &unk_278EBB248;
      v32 = filesCopy;
      block[4] = array10;
      block[5] = array11;
      block[6] = array16;
      block[7] = self;
      block[8] = v15;
      block[9] = array;
      block[10] = array2;
      block[11] = array15;
      block[12] = array14;
      block[13] = array6;
      block[14] = array3;
      block[15] = array4;
      block[16] = array8;
      block[17] = array5;
      block[18] = array13;
      block[19] = array17;
      block[20] = handler;
      dispatch_async(global_queue, block);
      goto LABEL_13;
    }
  }

  else
  {
    v15 = [(CoreThemeDocument *)self _themeBitSource:0];
    if (v15)
    {
      goto LABEL_9;
    }
  }

  if (handler)
  {
    (*(handler + 2))(handler, 0, 0);
  }

LABEL_13:
  _Block_object_dispose(&v44, 8);
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 verify];
  if ([*(a1 + 32) targetPlatform] == 1 && !objc_msgSend(a2, "renditionType") && objc_msgSend(a2, "idiom") == 1 && objc_msgSend(a2, "scaleFactor") == 3)
  {
    [objc_msgSend(a2 "iconSize")];
    if (v8 == *(a1 + 72) && v7 == *(a1 + 80))
    {
      v9 = *(a1 + 40);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_2;
      v15[3] = &unk_278EBB180;
      v15[4] = a2;
      v16 = *(a1 + 88);
      if ([v9 indexOfObjectPassingTest:v15] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [a2 copy];
        [v10 setScaleFactor:2];
        [v10 setSubtype:1792];
        [v10 setIconSize:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSize:", *(a1 + 88), *(a1 + 96))}];
        [*(a1 + 48) addObject:v10];
      }
    }
  }

  if ([a2 graphicsFeatureSetClass] >= 11 && objc_msgSend(a2, "graphicsFeatureSetClass") != 11)
  {
    if ([a2 graphicsFeatureSetClass] == 12)
    {
      v11 = @"Apple11 not supported";
      v12 = 4;
      v13 = @"Unrecognised Metal GPU Family (Apple11) is not supported by this target platform";
LABEL_15:
      [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.CoreThemeDefinition" code:v12 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v13, *MEMORY[0x277CCA450], 0, 0)}];
      NSLog(&v11->isa);
      (*(*(a1 + 56) + 16))();
      *(*(*(a1 + 64) + 8) + 24) = 1;
      *a4 = 1;
      return [*(a1 + 48) addObject:a2];
    }

    if ([a2 graphicsFeatureSetClass] >= 13)
    {
      v11 = @"> Apple10 not supported";
      v12 = 10;
      v13 = @"Unrecognised Metal GPU Family";
      goto LABEL_15;
    }
  }

  return [*(a1 + 48) addObject:a2];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if ([*(a1 + 32) renditionType] || objc_msgSend(*(a1 + 32), "subtype") != 1792 || objc_msgSend(*(a1 + 32), "idiom") != 1 || objc_msgSend(*(a1 + 32), "scaleFactor") != 2)
  {
    return 0;
  }

  [objc_msgSend(*(a1 + 32) "iconSize")];
  if (v7 != *(a1 + 40) || v6 != *(a1 + 48))
  {
    return 0;
  }

  result = 1;
  *a4 = 1;
  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (([a2 renditionType] != 1009 || objc_msgSend(a2, "renditionType") != 1021) && objc_msgSend(a2, "renditionType") != 1015 && (objc_msgSend(a2, "compressionType") == 4 || objc_msgSend(a2, "compressionType") == 5) && objc_msgSend(a2, "compressionType") == 5 && objc_msgSend(*(a1 + 32), "featureEnabled:", 16))
  {
    [a2 setCompressionType:4];
  }

  if ([a2 renditionType] == 1007)
  {
    if (![a2 scaleFactor])
    {
      [a2 setScaleFactor:1];
    }

    if ([a2 texturePixelFormat])
    {
      v4 = *(a1 + 48);
    }

    else
    {
      v4 = *(a1 + 40);
    }

    goto LABEL_27;
  }

  if ([a2 renditionType] == 1009)
  {
    v4 = *(a1 + 56);
LABEL_27:

    return [v4 addObject:a2];
  }

  if ([a2 renditionType] == 1021)
  {
    v4 = *(a1 + 64);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1015)
  {
    v4 = *(a1 + 72);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1011)
  {
    v4 = *(a1 + 80);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1014)
  {
    v4 = *(a1 + 88);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1017)
  {
    v4 = *(a1 + 96);
    goto LABEL_27;
  }

  if ([a2 renditionType] == 1013)
  {
    if (![a2 scaleFactor])
    {
      [a2 setScaleFactor:1];
    }

    v6 = *(a1 + 104);
  }

  else
  {
    if ([a2 renditionType] != 1019 && objc_msgSend(a2, "renditionType") != 1020)
    {
      if ([*(a1 + 32) canImportNamedAssetImportInfo:a2])
      {
        if ([a2 renditionType] == 1002 || objc_msgSend(a2, "renditionType") == 1018)
        {
          [*(a1 + 120) insertObject:a2 atIndex:0];
        }

        else
        {
          [*(a1 + 120) addObject:a2];
        }

        if ([a2 containedImageNames] && !objc_msgSend(a2, "renditionType"))
        {
          [*(a1 + 128) addObject:a2];
        }

        if ([a2 renditionType] == 1002 || objc_msgSend(a2, "renditionType") == 1018)
        {
          if (![a2 scaleFactor])
          {
            [a2 setScaleFactor:1];
          }

          if ([a2 compressionType])
          {
            v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:{objc_msgSend(a2, "compressionType")}];
            v13 = 0u;
            v14 = 0u;
            v15 = 0u;
            v16 = 0u;
            v8 = [a2 layerReferences];
            v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
            if (v9)
            {
              v10 = v9;
              v11 = *v14;
              do
              {
                for (i = 0; i != v10; ++i)
                {
                  if (*v14 != v11)
                  {
                    objc_enumerationMutation(v8);
                  }

                  [*(a1 + 136) setObject:v7 forKey:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "layerName")}];
                }

                v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
              }

              while (v10);
            }
          }
        }
      }

      goto LABEL_38;
    }

    v6 = *(a1 + 112);
  }

  [v6 addObject:a2];
LABEL_38:
  if ([a2 renditionType] == 1000 && !objc_msgSend(a2, "scaleFactor"))
  {
    [a2 setScaleFactor:1];
  }

  if (![a2 renditionType])
  {
    [a2 setResizingMode:1];
  }

  result = [a2 renditionType];
  if ((result & 0x8000000000000000) == 0)
  {
    result = [a2 renditionType];
    if (result <= 5)
    {
      result = [a2 scaleFactor];
      if (!result)
      {
        result = [objc_msgSend(objc_msgSend(a2 "fileURL")];
        if (result)
        {
          return [a2 setScaleFactor:1];
        }
      }
    }
  }

  return result;
}

void *__87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_4(uint64_t a1, void *a2)
{
  result = [*(a1 + 32) objectForKey:{objc_msgSend(a2, "name")}];
  if (result)
  {
    v4 = [result intValue];

    return [a2 setCompressionType:v4];
  }

  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

void *__87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_6(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 textureInfos];
  result = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v14;
    v7 = *MEMORY[0x277CBEEE8];
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [v9 fileURL];
        v11 = *(a1 + 32);
        v12 = v7;
        if (v10)
        {
          v12 = [v9 fileURL];
        }

        [v11 addObject:v12];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      result = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

void *__87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_7(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a2 textureInfos];
  result = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v14;
    v7 = *MEMORY[0x277CBEEE8];
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * v8);
        v10 = [v9 fileURL];
        v11 = *(a1 + 32);
        v12 = v7;
        if (v10)
        {
          v12 = [v9 fileURL];
        }

        [v11 addObject:v12];
        v8 = v8 + 1;
      }

      while (v5 != v8);
      result = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_8(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_9(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_10(uint64_t a1, void *a2)
{
  v4 = [a2 fileURL];
  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [a2 fileURL];
  }

  else
  {
    v6 = *MEMORY[0x277CBEEE8];
  }

  return [v5 addObject:v6];
}

void __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_11(uint64_t a1)
{
  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
LABEL_3:
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_15;
    block[3] = &unk_278EBB220;
    block[4] = *(a1 + 56);
    block[5] = v2;
    v26 = *(a1 + 168);
    v18 = *(a1 + 64);
    v19 = v3;
    v4 = *(a1 + 104);
    v20 = *(a1 + 88);
    v21 = v4;
    v5 = *(a1 + 136);
    v22 = *(a1 + 120);
    v23 = v5;
    v24 = *(a1 + 80);
    v25 = *(a1 + 152);
    dispatch_async(MEMORY[0x277D85CD0], block);
    return;
  }

  v6 = [objc_msgSend(*(a1 + 56) "rootPathForProductionData")];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 isDirectory:1];
  v30 = 0;
  v2 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:*(a1 + 32) toManagedLocationAtURL:v7 error:&v30];
  v8 = [v2 count];
  if (v8 != [*(a1 + 72) count])
  {
    NSLog(&cfstr_UnableToImport_2.isa, [v30 localizedDescription]);
    goto LABEL_10;
  }

  v9 = *(a1 + 72);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_12;
  v29[3] = &unk_278EBB1F8;
  v29[4] = v2;
  [v9 enumerateObjectsUsingBlock:v29];
  v10 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:*(a1 + 40) toManagedLocationAtURL:v7 error:&v30];
  v11 = [v10 count];
  if (v11 != [*(a1 + 40) count])
  {
    NSLog(&cfstr_UnableToImport_2.isa, [v30 localizedDescription]);
LABEL_10:
    v15 = *(a1 + 160);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, v30);
    }

    return;
  }

  v12 = *(a1 + 80);
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_13;
  v28[3] = &unk_278EBB1F8;
  v28[4] = v10;
  [v12 enumerateObjectsUsingBlock:v28];
  v3 = [objc_opt_class() _imageAssetURLsByCopyingFileURLs:*(a1 + 48) toManagedLocationAtURL:v7 error:&v30];
  v13 = [v3 count];
  if (v13 == [*(a1 + 88) count])
  {
    v14 = *(a1 + 88);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_14;
    v27[3] = &unk_278EBB1F8;
    v27[4] = v3;
    [v14 enumerateObjectsUsingBlock:v27];
    goto LABEL_3;
  }

  NSLog(&cfstr_UnableToImport_3.isa, [v30 localizedDescription]);
  v16 = *(a1 + 160);
  if (v16)
  {
    (*(v16 + 16))(v16, 0, v30);
  }
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndex:?];

  return [a2 setFileURL:v3];
}

void *__87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_13(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [a2 textureInfos];
  result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v7 = result;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setFileURL:{objc_msgSend(*(a1 + 32), "objectAtIndex:", a3)}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      result = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = [*(a1 + 32) objectAtIndex:?];

  return [a2 setFileURL:v3];
}

uint64_t __87__CoreThemeDocument_importNamedAssetsWithImportInfos_referenceFiles_completionHandler___block_invoke_15(uint64_t a1)
{
  v2 = [*(a1 + 32) undoManager];
  [v2 disableUndoRegistration];
  v11 = [MEMORY[0x277CBEA60] array];
  v3 = [*(a1 + 32) _addAssetsAtFileURLs:*(a1 + 40) createProductions:0 referenceFiles:*(a1 + 160) bitSource:*(a1 + 48) customInfos:*(a1 + 56) sortedCustomInfos:&v11];
  v4 = [v3 count];
  if (v4 == [v11 count])
  {
    v10 = [MEMORY[0x277CBEA60] array];
    v5 = [*(a1 + 32) _addAssetsAtFileURLs:*(a1 + 64) createProductions:0 referenceFiles:*(a1 + 160) bitSource:*(a1 + 48) customInfos:*(a1 + 72) sortedCustomInfos:&v10];
    v6 = [v5 count];
    if (v6 == [v10 count])
    {
      v9 = 0;
      [*(a1 + 32) createNamedRenditionGroupProductionsForImportInfos:*(a1 + 80) error:&v9];
      if (v9 || ([*(a1 + 32) createNamedArtworkProductionsForAssets:v3 customInfos:v11 skipLastStep:0 error:&v9], v9) || (objc_msgSend(*(a1 + 32), "createNamedRecognitionObjectsForAssets:customInfos:error:", v5, v10, &v9), v9) || (objc_msgSend(*(a1 + 32), "createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:", *(a1 + 88), *(a1 + 160), *(a1 + 48), &v9), v9) || (objc_msgSend(*(a1 + 32), "createNamedColorProductionsForImportInfos:error:", *(a1 + 96), &v9), v9) || (objc_msgSend(*(a1 + 32), "createNamedGradientProductionsForImportInfos:error:", *(a1 + 104), &v9), v9) || (objc_msgSend(*(a1 + 32), "createNamedModelsForCustomInfos:referenceFiles:bitSource:error:", *(a1 + 112), *(a1 + 160), *(a1 + 48), &v9), v9) || (objc_msgSend(*(a1 + 32), "createTextStyleProductionsForImportInfos:error:", *(a1 + 120), &v9), v9) || (objc_msgSend(*(a1 + 32), "createNamedTexturesForCustomInfos:referenceFiles:bitSource:error:", objc_msgSend(*(a1 + 32), "updateAutomaticTexturesForCustomInfos:allTextureInfos:", *(a1 + 128), *(a1 + 136)), *(a1 + 160), *(a1 + 48), &v9), v9) || (objc_msgSend(*(a1 + 32), "_tidyUpRecognitionImages"), objc_msgSend(*(a1 + 32), "_generateWatchImages"), objc_msgSend(*(a1 + 32), "_automaticSRGBGenerationFromP3"), objc_msgSend(*(a1 + 32), "_automaticP3GenerationFromSRGB"), objc_msgSend(*(a1 + 32), "_tidyUpLayerStacks"), objc_msgSend(*(a1 + 32), "_createForwardstopRenditions"), objc_msgSend(*(a1 + 32), "createNamedIconLayerStacksForCustomInfos:referenceFiles:bitSource:error:", *(a1 + 144), *(a1 + 160), *(a1 + 48), &v9), v9))
      {
        v7 = 0;
      }

      else
      {
        [*(a1 + 32) _automaticSRGBGenerationFromP3];
        [*(a1 + 32) _automaticP3GenerationFromSRGB];
        [*(a1 + 32) _optimizeForDeviceTraits];
        [*(a1 + 32) _backwardsCompatibilityPatchForLayoutDirection];
        v7 = 1;
      }

      [v2 enableUndoRegistration];
      result = *(a1 + 152);
      if (result)
      {
        return (*(result + 16))(result, v7, v9);
      }
    }

    else
    {
      NSLog(&cfstr_UnableToImport.isa);
      [v2 enableUndoRegistration];
      result = *(a1 + 152);
      if (result)
      {
        return (*(result + 16))(result, 0, 0);
      }
    }
  }

  else
  {
    NSLog(&cfstr_UnableToImport.isa);
    [v2 enableUndoRegistration];
    result = *(a1 + 152);
    if (result)
    {
      return (*(result + 16))(result, 0, 0);
    }
  }

  return result;
}

- (void)deleteNamedAssets:(id)assets shouldDeleteAssetFiles:(BOOL)files completionHandler:(id)handler
{
  handlerCopy = handler;
  filesCopy = files;
  v40 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = assets;
  v28 = [assets countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v27 = *v35;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v35 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        [v8 addObject:{v11, handlerCopy}];
        renditions = [v11 renditions];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v13 = [renditions countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v31;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v31 != v15)
              {
                objc_enumerationMutation(renditions);
              }

              v17 = *(*(&v30 + 1) + 8 * j);
              [v8 addObject:v17];
              asset = [v17 asset];
              if (asset)
              {
                v19 = asset;
                [v8 addObject:asset];
                if (filesCopy)
                {
                  v20 = [v19 fileURLWithDocument:self];
                  if (v20)
                  {
                    [v9 addObject:v20];
                  }
                }
              }
            }

            v14 = [renditions countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v14);
        }
      }

      v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v28);
  }

  undoManager = [(TDPersistentDocument *)self undoManager];
  if (filesCopy)
  {
    v22 = undoManager;
    [undoManager disableUndoRegistration];
    [(CoreThemeDocument *)self deleteObjects:v8];

    [v22 enableUndoRegistration];
  }

  else
  {
    [(CoreThemeDocument *)self deleteObjects:v8];
  }

  if ([v9 count])
  {
    global_queue = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __80__CoreThemeDocument_deleteNamedAssets_shouldDeleteAssetFiles_completionHandler___block_invoke;
    block[3] = &unk_278EBB270;
    block[4] = v9;
    block[5] = v25;
    dispatch_async(global_queue, block);
  }

  else if (v25)
  {
    (*(v25 + 16))();
  }
}

uint64_t __80__CoreThemeDocument_deleteNamedAssets_shouldDeleteAssetFiles_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [v2 removeItemAtURL:*(*(&v9 + 1) + 8 * i) error:0];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)_addAssetsFromCustomAssetInfos:(id)infos bitSource:(id)source error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__CoreThemeDocument__addAssetsFromCustomAssetInfos_bitSource_error___block_invoke;
  v11[3] = &unk_278EBB298;
  v11[4] = self;
  v11[5] = source;
  v11[6] = array;
  v11[7] = error;
  [infos enumerateObjectsUsingBlock:v11];
  return array;
}

uint64_t __68__CoreThemeDocument__addAssetsFromCustomAssetInfos_bitSource_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [a2 customAsset];
  v8 = [*(a1 + 32) newObjectForEntity:@"CustomAsset"];
  v13 = v8;
  if (!v8 && *(a1 + 56))
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [v9 initWithDomain:CoreThemeDefinitionErrorDomain[0] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", @"Unable to create CustomAsset entity. Data model may not support this operation.", *MEMORY[0x277CCA450], 0)}];
    v8 = 0;
    **(a1 + 56) = v10;
    *a4 = 1;
  }

  [v8 setSource:*(a1 + 40)];
  [v13 setCategory:@"custom"];
  [v13 setName:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"CustomAsset-%@-%@", objc_msgSend(a2, "elementName"), objc_msgSend(a2, "partName"))}];
  [v13 setTemplateRenderingMode:{objc_msgSend(*(a1 + 32), "templateRenderingModeWithIdentifier:", objc_msgSend(a2, "templateRenderingMode"))}];
  [v13 setScaleFactor:{objc_msgSend(objc_msgSend(a2, "renditionKey"), "themeScale")}];
  v11 = [v13 setReferenceData:{objc_msgSend(v7, "customAssetReferenceData")}];
  if (v13)
  {
    v11 = [*(a1 + 48) addObject:?];
  }

  return MEMORY[0x2821F9730](v11);
}

- (BOOL)createCustomArtworkProductionsForCustomAssets:(id)assets withImportInfos:(id)infos error:(id *)error
{
  array = [MEMORY[0x277CBEB18] array];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __89__CoreThemeDocument_createCustomArtworkProductionsForCustomAssets_withImportInfos_error___block_invoke;
  v10[3] = &unk_278EBB2C0;
  v10[4] = infos;
  v10[5] = self;
  v10[6] = array;
  [assets enumerateObjectsUsingBlock:v10];
  return 1;
}

uint64_t __89__CoreThemeDocument_createCustomArtworkProductionsForCustomAssets_withImportInfos_error___block_invoke(id *a1, void *a2)
{
  v4 = [a1[4] objectAtIndexedSubscript:?];
  [objc_msgSend(v4 "customAsset")];
  v6 = v5;
  v8 = v7;
  v9 = a1[5];
  [v4 sliceInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  [v4 resizableSliceSize];
  v20 = [v9 slicesComputedForImageSize:objc_msgSend(v4 usingSliceInsets:"renditionType") resizableSliceSize:v6 withRenditionType:{v8, v11, v13, v15, v17, v18, v19}];
  v21 = [a1[5] newObjectForEntity:@"CustomArtworkProduction"];
  v22 = [a1[5] newObjectForEntity:@"RenditionKeySpec"];
  [v22 setAttributesFromRenditionKey:objc_msgSend(objc_msgSend(v4 withDocument:{"renditionKey"), "keyList"), a1[5]}];
  [v21 setBaseKeySpec:v22];

  [v21 setIsExcludedFromFilter:*MEMORY[0x277CBED10]];
  [v21 setRenditionType:{objc_msgSend(a1[5], "renditionTypeWithIdentifier:", objc_msgSend(v4, "renditionType"))}];
  [v21 setRenditionSubtype:{objc_msgSend(a1[5], "renditionSubtypeWithIdentifier:", objc_msgSend(v4, "renditionSubtype"))}];
  [v21 setTemplateRenderingMode:{objc_msgSend(a1[5], "templateRenderingModeWithIdentifier:", objc_msgSend(v4, "templateRenderingMode"))}];
  [v21 setOptOutOfThinning:{objc_msgSend(v4, "optOutOfThinning")}];
  [v21 setComment:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Custom Asset from: %@", objc_msgSend(a2, "name"))}];
  if ([v4 modificationDate])
  {
    [v21 setDateOfLastChange:{objc_msgSend(v4, "modificationDate")}];
    [v21 setHasCustomDateOfLastChange:1];
  }

  [a1[6] addObject:v21];
  v23 = [a1[5] newObjectForEntity:@"CustomArtworkRenditionSpec"];
  [v23 setAsset:a2];
  [v23 setProduction:v21];
  [v4 alignmentRect];
  [v23 setAlignmentRect:?];
  if ([v20 count])
  {
    [v23 setSlices:v20];
  }

  [v23 resetToBaseKeySpec];
  if ([objc_msgSend(v4 "name")])
  {
    v24 = [a1[5] namedElementWithName:{objc_msgSend(v4, "name")}];
    if (!v24)
    {
      v24 = [a1[5] _createNamedElementWithNextAvailableIdentifier];
      [v24 setName:{objc_msgSend(v4, "name")}];
    }

    [v24 setProduction:v21];
    [objc_msgSend(v21 "baseKeySpec")];
  }

  return [v23 resetToBaseKeySpec];
}

- (void)importCustomAssetsWithImportInfos:(id)infos completionHandler:(id)handler
{
  v7 = [(CoreThemeDocument *)self _themeBitSource:0];
  if (v7)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __73__CoreThemeDocument_importCustomAssetsWithImportInfos_completionHandler___block_invoke;
    v9[3] = &unk_278EBB2E8;
    v9[4] = self;
    v9[5] = infos;
    v9[6] = v7;
    v9[7] = handler;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }

  else if (handler)
  {
    v8 = *(handler + 2);

    v8(handler, 0, 0);
  }
}

uint64_t __73__CoreThemeDocument_importCustomAssetsWithImportInfos_completionHandler___block_invoke(uint64_t a1)
{
  v7 = 0;
  v2 = [*(a1 + 32) undoManager];
  [v2 disableUndoRegistration];
  v3 = [*(a1 + 32) _addAssetsFromCustomAssetInfos:*(a1 + 40) bitSource:*(a1 + 48) error:&v7];
  v4 = [v3 count];
  if (v4 == [*(a1 + 40) count])
  {
    [*(a1 + 32) createCustomArtworkProductionsForCustomAssets:v3 withImportInfos:*(a1 + 40) error:&v7];
    [v2 enableUndoRegistration];
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v6 = *(result + 16);
  }

  else
  {
    NSLog(&cfstr_UnableToImport_4.isa);
    [v2 enableUndoRegistration];
    result = *(a1 + 56);
    if (!result)
    {
      return result;
    }

    v6 = *(result + 16);
  }

  return v6();
}

- (id)_genericPartDefinition
{
  v2 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"SchemaPartDefinition", [MEMORY[0x277CCAC30] predicateWithFormat:@"name = %@ AND element.name = %@", @"Push Button", @"Push Button"], 0);
  result = [v2 count];
  if (result)
  {

    return [v2 objectAtIndex:0];
  }

  return result;
}

- (id)createElementProductionWithAsset:(id)asset
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {

    return [(CoreThemeDocument *)self _createPhotoshopElementProductionWithAsset:asset];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      NSLog(&cfstr_CreatingProduc.isa);
    }

    return 0;
  }
}

- (id)createAssetWithName:(id)name inCategory:(id)category forThemeBitSource:(id)source
{
  v9 = [TDAsset scaleFactorFromImageFilename:?];

  return [(CoreThemeDocument *)self createAssetWithName:name scaleFactor:v9 inCategory:category forThemeBitSource:source];
}

- (id)createAssetWithName:(id)name scaleFactor:(unsigned int)factor inCategory:(id)category forThemeBitSource:(id)source
{
  v8 = *&factor;
  pathExtension = [name pathExtension];

  return [(CoreThemeDocument *)self createAssetWithName:name fileType:pathExtension scaleFactor:v8 inCategory:category forThemeBitSource:source];
}

- (id)createAssetWithName:(id)name fileType:(id)type scaleFactor:(unsigned int)factor inCategory:(id)category forThemeBitSource:(id)source
{
  v9 = *&factor;
  if ([type isEqualToString:@"psd"])
  {
    v13 = @"PhotoshopAsset";
  }

  else if ([type isEqualToString:@"png"])
  {
    v13 = @"PNGAsset";
  }

  else if ([type isEqualToString:@"imagestack"])
  {
    v13 = @"ImageStackAsset";
  }

  else if ([type isEqualToString:@"texture"])
  {
    v13 = @"TextureAsset";
  }

  else
  {
    if (![type isEqualToString:@"model"])
    {
      NSLog(&cfstr_UnsupportedFil.isa, name);
      v14 = 0;
      goto LABEL_12;
    }

    v13 = @"ModelIOAsset";
  }

  v14 = [(CoreThemeDocument *)self newObjectForEntity:v13];
LABEL_12:
  [v14 setName:name];
  [v14 setScaleFactor:v9];
  [v14 setCategory:category];
  [v14 setSource:source];
  return v14;
}

- (id)assetAtPath:(id)path
{
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:path];

  return [(CoreThemeDocument *)self assetAtFileURL:v4];
}

- (id)assetAtFileURL:(id)l
{
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v10 = 0;
  [(CoreThemeDocument *)self _getFilename:&v13 scaleFactor:&v11 category:&v12 bitSource:&v10 forFileURL:l];
  if (v13)
  {
    v5 = v11 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || v12 == 0 || v10 == 0)
  {
    return 0;
  }

  v8 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"PhotoshopAsset", [MEMORY[0x277CCAC30] predicateWithFormat:@"name == %@ AND scaleFactor == %u AND category == %@", v13, v11, v12], 0);
  result = [v8 count];
  if (result)
  {
    if ([v8 count] >= 2)
    {
      NSLog(&cfstr_WarningFoundMu.isa, [l path]);
    }

    return [v8 objectAtIndex:0];
  }

  return result;
}

- (id)_addAssetsAtFileURLs:(id)ls createProductions:(BOOL)productions referenceFiles:(BOOL)files bitSource:(id)source customInfos:(id)infos sortedCustomInfos:(id *)customInfos
{
  filesCopy = files;
  productionsCopy = productions;
  v81 = *MEMORY[0x277D85DE8];
  v66 = [MEMORY[0x277CBEB18] arrayWithArray:{-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"Asset", 0, 0)}];
  v63 = [v66 count];
  v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(ls, "count")}];
  array = [MEMORY[0x277CBEB18] array];
  v16 = 0;
  if (filesCopy)
  {
    v16 = [source fileURLWithDocument:self];
  }

  pathComponents = [v16 pathComponents];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke;
  v77[3] = &unk_278EBB310;
  v77[4] = source;
  v77[5] = infos;
  selfCopy = self;
  v77[6] = self;
  v77[7] = ls;
  v78 = filesCopy;
  v77[8] = v16;
  v77[9] = pathComponents;
  v77[10] = @"FilePDF";
  v77[11] = @"AssetName";
  v77[12] = @"Scale";
  v77[13] = @"FileScale";
  v77[14] = @"Category";
  v77[15] = @"FileBitSource";
  v77[17] = v15;
  v77[18] = customInfos;
  v77[16] = @"CustomInfo";
  [ls enumerateObjectsUsingBlock:v77];
  v76[0] = MEMORY[0x277D85DD0];
  v76[1] = 3221225472;
  v76[2] = __115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke_2;
  v76[3] = &unk_278EBB338;
  v76[4] = @"AssetName";
  v18 = [v15 sortedArrayUsingComparator:v76];
  v19 = v18;
  if (customInfos)
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v18, "count")}];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v21 = [v19 countByEnumeratingWithState:&v72 objects:v80 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v73;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v73 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = [*(*(&v72 + 1) + 8 * i) objectForKey:@"CustomInfo"];
          if (v25)
          {
            [v20 addObject:v25];
          }
        }

        v22 = [v19 countByEnumeratingWithState:&v72 objects:v80 count:16];
      }

      while (v22);
    }

    *customInfos = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v62 = [v19 countByEnumeratingWithState:&v68 objects:v79 count:16];
  if (v62)
  {
    v58 = 0;
    v59 = 0;
    v60 = *MEMORY[0x277CBEEE8];
    v61 = *v69;
    v56 = !productionsCopy;
    selfCopy2 = self;
    do
    {
      v27 = 0;
      do
      {
        if (*v69 != v61)
        {
          objc_enumerationMutation(v19);
        }

        v28 = *(*(&v68 + 1) + 8 * v27);
        v29 = [v28 objectForKey:@"AssetName"];
        v30 = [objc_msgSend(v28 objectForKey:{@"Scale", "unsignedIntegerValue"}];
        v31 = [objc_msgSend(v28 objectForKey:{@"FileScale", "unsignedIntegerValue"}];
        v32 = [v28 objectForKey:@"Category"];
        v33 = [v28 objectForKey:@"FileBitSource"];
        v34 = [v28 objectForKey:@"FilePDF"];
        v67 = [v28 objectForKey:@"CustomInfo"];
        if (v63)
        {
          if (v31)
          {
            v35 = v34 == 0;
          }

          else
          {
            v35 = 1;
          }

          if (v35)
          {
            v36 = v30;
            v45 = [v66 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name == %@ AND scaleFactor == %u AND category == %@", v29, v30, v32)}];
            if (![v45 count] || (objc_msgSend(v45, "objectAtIndex:", 0), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
            {
              if (v67)
              {
                renditionType = [v67 renditionType];
                v38 = @"imagestack";
                if (renditionType != 1002)
                {
                  if ([v67 renditionType] == 1018)
                  {
                    v38 = @"imagestack";
                  }

                  else
                  {
                    v38 = @"png";
                  }
                }

                v39 = [(CoreThemeDocument *)selfCopy2 createAssetWithName:v29 fileType:v38 scaleFactor:v36 inCategory:v32 forThemeBitSource:v33];
                if ([v67 renditionType] == 1000 || objc_msgSend(v67, "renditionType") == 1014)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v39 setRawData:1];
                  }
                }
              }

              else
              {
                v39 = [(CoreThemeDocument *)selfCopy2 createAssetWithName:v29 fileType:@"png" scaleFactor:v36 inCategory:v32 forThemeBitSource:v33];
              }

              goto LABEL_62;
            }

LABEL_41:
            v39 = [v45 objectAtIndex:0];
          }

          else
          {
            v44 = v30;
            v45 = [v66 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithFormat:", @"name == %@ AND scaleFactor == %u AND category == %@ AND fileScaleFactor == %@", v29, v30, v32, v31)}];
            if ([v45 count])
            {
              [v45 objectAtIndex:0];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                goto LABEL_41;
              }
            }

            v39 = [(CoreThemeDocument *)selfCopy2 createAssetWithName:v29 fileType:@"png" scaleFactor:v44 inCategory:v32 forThemeBitSource:v33];
            [v39 setFileScaleFactor:v31];
LABEL_62:
            [v66 addObject:v39];
          }

LABEL_63:
          if (!v39)
          {
            return 0;
          }

          goto LABEL_64;
        }

        v57 = v33;
        v64 = v29;
        v40 = v30;
        v41 = 0;
        v42 = 0;
        if (v59)
        {
          v43 = 0;
          if (v58)
          {
            v42 = [v59 objectForKey:@"AssetName"];
            v41 = [objc_msgSend(v59 objectForKey:{@"Scale", "unsignedIntegerValue"}];
            v43 = [v59 objectForKey:v32];
          }
        }

        else
        {
          v43 = 0;
        }

        v46 = [v42 isEqualToString:v64];
        if (v41 == v40)
        {
          v47 = v46;
        }

        else
        {
          v47 = 0;
        }

        if (v31)
        {
          v48 = v34 == 0;
        }

        else
        {
          v48 = 1;
        }

        if (!v48)
        {
          selfCopy2 = selfCopy;
          if (v47)
          {
            [v43 isEqualToString:v32];
          }

          v39 = [(CoreThemeDocument *)selfCopy createAssetWithName:v64 fileType:@"png" scaleFactor:v40 inCategory:v32 forThemeBitSource:v57];
          [v39 setFileScaleFactor:v31];
          v58 = v39;
          v59 = v28;
          goto LABEL_63;
        }

        selfCopy2 = selfCopy;
        if (!v47 || ([v43 isEqualToString:v32] & 1) == 0)
        {
          if (v67)
          {
            if ([v67 renditionType] != 1002 && objc_msgSend(v67, "renditionType") != 1018)
            {
              v58 = v60;
              if ([v67 renditionType] != 1004)
              {
                v52 = [(CoreThemeDocument *)selfCopy createAssetWithName:v64 fileType:@"png" scaleFactor:v40 inCategory:v32 forThemeBitSource:v57];
                v58 = v52;
                if ([v67 renditionType] == 1000 || objc_msgSend(v67, "renditionType") == 1014)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [v52 setRawData:1];
                  }
                }
              }

              goto LABEL_71;
            }

            v49 = selfCopy;
            v50 = v64;
            v51 = @"imagestack";
          }

          else
          {
            v49 = selfCopy;
            v50 = v64;
            v51 = @"png";
          }

          v58 = [(CoreThemeDocument *)v49 createAssetWithName:v50 fileType:v51 scaleFactor:v40 inCategory:v32 forThemeBitSource:v57];
        }

LABEL_71:
        v39 = v58;
        if (!v58)
        {
          return 0;
        }

        [v66 addObject:v58];
        v59 = v28;
LABEL_64:
        if (v39 != v60 && (([v39 hasProduction] | v56) & 1) == 0)
        {
          [(CoreThemeDocument *)selfCopy2 createElementProductionWithAsset:v39];
        }

        [array addObject:v39];
        ++v27;
      }

      while (v62 != v27);
      v53 = [v19 countByEnumeratingWithState:&v68 objects:v79 count:16];
      v62 = v53;
    }

    while (v53);
  }

  return array;
}

__CFString *__115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  v43 = 0;
  v44 = v5;
  v42 = 0;
  v41 = 1;
  if (*MEMORY[0x277CBEEE8] == a2)
  {
    v9 = [objc_msgSend(*(a1 + 40) objectAtIndex:{a3), "name"}];
    v6 = 0;
    v42 = @"PackedAsset";
    v43 = v9;
  }

  else
  {
    v6 = a2;
    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = &v42;
    }

    if (v5)
    {
      v8 = 0;
    }

    else
    {
      v8 = &v44;
    }

    [*(a1 + 48) _getFilename:&v43 scaleFactor:&v41 category:v7 bitSource:v8 forFileURL:a2];
  }

  v10 = [*(a1 + 40) count];
  if (v10 == [*(a1 + 56) count])
  {
    v41 = [objc_msgSend(*(a1 + 40) objectAtIndex:{a3), "scaleFactor"}];
  }

  if (*(a1 + 152) == 1 && v6 && *(a1 + 64))
  {
    v11 = [v6 pathComponents];
    UncommonItemInArrays = indexOfFirstUncommonItemInArrays(*(a1 + 72), v11);
    v13 = [v11 subarrayWithRange:{UncommonItemInArrays, objc_msgSend(v11, "count") + ~UncommonItemInArrays}];
    result = [MEMORY[0x277CCACA8] pathWithComponents:v13];
    v42 = result;
    if (!result)
    {
      goto LABEL_18;
    }
  }

  else
  {
    result = v42;
    if (!v42)
    {
LABEL_18:
      v42 = @"NamedImages";
    }
  }

  if (!v43 || !v44)
  {
    return result;
  }

  [*(a1 + 48) targetPlatform];
  v15 = CUIMaxScaleForTargetPlatform();
  [*(a1 + 48) targetPlatform];
  v16 = CUIMinScaleForTargetPlatform();
  v17 = *(a1 + 40);
  if (v17 && [v17 count] > a3)
  {
    v18 = [*(a1 + 40) objectAtIndex:a3];
    v19 = v18;
    if (v6 && v18)
    {
      if ([v18 renditionType] == 1000 && !objc_msgSend(v19, "universalTypeIdentifier"))
      {
        PreferredIdentifierForTag = UTTypeCreatePreferredIdentifierForTag(*MEMORY[0x277CC1F58], [v6 pathExtension], 0);
        [v19 setUniversalTypeIdentifier:PreferredIdentifierForTag];
      }
    }

    else if (!v6)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if (!v6)
    {
      goto LABEL_51;
    }

    v19 = 0;
  }

  if ([v19 renditionType] != 1000 && objc_msgSend(v19, "renditionType") != 1017 && (!objc_msgSend(objc_msgSend(v6, "pathExtension"), "caseInsensitiveCompare:", @"PDF") || !objc_msgSend(objc_msgSend(v6, "pathExtension"), "caseInsensitiveCompare:", @"SVG")))
  {
    v21 = MEMORY[0x277CBEB18];
    v22 = v43;
    v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
    v25 = [v21 arrayWithObjects:{v22, v23, v24, v42, v44, *(a1 + 80), 0}];
    v26 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 80), 0}];
    if (*(a1 + 144))
    {
      v27 = *(a1 + 40);
      if (v27)
      {
        if ([v27 count] > a3)
        {
          [v25 addObject:{objc_msgSend(*(a1 + 40), "objectAtIndex:", a3)}];
          [v26 addObject:*(a1 + 128)];
        }
      }
    }

    result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v26];
    if (result)
    {
      result = [*(a1 + 136) addObject:result];
    }

    while (v16 <= v15)
    {
      result = [*(a1 + 48) shouldGenerateScale:v16];
      if (result)
      {
        v28 = MEMORY[0x277CBEB18];
        v29 = v43;
        v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v16];
        v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
        v32 = [v28 arrayWithObjects:{v29, v30, v31, v42, v44, *(a1 + 80), 0}];
        v33 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), *(a1 + 80), 0}];
        if (*(a1 + 144))
        {
          v34 = *(a1 + 40);
          if (v34)
          {
            if ([v34 count] > a3)
            {
              [v32 addObject:{objc_msgSend(*(a1 + 40), "objectAtIndex:", a3)}];
              [v33 addObject:*(a1 + 128)];
            }
          }
        }

        result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v33];
        if (result)
        {
          result = [*(a1 + 136) addObject:result];
        }
      }

      v16 = (v16 + 1);
    }

    return result;
  }

LABEL_51:
  v35 = MEMORY[0x277CBEB18];
  v36 = v43;
  v37 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v41];
  v38 = [v35 arrayWithObjects:{v36, v37, v42, v44, 0}];
  v39 = [MEMORY[0x277CBEB18] arrayWithObjects:{*(a1 + 88), *(a1 + 96), *(a1 + 112), *(a1 + 120), 0}];
  if (*(a1 + 144))
  {
    v40 = *(a1 + 40);
    if (v40)
    {
      if ([v40 count] > a3)
      {
        [v38 addObject:{objc_msgSend(*(a1 + 40), "objectAtIndex:", a3)}];
        [v39 addObject:*(a1 + 128)];
      }
    }
  }

  result = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v39];
  if (result)
  {
    return [*(a1 + 136) addObject:result];
  }

  return result;
}

uint64_t __115__CoreThemeDocument__addAssetsAtFileURLs_createProductions_referenceFiles_bitSource_customInfos_sortedCustomInfos___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 objectForKey:*(a1 + 32)];
  v6 = [a3 objectForKey:*(a1 + 32)];

  return [v5 compare:v6];
}

- (id)metadatumForKey:(id)key
{
  v4 = [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  if (!v4)
  {
    [CoreThemeDocument metadatumForKey:];
  }

  persistentStores = [v4 persistentStores];
  v6 = persistentStores;
  if (!persistentStores || [persistentStores count] != 1)
  {
    [CoreThemeDocument metadatumForKey:];
  }

  v7 = [v4 metadataForPersistentStore:{objc_msgSend(v6, "objectAtIndex:", 0)}];

  return [v7 objectForKey:key];
}

- (void)setMetadatum:(id)metadatum forKey:(id)key
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  if (currentThread != [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")])
  {
    [CoreThemeDocument setMetadatum:forKey:];
  }

  v8 = [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  persistentStores = [v8 persistentStores];
  if ([persistentStores count] != 1)
  {
    [CoreThemeDocument setMetadatum:forKey:];
  }

  v10 = [objc_msgSend(v8 metadataForPersistentStore:{objc_msgSend(persistentStores, "objectAtIndex:", 0)), "mutableCopy"}];
  [v10 setObject:metadatum forKey:key];
  v11 = [persistentStores objectAtIndex:0];
  if (([v11 isReadOnly] & 1) == 0)
  {

    [v8 setMetadata:v10 forPersistentStore:v11];
  }
}

- (id)pathToAsset:(id)asset
{
  rootPathForProductionData = [(CoreThemeDocument *)self rootPathForProductionData];
  sourceRelativePath = [asset sourceRelativePath];

  return [rootPathForProductionData stringByAppendingPathComponent:sourceRelativePath];
}

- (id)rootPathForProductionData
{
  pathToRepresentedDocument = [(CoreThemeDocument *)self pathToRepresentedDocument];
  if (!pathToRepresentedDocument)
  {
    pathToRepresentedDocument = [(NSURL *)[(TDPersistentDocument *)self fileURL] path];
  }

  v4 = [[(NSString *)pathToRepresentedDocument stringByDeletingLastPathComponent] stringByAppendingPathComponent:[(CoreThemeDocument *)self relativePathToProductionData]];

  return [(NSString *)v4 td_stringByStandardizingPath];
}

- (id)relativePathToProductionData
{
  result = self->_relativePathToProductionData;
  if (!result)
  {
    v4 = [(CoreThemeDocument *)self metadatumForKey:@"relativePathToProductionData"];
    v5 = @"./";
    if (v4)
    {
      v5 = v4;
    }

    result = v5;
    self->_relativePathToProductionData = result;
  }

  return result;
}

- (void)setRelativePathToProductionData:(id)data
{
  [(CoreThemeDocument *)self setMetadatum:data forKey:@"relativePathToProductionData"];
  relativePathToProductionData = self->_relativePathToProductionData;
  if (relativePathToProductionData != data)
  {

    self->_relativePathToProductionData = data;
  }
}

- (id)renditionsMatchingRenditionKeySpec:(id)spec
{
  v4 = [(CoreThemeDocument *)self _predicateForRenditionKeySpec:spec];

  return [(CoreThemeDocument *)self objectsForEntity:@"RenditionSpec" withPredicate:v4 sortDescriptors:0];
}

- (unint64_t)countOfRenditionsMatchingRenditionKeySpec:(id)spec
{
  v4 = [(CoreThemeDocument *)self _predicateForRenditionKeySpec:spec];

  return [(CoreThemeDocument *)self countForEntity:@"RenditionSpec" withPredicate:v4];
}

- (unint64_t)countOfRenditionsMatchingRenditionKeySpecs:(id)specs
{
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  objectEnumerator = [specs objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [v5 addObject:{-[CoreThemeDocument _predicateForRenditionKeySpec:](self, "_predicateForRenditionKeySpec:", nextObject2)}];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  v9 = -[CoreThemeDocument countForEntity:withPredicate:](self, "countForEntity:withPredicate:", @"RenditionSpec", [MEMORY[0x277CCA920] orPredicateWithSubpredicates:v5]);

  return v9;
}

- (NSUUID)uuid
{
  result = [(CoreThemeDocument *)self metadatumForKey:@"uuid"];
  if (result)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:result];

    return v3;
  }

  return result;
}

- (void)setUuid:(id)uuid
{
  uUIDString = [uuid UUIDString];

  [(CoreThemeDocument *)self setMetadatum:uUIDString forKey:@"uuid"];
}

- (unsigned)checksum
{
  if (self->_donotstoreDocumentChecksum)
  {
    return 0;
  }

  v16 = v6;
  v17 = v5;
  v18 = v4;
  v19 = v2;
  v12 = crc32(0, 0, 0);
  v13 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:{-[NSURL path](-[TDPersistentDocument fileURL](self, "fileURL"), "path")}];
  v14 = [v13 length];
  v15 = v14;
  if (HIDWORD(v14))
  {
    [CoreThemeDocument checksum];
  }

  return crc32(v12, [v13 bytes], v15);
}

- (id)artworkFormat
{
  result = [(CoreThemeDocument *)self metadatumForKey:@"artworkFormat"];
  if (!result)
  {
    return CoreThemeArtworkFormatPNG;
  }

  return result;
}

- (void)setTargetPlatform:(int64_t)platform
{
  v4 = [objc_opt_class() persistentStringForPlatform:platform];
  targetPlatform = self->_targetPlatform;
  if (v4 != targetPlatform)
  {
    v6 = v4;

    self->_targetPlatform = [v6 copy];
  }

  [(CoreThemeDocument *)self _updateDeviceTraits];
}

- (void)_updateDeviceTraits
{
  if ([(CoreThemeDocument *)self targetPlatform]== 2)
  {
    if ([(NSString *)self->_minimumDeploymentVersion length])
    {
      targetPlatform = [(CoreThemeDocument *)self targetPlatform];
      if (!self->_deviceTraits)
      {
        v4 = targetPlatform;
        v5 = objc_alloc(MEMORY[0x277CCACA8]);
        v6 = MEMORY[0x277D027B0];
        v7 = [v5 initWithUTF8String:*(MEMORY[0x277D027B0] + 64)];
        v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(v6 + 184)];
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:*(v6 + 160)];
        v9 = objc_alloc(MEMORY[0x277CCACA8]);
        v10 = [v9 initWithUTF8String:*(MEMORY[0x277D02780] + 16)];
        v11 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v11 setScale:2.0];
        [(TDDeviceTraits *)v11 setIdiom:v7];
        [(TDDeviceTraits *)v11 setSubtype:32401];
        [(TDDeviceTraits *)v11 setDisplayGamut:v10];
        [(TDDeviceTraits *)v11 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v11 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v11 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v11 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v11 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v11];

        v12 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v12 setScale:1.0];
        [(TDDeviceTraits *)v12 setIdiom:v7];
        [(TDDeviceTraits *)v12 setSubtype:32401];
        [(TDDeviceTraits *)v12 setDisplayGamut:v10];
        [(TDDeviceTraits *)v12 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v12 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v12 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v12 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v12 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v12];

        v13 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v13 setScale:1.0];
        [(TDDeviceTraits *)v13 setIdiom:v16];
        [(TDDeviceTraits *)v13 setSubtype:32401];
        [(TDDeviceTraits *)v13 setDisplayGamut:v10];
        [(TDDeviceTraits *)v13 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v13 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v13 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v13 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v13 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v13];

        v14 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v14 setScale:1.0];
        [(TDDeviceTraits *)v14 setIdiom:v8];
        [(TDDeviceTraits *)v14 setSubtype:32401];
        [(TDDeviceTraits *)v14 setDisplayGamut:v10];
        [(TDDeviceTraits *)v14 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v14 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v14 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v14 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v14 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v14];

        v15 = [[TDDeviceTraits alloc] initWithPlatform:v4];
        [(TDDeviceTraits *)v15 setScale:2.0];
        [(TDDeviceTraits *)v15 setIdiom:v8];
        [(TDDeviceTraits *)v15 setSubtype:0];
        [(TDDeviceTraits *)v15 setDisplayGamut:v10];
        [(TDDeviceTraits *)v15 setDeploymentTarget:[(CoreThemeDocument *)self minimumDeploymentVersion]];
        [(TDDeviceTraits *)v15 setMemoryPerformanceClass:16];
        [(TDDeviceTraits *)v15 setGraphicsFeatureSetClass:0];
        [(TDDeviceTraits *)v15 setGraphicsFeatureSetFallbacks:0];
        [(TDDeviceTraits *)v15 setSubtypeFallbackValues:0];
        [(CoreThemeDocument *)self addDeviceTraitForOptimization:v15];
      }
    }
  }
}

- (int64_t)targetPlatform
{
  targetPlatform = self->_targetPlatform;
  v4 = objc_opt_class();
  if (targetPlatform)
  {
    v5 = self->_targetPlatform;

    return [v4 platformForPersistentString:v5];
  }

  else
  {

    return [v4 defaultTargetPlatform];
  }
}

+ (int64_t)targetPlatformForMOC:(id)c
{
  persistentStoreCoordinator = [c persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  if ([persistentStores count])
  {
    v5 = [objc_msgSend(persistentStoreCoordinator metadataForPersistentStore:{objc_msgSend(persistentStores, "objectAtIndex:", 0)), "objectForKey:", @"targetPlatform"}];

    return [CoreThemeDocument platformForPersistentString:v5];
  }

  else
  {

    return +[CoreThemeDocument defaultTargetPlatform];
  }
}

- (BOOL)buildModelError:(id *)error
{
  v4 = [[TDThemeSchema alloc] initWithThemeDocument:self];
  if ([(TDPersistentDocument *)self fileURL])
  {
    [(TDThemeSchema *)v4 sanityCheckAndUpdateDocumentIfNecessary];
  }

  else
  {
    [(TDThemeSchema *)v4 resetThemeConstants];
  }

  return 1;
}

- (void)resetThemeConstants
{
  v2 = [[TDThemeSchema alloc] initWithThemeDocument:self];
  [(TDThemeSchema *)v2 resetThemeConstants];
}

- (void)primeArrayControllers
{
  [(CoreThemeDocument *)self renditionTypeWithIdentifier:0];
  [(CoreThemeDocument *)self drawingLayerWithIdentifier:0];
  [(CoreThemeDocument *)self valueWithIdentifier:0];
  [(CoreThemeDocument *)self stateWithIdentifier:0];
  [(CoreThemeDocument *)self directionWithIdentifier:0];
  [(CoreThemeDocument *)self sizeWithIdentifier:0];
  [(CoreThemeDocument *)self partWithIdentifier:0];
  [(CoreThemeDocument *)self elementWithIdentifier:1];

  [(CoreThemeDocument *)self schemaCategoryWithIdentifier:0];
}

+ (int64_t)dataModelVersion
{
  if (dataModelVersion_latestModelOnce != -1)
  {
    +[CoreThemeDocument dataModelVersion];
  }

  return dataModelVersion_latestModel;
}

void *__37__CoreThemeDocument_dataModelVersion__block_invoke()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleWithIdentifier:{@"com.apple.CoreThemeDefinition", "URLsForResourcesWithExtension:subdirectory:", @"mom", 0}];
  v3[0] = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"path" ascending:0];
  v1 = [objc_msgSend(v0 sortedArrayUsingDescriptors:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v3, 1)), "firstObject"}];
  result = [objc_msgSend(objc_msgSend(objc_msgSend(v1 "lastPathComponent")];
  dataModelVersion_latestModel = result;
  return result;
}

+ (id)dataModelNameForVersion:(int64_t)version
{
  if (version < 1)
  {
    return @"CoreThemeDefinition";
  }

  version = [MEMORY[0x277CCACA8] stringWithFormat:@"%ld", version];

  return [@"CoreThemeDefinition" stringByAppendingString:version];
}

+ (BOOL)defaultAllowsExtendedRangePixelFormats
{
  v2 = [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")];
  if (!v2)
  {
    return 1;
  }

  return [v2 BOOLValue];
}

- (BOOL)allowsExtendedRangePixelFormats
{
  v2 = [(CoreThemeDocument *)self metadatumForKey:@"CoreThemeDocumentAllowsExtendedRangeKey"];

  return [v2 BOOLValue];
}

- (void)setAllowsExtendedRangePixelFormats:(BOOL)formats
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:formats];

  [(CoreThemeDocument *)self setMetadatum:v4 forKey:@"CoreThemeDocumentAllowsExtendedRangeKey"];
}

- (unint64_t)colorSpaceID
{
  v2 = [(CoreThemeDocument *)self metadatumForKey:@"NSCoreThemeDefinitionColorSpaceKey"];

  return [v2 unsignedIntegerValue];
}

+ (int)shouldConvertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier error:(id *)error
{
  if (identifier > toIdentifier)
  {
    +[CoreThemeDocument shouldConvertColorsFromColorSpaceWithIdentifier:toIdentifier:error:];
  }

  return 1;
}

- (CGColorSpace)createCGColorSpaceWithIdentifier:(unint64_t)identifier
{
  v3 = MEMORY[0x277CBF458];
  v4 = MEMORY[0x277CBF3E0];
  if (identifier != 3)
  {
    v4 = MEMORY[0x277CBF4B8];
  }

  if (identifier)
  {
    v3 = v4;
  }

  return CGColorSpaceCreateWithName(*v3);
}

- (void)convertColorsFromColorSpaceWithIdentifier:(unint64_t)identifier toIdentifier:(unint64_t)toIdentifier
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = [(CoreThemeDocument *)self createCGColorSpaceWithIdentifier:identifier];
  toIdentifierCopy = toIdentifier;
  v7 = [(CoreThemeDocument *)self createCGColorSpaceWithIdentifier:toIdentifier];
  selfCopy = self;
  v8 = [(CoreThemeDocument *)self allObjectsForEntity:@"ColorDefinition" withSortDescriptors:0];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
    v27 = vdupq_n_s64(0x406FE00000000000uLL);
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v29 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v28 + 1) + 8 * i);
        v14 = [objc_msgSend(v13 valueForKey:{@"physicalColor", "unsignedIntValue"}];
        v15 = vdup_n_s32(v14);
        v16 = vand_s8(vshl_u32(v15, 0xFFFFFFF8FFFFFFF0), 0xFF000000FFLL);
        v17.i64[0] = v16.u32[0];
        v17.i64[1] = v16.u32[1];
        v18 = vshr_n_u32(v15, 0x18uLL).u32[1];
        v19 = vdivq_f64(vcvtq_f64_u64(v17), v27);
        v17.i64[0] = v14;
        v17.i64[1] = v18;
        *components = v19;
        v33 = vdivq_f64(vcvtq_f64_u64(v17), v27);
        v20 = CGColorCreate(v6, components);
        CopyByMatchingToColorSpace = CGColorCreateCopyByMatchingToColorSpace(v7, kCGRenderingIntentDefault, v20, 0);
        v22 = CGColorGetComponents(CopyByMatchingToColorSpace);
        v23 = vmovn_s64(vcvtq_u64_f64(vrndxq_f64(vmulq_f64(v22[1], v27))));
        v24 = vand_s8(vshl_u32(vmovn_s64(vcvtq_u64_f64(vrndxq_f64(vmulq_f64(*v22, v27)))), 0x800000010), 0xFF0000FF0000);
        [v13 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", v24.i32[1] | v23.u8[0] | (v23.i32[1] << 24) | v24.i32[0]), @"physicalColor"}];
        CGColorRelease(v20);
        CGColorRelease(CopyByMatchingToColorSpace);
      }

      v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v10);
  }

  CGColorSpaceRelease(v6);
  CGColorSpaceRelease(v7);
  -[CoreThemeDocument setMetadatum:forKey:](selfCopy, "setMetadatum:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:toIdentifierCopy], @"NSCoreThemeDefinitionColorSpaceKey");
}

- (BOOL)_canremoveKeyAttribte:(unsigned __int16)attribte
{
  if (attribte == 12)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v4 == 9)
    {
      break;
    }

    v6 = dword_247A49384[++v4];
  }

  while (v6 != attribte);
  return v5 > 8;
}

- (void)_updateKeyFormatWithContext:(id)context
{
  v22 = 0;
  v4 = [-[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:withContext:error:](self objectsForEntity:@"RenditionKeySpec" withPredicate:0 sortDescriptors:0) withContext:"count" error:?];
  v21 = [MEMORY[0x277CBE408] entityForName:@"RenditionKeySpec" inManagedObjectContext:{-[TDPersistentDocument managedObjectContext](self, "managedObjectContext")}];
  v5 = [&unk_2859AC530 count];
  if (v5)
  {
    v6 = 0;
    do
    {
      v7 = [&unk_2859AC530 objectAtIndex:v6];
      v8 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RenditionKeySpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K.identifier == 0", v7], 0);
      v9 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RenditionKeySpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"%K == NULL", v7], 0);
      v22 = 0;
      v10 = [v8 count];
      if ([v9 count] + v10 == v4 && -[CoreThemeDocument _canremoveKeyAttribte:](self, "_canremoveKeyAttribte:", word_247A493AC[2 * v6]))
      {
        CUIRenditionKeyFormatRemoveAttribute();
      }

      ++v6;
    }

    while (v5 != v6);
  }

  v11 = [&unk_2859AC548 count];
  if (v11)
  {
    v12 = 0;
    do
    {
      v13 = [MEMORY[0x277CBE428] fetchRequestWithEntityName:@"RenditionKeySpec"];
      v14 = [&unk_2859AC548 objectAtIndex:v12];
      v15 = [objc_msgSend(v21 "attributesByName")];
      v16 = [MEMORY[0x277CCA9C0] expressionForKeyPath:v14];
      v17 = [MEMORY[0x277CCA9C0] expressionForFunction:@"count:" arguments:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v16)}];
      v18 = objc_alloc_init(MEMORY[0x277CBE410]);
      [v18 setName:@"count"];
      [v18 setExpression:v17];
      [v18 setExpressionResultType:200];
      [v13 setPropertiesToFetch:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:", v15, v18, 0)}];
      [v13 setPropertiesToGroupBy:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObject:", v15)}];
      [v13 setResultType:2];

      v22 = 0;
      v19 = [context executeFetchRequest:v13 error:&v22];
      if ([v19 count] == 1 && !objc_msgSend(objc_msgSend(objc_msgSend(v19, "firstObject"), "objectForKey:", v14), "integerValue"))
      {
        if ([(CoreThemeDocument *)self _canremoveKeyAttribte:*&word_247A493AC[2 * v12]])
        {
          CUIRenditionKeyFormatRemoveAttribute();
        }
      }

      ++v12;
    }

    while (v11 != v12);
  }
}

- (const)untrimmedRenditionKeyFormat
{
  renditionKeySemantics = [(CoreThemeDocument *)self renditionKeySemantics];

  return MEMORY[0x2821574E0](renditionKeySemantics, 17);
}

- (const)renditionKeyFormat
{
  result = self->_keyFormat;
  if (!result)
  {
    untrimmedRenditionKeyFormat = [(CoreThemeDocument *)self untrimmedRenditionKeyFormat];
    v5 = malloc_type_malloc(4 * untrimmedRenditionKeyFormat->var2 + 12, 0x100004052888210uLL);
    self->_keyFormat = v5;
    v5->var0 = untrimmedRenditionKeyFormat->var0;
    v5->var1 = untrimmedRenditionKeyFormat->var1;
    var2 = untrimmedRenditionKeyFormat->var2;
    v5->var2 = var2;
    if (var2)
    {
      for (i = 0; i < var2; ++i)
      {
        v5->var3[i] = untrimmedRenditionKeyFormat->var3[i];
      }
    }

    v8 = [-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __39__CoreThemeDocument_renditionKeyFormat__block_invoke;
    v9[3] = &unk_278EBB368;
    v9[4] = self;
    v9[5] = v8;
    [v8 performBlockAndWait:v9];
    return self->_keyFormat;
  }

  return result;
}

- (int)renditionKeySemantics
{
  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  if ((targetPlatform - 1) > 4)
  {
    return 1;
  }

  else
  {
    return dword_247A49410[targetPlatform - 1];
  }
}

- (id)_customizedSchemaDefinitionsForEntity:(id)entity
{
  v8 = 0;
  v4 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:error:](self, "objectsForEntity:withPredicate:sortDescriptors:error:", entity, [MEMORY[0x277CCAC30] predicateWithValue:1], 0, &v8);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CoreThemeDocument__customizedSchemaDefinitionsForEntity___block_invoke;
  v7[3] = &unk_278EBB390;
  v7[4] = self;
  v5 = [v4 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x277CCAC30], "predicateWithBlock:", v7)}];
  return [MEMORY[0x277CBEB98] setWithArray:v5];
}

- (BOOL)customizationExistsForSchemaDefinition:(id)definition
{
  v14 = *MEMORY[0x277D85DE8];
  parts = [definition parts];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [parts countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(parts);
        }

        if ([objc_msgSend(*(*(&v9 + 1) + 8 * v7) "productions")])
        {
          LOBYTE(v4) = 1;
          return v4;
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [parts countByEnumeratingWithState:&v9 objects:v13 count:16];
      v5 = v4;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

- (void)removeCustomizationForSchemaDefinition:(id)definition shouldDeleteAssetFiles:(BOOL)files
{
  filesCopy = files;
  v16 = *MEMORY[0x277D85DE8];
  parts = [definition parts];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [parts countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(parts);
        }

        -[CoreThemeDocument deleteProductions:shouldDeleteAssetFiles:](self, "deleteProductions:shouldDeleteAssetFiles:", [*(*(&v11 + 1) + 8 * v10++) productions], filesCopy);
      }

      while (v8 != v10);
      v8 = [parts countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (BOOL)customizeSchemaElementDefinition:(id)definition usingArtworkFormat:(id)format shouldReplaceExisting:(BOOL)existing error:(id *)error
{
  existingCopy = existing;
  v24 = *MEMORY[0x277D85DE8];
  if (-[CoreThemeDocument allowMultipleInstancesOfElementID:](self, "allowMultipleInstancesOfElementID:", [objc_msgSend(objc_msgSend(definition "parts")]))
  {
    _createNamedElementWithNextAvailableIdentifier = [(CoreThemeDocument *)self _createNamedElementWithNextAvailableIdentifier];
    [_createNamedElementWithNextAvailableIdentifier setName:@"New Structured Image"];
  }

  else
  {
    _createNamedElementWithNextAvailableIdentifier = 0;
  }

  parts = [definition parts];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = [parts countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
LABEL_6:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(parts);
      }

      v17 = [(CoreThemeDocument *)self customizeSchemaPartDefinition:*(*(&v19 + 1) + 8 * v16) usingArtworkFormat:format nameElement:_createNamedElementWithNextAvailableIdentifier shouldReplaceExisting:existingCopy error:error];
      if (!v17)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [parts countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v14)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    LOBYTE(v17) = 1;
  }

  return v17;
}

- (BOOL)customizeSchemaEffectDefinition:(id)definition shouldReplaceExisting:(BOOL)existing error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
  parts = [definition parts];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [parts countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(parts);
        }

        if (![(CoreThemeDocument *)self createEffectStyleProductionForPartDefinition:*(*(&v16 + 1) + 8 * v12)])
        {
          if (!error)
          {
            return 0;
          }

          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to create production for effect definition: %@", objc_msgSend(definition, "name")];
          v15 = [MEMORY[0x277CCA9B8] errorWithDomain:CoreThemeDefinitionErrorDomain[0] code:0 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjectsAndKeys:", v14, *MEMORY[0x277CCA450], 0)}];
          result = 0;
          *error = v15;
          return result;
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [parts countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

- (BOOL)customizeSchemaMaterialDefinition:(id)definition shouldReplaceExisting:(BOOL)existing error:(id *)error
{
  existingCopy = existing;
  v20 = *MEMORY[0x277D85DE8];
  parts = [definition parts];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [parts countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(parts);
      }

      v13 = [(CoreThemeDocument *)self customizeSchemaPartDefinition:*(*(&v15 + 1) + 8 * v12) usingArtworkFormat:CoreThemeArtworkFormatCAAR nameElement:0 shouldReplaceExisting:existingCopy error:error];
      if (!v13)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [parts countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    LOBYTE(v13) = 1;
  }

  return v13;
}

- (BOOL)customizeSchemaPartDefinition:(id)definition usingArtworkFormat:(id)format nameElement:(id)element shouldReplaceExisting:(BOOL)existing error:(id *)error
{
  existingCopy = existing;
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [definition renditionGroups];
  v12 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v22;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v22 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = [(CoreThemeDocument *)self createProductionWithRenditionGroup:*(*(&v21 + 1) + 8 * v15) forPartDefinition:definition artworkFormat:format nameElement:element shouldReplaceExisting:existingCopy error:error];
      if (!v16)
      {
        break;
      }

      if (element)
      {
        v17 = v16;
        [objc_msgSend(v16 "baseKeySpec")];
        [element setProduction:v17];
      }

      if (v13 == ++v15)
      {
        v13 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    LOBYTE(v16) = 1;
  }

  return v16;
}

- (id)schemaDefinitionWithElementID:(int64_t)d
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [(CoreThemeDocument *)self allObjectsForEntity:@"SchemaPartDefinition" withSortDescriptors:0];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v11;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        if ([v9 elementID] == d && objc_msgSend(objc_msgSend(v9, "element"), "published"))
        {
          return [v9 element];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (id)schemaPartDefinitionWithElementID:(int64_t)d partID:(int64_t)iD
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = [(CoreThemeDocument *)self allObjectsForEntity:@"SchemaPartDefinition" withSortDescriptors:0];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v14;
LABEL_3:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(v6);
    }

    v11 = *(*(&v13 + 1) + 8 * v10);
    if ([v11 elementID] == d && objc_msgSend(v11, "partID") == iD && (objc_msgSend(objc_msgSend(v11, "element"), "published") & 1) != 0)
    {
      return v11;
    }

    if (v8 == ++v10)
    {
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)namedArtworkProductions
{
  v2 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedArtworkProduction" withSortDescriptors:0];
  v3 = MEMORY[0x277CBEB98];

  return [v3 setWithArray:v2];
}

- (id)namedEffectProductions
{
  v2 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedEffectProduction" withSortDescriptors:0];
  v3 = MEMORY[0x277CBEB98];

  return [v3 setWithArray:v2];
}

- (void)exportCursorsToURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  obj = [(CoreThemeDocument *)self allObjectsForEntity:@"CursorFacetDefinition" withSortDescriptors:0];
  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(obj, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{objc_msgSend(v7, "valueForKey:", @"facetName", @"facetName", objc_msgSend(v7, "valueForKey:", @"hotSpotX", @"hotSpotX", objc_msgSend(v7, "valueForKey:", @"hotSpotY", @"hotSpotY", 0}];
        [v11 setObject:v8 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(v7, "keySpec"), "dimension1"))}];
      }

      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v12 = 0;
  [objc_msgSend(MEMORY[0x277CCAC58] dataWithPropertyList:v11 format:100 options:200 error:{&v12), "writeToURL:atomically:", l, 1}];
}

- (void)importCursorsFromURL:(id)l getUnusedImportedCursors:(id *)cursors getUnupdatedCursors:(id *)unupdatedCursors
{
  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:l];
  v26 = 0;
  v27 = 0;
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:&v26 error:&v27];
  v8 = [(CoreThemeDocument *)self allObjectsForEntity:@"CursorFacetDefinition" withSortDescriptors:0];
  v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
  objectEnumerator = [v8 objectEnumerator];
  nextObject = [objectEnumerator nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    do
    {
      [v9 setObject:nextObject2 forKey:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%d", objc_msgSend(objc_msgSend(nextObject2, "keySpec"), "dimension1"))}];
      nextObject2 = [objectEnumerator nextObject];
    }

    while (nextObject2);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  keyEnumerator = [v7 keyEnumerator];
  nextObject3 = [keyEnumerator nextObject];
  if (nextObject3)
  {
    nextObject4 = nextObject3;
    do
    {
      v17 = [v7 objectForKey:nextObject4];
      v18 = [v9 objectForKey:nextObject4];
      if (v18)
      {
        v19 = v18;
        [v18 setValue:objc_msgSend(v17 forKey:{"objectForKey:", @"facetName", @"facetName"}];
        [v19 setValue:objc_msgSend(v17 forKey:{"objectForKey:", @"hotSpotX", @"hotSpotX"}];
        [v19 setValue:objc_msgSend(v17 forKey:{"objectForKey:", @"hotSpotY", @"hotSpotY"}];
      }

      else
      {
        [dictionary setObject:v17 forKey:nextObject4];
      }

      nextObject4 = [keyEnumerator nextObject];
    }

    while (nextObject4);
  }

  if (cursors)
  {
    *cursors = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  }

  if (unupdatedCursors)
  {
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    keyEnumerator2 = [v9 keyEnumerator];
    nextObject5 = [keyEnumerator2 nextObject];
    if (nextObject5)
    {
      nextObject6 = nextObject5;
      do
      {
        if (![v7 objectForKey:nextObject6])
        {
          [v20 addObject:{objc_msgSend(v9, "objectForKey:", nextObject6)}];
        }

        nextObject6 = [keyEnumerator2 nextObject];
      }

      while (nextObject6);
    }

    *unupdatedCursors = [MEMORY[0x277CBEA60] arrayWithArray:v20];
  }
}

- (TDCatalogGlobals)catalogGlobals
{
  catalogGlobals = self->_catalogGlobals;
  if (!catalogGlobals)
  {
    v9 = 0;
    v4 = [(CoreThemeDocument *)self allObjectsForEntity:@"CatalogGlobals" withSortDescriptors:0 error:&v9];
    v5 = [v4 count];
    if (v9)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5 == 0;
    }

    if (v6)
    {
      firstObject = [(CoreThemeDocument *)self newObjectForEntity:@"CatalogGlobals"];
    }

    else
    {
      if (v5 >= 2)
      {
        [CoreThemeDocument catalogGlobals];
      }

      firstObject = [v4 firstObject];
    }

    catalogGlobals = firstObject;
    [(CoreThemeDocument *)self willChangeValueForKey:@"catalogGlobals"];
    self->_catalogGlobals = catalogGlobals;
    [(CoreThemeDocument *)self didChangeValueForKey:@"catalogGlobals"];
  }

  return catalogGlobals;
}

- (id)persistentStoreTypeForFileType:(id)type
{
  lowercaseString = [type lowercaseString];
  if (([lowercaseString isEqualToString:CoreThemeDocumentFileType] & 1) == 0 && (objc_msgSend(objc_msgSend(type, "lowercaseString"), "isEqualToString:", @"tdd") & 1) == 0)
  {
    [CoreThemeDocument persistentStoreTypeForFileType:];
  }

  return *MEMORY[0x277CBE2E8];
}

- (id)updatedVersionsMetadataFromMetadata:(id)metadata
{
  v5 = CUIThemeInfoVersion();
  v6 = +[CoreThemeDocument dataModelVersion];
  v7 = [objc_msgSend(MEMORY[0x277D026E0] schemaForPlatform:{-[CoreThemeDocument targetPlatform](self, "targetPlatform")), "schemaVersion"}];
  v8 = [metadata objectForKey:@"uuid"];
  v9 = [objc_msgSend(metadata objectForKey:{@"CoreThemeInfoVersion", "integerValue"}];
  v10 = [objc_msgSend(metadata objectForKey:{@"CoreThemeDefinitionDataModelKey", "integerValue"}];
  v11 = [objc_msgSend(metadata objectForKey:{@"CoreThemeSchemaVersion", "integerValue"}];
  v12 = [objc_msgSend(metadata objectForKey:{@"targetPlatform", "isEqualToString:", self->_targetPlatform}];
  if (v8 && v9 == v5 && v10 == v6 && v11 == v7 && v12)
  {
    return 0;
  }

  if (metadata)
  {
    v14 = [metadata mutableCopy];
  }

  else
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  }

  v15 = v14;
  [v14 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v5), @"CoreThemeInfoVersion"}];
  [v15 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v6), @"CoreThemeDefinitionDataModelKey"}];
  [v15 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v7), @"CoreThemeSchemaVersion"}];
  targetPlatform = self->_targetPlatform;
  if (targetPlatform)
  {
    [v15 setObject:targetPlatform forKey:@"targetPlatform"];
  }

  if (!v8)
  {
    v17 = objc_alloc_init(MEMORY[0x277CCAD78]);
    [v15 setObject:objc_msgSend(v17 forKey:{"UUIDString"), @"uuid"}];
  }

  return v15;
}

- (BOOL)configurePersistentStoreCoordinatorForURL:(id)l ofType:(id)type modelConfiguration:(id)configuration storeOptions:(id)options error:(id *)error
{
  v12 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:options];
  v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v12 setObject:v13 forKeyedSubscript:*MEMORY[0x277CBE1D8]];
  v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v12 setObject:v14 forKeyedSubscript:*MEMORY[0x277CBE178]];
  v21.receiver = self;
  v21.super_class = CoreThemeDocument;
  v15 = [(TDPersistentDocument *)&v21 configurePersistentStoreCoordinatorForURL:l ofType:type modelConfiguration:configuration storeOptions:v12 error:error];
  v16 = [objc_msgSend(objc_msgSend(-[CoreThemeDocument mocOrganizer](self "mocOrganizer")];
  metadata = [v16 metadata];
  v18 = metadata;
  if (self->_updateVersionMetadataState == 1 || ![metadata objectForKey:@"uuid"])
  {
    v19 = [(CoreThemeDocument *)self updatedVersionsMetadataFromMetadata:v18];
    if (v19)
    {
      [v16 setMetadata:v19];
    }

    self->_updateVersionMetadataState = 2;
  }

  return v15;
}

- (BOOL)checkCompatibilityOfDocumentAtURL:(id)l ofType:(id)type error:(id *)error
{
  v7 = [(CoreThemeDocument *)self persistentStoreTypeForFileType:type];
  v8 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v7 URL:l options:0 error:error];
  if (!v8)
  {
    if (error)
    {
      v11 = MEMORY[0x277CCA9B8];
      v12 = CoreThemeDefinitionErrorDomain[0];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Theme definition document is not compatible with this software", *MEMORY[0x277CCA470], @"Unrecognized format, missing document metadata", *MEMORY[0x277CCA498], 0}];
LABEL_10:
      v16 = v13;
      v17 = v11;
      v18 = v12;
      v19 = 1;
LABEL_11:
      v20 = [v17 errorWithDomain:v18 code:v19 userInfo:v16];
      result = 0;
      *error = v20;
      return result;
    }

    return 0;
  }

  v9 = [v8 objectForKey:@"CoreThemeDefinitionDataModelKey"];
  if (v9)
  {
    integerValue = [v9 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  v14 = +[CoreThemeDocument dataModelVersion];
  if (v14 < integerValue)
  {
    if (error)
    {
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"The theme definition document / UI catalog is too new for this code. You are trying to open a document that is version %ld and this code can only handle up to version %ld", integerValue, v14];
      v11 = MEMORY[0x277CCA9B8];
      v12 = CoreThemeDefinitionErrorDomain[0];
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{v15, *MEMORY[0x277CCA470], @"Update your CoreThemeDefinition framework and try again.", *MEMORY[0x277CCA498], 0}];
      goto LABEL_10;
    }

    return 0;
  }

  if (integerValue <= 22)
  {
    if (error)
    {
      v22 = MEMORY[0x277CCA9B8];
      v23 = CoreThemeDefinitionErrorDomain[0];
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{@"Theme definition document format is in an older format (<23).", *MEMORY[0x277CCA470], @"You need to migrate the document to open it.", *MEMORY[0x277CCA498], 0}];
      v17 = v22;
      v18 = v23;
      v19 = 101;
      goto LABEL_11;
    }

    return 0;
  }

  return 1;
}

- (BOOL)readFromURL:(id)l ofType:(id)type error:(id *)error
{
  v9 = [l checkResourceIsReachableAndReturnError:error];
  if (v9)
  {
    v9 = [(CoreThemeDocument *)self checkCompatibilityOfDocumentAtURL:l ofType:type error:error];
    if (v9)
    {
      v15.receiver = self;
      v15.super_class = CoreThemeDocument;
      v9 = [(TDPersistentDocument *)&v15 readFromURL:l ofType:type error:error];
      if (v9)
      {
        colorSpaceID = [(CoreThemeDocument *)self colorSpaceID];
        v11 = +[CoreThemeDocument standardColorSpaceID];
        if (v11 > colorSpaceID)
        {
          v12 = v11;
          v9 = [objc_opt_class() shouldConvertColorsFromColorSpaceWithIdentifier:colorSpaceID toIdentifier:v11 error:error];
          if (!v9)
          {
            return v9;
          }

          [(CoreThemeDocument *)self convertColorsFromColorSpaceWithIdentifier:colorSpaceID toIdentifier:v12];
          [objc_opt_class() doneWithColorConversion];
        }

        v13 = [-[CoreThemeDocument metadatumForKey:](self metadatumForKey:{@"targetPlatform", "copy"}];
        self->_targetPlatform = v13;
        if (!v13)
        {
          -[CoreThemeDocument setTargetPlatform:](self, "setTargetPlatform:", [objc_opt_class() defaultTargetPlatform]);
        }

        LOBYTE(v9) = 1;
      }
    }
  }

  return v9;
}

- (void)_configureAfterFirstSave
{
  -[CoreThemeDocument setMetadatum:forKey:](self, "setMetadatum:forKey:", [MEMORY[0x277CCABB0] numberWithInteger:{+[CoreThemeDocument standardColorSpaceID](CoreThemeDocument, "standardColorSpaceID")}], @"NSCoreThemeDefinitionColorSpaceKey");
  v3 = [(CoreThemeDocument *)self metadatumForKey:@"artworkFormat"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = CoreThemeArtworkFormatPNG;
  }

  [(CoreThemeDocument *)self setArtworkFormat:v4];
  [(CoreThemeDocument *)self setAllowsExtendedRangePixelFormats:+[CoreThemeDocument defaultAllowsExtendedRangePixelFormats]];
  [(CoreThemeDocument *)self setRelativePathToProductionData:@"./"];
  -[CoreThemeDocument addThemeBitSourceAtPath:createProductions:](self, "addThemeBitSourceAtPath:createProductions:", [objc_opt_class() defaultThemeBitSourceURLForDocumentURL:{-[TDPersistentDocument fileURL](self, "fileURL")}], 0);

  [(CoreThemeDocument *)self _synchronousSave];
}

+ (id)defaultThemeBitSourceURLForDocumentURL:(id)l
{
  v4 = [objc_msgSend(objc_msgSend(l "path")];
  if ([(__CFString *)v4 length])
  {
    v5 = v4;
  }

  else
  {
    v5 = @"Aqua";
  }

  v6 = [(__CFString *)v5 stringByAppendingString:@"-Artwork"];
  uRLByDeletingLastPathComponent = [l URLByDeletingLastPathComponent];

  return [uRLByDeletingLastPathComponent URLByAppendingPathComponent:v6];
}

- (NSURL)themeBitSourceURL
{
  v7 = 0;
  v3 = [-[CoreThemeDocument _themeBitSource:](self _themeBitSource:{&v7), "path"}];
  v4 = [objc_opt_class() defaultThemeBitSourceURLForDocumentURL:{-[TDPersistentDocument fileURL](self, "fileURL")}];
  v5 = v4;
  if (v3 && ![(NSString *)[(NSURL *)v4 lastPathComponent] isEqualToString:v3])
  {
    return [[(NSURL *)v5 URLByDeletingLastPathComponent] URLByAppendingPathComponent:v3];
  }

  return v5;
}

- (id)themeBitSourceFolderName
{
  v2 = [-[CoreThemeDocument _themeBitSource:](self _themeBitSource:{0), "path"}];

  return [v2 lastPathComponent];
}

- (BOOL)renameThemeBitSourceFolderTo:(id)to error:(id *)error
{
  v7 = [to isEqualToString:{-[CoreThemeDocument themeBitSourceFolderName](self, "themeBitSourceFolderName")}];
  LOBYTE(v8) = 1;
  if (to)
  {
    if ((v7 & 1) == 0)
    {
      themeBitSourceURL = [(CoreThemeDocument *)self themeBitSourceURL];
      v10 = [[(NSURL *)themeBitSourceURL URLByDeletingLastPathComponent] URLByAppendingPathComponent:to];
      if (-[NSURL checkResourceIsReachableAndReturnError:](v10, "checkResourceIsReachableAndReturnError:", 0) || (v8 = [objc_msgSend(MEMORY[0x277CCAA00] "defaultManager")]) != 0)
      {
        [-[CoreThemeDocument _themeBitSource:](self _themeBitSource:{0), "setPath:", to}];
        LOBYTE(v8) = 1;
      }
    }
  }

  return v8;
}

- (void)addThemeBitSourceAtPath:(id)path createProductions:(BOOL)productions
{
  lastPathComponent = [path lastPathComponent];
  v6 = -[TDThemeBitSource initWithEntity:insertIntoManagedObjectContext:]([TDThemeBitSource alloc], "initWithEntity:insertIntoManagedObjectContext:", [objc_msgSend(-[CoreThemeDocument managedObjectModel](self "managedObjectModel")], -[TDPersistentDocument managedObjectContext](self, "managedObjectContext"));
  [(TDThemeBitSource *)v6 setPath:lastPathComponent];
}

- (void)_removeRedundantPDFBasedRenditionsForAssets:(id)assets
{
  v16 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(assets);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_isKindOfClass())
        {
          [v5 addObjectsFromArray:{objc_msgSend(objc_msgSend(v10, "renditions"), "allObjects")}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [assets countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(CoreThemeDocument *)self _removeRedundantPDFBasedRenditions:v5];
}

- (void)_removeRedundantPDFBasedRenditions:(id)renditions
{
  v83 = *MEMORY[0x277D85DE8];
  v47 = objc_alloc_init(MEMORY[0x277CBEB58]);
  obj = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v5 = [renditions countByEnumeratingWithState:&v73 objects:v82 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v74;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v74 != v7)
        {
          objc_enumerationMutation(renditions);
        }

        keySpec = [*(*(&v73 + 1) + 8 * i) keySpec];
        v10 = [keySpec key];
        v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v10 length:4 * CUIRenditionKeyTokenCount()];
        if ([v47 containsObject:v11])
        {
          v12 = [-[CoreThemeDocument renditionsMatchingRenditionKeySpec:](self renditionsMatchingRenditionKeySpec:{keySpec), "sortedArrayUsingComparator:", &__block_literal_global_1215}];
          v13 = obj;
        }

        else
        {
          v13 = v47;
          v12 = v11;
        }

        [v13 addObject:v12];
      }

      v6 = [renditions countByEnumeratingWithState:&v73 objects:v82 count:16];
    }

    while (v6);
  }

  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v48 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
  if (v48)
  {
    v46 = *v70;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v70 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v69 + 1) + 8 * j);
        v16 = [v15 count];
        v50 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v52 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v51 = objc_alloc_init(MEMORY[0x277CCAB58]);
        v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
        if (v16)
        {
          for (k = 0; k != v16; ++k)
          {
            v19 = [v15 objectAtIndex:k];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(objc_msgSend(v19 "keySpec")] != 59)
            {
              asset = [v19 asset];
              if (![objc_msgSend(objc_msgSend(asset "name")] || !objc_msgSend(objc_msgSend(objc_msgSend(asset, "name"), "pathExtension"), "caseInsensitiveCompare:", @"SVG"))
              {
                [v52 addIndex:k];
              }

              if (![objc_msgSend(objc_msgSend(asset "name")])
              {
                [v50 addIndex:k];
              }

              fileScaleFactor = [asset fileScaleFactor];
              if (fileScaleFactor == [objc_msgSend(v19 "keySpec")])
              {
                [v17 addIndex:k];
              }
            }
          }

          for (m = 0; m != v16; ++m)
          {
            v23 = [v15 objectAtIndex:m];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              asset2 = [v23 asset];
              if ([objc_msgSend(v23 "keySpec")])
              {
                fileScaleFactor2 = [asset2 fileScaleFactor];
                if (fileScaleFactor2 != [objc_msgSend(v23 "keySpec")] && (!objc_msgSend(asset2, "fileScaleFactor") || HIDWORD(div(objc_msgSend(objc_msgSend(v23, "keySpec"), "scaleFactor"), objc_msgSend(asset2, "fileScaleFactor")).quot) || objc_msgSend(v17, "count")))
                {
                  [v51 addIndex:m];
                }
              }
            }
          }
        }

        if ([v50 count] && objc_msgSend(v52, "count"))
        {
          v67 = 0u;
          v68 = 0u;
          v65 = 0u;
          v66 = 0u;
          v26 = [v15 objectsAtIndexes:v52];
          v27 = [v26 countByEnumeratingWithState:&v65 objects:v80 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v66;
            do
            {
              for (n = 0; n != v28; ++n)
              {
                if (*v66 != v29)
                {
                  objc_enumerationMutation(v26);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v65 + 1) + 8 * n) asset], *(*(&v65 + 1) + 8 * n));
              }

              v28 = [v26 countByEnumeratingWithState:&v65 objects:v80 count:16];
            }

            while (v28);
          }
        }

        else if ([v17 count] && objc_msgSend(v51, "count"))
        {
          v63 = 0u;
          v64 = 0u;
          v61 = 0u;
          v62 = 0u;
          v31 = [v15 objectsAtIndexes:v51];
          v32 = [v31 countByEnumeratingWithState:&v61 objects:v79 count:16];
          if (v32)
          {
            v33 = v32;
            v34 = *v62;
            do
            {
              for (ii = 0; ii != v33; ++ii)
              {
                if (*v62 != v34)
                {
                  objc_enumerationMutation(v31);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v61 + 1) + 8 * ii) asset], *(*(&v61 + 1) + 8 * ii));
              }

              v33 = [v31 countByEnumeratingWithState:&v61 objects:v79 count:16];
            }

            while (v33);
          }
        }

        else if ([v51 count] == v16 - 1)
        {
          v59 = 0uLL;
          v60 = 0uLL;
          v57 = 0uLL;
          v58 = 0uLL;
          v36 = [v15 objectsAtIndexes:v51];
          v37 = [v36 countByEnumeratingWithState:&v57 objects:v78 count:16];
          if (v37)
          {
            v38 = v37;
            v39 = *v58;
            do
            {
              for (jj = 0; jj != v38; ++jj)
              {
                if (*v58 != v39)
                {
                  objc_enumerationMutation(v36);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v57 + 1) + 8 * jj) asset], *(*(&v57 + 1) + 8 * jj));
              }

              v38 = [v36 countByEnumeratingWithState:&v57 objects:v78 count:16];
            }

            while (v38);
          }
        }

        else
        {
          v55 = 0uLL;
          v56 = 0uLL;
          v53 = 0uLL;
          v54 = 0uLL;
          v41 = [v15 subarrayWithRange:1];
          v42 = [v41 countByEnumeratingWithState:&v53 objects:v77 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v54;
            do
            {
              for (kk = 0; kk != v43; ++kk)
              {
                if (*v54 != v44)
                {
                  objc_enumerationMutation(v41);
                }

                -[CoreThemeDocument _delete:withRendition:](self, "_delete:withRendition:", [*(*(&v53 + 1) + 8 * kk) asset], *(*(&v53 + 1) + 8 * kk));
              }

              v43 = [v41 countByEnumeratingWithState:&v53 objects:v77 count:16];
            }

            while (v43);
          }
        }
      }

      v48 = [obj countByEnumeratingWithState:&v69 objects:v81 count:16];
    }

    while (v48);
  }
}

uint64_t __56__CoreThemeDocument__removeRedundantPDFBasedRenditions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = [objc_msgSend(a2 "asset")];
  if (v4 > [objc_msgSend(a3 "asset")])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)_delete:(id)_delete withRendition:(id)rendition
{
  production = [rendition production];
  [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  renditions = [production renditions];
  if ([renditions count] == 1 && objc_msgSend(renditions, "containsObject:", rendition))
  {
    [-[TDPersistentDocument managedObjectContext](self "managedObjectContext")];
  }

  renditions2 = [_delete renditions];
  if ([renditions2 count] == 1 && objc_msgSend(renditions2, "containsObject:", rendition))
  {
    managedObjectContext = [(TDPersistentDocument *)self managedObjectContext];

    [managedObjectContext deleteObject:_delete];
  }
}

- (void)_insertRendition:(id)rendition forKey:(id)key
{
  packableRenditions = self->_packableRenditions;
  objc_sync_enter(packableRenditions);
  v8 = [(NSMutableDictionary *)self->_packableRenditions objectForKey:key];
  v9 = v8;
  if (v8)
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v15 = __45__CoreThemeDocument__insertRendition_forKey___block_invoke;
    v16 = &unk_278EBB338;
    selfCopy = self;
    v10 = 0;
    v11 = [v8 count];
    if (v11)
    {
      do
      {
        v12 = [v9 objectAtIndex:(v11 + v10) >> 1];
        if (v15(v14, v12, rendition) >= 0)
        {
          v11 = (v11 + v10) >> 1;
        }

        else
        {
          v10 = ((v11 + v10) >> 1) + 1;
        }
      }

      while (v10 < v11);
    }

    [v9 insertObject:rendition atIndex:v10];
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x277CBEB40]);
    [(NSMutableDictionary *)self->_packableRenditions setObject:v13 forKey:key];

    [v13 addObject:rendition];
  }

  objc_sync_exit(packableRenditions);
}

uint64_t __45__CoreThemeDocument__insertRendition_forKey___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = [a2 width];
  v7 = [a2 height] * v6;
  v8 = [a3 width];
  v9 = [a3 height] * v8;
  if (v7 > v9)
  {
    return -1;
  }

  if (v7 < v9)
  {
    return 1;
  }

  v11 = [a2 keySpec];
  v12 = [a3 keySpec];
  v13 = [v11 key];
  v14 = [v12 key];
  v15 = [*(a1 + 32) untrimmedRenditionKeyFormat];

  return MEMORY[0x282157470](v13, v14, v15);
}

- (BOOL)_updateRenditionPackings:(id)packings error:(id *)error
{
  v70 = *MEMORY[0x277D85DE8];
  if (!self->_packableRenditions)
  {
    self->_packableRenditions = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  errorCopy = error;
  [(CoreThemeDocument *)self untrimmedRenditionKeyFormat];
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (!CUIRenditionKeyHasIdentifier())
  {
    [CoreThemeDocument _updateRenditionPackings:error:];
  }

  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v7 = [packings countByEnumeratingWithState:&v65 objects:v69 count:16];
  if (v7)
  {
    v8 = v7;
    v48 = 0;
    v9 = *v66;
    v10 = 0x27EE5A000uLL;
    v53 = *v66;
    while (2)
    {
      v11 = 0;
      v54 = v8;
      do
      {
        if (*v66 != v9)
        {
          objc_enumerationMutation(packings);
        }

        v12 = *(*(&v65 + 1) + 8 * v11);
        v13 = [objc_msgSend(*(&self->super.super.isa + *(v10 + 2204)) objectForKey:{objc_msgSend(objc_msgSend(objc_msgSend(v12, "production"), "name"), "identifier")), "intValue"}];
        v14 = objc_autoreleasePoolPush();
        if (v13)
        {
          [v12 setAlphaCrop:1];
        }

        if (([v12 updatePackingPropertiesWithDocument:self] & 1) == 0)
        {
          if (errorCopy)
          {
            v43 = MEMORY[0x277CCA9B8];
            v44 = *MEMORY[0x277CCA050];
            v45 = MEMORY[0x277CBEAC0];
            v46 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to generate packing info for %@", objc_msgSend(objc_msgSend(v12, "production"), "relativePath")];
            *errorCopy = [v43 errorWithDomain:v44 code:0 userInfo:{objc_msgSend(v45, "dictionaryWithObject:forKey:", v46, *MEMORY[0x277CCA450])}];
          }

          objc_autoreleasePoolPop(v14);
          return 0;
        }

        if ([v12 canBePackedWithDocument:self])
        {
          v63 = v14;
          v62 = [objc_msgSend(v12 "keySpec")];
          opaque = [v12 opaque];
          monochrome = [v12 monochrome];
          v61 = [objc_msgSend(objc_msgSend(v12 "keySpec")];
          v60 = [objc_msgSend(objc_msgSend(v12 "keySpec")];
          v59 = [objc_msgSend(objc_msgSend(v12 "keySpec")];
          v58 = [objc_msgSend(objc_msgSend(v12 "keySpec")];
          preserveForArchiveOnly = [v12 preserveForArchiveOnly];
          if (objc_opt_respondsToSelector())
          {
            v17 = [objc_msgSend(v12 "compressionType")];
            if (v17 == 2)
            {
              v18 = 0;
            }

            else
            {
              v18 = v17;
            }

            v56 = v18;
          }

          else
          {
            v56 = 0;
          }

          v19 = v13 == 0;
          v20 = v19 & monochrome;
          v21 = v19 & opaque;
          renditionKeySemantics = [(CoreThemeDocument *)self renditionKeySemantics];
          keySpec = [v12 keySpec];
          if (renditionKeySemantics == 1)
          {
            presentationState = [keySpec presentationState];
            v25 = [objc_msgSend(v12 "keySpec")];
            v26 = [MEMORY[0x277CCAB68] stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", v62, v21, v20, objc_msgSend(presentationState, "identifier"), objc_msgSend(v25, "identifier"), 0, 0, v13, 0, 0, v61, v56, v60, v59, v58, preserveForArchiveOnly];
          }

          else
          {
            subtype = [keySpec subtype];
            v27 = [objc_msgSend(v12 "keySpec")];
            v28 = [objc_msgSend(v12 "keySpec")];
            v51 = v21;
            v29 = [objc_msgSend(v12 "keySpec")];
            v50 = v20;
            v30 = [objc_msgSend(v12 "keySpec")];
            v31 = v6;
            v32 = [objc_msgSend(v12 "keySpec")];
            v49 = MEMORY[0x277CCAB68];
            identifier = [v27 identifier];
            identifier2 = [v28 identifier];
            identifier3 = [v29 identifier];
            v36 = v32;
            v6 = v31;
            v26 = [v49 stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", v62, v51, v50, subtype, identifier, identifier2, identifier3, v13, v30, objc_msgSend(v36, "identifier"), v61, v56, v60, v59, v58, preserveForArchiveOnly];
          }

          v37 = v26;
          v38 = [objc_msgSend(v12 "production")];
          v10 = 0x27EE5A000;
          v14 = v63;
          if ([v38 count])
          {
            v39 = objc_alloc_init(MEMORY[0x277CCAB68]);
            v64[0] = MEMORY[0x277D85DD0];
            v64[1] = 3221225472;
            v64[2] = __52__CoreThemeDocument__updateRenditionPackings_error___block_invoke;
            v64[3] = &unk_278EBAF50;
            v64[4] = v39;
            [v38 enumerateObjectsUsingBlock:v64];
            v40 = [v6 objectForKey:v39];
            if (v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = [MEMORY[0x277CCABB0] numberWithInt:v48];
              [v6 setObject:v41 forKey:v39];
              ++v48;
            }

            [v37 appendFormat:@".tag%d", objc_msgSend(v41, "intValue")];
          }

          [(CoreThemeDocument *)self _insertRendition:v12 forKey:v37];
          v9 = v53;
          v8 = v54;
        }

        objc_autoreleasePoolPop(v14);
        ++v11;
      }

      while (v8 != v11);
      v8 = [packings countByEnumeratingWithState:&v65 objects:v69 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

void __52__CoreThemeDocument__updateRenditionPackings_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [objc_msgSend(a2 "identifier")];
  [v3 replaceOccurrencesOfString:@"|" withString:@"||" options:2 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"." withString:@"|" options:2 range:{0, objc_msgSend(v3, "length")}];
  [*(a1 + 32) appendString:v3];
}

- (void)_groupPackableRenditions
{
  v180 = *MEMORY[0x277D85DE8];
  displayGamuts = [(CoreThemeDocument *)self displayGamuts];
  featureSetClasses = [(CoreThemeDocument *)self featureSetClasses];
  idioms = [(CoreThemeDocument *)self idioms];
  v178[0] = [(CoreThemeDocument *)self sizeWithIdentifier:0];
  v178[1] = [(CoreThemeDocument *)self sizeWithIdentifier:1];
  v178[2] = [(CoreThemeDocument *)self sizeWithIdentifier:2];
  v178[3] = [(CoreThemeDocument *)self sizeWithIdentifier:3];
  v122 = [MEMORY[0x277CBEA60] arrayWithObjects:v178 count:4];
  sizeClasses = [(CoreThemeDocument *)self sizeClasses];
  v177[0] = [(CoreThemeDocument *)self presentationStateWithIdentifier:0];
  v177[1] = [(CoreThemeDocument *)self presentationStateWithIdentifier:1];
  v177[2] = [(CoreThemeDocument *)self presentationStateWithIdentifier:2];
  v120 = [MEMORY[0x277CBEA60] arrayWithObjects:v177 count:3];
  compressionTypes = [(CoreThemeDocument *)self compressionTypes];
  deploymentTargets = [(CoreThemeDocument *)self deploymentTargets];
  v129 = [(CoreThemeDocument *)self partWithIdentifier:181];
  v128 = [(CoreThemeDocument *)self renditionTypeWithIdentifier:1004];
  v133 = [(CoreThemeDocument *)self elementWithIdentifier:9];
  v118 = [(CoreThemeDocument *)self partWithIdentifier:127];
  v148 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v147 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v150 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  obj = [-[NSMutableDictionary allKeys](self->_packableRenditions "allKeys")];
  selfCopy = self;
  v142 = [obj countByEnumeratingWithState:&v166 objects:v176 count:16];
  if (v142)
  {
    v140 = *v167;
    do
    {
      v3 = 0;
      do
      {
        if (*v167 != v140)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v166 + 1) + 8 * v3);
        v5 = [v4 componentsSeparatedByString:@"."];
        v153 = v4;
        v6 = [(NSMutableDictionary *)selfCopy->_packableRenditions objectForKey:v4];
        v7 = [v6 count];
        v8 = [objc_msgSend(v5 objectAtIndex:{7), "intValue"}];
        v9 = v8;
        v144 = v3;
        if (v7 == 1)
        {
          if (!v8)
          {
            [v150 addObject:v153];
          }
        }

        else
        {
          v10 = [objc_msgSend(v5 "firstObject")];
          if (v9)
          {
            v11 = 0x366666uLL / v10;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

          else
          {
            LODWORD(v11) = __packing_max_area;
            if (!v7)
            {
              goto LABEL_30;
            }
          }

          v12 = 0;
          v13 = 0;
          v14 = (v11 * v10);
          do
          {
            v15 = [v6 count];
            if (v15 <= v12)
            {
              v16 = v12;
            }

            else
            {
              v16 = v15;
              v17 = 0;
              v18 = v12 - v15;
              v19 = 0.0;
              while (1)
              {
                v20 = v12 + v17;
                v21 = [v6 objectAtIndex:v12 + v17];
                width = [v21 width];
                v19 = v19 + ([v21 height] * width);
                if (v19 >= v14)
                {
                  break;
                }

                ++v17;
                if (!(v18 + v17))
                {
                  goto LABEL_23;
                }
              }

              array = [v6 array];
              v24 = v7;
              v25 = objc_alloc_init(TDPacker);
              [(TDPacker *)v25 setSizeHandler:&__block_literal_global_1769];
              v155 = array;
              -[TDPacker setObjectsToPack:](v25, "setObjectsToPack:", [array subarrayWithRange:{v12, v17}]);
              [(TDPacker *)v25 pack];
              [(TDPacker *)v25 enclosingSize];
              v27 = v26;
              v29 = v28;
              countOfEmptyNodes = [(TDPacker *)v25 countOfEmptyNodes];

              v7 = v24;
              if (v20 + countOfEmptyNodes >= v16 || (v31 = objc_alloc_init(TDPacker), -[TDPacker setSizeHandler:](v31, "setSizeHandler:", &__block_literal_global_1769), -[TDPacker setObjectsToPack:](v31, "setObjectsToPack:", [v155 subarrayWithRange:{v12, countOfEmptyNodes + v17}]), -[TDPacker pack](v31, "pack"), -[TDPacker enclosingSize](v31, "enclosingSize"), v33 = v32, v35 = v34, v31, v16 = v20 + countOfEmptyNodes, v35 * v33 != v29 * v27))
              {
                v16 = v12 + v17;
              }

LABEL_23:
              if (v16 > v12 && v16 <= v7)
              {
                if (v16 == v7)
                {
                  v36 = v7 - v12;
                }

                else
                {
                  v36 = v16 - v12 + 1;
                }

                v37 = [MEMORY[0x277CBEB70] orderedSetWithOrderedSet:v6 range:v12 copyItems:{v36, 0}];
                [v150 addObject:v153];
                v38 = [v153 mutableCopy];
                [v38 appendFormat:@".%d", v13];
                [v148 setObject:v37 forKey:v38];
              }
            }

            v12 = v16 + 1;
            v13 = (v13 + 1);
          }

          while (v16 + 1 < v7);
        }

LABEL_30:
        v3 = v144 + 1;
      }

      while (v144 + 1 != v142);
      v142 = [obj countByEnumeratingWithState:&v166 objects:v176 count:16];
    }

    while (v142);
  }

  [(NSMutableDictionary *)selfCopy->_packableRenditions removeObjectsForKeys:v150];
  [(NSMutableDictionary *)selfCopy->_packableRenditions addEntriesFromDictionary:v148];

  v39 = objc_alloc_init(TDPacker);
  [(TDPacker *)v39 setSizeHandler:&__block_literal_global_1247];
  v125 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableDictionary count](selfCopy->_packableRenditions, "count")}];
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v165 = 0u;
  v126 = [-[NSMutableDictionary allKeys](selfCopy->_packableRenditions "allKeys")];
  v137 = [v126 countByEnumeratingWithState:&v162 objects:v175 count:16];
  if (!v137)
  {
    goto LABEL_92;
  }

  v134 = 0;
  v135 = 0;
  v136 = *v163;
  v40.f64[0] = NAN;
  v40.f64[1] = NAN;
  v127 = vnegq_f64(v40);
  do
  {
    v41 = 0;
    do
    {
      if (*v163 != v136)
      {
        objc_enumerationMutation(v126);
      }

      v42 = *(*(&v162 + 1) + 8 * v41);
      v43 = [(NSMutableDictionary *)selfCopy->_packableRenditions objectForKey:v42];
      v44 = [v43 count];
      -[TDPacker setObjectsToPack:](v39, "setObjectsToPack:", [v43 array]);
      [(TDPacker *)v39 pack];
      v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
      if (v44)
      {
        for (i = 0; i != v44; ++i)
        {
          if ([(TDPacker *)v39 objectAtIndexFit:i])
          {
            [(TDPacker *)v39 fitPositionOfObjectAtIndex:i];
            [objc_msgSend(v43 objectAtIndex:{i), "setPackedPoint:", v47 + 2.0, v48 + 2.0}];
            [v45 addObject:{objc_msgSend(v43, "objectAtIndex:", i)}];
          }
        }
      }

      v154 = v41;
      v156 = v45;
      v49 = [v42 componentsSeparatedByString:@"."];
      v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d.%d", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 0), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 3), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 4), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 5), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 6), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 7), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 8), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 9), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 10), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 12), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 13), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 14), "intValue"), objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 15), "intValue")];
      v51 = [v147 objectForKey:v50];
      if (v51)
      {
        v52 = [v51 intValue] + 1;
      }

      else
      {
        v52 = 0;
      }

      v53 = [MEMORY[0x277CCABB0] numberWithInt:v52];
      [v147 setObject:v53 forKey:v50];
      if ([v45 count])
      {
        v54 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"PackedRenditionSpec"];
        [v54 setPackedRenditions:{objc_msgSend(MEMORY[0x277CBEB98], "setWithArray:", v45)}];
        [v54 setCompressionType:{objc_msgSend(compressionTypes, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 11), "intValue"))}];
        v55 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
        v56 = [objc_msgSend(v49 objectAtIndex:{7), "intValue"}];
        v151 = v53;
        if (v56)
        {
          v57 = v56;
          [v54 setAlphaCrop:1];
          [v55 setElement:v133];
          [v55 setNameIdentifier:v57];
          v143 = v57;
          v58 = -[NSMutableDictionary objectForKey:](selfCopy->_explicitlyPackedPackings, "objectForKey:", [MEMORY[0x277CCABB0] numberWithInteger:?]);
          v59 = [(CoreThemeDocument *)selfCopy namedArtworkProductionWithName:v58];
          if (!v59)
          {
            v145 = v54;
            v60 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"NamedArtworkProduction"];
            [v60 setTags:{objc_msgSend(objc_msgSend(objc_msgSend(v156, "firstObject"), "production"), "tags")}];
            v61 = v57;
            v62 = v55;
            v63 = [(CoreThemeDocument *)selfCopy _createNamedElementWithIdentifier:v143];
            [v63 setDateOfLastChange:{objc_msgSend(MEMORY[0x277CBEAA8], "date")}];
            [v63 setName:v58];
            [v60 setName:v63];
            v64 = v60;
            v65 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
            obja = v61;
            [v65 setNameIdentifier:v61];
            [v65 setElement:{objc_msgSend(v62, "element")}];
            v141 = v62;
            [v65 setPart:{objc_msgSend(v62, "part")}];
            v149 = v60;
            [v60 setBaseKeySpec:v65];

            v119 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"ContentsRenditionSpec"];
            v66 = objc_alloc_init(MEMORY[0x277CBEB58]);
            v67 = -[NSMutableDictionary objectForKey:](selfCopy->_explicitlyPackedContents, "objectForKey:", [MEMORY[0x277CCABB0] numberWithInteger:v143]);
            v158 = 0u;
            v159 = 0u;
            v160 = 0u;
            v161 = 0u;
            v68 = [v67 countByEnumeratingWithState:&v158 objects:v174 count:16];
            if (v68)
            {
              v69 = v68;
              v70 = *v159;
              do
              {
                for (j = 0; j != v69; ++j)
                {
                  if (*v159 != v70)
                  {
                    objc_enumerationMutation(v67);
                  }

                  v72 = *(*(&v158 + 1) + 8 * j);
                  v73 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"ContentsName"];
                  [v73 setName:v72];
                  [v66 addObject:v73];
                }

                v69 = [v67 countByEnumeratingWithState:&v158 objects:v174 count:16];
              }

              while (v69);
            }

            v74 = v119;
            [v119 setContains:v66];

            v75 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
            [v75 setNameIdentifier:obja];
            [v75 setElement:v133];
            [v75 setPart:v118];
            [v75 setScaleFactor:1];
            [v119 setKeySpec:v75];

            [v119 setProduction:v149];
            v54 = v145;
            v55 = v141;
LABEL_57:

            v59 = v149;
          }

          [v59 setBaseKeySpec:{objc_msgSend(v59, "baseKeySpec")}];
          [v54 setKeySpec:v55];
          [v54 resetToBaseKeySpec];
          [v55 setScaleFactor:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 0), "intValue")}];
          [v55 setPart:v129];
          renditionKeySemantics = [(CoreThemeDocument *)selfCopy renditionKeySemantics];
          v79 = [objc_msgSend(v49 objectAtIndex:{3), "intValue"}];
          if (renditionKeySemantics == 1)
          {
            [v55 setPresentationState:{objc_msgSend(v120, "objectAtIndexedSubscript:", v79)}];
            [v55 setSize:{objc_msgSend(v122, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 4), "intValue"))}];
          }

          else
          {
            [v55 setSubtype:v79];
            [v55 setIdiom:{objc_msgSend(idioms, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 4), "intValue"))}];
            [v55 setSizeClassHorizontal:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 5), "intValue"))}];
            [v55 setSizeClassVertical:{objc_msgSend(sizeClasses, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 6), "intValue"))}];
            [v55 setMemoryClass:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 8), "intValue")}];
            [v55 setGraphicsFeatureSetClass:{objc_msgSend(featureSetClasses, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 9), "intValue"))}];
          }

          v45 = v156;
          [v55 setGamut:{objc_msgSend(displayGamuts, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 10), "intValue"))}];
          [v55 setDimension1:{objc_msgSend(v151, "intValue")}];
          [v55 setTarget:{objc_msgSend(deploymentTargets, "objectAtIndexedSubscript:", objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 12), "intValue"))}];
          if ([objc_msgSend(v49 objectAtIndex:{13), "intValue"}])
          {
            if (v135 && (v80 = [v135 identifier], v81 = objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 13), "intValue"), v82 = v135, v81 == v80))
            {
              v83 = v55;
            }

            else
            {
              v82 = -[CoreThemeDocument appearanceWithIdentifier:](selfCopy, "appearanceWithIdentifier:", [objc_msgSend(v49 objectAtIndex:{13), "intValue"}]);
              v83 = v55;
              v135 = v82;
            }
          }

          else
          {
            v83 = v55;
            v82 = 0;
          }

          [v83 setAppearance:v82];
          if ([objc_msgSend(v49 objectAtIndex:{14), "intValue"}])
          {
            if (v134 && (v84 = [v134 identifier], v85 = objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 14), "intValue"), v86 = v134, v85 == v84))
            {
              v87 = v55;
            }

            else
            {
              v86 = -[CoreThemeDocument localizationWithIdentifier:](selfCopy, "localizationWithIdentifier:", [objc_msgSend(v49 objectAtIndex:{14), "intValue"}]);
              v87 = v55;
              v134 = v86;
            }
          }

          else
          {
            v87 = v55;
            v86 = 0;
          }

          [v87 setLocalization:v86];
          [v54 setProduction:v59];

          [v59 setRenditionType:v128];
          [v54 setRenditionType:v128];
          [(TDPacker *)v39 enclosingSize];
          *v88.i64 = *v88.i64 + 1.0;
          *v89.i64 = *v89.i64 + 1.0;
          *v90.i64 = *v89.i64 - trunc(*v89.i64 * 0.5) * 2.0;
          v91 = *vbslq_s8(v127, v90, v89).i64;
          if (v91 == 0.0)
          {
            v92 = *v89.i64;
          }

          else
          {
            v92 = *v89.i64 + v91;
          }

          *v89.i64 = *v88.i64 - trunc(*v88.i64 * 0.5) * 2.0;
          v89.i64[0] = vbslq_s8(v127, v89, v88).i64[0];
          if (*v89.i64 != 0.0)
          {
            *v88.i64 = *v88.i64 + *v89.i64;
          }

          [v54 setWidth:*v88.i64];
          [v54 setHeight:v92];
          [v54 setOpaque:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 1), "BOOLValue")}];
          [v54 setMonochrome:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 2), "BOOLValue")}];
          [v54 setPreserveForArchiveOnly:{objc_msgSend(objc_msgSend(v49, "objectAtIndex:", 15), "intValue") != 0}];
          if (__coreThemeLoggingEnabled == 1)
          {
            width2 = [v54 width];
            height = [v54 height];
            v170 = 0u;
            v171 = 0u;
            v172 = 0u;
            v173 = 0u;
            packedRenditions = [v54 packedRenditions];
            v96 = [packedRenditions countByEnumeratingWithState:&v170 objects:v179 count:16];
            if (v96)
            {
              v97 = v96;
              v152 = width2;
              v146 = v54;
              v98 = 0;
              v99 = *v171;
              do
              {
                for (k = 0; k != v97; ++k)
                {
                  if (*v171 != v99)
                  {
                    objc_enumerationMutation(packedRenditions);
                  }

                  v101 = *(*(&v170 + 1) + 8 * k);
                  width3 = [v101 width];
                  v98 += [v101 height] * width3;
                }

                v97 = [packedRenditions countByEnumeratingWithState:&v170 objects:v179 count:16];
              }

              while (v97);
              v103 = v98;
              v45 = v156;
              v54 = v146;
              width2 = v152;
            }

            else
            {
              v103 = 0.0;
            }

            v104 = v103 / (height * width2);
            NSLog(&cfstr_PackedRenditio.isa, [v54 renditionPackName], (v104 * 100.0));
            *&v105 = v104;
            [v125 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v105)}];
          }

          goto LABEL_90;
        }

        [v55 setElement:v133];
        v76 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"ElementProduction"];
        [v76 setTags:{objc_msgSend(objc_msgSend(objc_msgSend(v45, "firstObject"), "production"), "tags")}];
        v77 = v76;
        v74 = [(CoreThemeDocument *)selfCopy newObjectForEntity:@"RenditionKeySpec"];
        [v74 setNameIdentifier:0];
        [v74 setElement:{objc_msgSend(v55, "element")}];
        [v74 setPart:{objc_msgSend(v55, "part")}];
        v149 = v76;
        [v76 setBaseKeySpec:v74];
        goto LABEL_57;
      }

LABEL_90:

      v41 = v154 + 1;
    }

    while (v154 + 1 != v137);
    v137 = [v126 countByEnumeratingWithState:&v162 objects:v175 count:16];
  }

  while (v137);
LABEL_92:

  if (__coreThemeLoggingEnabled == 1)
  {
    [objc_msgSend(v125 valueForKeyPath:{@"@avg.self", "floatValue"}];
    v107 = v106;
    v108 = [v125 sortedArrayUsingSelector:sel_compare_];
    if ([v108 count] == 1)
    {
      v109 = [v108 objectAtIndex:1];
      goto LABEL_97;
    }

    v110 = [v108 count];
    v109 = [v108 objectAtIndex:{objc_msgSend(v108, "count") >> 1}];
    v111 = v109;
    if (v110)
    {
LABEL_97:
      [v109 floatValue];
      v116 = v117;
    }

    else
    {
      v112 = [v108 objectAtIndex:{(objc_msgSend(v108, "count") >> 1) + 1}];
      [v111 floatValue];
      v114 = v113;
      [v112 floatValue];
      v116 = (v114 + v115) * 0.5;
    }

    NSLog(&cfstr_MeanSpaceUtili.isa, (v107 * 100.0));
    NSLog(&cfstr_MedianSpaceUti.isa, (v116 * 100.0));
  }
}

double __45__CoreThemeDocument__groupPackableRenditions__block_invoke(uint64_t a1, void *a2)
{
  v3 = ([a2 width] + 2);
  [a2 height];
  return v3;
}

- (void)packRenditionsError:(id *)error
{
  if ([(CoreThemeDocument *)self featureEnabled:2])
  {
    v5 = [(CoreThemeDocument *)self allObjectsForEntity:@"PackedRenditionSpec" withSortDescriptors:0];
    if ([v5 count])
    {
      [(CoreThemeDocument *)self deleteObjects:v5];
    }

    [(CoreThemeDocument *)self _updateRenditionPackings:[(CoreThemeDocument *)self allObjectsForEntity:@"RenditionSpec" withSortDescriptors:0] error:error];

    [(CoreThemeDocument *)self _groupPackableRenditions];
  }
}

- (void)incrementallyPackRenditionsSinceDate:(id)date error:(id *)error
{
  if (date && [(CoreThemeDocument *)self featureEnabled:2])
  {
    v7 = -[CoreThemeDocument objectsForEntity:withPredicate:sortDescriptors:](self, "objectsForEntity:withPredicate:sortDescriptors:", @"RenditionSpec", [MEMORY[0x277CCAC30] predicateWithFormat:@"production.dateOfLastChange > %@", date], 0);
    NSLog(&cfstr_FoundLuChanged.isa, [v7 count], date, v7);
    [(CoreThemeDocument *)self _updateRenditionPackings:v7 error:error];

    [(CoreThemeDocument *)self _groupPackableRenditions];
  }
}

- (void)_optimizeForDeviceTraits
{
  v237 = *MEMORY[0x277D85DE8];
  if (![(CoreThemeDocument *)self deviceTraitsUsedForOptimization])
  {
    return;
  }

  v116 = objc_alloc_init(MEMORY[0x277CBEB18]);
  hostedIdiomValues = [(TDDeviceTraits *)[(CoreThemeDocument *)self optimizeForDeviceTraits] hostedIdiomValues];
  v121 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v117 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v118 = objc_alloc_init(MEMORY[0x277CBEB58]);
  selfCopy = self;
  v211 = 0u;
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  obj = [(CoreThemeDocument *)self allObjectsForEntity:@"ElementProduction" withSortDescriptors:0];
  v122 = v4;
  v114 = [obj countByEnumeratingWithState:&v211 objects:v235 count:16];
  if (!v114)
  {
    goto LABEL_39;
  }

  v112 = *v212;
  do
  {
    v7 = 0;
    do
    {
      if (*v212 != v112)
      {
        objc_enumerationMutation(obj);
      }

      v8 = *(*(&v211 + 1) + 8 * v7);
      if ([objc_msgSend(v8 "renditionType")] == 1006)
      {
        [v117 addObject:v8];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v8 "renditionType")] == 1018 || objc_msgSend(objc_msgSend(v8, "renditionType"), "identifier") == 1002))
      {
        [v118 addObject:v8];
      }

      v119 = v7;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 optOutOfThinning])
      {
        [v5 unionSet:{objc_msgSend(v8, "renditions")}];
        goto LABEL_37;
      }

      v210 = 0u;
      v209 = 0u;
      v208 = 0u;
      v207 = 0u;
      renditions = [v8 renditions];
      v142 = [renditions countByEnumeratingWithState:&v207 objects:v234 count:16];
      if (v142)
      {
        v9 = *v208;
        v124 = *v208;
        do
        {
          for (i = 0; i != v142; ++i)
          {
            if (*v208 != v9)
            {
              objc_enumerationMutation(renditions);
            }

            v11 = *(*(&v207 + 1) + 8 * i);
            v12 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
            v13 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
            v14 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
            if (hostedIdiomValues && -[NSArray containsObject:](hostedIdiomValues, "containsObject:", [MEMORY[0x277CCABB0] numberWithInteger:v12]) || v13 == 127 || v14 == 218)
            {
              v20 = v5;
            }

            else if (v13 == 9 && ![objc_msgSend(objc_msgSend(v11 "production")])
            {
              v20 = v121;
            }

            else
            {
              v15 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
              v138 = MEMORY[0x277CCACA8];
              v135 = [objc_msgSend(v11 "keySpec")];
              v131 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
              v16 = [objc_msgSend(objc_msgSend(v11 "keySpec")];
              v17 = [objc_msgSend(v11 "keySpec")];
              keySpec = [v11 keySpec];
              if (v15 == 220)
              {
                v110 = [v138 stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d.%d", v135, v131, v16, v17, objc_msgSend(keySpec, "dimension2"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "appearance"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "localization"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphWeight"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphSize"), "identifier")];
              }

              else
              {
                v110 = [v138 stringWithFormat:@"%d.%d.%d.%d.%d.%d.%d.%d", v135, v131, v16, v17, objc_msgSend(objc_msgSend(keySpec, "appearance"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "localization"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphWeight"), "identifier"), objc_msgSend(objc_msgSend(objc_msgSend(v11, "keySpec"), "glyphSize"), "identifier"), v110];
              }

              v21 = v110;
              v4 = v122;
              v20 = [v122 objectForKey:v110];
              v9 = v124;
              if (!v20)
              {
                v22 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v22 addObject:v11];
                [v122 setObject:v22 forKey:v21];

                continue;
              }
            }

            [v20 addObject:v11];
          }

          v142 = [renditions countByEnumeratingWithState:&v207 objects:v234 count:16];
        }

        while (v142);
      }

LABEL_37:
      v7 = v119 + 1;
    }

    while (v119 + 1 != v114);
    v114 = [obj countByEnumeratingWithState:&v211 objects:v235 count:16];
  }

  while (v114);
LABEL_39:
  v206 = 0u;
  v205 = 0u;
  v204 = 0u;
  v203 = 0u;
  v115 = [v4 countByEnumeratingWithState:&v203 objects:v233 count:16];
  if (v115)
  {
    v113 = *v204;
    do
    {
      v23 = 0;
      do
      {
        if (*v204 != v113)
        {
          objc_enumerationMutation(v4);
        }

        v120 = v23;
        v24 = *(*(&v203 + 1) + 8 * v23);
        v136 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v127 = [v4 objectForKey:v24];
        v199 = 0u;
        v200 = 0u;
        v201 = 0u;
        v202 = 0u;
        deviceTraitsUsedForOptimization = [(CoreThemeDocument *)selfCopy deviceTraitsUsedForOptimization];
        v132 = [deviceTraitsUsedForOptimization countByEnumeratingWithState:&v199 objects:v232 count:16];
        if (v132)
        {
          v125 = *v200;
          do
          {
            for (j = 0; j != v132; ++j)
            {
              if (*v200 != v125)
              {
                objc_enumerationMutation(deviceTraitsUsedForOptimization);
              }

              v26 = *(*(&v199 + 1) + 8 * j);
              v143 = MEMORY[0x277D02670];
              [v26 scale];
              v28 = [v143 bestMatchUsingObjects:v127 getAttributeValueUsing:&__block_literal_global_1271 scaleFactor:objc_msgSend(v26 deviceIdiom:"idiomValue") deviceSubtype:objc_msgSend(v26 displayGamut:"subtype") deploymentTarget:objc_msgSend(v26 layoutDirection:"displayGamutValue") sizeClassHorizontal:objc_msgSend(v26 sizeClassVertical:"deploymentTargetValue") memoryClass:v27 graphicsFeatureSetClass:5 graphicsFallBackOrder:0 deviceSubtypeFallBackOrder:0 platform:{objc_msgSend(v26, "memoryPerformanceClass"), objc_msgSend(v26, "graphicsFeatureSetClassValue"), objc_msgSend(v26, "graphicsFeatureSetFallbackValues"), objc_msgSend(v26, "subtypeFallbackValues"), -[CoreThemeDocument targetPlatform](selfCopy, "targetPlatform")}];
              if (v28)
              {
                v29 = v28;
                [v5 addObject:v28];
                [v136 addObject:v29];
              }
            }

            v132 = [deviceTraitsUsedForOptimization countByEnumeratingWithState:&v199 objects:v232 count:16];
          }

          while (v132);
        }

        v30 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v127];
        [v30 minusSet:v5];
        v197 = 0u;
        v198 = 0u;
        v195 = 0u;
        v196 = 0u;
        v133 = [v136 countByEnumeratingWithState:&v195 objects:v231 count:16];
        if (v133)
        {
          v128 = *v196;
          do
          {
            v31 = 0;
            do
            {
              if (*v196 != v128)
              {
                objc_enumerationMutation(v136);
              }

              v139 = v31;
              v32 = *(*(&v195 + 1) + 8 * v31);
              v191 = 0u;
              v192 = 0u;
              v193 = 0u;
              v194 = 0u;
              allObjects = [v30 allObjects];
              array = [MEMORY[0x277CBEB18] array];
              v215 = 0u;
              v216 = 0u;
              v217 = 0u;
              v218 = 0u;
              v34 = [allObjects countByEnumeratingWithState:&v215 objects:v236 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v216;
                do
                {
                  for (k = 0; k != v35; ++k)
                  {
                    if (*v216 != v36)
                    {
                      objc_enumerationMutation(allObjects);
                    }

                    v38 = *(*(&v215 + 1) + 8 * k);
                    v39 = [objc_msgSend(v38 "keySpec")];
                    if (v39 == [objc_msgSend(v32 "keySpec")])
                    {
                      v40 = [objc_msgSend(v38 "keySpec")];
                      if (v40 == [objc_msgSend(v32 "keySpec")])
                      {
                        v41 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                        if (v41 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                        {
                          v42 = [objc_msgSend(v38 "keySpec")];
                          if (v42 == [objc_msgSend(v32 "keySpec")])
                          {
                            v43 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                            if (v43 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                            {
                              v44 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                              if (v44 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                              {
                                v45 = [objc_msgSend(v38 "keySpec")];
                                if (v45 == [objc_msgSend(v32 "keySpec")])
                                {
                                  v46 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                                  if (v46 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                                  {
                                    v47 = [objc_msgSend(objc_msgSend(v38 "keySpec")];
                                    if (v47 == [objc_msgSend(objc_msgSend(v32 "keySpec")])
                                    {
                                      [array addObject:v38];
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }

                  v35 = [allObjects countByEnumeratingWithState:&v215 objects:v236 count:16];
                }

                while (v35);
              }

              v48 = array;
              if (![array count])
              {
                v48 = 0;
              }

              v49 = [v48 countByEnumeratingWithState:&v191 objects:v230 count:16];
              if (v49)
              {
                v50 = v49;
                v51 = *v192;
                do
                {
                  for (m = 0; m != v50; ++m)
                  {
                    if (*v192 != v51)
                    {
                      objc_enumerationMutation(v48);
                    }

                    v53 = *(*(&v191 + 1) + 8 * m);
                    [v30 removeObject:v53];
                    [v5 addObject:v53];
                  }

                  v50 = [v48 countByEnumeratingWithState:&v191 objects:v230 count:16];
                }

                while (v50);
              }

              v31 = v139 + 1;
            }

            while (v139 + 1 != v133);
            v133 = [v136 countByEnumeratingWithState:&v195 objects:v231 count:16];
          }

          while (v133);
        }

        v189 = 0u;
        v190 = 0u;
        v187 = 0u;
        v188 = 0u;
        v54 = [v30 countByEnumeratingWithState:&v187 objects:v229 count:16];
        v4 = v122;
        if (v54)
        {
          v55 = v54;
          v56 = *v188;
          do
          {
            for (n = 0; n != v55; ++n)
            {
              if (*v188 != v56)
              {
                objc_enumerationMutation(v30);
              }

              [objc_msgSend(*(*(&v187 + 1) + 8 * n) "production")];
            }

            v55 = [v30 countByEnumeratingWithState:&v187 objects:v229 count:16];
          }

          while (v55);
        }

        -[CoreThemeDocument deleteObjects:](selfCopy, "deleteObjects:", [v30 allObjects]);
        [v6 unionSet:v30];

        v23 = v120 + 1;
      }

      while (v120 + 1 != v115);
      v115 = [v122 countByEnumeratingWithState:&v203 objects:v233 count:16];
    }

    while (v115);
  }

  v185 = 0u;
  v186 = 0u;
  v183 = 0u;
  v184 = 0u;
  v58 = [v117 countByEnumeratingWithState:&v183 objects:v228 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v184;
    do
    {
      for (ii = 0; ii != v59; ++ii)
      {
        if (*v184 != v60)
        {
          objc_enumerationMutation(v117);
        }

        v62 = *(*(&v183 + 1) + 8 * ii);
        -[CoreThemeDocument deleteObjects:](selfCopy, "deleteObjects:", [objc_msgSend(v62 "renditions")]);
        [v62 setRenditions:{objc_msgSend(MEMORY[0x277CBEB98], "set")}];
      }

      v59 = [v117 countByEnumeratingWithState:&v183 objects:v228 count:16];
    }

    while (v59);
  }

  v181 = 0u;
  v182 = 0u;
  v179 = 0u;
  v180 = 0u;
  v145 = [v121 countByEnumeratingWithState:&v179 objects:v227 count:16];
  if (v145)
  {
    v140 = *v180;
    do
    {
      for (jj = 0; jj != v145; ++jj)
      {
        if (*v180 != v140)
        {
          objc_enumerationMutation(v121);
        }

        v64 = *(*(&v179 + 1) + 8 * jj);
        v65 = [objc_msgSend(v64 "packedRenditions")];
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v178 = 0u;
        packedRenditions = [v64 packedRenditions];
        v67 = [packedRenditions countByEnumeratingWithState:&v175 objects:v226 count:16];
        if (v67)
        {
          v68 = v67;
          v69 = *v176;
          do
          {
            for (kk = 0; kk != v68; ++kk)
            {
              if (*v176 != v69)
              {
                objc_enumerationMutation(packedRenditions);
              }

              v71 = *(*(&v175 + 1) + 8 * kk);
              if ([v6 containsObject:v71])
              {
                [v65 removeObject:v71];
              }
            }

            v68 = [packedRenditions countByEnumeratingWithState:&v175 objects:v226 count:16];
          }

          while (v68);
        }

        if ([v65 count])
        {
          [v64 setPackedRenditions:v65];
        }

        else
        {
          [v116 addObject:v64];
          [objc_msgSend(v64 "production")];
        }
      }

      v145 = [v121 countByEnumeratingWithState:&v179 objects:v227 count:16];
    }

    while (v145);
  }

  objc_opt_class();
  objc_opt_class();
  v171 = 0u;
  v172 = 0u;
  v173 = 0u;
  v174 = 0u;
  v72 = [(CoreThemeDocument *)selfCopy allObjectsForEntity:@"Asset" withSortDescriptors:0];
  v73 = [v72 countByEnumeratingWithState:&v171 objects:v225 count:16];
  if (v73)
  {
    v74 = v73;
    v75 = *v172;
    do
    {
      for (mm = 0; mm != v74; ++mm)
      {
        if (*v172 != v75)
        {
          objc_enumerationMutation(v72);
        }

        v77 = *(*(&v171 + 1) + 8 * mm);
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass()) && ![objc_msgSend(v77 "renditions")])
        {
          [v116 addObject:v77];
        }
      }

      v74 = [v72 countByEnumeratingWithState:&v171 objects:v225 count:16];
    }

    while (v74);
  }

  v169 = 0u;
  v170 = 0u;
  v167 = 0u;
  v168 = 0u;
  v78 = [(CoreThemeDocument *)selfCopy allObjectsForEntity:@"ElementProduction" withSortDescriptors:0];
  v79 = [v78 countByEnumeratingWithState:&v167 objects:v224 count:16];
  if (v79)
  {
    v80 = v79;
    v81 = *v168;
    do
    {
      for (nn = 0; nn != v80; ++nn)
      {
        if (*v168 != v81)
        {
          objc_enumerationMutation(v78);
        }

        v83 = *(*(&v167 + 1) + 8 * nn);
        if (![objc_msgSend(v83 "renditions")])
        {
          [v116 addObject:v83];
        }
      }

      v80 = [v78 countByEnumeratingWithState:&v167 objects:v224 count:16];
    }

    while (v80);
  }

  v84 = selfCopy;
  [(CoreThemeDocument *)selfCopy deleteObjects:v116];

  if ([v118 count])
  {
    v85 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v163 = 0u;
    v164 = 0u;
    v165 = 0u;
    v166 = 0u;
    v134 = [v118 countByEnumeratingWithState:&v163 objects:v223 count:16];
    if (v134)
    {
      v129 = *v164;
      do
      {
        v86 = 0;
        do
        {
          if (*v164 != v129)
          {
            objc_enumerationMutation(v118);
          }

          v137 = v86;
          flattenedImageProduction = [*(*(&v163 + 1) + 8 * v86) flattenedImageProduction];
          v159 = 0u;
          v160 = 0u;
          v161 = 0u;
          v162 = 0u;
          renditions2 = [flattenedImageProduction renditions];
          v88 = [renditions2 countByEnumeratingWithState:&v159 objects:v222 count:16];
          if (v88)
          {
            v89 = v88;
            v146 = *v160;
            do
            {
              for (i1 = 0; i1 != v89; ++i1)
              {
                if (*v160 != v146)
                {
                  objc_enumerationMutation(renditions2);
                }

                layerReferences = [*(*(&v159 + 1) + 8 * i1) layerReferences];
                v155 = 0u;
                v156 = 0u;
                v157 = 0u;
                v158 = 0u;
                v92 = [layerReferences countByEnumeratingWithState:&v155 objects:v221 count:16];
                if (v92)
                {
                  v93 = v92;
                  v94 = *v156;
                  do
                  {
                    for (i2 = 0; i2 != v93; ++i2)
                    {
                      if (*v156 != v94)
                      {
                        objc_enumerationMutation(layerReferences);
                      }

                      v96 = *(*(&v155 + 1) + 8 * i2);
                      if ([v6 containsObject:{objc_msgSend(v96, "reference")}])
                      {
                        [v85 addObject:v96];
                      }
                    }

                    v93 = [layerReferences countByEnumeratingWithState:&v155 objects:v221 count:16];
                  }

                  while (v93);
                }
              }

              v89 = [renditions2 countByEnumeratingWithState:&v159 objects:v222 count:16];
            }

            while (v89);
          }

          v86 = v137 + 1;
        }

        while (v137 + 1 != v134);
        v134 = [v118 countByEnumeratingWithState:&v163 objects:v223 count:16];
      }

      while (v134);
    }

    [(CoreThemeDocument *)selfCopy deleteObjects:v85];

    v97 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v151 = 0u;
    v152 = 0u;
    v153 = 0u;
    v154 = 0u;
    v98 = [v118 countByEnumeratingWithState:&v151 objects:v220 count:16];
    if (v98)
    {
      v99 = v98;
      v100 = *v152;
      do
      {
        for (i3 = 0; i3 != v99; ++i3)
        {
          if (*v152 != v100)
          {
            objc_enumerationMutation(v118);
          }

          v102 = *(*(&v151 + 1) + 8 * i3);
          if (![objc_msgSend(objc_msgSend(v102 "flattenedImageProduction")])
          {
            [v97 addObject:v102];
          }
        }

        v99 = [v118 countByEnumeratingWithState:&v151 objects:v220 count:16];
      }

      while (v99);
    }

    v84 = selfCopy;
    [(CoreThemeDocument *)selfCopy deleteObjects:v97];
  }

  v103 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  v150 = 0u;
  v104 = [(CoreThemeDocument *)v84 allObjectsForEntity:@"MultisizeImageSetRenditionSpec" withSortDescriptors:0];
  v105 = [v104 countByEnumeratingWithState:&v147 objects:v219 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v148;
    do
    {
      for (i4 = 0; i4 != v106; ++i4)
      {
        if (*v148 != v107)
        {
          objc_enumerationMutation(v104);
        }

        v109 = *(*(&v147 + 1) + 8 * i4);
        if (![objc_msgSend(v109 "multisizeImageRenditions")])
        {
          [v103 addObject:v109];
        }
      }

      v106 = [v104 countByEnumeratingWithState:&v147 objects:v219 count:16];
    }

    while (v106);
  }

  [(CoreThemeDocument *)selfCopy deleteObjects:v103];
}

- (BOOL)_matchesAllExceptGamut:(id)gamut andKeySpec:(id)spec
{
  nameIdentifier = [gamut nameIdentifier];
  result = 0;
  if (nameIdentifier == [spec nameIdentifier])
  {
    dimension1 = [gamut dimension1];
    if (dimension1 == [spec dimension1])
    {
      dimension2 = [gamut dimension2];
      if (dimension2 == [spec dimension2])
      {
        scaleFactor = [gamut scaleFactor];
        if (scaleFactor == [spec scaleFactor])
        {
          subtype = [gamut subtype];
          if (subtype == [spec subtype])
          {
            memoryClass = [gamut memoryClass];
            if (memoryClass == [spec memoryClass])
            {
              v12 = [objc_msgSend(gamut "state")];
              if (v12 == [objc_msgSend(spec "state")])
              {
                v13 = [objc_msgSend(gamut "presentationState")];
                if (v13 == [objc_msgSend(spec "presentationState")])
                {
                  v14 = [objc_msgSend(gamut "value")];
                  if (v14 == [objc_msgSend(spec "value")])
                  {
                    v15 = [objc_msgSend(gamut "size")];
                    if (v15 == [objc_msgSend(spec "size")])
                    {
                      v16 = [objc_msgSend(gamut "direction")];
                      if (v16 == [objc_msgSend(spec "direction")])
                      {
                        v17 = [objc_msgSend(gamut "part")];
                        if (v17 == [objc_msgSend(spec "part")])
                        {
                          v18 = [objc_msgSend(gamut "element")];
                          if (v18 == [objc_msgSend(spec "element")])
                          {
                            v19 = [objc_msgSend(gamut "layer")];
                            if (v19 == [objc_msgSend(spec "layer")])
                            {
                              v20 = [objc_msgSend(gamut "previousState")];
                              if (v20 == [objc_msgSend(spec "previousState")])
                              {
                                v21 = [objc_msgSend(gamut "previousValue")];
                                if (v21 == [objc_msgSend(spec "previousValue")])
                                {
                                  v22 = [objc_msgSend(gamut "idiom")];
                                  if (v22 == [objc_msgSend(spec "idiom")])
                                  {
                                    v23 = [objc_msgSend(gamut "target")];
                                    if (v23 == [objc_msgSend(spec "target")])
                                    {
                                      v24 = [objc_msgSend(gamut "sizeClassHorizontal")];
                                      if (v24 == [objc_msgSend(spec "sizeClassHorizontal")])
                                      {
                                        v25 = [objc_msgSend(gamut "sizeClassVertical")];
                                        if (v25 == [objc_msgSend(spec "sizeClassVertical")])
                                        {
                                          v26 = [objc_msgSend(gamut "appearance")];
                                          if (v26 == [objc_msgSend(spec "appearance")])
                                          {
                                            v27 = [objc_msgSend(gamut "graphicsFeatureSetClass")];
                                            if (v27 == [objc_msgSend(spec "graphicsFeatureSetClass")])
                                            {
                                              return 1;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)shouldGenerateDisplayGamut:(unsigned int)gamut
{
  v15 = *MEMORY[0x277D85DE8];
  deviceTraits = self->_deviceTraits;
  if (!deviceTraits)
  {
LABEL_11:
    LOBYTE(v5) = 1;
    return v5;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
LABEL_4:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(deviceTraits);
      }

      if ([*(*(&v10 + 1) + 8 * v8) displayGamutValue] == gamut)
      {
        goto LABEL_11;
      }

      if (v6 == ++v8)
      {
        v6 = [(NSMutableArray *)deviceTraits countByEnumeratingWithState:&v10 objects:v14 count:16];
        LOBYTE(v5) = 0;
        if (v6)
        {
          goto LABEL_4;
        }

        return v5;
      }
    }
  }

  return v5;
}

- (void)_automaticSRGBGenerationFromP3
{
  v55 = *MEMORY[0x277D85DE8];
  if ([(CoreThemeDocument *)self shouldGenerateDisplayGamut:0])
  {
    v31 = [(CoreThemeDocument *)self displayGamutWithIdentifier:0];
    v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedArtworkProduction" withSortDescriptors:0];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v48 objects:v54 count:16];
    if (v5)
    {
      v6 = *v49;
      do
      {
        v7 = 0;
        do
        {
          if (*v49 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [v4 addObjectsFromArray:{objc_msgSend(objc_msgSend(*(*(&v48 + 1) + 8 * v7++), "renditions"), "allObjects")}];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v48 objects:v54 count:16];
      }

      while (v5);
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v47[0] = MEMORY[0x277D85DD0];
    v47[1] = 3221225472;
    v47[2] = __51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke;
    v47[3] = &unk_278EBB3D8;
    v47[4] = v8;
    v47[5] = v9;
    [v4 enumerateObjectsUsingBlock:v47];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v32 = [v8 countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v32)
    {
      v10 = *v44;
      v29 = v8;
      v30 = v4;
      v27 = *v44;
      v28 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v44 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v43 + 1) + 8 * v11);
          v39 = 0;
          v40 = &v39;
          v41 = 0x2020000000;
          v42 = 0;
          v38[0] = MEMORY[0x277D85DD0];
          v38[1] = 3221225472;
          v38[2] = __51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke_2;
          v38[3] = &unk_278EBB400;
          v38[5] = v12;
          v38[6] = &v39;
          v38[4] = self;
          [v9 enumerateObjectsUsingBlock:{v38, v27, v28, v29, v30}];
          if ((v40[3] & 1) == 0)
          {
            v33 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [objc_msgSend(v12 "entity")]);
            slices = [v12 slices];
            if ([slices count])
            {
              v14 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
              v36 = 0u;
              v37 = 0u;
              v34 = 0u;
              v35 = 0u;
              v15 = [slices countByEnumeratingWithState:&v34 objects:v52 count:16];
              if (v15)
              {
                v16 = *v35;
                do
                {
                  v17 = 0;
                  do
                  {
                    if (*v35 != v16)
                    {
                      objc_enumerationMutation(slices);
                    }

                    [*(*(&v34 + 1) + 8 * v17) sliceRect];
                    v19 = v18;
                    v21 = v20;
                    v23 = v22;
                    v25 = v24;
                    v26 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                    [v26 setSliceRect:{v19, v21, v23, v25}];
                    [v14 addObject:v26];
                    ++v17;
                  }

                  while (v15 != v17);
                  v15 = [slices countByEnumeratingWithState:&v34 objects:v52 count:16];
                }

                while (v15);
              }

              [v33 setSlices:v14];
              v8 = v29;
              v4 = v30;
              v10 = v27;
              v9 = v28;
            }

            [v33 setAsset:{objc_msgSend(v12, "asset")}];
            [v33 setProduction:{objc_msgSend(v12, "production")}];
            [objc_msgSend(v12 "production")];
            [v12 copyAttributesInto:v33];
            [objc_msgSend(v12 "keySpec")];
            [objc_msgSend(v33 "keySpec")];
            [v9 addObject:v33];
          }

          _Block_object_dispose(&v39, 8);
          ++v11;
        }

        while (v11 != v32);
        v32 = [v8 countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v32);
    }
  }
}

uint64_t __51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v5 = [objc_msgSend(objc_msgSend(a2 "keySpec")];
    v6 = 40;
    if (v5 == 1)
    {
      v6 = 32;
    }

    v7 = *(a1 + v6);

    return [v7 addObject:a2];
  }

  return result;
}

id *__51__CoreThemeDocument__automaticSRGBGenerationFromP3__block_invoke_2(id *result, void *a2, _BYTE *a3)
{
  if ((*(*(result[6] + 1) + 24) & 1) == 0)
  {
    v4 = result;
    result = [result[4] _matchesAllExceptGamut:objc_msgSend(result[5] andKeySpec:{"keySpec"), objc_msgSend(a2, "keySpec")}];
    if (result)
    {
      *(*(v4[6] + 1) + 24) = 1;
      *a3 = 1;
    }
  }

  return result;
}

- (BOOL)_testRenditionForP3:(id)p3
{
  v8 = 0;
  v7 = 0;
  v3 = [p3 _createImageRefWithURL:objc_msgSend(objc_msgSend(p3 andDocument:"asset") format:"fileURLWithDocument:" vectorBased:{self), self, &v8, &v7}];
  v4 = 0;
  if (v3)
  {
    if (v8 != 1246774599 && v8 != 1212500294)
    {
      v4 = (CUIImageIsWideGamut() & 1) != 0 || CGImageGetBitsPerComponent(v3) >= 9 && CUIImageIsMonochrome();
    }
  }

  CGImageRelease(v3);
  return v4;
}

- (void)_automaticP3GenerationFromSRGB
{
  v50 = *MEMORY[0x277D85DE8];
  if ([(CoreThemeDocument *)self shouldGenerateDisplayGamut:1])
  {
    v31 = [(CoreThemeDocument *)self displayGamutWithIdentifier:1];
    v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"NamedArtworkProduction" withSortDescriptors:0];
    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v44;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v44 != v7)
          {
            objc_enumerationMutation(v3);
          }

          [v4 addObjectsFromArray:{objc_msgSend(objc_msgSend(*(*(&v43 + 1) + 8 * i), "renditions"), "allObjects")}];
        }

        v6 = [v3 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v6);
    }

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke;
    v42[3] = &unk_278EBB3D8;
    v42[4] = self;
    v42[5] = v9;
    [v4 enumerateObjectsUsingBlock:v42];
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v32 = [v9 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v32)
    {
      v30 = *v39;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v39 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v38 + 1) + 8 * j);
          v12 = -[CoreThemeDocument newObjectForEntity:](self, "newObjectForEntity:", [objc_msgSend(v11 "entity")]);
          slices = [v11 slices];
          if ([slices count])
          {
            v33 = j;
            v14 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:{objc_msgSend(slices, "count")}];
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v15 = [slices countByEnumeratingWithState:&v34 objects:v47 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = *v35;
              do
              {
                for (k = 0; k != v16; ++k)
                {
                  if (*v35 != v17)
                  {
                    objc_enumerationMutation(slices);
                  }

                  [*(*(&v34 + 1) + 8 * k) sliceRect];
                  v20 = v19;
                  v22 = v21;
                  v24 = v23;
                  v26 = v25;
                  v27 = [(CoreThemeDocument *)self newObjectForEntity:@"Slice"];
                  [v27 setSliceRect:{v20, v22, v24, v26}];
                  [v14 addObject:v27];
                }

                v16 = [slices countByEnumeratingWithState:&v34 objects:v47 count:16];
              }

              while (v16);
            }

            [v12 setSlices:v14];
            j = v33;
          }

          [v12 setAsset:{objc_msgSend(v11, "asset")}];
          [v12 setProduction:{objc_msgSend(v11, "production")}];
          [objc_msgSend(v11 "production")];
          [v11 copyAttributesInto:v12];
          [objc_msgSend(v11 "keySpec")];
          [objc_msgSend(v12 "keySpec")];
          compressionType = [v11 compressionType];
          if (compressionType == [(CoreThemeDocument *)self compressionTypeWithIdentifier:3])
          {
            [v12 setAllowsHevcCompression:0];
            [v12 setCompressionType:{-[CoreThemeDocument compressionTypeWithIdentifier:](self, "compressionTypeWithIdentifier:", 2)}];
          }
        }

        v32 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v32);
    }
  }
}

void __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(a2 "asset")] & 1) == 0 && objc_msgSend(objc_msgSend(a2, "renditionType"), "identifier") != 1006 && !objc_msgSend(objc_msgSend(objc_msgSend(a2, "keySpec"), "gamut"), "identifier") && !objc_msgSend(objc_msgSend(objc_msgSend(a2, "keySpec"), "glyphWeight"), "identifier") && !objc_msgSend(objc_msgSend(objc_msgSend(a2, "keySpec"), "glyphSize"), "identifier"))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [objc_msgSend(a2 "production")];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_2;
      v15[3] = &unk_278EBB428;
      v15[4] = &v16;
      [v4 enumerateObjectsUsingBlock:v15];
      if ((v17[3] & 1) == 0)
      {
        v13 = 0u;
        v14 = 0u;
        v11 = 0u;
        v12 = 0u;
        v5 = [a2 layerReferences];
        v6 = [v5 countByEnumeratingWithState:&v11 objects:v20 count:16];
        if (v6)
        {
          v7 = *v12;
          while (2)
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v12 != v7)
              {
                objc_enumerationMutation(v5);
              }

              if ([*(a1 + 32) _testRenditionForP3:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "reference")}])
              {
                [*(a1 + 40) addObject:a2];
                goto LABEL_22;
              }
            }

            v6 = [v5 countByEnumeratingWithState:&v11 objects:v20 count:16];
            if (v6)
            {
              continue;
            }

            break;
          }
        }
      }
    }

    else
    {
      v9 = [objc_msgSend(a2 "production")];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_3;
      v10[3] = &unk_278EBB428;
      v10[4] = &v16;
      [v9 enumerateObjectsUsingBlock:v10];
      if ((v17[3] & 1) == 0 && [*(a1 + 32) _testRenditionForP3:a2])
      {
        [*(a1 + 40) addObject:a2];
      }
    }

LABEL_22:
    _Block_object_dispose(&v16, 8);
  }
}

void *__51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [objc_msgSend(objc_msgSend(a2 "keySpec")];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 0;
  }

  return result;
}

void *__51__CoreThemeDocument__automaticP3GenerationFromSRGB__block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [objc_msgSend(objc_msgSend(a2 "keySpec")];
  if (result == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 0;
  }

  return result;
}

- (void)_processModelProductions
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [(CoreThemeDocument *)self allObjectsForEntity:@"ModelIOProduction" withSortDescriptors:0];
  [(NSMutableArray *)self->_cachedModelAssets removeAllObjects];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [objc_msgSend(*(*(&v17 + 1) + 8 * v7) "renditions")];
        v13 = 0u;
        v14 = 0u;
        v15 = 0u;
        v16 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v14;
          do
          {
            v12 = 0;
            do
            {
              if (*v14 != v11)
              {
                objc_enumerationMutation(v8);
              }

              [*(*(&v13 + 1) + 8 * v12++) processModelObjectsInDocument:self];
            }

            while (v10 != v12);
            v10 = [v8 countByEnumeratingWithState:&v13 objects:v21 count:16];
          }

          while (v10);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [v3 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }
}

- (BOOL)featureEnabled:(int)enabled
{
  v3 = *&enabled;
  targetPlatform = [(CoreThemeDocument *)self targetPlatform];
  v7 = targetPlatform;
  if ((targetPlatform | 2) == 2)
  {
    LOBYTE(v8) = 1;
    switch(v3)
    {
      case 1:
      case 3:
        majorVersion = self->_majorVersion;
        if (targetPlatform)
        {
          goto LABEL_62;
        }

        if (majorVersion != 10)
        {
          goto LABEL_73;
        }

        minorVersion = self->_minorVersion;
        if (minorVersion <= 10 && (minorVersion != 10 || self->_patchVersion <= 1))
        {
          goto LABEL_73;
        }

        goto LABEL_53;
      case 2:
        majorVersion = self->_majorVersion;
        if (targetPlatform)
        {
LABEL_62:
          v12 = majorVersion <= 8;
        }

        else
        {
          if (majorVersion >= 10 && self->_minorVersion > 10)
          {
LABEL_53:
            LOBYTE(v8) = 1;
            return v8 & 1;
          }

LABEL_73:
          v12 = majorVersion <= 10;
        }

LABEL_83:
        LOBYTE(v8) = !v12;
        break;
      case 4:
        majorVersion = self->_majorVersion;
        if (!targetPlatform)
        {
          goto LABEL_46;
        }

        goto LABEL_82;
      case 5:
      case 9:
        v11 = self->_majorVersion;
        LOBYTE(v8) = v11 > 9;
        if (targetPlatform)
        {
          return v8 & 1;
        }

        if (v11 >= 10 && self->_minorVersion > 11)
        {
          goto LABEL_53;
        }

        v12 = v11 <= 10;
        goto LABEL_83;
      case 8:
        return v8 & 1;
      case 10:
        majorVersion = self->_majorVersion;
        if (!targetPlatform)
        {
          goto LABEL_51;
        }

        goto LABEL_73;
      case 11:
      case 13:
        majorVersion = self->_majorVersion;
        if (targetPlatform)
        {
          goto LABEL_68;
        }

        if (majorVersion < 10 || self->_minorVersion <= 13)
        {
          goto LABEL_73;
        }

        goto LABEL_53;
      case 12:
        majorVersion = self->_majorVersion;
        if (!targetPlatform)
        {
          goto LABEL_51;
        }

LABEL_68:
        v12 = majorVersion <= 11;
        goto LABEL_83;
      case 14:
        targetPlatform2 = [(CoreThemeDocument *)self targetPlatform];
        majorVersion = self->_majorVersion;
        if (!targetPlatform2)
        {
          goto LABEL_46;
        }

LABEL_82:
        v12 = majorVersion <= 12;
        goto LABEL_83;
      case 15:
        v14 = self->_majorVersion;
        if (targetPlatform)
        {
          v15 = v14 < 11;
        }

        else
        {
          v15 = 0;
        }

        LOBYTE(v8) = v15;
        if (targetPlatform || v14 > 10)
        {
          return v8 & 1;
        }

        v16 = self->_minorVersion < 13;
LABEL_64:
        LOBYTE(v8) = v16;
        return v8 & 1;
      case 16:
        if (!targetPlatform)
        {
          goto LABEL_80;
        }

LABEL_63:
        v16 = self->_majorVersion < 11;
        goto LABEL_64;
      case 17:
        if (targetPlatform)
        {
          return v8 & 1;
        }

        majorVersion = self->_majorVersion;
LABEL_51:
        if (majorVersion >= 10 && self->_minorVersion > 12)
        {
          goto LABEL_53;
        }

        goto LABEL_73;
      case 18:
        if (targetPlatform)
        {
          return v8 & 1;
        }

        majorVersion = self->_majorVersion;
LABEL_46:
        if (majorVersion < 10 || self->_minorVersion <= 14)
        {
          goto LABEL_73;
        }

        goto LABEL_53;
      case 19:
      case 20:
        goto LABEL_80;
      default:
        [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
        goto LABEL_26;
    }
  }

  else
  {
LABEL_26:
    if ([(CoreThemeDocument *)self targetPlatform]== 4)
    {
      LOBYTE(v8) = 0;
      switch(v3)
      {
        case 1:
        case 2:
        case 3:
          v12 = self->_majorVersion <= 1;
          goto LABEL_83;
        case 4:
        case 12:
        case 16:
        case 18:
          return v8 & 1;
        case 5:
        case 9:
          v12 = self->_majorVersion <= 2;
          goto LABEL_83;
        case 8:
        case 17:
        case 19:
        case 20:
          goto LABEL_53;
        case 10:
          v12 = self->_majorVersion <= 3;
          goto LABEL_83;
        case 11:
        case 13:
          v12 = self->_majorVersion <= 4;
          goto LABEL_83;
        case 14:
          v12 = self->_majorVersion <= 5;
          goto LABEL_83;
        case 15:
          v16 = self->_majorVersion < 4;
          goto LABEL_64;
        default:
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
          goto LABEL_58;
      }
    }

    else
    {
LABEL_58:
      if ([(CoreThemeDocument *)self targetPlatform]!= 1 && [(CoreThemeDocument *)self targetPlatform]!= 3)
      {
LABEL_75:
        if ([(CoreThemeDocument *)self targetPlatform]== 5)
        {
          v17 = v3 - 1;
          if (v3 - 1) < 0x14 && ((0xFFF9Fu >> v17))
          {
            v8 = 0x13FFFu >> v17;
            return v8 & 1;
          }

          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
        }

LABEL_80:
        LOBYTE(v8) = 0;
        return v8 & 1;
      }

      LOBYTE(v8) = 1;
      switch(v3)
      {
        case 1:
        case 2:
        case 3:
          majorVersion = self->_majorVersion;
          goto LABEL_62;
        case 4:
        case 5:
        case 9:
          v12 = self->_majorVersion <= 9;
          goto LABEL_83;
        case 8:
        case 17:
          return v8 & 1;
        case 10:
          majorVersion = self->_majorVersion;
          goto LABEL_73;
        case 11:
        case 12:
        case 13:
          majorVersion = self->_majorVersion;
          goto LABEL_68;
        case 14:
          majorVersion = self->_majorVersion;
          goto LABEL_82;
        case 15:
        case 16:
          goto LABEL_63;
        case 18:
        case 19:
        case 20:
          goto LABEL_80;
        default:
          [objc_msgSend(MEMORY[0x277CCA890] "currentHandler")];
          goto LABEL_75;
      }
    }
  }

  return v8 & 1;
}

- (uint64_t)appearanceWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)localizationWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

- (uint64_t)allObjectsForEntity:withSortDescriptors:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [*v0 localizedDescription];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)objectsForEntity:withPredicate:sortDescriptors:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [*v0 localizedDescription];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)newObjectForEntity:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)deleteObjects:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)deleteObject:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedColorProductionsForImportInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [v0 name];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGradientProductionsForImportInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [v0 name];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGradientProductionsForImportInfos:error:.cold.2()
{
  OUTLINED_FUNCTION_0();
  [MEMORY[0x277CCA890] currentHandler];
  v3 = [v0 name];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedArtworkProductionsForAssets:customInfos:skipLastStep:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedArtworkProductionsForAssets:customInfos:skipLastStep:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedTexturesForCustomInfos:referenceFiles:bitSource:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedTexturesForCustomInfos:referenceFiles:bitSource:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedModelsForCustomInfos:referenceFiles:bitSource:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedModelsForCustomInfos:referenceFiles:bitSource:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRecognitionObjectsForAssets:customInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRecognitionObjectsForAssets:customInfos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedGlyphVectorForCustomInfos:referenceFiles:bitSource:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_addLegacyIconAssetsForLayerStack:forAppearance:renderedAppearance:renderingMode:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_tidyUpLayerStacks
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRenditionGroupProductionsForImportInfos:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)createNamedRenditionGroupProductionsForImportInfos:error:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)metadatumForKey:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMetadatum:forKey:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)setMetadatum:forKey:.cold.2()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)checksum
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)catalogGlobals
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)persistentStoreTypeForFileType:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (uint64_t)_updateRenditionPackings:error:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();

  return [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end