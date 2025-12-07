@interface CKDRecordCacheTable
- (BOOL)_cachedRecordHasValidAssets:(id)assets forRequiredKeys:(id)keys;
- (BOOL)_cachedRecordKnownUserKeyData:(id)data satisfiesRequiredKeys:(id)keys;
- (CKDRecordCacheTable)init;
- (id)_dsidForAccount:(id)account;
- (id)_recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)_trimRecord:(id)record toRequiredKeys:(id)keys;
- (id)addRecord:(id)record container:(id)container knownUserKeys:(id)keys scope:(int64_t)scope;
- (id)etagForRecordID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)fetchCacheEntryRecordData:(id)data;
- (id)recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)recordsWithIDs:(id)ds container:(id)container requiredKeys:(id)keys scope:(int64_t)scope;
- (id)tableForReferenceProperty:(id)property;
- (unint64_t)numberOfRecordsWithID:(id)d container:(id)container;
- (void)clearAllRecords:(id)records;
- (void)clearAllRecordsForContainer:(id)container zoneWithID:(id)d;
- (void)clearAllRecordsInScope:(int64_t)scope container:(id)container;
- (void)deleteRecordWithID:(id)d container:(id)container scope:(int64_t)scope;
- (void)willAddToGroup:(id)group;
@end

@implementation CKDRecordCacheTable

- (CKDRecordCacheTable)init
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, v2);
  v7 = objc_msgSend_recordCacheEntryCountLimit(v4, v5, v6);
  v10 = objc_msgSend_recordCacheSizeLimit(v4, v8, v9);
  v13 = objc_msgSend_cachedRecordExpiryTime(v4, v11, v12);
  objc_msgSend_recordCacheExpireDelay(v4, v14, v15);
  v19.receiver = self;
  v19.super_class = CKDRecordCacheTable;
  v17 = [(CKSQLiteCacheTable *)&v19 initWithLogicalTableName:@"RecordCache" entryCountLimit:v7 dataSizeLimit:v10 expirationTime:v13 expireDelay:v16];

  return v17;
}

- (void)willAddToGroup:(id)group
{
  v5.receiver = self;
  v5.super_class = CKDRecordCacheTable;
  groupCopy = group;
  [(CKSQLiteCacheTable *)&v5 willAddToGroup:groupCopy];
  objc_msgSend_addSingletonInstanceToGroup_(MEMORY[0x277CBC650], v4, groupCopy, v5.receiver, v5.super_class);
}

- (id)tableForReferenceProperty:(id)property
{
  propertyCopy = property;
  if (objc_msgSend_isEqualToString_(propertyCopy, v5, @"containerID"))
  {
    v8 = MEMORY[0x277CBC650];
    v9 = objc_msgSend_tableGroup(self, v6, v7);
    v11 = objc_msgSend_singletonInstanceInGroup_(v8, v10, v9);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = CKDRecordCacheTable;
    v11 = [(CKSQLiteTable *)&v13 tableForReferenceProperty:propertyCopy];
  }

  return v11;
}

- (id)_dsidForAccount:(id)account
{
  accountCopy = account;
  if (objc_msgSend_accountType(accountCopy, v4, v5) == 1)
  {
    v8 = @"Anonymous";
  }

  else
  {
    v9 = objc_msgSend_dsid(accountCopy, v6, v7);
    if (v9)
    {
      v8 = v9;
    }

    else
    {
      v8 = @"Unknown";
    }
  }

  return v8;
}

- (BOOL)_cachedRecordKnownUserKeyData:(id)data satisfiesRequiredKeys:(id)keys
{
  v27 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  keysCopy = keys;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v7, &v22, v26, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(keysCopy);
        }

        if (CKIsIndexedArrayKey())
        {

          isSubsetOfSet = 0;
          goto LABEL_12;
        }
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(keysCopy, v12, &v22, v26, 16);
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v15 = objc_msgSend_null(MEMORY[0x277CBEB68], v13, v14, v22);
  v17 = objc_msgSend_containsObject_(dataCopy, v16, v15);

  if (v17)
  {
    isSubsetOfSet = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    isSubsetOfSet = 0;
    if (keysCopy && (isKindOfClass & 1) != 0)
    {
      isSubsetOfSet = objc_msgSend_isSubsetOfSet_(keysCopy, v21, dataCopy);
    }
  }

