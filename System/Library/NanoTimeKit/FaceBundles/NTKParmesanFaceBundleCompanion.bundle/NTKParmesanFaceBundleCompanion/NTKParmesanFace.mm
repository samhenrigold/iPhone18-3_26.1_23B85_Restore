@interface NTKParmesanFace
+ (BOOL)externalAssetsAreValid:(id)valid;
+ (BOOL)isRestrictedForDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (id)_slotsForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_timePigmentFaceDomain;
+ (id)additionalPigmentFaceDomains;
+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device;
+ (id)upgradeManagerWithFace:(id)face forDevice:(id)device;
- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error;
- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode;
- (BOOL)_sanitizeFaceConfiguration:(id *)configuration;
- (BOOL)applyConfiguration:(id)configuration;
- (BOOL)isValidConfigurationToAddToLibrary;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (id)_createDynamicContentDirectoryFromReader:(id)reader;
- (id)_customEditModes;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_faceDescriptionKey;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_resourceDirectorySnapshotKey;
- (id)_selectDefaultPigmentForStyle:(id)style;
- (id)_storedPlaceholderName;
- (id)addFaceDetailViewController;
- (id)companionGalleryName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)curatedGalleryBackgroundColors;
- (id)editOptionsThatHideEditModes;
- (id)galleryName;
- (id)libraryDetailViewController;
- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)mode;
- (id)trackedPhotosContent;
- (int64_t)_selectedStyleOption;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfDynamicSections;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_commonInit;
- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_reportAdditionalAddedToLibraryMetrics;
- (void)_reportAdditionalDailyConfigurationMetrics;
- (void)_startStreamingAssetsFromReader:(id)reader updateBlock:(id)block completionBlock:(id)completionBlock;
- (void)_updateForResourceDirectoryChange:(id)change;
- (void)applyDefaultConfiguration;
- (void)companionEditorWithAssets:(id)assets completion:(id)completion;
- (void)prepareForSharing;
@end

@implementation NTKParmesanFace

- (id)libraryDetailViewController
{
  v3 = [NTKCParmesanFaceDetailViewController alloc];
  v5 = objc_msgSend_initWithLibraryFace_(v3, v4, self);

  return v5;
}

- (id)addFaceDetailViewController
{
  v3 = [NTKCParmesanFaceDetailViewController alloc];
  v6 = objc_msgSend_externalAssets(self, v4, v5);
  v8 = objc_msgSend_initWithCandidateFace_externalAssets_(v3, v7, self, v6);

  return v8;
}

+ (BOOL)externalAssetsAreValid:(id)valid
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  validCopy = valid;
  v5 = objc_msgSend_countByEnumeratingWithState_objects_count_(validCopy, v4, &v16, v20, 16);
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(validCopy);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0 || objc_msgSend_sourceType(v9, v10, v11, v16) != 2)
        {
          objc_opt_class();
          if ((isKindOfClass | objc_opt_isKindOfClass()))
          {
            continue;
          }
        }

        v14 = 0;
        goto LABEL_13;
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(validCopy, v13, &v16, v20, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

+ (id)sortableFaceWithAssets:(id)assets forDevice:(id)device
{
  assetsCopy = assets;
  deviceCopy = device;
  if (objc_msgSend_supportsPDRCapability_(deviceCopy, v8, 4067975928))
  {
    if (objc_msgSend_externalAssetsAreValid_(self, v9, assetsCopy))
    {
      v12 = objc_msgSend_identifier(NTKParmesanFaceBundle, v10, v11);
      v15 = objc_msgSend_analyticsIdentifier(NTKParmesanFaceBundle, v13, v14);
      v17 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(self, v16, v12, v15, deviceCopy, &unk_284EBA568);
      v19 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v18, 1, deviceCopy);
      objc_msgSend_selectOption_forCustomEditMode_slot_(v17, v20, v19, 12, 0);
      objc_msgSend_setExternalAssets_(v17, v21, assetsCopy);
      if (v17)
      {
        v22 = objc_alloc(MEMORY[0x277D2C018]);
        v24 = objc_msgSend_initWithFace_priority_(v22, v23, v17, 400);
      }

      else
      {
        v24 = 0;
      }

      goto LABEL_11;
    }

    v25 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF70A0(v25);
    }
  }

  v24 = 0;
LABEL_11:

  return v24;
}

