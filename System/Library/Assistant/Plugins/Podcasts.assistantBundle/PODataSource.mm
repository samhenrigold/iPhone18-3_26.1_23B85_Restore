@interface PODataSource
+ (id)sharedInstance;
- (BOOL)isPodcastDataStale;
- (BOOL)isPodcastRevisionDataStale;
- (BOOL)isPodcastsInstalled;
- (NSMutableArray)podcastRevisions;
- (NSMutableDictionary)podcastCollectionsByUUID;
- (NSMutableDictionary)podcastStationsByUUID;
- (PODataSource)initWithPlistPath:(id)path;
- (id)arrayFromPlistURL:(id)l;
- (id)constructModelObjectOfClass:(Class)class fromDictionary:(id)dictionary;
- (id)constructModelObjectsFromDictionaries:(id)dictionaries withIndexPath:(id)path modelObjectClass:(Class)class;
- (id)description;
- (id)domainObjectWithUUID:(id)d;
- (id)podcastCollectionWithUUID:(id)d;
- (id)podcastCollections;
- (id)podcastCollectionsMatchingString:(id)string maxResults:(int64_t)results;
- (id)podcastModelObjectsInArray:(id)array matchingString:(id)string maxResults:(int64_t)results;
- (id)podcastRevisionsSinceAnchor:(unint64_t)anchor;
- (id)podcastStationWithUUID:(id)d;
- (id)podcastStations;
- (id)podcastStationsMatchingString:(id)string maxResults:(int64_t)results;
- (id)validity;
- (void)_withExtensionParseDataDictionary:(id)dictionary revisionDictionary:(id)revisionDictionary;
- (void)constructRevisionFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections isDelete:(BOOL)delete;
- (void)constructRevisionsFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections;
- (void)getContainerURL:(id)l;
- (void)getDatabaseURL:(id)l;
- (void)getRevisionURL:(id)l;
- (void)getURLs:(id)ls;
- (void)initializeDataFromDictionary;
@end

@implementation PODataSource

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_233532C18;
  block[3] = &unk_2789DE4B0;
  block[4] = self;
  if (qword_2814EEA70 != -1)
  {
    dispatch_once(&qword_2814EEA70, block);
  }

  v2 = qword_2814EEA68;

  return v2;
}

- (PODataSource)initWithPlistPath:(id)path
{
  v43 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v40.receiver = self;
  v40.super_class = PODataSource;
  v5 = [(PODataSource *)&v40 init];
  v10 = v5;
  if (v5)
  {
    v11 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v6, v7, v8, v9);
    objc_msgSend_setPodcastCollectionsByUUID_(v10, v12, v11, v13, v14);

    v19 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v15, v16, v17, v18);
    objc_msgSend_setPodcastStationsByUUID_(v10, v20, v19, v21, v22);

    v27 = objc_msgSend_array(MEMORY[0x277CBEB18], v23, v24, v25, v26);
    objc_msgSend_setPodcastRevisions_(v10, v28, v27, v29, v30);

    objc_msgSend_setPlistBasePath_(v10, v31, pathCopy, v32, v33);
    v5 = objc_msgSend_initializeDataFromDictionary(v10, v34, v35, v36, v37);
  }

  POLogInitIfNeeded(v5, v6);
  if (POLogContextSync)
  {
    v38 = POLogContextSync;
  }

  else
  {
    v38 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v42 = v10;
    _os_log_impl(&dword_23352D000, v38, OS_LOG_TYPE_INFO, "Data source is %@", buf, 0xCu);
  }

  return v10;
}

- (id)arrayFromPlistURL:(id)l
{
  lCopy = l;
  v8 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7);
  v13 = objc_msgSend_path(lCopy, v9, v10, v11, v12);
  v17 = objc_msgSend_contentsAtPath_(v8, v14, v13, v15, v16);

  if (v17)
  {
    v26 = 0;
    v20 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x277CCAC58], v19, v17, 0, 0, &v26);
    v18 = v26;
    v21 = v18;
    if (!v18)
    {
      v22 = 0;
      if (v20)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  POLogInitIfNeeded(v18, v19);
  if (POLogContextSync)
  {
    v23 = POLogContextSync;
  }

  else
  {
    v23 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_23353832C();
  }

  v24 = _MTLogCategorySiri();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    sub_2335383B0();
  }

  v22 = v21;
