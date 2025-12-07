@interface NTKLeghornFace
+ (BOOL)isRestrictedForDevice:(id)device;
+ (double)defaultWaypointRadius;
+ (id)_alpineInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device;
+ (id)_complicationSlotDescriptors;
+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device;
+ (id)_orderedComplicationSlots;
+ (void)_applyInitialDefaultComplicationsForFace:(id)face forDevice:(id)device;
- (Class)_optionClassForCustomEditMode:(int64_t)mode;
- (double)waypointRadius;
- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)_faceDescription;
- (id)_localizedNameForComplicationSlot:(id)slot;
- (id)_optionAtIndex:(unint64_t)index forCustomEditMode:(int64_t)mode slot:(id)slot;
- (id)curatedGalleryBackgroundColors;
- (id)editOptionSectionControllerForContext:(id)context;
- (id)nightModeConfiguration;
- (int64_t)timeStyle;
- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (unint64_t)_numberOfOptionsForCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)setWaypointRadius:(double)radius;
@end

@implementation NTKLeghornFace

- (int64_t)timeStyle
{
  v2 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, 15, 0);
  v5 = objc_msgSend_timeStyle(v2, v3, v4) != 1;

  return v5;
}

+ (BOOL)isRestrictedForDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    v8 = objc_msgSend_deviceCategory(deviceCopy, v4, v5) == 6 || objc_msgSend_deviceCategory(deviceCopy, v6, v7) == 4;
    v9 = v8 & objc_msgSend_isRunningNapiliGMOrLater(deviceCopy, v6, v7) ^ 1;
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9;
}

+ (id)_complicationSlotDescriptors
{
  v18[5] = *MEMORY[0x277D85DE8];
  v2 = NTKAllSignatureCornerTypes();
  v16 = NTKComplicationTypeRankedListWithDefaultTypes();
  v15 = NTKComplicationTypeRankedListWithDefaultTypes();
  v3 = NTKComplicationTypeRankedListWithDefaultTypes();
  v4 = NTKComplicationTypeRankedListWithDefaultTypes();
  v5 = NTKAllGraphicExtraLargeComplicationTypes();
  v6 = NTKComplicationTypeRankedListWithDefaultTypes();
  v7 = NTKMultiFamilyComplicationSlotDescriptor();

  v17[0] = *MEMORY[0x277D2BF08];
  v8 = NTKComplicationSlotDescriptor();
  v18[0] = v8;
  v17[1] = *MEMORY[0x277D2BF10];
  v9 = NTKComplicationSlotDescriptor();
  v18[1] = v9;
  v17[2] = *MEMORY[0x277D2BEE0];
  v10 = NTKComplicationSlotDescriptor();
  v18[2] = v10;
  v17[3] = *MEMORY[0x277D2BEE8];
  v11 = NTKComplicationSlotDescriptor();
  v17[4] = *MEMORY[0x277D2BEF0];
  v18[3] = v11;
  v18[4] = v7;
  v13 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v12, v18, v17, 5);

  return v13;
}

+ (id)_alpineInitialDefaultComplicationForSlot:(id)slot forDevice:(id)device
{
  v29 = *MEMORY[0x277D85DE8];
  slotCopy = slot;
  deviceCopy = device;
  if (objc_msgSend_isEqualToString_(slotCopy, v7, *MEMORY[0x277D2BF08]))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v8, 43);
    v14 = LABEL_18:;
    goto LABEL_19;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v8, *MEMORY[0x277D2BF10]))
  {
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v9, 7);
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v9, *MEMORY[0x277D2BEF0]))
  {
    if (!objc_msgSend_isRunningInStoreDemoMode(MEMORY[0x277D75128], v10, v11) || !CFPreferencesGetAppBooleanValue(@"StandaloneIsSecured", @"com.apple.Carousel", 0))
    {
      v14 = objc_msgSend_levelComplication(MEMORY[0x277D2BFB0], v12, v13);
LABEL_19:
      v26 = v14;
      goto LABEL_20;
    }

LABEL_17:
    objc_msgSend_anyComplicationOfType_(MEMORY[0x277D2BFB0], v12, 44);
    goto LABEL_18;
  }

  if (objc_msgSend_isEqualToString_(slotCopy, v10, *MEMORY[0x277D2BEE0]))
  {
    if (objc_msgSend_deviceCategory(deviceCopy, v15, v16) != 6)
    {
      goto LABEL_15;
    }

    v19 = objc_opt_new();
    shouldAddSkipperComplication = objc_msgSend_shouldAddSkipperComplication(v19, v20, v21);

    v25 = NTKFoghornFaceBundleLogObject(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v28[0] = 67109120;
      v28[1] = shouldAddSkipperComplication;
      _os_log_impl(&dword_23BEB1000, v25, OS_LOG_TYPE_DEFAULT, "shouldAddSkipperComplication:%{BOOL}d", v28, 8u);
    }

    if (!shouldAddSkipperComplication || (objc_msgSend_satelliteComplication(MEMORY[0x277D2BFB0], v17, v18), (v26 = objc_claimAutoreleasedReturnValue()) == 0))
    {
LABEL_15:
      v14 = objc_msgSend_timerComplicationWithDuration_(MEMORY[0x277D2BFB0], v17, v18, 900.0);
      goto LABEL_19;
    }
  }

  else
  {
    if (objc_msgSend_isEqualToString_(slotCopy, v15, *MEMORY[0x277D2BEE8]))
    {
      goto LABEL_17;
    }

    v26 = 0;
  }

