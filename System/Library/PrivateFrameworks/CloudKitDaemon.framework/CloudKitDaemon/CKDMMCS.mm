@interface CKDMMCS
+ (id)MMCSWrapperForApplicationBundleID:(id)d directoryContext:(id)context database:(id)database error:(id *)error;
+ (id)_errorWithMMCSError:(id)error path:(id)path description:(id)description operationType:(int64_t)type;
+ (id)_userInfoFromMMCSRetryableError:(id)error;
+ (id)assetKeyWithType:(unint64_t)type error:(id *)error;
+ (id)protocolHeaders;
+ (id)protocolVersion;
+ (id)referenceSignatureFromAssetKey:(id)key;
+ (id)sharedWrappersByPath;
+ (id)zeroSizeFileSignature;
+ (int64_t)_commonErrorCodeWithMMCSError:(id)error;
+ (int64_t)_errorCodeWithMMCSGetError:(id)error;
+ (int64_t)_errorCodeWithMMCSPutError:(id)error;
+ (int64_t)_errorCodeWithMMCSRegisterError:(id)error;
+ (void)purgeMMCSDirectoryWithPath:(id)path;
- (BOOL)_getRegisteredItemsGreaterThan:(unint64_t)than itemIds:(unint64_t *)ids itemCount:(unint64_t *)count error:(id *)error;
- (BOOL)isTrackingItemID:(unint64_t)d;
- (BOOL)registeredItemCount:(unint64_t *)count error:(id *)error;
- (CKDMMCS)initWithMMCSEngineContext:(id)context directoryContext:(id)directoryContext;
- (_mmcs_engine)getMMCSEngine;
- (id)CKStatusReportArray;
- (id)_contextToGetItemGroup:(id)group operation:(id)operation options:(id)options progress:(id)progress command:(id)command completionHandler:(id)handler;
- (id)_contextToGetSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler;
- (id)_contextToPutItemGroup:(id)group operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler;
- (id)_contextToPutSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler;
- (id)_contextToRegisterItemGroup:(id)group operation:(id)operation options:(unint64_t)options completionHandler:(id)handler;
- (id)_referenceIdentifierFromAssetKey:(id)key;
- (id)getItemGroupSet:(id)set operation:(id)operation shouldFetchAssetContentInMemory:(BOOL)memory options:(id)options progress:(id)progress command:(id)command completionHandler:(id)handler;
- (id)getSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler;
- (id)putItemGroupSet:(id)set operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler;
- (id)putSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler;
- (id)registerItemGroupSet:(id)set operation:(id)operation options:(unint64_t)options completionHandler:(id)handler;
- (id)registeredMMCSItemForRereferencedAsset:(id)asset;
- (id)retrieveChunkWithSignature:(id)signature;
- (unsigned)getMaxChunkCountForSection;
- (void)_logMMCSOptions:(id)options;
- (void)_unregisterItemIDs:(id)ds;
- (void)dealloc;
- (void)drop;
- (void)performOperationCleanup;
- (void)showRegisteredItemsInContainer:(id)container;
- (void)startTrackingItemIDsForMMCSItems:(id)items;
- (void)stopTrackingItemIDsForMMCSItems:(id)items;
- (void)unregisterItemIDs:(id)ds;
@end

@implementation CKDMMCS

+ (id)protocolVersion
{
  v3 = objc_msgSend_protocolHeaders(self, a2, v2);
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"x-apple-mmcs-proto-version");

  return v5;
}

+ (id)protocolHeaders
{
  objc_msgSend__appID(CKDMMCSEngineContext, a2, v2);
  v3 = MMCSICloudRequestHeadersCopy();

  return v3;
}

+ (id)sharedWrappersByPath
{
  if (qword_280D580D0 != -1)
  {
    dispatch_once(&qword_280D580D0, &unk_28385C680);
  }

  v3 = qword_280D580C8;

  return v3;
}

- (void)drop
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v4 = MEMORY[0x277CBC830];
  v5 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v18 = v5;
    *buf = 138412546;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = objc_msgSend_checkoutCount(self, v19, v20);
    _os_log_debug_impl(&dword_22506F000, v18, OS_LOG_TYPE_DEBUG, "%@ dropping with count %lld", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  v11 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v9, v10);
  v21 = MEMORY[0x277D85DD0];
  v22 = 3221225472;
  v23 = sub_225099480;
  v24 = &unk_278546290;
  selfCopy = self;
  v27 = buf;
  v28 = &v29;
  v12 = v8;
  v26 = v12;
  dispatch_sync(v11, &v21);

  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (*(*&buf[8] + 24) == 1 && (objc_msgSend_didDrop(selfCopy2, v14, v15, v21, v22, v23, v24, selfCopy) & 1) == 0)
  {
    objc_msgSend_setDidDrop_(selfCopy2, v16, 1);
  }

  objc_sync_exit(selfCopy2);

  if (*(*&buf[8] + 24) == 1 && (v30[3] & 1) == 0)
  {
    if (*v3 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v17 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *v33 = 138412290;
      v34 = selfCopy2;
      _os_log_error_impl(&dword_22506F000, v17, OS_LOG_TYPE_ERROR, "%@ actually dropping but did not tear down", v33, 0xCu);
    }
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(buf, 8);
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v3 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v6 = selfCopy;
      _os_log_error_impl(&dword_22506F000, v3, OS_LOG_TYPE_ERROR, "Failed to drop %@", buf, 0xCu);
    }

    if (!selfCopy->_didDrop)
    {
      __assert_rtn("[CKDMMCS dealloc]", "CKDMMCS.m", 543, "_didDrop && Failed to drop CKDMMCS dealloc");
    }
  }

  objc_sync_exit(selfCopy);

  v4.receiver = selfCopy;
  v4.super_class = CKDMMCS;
  [(CKDMMCS *)&v4 dealloc];
}

+ (id)zeroSizeFileSignature
{
  if (qword_280D580C0 != -1)
  {
    dispatch_once(&qword_280D580C0, &unk_28385C660);
  }

  v3 = qword_280D580B8;

  return v3;
}

+ (id)_userInfoFromMMCSRetryableError:(id)error
{
  v34 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v6 = objc_msgSend_userInfo(errorCopy, v4, v5);
  v8 = objc_msgSend_objectForKeyedSubscript_(v6, v7, *MEMORY[0x277D25470]);

  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v9, v10);
  v14 = objc_msgSend_defaultRetryAfter(v11, v12, v13);

  v15 = *MEMORY[0x277D25468];
  v17 = objc_msgSend_objectForKeyedSubscript_(v8, v16, *MEMORY[0x277D25468]);
  v20 = v17;
  if (v17)
  {
    v14 = objc_msgSend_intValue(v17, v18, v19);
    if ((v14 - 0x7FFFFFFF) <= 0x80000001)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v21 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138543874;
        v29 = v20;
        v30 = 2114;
        v31 = v15;
        v32 = 2112;
        v33 = errorCopy;
        _os_log_impl(&dword_22506F000, v21, OS_LOG_TYPE_INFO, "Warn: Invalid value (%{public}@) for %{public}@ key in error %@", buf, 0x20u);
      }
    }
  }

  v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v18, v14, *MEMORY[0x277CBBF68]);
  v27 = v22;
  v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v23, &v27, &v26, 1);

  return v24;
}