LABEL_14:

  return v20;
}

- (BOOL)isPodcastsInstalled
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CC1E70]);
  v10 = 0;
  v4 = objc_msgSend_initWithBundleIdentifier_allowPlaceholder_error_(v2, v3, @"com.apple.podcasts", 0, &v10);
  v5 = v10;
  v7 = v5;
  if (v5)
  {
    POLogInitIfNeeded(v5, v6);
    if (POLogContextSync)
    {
      v8 = POLogContextSync;
    }

    else
    {
      v8 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v7;
      _os_log_impl(&dword_23352D000, v8, OS_LOG_TYPE_INFO, "Could not load application record. If the Podcasts app is actually installed, this represents an error: %@.", buf, 0xCu);
    }
  }

  return v4 != 0;
}

- (void)getURLs:(id)ls
{
  lsCopy = ls;
  v9 = objc_msgSend_plistBasePath(self, v5, v6, v7, v8);

  if (v9)
  {
    v14 = objc_msgSend_plistBasePath(self, v10, v11, v12, v13);
    v18 = objc_msgSend_URLByAppendingPathComponent_(v14, v15, @"PodcastsDB.plist", v16, v17);

    v23 = objc_msgSend_plistBasePath(self, v19, v20, v21, v22);
    v27 = objc_msgSend_URLByAppendingPathComponent_(v23, v24, @"PodcastsDiff.plist", v25, v26);

    lsCopy[2](lsCopy, v18, v27, 0);
  }

  else
  {
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = sub_233533168;
    v31[3] = &unk_2789DE4D8;
    v32 = lsCopy;
    objc_msgSend_getContainerURL_(self, v28, v31, v29, v30);
  }
}

- (void)getDatabaseURL:(id)l
{
  lCopy = l;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_2335332A8;
  v9[3] = &unk_2789DE500;
  v10 = lCopy;
  v5 = lCopy;
  objc_msgSend_getURLs_(self, v6, v9, v7, v8);
}

- (void)getRevisionURL:(id)l
{
  lCopy = l;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = sub_233533350;
  v9[3] = &unk_2789DE500;
  v10 = lCopy;
  v5 = lCopy;
  objc_msgSend_getURLs_(self, v6, v9, v7, v8);
}

- (void)getContainerURL:(id)l
{
  v42[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (lCopy)
  {
    v4 = container_query_create();
    container_query_set_class();
    container_query_operation_set_flags();
    container_query_set_include_other_owners();
    v5 = xpc_string_create("com.apple.podcasts");
    container_query_set_identifiers();
    if (!container_query_get_single_result())
    {
      if (container_query_get_last_error() && (v22 = container_error_copy_unlocalized_description()) != 0)
      {
        v26 = v22;
        v27 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v23, v22, v24, v25);
        v29 = v27;
        if (v27)
        {
          v41 = *MEMORY[0x277CCA068];
          v42[0] = v27;
          v30 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v28, v42, &v41, 1);
        }

        else
        {
          v30 = 0;
        }

        free(v26);
      }

      else
      {
        v29 = 0;
        v30 = 0;
      }

      v36 = _MTLogCategorySiri();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v39 = 138412290;
        v40 = v29;
        _os_log_impl(&dword_23352D000, v36, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed. Description: '%@'", &v39, 0xCu);
      }

      v38 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v37, @"PODataSourceErrorDomain", 1, v30);
      lCopy[2](lCopy, 0, v38);

      goto LABEL_39;
    }

    v6 = container_copy_sandbox_token();
    if (!v6)
    {
      goto LABEL_9;
    }

    v7 = v6;
    v8 = sandbox_extension_consume();
    v9 = _MTLogCategorySiri();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v39 = 134217984;
      v40 = v8;
      _os_log_impl(&dword_23352D000, v9, OS_LOG_TYPE_INFO, "Consumed sandbox token and received handle %lli", &v39, 0xCu);
    }

    free(v7);
    if (v8)
    {
      path = container_get_path();
      if (v8 == -1)
      {
        v33 = _MTLogCategorySiri();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v39) = 0;
          _os_log_impl(&dword_23352D000, v33, OS_LOG_TYPE_ERROR, "Something went wrong with getting the sandbox extension.", &v39, 2u);
        }

        v35 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v34, @"PODataSourceErrorDomain", 2, 0);
        lCopy[2](lCopy, 0, v35);

        if (!v4)
        {
          goto LABEL_39;
        }

