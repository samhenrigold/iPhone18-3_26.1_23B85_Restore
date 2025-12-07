@interface CKDMMCSEngineContext
+ (BOOL)hasCachedCKDMMCSEngineContextForPath:(id)path;
+ (BOOL)tearDownMMCSEngineWithContext:(id)context;
+ (id)_appID;
+ (id)setupMMCSEngineWithApplicationBundleID:(id)d path:(id)path wasCached:(BOOL *)cached error:(id *)error;
+ (id)sharedContextsByPath;
+ (id)sharedContextsQueue;
- (BOOL)_setupMMCSEngineWithError:(id *)error;
- (BOOL)_setupMMCSEngineWithRetryCount:(unint64_t)count error:(id *)error;
- (CKDMMCS)MMCS;
- (CKDMMCSEngineContext)initWithApplicationBundleID:(id)d path:(id)path;
- (id)CKPropertiesDescription;
- (int64_t)decRefCount;
- (int64_t)incRefCount;
- (unint64_t)nextAvailableItemID;
- (void)MMCSRunSerialized:(id)serialized;
- (void)MMCSSerializeAsyncRecursive:(id)recursive;
- (void)MMCSSerializeSyncRecursive:(id)recursive;
- (void)_tearDownMMCSEngine;
- (void)assertMMCSSerialized;
- (void)cancelRequestWithContext:(void *)context;
- (void)dealloc;
- (void)stopTrackingItemID:(unint64_t)d;
@end

@implementation CKDMMCSEngineContext

+ (id)_appID
{
  v2 = CKBuildVersion();
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v3, @"%@/%@", @"com.apple.CloudKit", v2);

  return v4;
}

+ (id)sharedContextsQueue
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225132410;
  block[3] = &unk_278545AD0;
  block[4] = self;
  if (qword_280D580E0 != -1)
  {
    dispatch_once(&qword_280D580E0, block);
  }

  v2 = qword_280D580D8;

  return v2;
}

+ (id)sharedContextsByPath
{
  if (qword_280D580F0 != -1)
  {
    dispatch_once(&qword_280D580F0, &unk_28385C6A0);
  }

  v3 = qword_280D580E8;

  return v3;
}

- (id)CKPropertiesDescription
{
  v3 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], a2, 3);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_state(self, v5, v6);
  v10 = objc_msgSend_refCount(self, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"state=%ld, refCount=%ld", v7, v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v16 = objc_msgSend_applicationBundleID(self, v14, v15);

  if (v16)
  {
    v19 = MEMORY[0x277CCACA8];
    v20 = objc_msgSend_applicationBundleID(self, v17, v18);
    v22 = objc_msgSend_stringWithFormat_(v19, v21, @"applicationBundleID=%@", v20);
    objc_msgSend_addObject_(v3, v23, v22);
  }

  v24 = objc_msgSend_path(self, v17, v18);

  if (v24)
  {
    v27 = MEMORY[0x277CCACA8];
    v28 = objc_msgSend_path(self, v25, v26);
    v31 = objc_msgSend_CKSanitizedPath(v28, v29, v30);
    v33 = objc_msgSend_stringWithFormat_(v27, v32, @"path=%@", v31);
    objc_msgSend_addObject_(v3, v34, v33);
  }

  v35 = objc_msgSend_componentsJoinedByString_(v3, v25, @", ");

  return v35;
}

- (int64_t)incRefCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_refCount + 1;
  selfCopy->_refCount = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)assertMMCSSerialized
{
  serializedThread = self->_serializedThread;
  if (serializedThread != pthread_self())
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v7, a2, self, @"CKDMMCSEngineContext.m", 496, @"Expected to be serialized");
  }
}