- (void)companionEditorWithAssets:(id)assets completion:(id)completion
{
  assetsCopy = assets;
  completionCopy = completion;
  v10 = objc_msgSend_firstObject(assetsCopy, v8, v9);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v14 = objc_msgSend_firstObject(assetsCopy, v12, v13);
  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v18 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_23BF0C000, v18, OS_LOG_TYPE_INFO, "Creating parmesan editor to handle PHAssets", buf, 2u);
    }

    v19 = [NTKCParmesanPhotosEditor alloc];
    v22 = objc_msgSend_device(self, v20, v21);
    v24 = objc_msgSend_initWithResourceDirectory_forDevice_(v19, v23, 0, v22);

    objc_msgSend_addAssetsFromAssetList_(v24, v25, assetsCopy);
LABEL_9:
    completionCopy[2](completionCopy, v24);
    goto LABEL_16;
  }

  if (v15)
  {
    v26 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v38[0] = 0;
      _os_log_impl(&dword_23BF0C000, v26, OS_LOG_TYPE_INFO, "Creating paremsan editor to handle UIImages", v38, 2u);
    }

    v27 = [NTKParmesanImageEditor alloc];
    v30 = objc_msgSend_device(self, v28, v29);
    v24 = objc_msgSend_initForDevice_(v27, v31, v30);

    objc_msgSend_addImages_(v24, v32, assetsCopy);
    goto LABEL_9;
  }

  v24 = objc_msgSend_firstObject(assetsCopy, v16, v17);
  if (v24)
  {
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
  }

  else
  {
    v36 = @"nil";
  }

  v37 = objc_msgSend_logObject(NTKParmesanFaceBundle, v33, v34);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    sub_23BFF70E4(v36, v37);
  }

  completionCopy[2](completionCopy, 0);
LABEL_16:
}

+ (id)_complicationSlotDescriptors
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = NTKAllUtilitySmallFlatComplicationTypes();
  v10[0] = *MEMORY[0x277D2BF00];
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationSlotDescriptor();
  v11[0] = v4;
  v10[1] = *MEMORY[0x277D2BED0];
  v5 = NTKComplicationTypeRankedListWithDefaultTypes();
  v6 = NTKComplicationSlotDescriptor();
  v11[1] = v6;
  v8 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v7, v11, v10, 2);

  return v8;
}

+ (id)_orderedComplicationSlots
{
  v5[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BED0];
  v5[0] = *MEMORY[0x277D2BF00];
  v5[1] = v2;
  v3 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v5, 2);

  return v3;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v4, *MEMORY[0x277D2BF00]))
  {
    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"SLOT_LABEL_%@", @"TOP");
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(slotCopy, v5, *MEMORY[0x277D2BED0]);
    v8 = @"BOTTOM";
    if (!isEqualToString)
    {
      v8 = 0;
    }

    objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v7, @"SLOT_LABEL_%@", v8);
  }
  v9 = ;
  v10 = NTKClockFaceLocalizedString();

  return v10;
}

- (void)_reportAdditionalDailyConfigurationMetrics
{
  v5 = objc_msgSend_shared(NTKParmesanAnalyticsReporter, a2, v2);
  objc_msgSend_sendParmesanFaceSnapshotEvent_(v5, v4, self);
}

- (void)_reportAdditionalAddedToLibraryMetrics
{
  v5 = objc_msgSend_shared(NTKParmesanAnalyticsReporter, a2, v2);
  objc_msgSend_sendAddedNewParmesanFaceEvent_(v5, v4, self);
}

- (id)_customEditModes
{
  v4 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, v2);
  objc_msgSend_addObjectsFromArray_(v4, v5, &unk_284ED4200);
  v8 = objc_msgSend_device(self, v6, v7);
  v9 = NTKShowIndicScriptNumerals();

  if (v9)
  {
    objc_msgSend_addObject_(v4, v10, &unk_284ED4608);
  }

  objc_msgSend_addObjectsFromArray_(v4, v10, &unk_284ED4218);
  v13 = objc_msgSend_copy(v4, v11, v12);

  return v13;
}

- (BOOL)_hasOptionsForCustomEditMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKParmesanFace;
  return [(NTKFace *)&v4 _hasOptionsForCustomEditMode:mode];
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode - 12) <= 7 && ((0x8Fu >> (mode - 12)))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_slotsForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 10)
  {
    v5 = objc_msgSend__colorSlots(self, a2, mode, device);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_defaultSelectedSlotForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  if (mode == 10)
  {
    v5 = @"style-color";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode, slot);
  v8 = objc_msgSend_device(self, v6, v7);
  v10 = objc_msgSend_numberOfOptionsForDevice_(v5, v9, v8);

  return v10;
}

- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v7 = objc_msgSend__optionClassForCustomEditMode_(self, a2, mode);
  v10 = objc_msgSend_device(self, v8, v9);
  v12 = objc_msgSend_optionAtIndex_forDevice_(v7, v11, index, v10);

  return v12;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  v9 = objc_msgSend__optionClassForCustomEditMode_(self, v8, mode);
  v12 = objc_msgSend_device(self, v10, v11);
  v14 = objc_msgSend_indexOfOption_forDevice_(v9, v13, optionCopy, v12);

  return v14;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v8 = objc_msgSend_device(self, a2, mode, slot);
  v9 = 0;
  if (mode <= 13)
  {
    if (mode == 12)
    {
      v12 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v6, 0, v8);
    }

    else
    {
      if (mode != 13)
      {
        goto LABEL_13;
      }

      v12 = objc_msgSend_optionWithTypeface_device_(NTKParmesanTypefaceEditOption, v6, 0, v8);
    }

    goto LABEL_12;
  }

  switch(mode)
  {
    case 14:
      v12 = objc_msgSend_optionWithTime_device_(NTKParmesanTimeEditOption, v6, 0, v8);
LABEL_12:
      v9 = v12;
      break;
    case 15:
      v12 = objc_msgSend_optionWithStyle_device_(NTKParmesanStyleEditOption, v6, 0, v8);
      goto LABEL_12;
    case 19:
      v10 = objc_msgSend_device(self, v6, v7);
      v9 = objc_msgSend_defaultOptionForDevice_(NTKParmesanNumeralsEditOption, v11, v10);

      break;
  }

LABEL_13:

  return v9;
}

- (unint64_t)_numberOfDynamicSections
{
  v2 = kParmesanColorSlots(self, a2);
  v5 = objc_msgSend_count(v2, v3, v4);

  return v5;
}

- (id)_localizedNameForDynamicSectionCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v8 = slotCopy;
  if (mode == 10)
  {
    if (objc_msgSend_isEqualToString_(slotCopy, v7, @"time-color"))
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v9, @"PARMESAN_EDIT_MODE_LABEL_TIME_COLOR", @"[Parmesan] Custom name for time color slot");
      v11 = LABEL_6:;
      goto LABEL_8;
    }

    if (objc_msgSend_isEqualToString_(v8, v9, @"style-color"))
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v10, @"PARMESAN_EDIT_MODE_LABEL_STYLE_COLOR", @"[Parmesan] Custom name for style color slot");
      goto LABEL_6;
    }
  }

  v14.receiver = self;
  v14.super_class = NTKParmesanFace;
  v11 = [(NTKFace *)&v14 _localizedNameForDynamicSectionCustomEditMode:mode slot:v8];
LABEL_8:
  v12 = v11;

  return v12;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode > 13)
  {
    if (mode == 14)
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_POSITION", @"[Parmesan] Custom name for position edit mode");
      goto LABEL_11;
    }

    if (mode == 19)
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_NUMERALS", @"[Parmesan] Custom name for numerals edit mode");
      goto LABEL_11;
    }

LABEL_8:
    v11.receiver = self;
    v11.super_class = &OBJC_METACLASS___NTKParmesanFace;
    v8 = objc_msgSendSuper2(&v11, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, deviceCopy);
    goto LABEL_12;
  }

  if (mode == 12)
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_CONTENT", @"[Parmesan] Custom name for content edit mode");
    goto LABEL_11;
  }

  if (mode != 13)
  {
    goto LABEL_8;
  }

  objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v6, @"PARMESAN_EDIT_MODE_LABEL_TYPEFACE", @"[Parmesan] Custom name for typeface edit mode");
  v8 = LABEL_11:;
LABEL_12:
  v9 = v8;

  return v9;
}

- (id)editOptionsThatHideEditModes
{
  v10[2] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_device(self, a2, v2);
  v5 = objc_msgSend_partiallySupportedEditOptionsForDevice_(NTKParmesanNumeralsEditOption, v4, v3);

  v9[0] = &unk_284ED45F0;
  v9[1] = &unk_284ED45D8;
  v10[0] = v5;
  v10[1] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v10, v9, 2);

  return v7;
}