LABEL_29:
        container_query_free();
LABEL_39:

        goto LABEL_40;
      }

      v11 = path;
    }

    else
    {
LABEL_9:
      v12 = _MTLogCategorySiri();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_23352D000, v12, OS_LOG_TYPE_INFO, "Handle is 0. Maybe we were not issued a token, the app is not sandboxed, or this extension is not needed to access the container.", &v39, 2u);
      }

      v11 = container_get_path();
      v8 = 0;
    }

    v13 = _MTLogCategorySiri();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v11)
    {
      if (v14)
      {
        v39 = 136315138;
        v40 = v11;
        _os_log_impl(&dword_23352D000, v13, OS_LOG_TYPE_INFO, "Found container path %s", &v39, 0xCu);
      }

      v18 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v15, v11, v16, v17);
      v21 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x277CBEBC0], v19, v18, 1, v20);
      (lCopy)[2](lCopy, v21, 0);
    }

    else
    {
      if (v14)
      {
        LOWORD(v39) = 0;
        _os_log_impl(&dword_23352D000, v13, OS_LOG_TYPE_INFO, "We could not access the podcasts container. This probably means the app isn't installed.", &v39, 2u);
      }

      v18 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v31, @"PODataSourceErrorDomain", 1, 0);
      lCopy[2](lCopy, 0, v18);
    }

    if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v32 = _MTLogCategorySiri();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        v39 = 134217984;
        v40 = v8;
        _os_log_impl(&dword_23352D000, v32, OS_LOG_TYPE_INFO, "Releasing sandbox extension %lli", &v39, 0xCu);
      }

      sandbox_extension_release();
    }

    if (!v4)
    {
      goto LABEL_39;
    }

    goto LABEL_29;
  }

LABEL_40:
}