- (int64_t)decRefCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_refCount - 1;
  selfCopy->_refCount = v3;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_tearDownMMCSEngine
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, a2, v2);
  dispatch_assert_queue_V2(v4);

  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy2 = self;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "Tearing down MMCS engine: %@", buf, 0xCu);
  }

  if (objc_msgSend_MMCSEngine(self, v8, v9))
  {
    if (*v5 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      selfCopy2 = self;
      _os_log_debug_impl(&dword_22506F000, v10, OS_LOG_TYPE_DEBUG, "Destroying MMCS engine %@", buf, 0xCu);
    }

    objc_msgSend_setState_(self, v11, 2);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = sub_225099D10;
    v14[3] = &unk_278545A00;
    v14[4] = self;
    objc_msgSend_MMCSSerializeSyncRecursive_(self, v12, v14);
    objc_msgSend_setState_(self, v13, 3);
  }
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_debug_impl(&dword_22506F000, v4, OS_LOG_TYPE_DEBUG, "Deallocating MMCS engine context: %@", buf, 0xCu);
  }

  if (objc_msgSend_refCount(self, v5, v6))
  {
    v9 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    v12 = objc_msgSend_refCount(self, v10, v11);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v9, v13, a2, self, @"CKDMMCSEngineContext.m", 95, @"Expected refCount=0 (%ld)", v12);
  }

  v14.receiver = self;
  v14.super_class = CKDMMCSEngineContext;
  [(CKDMMCSEngineContext *)&v14 dealloc];
}

- (CKDMMCSEngineContext)initWithApplicationBundleID:(id)d path:(id)path
{
  v28 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  if (pathCopy)
  {
    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, a2, self, @"CKDMMCSEngineContext.m", 76, @"Expected non-nil path");

    if (dCopy)
    {
      goto LABEL_3;
    }
  }

  v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKDMMCSEngineContext.m", 77, @"Expected non-nil applicationBundleID");

LABEL_3:
  v25.receiver = self;
  v25.super_class = CKDMMCSEngineContext;
  v12 = [(CKDMMCSEngineContext *)&v25 init];
  v13 = v12;
  if (v12)
  {
    *&v12->_refCount = xmmword_225447C80;
    objc_storeStrong(&v12->_applicationBundleID, d);
    objc_storeStrong(&v13->_path, path);
    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("CKDMMCSEngineContext queue", v14);
    mmcsQueue = v13->_mmcsQueue;
    v13->_mmcsQueue = v15;

    v17 = objc_alloc_init(MEMORY[0x277CCAB58]);
    inMemoryItemsIDs = v13->_inMemoryItemsIDs;
    v13->_inMemoryItemsIDs = v17;

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v27 = v13;
      _os_log_debug_impl(&dword_22506F000, v19, OS_LOG_TYPE_DEBUG, "Initialized MMCS engine context: %@", buf, 0xCu);
    }
  }

  return v13;
}