- (id)localizedExplanationMessageForDisabledEditMode:(int64_t)mode
{
  if (mode == 14)
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, a2, @"PARMESAN_TIME_SIZE_CANNOT_BE_CHANGED_EXPLANATION", @"Time size cannot be changed explanation");
    goto LABEL_5;
  }

  if (mode == 13)
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, a2, @"PARMESAN_TIME_FONT_CANNOT_BE_CHANGED_EXPLANATION", @"Time font cannot be changed explanation");
    v3 = LABEL_5:;
    goto LABEL_7;
  }

  v3 = &stru_284EC2B20;
LABEL_7:

  return v3;
}

- (void)_commonInit
{
  v8.receiver = self;
  v8.super_class = NTKParmesanFace;
  [(NTKFace *)&v8 _commonInit];
  v3 = [NTKParmesanPigmentProviderCoordinator alloc];
  v5 = objc_msgSend_initWithSelectedStyle_(v3, v4, 0);
  pigmentProviderCoordinator = self->_pigmentProviderCoordinator;
  self->_pigmentProviderCoordinator = v5;

  cachedGalleryName = self->_cachedGalleryName;
  self->_cachedGalleryName = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v14.receiver = self;
  v14.super_class = NTKParmesanFace;
  v4 = [(NTKFace *)&v14 copyWithZone:zone];
  v7 = objc_msgSend_copy(self->_cachedGalleryName, v5, v6);
  v8 = v4[21];
  v4[21] = v7;

  v11 = objc_msgSend_copy(self->_cachedResourceDirectorySnapshotKey, v9, v10);
  v12 = v4[23];
  v4[23] = v11;

  return v4;
}

- (void)_updateForResourceDirectoryChange:(id)change
{
  cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
  self->_cachedResourceDirectorySnapshotKey = 0;
}

- (id)_resourceDirectorySnapshotKey
{
  v6 = objc_msgSend__storedPlaceholderName(self, a2, v2);
  if (v6)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v8 = objc_msgSend_resourceDirectory(self, v4, v5);
  if (v8 && (v11 = v8, objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend_resourceDirectory(self, v13, v14), v15 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend_fileExistsAtPath_(v12, v16, v15), v15, v12, v11, v17))
  {
    cachedResourceDirectorySnapshotKey = self->_cachedResourceDirectorySnapshotKey;
    if (cachedResourceDirectorySnapshotKey)
    {
      v7 = cachedResourceDirectorySnapshotKey;
      goto LABEL_11;
    }

    v29 = objc_msgSend_resourceDirectory(self, v18, v19);
    v31 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v30, v29);

    v34 = objc_msgSend_version(v31, v32, v33);
    if (v34 == 2)
    {
      v37 = objc_msgSend_firstObject(v31, v35, v36);
      v39 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v38, 14, 0);
      v41 = objc_msgSend_uniqueSnapshotIdentifierForTimeOption_(v37, v40, v39);
      v42 = self->_cachedResourceDirectorySnapshotKey;
      self->_cachedResourceDirectorySnapshotKey = v41;
    }

    else
    {
      v43 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v35, @"version-outdated-%ld", v34);
      v37 = self->_cachedResourceDirectorySnapshotKey;
      self->_cachedResourceDirectorySnapshotKey = v43;
    }

    v7 = self->_cachedResourceDirectorySnapshotKey;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v21 = self->_cachedResourceDirectorySnapshotKey;
    self->_cachedResourceDirectorySnapshotKey = 0;
  }

  v24 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], v22, v23);
  isTinker = objc_msgSend_isTinker(v24, v25, v26);

  if (isTinker)
  {
    v7 = @"T";
  }

  else
  {
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (id)_faceDescriptionKey
{
  if (NTKPeerDeviceHandlesWideLoads())
  {
    return @"FACE_PARMESAN_DESCRIPTION_24";
  }

  else
  {
    return @"FACE_PARMESAN_DESCRIPTION_06";
  }
}

- (id)_faceDescription
{
  v3 = objc_msgSend__faceDescriptionKey(self, a2, v2);
  v5 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v4, v3, v3);

  return v5;
}