- (BOOL)isPodcastRevisionDataStale
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_233533904;
  v6[3] = &unk_2789DE528;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_getRevisionURL_(self, a2, v6, v2, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isPodcastDataStale
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_233533AE8;
  v6[3] = &unk_2789DE528;
  v6[4] = self;
  v6[5] = &v7;
  objc_msgSend_getDatabaseURL_(self, a2, v6, v2, v3);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (NSMutableDictionary)podcastCollectionsByUUID
{
  v3 = self->_podcastCollectionsByUUID;
  objc_sync_enter(v3);
  if (objc_msgSend_isPodcastDataStale(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_constructingData(self, v8, v9, v10, v11);
    if ((v12 & 1) == 0)
    {
      POLogInitIfNeeded(v12, v13);
      if (POLogContextSync)
      {
        v14 = POLogContextSync;
      }

      else
      {
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_23352D000, v14, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v21, 2u);
      }

      objc_msgSend_initializeDataFromDictionary(self, v15, v16, v17, v18);
    }
  }

  objc_sync_exit(v3);

  podcastCollectionsByUUID = self->_podcastCollectionsByUUID;

  return podcastCollectionsByUUID;
}

- (NSMutableDictionary)podcastStationsByUUID
{
  v3 = self->_podcastStationsByUUID;
  objc_sync_enter(v3);
  if (objc_msgSend_isPodcastDataStale(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_constructingData(self, v8, v9, v10, v11);
    if ((v12 & 1) == 0)
    {
      POLogInitIfNeeded(v12, v13);
      if (POLogContextSync)
      {
        v14 = POLogContextSync;
      }

      else
      {
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_23352D000, v14, OS_LOG_TYPE_INFO, "Podcast data is stale, going to reinitialize from plist.", v21, 2u);
      }

      objc_msgSend_initializeDataFromDictionary(self, v15, v16, v17, v18);
    }
  }

  objc_sync_exit(v3);

  podcastStationsByUUID = self->_podcastStationsByUUID;

  return podcastStationsByUUID;
}

- (id)validity
{
  v6 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_databaseUUID(self, a2, v2, v3, v4);
  v12 = objc_msgSend_firstRevisionUUID(self, v8, v9, v10, v11);
  v16 = objc_msgSend_stringWithFormat_(v6, v13, @"%@-%@", v14, v15, v7, v12);

  return v16;
}

- (NSMutableArray)podcastRevisions
{
  v3 = self->_podcastRevisions;
  objc_sync_enter(v3);
  if (objc_msgSend_isPodcastRevisionDataStale(self, v4, v5, v6, v7))
  {
    v12 = objc_msgSend_constructingData(self, v8, v9, v10, v11);
    if ((v12 & 1) == 0)
    {
      POLogInitIfNeeded(v12, v13);
      if (POLogContextSync)
      {
        v14 = POLogContextSync;
      }

      else
      {
        v14 = MEMORY[0x277D86220];
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v21 = 0;
        _os_log_impl(&dword_23352D000, v14, OS_LOG_TYPE_INFO, "Podcast revision data is stale, going to reinitialize from plist.", v21, 2u);
      }

      objc_msgSend_initializeDataFromDictionary(self, v15, v16, v17, v18);
    }
  }

  objc_sync_exit(v3);

  podcastRevisions = self->_podcastRevisions;

  return podcastRevisions;
}

- (void)initializeDataFromDictionary
{
  v6 = objc_msgSend_constructingData(self, a2, v2, v3, v4);
  if (v6)
  {
    POLogInitIfNeeded(v6, v7);
    if (POLogContextSync)
    {
      v10 = POLogContextSync;
    }

    else
    {
      v10 = MEMORY[0x277D86220];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_233538504(v10);
    }
  }

  else
  {
    objc_msgSend_setConstructingData_(self, v7, 1, v8, v9);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_233534034;
    v17[3] = &unk_2789DE550;
    v17[4] = self;
    objc_msgSend_getURLs_(self, v11, v17, v12, v13);
    objc_msgSend_setConstructingData_(self, v14, 0, v15, v16);
  }
}

- (void)_withExtensionParseDataDictionary:(id)dictionary revisionDictionary:(id)revisionDictionary
{
  v203 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  revisionDictionaryCopy = revisionDictionary;
  v11 = objc_msgSend_arrayFromPlistURL_(self, v8, dictionaryCopy, v9, v10);
  v15 = objc_msgSend_arrayFromPlistURL_(self, v12, revisionDictionaryCopy, v13, v14);
  POLogInitIfNeeded(v15, v16);
  v17 = MEMORY[0x277D86220];
  if (POLogContextSync)
  {
    v18 = POLogContextSync;
  }

  else
  {
    v18 = MEMORY[0x277D86220];
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v202 = dictionaryCopy;
    _os_log_impl(&dword_23352D000, v18, OS_LOG_TYPE_INFO, "Constructing data source from %@", buf, 0xCu);
  }

  v190 = revisionDictionaryCopy;
  if (!v11)
  {
    goto LABEL_38;
  }

  v23 = objc_msgSend_objectAtIndexedSubscript_(v11, v19, 0, v21, v22);
  v27 = objc_msgSend_objectForKeyedSubscript_(v23, v24, @"children", v25, v26);
  v32 = v27;
  if (!v27)
  {
    POLogInitIfNeeded(0, v28);
    if (POLogContextSync)
    {
      v112 = POLogContextSync;
    }

    else
    {
      v112 = v17;
    }

    if (os_log_type_enabled(v112, OS_LOG_TYPE_ERROR))
    {
      sub_233538618();
    }

    goto LABEL_20;
  }

  v33 = objc_msgSend_count(v27, v28, v29, v30, v31);
  if (v33 == 2)
  {
    v186 = v15;
    v188 = v11;
    v37 = objc_msgSend_objectAtIndexedSubscript_(v32, v34, 0, v35, v36);
    v41 = objc_msgSend_objectForKeyedSubscript_(v37, v38, @"children", v39, v40);

    v45 = objc_msgSend_objectAtIndexedSubscript_(v32, v42, 1, v43, v44);
    v49 = objc_msgSend_objectForKeyedSubscript_(v45, v46, @"children", v47, v48);

    v53 = objc_msgSend_indexPathWithIndex_(MEMORY[0x277CCAA70], v50, 0, v51, v52);
    v54 = objc_opt_class();
    obj = v41;
    v56 = objc_msgSend_constructModelObjectsFromDictionaries_withIndexPath_modelObjectClass_(self, v55, v41, v53, v54);

    objc_msgSend_removeAllObjects(self->_podcastCollectionsByUUID, v57, v58, v59, v60);
    objc_msgSend_addEntriesFromDictionary_(self->_podcastCollectionsByUUID, v61, v56, v62, v63);
    v67 = objc_msgSend_indexPathWithIndex_(MEMORY[0x277CCAA70], v64, 1, v65, v66);
    v68 = objc_opt_class();
    v191 = v49;
    v70 = objc_msgSend_constructModelObjectsFromDictionaries_withIndexPath_modelObjectClass_(self, v69, v49, v67, v68);

    objc_msgSend_removeAllObjects(self->_podcastStationsByUUID, v71, v72, v73, v74);
    objc_msgSend_addEntriesFromDictionary_(self->_podcastStationsByUUID, v75, v70, v76, v77);
    v82 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v78, v79, v80, v81);
    v83 = dictionaryCopy;
    v88 = objc_msgSend_path(dictionaryCopy, v84, v85, v86, v87);
    v91 = objc_msgSend_attributesOfItemAtPath_error_(v82, v89, v88, 0, v90);
    v96 = objc_msgSend_fileModificationDate(v91, v92, v93, v94, v95);
    objc_msgSend_setPodcastDataPlistLastModified_(self, v97, v96, v98, v99);

    v17 = MEMORY[0x277D86220];
    POLogInitIfNeeded(v100, v101);
    if (POLogContextSync)
    {
      v102 = POLogContextSync;
    }

    else
    {
      v102 = v17;
    }

    if (os_log_type_enabled(v102, OS_LOG_TYPE_INFO))
    {
      v103 = v102;
      v108 = objc_msgSend_podcastDataPlistLastModified(self, v104, v105, v106, v107);
      *buf = 138412290;
      v202 = v108;
      _os_log_impl(&dword_23352D000, v103, OS_LOG_TYPE_INFO, "Podcast data last modified is %@", buf, 0xCu);
    }

    dictionaryCopy = v83;
    v15 = v186;
    v11 = v188;
LABEL_20:
    v116 = objc_msgSend_objectForKeyedSubscript_(v23, v109, @"uuid", v110, v111);
    if (v116)
    {
      v117 = objc_msgSend_setDatabaseUUID_(self, v113, v116, v114, v115);
      POLogInitIfNeeded(v117, v118);
      if (POLogContextSync)
      {
        v119 = POLogContextSync;
      }

      else
      {
        v119 = v17;
      }

      if (os_log_type_enabled(v119, OS_LOG_TYPE_INFO))
      {
        v120 = v119;
        objc_msgSend_databaseUUID(self, v121, v122, v123, v124);
        v126 = v125 = v15;
        *buf = 138412290;
        v202 = v126;
        _os_log_impl(&dword_23352D000, v120, OS_LOG_TYPE_INFO, "Database UUID is %@", buf, 0xCu);

        v15 = v125;
      }
    }

    else
    {
      POLogInitIfNeeded(0, v113);
      if (POLogContextSync)
      {
        v128 = POLogContextSync;
      }

      else
      {
        v128 = v17;
      }

      if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
      {
        sub_233538680();
      }
    }

    revisionDictionaryCopy = v190;
LABEL_38:
    if (v15)
    {
      v189 = v11;
      v185 = dictionaryCopy;
      objc_msgSend_removeAllObjects(self->_podcastRevisions, v19, v20, v21, v22);
      v198 = 0u;
      v199 = 0u;
      v196 = 0u;
      v197 = 0u;
      v187 = v15;
      obja = v15;
      v130 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v129, &v196, v200, 16);
      if (v130)
      {
        v134 = v130;
        v135 = *v197;
        v136 = 1;
        do
        {
          for (i = 0; i != v134; ++i)
          {
            if (*v197 != v135)
            {
              objc_enumerationMutation(obja);
            }

            v138 = *(*(&v196 + 1) + 8 * i);
            if (v136)
            {
              v142 = objc_msgSend_objectForKeyedSubscript_(*(*(&v196 + 1) + 8 * i), v131, @"uuid", v132, v133);
              if (v142)
              {
                RevisionUUID = objc_msgSend_setFirstRevisionUUID_(self, v139, v142, v140, v141);
                POLogInitIfNeeded(RevisionUUID, v144);
                if (POLogContextSync)
                {
                  v145 = POLogContextSync;
                }

                else
                {
                  v145 = v17;
                }

                if (os_log_type_enabled(v145, OS_LOG_TYPE_INFO))
                {
                  v146 = v145;
                  v151 = objc_msgSend_firstRevisionUUID(self, v147, v148, v149, v150);
                  *buf = 138412290;
                  v202 = v151;
                  _os_log_impl(&dword_23352D000, v146, OS_LOG_TYPE_INFO, "First Revision UUID is %@", buf, 0xCu);

                  v17 = MEMORY[0x277D86220];
                }
              }

              else
              {
                POLogInitIfNeeded(0, v139);
                if (POLogContextSync)
                {
                  v152 = POLogContextSync;
                }

                else
                {
                  v152 = v17;
                }

                if (os_log_type_enabled(v152, OS_LOG_TYPE_ERROR))
                {
                  sub_2335386E8(&v194, v195, v152);
                }
              }
            }

            v156 = objc_msgSend_objectForKeyedSubscript_(v138, v131, @"podcasts", v132, v133);
            if (v156)
            {
              objc_msgSend_constructRevisionsFromDictionary_isPodcastCollections_(self, v153, v156, 1, v155);
            }

            v159 = objc_msgSend_objectForKeyedSubscript_(v138, v153, @"stations", v154, v155);
            if (v159)
            {
              objc_msgSend_constructRevisionsFromDictionary_isPodcastCollections_(self, v157, v159, 0, v158);
            }

            v136 = 0;
          }

          v134 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v131, &v196, v200, 16);
          v136 = 0;
        }

        while (v134);
      }

      v164 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v160, v161, v162, v163);
      revisionDictionaryCopy = v190;
      v169 = objc_msgSend_path(v190, v165, v166, v167, v168);
      v172 = objc_msgSend_attributesOfItemAtPath_error_(v164, v170, v169, 0, v171);
      v177 = objc_msgSend_fileModificationDate(v172, v173, v174, v175, v176);
      objc_msgSend_setRevisionsDataPlistLastModified_(self, v178, v177, v179, v180);

      POLogInitIfNeeded(v181, v182);
      if (POLogContextSync)
      {
        v183 = POLogContextSync;
      }

      else
      {
        v183 = v17;
      }

      dictionaryCopy = v185;
      v15 = v187;
      v11 = v189;
      if (os_log_type_enabled(v183, OS_LOG_TYPE_INFO))
      {
        podcastRevisions = self->_podcastRevisions;
        *buf = 138412290;
        v202 = podcastRevisions;
        _os_log_impl(&dword_23352D000, v183, OS_LOG_TYPE_INFO, "Podcast revisions are %@", buf, 0xCu);
      }
    }

    goto LABEL_68;
  }

  POLogInitIfNeeded(v33, v34);
  if (POLogContextSync)
  {
    v127 = POLogContextSync;
  }

  else
  {
    v127 = v17;
  }

  if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
  {
    sub_2335385B0();
  }

  revisionDictionaryCopy = v190;
