@interface NTKParmesanFaceBundle
+ (BOOL)_isBridgeOrClockFace;
- (BOOL)_haveSuggestedShuffleData;
- (BOOL)useDynamicCollectionForDevice:(id)device;
- (NTKParmesanFaceBundle)init;
- (id)_allPlaceholderFacesForDevice:(id)device;
- (id)_emptyFaceForDevice:(id)device;
- (id)_fetchCurrentSuggestedShuffleFacesForDevice:(id)device;
- (id)_galleryEditOptionsForDevice:(id)device;
- (id)_galleryPigmentsForDevice:(id)device;
- (id)_heroPlaceholderFaceForDevice:(id)device;
- (id)_placeholderFaceForDevice:(id)device name:(id)name;
- (id)_randomPlaceholderFaceForDevice:(id)device;
- (id)galleryDescriptionForDevice:(id)device;
- (id)galleryDescriptionText;
- (id)galleryFacesForDevice:(id)device;
- (id)galleryRowPrioritiesForDevice:(id)device;
- (id)heroFacesForDevice:(id)device;
- (int64_t)_newFacesGroupZOrderForDevice:(id)device;
- (void)_applyConfigurationsForDevice:(id)device toFaces:(id)faces usingPlaceholders:(BOOL)placeholders;
- (void)_waitForGalleryFaceDirectories;
- (void)dealloc;
- (void)shuffleDidUpdate;
@end

@implementation NTKParmesanFaceBundle

- (NTKParmesanFaceBundle)init
{
  v11.receiver = self;
  v11.super_class = NTKParmesanFaceBundle;
  v2 = [(NTKFaceBundle *)&v11 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (objc_msgSend__isBridgeOrClockFace(v3, v4, v5))
    {
      v8 = objc_msgSend__suggestedShuffleData(v2, v6, v7);
      objc_msgSend_addObserver_(v8, v9, v2);
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = objc_opt_class();
  if (objc_msgSend__isBridgeOrClockFace(v3, v4, v5))
  {
    v8 = objc_msgSend__suggestedShuffleData(self, v6, v7);
    objc_msgSend_removeObserver_(v8, v9, self);
  }

  v10.receiver = self;
  v10.super_class = NTKParmesanFaceBundle;
  [(NTKParmesanFaceBundle *)&v10 dealloc];
}

- (id)galleryDescriptionForDevice:(id)device
{
  if (objc_msgSend_isTinker(device, a2, device))
  {
    objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v4, @"FACE_PARMESAN_GALLERY_PLACEHOLDER_TINKER_DESCRIPTION", @"Parmesan Description");
  }

  else
  {
    objc_msgSend_galleryDescriptionText(self, v4, v5);
  }
  v6 = ;

  return v6;
}

- (id)galleryDescriptionText
{
  if (NTKPeerDeviceHandlesWideLoads())
  {
    v3 = @"FACE_PARMESAN_GALLERY_DESCRIPTION_24";
  }

  else
  {
    v3 = @"FACE_PARMESAN_GALLERY_DESCRIPTION_06";
  }

  return objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v2, v3, @"Parmesan Description");
}