- (id)galleryName
{
  cachedGalleryName = self->_cachedGalleryName;
  if (cachedGalleryName)
  {
    galleryName = cachedGalleryName;
  }

  else
  {
    v6 = objc_msgSend_resourceDirectory(self, a2, v2);
    v8 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v7, v6);
    if (objc_msgSend_contentType(v8, v9, v10) == 2)
    {
      v13 = objc_msgSend_shuffleSelection(v8, v11, v12);
      v16 = objc_msgSend_shuffleName(v13, v14, v15);
      v18 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v17, @"PARMESAN_SHUFFLE", @"Shuffle");
      v20 = objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v19, @"PARMESAN_SHUFFLE_FORMAT", @"%@ %@");
      v22 = objc_msgSend_localizedStringWithFormat_(MEMORY[0x277CCACA8], v21, v20, v16, v18);
      v23 = self->_cachedGalleryName;
      self->_cachedGalleryName = v22;

      galleryName = self->_cachedGalleryName;
    }

    else
    {
      v25.receiver = self;
      v25.super_class = NTKParmesanFace;
      galleryName = [(NTKFace *)&v25 galleryName];
    }
  }

  return galleryName;
}

- (id)companionGalleryName
{
  companionGalleryName = self->_companionGalleryName;
  if (companionGalleryName)
  {
    v4 = companionGalleryName;
  }

  else
  {
    v4 = objc_msgSend_galleryName(self, a2, v2);
  }

  return v4;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  v6 = objc_msgSend_deviceCategory(deviceCopy, v4, v5);
  v7 = _os_feature_enabled_impl();
  v9 = objc_msgSend_supportsPDRCapability_(deviceCopy, v8, 3669496134);
  v11 = objc_msgSend_supportsPDRCapability_(deviceCopy, v10, 4067975928);

  return !((v6 != 1) & (v7 & v9) & v11);
}

- (id)trackedPhotosContent
{
  v3 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, 12, 0);
  v8 = 0;
  if (!objc_msgSend_content(v3, v4, v5))
  {
    v9 = objc_msgSend_resourceDirectory(self, v6, v7);
    v11 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v10, v9);

    v12 = objc_alloc(MEMORY[0x277CCAD78]);
    v15 = objc_msgSend_uuidString(v11, v13, v14);
    v17 = objc_msgSend_initWithUUIDString_(v12, v16, v15);

    v20 = objc_msgSend_contentType(v11, v18, v19);
    switch(v20)
    {
      case 4:
        v28 = objc_alloc(MEMORY[0x277D2C118]);
        v25 = objc_msgSend_initWithDailyUUID_(v28, v29, v17);
        break;
      case 3:
        v26 = objc_alloc(MEMORY[0x277D2C118]);
        v25 = objc_msgSend_initWithAlbumUUID_(v26, v27, v17);
        break;
      case 2:
        v23 = objc_alloc(MEMORY[0x277D2C118]);
        v25 = objc_msgSend_initWithShuffleUUID_(v23, v24, v17);
        break;
      default:
        v30 = objc_msgSend_logObject(NTKParmesanFaceBundle, v21, v22);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          sub_23BFF89B4(v11, self, v30);
        }

        v8 = 0;
        goto LABEL_12;
    }

    v8 = v25;
LABEL_12:
  }

  return v8;
}

- (int64_t)_selectedStyleOption
{
  v2 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, 15, 0);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_style(v2, v3, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)additionalPigmentFaceDomains
{
  v7[4] = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend__timePigmentFaceDomain(self, a2, v2);
  v7[0] = v3;
  v7[1] = @"regular";
  v7[2] = @"duotone";
  v7[3] = @"tritone";
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 4);

  return v5;
}

+ (id)_timePigmentFaceDomain
{
  isGlassEnabled = objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, a2, v2);
  v4 = NTKParmesanColorPigmentCollectionNameGroupTime;
  if (!isGlassEnabled)
  {
    v4 = NTKParmesanColorPigmentCollectionNameGroupTimeFiltered;
  }

  v5 = *v4;

  return v5;
}

- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot
{
  toCopy = to;
  slotCopy = slot;
  v47.receiver = self;
  v47.super_class = NTKParmesanFace;
  [(NTKFace *)&v47 _noteOptionChangedFrom:from to:toCopy forCustomEditMode:mode slot:slotCopy];
  if (objc_msgSend_deviceSupportsPigmentEditOption(self, v12, v13))
  {
    if (mode == 15)
    {
      v31 = objc_msgSend_style(toCopy, v14, v15);
      objc_msgSend_setSelectedStyle_(self->_pigmentProviderCoordinator, v32, v31);
      objc_msgSend__handleColorEditOptionsChanged(self, v33, v34);
      v20 = @"style-color";
      v36 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v35, v31);
      v39 = objc_msgSend_stringValue(v36, v37, v38);
      v26 = objc_msgSend_customDataForKey_(self, v40, v39);

      if (!v26 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend_pigmentNamed_(MEMORY[0x277D2C0B0], v41, v26), (v24 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v42 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v41, v31);
        v24 = objc_msgSend__selectDefaultPigmentForStyle_(self, v43, v42);
      }

      v44 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v41, 10, v20);
      v29 = v44;
      if (v24 && (objc_msgSend_isEqual_(v44, v45, v24) & 1) == 0)
      {
        objc_msgSend_selectOption_forCustomEditMode_slot_(self, v46, v24, 10, v20);
      }

      goto LABEL_14;
    }

    if (mode == 10 && objc_msgSend_isEqualToString_(slotCopy, v14, @"style-color"))
    {
      v20 = objc_msgSend_pigmentEditOption(toCopy, v16, v17);
      if (!v20)
      {
LABEL_15:

        goto LABEL_16;
      }

      v21 = objc_msgSend__selectedStyleOption(self, v18, v19);
      v24 = objc_msgSend_JSONObjectRepresentation(v20, v22, v23);
      v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, v21);
      v29 = objc_msgSend_stringValue(v26, v27, v28);
      objc_msgSend_setCustomData_forKey_(self, v30, v24, v29);
LABEL_14:

      goto LABEL_15;
    }
  }

LABEL_16:
}

- (void)applyDefaultConfiguration
{
  v22 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = NTKParmesanFace;
  [(NTKFace *)&v20 applyDefaultConfiguration];
  v5 = objc_msgSend_device(self, v3, v4);
  v7 = objc_msgSend__orderedValuesForDevice_(NTKParmesanStyleEditOption, v6, v5);

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v7;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v21, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        v15 = objc_msgSend__selectDefaultPigmentForStyle_(self, v11, *(*(&v16 + 1) + 8 * v14++), v16);
      }

      while (v12 != v14);
      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v21, 16);
    }

    while (v12);
  }
}

- (id)_selectDefaultPigmentForStyle:(id)style
{
  pigmentProviderCoordinator = self->_pigmentProviderCoordinator;
  styleCopy = style;
  v8 = objc_msgSend_unsignedIntValue(styleCopy, v6, v7);
  v10 = objc_msgSend_providerForSlot_style_(pigmentProviderCoordinator, v9, @"style-color", v8);
  v12 = objc_msgSend_defaultColorOptionForSlot_(v10, v11, 0);
  v15 = objc_msgSend_JSONObjectRepresentation(v12, v13, v14);
  v18 = objc_msgSend_stringValue(styleCopy, v16, v17);

  objc_msgSend_setCustomData_forKey_(self, v19, v15, v18);

  return v12;
}

- (BOOL)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v7 = objc_msgSend__selectedStyleOption(self, v5, v6);
  objc_msgSend_setSelectedStyle_(self->_pigmentProviderCoordinator, v8, v7);
  v10.receiver = self;
  v10.super_class = NTKParmesanFace;
  LOBYTE(self) = [(NTKFace *)&v10 applyConfiguration:configurationCopy];

  return self;
}

- (BOOL)isValidConfigurationToAddToLibrary
{
  v5 = objc_msgSend__storedPlaceholderName(self, a2, v2);
  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v4, 12, 0);
    v6 = objc_msgSend_content(v7, v8, v9) != 2;
  }

  return v6;
}

- (id)_storedPlaceholderName
{
  v4 = objc_msgSend_placeholderCustomDataKey(NTKParmesanGalleryPlaceholderDataSource, a2, v2);
  v6 = objc_msgSend_customDataForKey_(self, v5, v4);
  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)upgradeManagerWithFace:(id)face forDevice:(id)device
{
  deviceCopy = device;
  faceCopy = face;
  v7 = [NTKParmesanUpgradeManager alloc];
  v9 = objc_msgSend_initWithFace_forDevice_(v7, v8, faceCopy, deviceCopy);

  return v9;
}

- (void)prepareForSharing
{
  v4 = objc_msgSend_currentDevice(MEMORY[0x277CBBAE8], a2, v2);
  v7 = objc_msgSend_optionWithContent_device_(NTKParmesanContentEditOption, v5, 1, v4);

  objc_msgSend_selectOption_forCustomEditMode_slot_(self, v6, v7, 12, 0);
}