+ (int64_t)_commonErrorCodeWithMMCSError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_code(errorCopy, v4, v5);
  v9 = 0;
  if (v6 > 14)
  {
    if (v6 <= 32)
    {
      if (v6 == 15)
      {
        v9 = 1003;
        goto LABEL_24;
      }

      if (v6 == 23)
      {
        goto LABEL_23;
      }

      if (v6 != 25)
      {
        goto LABEL_24;
      }

      goto LABEL_19;
    }

    if (v6 == 33)
    {
      goto LABEL_23;
    }

    if (v6 != 35)
    {
      if (v6 != 38)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
    {
      *v21 = 0;
      _os_log_fault_impl(&dword_22506F000, v20, OS_LOG_TYPE_FAULT, "Programmer error starting MMCS request.", v21, 2u);
    }

    v9 = 2022;
  }

  else
  {
    if (v6 <= 7)
    {
      if (v6 != 3)
      {
        if (v6 == 4)
        {
          v9 = 1;
        }

        else if (v6 == 7)
        {
          v10 = objc_msgSend_userInfo(errorCopy, v7, v8);
          v12 = objc_msgSend_objectForKeyedSubscript_(v10, v11, *MEMORY[0x277CCA7E8]);

          if (v12)
          {
            v15 = objc_msgSend_domain(v12, v13, v14);
            if (objc_msgSend_isEqualToString_(v15, v16, *MEMORY[0x277D25460]))
            {
              if (objc_msgSend_code(v12, v17, v18) == 11)
              {
                v9 = 3003;
              }

              else
              {
                v9 = 1013;
              }
            }

            else
            {
              v9 = 1013;
            }
          }

          else
          {
            v9 = 1013;
          }
        }

        goto LABEL_24;
      }

LABEL_23:
      v9 = 1013;
      goto LABEL_24;
    }

    switch(v6)
    {
      case 8:
        v9 = 2003;
        break;
      case 9:
        v9 = 3002;
        break;
      case 13:
LABEL_19:
        v9 = 2000;
        break;
    }
  }

LABEL_24:

  return v9;
}

+ (int64_t)_errorCodeWithMMCSGetError:(id)error
{
  errorCopy = error;
  v6 = objc_msgSend_code(errorCopy, v4, v5);
  if (v6 > 28)
  {
    if (v6 > 38)
    {
      if (v6 == 39)
      {
        v12 = objc_msgSend_userInfo(errorCopy, v7, v8);
        v14 = objc_msgSend_objectForKeyedSubscript_(v12, v13, *MEMORY[0x277CCA7E8]);

        if (v14 && (objc_msgSend_domain(v14, v15, v16), v17 = objc_claimAutoreleasedReturnValue(), isEqualToString = objc_msgSend_isEqualToString_(v17, v18, *MEMORY[0x277CBEE48]), v17, isEqualToString))
        {
          if (objc_msgSend_code(v14, v20, v21) == 69)
          {
            v11 = 3007;
          }

          else if (objc_msgSend_code(v14, v22, v23) == 28)
          {
            v11 = 3008;
          }

          else
          {
            v11 = 0;
          }
        }

        else
        {
          v11 = 0;
        }
      }

      else if (v6 == 48)
      {
        v11 = 3013;
      }

      else
      {
        v11 = 0;
      }
    }

    else if (v6 == 29 || v6 == 32)
    {
      v11 = 3006;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v9 = 2000;
    v10 = 3006;
    if (v6 != 28)
    {
      v10 = 0;
    }

    if (v6 != 12)
    {
      v9 = v10;
    }

    if ((v6 - 20) >= 2)
    {
      v11 = v9;
    }

    else
    {
      v11 = 3006;
    }
  }

  return v11;
}

+ (int64_t)_errorCodeWithMMCSPutError:(id)error
{
  v3 = objc_msgSend_code(error, a2, error);
  result = 0;
  if (v3 <= 16)
  {
    if (v3 > 10)
    {
      if (v3 == 11 || v3 == 12)
      {
        return 3003;
      }
    }

    else
    {
      if (v3 == 2)
      {
        return 3006;
      }

      if (v3 == 5)
      {
        return 1013;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    if (v3 > 26)
    {
      if (v3 == 27)
      {
        return 3006;
      }

      if (v3 != 28)
      {
        if (v3 != 29)
        {
          return result;
        }

        return 3006;
      }

      return 3003;
    }

    v5 = 3006;
    if (v3 != 18)
    {
      v5 = 0;
    }

    if (v3 == 17)
    {
      return 2000;
    }

    else
    {
      return v5;
    }
  }

  return result;
}

+ (int64_t)_errorCodeWithMMCSRegisterError:(id)error
{
  v3 = objc_msgSend_code(error, a2, error);
  v4 = 3003;
  v5 = 3006;
  if (v3 != 18)
  {
    v5 = 0;
  }

  if (v3 != 28)
  {
    v4 = v5;
  }

  if (v3 == 29)
  {
    return 3006;
  }

  else
  {
    return v4;
  }
}

+ (id)_errorWithMMCSError:(id)error path:(id)path description:(id)description operationType:(int64_t)type
{
  errorCopy = error;
  pathCopy = path;
  descriptionCopy = description;
  v13 = errorCopy;
  v16 = v13;
  v17 = *MEMORY[0x277D25460];
  v18 = MEMORY[0x277CBC120];
  if (!v13)
  {
LABEL_8:
    v41 = objc_msgSend_domain(v16, v14, v15);
    isEqualToString = objc_msgSend_isEqualToString_(v41, v42, v17);

    if (!isEqualToString)
    {
      v24 = 0;
      v46 = 3001;
      goto LABEL_23;
    }

    v45 = objc_msgSend__commonErrorCodeWithMMCSError_(self, v44, v16);
    if (v45)
    {
      v46 = v45;
LABEL_22:
      v24 = 0;
      goto LABEL_23;
    }

    if (type <= 6)
    {
      if (((1 << type) & 0xA) != 0)
      {
        v47 = objc_msgSend__errorCodeWithMMCSPutError_(self, v44, v16);
      }

      else if (((1 << type) & 0x14) != 0)
      {
        v47 = objc_msgSend__errorCodeWithMMCSGetError_(self, v44, v16);
      }

      else
      {
        if (((1 << type) & 0x60) == 0)
        {
          goto LABEL_28;
        }

        v47 = objc_msgSend__errorCodeWithMMCSRegisterError_(self, v44, v16);
      }

      v46 = v47;
      if (v47)
      {
        goto LABEL_22;
      }
    }

LABEL_28:
    v24 = objc_msgSend__userInfoFromMMCSRetryableError_(self, v44, v16);
    v46 = 2022;
LABEL_23:
    v48 = objc_msgSend_secureCodableError_(MEMORY[0x277CBC560], v44, v16);
    v23 = objc_msgSend_errorWithDomain_code_userInfo_error_path_URL_description_(MEMORY[0x277CBC560], v49, *v18, v46, v24, v48, pathCopy, 0, descriptionCopy);

LABEL_24:
    goto LABEL_25;
  }

  selfCopy = self;
  typeCopy = type;
  v53 = descriptionCopy;
  v19 = pathCopy;
  v20 = *MEMORY[0x277CBBF50];
  v21 = *MEMORY[0x277CBC120];
  v22 = *MEMORY[0x277CCA7E8];
  v23 = v13;
  while (1)
  {
    v24 = objc_msgSend_domain(v23, v14, v15);
    if (objc_msgSend_isEqualToString_(v24, v25, v20))
    {
      pathCopy = v19;
      descriptionCopy = v53;
      goto LABEL_24;
    }

    v28 = objc_msgSend_domain(v23, v26, v27);
    v30 = objc_msgSend_isEqualToString_(v28, v29, v21);

    if (v30)
    {
      break;
    }

    v33 = objc_msgSend_domain(v23, v31, v32);
    v35 = objc_msgSend_isEqualToString_(v33, v34, v17);

    if (v35)
    {
      v38 = objc_msgSend_userInfo(v23, v36, v37);
      v40 = objc_msgSend_objectForKeyedSubscript_(v38, v39, v22);

      v23 = v40;
      if (v40)
      {
        continue;
      }
    }

    self = selfCopy;

    pathCopy = v19;
    type = typeCopy;
    descriptionCopy = v53;
    v18 = MEMORY[0x277CBC120];
    goto LABEL_8;
  }

  pathCopy = v19;
  descriptionCopy = v53;
LABEL_25:

  return v23;
}

+ (void)purgeMMCSDirectoryWithPath:(id)path
{
  v53 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  if (!pathCopy)
  {
    v42 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v5, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v42, v43, a2, self, @"CKDMMCS.m", 413, @"Expected non-nil path: %@", 0);
  }

  v8 = objc_alloc(MEMORY[0x277CBEBC0]);
  isDirectory = objc_msgSend_initFileURLWithPath_isDirectory_(v8, v9, pathCopy, 1);
  v46 = 0;
  v11 = *MEMORY[0x277CBE868];
  v45 = 0;
  ResourceValue_forKey_error = objc_msgSend_getResourceValue_forKey_error_(isDirectory, v12, &v46, v11, &v45);
  v14 = v46;
  v17 = v45;
  if (ResourceValue_forKey_error)
  {
    v18 = v14 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (!v18 && (objc_msgSend_BOOLValue(v14, v15, v16) & 1) != 0)
  {
    v21 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v19, v20);
    v44 = v17;
    v23 = objc_msgSend_removeItemAtPath_error_(v21, v22, pathCopy, &v44);
    v24 = v44;

    v25 = *MEMORY[0x277CBC878];
    if (v23)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v26 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v27 = v26;
      v30 = objc_msgSend_CKSanitizedPath(pathCopy, v28, v29);
      *buf = 138543362;
      v48 = v30;
      v31 = "Removed dir at %{public}@";
      v32 = v27;
      v33 = 12;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], v25);
      }

      v35 = *MEMORY[0x277CBC830];
      if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        goto LABEL_23;
      }

      v27 = v35;
      v30 = objc_msgSend_CKSanitizedPath(pathCopy, v36, v37);
      *buf = 138543618;
      v48 = v30;
      v49 = 2112;
      v50 = v24;
      v31 = "Warn: Failed to remove dir at %{public}@: %@";
      v32 = v27;
      v33 = 22;
    }

    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_INFO, v31, buf, v33);