- (BOOL)_setupMMCSEngineWithError:(id *)error
{
  v94[3] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, a2, error);
  dispatch_assert_queue_V2(v6);

  if (objc_msgSend_state(self, v7, v8) != 3)
  {
    v85 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v85, v86, a2, self, @"CKDMMCSEngineContext.m", 266, @"Expected state %ld for MMCS engine context", 3, self);
  }

  if (objc_msgSend_MMCSEngine(self, v9, v10))
  {
    v87 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v11, v12);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v87, v88, a2, self, @"CKDMMCSEngineContext.m", 267, @"Expected nil MMCS engine for MMCS engine context %@", self);
  }

  v13 = *MEMORY[0x277D25450];
  v93[0] = *MEMORY[0x277D25448];
  v93[1] = v13;
  v94[0] = MEMORY[0x277CBEC38];
  v94[1] = MEMORY[0x277CBEC38];
  v93[2] = *MEMORY[0x277D25440];
  v94[2] = MEMORY[0x277CBEC38];
  v14 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v11, v94, v93, 3);
  v15 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v16 = MEMORY[0x277CBC830];
  v17 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v64 = v17;
    v67 = objc_msgSend_path(self, v65, v66);
    v70 = objc_msgSend_CKSanitizedPath(v67, v68, v69);
    *buf = 138543362;
    v90 = v70;
    _os_log_debug_impl(&dword_22506F000, v64, OS_LOG_TYPE_DEBUG, "Creating MMCS engine at %{public}@", buf, 0xCu);
  }

  v20 = objc_msgSend_path(self, v18, v19);
  v21 = CKCreateDirectoryAtPath();
  v22 = 0;

  if (v21)
  {
    v25 = MEMORY[0x277CBEBC0];
    v26 = objc_msgSend_path(self, v23, v24);
    objc_msgSend_fileURLWithPath_isDirectory_(v25, v27, v26, 1);
    objc_msgSend__appID(CKDMMCSEngineContext, v28, v29);
    v30 = MMCSEngineCreateWithTargetDispatchQueue();
    objc_msgSend_setMMCSEngine_(self, v31, v30);

    if (objc_msgSend_MMCSEngine(self, v32, v33))
    {
      v36 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v34, v35);
      v37 = 1;
      objc_msgSend_enableMMCSMetricsWithDefaultValue_(v36, v38, 1);

      objc_msgSend_MMCSEngine(self, v39, v40);
      MMCSEngineSetMetricsEnabled();
      objc_msgSend_MMCSEngine(self, v41, v42);
      v43 = MMCSGetMaxChunkCountForSection();
      objc_msgSend_setMaxChunkCountForSection_(self, v44, v43);
      objc_msgSend_setState_(self, v45, 1);
      goto LABEL_26;
    }

    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v60 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v78 = v60;
      v81 = objc_msgSend_path(self, v79, v80);
      v84 = objc_msgSend_CKSanitizedPath(v81, v82, v83);
      *buf = 138543362;
      v90 = v84;
      _os_log_error_impl(&dword_22506F000, v78, OS_LOG_TYPE_ERROR, "Failed creating MMCS engine at %{public}@", buf, 0xCu);
    }

    v59 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v61, *MEMORY[0x277CBC120], 3001, @"MMCSEngineCreate failed");
  }

  else
  {
    if (*v15 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v46 = *v16;
    if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
    {
      v71 = v46;
      v74 = objc_msgSend_path(self, v72, v73);
      v77 = objc_msgSend_CKSanitizedPath(v74, v75, v76);
      *buf = 138543618;
      v90 = v77;
      v91 = 2112;
      v92 = v22;
      _os_log_error_impl(&dword_22506F000, v71, OS_LOG_TYPE_ERROR, "Error creating MMCS directory at %{public}@: %@", buf, 0x16u);
    }

    v49 = MEMORY[0x277CBC560];
    v50 = *MEMORY[0x277CBC120];
    v51 = objc_msgSend_path(self, v47, v48);
    v54 = objc_msgSend_path(self, v52, v53);
    v57 = objc_msgSend_CKSanitizedPath(v54, v55, v56);
    v59 = objc_msgSend_errorWithDomain_code_error_path_format_(v49, v58, v50, 1000, v22, v51, @"Error creating MMCS directory at %@", v57);

    v22 = v51;
  }

  if (error)
  {
    v62 = v59;
    v37 = 0;
    *error = v59;
  }

  else
  {
    v37 = 0;
  }

  v22 = v59;
LABEL_26:

  return v37;
}

- (BOOL)_setupMMCSEngineWithRetryCount:(unint64_t)count error:(id *)error
{
  v7 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, a2, count);
  dispatch_assert_queue_V2(v7);

  if (count)
  {
    v24 = 0;
    v9 = objc_msgSend__setupMMCSEngineWithError_(self, v8, &v24);
    v12 = v24;
    if (v9)
    {
      v13 = 1;
      goto LABEL_14;
    }

    v15 = 0;
    while (1)
    {
      if (!v15)
      {
        v16 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v10, v11);
        v19 = objc_msgSend_path(self, v17, v18);
        objc_msgSend_removeItemAtPath_error_(v16, v20, v19, 0);
      }

      if (count - 1 == v15)
      {
        break;
      }

      v24 = 0;
      v22 = objc_msgSend__setupMMCSEngineWithError_(self, v21, &v24);
      v12 = v24;
      ++v15;
      if (v22)
      {
        v13 = v15 < count;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (error)
  {
    v14 = v12;
    v13 = 0;
    *error = v12;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:

  return v13;
}

+ (BOOL)hasCachedCKDMMCSEngineContextForPath:(id)path
{
  pathCopy = path;
  v6 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v4, v5);
  dispatch_assert_queue_V2(v6);

  v9 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v7, v8);
  v11 = objc_msgSend_objectForKey_(v9, v10, pathCopy);

  return v11 != 0;
}