- (BOOL)_createResourceDirectorySuitableForSharingAtPath:(id)path error:(id *)error
{
  v33[1] = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v9 = objc_msgSend_resourceDirectory(self, v7, v8);
  v12 = objc_msgSend_resourceDirectory(self, v10, v11);
  v14 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v13, v12);

  v17 = objc_msgSend_uuidString(v14, v15, v16);

  if (v17 && (objc_msgSend__createDynamicContentDirectoryFromReader_(self, v18, v14), v19 = objc_claimAutoreleasedReturnValue(), v9, (v9 = v19) == 0))
  {
    v29 = 0;
  }

  else
  {
    v20 = objc_opt_new();
    v33[0] = v20;
    v22 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v33, 1);

    v23 = objc_alloc(MEMORY[0x277D2C0C8]);
    v25 = objc_msgSend_initWithOperations_(v23, v24, v22);
    v29 = objc_msgSend_scrubDirectoryAtPath_toDestinationPath_error_(v25, v26, v9, pathCopy, error);
    if (v17)
    {
      v30 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v27, v28);
      objc_msgSend_removeItemAtPath_error_(v30, v31, v9, 0);
    }
  }

  return v29;
}

- (id)_createDynamicContentDirectoryFromReader:(id)reader
{
  v74 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  v4 = dispatch_semaphore_create(0);
  v38 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v5 = dispatch_queue_create("com.apple.NanoTimeKit.parmesanGreenfield", v38);
  v70[0] = 0;
  v70[1] = v70;
  v70[2] = 0x2020000000;
  v71 = 0;
  v66 = 0;
  v67 = &v66;
  v68 = 0x2020000000;
  v69 = 1;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = sub_23BF3851C;
  v62[4] = sub_23BF3852C;
  v63 = objc_msgSend_array(MEMORY[0x277CBEB18], v6, v7);
  v8 = NTKNewUniqueTeporaryResourceDirectory();
  v11 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v9, v10);
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v11, v12, v8, 1, 0, 0);

  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF38674;
  aBlock[3] = &unk_278BA7630;
  v13 = v5;
  v53 = v13;
  objc_copyWeak(&v60, &location);
  v56 = v70;
  v57 = &v66;
  v58 = v64;
  v14 = v8;
  v54 = v14;
  v55 = &unk_284EBA708;
  v59 = v62;
  v15 = _Block_copy(aBlock);
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = sub_23BF38DE4;
  v43[3] = &unk_278BA7680;
  v16 = v13;
  v44 = v16;
  objc_copyWeak(&v51, &location);
  v47 = v70;
  v48 = &v66;
  v49 = v62;
  v17 = v14;
  v45 = v17;
  v18 = v4;
  v46 = v18;
  v50 = v64;
  v19 = _Block_copy(v43);
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = sub_23BF39168;
  v40[3] = &unk_278BA76A8;
  v20 = v16;
  v41 = v20;
  v42 = v70;
  v21 = _Block_copy(v40);
  objc_msgSend__startStreamingAssetsFromReader_updateBlock_completionBlock_(self, v22, readerCopy, v15, v19);
  v25 = objc_msgSend_logObject(NTKParmesanFaceBundle, v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v73 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]";
    _os_log_impl(&dword_23BF0C000, v25, OS_LOG_TYPE_DEFAULT, "%s: Start waiting....", buf, 0xCu);
  }

  v26 = dispatch_time(0, 4000000000);
  v29 = dispatch_semaphore_wait(v18, v26);
  if (v29)
  {
    v30 = objc_msgSend_logObject(NTKParmesanFaceBundle, v27, v28);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v73 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]";
      _os_log_impl(&dword_23BF0C000, v30, OS_LOG_TYPE_DEFAULT, "%s: Timed out; cancelling further streaming", buf, 0xCu);
    }

    v21[2](v21);
  }

  v31 = objc_msgSend_logObject(NTKParmesanFaceBundle, v27, v28);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v73 = "[NTKParmesanFace _createDynamicContentDirectoryFromReader:]";
    _os_log_impl(&dword_23BF0C000, v31, OS_LOG_TYPE_DEFAULT, "%s: And proceed!", buf, 0xCu);
  }

  if (v29 || (v67[3] & 1) == 0)
  {
    v35 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v32, v33);
    objc_msgSend_removeItemAtPath_error_(v35, v36, v17, 0);

    v34 = 0;
  }

  else
  {
    v34 = v17;
  }

  objc_destroyWeak(&v51);
  objc_destroyWeak(&v60);

  objc_destroyWeak(&location);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(&v66, 8);
  _Block_object_dispose(v70, 8);

  return v34;
}