LABEL_12:

  return isSubsetOfSet;
}

- (BOOL)_cachedRecordHasValidAssets:(id)assets forRequiredKeys:(id)keys
{
  v46[2] = *MEMORY[0x277D85DE8];
  assetsCopy = assets;
  keysCopy = keys;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 1;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_225073F40;
  v39 = sub_22507352C;
  v40 = 0;
  v9 = objc_msgSend_valueStore(assetsCopy, v7, v8);
  v46[0] = objc_opt_class();
  v46[1] = objc_opt_class();
  v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v10, v46, 2);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = sub_22515F3EC;
  v31[3] = &unk_278546D18;
  v12 = keysCopy;
  v32 = v12;
  v33 = &v35;
  v34 = &v41;
  objc_msgSend_enumerateKeysAndValuesOfClasses_usingBlock_(v9, v13, v11, v31);

  if (*(v42 + 24) == 1 && objc_msgSend_count(v36[5], v14, v15))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = v36[5];
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v27, v45, 16);
    if (v20)
    {
      v21 = *v28;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v28 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v27 + 1) + 8 * i);
          if (objc_msgSend_paddedFileSize(v23, v18, v19, v27))
          {
            *(v42 + 24) = 0;
            goto LABEL_13;
          }

          objc_msgSend_setWasCached_(v23, v24, 1);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v18, &v27, v45, 16);
        if (v20)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v25 = *(v42 + 24);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v41, 8);

  return v25 & 1;
}

- (id)fetchCacheEntryRecordData:(id)data
{
  v13[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = objc_msgSend_primaryKey(self, v5, v6);
  v13[0] = v7;
  v9 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v8, v13, 1);
  v11 = objc_msgSend_fetchProperties_inObject_matchingDBProperties_label_(self, v10, &unk_2838C8E20, dataCopy, v9, off_27D719E80);

  return v11;
}

- (id)_recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  v53[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  keysCopy = keys;
  if (!dCopy)
  {
    v37 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v13, v14);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v37, v38, a2, self, @"CKDRecordCache.m", 204, @"Can't fetch a record if we don't have a recordID");
  }

  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = sub_225073F40;
  v50 = sub_22507352C;
  v51 = 0;
  v16 = objc_msgSend_account(containerCopy, v13, v14);
  v18 = objc_msgSend__dsidForAccount_(self, v17, v16);

  v52[0] = @"RECORDID";
  v21 = objc_msgSend_sqliteRepresentation(dCopy, v19, v20);
  v53[0] = v21;
  v52[1] = @"CONTAINERID";
  v24 = objc_msgSend_containerID(containerCopy, v22, v23);
  v53[1] = v24;
  v52[2] = @"SCOPE";
  v26 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v25, scope);
  v52[3] = @"DSID";
  v53[2] = v26;
  v53[3] = v18;
  v28 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v53, v52, 4);

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = sub_22515F8D0;
  v39[3] = &unk_278546D40;
  v39[4] = self;
  v29 = v28;
  v40 = v29;
  v30 = keysCopy;
  v41 = v30;
  v31 = containerCopy;
  v42 = v31;
  v44 = &v46;
  scopeCopy = scope;
  v32 = dCopy;
  v43 = v32;
  v34 = objc_msgSend_performInTransaction_(self, v33, v39);
  v35 = v47[5];

  _Block_object_dispose(&v46, 8);

  return v35;
}

