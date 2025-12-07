@interface NTKCParmesanAlbumEditor
- (BOOL)_writeImageList:(id)list version:(int64_t)version toDirectory:(id)directory;
- (BOOL)setShuffleSelection:(id)selection withKeyAssetIdentifier:(id)identifier albumName:(id)name;
- (NTKCParmesanAlbumEditor)initWithResourceDirectory:(id)directory forDevice:(id)device shouldFinalize:(BOOL)finalize;
- (id)_fetchSingleAsset;
- (id)localizedShuffleDescription;
- (id)optionsForSingleAsset;
- (id)titleForCollectionWithIdentifier:(id)identifier;
- (void)_createResourceDirectoryForSinglePHAssetWithPreviewOnly:(BOOL)only completion:(id)completion;
- (void)finalizeWithProgress:(id)progress completion:(id)completion;
- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion;
- (void)setAlbumIdentifier:(id)identifier;
- (void)setShouldFinalize:(BOOL)finalize;
@end

@implementation NTKCParmesanAlbumEditor

- (NTKCParmesanAlbumEditor)initWithResourceDirectory:(id)directory forDevice:(id)device shouldFinalize:(BOOL)finalize
{
  finalizeCopy = finalize;
  directoryCopy = directory;
  v35.receiver = self;
  v35.super_class = NTKCParmesanAlbumEditor;
  v9 = [(NTKCompanionResourceDirectoryEditor *)&v35 initWithResourceDirectory:directoryCopy forDevice:device];
  v11 = v9;
  if (v9)
  {
    objc_msgSend_setShouldFinalize_(v9, v10, finalizeCopy);
    v13 = objc_msgSend_readerForResourceDirectory_(NTKParmesanAssetReader, v12, directoryCopy);
    v18 = objc_msgSend_shuffleSelection(v13, v14, v15);
    if (!v18)
    {
      v19 = objc_msgSend_logObject(NTKParmesanFaceBundle, v16, v17);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8340();
      }
    }

    shuffleSelection = v11->_shuffleSelection;
    v11->_shuffleSelection = v18;
    v21 = v18;

    v24 = objc_msgSend_firstObject(v13, v22, v23);
    v27 = objc_msgSend_localIdentifier(v24, v25, v26);
    keyAssetIdentifier = v11->_keyAssetIdentifier;
    v11->_keyAssetIdentifier = v27;

    v31 = objc_msgSend_uuidString(v13, v29, v30);
    uuidString = v11->_uuidString;
    v11->_uuidString = v31;

    albumName = v11->_albumName;
    v11->_albumName = 0;
  }

  return v11;
}

- (void)setAlbumIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v5 = [NTKParmesanShuffleSelection alloc];
    v7 = objc_msgSend_initWithCollection_(v5, v6, identifierCopy);

    shuffleSelection = self->_shuffleSelection;
    self->_shuffleSelection = v7;
  }
}

- (void)setShouldFinalize:(BOOL)finalize
{
  finalizeCopy = finalize;
  if (objc_msgSend_state(self, a2, finalize) < 3)
  {
    if (finalizeCopy)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    objc_msgSend_setState_(self, v5, v8);
  }

  else
  {
    v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF83B0();
    }
  }
}

- (BOOL)setShuffleSelection:(id)selection withKeyAssetIdentifier:(id)identifier albumName:(id)name
{
  v46 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  identifierCopy = identifier;
  nameCopy = name;
  v14 = objc_msgSend_shuffleTypesAsNSNumbers(selectionCopy, v12, v13);
  v17 = objc_msgSend_count(v14, v15, v16);
  v20 = objc_msgSend_collectionIdentifier(selectionCopy, v18, v19);

  isDaily = objc_msgSend_isDaily(selectionCopy, v21, v22);
  if (!v17 && !v20 && (isDaily & 1) == 0)
  {
    v26 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF83F0();
    }

LABEL_15:

    v40 = 0;
    goto LABEL_16;
  }

  if (v17)
  {
    v27 = objc_msgSend_containsObject_(v14, v24, &unk_284ED4650);
    v30 = objc_msgSend_personIdentifiers(selectionCopy, v28, v29);
    v33 = v27 ^ (objc_msgSend_count(v30, v31, v32) == 0);

    if ((v33 & 1) == 0)
    {
      v26 = objc_msgSend_logObject(NTKParmesanFaceBundle, v24, v34);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8460();
      }

      goto LABEL_15;
    }
  }

  if ((objc_msgSend_isEqual_(self->_shuffleSelection, v24, selectionCopy) & 1) == 0)
  {
    v37 = objc_msgSend_logObject(NTKParmesanFaceBundle, v35, v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v42 = 138412546;
      v43 = selectionCopy;
      v44 = 2112;
      v45 = identifierCopy;
      _os_log_impl(&dword_23BF0C000, v37, OS_LOG_TYPE_DEFAULT, "setShuffleSelection: setting new shuffle selection to %@, keyAsset: %@", &v42, 0x16u);
    }

    objc_storeStrong(&self->_shuffleSelection, selection);
    objc_storeStrong(&self->_albumName, name);
    objc_storeStrong(&self->_keyAssetIdentifier, identifier);
    uuidString = self->_uuidString;
    self->_uuidString = 0;

    objc_msgSend_setState_(self, v39, 2);
  }

  v40 = 1;