- (void)_startStreamingAssetsFromReader:(id)reader updateBlock:(id)block completionBlock:(id)completionBlock
{
  v58 = *MEMORY[0x277D85DE8];
  readerCopy = reader;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  v12 = objc_msgSend_contentType(readerCopy, v10, v11);
  switch(v12)
  {
    case 4:
      v46 = [_TtC30NTKParmesanFaceBundleCompanion10NTKDailyID alloc];
      v49 = objc_msgSend_uuidString(readerCopy, v47, v48);
      v35 = objc_msgSend_initWithUuidString_(v46, v50, v49);

      objc_msgSend_streamAssetsInDaily_updateBlock_completionBlock_(NTKParmesanPhotoProcessor, v51, v35, blockCopy, completionBlockCopy);
      break;
    case 3:
      v37 = [_TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID alloc];
      v40 = objc_msgSend_assetCollectionIdentifier(readerCopy, v38, v39);
      v43 = objc_msgSend_uuidString(readerCopy, v41, v42);
      v35 = objc_msgSend_initWithAlbum_uuidString_(v37, v44, v40, v43);

      objc_msgSend_streamAssetsInAlbum_updateBlock_completionBlock_(NTKParmesanPhotoProcessor, v45, v35, blockCopy, completionBlockCopy);
      break;
    case 2:
      v15 = [_TtC30NTKParmesanFaceBundleCompanion12NTKShuffleID alloc];
      v16 = MEMORY[0x277CBEB98];
      v19 = objc_msgSend_peopleIdentifiers(readerCopy, v17, v18);
      v21 = objc_msgSend_setWithArray_(v16, v20, v19);
      hasPets = objc_msgSend_hasPets(readerCopy, v22, v23);
      hasNature = objc_msgSend_hasNature(readerCopy, v25, v26);
      hasCityscapes = objc_msgSend_hasCityscapes(readerCopy, v28, v29);
      v33 = objc_msgSend_uuidString(readerCopy, v31, v32);
      v35 = objc_msgSend_initWithPeople_pets_nature_cityscape_uuidString_(v15, v34, v21, hasPets, hasNature, hasCityscapes, v33);

      objc_msgSend_streamAssetsInShuffle_updateBlock_completionBlock_(NTKParmesanPhotoProcessor, v36, v35, blockCopy, completionBlockCopy);
      break;
    default:
      v52 = objc_msgSend_logObject(NTKParmesanFaceBundle, v13, v14);
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v54 = 136315394;
        v55 = "[NTKParmesanFace _startStreamingAssetsFromReader:updateBlock:completionBlock:]";
        v56 = 2112;
        v57 = readerCopy;
        _os_log_impl(&dword_23BF0C000, v52, OS_LOG_TYPE_DEFAULT, "%s: Bad content type in reader %@", &v54, 0x16u);
      }

      v35 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v53, *MEMORY[0x277D2C160], 2003, 0);
      blockCopy[2](blockCopy, 0, v35);
      completionBlockCopy[2](completionBlockCopy);
      break;
  }
}

- (BOOL)_sanitizeFaceConfiguration:(id *)configuration
{
  v5 = objc_msgSend_resourceDirectory(self, a2, configuration);
  v7 = objc_msgSend_manifestForResourceDirectory_(NTKParmesanResourcesManifest, v6, v5);

  if (!v7)
  {
    if (configuration)
    {
      objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v8, *MEMORY[0x277D2C158], 1006, 0);
      *configuration = v23 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v23 = 0;
    goto LABEL_10;
  }

  if (!objc_msgSend_validateManifestWithError_(v7, v8, configuration))
  {
    goto LABEL_9;
  }

  v11 = objc_msgSend_resourceDirectory(self, v9, v10);
  v13 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v12, v11);

  v16 = objc_msgSend_count(v13, v14, v15);
  v19 = objc_msgSend_imageList(v7, v17, v18);
  v22 = objc_msgSend_count(v19, v20, v21);
  v23 = v16 == v22;

  if (configuration && v16 != v22)
  {
    *configuration = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v24, *MEMORY[0x277D2C160], 2003, 0);
  }

LABEL_10:
  return v23;
}

- (id)curatedGalleryBackgroundColors
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = NTKColorWithRGBA();
  v7[0] = v2;
  v3 = NTKColorWithRGBA();
  v7[1] = v3;
  v5 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v4, v7, 2);

  return v5;
}

@end