LABEL_68:
}

- (void)constructRevisionsFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections
{
  collectionsCopy = collections;
  v42 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v7, @"inserted", v8, v9);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v34, v41, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v35;
    do
    {
      v16 = 0;
      do
      {
        if (*v35 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_constructRevisionFromDictionary_isPodcastCollections_isDelete_(self, v13, *(*(&v34 + 1) + 8 * v16++), collectionsCopy, 0);
      }

      while (v14 != v16);
      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v34, v41, 16);
    }

    while (v14);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v17, @"deleted", v18, v19, 0);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v30, v40, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v31;
    do
    {
      v26 = 0;
      do
      {
        if (*v31 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v30 + 1) + 8 * v26);
        v38 = @"uuid";
        v39 = v27;
        v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v39, &v38, 1);
        objc_msgSend_constructRevisionFromDictionary_isPodcastCollections_isDelete_(self, v29, v28, collectionsCopy, 1);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v30, v40, 16);
    }

    while (v24);
  }
}

- (void)constructRevisionFromDictionary:(id)dictionary isPodcastCollections:(BOOL)collections isDelete:(BOOL)delete
{
  deleteCopy = delete;
  collectionsCopy = collections;
  dictionaryCopy = dictionary;
  v33 = objc_opt_new();
  v13 = objc_msgSend_count(self->_podcastRevisions, v9, v10, v11, v12);
  objc_msgSend_setRevisionID_(v33, v14, v13, v15, v16);
  if (deleteCopy)
  {
    objc_msgSend_setRevisionType_(v33, v17, 2, v18, v19);
  }

  else
  {
    objc_msgSend_setRevisionType_(v33, v17, 0, v18, v19);
  }

  v23 = objc_msgSend_objectForKeyedSubscript_(dictionaryCopy, v20, @"uuid", v21, v22);

  objc_msgSend_setObjectID_(v33, v24, v23, v25, v26);
  objc_msgSend_setIsPodcastCollection_(v33, v27, collectionsCopy, v28, v29);
  objc_msgSend_addObject_(self->_podcastRevisions, v30, v33, v31, v32);
}

