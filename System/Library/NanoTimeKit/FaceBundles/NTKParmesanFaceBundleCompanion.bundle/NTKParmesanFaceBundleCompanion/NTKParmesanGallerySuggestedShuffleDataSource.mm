@interface NTKParmesanGallerySuggestedShuffleDataSource
+ (id)shared;
- (BOOL)_copyFile:(id)file to:(id)to;
- (BOOL)_createResourceDirectoryForShuffle:(id)shuffle asset:(id)asset at:(id)at;
- (NSArray)suggestedShuffleUUIDStrings;
- (id)_cacheDirectoryPath;
- (id)_init;
- (id)_pickAssetFromShuffle:(id)shuffle;
- (id)resourceDirectoryForUUIDString:(id)string;
- (void)_queue_createResourceDirectoryForShuffle:(id)shuffle completion:(id)completion;
- (void)_queue_notifyObserversShuffleUpdated;
- (void)addObserver:(id)observer;
- (void)prepareWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
@end

@implementation NTKParmesanGallerySuggestedShuffleDataSource

+ (id)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF28648;
  block[3] = &unk_278BA7138;
  block[4] = self;
  if (qword_27E1E30F0 != -1)
  {
    dispatch_once(&qword_27E1E30F0, block);
  }

  v2 = qword_27E1E30E8;

  return v2;
}

- (id)_init
{
  v27.receiver = self;
  v27.super_class = NTKParmesanGallerySuggestedShuffleDataSource;
  v2 = [(NTKParmesanGallerySuggestedShuffleDataSource *)&v27 init];
  v5 = v2;
  if (v2)
  {
    v2->_isPrepared = 0;
    v6 = objc_msgSend_array(MEMORY[0x277CBEB18], v3, v4);
    suggestedShuffleIDs = v5->_suggestedShuffleIDs;
    v5->_suggestedShuffleIDs = v6;

    v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v8, v9);
    resourceDirectoriesForUUID = v5->_resourceDirectoriesForUUID;
    v5->_resourceDirectoriesForUUID = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
    v13 = dispatch_queue_create("com.apple.NanoTimeKit.PhotosFaceSuggestedShufflesQ", v12);
    workQ = v5->_workQ;
    v5->_workQ = v13;

    v15 = dispatch_queue_create("com.apple.NanoTimeKit.PhotosFaceSuggestedShuffleNotificationQ", v12);
    observerQ = v5->_observerQ;
    v5->_observerQ = v15;

    v17 = objc_opt_new();
    observers = v5->_observers;
    v5->_observers = v17;

    out_token = 0;
    objc_initWeak(&location, v5);
    v19 = *MEMORY[0x277D3B3C8];
    v20 = v5->_workQ;
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = sub_23BF28848;
    v22[3] = &unk_278BA7160;
    objc_copyWeak(&v24, &location);
    v23 = v5;
    notify_register_dispatch(v19, &out_token, v20, v22);

    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)prepareWithCompletion:(id)completion
{
  v18 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_isPrepared)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy);
    }
  }

  else
  {
    v8 = objc_msgSend_logObject(NTKParmesanFaceBundle, v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_23BF0C000, v8, OS_LOG_TYPE_DEFAULT, "prepareWithCompletion: Preparing shuffles for data source: %@", buf, 0xCu);
    }

    v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v9, v10);
    resourceDirectoriesForUUID = self->_resourceDirectoriesForUUID;
    self->_resourceDirectoriesForUUID = v11;

    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_23BF28AB4;
    v14[3] = &unk_278BA7200;
    v14[4] = self;
    v15 = v7;
    objc_msgSend_fetchGalleryShufflesWithCompletion_(NTKParmesanPhotoProcessor, v13, v14);
  }
}