- (id)_trimRecord:(id)record toRequiredKeys:(id)keys
{
  v49 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  keysCopy = keys;
  if (keysCopy)
  {
    objc_msgSend_setTrackChanges_(recordCopy, v6, 0);
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = objc_msgSend_valuesByKey(recordCopy, v8, v9);
    v13 = objc_msgSend_allKeys(v10, v11, v12);

    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v43, v48, 16);
    if (v15)
    {
      v17 = v15;
      v18 = *v44;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v44 != v18)
          {
            objc_enumerationMutation(v13);
          }

          v20 = *(*(&v43 + 1) + 8 * i);
          if ((objc_msgSend_containsObject_(keysCopy, v16, v20) & 1) == 0)
          {
            objc_msgSend_setObject_forKeyedSubscript_(recordCopy, v16, 0, v20);
          }
        }

        v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v43, v48, 16);
      }

      while (v17);
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v23 = objc_msgSend_encryptedValues(recordCopy, v21, v22, 0);
    v26 = objc_msgSend_allKeys(v23, v24, v25);

    v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v27, &v39, v47, 16);
    if (v28)
    {
      v30 = v28;
      v31 = *v40;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v40 != v31)
          {
            objc_enumerationMutation(v26);
          }

          v33 = *(*(&v39 + 1) + 8 * j);
          if ((objc_msgSend_containsObject_(keysCopy, v29, v33) & 1) == 0)
          {
            v35 = objc_msgSend_encryptedValues(recordCopy, v29, v34);
            objc_msgSend_setObject_forKeyedSubscript_(v35, v36, 0, v33);
          }
        }

        v30 = objc_msgSend_countByEnumeratingWithState_objects_count_(v26, v29, &v39, v47, 16);
      }

      while (v30);
    }

    objc_msgSend_setTrackChanges_(recordCopy, v37, 1);
  }

  return recordCopy;
}

- (id)recordWithID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  dCopy = d;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    if (!dCopy)
    {
      v27 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v27, v28, a2, self, @"CKDRecordCache.m", 282, @"Expected a recordID");
    }

    v22 = objc_msgSend__recordWithID_container_requiredKeys_scope_(self, v20, dCopy, containerCopy, keysCopy, scope);
    if ((objc_msgSend__cachedRecordHasValidAssets_forRequiredKeys_(self, v23, v22, keysCopy) & 1) == 0)
    {

      v22 = 0;
    }

    v25 = objc_msgSend__trimRecord_toRequiredKeys_(self, v24, v22, keysCopy);
  }

  return v22;
}

- (id)recordsWithIDs:(id)ds container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  v80 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = MEMORY[0x277CBEBF8];
  }

  else
  {
    if (!objc_msgSend_count(dsCopy, v20, v21))
    {
      v60 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v23, v24);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v60, v61, a2, self, @"CKDRecordCache.m", 300, @"Expected recordIDs");
    }

    v64 = keysCopy;
    v62 = objc_opt_new();
    v25 = objc_alloc(MEMORY[0x277CBEB18]);
    v28 = objc_msgSend_count(dsCopy, v26, v27);
    v30 = objc_msgSend_initWithCapacity_(v25, v29, v28);
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v63 = dsCopy;
    v31 = dsCopy;
    v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v32, &v73, v79, 16);
    if (v33)
    {
      v36 = v33;
      v37 = *v74;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v74 != v37)
          {
            objc_enumerationMutation(v31);
          }

          v39 = objc_msgSend_sqliteRepresentation(*(*(&v73 + 1) + 8 * i), v34, v35);
          objc_msgSend_addObject_(v30, v40, v39);
        }

        v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v31, v34, &v73, v79, 16);
      }

      while (v36);
    }

    v77[0] = @"CONTAINERID";
    v43 = objc_msgSend_containerID(containerCopy, v41, v42);
    v78[0] = v43;
    v77[1] = @"SCOPE";
    v45 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v44, scope);
    v78[1] = v45;
    v77[2] = @"DSID";
    v48 = objc_msgSend_account(containerCopy, v46, v47);
    v50 = objc_msgSend__dsidForAccount_(self, v49, v48);
    v78[2] = v50;
    v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, v78, v77, 3);

    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = sub_225160410;
    v65[3] = &unk_278546D68;
    v65[4] = self;
    v66 = v52;
    v67 = v30;
    keysCopy = v64;
    v68 = v64;
    v69 = containerCopy;
    scopeCopy = scope;
    v70 = v31;
    v53 = v62;
    v71 = v53;
    v54 = v30;
    v55 = v52;
    v57 = objc_msgSend_performInTransaction_(self, v56, v65);
    v58 = v71;
    v22 = v53;

    dsCopy = v63;
  }

  return v22;
}