- (id)constructModelObjectOfClass:(Class)class fromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v6 = objc_alloc_init(class);
  v10 = objc_msgSend_objectForKey_(dictionaryCopy, v7, @"uuid", v8, v9);
  objc_msgSend_setUuid_(v6, v11, v10, v12, v13);

  v17 = objc_msgSend_objectForKey_(dictionaryCopy, v14, @"title", v15, v16);
  objc_msgSend_setTitle_(v6, v18, v17, v19, v20);

  v24 = objc_msgSend_objectForKey_(dictionaryCopy, v21, @"feedUrl", v22, v23);
  objc_msgSend_setFeedUrl_(v6, v25, v24, v26, v27);

  v31 = objc_msgSend_objectForKey_(dictionaryCopy, v28, @"storeId", v29, v30);

  objc_msgSend_setStoreId_(v6, v32, v31, v33, v34);

  return v6;
}

- (id)constructModelObjectsFromDictionaries:(id)dictionaries withIndexPath:(id)path modelObjectClass:(Class)class
{
  v46 = *MEMORY[0x277D85DE8];
  dictionariesCopy = dictionaries;
  pathCopy = path;
  v14 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v10, v11, v12, v13);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = dictionariesCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v15, &v41, v45, 16);
  if (v16)
  {
    v19 = v16;
    v20 = 0;
    v21 = *v42;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v42 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v24 = objc_msgSend_constructModelObjectOfClass_fromDictionary_(self, v17, class, *(*(&v41 + 1) + 8 * v22), v18);
        v20 = v23 + 1;
        v28 = objc_msgSend_indexPathByAddingIndex_(pathCopy, v25, v23, v26, v27);
        objc_msgSend_setIndexPath_(v24, v29, v28, v30, v31);

        v36 = objc_msgSend_uuid(v24, v32, v33, v34, v35);
        objc_msgSend_setObject_forKeyedSubscript_(v14, v37, v24, v36, v38);

        ++v22;
        v23 = v20;
      }

      while (v19 != v22);
      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v17, &v41, v45, 16);
    }

    while (v19);
  }

  return v14;
}