LABEL_23:
    goto LABEL_24;
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v34 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v38 = v34;
    v41 = objc_msgSend_CKSanitizedPath(pathCopy, v39, v40);
    *buf = 138543874;
    v48 = v41;
    v49 = 2112;
    v50 = v17;
    v51 = 2114;
    v52 = v14;
    _os_log_debug_impl(&dword_22506F000, v38, OS_LOG_TYPE_DEBUG, "Skipping remove dir at %{public}@: %@ %{public}@", buf, 0x20u);
  }

  v24 = v17;
LABEL_24:
}

+ (id)MMCSWrapperForApplicationBundleID:(id)d directoryContext:(id)context database:(id)database error:(id *)error
{
  dCopy = d;
  contextCopy = context;
  databaseCopy = database;
  if (!dCopy)
  {
    v23 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v23, v24, a2, self, @"CKDMMCS.m", 432, @"Expected non-nil application bundle ID");
  }

  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_225073EA0;
  v43 = sub_2250734DC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_225073EA0;
  v37 = sub_2250734DC;
  v38 = 0;
  v16 = objc_msgSend_sharedContextsQueue(CKDMMCSEngineContext, v13, v14);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_225127554;
  block[3] = &unk_2785462B8;
  v29 = &v33;
  v17 = contextCopy;
  v26 = v17;
  v30 = &v45;
  v18 = dCopy;
  v27 = v18;
  v19 = databaseCopy;
  v28 = v19;
  v31 = &v39;
  selfCopy = self;
  dispatch_sync(v16, block);

  if ((v46[3] & 1) == 0)
  {
    v20 = v34[5];
    v34[5] = 0;

    if (error)
    {
      *error = v40[5];
    }
  }

  v21 = v34[5];

  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v39, 8);

  _Block_object_dispose(&v45, 8);

  return v21;
}

+ (id)assetKeyWithType:(unint64_t)type error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  if (type > 1)
  {
    v8 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, type);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v8, v9, a2, self, @"CKDMMCS.m", 504, @"Unsupported CKDMMCSAssetKeyType");
  }

  else
  {
    v5 = MMCSReferenceObjectCreateWithType();
    if (v5)
    {
      goto LABEL_12;
    }
  }

  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v10 = *MEMORY[0x277CBC858];
  if (os_log_type_enabled(*MEMORY[0x277CBC858], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v14 = 0;
    _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "MMCSReferenceObjectCreateWithType failed with error %@", buf, 0xCu);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v11, *MEMORY[0x277CBC120], 5003, 0, @"MMCSReferenceObjectCreateWithType failed");
    *error = v5 = 0;
    goto LABEL_12;
  }

  v5 = 0;
LABEL_12:

  return v5;
}

+ (id)referenceSignatureFromAssetKey:(id)key
{
  if (key)
  {
    v4 = MMCSReferenceSignatureCreateWithReferenceObject();
    if (!v4)
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CKDMMCS)initWithMMCSEngineContext:(id)context directoryContext:(id)directoryContext
{
  contextCopy = context;
  directoryContextCopy = directoryContext;
  if (!contextCopy)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v9, v10);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDMMCS.m", 529, @"Expected non-nil MMCS engine context");
  }

  v27.receiver = self;
  v27.super_class = CKDMMCS;
  v12 = [(CKDMMCS *)&v27 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_MMCSEngineContext, context);
    v16 = objc_msgSend_mmcsWorkingDirectory(directoryContextCopy, v14, v15);
    path = v13->_path;
    v13->_path = v16;

    v20 = objc_msgSend_temporaryDirectory(directoryContextCopy, v18, v19);
    temporaryDirectory = v13->_temporaryDirectory;
    v13->_temporaryDirectory = v20;

    v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
    trackedItemIDs = v13->_trackedItemIDs;
    v13->_trackedItemIDs = v22;
  }

  return v13;
}

- (_mmcs_engine)getMMCSEngine
{
  v27 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v20 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v21 = v20;
      v22 = NSStringFromSelector(a2);
      v23 = 138412546;
      selfCopy = self;
      v25 = 2114;
      v26 = v22;
      _os_log_error_impl(&dword_22506F000, v21, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v23, 0x16u);
    }

    __assert_rtn("[CKDMMCS getMMCSEngine]", "CKDMMCS.m", 551, "0 && already dropped");
  }

  v5 = objc_msgSend_MMCSEngineContext(self, a2, v2);

  if (!v5)
  {
    v18 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v18, v19, a2, self, @"CKDMMCS.m", 552, @"Expected non-nil MMCS engine context");
  }

  v8 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  objc_msgSend_assertMMCSSerialized(v8, v9, v10);

  v13 = objc_msgSend_MMCSEngineContext(self, v11, v12);
  v16 = objc_msgSend_MMCSEngine(v13, v14, v15);

  return v16;
}