LABEL_20:

  return v26;
}

+ (void)_applyInitialDefaultComplicationsForFace:(id)face forDevice:(id)device
{
  v25 = *MEMORY[0x277D85DE8];
  faceCopy = face;
  deviceCopy = device;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = objc_msgSend__orderedComplicationSlots(self, v8, v9, 0);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v20, v24, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        v18 = objc_msgSend__initialDefaultComplicationForSlot_forDevice_(self, v13, v17, deviceCopy);
        objc_msgSend_setComplication_forSlot_(faceCopy, v19, v18, v17);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v20, v24, 16);
    }

    while (v14);
  }
}

+ (id)_orderedComplicationSlots
{
  v6[5] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D2BF10];
  v6[0] = *MEMORY[0x277D2BF08];
  v6[1] = v2;
  v3 = *MEMORY[0x277D2BEE0];
  v6[2] = *MEMORY[0x277D2BEF0];
  v6[3] = v3;
  v6[4] = *MEMORY[0x277D2BEE8];
  v4 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], a2, v6, 5);

  return v4;
}

- (id)_localizedNameForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if (objc_msgSend_isEqualToString_(slotCopy, v5, *MEMORY[0x277D2BEF0]))
  {
    v6 = NTKFoghornFaceLocalizedString(@"LEGHORN_SLOT_LABEL_CENTER");
  }

  else
  {
    v9.receiver = self;
    v9.super_class = NTKLeghornFace;
    v6 = [(NTKFace *)&v9 _localizedNameForComplicationSlot:slotCopy];
  }

  v7 = v6;

  return v7;
}

- (id)curatedGalleryBackgroundColors
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, a2, 10, 0);
  v5 = objc_msgSend_fullname(v2, v3, v4);
  isEqualToString = objc_msgSend_isEqualToString_(v5, v6, @"leghorn.hero-1");

  v8 = NTKColorWithRGBA();
  if (isEqualToString)
  {
    v15[0] = v8;
    v9 = NTKColorWithRGBA();
    v15[1] = v9;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v15, 2);
  }

  else
  {
    v14[0] = v8;
    v9 = NTKColorWithRGBA();
    v14[1] = v9;
    objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v14, 2);
  }
  v12 = ;

  return v12;
}

- (id)_defaultOptionForCustomEditMode:(int64_t)mode slot:(id)slot
{
  slotCopy = slot;
  v9 = 0;
  if (mode > 15)
  {
    if (mode == 16)
    {
      v10 = objc_msgSend_device(self, v6, v7);
      v12 = objc_msgSend_optionForEverythingForDevice_(NTKLeghornPOIFilterEditOption, v15, v10);
    }

    else
    {
      if (mode != 18)
      {
        goto LABEL_11;
      }

      v10 = objc_msgSend_device(self, v6, v7);
      v12 = objc_msgSend_optionWithFoghornNightMode_forDevice_(NTKFoghornNightModeEditOption, v13, 2, v10);
    }
  }

  else if (mode == 14)
  {
    v10 = objc_msgSend_device(self, v6, v7);
    v12 = objc_msgSend_optionWithHiVizComplicationStyle_forDevice_(NTKLeghornHiVizComplicationStyleEditOption, v14, 2, v10);
  }

  else
  {
    if (mode != 15)
    {
      goto LABEL_11;
    }

    v10 = objc_msgSend_device(self, v6, v7);
    v12 = objc_msgSend_optionWithLeghornTimeStyle_forDevice_(NTKLeghornTimeStyleEditOption, v11, 0, v10);
  }

  v9 = v12;

LABEL_11:

  return v9;
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
  slotCopy = slot;
  if (mode == 16)
  {
    v11 = objc_msgSend_configuration(self, v8, v9);
    objc_msgSend_optionForCustomEditMode_slot_(v11, v12, 16, slotCopy);
  }

  else
  {
    v13 = objc_msgSend__optionClassForCustomEditMode_(self, v8, mode);
    v11 = objc_msgSend_device(self, v14, v15);
    objc_msgSend_optionAtIndex_forDevice_(v13, v16, index, v11);
  }
  v17 = ;

  return v17;
}

- (unint64_t)_indexOfOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 16)
  {
    return 0;
  }

  optionCopy = option;
  v10 = objc_msgSend__optionClassForCustomEditMode_(self, v9, mode);
  v13 = objc_msgSend_device(self, v11, v12);
  v15 = objc_msgSend_indexOfOption_forDevice_(v10, v14, optionCopy, v13);

  return v15;
}