LABEL_16:

  return v40;
}

- (void)generateGalleryPreviewResourceDirectoryWithCompletion:(id)completion
{
  v38 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = objc_opt_class();
    v8 = *(&buf + 4);
    _os_log_impl(&dword_23BF0C000, v7, OS_LOG_TYPE_DEFAULT, "generateGalleryPreviewResourceDirectoryWithCompletion: generating preview for %@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v34 = 0x3032000000;
  v35 = sub_23BF3374C;
  v36 = sub_23BF3375C;
  v37 = 0;
  v11 = objc_msgSend_state(self, v9, v10);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_23BF33764;
  aBlock[3] = &unk_278BA7480;
  p_buf = &buf;
  v32 = v11;
  aBlock[4] = self;
  v12 = completionCopy;
  v30 = v12;
  v13 = _Block_copy(aBlock);
  if (objc_msgSend_state(self, v14, v15) && objc_msgSend_state(self, v16, v17) <= 2)
  {
    if (objc_msgSend_state(self, v18, v19) != 1)
    {
      objc_msgSend_setState_(self, v21, 3);
      v25 = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_23BF33884;
      block[3] = &unk_278BA74D0;
      block[4] = self;
      v28 = &buf;
      v27 = v13;
      dispatch_async(v25, block);

      goto LABEL_7;
    }

    v23 = objc_msgSend_resourceDirectory(self, v21, v22);
    v24 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v23;

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  (*(v13 + 2))(v13, v20);
LABEL_7:

  _Block_object_dispose(&buf, 8);
}

- (id)localizedShuffleDescription
{
  v4 = objc_msgSend_collectionIdentifier(self->_shuffleSelection, a2, v2);

  shuffleSelection = self->_shuffleSelection;
  if (v4)
  {
    v8 = objc_msgSend_collectionIdentifier(shuffleSelection, v5, v6);
    v10 = objc_msgSend_titleForCollectionWithIdentifier_(self, v9, v8);
  }

  else
  {
    if (objc_msgSend_isDaily(shuffleSelection, v5, v6))
    {
      objc_msgSend_localizedStringForKey_comment_(NTKParmesanFaceBundle, v11, @"PARMESAN_CONTENT_EDIT_OPTION_DYNAMIC_DAILY_TITLE", @"fixed title for the Daily Photo collection");
    }

    else
    {
      objc_msgSend_shuffleName(self->_shuffleSelection, v11, v12);
    }
    v10 = ;
  }

  return v10;
}

- (id)titleForCollectionWithIdentifier:(id)identifier
{
  v24[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9948];
  identifierCopy = identifier;
  v7 = objc_msgSend_sharedPhotoLibrary(v3, v5, v6);
  v10 = objc_msgSend_librarySpecificFetchOptions(v7, v8, v9);

  objc_msgSend_setWantsIncrementalChangeDetails_(v10, v11, 0);
  v12 = MEMORY[0x277CD97B8];
  v24[0] = identifierCopy;
  v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v24, 1);
  v16 = objc_msgSend_fetchAssetCollectionsWithLocalIdentifiers_options_(v12, v15, v14, v10);

  v19 = objc_msgSend_firstObject(v16, v17, v18);
  v22 = objc_msgSend_localizedTitle(v19, v20, v21);

  return v22;
}

- (void)finalizeWithProgress:(id)progress completion:(id)completion
{
  v41 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  completionCopy = completion;
  v10 = objc_msgSend_logObject(NTKParmesanFaceBundle, v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v38 = objc_opt_class();
    v11 = v38;
    _os_log_impl(&dword_23BF0C000, v10, OS_LOG_TYPE_DEFAULT, "finalizeWithProgress:completion: finalizing %@", buf, 0xCu);
  }

  if (!objc_msgSend_state(self, v12, v13) || objc_msgSend_state(self, v14, v15) >= 3)
  {
    v16 = objc_msgSend_logObject(NTKParmesanFaceBundle, v14, v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_msgSend_state(self, v17, v18);
      *buf = 136315394;
      v38 = "[NTKCParmesanAlbumEditor finalizeWithProgress:completion:]";
      v39 = 2048;
      v40 = v19;
      _os_log_impl(&dword_23BF0C000, v16, OS_LOG_TYPE_DEFAULT, "%s: Cannot finalize in state: %ld", buf, 0x16u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_23BF33F18;
    block[3] = &unk_278BA6B68;
    v20 = &v36;
    v36 = completionCopy;
    v21 = MEMORY[0x277D85CD0];
    v22 = block;
LABEL_8:
    dispatch_async(v21, v22);
    goto LABEL_9;
  }

  if (objc_msgSend_state(self, v14, v15) == 1)
  {
    v25 = objc_msgSend_logObject(NTKParmesanFaceBundle, v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v38 = "[NTKCParmesanAlbumEditor finalizeWithProgress:completion:]";
      _os_log_impl(&dword_23BF0C000, v25, OS_LOG_TYPE_INFO, "%s: Unmodified editor, no need to finalize", buf, 0xCu);
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = sub_23BF33F2C;
    v33[3] = &unk_278BA6EF8;
    v20 = &v34;
    v33[4] = self;
    v34 = completionCopy;
    v21 = MEMORY[0x277D85CD0];
    v22 = v33;
    goto LABEL_8;
  }

  objc_msgSend_setState_(self, v23, 4);
  v28 = objc_msgSend_logObject(NTKParmesanFaceBundle, v26, v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    sub_23BFF855C(v28);
  }

  v29 = dispatch_get_global_queue(2, 0);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = sub_23BF33F88;
  v30[3] = &unk_278BA6FC0;
  v20 = &v31;
  v30[4] = self;
  v31 = progressCopy;
  v32 = completionCopy;
  dispatch_async(v29, v30);

LABEL_9:
}

- (id)optionsForSingleAsset
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD9880]);
  v4 = objc_msgSend_predicateWithFormat_(MEMORY[0x277CCAC30], v3, @"(mediaType = %ld) && ((playbackStyle = %ld) || (playbackStyle = %ld))", 1, 1, 3);
  objc_msgSend_setPredicate_(v2, v5, v4);

  v7 = objc_msgSend_sortDescriptorWithKey_ascending_(MEMORY[0x277CCAC98], v6, @"creationDate", 1);
  v17[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v17, 1);
  objc_msgSend_setSortDescriptors_(v2, v10, v9);

  v16 = *MEMORY[0x277CD9AE8];
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, &v16, 1);
  objc_msgSend_addFetchPropertySets_(v2, v13, v12);

  objc_msgSend_setFetchLimit_(v2, v14, 1);

  return v2;
}