- (id)heroFacesForDevice:(id)device
{
  v52 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v51 = objc_opt_class();
    v8 = v51;
    _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_INFO, "%@: Generating hero faces for device", buf, 0xCu);
  }

  v10 = objc_msgSend_supportsPDRCapability_(deviceCopy, v9, 3669496134);
  v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v11, v12);
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = objc_opt_class();
      *buf = 138412290;
      v51 = v15;
      v16 = v15;
      _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_INFO, "%@: Getting gallery shuffles for hero face", buf, 0xCu);
    }

    objc_msgSend__waitForGalleryFaceDirectories(self, v17, v18);
    haveSuggestedShuffleData = objc_msgSend__haveSuggestedShuffleData(self, v19, v20);
    v24 = objc_msgSend_logObject(NTKParmesanFaceBundle, v22, v23);
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (haveSuggestedShuffleData)
    {
      if (v25)
      {
        *buf = 136315138;
        v51 = "[NTKParmesanFaceBundle heroFacesForDevice:]";
        _os_log_impl(&dword_23BF0C000, v24, OS_LOG_TYPE_DEFAULT, "%s — have shuffle data; show first as hero face", buf, 0xCu);
      }

      v13 = objc_msgSend__emptyFaceForDevice_(self, v26, deviceCopy);
      v29 = objc_msgSend__suggestedShuffleData(self, v27, v28);
      v32 = objc_msgSend_suggestedShuffleUUIDStrings(v29, v30, v31);
      v35 = objc_msgSend_firstObject(v32, v33, v34);

      v37 = objc_msgSend_resourceDirectoryForUUIDString_(v29, v36, v35);
      objc_msgSend_setResourceDirectoryByTransferringOwnership_(v13, v38, v37);
    }

    else
    {
      if (v25)
      {
        *buf = 136315138;
        v51 = "[NTKParmesanFaceBundle heroFacesForDevice:]";
        _os_log_impl(&dword_23BF0C000, v24, OS_LOG_TYPE_DEFAULT, "%s — no shuffle data; show placeholder as hero face", buf, 0xCu);
      }

      v13 = objc_msgSend__heroPlaceholderFaceForDevice_(self, v42, deviceCopy);
    }

    v43 = objc_alloc(MEMORY[0x277D2C018]);
    v45 = objc_msgSend_initWithFace_priority_(v43, v44, v13, 1700);
    v47 = v45;
    if (v45)
    {
      v49 = v45;
      v41 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v46, &v49, 1);
    }

    else
    {
      v41 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    if (v14)
    {
      v39 = objc_opt_class();
      *buf = 138412290;
      v51 = v39;
      v40 = v39;
      _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_INFO, "%@: Device doesn't support necessary capabilities, returning no hero gallery faces", buf, 0xCu);
    }

    v41 = MEMORY[0x277CBEBF8];
  }

  return v41;
}

- (BOOL)useDynamicCollectionForDevice:(id)device
{
  if (objc_msgSend_isTinker(device, a2, device))
  {
    return 0;
  }

  return objc_msgSend__haveSuggestedShuffleData(self, v4, v5);
}

- (id)galleryRowPrioritiesForDevice:(id)device
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = &unk_284ED43E0;
  v6[0] = &unk_284ED43F8;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v6, &v5, 1);

  return v3;
}

- (id)galleryFacesForDevice:(id)device
{
  v40 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (objc_msgSend__haveSuggestedShuffleData(self, v5, v6))
  {
    v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "[NTKParmesanFaceBundle galleryFacesForDevice:]";
      _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "%s — have shuffle data; populate gallery with suggested shuffle faces", buf, 0xCu);
    }

    v11 = objc_msgSend__fetchCurrentSuggestedShuffleFacesForDevice_(self, v10, deviceCopy);
    v14 = objc_msgSend_count(v11, v12, v13);
  }

  else
  {
    v11 = 0;
    v14 = objc_msgSend_count(0, v7, v8);
  }

  if (v14)
  {
    objc_msgSend__applyConfigurationsForDevice_toFaces_usingPlaceholders_(self, v15, deviceCopy, v11, 0);
    if (objc_msgSend_isRunningNapiliGMOrLater(deviceCopy, v17, v18))
    {
      v20 = objc_msgSend__allPlaceholderFacesForDevice_(self, v19, deviceCopy);
      objc_msgSend__applyConfigurationsForDevice_toFaces_usingPlaceholders_(self, v21, deviceCopy, v20, 1);
      v23 = objc_msgSend_predicateWithBlock_(MEMORY[0x277CCAC30], v22, &unk_284EBA588);
      v25 = objc_msgSend_filteredArrayUsingPredicate_(v20, v24, v23);

      v27 = objc_msgSend_arrayByAddingObjectsFromArray_(v11, v26, v25);

      v11 = v27;
    }
  }

  else
  {
    v28 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v39 = "[NTKParmesanFaceBundle galleryFacesForDevice:]";
      _os_log_impl(&dword_23BF0C000, v28, OS_LOG_TYPE_DEFAULT, "%s — no shuffle data; showing placeholder faces in gallery", buf, 0xCu);
    }

    if ((_os_feature_enabled_impl() & 1) != 0 || objc_msgSend_isRunningNapiliGMOrLater(deviceCopy, v29, v30))
    {
      v31 = objc_msgSend__allPlaceholderFacesForDevice_(self, v29, deviceCopy);

      objc_msgSend__applyConfigurationsForDevice_toFaces_usingPlaceholders_(self, v32, deviceCopy, v31, 1);
    }

    else
    {
      v33 = objc_msgSend__randomPlaceholderFaceForDevice_(self, v29, deviceCopy);
      v35 = v33;
      if (v33)
      {
        v37 = v33;
        v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v34, &v37, 1);
      }

      else
      {
        v31 = MEMORY[0x277CBEBF8];
      }
    }

    v11 = v31;
  }

  return v11;
}