- (id)podcastModelObjectsInArray:(id)array matchingString:(id)string maxResults:(int64_t)results
{
  v35 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  stringCopy = string;
  v13 = objc_msgSend_array(MEMORY[0x277CBEB18], v9, v10, v11, v12);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = arrayCopy;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v30, v34, 16);
  if (v16)
  {
    v21 = v16;
    v22 = *v31;
LABEL_3:
    v23 = 0;
    while (1)
    {
      if (*v31 != v22)
      {
        objc_enumerationMutation(v14);
      }

      v24 = *(*(&v30 + 1) + 8 * v23);
      v25 = objc_msgSend_title(v24, v17, v18, v19, v20, v30);
      v28 = objc_msgSend_rangeOfString_options_(v25, v26, stringCopy, 1, v27);

      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        objc_msgSend_addObject_(v13, v17, v24, v19, v20);
      }

      if (results >= 1 && objc_msgSend_count(v13, v17, v18, v19, v20) == results)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v30, v34, 16);
        if (v21)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  return v13;
}

- (id)podcastCollectionsMatchingString:(id)string maxResults:(int64_t)results
{
  stringCopy = string;
  v11 = objc_msgSend_podcastCollections(self, v7, v8, v9, v10);
  v13 = objc_msgSend_podcastModelObjectsInArray_matchingString_maxResults_(self, v12, v11, stringCopy, results);

  return v13;
}