- (void)_createResourceDirectoryForSinglePHAssetWithPreviewOnly:(BOOL)only completion:(id)completion
{
  v26[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_23BF3374C;
  v24 = sub_23BF3375C;
  v25 = NTKPhotosCreateResourceDirectory();
  if (v21[5])
  {
    v8 = objc_msgSend__fetchSingleAsset(self, v6, v7);
    if (v8)
    {
      v9 = objc_opt_class();
      v12 = objc_msgSend_localIdentifier(v8, v10, v11);
      v26[0] = v12;
      v14 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v13, v26, 1);
      v15 = v21[5];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = sub_23BF345D4;
      v17[3] = &unk_278BA7520;
      v17[4] = self;
      v19 = &v20;
      v18 = completionCopy;
      objc_msgSend_transcodeAssetsWithIdentifiers_to_completion_(v9, v16, v14, v15, v17);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(&v20, 8);
}

- (id)_fetchSingleAsset
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_shuffleSelection(self, a2, v2);
  v7 = objc_msgSend_collectionIdentifier(v4, v5, v6);

  v12 = objc_msgSend_optionsForSingleAsset(self, v8, v9);
  if (v7)
  {
    v13 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v7;
      _os_log_impl(&dword_23BF0C000, v13, OS_LOG_TYPE_DEFAULT, "NTKCParmesanAlbumEditor: fetching first asset in %@", buf, 0xCu);
    }

    v14 = MEMORY[0x277CD97B8];
    v41 = v7;
    v16 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, &v41, 1);
    v18 = objc_msgSend_fetchAssetCollectionsWithLocalIdentifiers_options_(v14, v17, v16, 0);
    v21 = objc_msgSend_firstObject(v18, v19, v20);

    v23 = objc_msgSend_fetchAssetsInAssetCollection_options_(MEMORY[0x277CD97A8], v22, v21, v12);
    v26 = objc_msgSend_firstObject(v23, v24, v25);

    v29 = objc_msgSend_logObject(NTKParmesanFaceBundle, v27, v28);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v26;
      _os_log_impl(&dword_23BF0C000, v29, OS_LOG_TYPE_DEFAULT, "NTKCParmesanAlbumEditor: fetched asset %@", buf, 0xCu);
    }
  }

  else
  {
    keyAssetIdentifier = self->_keyAssetIdentifier;
    if (keyAssetIdentifier)
    {
      v32 = MEMORY[0x277CD97A8];
      v40 = keyAssetIdentifier;
      v33 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, &v40, 1);
      v35 = objc_msgSend_fetchAssetsWithLocalIdentifiers_options_(v32, v34, v33, v12);
      v26 = objc_msgSend_firstObject(v35, v36, v37);

      v21 = objc_msgSend_logObject(NTKParmesanFaceBundle, v38, v39);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v43 = v26;
        _os_log_impl(&dword_23BF0C000, v21, OS_LOG_TYPE_DEFAULT, "NTKCParmesanAlbumEditor: fetched key asset %@", buf, 0xCu);
      }
    }

    else
    {
      v21 = objc_msgSend_logObject(NTKParmesanFaceBundle, v10, v11);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF8660();
      }

      v26 = 0;
    }
  }

  return v26;
}