+ (id)setupMMCSEngineWithApplicationBundleID:(id)d path:(id)path wasCached:(BOOL *)cached error:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathCopy = path;
  v15 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v13, v14);
  dispatch_assert_queue_V2(v15);

  if (cached)
  {
    *cached = 0;
  }

  if (pathCopy)
  {
    if (dCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v40 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v40, v41, a2, self, @"CKDMMCSEngineContext.m", 391, @"Expected non-nil path");

    if (dCopy)
    {
      goto LABEL_5;
    }
  }

  v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v16, v17);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKDMMCSEngineContext.m", 392, @"Expected non-nil applicationBundleID");

LABEL_5:
  v18 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v16, v17);
  v20 = objc_msgSend_objectForKey_(v18, v19, pathCopy);

  if (v20)
  {
    objc_msgSend_incRefCount(v20, v21, v22);
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v23 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v46 = v20;
      _os_log_debug_impl(&dword_22506F000, v23, OS_LOG_TYPE_DEBUG, "Found a cached engine context %@", buf, 0xCu);
    }

    v24 = 0;
    if (cached)
    {
      *cached = 1;
    }
  }

  else
  {
    v25 = [CKDMMCSEngineContext alloc];
    v20 = objc_msgSend_initWithApplicationBundleID_path_(v25, v26, dCopy, pathCopy);
    v44 = 0;
    v28 = objc_msgSend__setupMMCSEngineWithRetryCount_error_(v20, v27, 2, &v44);
    v24 = v44;
    if (v28)
    {
      objc_msgSend_incRefCount(v20, v29, v30);
      v33 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v31, v32);
      v36 = objc_msgSend_path(v20, v34, v35);
      objc_msgSend_setObject_forKey_(v33, v37, v20, v36);
    }

    else
    {

      if (error)
      {
        v38 = v24;
        v20 = 0;
        *error = v24;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  return v20;
}

+ (BOOL)tearDownMMCSEngineWithContext:(id)context
{
  v47 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v4, v5);
  dispatch_assert_queue_V2(v6);

  if (contextCopy && !objc_msgSend_decRefCount(contextCopy, v7, v8))
  {
    objc_msgSend__tearDownMMCSEngine(contextCopy, v9, v10);
    v14 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v12, v13);
    v17 = objc_msgSend_path(contextCopy, v15, v16);
    v19 = objc_msgSend_objectForKey_(v14, v18, v17);

    v20 = *MEMORY[0x277CBC878];
    v21 = *MEMORY[0x277CBC880];
    if (v19 == contextCopy)
    {
      if (v21 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v20);
      }

      v30 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
      {
        v37 = v30;
        v40 = objc_msgSend_path(contextCopy, v38, v39);
        v41 = 138412546;
        v42 = contextCopy;
        v43 = 2114;
        v44 = v40;
        _os_log_debug_impl(&dword_22506F000, v37, OS_LOG_TYPE_DEBUG, "Removing context %@ for path %{public}@ from sharedContextsByPath", &v41, 0x16u);
      }

      v23 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v31, v32);
      v26 = objc_msgSend_path(contextCopy, v33, v34);
      objc_msgSend_removeObjectForKey_(v23, v35, v26);
    }

    else
    {
      if (v21 != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v20);
      }

      v22 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }

      v23 = v22;
      v26 = objc_msgSend_sharedContextsByPath(CKDMMCSEngineContext, v24, v25);
      v29 = objc_msgSend_path(contextCopy, v27, v28);
      v41 = 138412802;
      v42 = contextCopy;
      v43 = 2112;
      v44 = v26;
      v45 = 2114;
      v46 = v29;
      _os_log_error_impl(&dword_22506F000, v23, OS_LOG_TYPE_ERROR, "context %@ not in sharedContextsByPath %@ for key %{public}@", &v41, 0x20u);
    }

LABEL_15:
    v11 = 1;
    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:

  return v11;
}