- (unint64_t)numberOfRecordsWithID:(id)d container:(id)container
{
  v28[3] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  if ((*MEMORY[0x277CBC810] & 1) == 0)
  {
    v25 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v8, v9);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v25, v26, a2, self, @"CKDRecordCache.m", 380, @"Only suitable for testing: %s:%d", "/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/Caches/Records/CKDRecordCache.m", 380);
  }

  v27[0] = @"RECORDID";
  v11 = objc_msgSend_sqliteRepresentation(dCopy, v8, v9);
  v28[0] = v11;
  v27[1] = @"CONTAINERID";
  v14 = objc_msgSend_containerID(containerCopy, v12, v13);
  v28[1] = v14;
  v27[2] = @"DSID";
  v17 = objc_msgSend_account(containerCopy, v15, v16);
  v19 = objc_msgSend__dsidForAccount_(self, v18, v17);
  v28[2] = v19;
  v21 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v20, v28, v27, 3);

  v23 = objc_msgSend_countOfEntriesMatching_label_error_predicate_(self, v22, v21, off_27D719EB0, 0, &unk_28385CAA0);
  return v23;
}

- (id)addRecord:(id)record container:(id)container knownUserKeys:(id)keys scope:(int64_t)scope
{
  v157[2] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    if (!recordCopy)
    {
      v132 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v132, v133, a2, self, @"CKDRecordCache.m", 397, @"Null record");
    }

    v23 = objc_msgSend_recordID(recordCopy, v20, v21);

    if (!v23)
    {
      v134 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v134, v135, a2, self, @"CKDRecordCache.m", 398, @"Null recordID");
    }

    v26 = objc_msgSend_recordID(recordCopy, v24, v25);
    v29 = objc_msgSend_recordName(v26, v27, v28);

    if (!v29)
    {
      v136 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v30, v31);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v136, v137, a2, self, @"CKDRecordCache.m", 399, @"Null recordName");
    }

    v32 = objc_msgSend_recordID(recordCopy, v30, v31);
    v35 = objc_msgSend_zoneID(v32, v33, v34);

    if (!v35)
    {
      v138 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v36, v37);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v138, v139, a2, self, @"CKDRecordCache.m", 400, @"Null zoneID");
    }

    v38 = objc_msgSend_etag(recordCopy, v36, v37);

    if (!v38)
    {
      v140 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v39, v40);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v140, v141, a2, self, @"CKDRecordCache.m", 401, @"Null etag");
    }

    v149 = 0;
    v150 = &v149;
    v151 = 0x2020000000;
    v41 = objc_msgSend_valueStore(recordCopy, v39, v40);
    v157[0] = objc_opt_class();
    v157[1] = objc_opt_class();
    v43 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, v157, 2);
    v45 = objc_msgSend_containsValueOfClasses_passingTest_(v41, v44, v43, &unk_28385CAC0);

    v152 = v45;
    v148[0] = MEMORY[0x277D85DD0];
    v148[1] = 3221225472;
    v148[2] = sub_2251613A4;
    v148[3] = &unk_278546DB0;
    v148[4] = &v149;
    objc_msgSend_enumerateObjectsUsingBlock_(keysCopy, v46, v148);
    if (v150[3])
    {
      v22 = 0;
    }

    else
    {
      v144 = objc_msgSend_serializeProtectionData(recordCopy, v47, v48);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v142 = objc_msgSend_serializePersonalInfo(recordCopy, v49, v50);
        objc_msgSend_setSerializePersonalInfo_(recordCopy, v51, 1);
      }

      else
      {
        v142 = 0;
      }

      objc_msgSend_setSerializeProtectionData_(recordCopy, v49, 1);
      if (!keysCopy)
      {
        v54 = MEMORY[0x277CBEB98];
        v55 = objc_msgSend_null(MEMORY[0x277CBEB68], v52, v53);
        keysCopy = objc_msgSend_setWithObject_(v54, v56, v55);
      }

      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v57 = *MEMORY[0x277CBC868];
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v128 = objc_msgSend_recordID(recordCopy, v58, v59);
        v131 = objc_msgSend_etag(recordCopy, v129, v130);
        *buf = 138412546;
        v154 = v128;
        v155 = 2114;
        v156 = v131;
        _os_log_debug_impl(&dword_22506F000, v57, OS_LOG_TYPE_DEBUG, "Adding recordID %@ with etag %{public}@ to cache", buf, 0x16u);
      }

      v60 = [CKDProtocolTranslator alloc];
      v143 = objc_msgSend_initWithContainer_databaseScope_requireContainerScopedUserID_(v60, v61, containerCopy, scope, 0);
      v63 = objc_msgSend_pRecordFromRecord_forCache_(v143, v62, recordCopy, 1);
      v66 = objc_msgSend_dataRepresentation(v63, v64, v65);

      v67 = objc_alloc_init(CKDRecordCacheEntry);
      v70 = objc_msgSend_recordID(recordCopy, v68, v69);
      v73 = objc_msgSend_sqliteRepresentation(v70, v71, v72);
      objc_msgSend_setRecordID_(v67, v74, v73);

      v77 = objc_msgSend_zoneID(v70, v75, v76);
      v80 = objc_msgSend_sqliteRepresentation(v77, v78, v79);
      objc_msgSend_setZoneIdentifier_(v67, v81, v80);

      v84 = objc_msgSend_containerID(containerCopy, v82, v83);
      objc_msgSend_setContainerID_(v67, v85, v84);

      v87 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v86, scope);
      objc_msgSend_setDatabaseScope_(v67, v88, v87);

      v91 = objc_msgSend_etag(recordCopy, v89, v90);
      objc_msgSend_setEtag_(v67, v92, v91);

      v93 = objc_alloc(MEMORY[0x277CBEAA8]);
      objc_msgSend_cacheExpirationTime(self, v94, v95);
      v98 = objc_msgSend_initWithTimeIntervalSinceNow_(v93, v96, v97);
      objc_msgSend_setExpirationDate_(v67, v99, v98);

      objc_msgSend_setRecordData_(v67, v100, v66);
      objc_msgSend_setKnownUserKeys_(v67, v101, keysCopy);
      v104 = objc_msgSend_account(containerCopy, v102, v103);
      v106 = objc_msgSend__dsidForAccount_(self, v105, v104);
      objc_msgSend_setDsid_(v67, v107, v106);

      v110 = objc_msgSend_length(v66, v108, v109);
      v112 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v111, v110);
      objc_msgSend_setSize_(v67, v113, v112);

      v116 = objc_msgSend_modificationDate(recordCopy, v114, v115);
      v119 = v116;
      if (v116)
      {
        v120 = v116;
      }

      else
      {
        v120 = objc_msgSend_distantPast(MEMORY[0x277CBEAA8], v117, v118);
      }

      v121 = v120;

      v145[0] = MEMORY[0x277D85DD0];
      v145[1] = 3221225472;
      v145[2] = sub_2251613E8;
      v145[3] = &unk_278546800;
      v145[4] = self;
      v122 = v67;
      v146 = v122;
      v123 = v121;
      v147 = v123;
      v22 = objc_msgSend_performTransaction_(self, v124, v145);
      objc_msgSend_setSerializeProtectionData_(recordCopy, v125, v144);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_msgSend_setSerializePersonalInfo_(recordCopy, v126, v142);
      }
    }

    _Block_object_dispose(&v149, 8);
  }

  return v22;
}