- (unsigned)getMaxChunkCountForSection
{
  v22 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v15 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = NSStringFromSelector(a2);
      v18 = 138412546;
      selfCopy = self;
      v20 = 2114;
      v21 = v17;
      _os_log_error_impl(&dword_22506F000, v16, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v18, 0x16u);
    }

    __assert_rtn("[CKDMMCS getMaxChunkCountForSection]", "CKDMMCS.m", 559, "0 && already dropped");
  }

  v5 = objc_msgSend_MMCSEngineContext(self, a2, v2);

  if (!v5)
  {
    v13 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v13, v14, a2, self, @"CKDMMCS.m", 560, @"Expected non-nil MMCS engine context");
  }

  v8 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  v11 = objc_msgSend_maxChunkCountForSection(v8, v9, v10);

  return v11;
}

- (id)_referenceIdentifierFromAssetKey:(id)key
{
  v26 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v19 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = NSStringFromSelector(a2);
      v22 = 138412546;
      selfCopy = self;
      v24 = 2114;
      *v25 = v21;
      _os_log_error_impl(&dword_22506F000, v20, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v22, 0x16u);
    }

    __assert_rtn("[CKDMMCS _referenceIdentifierFromAssetKey:]", "CKDMMCS.m", 566, "0 && already dropped");
  }

  v8 = keyCopy;
  if (keyCopy)
  {
    *&v25[2] = 0;
    v9 = objc_msgSend_bytes(keyCopy, v6, v7, 0, 0, *&v25[2], v26);
    v12 = objc_msgSend_length(v8, v10, v11);
    CC_SHA1(v9, v12, &v22);
    v14 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v13, &v22, 20);
    v17 = objc_msgSend_CKLowercaseHexStringWithoutSpaces(v14, v15, v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_logMMCSOptions:(id)options
{
  v18 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v16 = 2114;
      v17 = v12;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _logMMCSOptions:]", "CKDMMCS.m", 584, "0 && already dropped");
  }

  v7 = optionsCopy;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_225128670;
  v13[3] = &unk_278546308;
  v13[4] = self;
  v8 = objc_msgSend_CKMapKeysAndValues_(optionsCopy, v6, v13);
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v9 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = v8;
    _os_log_impl(&dword_22506F000, v9, OS_LOG_TYPE_INFO, "Using MMCS options: %{public}@", buf, 0xCu);
  }
}

- (void)performOperationCleanup
{
  v4 = objc_msgSend_MMCSEngineContext(self, a2, v2);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = sub_225128A9C;
  v6[3] = &unk_278545A00;
  v6[4] = self;
  objc_msgSend_MMCSSerializeSyncRecursive_(v4, v5, v6);
}

- (id)_contextToRegisterItemGroup:(id)group operation:(id)operation options:(unint64_t)options completionHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  operationCopy = operation;
  handlerCopy = handler;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v40 = v39;
      v41 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v41;
      _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToRegisterItemGroup:operation:options:completionHandler:]", "CKDMMCS.m", 964, "0 && already dropped");
  }

  v16 = handlerCopy;
  v17 = objc_msgSend_operationID(operationCopy, v14, v15);
  v20 = objc_msgSend_container(operationCopy, v18, v19);
  v23 = objc_msgSend_containerID(v20, v21, v22);
  v26 = objc_msgSend_containerIdentifier(v23, v24, v25);

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v54 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 3221225472;
  v44 = sub_225128E00;
  v45 = &unk_278546380;
  optionsCopy = options;
  v27 = groupCopy;
  v46 = v27;
  v52 = (options & 4) != 0;
  v28 = v17;
  v47 = v28;
  v50 = buf;
  v29 = v26;
  v48 = v29;
  selfCopy = self;
  v30 = _Block_copy(&aBlock);
  v31 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v31, v32, self, v27, operationCopy, 0, 0, v30, v16, aBlock, v43, v44, v45);
  v34 = [CKDRegisterOperationInfo alloc];
  v36 = objc_msgSend_initWithOptions_(v34, v35, options);
  objc_msgSend_setOperationInfo_(started, v37, v36);

  _Block_object_dispose(buf, 8);

  return started;
}

- (id)registerItemGroupSet:(id)set operation:(id)operation options:(unint64_t)options completionHandler:(id)handler
{
  v52 = *MEMORY[0x277D85DE8];
  setCopy = set;
  operationCopy = operation;
  handlerCopy = handler;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v38 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v39 = v38;
      v40 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v50 = 2114;
      v51 = v40;
      _os_log_error_impl(&dword_22506F000, v39, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS registerItemGroupSet:operation:options:completionHandler:]", "CKDMMCS.m", 1055, "0 && already dropped");
  }

  v14 = handlerCopy;
  v15 = [CKDMMCSItemGroupSetContext alloc];
  v41 = v14;
  v17 = objc_msgSend_initWithItemGroupSet_itemGroupSetCompletionBlock_(v15, v16, setCopy, v14);
  v19 = v17;
  if ((options & 0x42) != 0)
  {
    objc_msgSend_setMmcsOperationType_(v17, v18, 6);
  }

  else
  {
    objc_msgSend_setMmcsOperationType_(v17, v18, 5);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = setCopy;
  v22 = objc_msgSend_itemsGroups(setCopy, v20, v21);
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v23, &v43, v47, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v44;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v44 != v28)
        {
          objc_enumerationMutation(v22);
        }

        v30 = *(*(&v43 + 1) + 8 * i);
        v31 = objc_msgSend_itemGroupCompletionBlock(v19, v25, v26);
        v33 = objc_msgSend__contextToRegisterItemGroup_operation_options_completionHandler_(self, v32, v30, operationCopy, options, v31);

        objc_msgSend_addItemGroupContext_(v19, v34, v33);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v22, v25, &v43, v47, 16);
    }

    while (v27);
  }

  objc_msgSend_start(v19, v35, v36);

  return v19;
}

- (id)_contextToGetItemGroup:(id)group operation:(id)operation options:(id)options progress:(id)progress command:(id)command completionHandler:(id)handler
{
  v57 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  commandCopy = command;
  handlerCopy = handler;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v41 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v42 = v41;
      v43 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v55 = 2114;
      v56 = v43;
      _os_log_error_impl(&dword_22506F000, v42, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToGetItemGroup:operation:options:progress:command:completionHandler:]", "CKDMMCS.m", 1080, "0 && already dropped");
  }

  v21 = handlerCopy;
  v22 = objc_msgSend_operationID(operationCopy, v19, v20);
  v25 = objc_msgSend_container(operationCopy, v23, v24);
  v28 = objc_msgSend_containerID(v25, v26, v27);
  v31 = objc_msgSend_containerIdentifier(v28, v29, v30);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225129CAC;
  aBlock[3] = &unk_2785463A8;
  v47 = groupCopy;
  v48 = v22;
  v49 = optionsCopy;
  selfCopy2 = self;
  v51 = v31;
  v52 = a2;
  v32 = v31;
  v33 = optionsCopy;
  v34 = v22;
  v35 = groupCopy;
  v36 = _Block_copy(aBlock);
  v37 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v37, v38, self, v35, operationCopy, progressCopy, commandCopy, v36, v21);

  return started;
}