- (BOOL)_writeImageList:(id)list version:(int64_t)version toDirectory:(id)directory
{
  v61 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  listCopy = list;
  v10 = objc_opt_new();
  v12 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v11, version);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v13, v12, kParmesanReaderVersionKey);

  objc_msgSend_setObject_forKeyedSubscript_(v10, v14, listCopy, kParmesanReaderImageListKey);
  v17 = objc_msgSend_collectionIdentifier(self->_shuffleSelection, v15, v16);

  if (v17)
  {
    v20 = objc_msgSend_collectionIdentifier(self->_shuffleSelection, v18, v19);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v21, v20, kParmesanReaderAssetCollectionIdentifierKey);
  }

  v22 = objc_msgSend_personIdentifiers(self->_shuffleSelection, v18, v19);
  v25 = objc_msgSend_count(v22, v23, v24);

  if (v25)
  {
    v28 = objc_msgSend_personIdentifiers(self->_shuffleSelection, v26, v27);
    objc_msgSend_setObject_forKeyedSubscript_(v10, v29, v28, kParmesanReaderPeopleIdentifiersKey);
  }

  v30 = objc_msgSend_shuffleTypesAsNSNumbers(self->_shuffleSelection, v26, v27);
  v32 = objc_msgSend_containsObject_(v30, v31, &unk_284ED4650);
  v34 = MEMORY[0x277CBEC28];
  v35 = MEMORY[0x277CBEC38];
  if (v32)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v33, MEMORY[0x277CBEC38], kParmesanReaderHasPeopleKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v33, MEMORY[0x277CBEC28], kParmesanReaderHasPeopleKey);
  }

  if (objc_msgSend_containsObject_(v30, v36, &unk_284ED4668))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v37, v35, kParmesanReaderHasPetsKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v37, v34, kParmesanReaderHasPetsKey);
  }

  if (objc_msgSend_containsObject_(v30, v38, &unk_284ED4680))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v39, v35, kParmesanReaderHasNatureKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v39, v34, kParmesanReaderHasNatureKey);
  }

  if (objc_msgSend_containsObject_(v30, v40, &unk_284ED4698))
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v41, v35, kParmesanReaderHasCityscapesKey);
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v41, v34, kParmesanReaderHasCityscapesKey);
  }

  v44 = MEMORY[0x277CCABB0];
  isDaily = objc_msgSend_isDaily(self->_shuffleSelection, v42, v43);
  v47 = objc_msgSend_numberWithBool_(v44, v46, isDaily);
  objc_msgSend_setObject_forKeyedSubscript_(v10, v48, v47, kParmesanReaderHasDailyPhotosKey);

  uuidString = self->_uuidString;
  if (uuidString)
  {
    objc_msgSend_setObject_forKeyedSubscript_(v10, v49, uuidString, kParmesanReaderUUIDStringKey);
  }

  v51 = objc_msgSend_stringByAppendingPathComponent_(directoryCopy, v49, kParmesanReaderImagelistFileName);
  v54 = objc_msgSend_logObject(NTKParmesanFaceBundle, v52, v53);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v59 = 138412290;
    v60 = v51;
    _os_log_impl(&dword_23BF0C000, v54, OS_LOG_TYPE_DEFAULT, "writing image list to path %@", &v59, 0xCu);
  }

  v56 = objc_msgSend_writeToFile_atomically_(v10, v55, v51, 0);
  if ((v56 & 1) == 0)
  {
    v57 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF86A0();
    }
  }

  return v56;
}

@end