- (void)_noteOptionChangedFrom:(id)from to:(id)to forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = NTKLeghornFace;
  v7 = [(NTKFace *)&v10 _noteOptionChangedFrom:from to:to forCustomEditMode:mode slot:slot];
  if (mode == 16)
  {
    v9 = NTKFoghornFaceBundleLogObject(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[NTKLeghornFace _noteOptionChangedFrom:to:forCustomEditMode:slot:]";
      _os_log_impl(&dword_23BEB1000, v9, OS_LOG_TYPE_DEFAULT, "%s: got here", buf, 0xCu);
    }
  }
}

- (Class)_optionClassForCustomEditMode:(int64_t)mode
{
  if (mode - 14) <= 4 && ((0x17u >> (mode - 14)))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_localizedNameOverrideForCustomEditMode:(int64_t)mode forDevice:(id)device
{
  deviceCopy = device;
  if (mode <= 15)
  {
    if (mode == 14)
    {
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_LEGHORN_HIVIZ_STYLE", v6, @"_COMPANION");
      goto LABEL_11;
    }

    if (mode == 15)
    {
      objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_LEGHORN_TIME_STYLE", v6, @"_COMPANION");
      v8 = LABEL_11:;
      v9 = NTKFoghornFaceLocalizedString(v8);
      goto LABEL_12;
    }

LABEL_8:
    v12.receiver = self;
    v12.super_class = &OBJC_METACLASS___NTKLeghornFace;
    v10 = objc_msgSendSuper2(&v12, sel__localizedNameOverrideForCustomEditMode_forDevice_, mode, deviceCopy);
    goto LABEL_13;
  }

  if (mode == 16)
  {
    objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_LEGHORN_FILTER", v6, @"_COMPANION");
    goto LABEL_11;
  }

  if (mode != 18)
  {
    goto LABEL_8;
  }

  v8 = objc_msgSend_stringByAppendingString_(@"EDIT_MODE_LABEL_NIGHT", v6, @"_COMPANION");
  v9 = NTKCompanionClockFaceLocalizedString();
LABEL_12:
  v10 = v9;

LABEL_13:

  return v10;
}

- (id)nightModeConfiguration
{
  v10.receiver = self;
  v10.super_class = NTKLeghornFace;
  nightModeConfiguration = [(NTKFace *)&v10 nightModeConfiguration];
  v5 = objc_msgSend_selectedOptionForCustomEditMode_slot_(self, v4, 18, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_msgSend_analyticsKey(v5, v6, v7);

    nightModeConfiguration = v8;
  }

  return nightModeConfiguration;
}

+ (double)defaultWaypointRadius
{
  v3 = objc_msgSend_currentLocale(MEMORY[0x277CBEAF8], a2, v2);
  v5 = objc_msgSend_objectForKey_(v3, v4, *MEMORY[0x277CBE718]);
  v8 = objc_msgSend_BOOLValue(v5, v6, v7);

  result = 16093.44;
  if (v8)
  {
    return 15000.0;
  }

  return result;
}

- (double)waypointRadius
{
  v2 = objc_msgSend_customDataForKey_(self, a2, @"radius");
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_msgSend_doubleValue(v2, v3, v4), v6 = v5, v5 < 50.0))
  {
    v7 = objc_opt_class();
    objc_msgSend_defaultWaypointRadius(v7, v8, v9);
    v6 = v10;
  }

  return v6;
}

- (void)setWaypointRadius:(double)radius
{
  v7 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a2, v3, radius);
  objc_msgSend_setCustomData_forKey_(self, v6, v7, @"radius");
}

- (id)_faceDescription
{
  v3 = objc_msgSend__faceDescriptionKey(self, a2, v2);
  v4 = NTKFoghornFaceLocalizedString(v3);

  return v4;
}

- (id)editOptionSectionControllerForContext:(id)context
{
  contextCopy = context;
  v7 = objc_msgSend_collection(contextCopy, v5, v6);
  if (objc_msgSend_mode(v7, v8, v9) == 16)
  {
    v12 = objc_msgSend_tableViewProvider(contextCopy, v10, v11);
    v15 = objc_msgSend_inGallery(contextCopy, v13, v14);
    v18 = objc_msgSend_faceView(contextCopy, v16, v17);
    v19 = [NTKCLeghornFaceDetailContentSectionController alloc];
    v21 = objc_msgSend_initWithTableViewController_face_inGallery_editOptionCollection_faceView_(v19, v20, v12, self, v15, v7, v18);
    v24 = objc_msgSend_requestingViewController(contextCopy, v22, v23);
    objc_msgSend_setParentViewController_(v21, v25, v24);
  }

  else
  {
    v27.receiver = self;
    v27.super_class = NTKLeghornFace;
    v21 = [(NTKFace *)&v27 editOptionSectionControllerForContext:contextCopy];
  }

  return v21;
}

@end