- (id)getItemGroupSet:(id)set operation:(id)operation shouldFetchAssetContentInMemory:(BOOL)memory options:(id)options progress:(id)progress command:(id)command completionHandler:(id)handler
{
  v81 = *MEMORY[0x277D85DE8];
  setCopy = set;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  commandCopy = command;
  handlerCopy = handler;
  selfCopy = self;
  v19 = *MEMORY[0x277CBC878];
  v20 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v20 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v19);
    }

    v60 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v61 = v60;
      v62 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy2 = self;
      v77 = 2114;
      v78 = v62;
      _os_log_error_impl(&dword_22506F000, v61, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS getItemGroupSet:operation:shouldFetchAssetContentInMemory:options:progress:command:completionHandler:]", "CKDMMCS.m", 1208, "0 && already dropped");
  }

  v21 = handlerCopy;
  if (v20 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v19);
  }

  v22 = progressCopy;
  v23 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v56 = v23;
    v59 = objc_msgSend_operationID(operationCopy, v57, v58);
    *buf = 138412802;
    selfCopy2 = setCopy;
    v77 = 2114;
    v78 = v59;
    v79 = 2112;
    v80 = optionsCopy;
    _os_log_debug_impl(&dword_22506F000, v56, OS_LOG_TYPE_DEBUG, "Getting MMCS item group set %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v24 = [CKDMMCSItemGroupSetContext alloc];
  v63 = v21;
  v26 = objc_msgSend_initWithItemGroupSet_itemGroupSetCompletionBlock_(v24, v25, setCopy, v21);
  objc_msgSend_setMmcsOperationType_(v26, v27, 2);
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v64 = setCopy;
  obj = objc_msgSend_itemsGroups(setCopy, v28, v29);
  v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v30, &v70, v74, 16);
  if (v31)
  {
    v34 = v31;
    v35 = *v71;
    do
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v71 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v37 = *(*(&v70 + 1) + 8 * i);
        v38 = objc_msgSend_itemGroupCompletionBlock(v26, v32, v33);
        v40 = objc_msgSend__contextToGetItemGroup_operation_options_progress_command_completionHandler_(selfCopy, v39, v37, operationCopy, optionsCopy, v22, commandCopy, v38);

        v43 = objc_alloc_init(CKDMMCSGetOperationInfo);
        if (memory)
        {
          objc_msgSend_setDestination_(v43, v41, 1);
        }

        else
        {
          v45 = objc_msgSend_operationInfo(operationCopy, v41, v42);
          v48 = optionsCopy;
          v49 = objc_msgSend_usesAssetDownloadStagingManager(v45, v46, v47);

          v51 = v49 == 0;
          optionsCopy = v48;
          v22 = progressCopy;
          if (v51)
          {
            objc_msgSend_setDestination_(v43, v50, 0);
          }

          else
          {
            objc_msgSend_setDestination_(v43, v50, 2);
          }
        }

        objc_msgSend_setOperationInfo_(v40, v44, v43);
        objc_msgSend_addItemGroupContext_(v26, v52, v40);
      }

      v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v32, &v70, v74, 16);
    }

    while (v34);
  }

  objc_msgSend_start(v26, v53, v54);

  return v26;
}

- (id)_contextToPutItemGroup:(id)group operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler
{
  v54 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  handlerCopy = handler;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v39 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v40 = v39;
      v41 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v52 = 2114;
      v53 = v41;
      _os_log_error_impl(&dword_22506F000, v40, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToPutItemGroup:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1237, "0 && already dropped");
  }

  v19 = handlerCopy;
  v20 = objc_msgSend_operationID(operationCopy, v17, v18);
  v23 = objc_msgSend_container(operationCopy, v21, v22);
  v26 = objc_msgSend_containerID(v23, v24, v25);
  v29 = objc_msgSend_containerIdentifier(v26, v27, v28);

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22512ADD8;
  aBlock[3] = &unk_2785463A8;
  v44 = groupCopy;
  v45 = v20;
  v46 = optionsCopy;
  selfCopy2 = self;
  v48 = v29;
  v49 = a2;
  v30 = v29;
  v31 = optionsCopy;
  v32 = v20;
  v33 = groupCopy;
  v34 = _Block_copy(aBlock);
  v35 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v35, v36, self, v33, operationCopy, progressCopy, 0, v34, v19);

  return started;
}

- (id)putItemGroupSet:(id)set operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler
{
  v65 = *MEMORY[0x277D85DE8];
  setCopy = set;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  handlerCopy = handler;
  selfCopy = self;
  v18 = *MEMORY[0x277CBC878];
  v19 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v19 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v48 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v49 = v48;
      v50 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy2 = self;
      v61 = 2114;
      v62 = v50;
      _os_log_error_impl(&dword_22506F000, v49, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS putItemGroupSet:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1342, "0 && already dropped");
  }

  v20 = handlerCopy;
  if (v19 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v18);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v44 = v21;
    v47 = objc_msgSend_operationID(operationCopy, v45, v46);
    *buf = 138412802;
    selfCopy2 = setCopy;
    v61 = 2114;
    v62 = v47;
    v63 = 2112;
    v64 = optionsCopy;
    _os_log_debug_impl(&dword_22506F000, v44, OS_LOG_TYPE_DEBUG, "Putting MMCS item group set %@ for operationID:%{public}@ with options %@", buf, 0x20u);
  }

  v22 = [CKDMMCSItemGroupSetContext alloc];
  v51 = v20;
  v24 = objc_msgSend_initWithItemGroupSet_itemGroupSetCompletionBlock_(v22, v23, setCopy, v20);
  objc_msgSend_setMmcsOperationType_(v24, v25, 1);
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = setCopy;
  v28 = objc_msgSend_itemsGroups(setCopy, v26, v27);
  v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v29, &v54, v58, 16);
  if (v30)
  {
    v33 = v30;
    v34 = *v55;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v55 != v34)
        {
          objc_enumerationMutation(v28);
        }

        v36 = *(*(&v54 + 1) + 8 * i);
        v37 = objc_msgSend_itemGroupCompletionBlock(v24, v31, v32);
        v39 = objc_msgSend__contextToPutItemGroup_operation_options_progress_completionHandler_(selfCopy, v38, v36, operationCopy, optionsCopy, progressCopy, v37);

        objc_msgSend_addItemGroupContext_(v24, v40, v39);
      }

      v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v28, v31, &v54, v58, 16);
    }

    while (v33);
  }

  objc_msgSend_start(v24, v41, v42);

  return v24;
}

- (id)retrieveChunkWithSignature:(id)signature
{
  v52[1] = *MEMORY[0x277D85DE8];
  signatureCopy = signature;
  v5 = MEMORY[0x277CBC880];
  if (*MEMORY[0x277CBC880] != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v6 = MEMORY[0x277CBC830];
  v7 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    selfCopy3 = self;
    v46 = 2112;
    v47 = signatureCopy;
    _os_log_debug_impl(&dword_22506F000, v7, OS_LOG_TYPE_DEBUG, "[%@ retrieveChunkWithSignature:%@] starting", buf, 0x16u);
  }

  v8 = [C3DownloadChunkContext alloc];
  v10 = objc_msgSend_initWithMMCS_(v8, v9, self);
  v52[0] = signatureCopy;
  v12 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v11, v52, 1);
  v13 = objc_opt_new();
  v16 = objc_msgSend_MMCSEngineContext(self, v14, v15);
  v36 = MEMORY[0x277D85DD0];
  v37 = 3221225472;
  v38 = sub_22512BD10;
  v39 = &unk_2785463D0;
  selfCopy2 = self;
  v17 = v10;
  v41 = v17;
  v18 = v13;
  v42 = v18;
  v19 = v12;
  v43 = v19;
  objc_msgSend_MMCSSerializeSyncRecursive_(v16, v20, &v36);

  v23 = objc_msgSend_signatureToMutableData(v17, v21, v22, v36, v37, v38, v39, selfCopy2);
  v25 = objc_msgSend_objectForKeyedSubscript_(v23, v24, signatureCopy);

  if (*v5 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
  }

  v26 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEBUG))
  {
    v32 = v26;
    v35 = objc_msgSend_signatureToMutableData(v17, v33, v34);
    *buf = 138413058;
    selfCopy3 = self;
    v46 = 2112;
    v47 = signatureCopy;
    v48 = 2112;
    v49 = v25;
    v50 = 2112;
    v51 = v35;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "[%@ retrieveChunkWithSignature:%@] found %@ with %@", buf, 0x2Au);
  }

  if (objc_msgSend_length(v25, v27, v28))
  {
    v29 = v25;
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  return v29;
}