- (id)_fetchCurrentSuggestedShuffleFacesForDevice:(id)device
{
  v47 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  objc_msgSend__waitForGalleryFaceDirectories(self, v5, v6);
  v9 = objc_msgSend__suggestedShuffleData(self, v7, v8);
  v12 = objc_msgSend_array(MEMORY[0x277CBEB18], v10, v11);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v15 = objc_msgSend_suggestedShuffleUUIDStrings(v9, v13, v14, 0);
  v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v38, v46, 16);
  if (v17)
  {
    v19 = v17;
    v20 = *v39;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v39 != v20)
        {
          objc_enumerationMutation(v15);
        }

        v22 = *(*(&v38 + 1) + 8 * i);
        v23 = objc_msgSend__emptyFaceForDevice_(self, v18, deviceCopy);
        v25 = objc_msgSend_resourceDirectoryForUUIDString_(v9, v24, v22);
        objc_msgSend_setResourceDirectoryByTransferringOwnership_(v23, v26, v25);
        objc_msgSend_addObject_(v12, v27, v23);
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v38, v46, 16);
    }

    while (v19);
  }

  v30 = objc_msgSend_logObject(NTKParmesanFaceBundle, v28, v29);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v33 = objc_msgSend_count(v12, v31, v32);
    *buf = 136315394;
    v43 = "[NTKParmesanFaceBundle _fetchCurrentSuggestedShuffleFacesForDevice:]";
    v44 = 2048;
    v45 = v33;
    _os_log_impl(&dword_23BF0C000, v30, OS_LOG_TYPE_DEFAULT, "%s — received [%lu] suggested shuffle faces", buf, 0x16u);
  }

  v36 = objc_msgSend_copy(v12, v34, v35);

  return v36;
}

- (void)_applyConfigurationsForDevice:(id)device toFaces:(id)faces usingPlaceholders:(BOOL)placeholders
{
  deviceCopy = device;
  facesCopy = faces;
  v11 = objc_msgSend__galleryEditOptionsForDevice_(self, v10, deviceCopy);
  v13 = objc_msgSend_objectForKeyedSubscript_(v11, v12, &unk_284ED4410);
  v15 = objc_msgSend_objectForKeyedSubscript_(v11, v14, &unk_284ED4428);
  v17 = objc_msgSend_objectForKeyedSubscript_(v11, v16, &unk_284ED4440);
  v19 = objc_msgSend_objectForKeyedSubscript_(v11, v18, &unk_284ED4458);
  v21 = objc_msgSend__galleryPigmentsForDevice_(self, v20, deviceCopy);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = sub_23BF1EE50;
  v29[3] = &unk_278BA6D70;
  placeholdersCopy = placeholders;
  v30 = v13;
  v31 = deviceCopy;
  v32 = v15;
  v33 = v17;
  v34 = v19;
  v35 = v21;
  selfCopy = self;
  v22 = v21;
  v23 = v19;
  v24 = v17;
  v25 = v15;
  v26 = deviceCopy;
  v27 = v13;
  objc_msgSend_enumerateObjectsUsingBlock_(facesCopy, v28, v29);
}

- (id)_galleryEditOptionsForDevice:(id)device
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(device, a2, device))
  {
    v8[0] = &unk_284ED4410;
    v8[1] = &unk_284ED4428;
    v9[0] = &unk_284ED4140;
    v9[1] = &unk_284ED4158;
    v8[2] = &unk_284ED4440;
    v8[3] = &unk_284ED4458;
    v9[2] = &unk_284ED4170;
    v9[3] = &unk_284ED4188;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v9, v8, 4);
  }

  else
  {
    v6[0] = &unk_284ED4410;
    v6[1] = &unk_284ED4428;
    v7[0] = &unk_284ED41A0;
    v7[1] = &unk_284ED41B8;
    v6[2] = &unk_284ED4440;
    v6[3] = &unk_284ED4458;
    v7[2] = &unk_284ED41D0;
    v7[3] = &unk_284ED41E8;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, v7, v6, 4);
  }
  v4 = ;

  return v4;
}