- (NSArray)suggestedShuffleUUIDStrings
{
  if (self->_isPrepared)
  {
    v4 = objc_msgSend_allKeys(self->_resourceDirectoriesForUUID, a2, v2);
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)resourceDirectoryForUUIDString:(id)string
{
  if (self->_isPrepared)
  {
    v4 = objc_msgSend_objectForKeyedSubscript_(self->_resourceDirectoriesForUUID, a2, string);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observerQ = self->_observerQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BF29140;
  v7[3] = &unk_278BA7228;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQ, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerQ = self->_observerQ;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BF291E4;
  v7[3] = &unk_278BA7228;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_sync(observerQ, v7);
}

- (void)_queue_notifyObserversShuffleUpdated
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_logObject(NTKParmesanFaceBundle, a2, v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_23BF0C000, v4, OS_LOG_TYPE_DEFAULT, "_queue_notifyObserversShuffleUpdated: data source updated: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  observerQ = self->_observerQ;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BF29318;
  block[3] = &unk_278BA7270;
  objc_copyWeak(&v7, buf);
  dispatch_async(observerQ, block);
  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
}

- (void)_queue_createResourceDirectoryForShuffle:(id)shuffle completion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  shuffleCopy = shuffle;
  completionCopy = completion;
  v10 = objc_msgSend__cacheDirectoryPath(self, v8, v9);
  v13 = objc_msgSend_uuidString(shuffleCopy, v11, v12);
  v15 = objc_msgSend_stringByAppendingPathComponent_(v10, v14, v13);

  v33 = 0;
  v18 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v16, v17);
  isDirectory = objc_msgSend_fileExistsAtPath_isDirectory_(v18, v19, v15, &v33);
  v23 = isDirectory;
  if (isDirectory)
  {
    if (v33 != 1)
    {
      v26 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v21, @"com.apple.parmesan.galleryShuffle", 4, 0);
      completionCopy[2](completionCopy, 0, v26);

      goto LABEL_8;
    }

    v24 = objc_msgSend_logObject(NTKParmesanFaceBundle, v21, v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = v15;
      _os_log_impl(&dword_23BF0C000, v24, OS_LOG_TYPE_DEFAULT, "_queue_createResourceDirectoryForShuffle: directory %@ already exists", buf, 0xCu);
    }
  }

  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_23BF295B8;
  v27[3] = &unk_278BA72C0;
  v27[4] = self;
  v28 = v15;
  v31 = completionCopy;
  v29 = shuffleCopy;
  v32 = v23;
  v30 = v18;
  objc_msgSend_fetchAssetsInGalleryShuffle_completion_(NTKParmesanPhotoProcessor, v25, v29, v27);

LABEL_8:
}

- (id)_cacheDirectoryPath
{
  if (qword_27E1E3100 != -1)
  {
    sub_23BFF8174();
  }

  v3 = qword_27E1E30F8;

  return v3;
}

- (id)_pickAssetFromShuffle:(id)shuffle
{
  v45 = *MEMORY[0x277D85DE8];
  shuffleCopy = shuffle;
  v4 = MEMORY[0x277CBEB18];
  v7 = objc_msgSend_count(shuffleCopy, v5, v6);
  v9 = objc_msgSend_arrayWithCapacity_(v4, v8, v7);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v10 = shuffleCopy;
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v39, v44, 16);
  if (v12)
  {
    v15 = v12;
    v16 = *v40;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v10);
        }

        v18 = objc_msgSend_localIdentifier(*(*(&v39 + 1) + 8 * i), v13, v14);
        objc_msgSend_addObject_(v9, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v39, v44, 16);
    }

    while (v15);
  }

  objc_msgSend_sortUsingComparator_(v9, v20, &unk_284EBA668);
  v23 = objc_msgSend_firstObject(v9, v21, v22);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v24 = v10;
  v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v25, &v35, v43, 16);
  if (v28)
  {
    v29 = *v36;
    while (2)
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v36 != v29)
        {
          objc_enumerationMutation(v24);
        }

        v31 = *(*(&v35 + 1) + 8 * j);
        v32 = objc_msgSend_localIdentifier(v31, v26, v27, v35);
        v33 = NTKEqualStrings();

        if (v33)
        {
          v28 = v31;
          goto LABEL_18;
        }
      }

      v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v24, v26, &v35, v43, 16);
      if (v28)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  return v28;
}