- (id)registeredMMCSItemForRereferencedAsset:(id)asset
{
  assetCopy = asset;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_225073EA0;
  v19 = sub_2250734DC;
  v20 = 0;
  v7 = objc_msgSend_MMCSEngineContext(self, v5, v6);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_22512C0B4;
  v12[3] = &unk_278546420;
  v14 = &v15;
  v12[4] = self;
  v8 = assetCopy;
  v13 = v8;
  objc_msgSend_MMCSSerializeSyncRecursive_(v7, v9, v12);

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

- (id)CKStatusReportArray
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v10 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v11 = v10;
      v12 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v12;
      _os_log_error_impl(&dword_22506F000, v11, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS CKStatusReportArray]", "CKDMMCS.m", 1389, "0 && already dropped");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v16 = sub_225073EA0;
  v17 = sub_2250734DC;
  v18 = @"Empty MMCS Status";
  v4 = objc_msgSend_MMCSEngineContext(self, a2, v2);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = sub_22512C41C;
  v13[3] = &unk_278546448;
  v13[4] = self;
  v13[5] = buf;
  objc_msgSend_MMCSSerializeSyncRecursive_(v4, v5, v13);

  v14 = *(*&buf[8] + 40);
  v7 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v6, &v14, 1);
  _Block_object_dispose(buf, 8);

  return v7;
}

- (BOOL)_getRegisteredItemsGreaterThan:(unint64_t)than itemIds:(unint64_t *)ids itemCount:(unint64_t *)count error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v9 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v10 = v9;
      v11 = NSStringFromSelector(a2);
      v12[0] = 138412546;
      *&v12[1] = self;
      v13 = 2114;
      v14 = v11;
      _os_log_error_impl(&dword_22506F000, v10, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", v12, 0x16u);
    }

    __assert_rtn("[CKDMMCS _getRegisteredItemsGreaterThan:itemIds:itemCount:error:]", "CKDMMCS.m", 1398, "0 && already dropped");
  }

  objc_msgSend_getMMCSEngine(self, a2, than);
  return MMCSGetRegisteredItems() != 0;
}

- (BOOL)registeredItemCount:(unint64_t *)count error:(id *)error
{
  v23 = *MEMORY[0x277D85DE8];
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v13 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_error_impl(&dword_22506F000, v14, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS registeredItemCount:error:]", "CKDMMCS.m", 1414, "0 && already dropped");
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v22 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v7 = objc_msgSend_MMCSEngineContext(self, a2, count);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = sub_22512C850;
  v16[3] = &unk_278546470;
  v16[4] = self;
  v16[5] = buf;
  v16[6] = &v17;
  v16[7] = count;
  objc_msgSend_MMCSSerializeSyncRecursive_(v7, v8, v16);

  v9 = v18[3];
  if (v9)
  {
    if (error)
    {
      *error = v9;
    }

    else
    {
      CFRelease(v9);
      v18[3] = 0;
    }
  }

  v10 = *(*&buf[8] + 24);
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(buf, 8);
  return v10;
}

- (void)showRegisteredItemsInContainer:(id)container
{
  v89[2] = *MEMORY[0x277D85DE8];
  containerCopy = container;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v54 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v55 = v54;
      v56 = NSStringFromSelector(a2);
      *v86 = 138412546;
      *&v86[4] = self;
      *&v86[12] = 2114;
      *&v86[14] = v56;
      _os_log_error_impl(&dword_22506F000, v55, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", v86, 0x16u);
    }

    __assert_rtn("[CKDMMCS showRegisteredItemsInContainer:]", "CKDMMCS.m", 1432, "0 && already dropped");
  }

  obj = 0;
  v77 = 0;
  *v86 = 0;
  *&v86[8] = v86;
  *&v86[16] = 0x3032000000;
  v87 = sub_225073EA0;
  v88 = sub_2250734DC;
  v89[0] = 0;
  v6 = objc_msgSend_registeredItemCount_error_(self, v5, &v77, &obj);
  objc_storeStrong(v89, obj);
  v7 = *MEMORY[0x277CBC878];
  if (v6)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v8 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      LODWORD(v83) = 134217984;
      *(&v83 + 4) = v77;
      _os_log_debug_impl(&dword_22506F000, v8, OS_LOG_TYPE_DEBUG, "MMCS has %llu registered items.", &v83, 0xCu);
    }

    v9 = v77;
    if (v77 <= 0x64)
    {
      v9 = 100;
    }

    *&v83 = 0;
    *(&v83 + 1) = &v83;
    if (v9 >= 0x3E8)
    {
      v10 = 1000;
    }

    else
    {
      v10 = v9;
    }

    v84 = 0x2020000000;
    v85 = 0;
    v13 = malloc_type_malloc(8 * v10, 0x100004000313F17uLL);
    v14 = 0;
    v72 = 0;
    v73 = &v72;
    v74 = 0x2020000000;
    v75 = 0;
    v15 = *(&v83 + 1);
    *&v16 = 134218240;
    v58 = v16;
    v60 = v10;
    while (1)
    {
      *(v15 + 24) = v10;
      v17 = objc_msgSend_MMCSEngineContext(self, v11, v12, v58);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = sub_22512D130;
      v71[3] = &unk_278546498;
      v71[4] = self;
      v71[5] = &v72;
      v71[8] = v14;
      v71[9] = v13;
      v71[6] = &v83;
      v71[7] = v86;
      objc_msgSend_MMCSSerializeSyncRecursive_(v17, v18, v71);

      if ((v73[3] & 1) == 0)
      {
        break;
      }

      if (*(*(&v83 + 1) + 24))
      {
        v19 = objc_msgSend_array(MEMORY[0x277CBEB18], v11, v12);
        if (*(*(&v83 + 1) + 24) >= 1)
        {
          v20 = 0;
          while (1)
          {
            if (*MEMORY[0x277CBC880] != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v21 = *MEMORY[0x277CBC830];
            if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
            {
              v26 = v13[v20];
              *buf = 134217984;
              v80 = v26;
              _os_log_debug_impl(&dword_22506F000, v21, OS_LOG_TYPE_DEBUG, "MMCS itemID %llu registered.", buf, 0xCu);
            }

            v22 = v13[v20];
            if (v14 >= v22)
            {
              break;
            }

            v23 = objc_alloc_init(CKDMMCSItem);
            objc_msgSend_setItemID_(v23, v24, v13[v20]);
            objc_msgSend_addObject_(v19, v25, v23);

            ++v20;
            v14 = v22;
            if (v20 >= *(*(&v83 + 1) + 24))
            {
              goto LABEL_29;
            }
          }

          if (*MEMORY[0x277CBC880] != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v27 = *MEMORY[0x277CBC830];
          if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
          {
            v50 = v13[v20];
            *buf = v58;
            v80 = v14;
            v81 = 2048;
            v82 = v50;
            _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "Expected registered item IDs to be ordered ascending: Previous itemId %llu is not less than %llu.", buf, 0x16u);
          }
        }

        v22 = v14;
LABEL_29:
        v28 = [CKDMMCSItemGroupSet alloc];
        v64 = objc_msgSend_initWithItems_(v28, v29, v19);
        v30 = [CKDOperation alloc];
        v31 = objc_opt_new();
        v63 = objc_msgSend_initWithOperationInfo_container_(v30, v32, v31, containerCopy);

        v33 = dispatch_semaphore_create(0);
        v69[0] = MEMORY[0x277D85DD0];
        v69[1] = 3221225472;
        v69[2] = sub_22512D1A4;
        v69[3] = &unk_2785464C0;
        v34 = v33;
        v70 = v34;
        v62 = objc_msgSend_registerItemGroupSet_operation_options_completionHandler_(self, v35, v64, v63, 4, v69);
        v61 = v34;
        dispatch_semaphore_wait(v34, 0xFFFFFFFFFFFFFFFFLL);
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v68 = 0u;
        v38 = objc_msgSend_itemsGroups(v64, v36, v37);
        v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v65, v78, 16);
        if (v42)
        {
          v43 = *v66;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v66 != v43)
              {
                objc_enumerationMutation(v38);
              }

              v45 = objc_msgSend_items(*(*(&v65 + 1) + 8 * i), v40, v41);
              v48 = objc_msgSend_assetCache(self, v46, v47);
              objc_msgSend_checkAssetHandlesForRegisteredMMCSItems_(v48, v49, v45);
            }

            v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v40, &v65, v78, 16);
          }

          while (v42);
        }

        v14 = v22;
      }

      v10 = v60;
      v15 = *(&v83 + 1);
      if (*(*(&v83 + 1) + 24) != v60)
      {
        goto LABEL_47;
      }
    }

    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v53 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v57 = *(*&v86[8] + 40);
      *buf = 138412290;
      v80 = v57;
      _os_log_error_impl(&dword_22506F000, v53, OS_LOG_TYPE_ERROR, "Error enumerating registered items %@", buf, 0xCu);
    }