- (id)etagForRecordID:(id)d container:(id)container requiredKeys:(id)keys scope:(int64_t)scope
{
  v63[4] = *MEMORY[0x277D85DE8];
  dCopy = d;
  containerCopy = container;
  keysCopy = keys;
  v16 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v14, v15);
  v19 = objc_msgSend_disableCaching(v16, v17, v18);

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    if (!dCopy)
    {
      v46 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v20, v21);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v46, v47, a2, self, @"CKDRecordCache.m", 489, @"Expected a recordID");
    }

    v23 = objc_msgSend_recordName(dCopy, v20, v21);

    if (!v23)
    {
      v48 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v24, v25);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v48, v49, a2, self, @"CKDRecordCache.m", 490, @"Expected a recordName");
    }

    v26 = objc_msgSend_zoneID(dCopy, v24, v25);

    if (!v26)
    {
      v50 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v27, v28);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v50, v51, a2, self, @"CKDRecordCache.m", 491, @"Expected a zoneID");
    }

    v56 = 0;
    v57 = &v56;
    v58 = 0x3032000000;
    v59 = sub_225073F40;
    v60 = sub_22507352C;
    v61 = 0;
    v62[0] = @"RECORDID";
    v29 = objc_msgSend_sqliteRepresentation(dCopy, v27, v28);
    v63[0] = v29;
    v62[1] = @"CONTAINERID";
    v32 = objc_msgSend_containerID(containerCopy, v30, v31);
    v63[1] = v32;
    v62[2] = @"SCOPE";
    v34 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v33, scope);
    v63[2] = v34;
    v62[3] = @"DSID";
    v37 = objc_msgSend_account(containerCopy, v35, v36);
    v39 = objc_msgSend__dsidForAccount_(self, v38, v37);
    v63[3] = v39;
    v41 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v40, v63, v62, 4);

    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = sub_22516187C;
    v52[3] = &unk_278546DD8;
    v52[4] = self;
    v42 = v41;
    v53 = v42;
    v54 = keysCopy;
    v55 = &v56;
    v44 = objc_msgSend_performInTransaction_(self, v43, v52);
    v22 = v57[5];

    _Block_object_dispose(&v56, 8);
  }

  return v22;
}