- (id)_galleryPigmentsForDevice:(id)device
{
  v69[6] = *MEMORY[0x277D85DE8];
  if (objc_msgSend_isRunningNapiliGMOrLater(device, a2, device) && objc_msgSend_isGlassEnabled(_TtC30NTKParmesanFaceBundleCompanion23DigitalTimeViewFeatures, v3, v4))
  {
    v67 = @"time-color";
    v68 = @"time.glass_05";
    v5 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, &v68, &v67, 1);
    v69[0] = v5;
    v65 = @"time-color";
    v66 = @"time.glass_05";
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, &v66, &v65, 1);
    v69[1] = v7;
    v63 = @"time-color";
    v64 = *MEMORY[0x277D2C5D0];
    v9 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v8, &v64, &v63, 1);
    v69[2] = v9;
    v10 = *MEMORY[0x277D2C320];
    v61[0] = @"time-color";
    v61[1] = @"style-color";
    v62[0] = v10;
    v62[1] = @"tritone.tritone-01";
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v62, v61, 2);
    v69[3] = v12;
    v59 = @"time-color";
    v60 = @"time.glass_05";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v13, &v60, &v59, 1);
    v69[4] = v14;
    v57 = @"time-color";
    v58 = @"time.vibrant";
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, &v58, &v57, 1);
    v69[5] = v16;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v17, v69, 6);
  }

  else
  {
    v54 = @"time-color";
    v55 = @"time-filtered.vibrant";
    v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v3, &v55, &v54, 1);
    v56[0] = v37;
    v19 = *MEMORY[0x277D2C4B0];
    v52[0] = @"time-color";
    v52[1] = @"style-color";
    v53[0] = v19;
    v53[1] = @"tritone.tritone-01";
    v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v53, v52, 2);
    v56[1] = v7;
    v50 = @"time-color";
    v51 = *MEMORY[0x277D2C5D0];
    v21 = v51;
    v23 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, &v51, &v50, 1);
    v56[2] = v23;
    v48 = @"time-color";
    v49 = *MEMORY[0x277D2C740];
    v12 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v24, &v49, &v48, 1);
    v56[3] = v12;
    v46 = @"time-color";
    v47 = @"time-filtered.vibrant";
    v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v25, &v47, &v46, 1);
    v56[4] = v14;
    v44 = @"time-color";
    v45 = v21;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, &v45, &v44, 1);
    v56[5] = v16;
    v42 = @"time-color";
    v43 = @"time-filtered.vibrant";
    v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, &v43, &v42, 1);
    v56[6] = v28;
    v29 = *MEMORY[0x277D2C3B8];
    v40[0] = @"time-color";
    v40[1] = @"style-color";
    v30 = *MEMORY[0x277D2C368];
    v41[0] = v29;
    v41[1] = v30;
    v32 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v31, v41, v40, 2);
    v56[7] = v32;
    v38 = @"time-color";
    v39 = @"time-filtered.vibrant";
    v34 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v33, &v39, &v38, 1);
    v56[8] = v34;
    v18 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v56, 9);

    v9 = v23;
    v5 = v37;
  }

  return v18;
}

- (int64_t)_newFacesGroupZOrderForDevice:(id)device
{
  deviceCopy = device;
  if (objc_msgSend_deviceCategory(deviceCopy, v4, v5) == 4 || objc_msgSend_deviceCategory(deviceCopy, v6, v7) == 6 || objc_msgSend_collectionType(deviceCopy, v8, v9) == 5)
  {
    v10 = 5000;
  }

  else if (NTKShowHardwareSpecificFaces())
  {
    v10 = 5000;
  }

  else
  {
    v10 = 8000;
  }

  return v10;
}

+ (BOOL)_isBridgeOrClockFace
{
  if (CLKIsBridge())
  {
    return 1;
  }

  return MEMORY[0x28210D970]();
}

- (id)_emptyFaceForDevice:(id)device
{
  deviceCopy = device;
  v4 = objc_opt_class();
  v7 = objc_msgSend_identifier(v4, v5, v6);
  v8 = objc_opt_class();
  v11 = objc_msgSend_analyticsIdentifier(v8, v9, v10);
  v13 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(NTKParmesanFace, v12, v7, v11, deviceCopy, &unk_284EBA5C8);

  return v13;
}

- (id)_heroPlaceholderFaceForDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = objc_msgSend_heroPlaceholderName(NTKParmesanGalleryPlaceholderDataSource, v5, v6);
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[NTKParmesanFaceBundle _heroPlaceholderFaceForDevice:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "%s — creating placeholder hero face with name: [%@]", &v14, 0x16u);
  }

  v12 = objc_msgSend__placeholderFaceForDevice_name_(self, v11, deviceCopy, v7);

  return v12;
}