LABEL_47:
    free(v13);
    _Block_object_dispose(&v72, 8);
    _Block_object_dispose(&v83, 8);
  }

  else
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v7);
    }

    v51 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
    {
      v52 = *(*&v86[8] + 40);
      LODWORD(v83) = 138412290;
      *(&v83 + 4) = v52;
      _os_log_debug_impl(&dword_22506F000, v51, OS_LOG_TYPE_DEBUG, "Error counting registered items %@", &v83, 0xCu);
    }
  }

  _Block_object_dispose(v86, 8);
}

- (void)_unregisterItemIDs:(id)ds
{
  v53 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (self->_didDrop)
  {
    selfCopy = self;
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v37 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v38 = v37;
      v39 = NSStringFromSelector(a2);
      *buf = 138412546;
      v50 = selfCopy;
      v51 = 2114;
      v52 = v39;
      _os_log_error_impl(&dword_22506F000, v38, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _unregisterItemIDs:]", "CKDMMCS.m", 1493, "0 && already dropped");
  }

  v8 = dsCopy;
  v9 = objc_msgSend_count(dsCopy, v6, v7);
  if (v9)
  {
    v10 = v9;
    selfCopy2 = self;
    v43 = malloc_type_calloc(8uLL, v9, 0xCEAFF8D3uLL);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v41 = v8;
    obj = v8;
    v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v11, &v44, v48, 16);
    if (v12)
    {
      v15 = v12;
      v16 = 0;
      v17 = *v45;
      v18 = MEMORY[0x277CBC878];
      v19 = MEMORY[0x277CBC880];
      v20 = MEMORY[0x277CBC830];
      do
      {
        v21 = 0;
        do
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v22 = objc_msgSend_unsignedLongLongValue(*(*(&v44 + 1) + 8 * v21), v13, v14, selfCopy2);
          v23 = *v18;
          v24 = *v19;
          if (v22)
          {
            v25 = v22;
            if (v24 != -1)
            {
              dispatch_once(v19, v23);
            }

            v26 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134217984;
              v50 = v25;
              _os_log_debug_impl(&dword_22506F000, v26, OS_LOG_TYPE_DEBUG, "Unregistering itemID=%llu with MMCS", buf, 0xCu);
            }

            v43[v16++] = v25;
          }

          else
          {
            if (v24 != -1)
            {
              dispatch_once(v19, v23);
            }

            v27 = *v20;
            if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_22506F000, v27, OS_LOG_TYPE_ERROR, "_unregisterItemIDs Zero itemID", buf, 2u);
            }

            --v10;
          }

          ++v21;
        }

        while (v15 != v21);
        v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v13, &v44, v48, 16);
      }

      while (v15);
    }

    objc_msgSend_getMMCSEngine(selfCopy2, v28, v29);
    if (HIDWORD(v10))
    {
      v32 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
      v34 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v33, "uint32_t CKDownsizeOrDie(NSUInteger)");
      objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v32, v35, v34, @"CloudKit-Prefix.pch", 34, @"That number was ridiculous");
    }

    MMCSUnregisterFiles();
    free(v43);
    v8 = v41;
  }
}

- (void)unregisterItemIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v12 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v13 = v12;
      v14 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v19 = 2114;
      v20 = v14;
      _os_log_error_impl(&dword_22506F000, v13, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS unregisterItemIDs:]", "CKDMMCS.m", 1515, "0 && already dropped");
  }

  v8 = dsCopy;
  v9 = objc_msgSend_MMCSEngineContext(self, v6, v7);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_22512D718;
  v15[3] = &unk_278545898;
  v15[4] = self;
  v16 = v8;
  v10 = v8;
  objc_msgSend_MMCSSerializeSyncRecursive_(v9, v11, v15);
}

- (id)_contextToPutSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler
{
  v72 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  handlerCopy = handler;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v50 = v49;
      v51 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v70 = 2114;
      v71 = v51;
      _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToPutSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1526, "0 && already dropped");
  }

  v18 = objc_msgSend_operationID(operationCopy, v16, v17);
  v21 = objc_msgSend_container(operationCopy, v19, v20);
  v24 = objc_msgSend_containerID(v21, v22, v23);
  v27 = objc_msgSend_containerIdentifier(v24, v25, v26);

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &stru_28385ED00;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22512DAC4;
  aBlock[3] = &unk_2785463A8;
  v29 = itemCopy;
  v66 = a2;
  v61 = v29;
  selfCopy2 = self;
  selfCopy3 = self;
  v52 = optionsCopy;
  v63 = v52;
  v30 = v28;
  v64 = v30;
  v31 = v18;
  v65 = v31;
  v32 = _Block_copy(aBlock);
  v33 = [CKDMMCSItemGroup alloc];
  v35 = objc_msgSend_initWithItem_(v33, v34, v29);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v38 = objc_msgSend_sectionItems(v29, v36, v37);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v56, v67, 16);
  if (v40)
  {
    v42 = v40;
    v43 = *v57;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v38);
        }

        objc_msgSend_addItem_(v35, v41, *(*(&v56 + 1) + 8 * i));
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v56, v67, 16);
    }

    while (v42);
  }

  v45 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v45, v46, selfCopy3, v35, operationCopy, progressCopy, 0, v32, handlerCopy);

  return started;
}