- (void)cancelRequestWithContext:(void *)context
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = objc_msgSend_MMCSEngine(self, a2, context);
  if (!v8)
  {
    v14 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v14, v15, a2, self, @"CKDMMCSEngineContext.m", 448, @"Expected non-nil MMCS engine");
  }

  v9 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = MEMORY[0x277CBC830];
  v11 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v19 = 2112;
    contextCopy2 = context;
    _os_log_debug_impl(&dword_22506F000, v11, OS_LOG_TYPE_DEBUG, "Cancelling requests for MMCS engine wrapper %@ and context %@", buf, 0x16u);
  }

  CFRetain(v8);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_225133CF4;
  v16[3] = &unk_278546528;
  v16[5] = v8;
  v16[6] = context;
  v16[4] = self;
  objc_msgSend_MMCSSerializeSyncRecursive_(self, v12, v16);
  if (*v9 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v13 = *v10;
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v19 = 2112;
    contextCopy2 = context;
    _os_log_debug_impl(&dword_22506F000, v13, OS_LOG_TYPE_DEBUG, "Waiting for MMCS engine wrapper %@ to cancel the requests for %@", buf, 0x16u);
  }

  CFRelease(v8);
}

- (void)MMCSSerializeSyncRecursive:(id)recursive
{
  recursiveCopy = recursive;
  serializedThread = self->_serializedThread;
  if (serializedThread == pthread_self())
  {
    recursiveCopy[2](recursiveCopy);
  }

  else
  {
    mmcsQueue = self->_mmcsQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = sub_225133EB4;
    v7[3] = &unk_278546550;
    v7[4] = self;
    v8 = recursiveCopy;
    dispatch_sync(mmcsQueue, v7);
  }
}

- (void)MMCSSerializeAsyncRecursive:(id)recursive
{
  recursiveCopy = recursive;
  if (!objc_msgSend_MMCSEngine(self, v6, v7))
  {
    v12 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v12, v13, a2, self, @"CKDMMCSEngineContext.m", 481, @"Expected non-nil MMCS engine");
  }

  mmcsQueue = self->_mmcsQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_225133FB0;
  v14[3] = &unk_278546550;
  v14[4] = self;
  v15 = recursiveCopy;
  v11 = recursiveCopy;
  dispatch_async(mmcsQueue, v14);
}

- (void)MMCSRunSerialized:(id)serialized
{
  serializedCopy = serialized;
  v4 = objc_autoreleasePoolPush();
  dispatch_assert_queue_V2(self->_mmcsQueue);
  sub_2250961E0(&self->_serializedThread, serializedCopy);
  objc_autoreleasePoolPop(v4);
}

- (unint64_t)nextAvailableItemID
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0x7FFFFFFFFFFFFFFFLL;
  v3 = self->_inMemoryItemsIDs;
  objc_sync_enter(v3);
  CKNSIndexSet_enumerateInverseRangesInRange_options_usingBlock();
  v5 = v9[3];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __assert_rtn("[CKDMMCSEngineContext nextAvailableItemID]", "CKDMMCSEngineContext.m", 512, "0 && itemID overflow");
  }

  objc_msgSend_addIndex_(self->_inMemoryItemsIDs, v4, v5);
  objc_sync_exit(v3);

  v6 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v6 - 0x331272800;
}

- (void)stopTrackingItemID:(unint64_t)d
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = self->_inMemoryItemsIDs;
  objc_sync_enter(v5);
  if (objc_msgSend_containsIndex_(self->_inMemoryItemsIDs, v6, d + 0x331272800))
  {
    objc_msgSend_removeIndex_(self->_inMemoryItemsIDs, v7, d + 0x331272800);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v9 = 134217984;
      dCopy = d;
      _os_log_error_impl(&dword_22506F000, v8, OS_LOG_TYPE_ERROR, "Attempted to stop tracking untracked itemID %llu", &v9, 0xCu);
    }
  }

  objc_sync_exit(v5);
}

- (CKDMMCS)MMCS
{
  WeakRetained = objc_loadWeakRetained(&self->_MMCS);

  return WeakRetained;
}

@end