- (id)_randomPlaceholderFaceForDevice:(id)device
{
  v18 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v7 = objc_msgSend_randomPlaceholderName(NTKParmesanGalleryPlaceholderDataSource, v5, v6);
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315394;
    v15 = "[NTKParmesanFaceBundle _randomPlaceholderFaceForDevice:]";
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "%s — random placeholder face with name: [%@]", &v14, 0x16u);
  }

  v12 = objc_msgSend__placeholderFaceForDevice_name_(self, v11, deviceCopy, v7);

  return v12;
}

- (id)_allPlaceholderFacesForDevice:(id)device
{
  v31 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v6 = objc_msgSend_placeholderNamesForDevice_(NTKParmesanGalleryPlaceholderDataSource, v5, deviceCopy);
  v7 = MEMORY[0x277CBEB18];
  v10 = objc_msgSend_count(v6, v8, v9);
  v12 = objc_msgSend_arrayWithCapacity_(v7, v11, v10);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = v6;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v26, v30, 16);
  if (v15)
  {
    v17 = v15;
    v18 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v18)
        {
          objc_enumerationMutation(v13);
        }

        v20 = objc_msgSend__placeholderFaceForDevice_name_(self, v16, deviceCopy, *(*(&v26 + 1) + 8 * i), v26);
        objc_msgSend_addObject_(v12, v21, v20);
      }

      v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v26, v30, 16);
    }

    while (v17);
  }

  v24 = objc_msgSend_copy(v12, v22, v23);

  return v24;
}

- (id)_placeholderFaceForDevice:(id)device name:(id)name
{
  deviceCopy = device;
  nameCopy = name;
  v9 = objc_msgSend_configurationForName_(NTKParmesanGalleryPlaceholderDataSource, v8, nameCopy);
  v12 = objc_msgSend_faceClass(self, v10, v11);
  v13 = objc_opt_class();
  v16 = objc_msgSend_identifier(v13, v14, v15);
  v17 = objc_opt_class();
  v20 = objc_msgSend_analyticsIdentifier(v17, v18, v19);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23BF202E0;
  v27[3] = &unk_278BA6D98;
  v28 = nameCopy;
  v29 = deviceCopy;
  v30 = v9;
  v21 = v9;
  v22 = deviceCopy;
  v23 = nameCopy;
  v25 = objc_msgSend_bundledFaceWithIdentifier_analyticsIdentifier_forDevice_initCustomization_(v12, v24, v16, v20, v22, v27);

  return v25;
}

- (BOOL)_haveSuggestedShuffleData
{
  objc_msgSend__waitForGalleryFaceDirectories(self, a2, v2);
  v6 = objc_msgSend__suggestedShuffleData(self, v4, v5);
  v9 = objc_msgSend_suggestedShuffleUUIDStrings(v6, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11) != 0;

  return v12;
}

- (void)_waitForGalleryFaceDirectories
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = objc_msgSend__suggestedShuffleData(selfCopy, v3, v4);
  if ((objc_msgSend_isPrepared(v5, v6, v7) & 1) == 0)
  {
    v8 = dispatch_semaphore_create(0);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = sub_23BF2052C;
    v12[3] = &unk_278BA6DC0;
    v9 = v8;
    v13 = v9;
    objc_msgSend_prepareWithCompletion_(v5, v10, v12);
    v11 = dispatch_time(0, 2000000000);
    dispatch_semaphore_wait(v9, v11);
  }

  objc_sync_exit(selfCopy);
}

- (void)shuffleDidUpdate
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_23BF0C000, v4, OS_LOG_TYPE_DEFAULT, "shuffleDidUpdate: Waiting for gallery directories for bundle: %@", &v12, 0xCu);
  }

  objc_msgSend__waitForGalleryFaceDirectories(self, v5, v6);
  v9 = objc_msgSend_logObject(NTKParmesanFaceBundle, v7, v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    selfCopy2 = self;
    _os_log_impl(&dword_23BF0C000, v9, OS_LOG_TYPE_DEFAULT, "shuffleDidUpdate: Notifying observers gallery faces updated for bundle: %@", &v12, 0xCu);
  }

  objc_msgSend_notifyObserversGalleryFacesDidUpdate(self, v10, v11);
}

@end