- (id)putSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  handlerCopy = handler;
  v18 = *MEMORY[0x277CBC878];
  v19 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v19 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      v38 = NSStringFromSelector(a2);
      v39 = 138412546;
      selfCopy = self;
      v41 = 2114;
      v42 = v38;
      _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v39, 0x16u);
    }

    __assert_rtn("[CKDMMCS putSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1617, "0 && already dropped");
  }

  v20 = handlerCopy;
  if (v19 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v18);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v21;
    v35 = objc_msgSend_operationID(operationCopy, v33, v34);
    v39 = 138412802;
    selfCopy = itemCopy;
    v41 = 2114;
    v42 = v35;
    v43 = 2112;
    v44 = optionsCopy;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Putting MMCS section item %@ for operationID:%{public}@ with options %@", &v39, 0x20u);
  }

  v23 = objc_msgSend__contextToPutSectionItem_operation_options_progress_completionHandler_(self, v22, itemCopy, operationCopy, optionsCopy, progressCopy, v20);
  objc_msgSend_setMmcsOperationType_(v23, v24, 3);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(operationCopy, v25, v26);
  objc_msgSend_setShouldCloneFileInAssetCache_(v23, v28, shouldCloneFileInAssetCache);
  objc_msgSend_start(v23, v29, v30);

  return v23;
}

- (id)_contextToGetSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler
{
  v72 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  handlerCopy = handler;
  if (self->_didDrop)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v49 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v50 = v49;
      v51 = NSStringFromSelector(a2);
      *buf = 138412546;
      selfCopy = self;
      v70 = 2114;
      v71 = v51;
      _os_log_error_impl(&dword_22506F000, v50, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", buf, 0x16u);
    }

    __assert_rtn("[CKDMMCS _contextToGetSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1632, "0 && already dropped");
  }

  v18 = objc_msgSend_operationID(operationCopy, v16, v17);
  v21 = objc_msgSend_container(operationCopy, v19, v20);
  v24 = objc_msgSend_containerID(v21, v22, v23);
  v27 = objc_msgSend_containerIdentifier(v24, v25, v26);

  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v28 = &stru_28385ED00;
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_22512E730;
  aBlock[3] = &unk_2785463A8;
  v29 = itemCopy;
  v66 = a2;
  v61 = v29;
  selfCopy2 = self;
  selfCopy3 = self;
  v52 = optionsCopy;
  v63 = v52;
  v30 = v28;
  v64 = v30;
  v31 = v18;
  v65 = v31;
  v32 = _Block_copy(aBlock);
  v33 = [CKDMMCSItemGroup alloc];
  v35 = objc_msgSend_initWithItem_(v33, v34, v29);
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v38 = objc_msgSend_sectionItems(v29, v36, v37);
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v39, &v56, v67, 16);
  if (v40)
  {
    v42 = v40;
    v43 = *v57;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v57 != v43)
        {
          objc_enumerationMutation(v38);
        }

        objc_msgSend_addItem_(v35, v41, *(*(&v56 + 1) + 8 * i));
      }

      v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v38, v41, &v56, v67, 16);
    }

    while (v42);
  }

  v45 = [CKDMMCSItemGroupContext alloc];
  started = objc_msgSend_initWithMMCS_itemGroup_operation_progress_command_start_groupCompletion_(v45, v46, selfCopy3, v35, operationCopy, progressCopy, 0, v32, handlerCopy);

  return started;
}

- (id)getSectionItem:(id)item operation:(id)operation options:(id)options progress:(id)progress completionHandler:(id)handler
{
  v45 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  operationCopy = operation;
  optionsCopy = options;
  progressCopy = progress;
  handlerCopy = handler;
  v18 = *MEMORY[0x277CBC878];
  v19 = *MEMORY[0x277CBC880];
  if (self->_didDrop)
  {
    if (v19 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v18);
    }

    v36 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      v37 = v36;
      v38 = NSStringFromSelector(a2);
      v39 = 138412546;
      selfCopy = self;
      v41 = 2114;
      v42 = v38;
      _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "already dropped %@ in %{public}@", &v39, 0x16u);
    }

    __assert_rtn("[CKDMMCS getSectionItem:operation:options:progress:completionHandler:]", "CKDMMCS.m", 1739, "0 && already dropped");
  }

  v20 = handlerCopy;
  if (v19 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v18);
  }

  v21 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEBUG))
  {
    v32 = v21;
    v35 = objc_msgSend_operationID(operationCopy, v33, v34);
    v39 = 138412802;
    selfCopy = itemCopy;
    v41 = 2114;
    v42 = v35;
    v43 = 2112;
    v44 = optionsCopy;
    _os_log_debug_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEBUG, "Getting MMCS section item %@ for operationID:%{public}@ with options %@", &v39, 0x20u);
  }

  v23 = objc_msgSend__contextToGetSectionItem_operation_options_progress_completionHandler_(self, v22, itemCopy, operationCopy, optionsCopy, progressCopy, v20);
  objc_msgSend_setMmcsOperationType_(v23, v24, 4);
  shouldCloneFileInAssetCache = objc_msgSend_shouldCloneFileInAssetCache(operationCopy, v25, v26);
  objc_msgSend_setShouldCloneFileInAssetCache_(v23, v28, shouldCloneFileInAssetCache);
  objc_msgSend_start(v23, v29, v30);

  return v23;
}

- (void)startTrackingItemIDsForMMCSItems:(id)items
{
  v24 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = self->_trackedItemIDs;
  objc_sync_enter(v5);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = itemsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        trackedItemIDs = self->_trackedItemIDs;
        v14 = MEMORY[0x277CCABB0];
        v15 = objc_msgSend_itemID(*(*(&v19 + 1) + 8 * v12), v8, v9, v19);
        v17 = objc_msgSend_numberWithUnsignedLongLong_(v14, v16, v15);
        objc_msgSend_addObject_(trackedItemIDs, v18, v17);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v19, v23, 16);
    }

    while (v10);
  }

  objc_sync_exit(v5);
}

- (void)stopTrackingItemIDsForMMCSItems:(id)items
{
  v24 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v5 = self->_trackedItemIDs;
  objc_sync_enter(v5);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = itemsCopy;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v19, v23, 16);
  if (v10)
  {
    v11 = *v20;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v6);
        }

        trackedItemIDs = self->_trackedItemIDs;
        v14 = MEMORY[0x277CCABB0];
        v15 = objc_msgSend_itemID(*(*(&v19 + 1) + 8 * v12), v8, v9, v19);
        v17 = objc_msgSend_numberWithUnsignedLongLong_(v14, v16, v15);
        objc_msgSend_removeObject_(trackedItemIDs, v18, v17);

        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v8, &v19, v23, 16);
    }

    while (v10);
  }

  objc_sync_exit(v5);
}

- (BOOL)isTrackingItemID:(unint64_t)d
{
  v5 = self->_trackedItemIDs;
  objc_sync_enter(v5);
  trackedItemIDs = self->_trackedItemIDs;
  v8 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, d);
  LOBYTE(trackedItemIDs) = objc_msgSend_containsObject_(trackedItemIDs, v9, v8);

  objc_sync_exit(v5);
  return trackedItemIDs;
}

@end