- (void)deleteRecordWithID:(id)d container:(id)container scope:(int64_t)scope
{
  v36[2] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v11 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v9, v10);
  v14 = objc_msgSend_disableCaching(v11, v12, v13);

  if ((v14 & 1) == 0)
  {
    if (!dCopy)
    {
      v29 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v15, v16);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v29, v30, a2, self, @"CKDRecordCache.m", 525, @"Expected a objectID");
    }

    v17 = objc_msgSend_recordName(dCopy, v15, v16);

    if (!v17)
    {
      v31 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v18, v19);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v31, v32, a2, self, @"CKDRecordCache.m", 526, @"Expected a recordName");
    }

    v20 = objc_msgSend_zoneID(dCopy, v18, v19);

    if (!v20)
    {
      v33 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v21, v22);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v33, v34, a2, self, @"CKDRecordCache.m", 527, @"Expected a zoneID");
    }

    v35[0] = @"RECORDID";
    v23 = objc_msgSend_sqliteRepresentation(dCopy, v21, v22);
    v35[1] = @"SCOPE";
    v36[0] = v23;
    v25 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v24, scope);
    v36[1] = v25;
    v27 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v26, v36, v35, 2);

    objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v28, v27, off_27D719EF8, 0, &unk_28385CB00);
  }
}

- (void)clearAllRecords:(id)records
{
  v4 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, records);
  v7 = objc_msgSend_disableCaching(v4, v5, v6);

  if ((v7 & 1) == 0)
  {

    objc_msgSend_deleteAllEntries_(self, v8, 0);
  }
}

- (void)clearAllRecordsInScope:(int64_t)scope container:(id)container
{
  v23[1] = *MEMORY[0x277D85DE8];
  v7 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], a2, scope, container);
  v10 = objc_msgSend_disableCaching(v7, v8, v9);

  if ((v10 & 1) == 0)
  {
    v13 = objc_msgSend_db(self, v11, v12);

    if (!v13)
    {
      v20 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
      objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v20, v21, a2, self, @"CKDRecordCache.m", 548, @"Expected non-nil db for %@", self);
    }

    v22 = @"SCOPE";
    v16 = objc_msgSend_numberWithInteger_(MEMORY[0x277CCABB0], v14, scope);
    v23[0] = v16;
    v18 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v17, v23, &v22, 1);

    objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v19, v18, off_27D719F10, 0, &unk_28385CB20);
  }
}

- (void)clearAllRecordsForContainer:(id)container zoneWithID:(id)d
{
  v19[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v8 = objc_msgSend_sharedOptions(MEMORY[0x277CBC1D8], v6, v7);
  v11 = objc_msgSend_disableCaching(v8, v9, v10);

  if (dCopy && (v11 & 1) == 0)
  {
    v18 = @"ZONEID";
    v14 = objc_msgSend_sqliteRepresentation(dCopy, v12, v13);
    v19[0] = v14;
    v16 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v15, v19, &v18, 1);

    objc_msgSend_deleteEntriesMatching_label_error_predicate_(self, v17, v16, off_27D719F28, 0, &unk_28385CB40);
  }
}

@end