- (id)podcastStationsMatchingString:(id)string maxResults:(int64_t)results
{
  stringCopy = string;
  v11 = objc_msgSend_podcastStations(self, v7, v8, v9, v10);
  v13 = objc_msgSend_podcastModelObjectsInArray_matchingString_maxResults_(self, v12, v11, stringCopy, results);

  return v13;
}

- (id)podcastCollectionWithUUID:(id)d
{
  dCopy = d;
  v9 = objc_msgSend_podcastCollectionsByUUID(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, dCopy, v11, v12);

  return v13;
}

- (id)podcastCollections
{
  v5 = objc_msgSend_podcastCollectionsByUUID(self, a2, v2, v3, v4);
  v10 = objc_msgSend_allValues(v5, v6, v7, v8, v9);

  return v10;
}

- (id)podcastStationWithUUID:(id)d
{
  dCopy = d;
  v9 = objc_msgSend_podcastStationsByUUID(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, dCopy, v11, v12);

  return v13;
}

- (id)podcastStations
{
  v5 = objc_msgSend_podcastStationsByUUID(self, a2, v2, v3, v4);
  v10 = objc_msgSend_allValues(v5, v6, v7, v8, v9);

  return v10;
}

- (id)podcastRevisionsSinceAnchor:(unint64_t)anchor
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_array(MEMORY[0x277CBEB18], a2, anchor, v3, v4);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = objc_msgSend_podcastRevisions(self, v8, v9, v10, v11, 0);
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v24, v28, 16);
  if (v14)
  {
    v19 = v14;
    v20 = *v25;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v12);
        }

        v22 = *(*(&v24 + 1) + 8 * i);
        if (objc_msgSend_revisionID(v22, v15, v16, v17, v18) >= anchor)
        {
          objc_msgSend_addObject_(v7, v15, v22, v17, v18);
        }
      }

      v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v24, v28, 16);
    }

    while (v19);
  }

  return v7;
}

- (id)domainObjectWithUUID:(id)d
{
  dCopy = d;
  v9 = objc_msgSend_podcastCollectionsByUUID(self, v5, v6, v7, v8);
  v13 = objc_msgSend_objectForKeyedSubscript_(v9, v10, dCopy, v11, v12);

  if (!v13)
  {
    v18 = objc_msgSend_podcastStationsByUUID(self, v14, v15, v16, v17);
    v13 = objc_msgSend_objectForKeyedSubscript_(v18, v19, dCopy, v20, v21);
  }

  v22 = objc_msgSend_SAMPCollection(v13, v14, v15, v16, v17);

  return v22;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v10 = objc_msgSend_podcastCollectionsByUUID(self, v6, v7, v8, v9);
  v15 = objc_msgSend_podcastStationsByUUID(self, v11, v12, v13, v14);
  v19 = objc_msgSend_stringWithFormat_(v3, v16, @"%@ (%p) podcast collections: %@, podcast stations: %@", v17, v18, v5, self, v10, v15);

  return v19;
}

@end