- (BOOL)_createResourceDirectoryForShuffle:(id)shuffle asset:(id)asset at:(id)at
{
  v156 = *MEMORY[0x277D85DE8];
  shuffleCopy = shuffle;
  assetCopy = asset;
  atCopy = at;
  v13 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v11, v12);
  v152 = 0;
  objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v13, v14, atCopy, 1, 0, &v152);
  v17 = v152;
  if (v17)
  {
    v18 = objc_msgSend_logObject(NTKParmesanFaceBundle, v15, v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_23BFF8188(atCopy, v18, v19, v20, v21, v22, v23, v24);
    }

    v25 = 0;
  }

  else
  {
    v26 = MEMORY[0x277CCACA8];
    v27 = objc_msgSend_resourceDirectory(assetCopy, v15, v16);
    v28 = v27;
    v31 = objc_msgSend_fileSystemRepresentation(v28, v29, v30);
    v18 = objc_msgSend_stringWithCString_encoding_(v26, v32, v31, 4);

    v150 = 0u;
    v151 = 0u;
    v148 = 0u;
    v149 = 0u;
    v35 = objc_msgSend_layouts(assetCopy, v33, v34);
    v38 = objc_msgSend_allKeys(v35, v36, v37);

    obj = v38;
    v143 = assetCopy;
    v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v148, v155, 16);
    if (v146)
    {
      selfCopy = self;
      v145 = *v149;
      v141 = v13;
      v142 = shuffleCopy;
      while (2)
      {
        for (i = 0; i != v146; ++i)
        {
          if (*v149 != v145)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v148 + 1) + 8 * i);
          v45 = objc_msgSend_layouts(assetCopy, v40, v41, v141, v142);
          v47 = objc_msgSend_objectForKeyedSubscript_(v45, v46, v44);

          v50 = objc_msgSend_baseImageName(v47, v48, v49);
          v52 = objc_msgSend_stringByAppendingPathComponent_(v18, v51, v50);

          v55 = objc_msgSend_baseImageName(v47, v53, v54);
          v57 = objc_msgSend_stringByAppendingPathComponent_(atCopy, v56, v55);

          if (!objc_msgSend__copyFile_to_(selfCopy, v58, v52, v57) || (objc_msgSend_mask(v47, v59, v60), v61 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageName(v61, v62, v63), v64 = objc_claimAutoreleasedReturnValue(), v64, v61, v64) && (objc_msgSend_mask(v47, v65, v66), v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageName(v67, v68, v69), v70 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringByAppendingPathComponent_(v18, v71, v70), v147 = objc_claimAutoreleasedReturnValue(), v70, v67, objc_msgSend_mask(v47, v72, v73), v74 = objc_claimAutoreleasedReturnValue(), objc_msgSend_imageName(v74, v75, v76), v77 = objc_claimAutoreleasedReturnValue(), objc_msgSend_stringByAppendingPathComponent_(atCopy, v78, v77), v79 = v18, v80 = atCopy, v81 = objc_claimAutoreleasedReturnValue(), v77, v74, LODWORD(v74) = objc_msgSend__copyFile_to_(selfCopy, v82, v147, v81), v81, atCopy = v80, v18 = v79, v147, assetCopy = v143, !v74))
          {
            v13 = v141;
            shuffleCopy = v142;
            goto LABEL_37;
          }
        }

        v13 = v141;
        shuffleCopy = v142;
        v146 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v40, &v148, v155, 16);
        if (v146)
        {
          continue;
        }

        break;
      }
    }

    v83 = atCopy;

    v84 = objc_opt_new();
    v87 = objc_msgSend_asDictionary(assetCopy, v85, v86);
    objc_msgSend_addObject_(v84, v88, v87);

    v47 = objc_opt_new();
    v90 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], v89, 2);
    objc_msgSend_setObject_forKeyedSubscript_(v47, v91, v90, kParmesanReaderVersionKey);

    obj = v84;
    objc_msgSend_setObject_forKeyedSubscript_(v47, v92, v84, kParmesanReaderImageListKey);
    v95 = objc_msgSend_people(shuffleCopy, v93, v94);
    v98 = objc_msgSend_count(v95, v96, v97);

    if (v98)
    {
      v101 = objc_msgSend_people(shuffleCopy, v99, v100);
      v104 = objc_msgSend_allObjects(v101, v102, v103);
      objc_msgSend_setObject_forKeyedSubscript_(v47, v105, v104, kParmesanReaderPeopleIdentifiersKey);
    }

    v106 = objc_msgSend_people(shuffleCopy, v99, v100);
    v109 = objc_msgSend_count(v106, v107, v108);
    v111 = MEMORY[0x277CBEC38];
    v112 = MEMORY[0x277CBEC28];
    if (v109)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v110, MEMORY[0x277CBEC38], kParmesanReaderHasPeopleKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v110, MEMORY[0x277CBEC28], kParmesanReaderHasPeopleKey);
    }

    if (objc_msgSend_pets(shuffleCopy, v113, v114))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v115, v111, kParmesanReaderHasPetsKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v115, v112, kParmesanReaderHasPetsKey);
    }

    if (objc_msgSend_nature(shuffleCopy, v116, v117))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v118, v111, kParmesanReaderHasNatureKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v118, v112, kParmesanReaderHasNatureKey);
    }

    if (objc_msgSend_cityscape(shuffleCopy, v119, v120))
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v121, v111, kParmesanReaderHasCityscapesKey);
    }

    else
    {
      objc_msgSend_setObject_forKeyedSubscript_(v47, v121, v112, kParmesanReaderHasCityscapesKey);
    }

    v124 = objc_msgSend_uuidString(shuffleCopy, v122, v123);
    objc_msgSend_setObject_forKeyedSubscript_(v47, v125, v124, kParmesanReaderUUIDStringKey);

    atCopy = v83;
    v52 = objc_msgSend_stringByAppendingPathComponent_(v83, v126, kParmesanReaderImagelistFileName);
    v129 = objc_msgSend_logObject(NTKParmesanFaceBundle, v127, v128);
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v154 = v52;
      _os_log_impl(&dword_23BF0C000, v129, OS_LOG_TYPE_DEFAULT, "writing image list to path %@", buf, 0xCu);
    }

    if (objc_msgSend_writeToFile_atomically_(v47, v130, v52, 0))
    {

      v25 = 1;
      assetCopy = v143;
    }

    else
    {
      v57 = objc_msgSend_logObject(NTKParmesanFaceBundle, v131, v132);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        sub_23BFF81F4(v52, v57, v133, v134, v135, v136, v137, v138);
      }

      assetCopy = v143;
LABEL_37:

      objc_msgSend_removeItemAtPath_error_(v13, v139, atCopy, 0);
      v25 = 0;
    }

    v17 = 0;
  }

  return v25;
}

- (BOOL)_copyFile:(id)file to:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  toCopy = to;
  v9 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v7, v8);
  v16 = 0;
  objc_msgSend_copyItemAtPath_toPath_error_(v9, v10, fileCopy, toCopy, &v16);
  v11 = v16;

  if (v11)
  {
    v14 = objc_msgSend_logObject(NTKParmesanFaceBundle, v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v18 = fileCopy;
      v19 = 2112;
      v20 = toCopy;
      v21 = 2112;
      v22 = v11;
      _os_log_error_impl(&dword_23BF0C000, v14, OS_LOG_TYPE_ERROR, "_createResourceDirectoryForShuffle: cannot copy %@ to %@, error == %@", buf, 0x20u);
    }
  }

  return v11 == 0;
}

@end