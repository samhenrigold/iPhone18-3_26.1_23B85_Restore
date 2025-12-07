@interface CKDAssetRequestPlanner
- (BOOL)hasSuccessfulAssetTokenRequests;
- (BOOL)hasSuccessfulBatches;
- (CKDAssetRequestPlanner)initWithAssetTokenRequestSizeLimit:(unsigned int)limit;
- (id)CKPropertiesDescription;
- (void)addMMCSItem:(id)item;
- (void)addMMCSSectionItem:(id)item;
- (void)addRereferencedPackageItem:(id)item;
- (void)failBatch:(id)batch;
- (void)planAssetRequests;
- (void)planRegisterBatches;
@end

@implementation CKDAssetRequestPlanner

- (CKDAssetRequestPlanner)initWithAssetTokenRequestSizeLimit:(unsigned int)limit
{
  v14.receiver = self;
  v14.super_class = CKDAssetRequestPlanner;
  v4 = [(CKDAssetRequestPlanner *)&v14 init];
  if (v4)
  {
    v5 = objc_opt_new();
    items = v4->_items;
    v4->_items = v5;

    v7 = objc_opt_new();
    assetZoneByKey = v4->_assetZoneByKey;
    v4->_assetZoneByKey = v7;

    v4->_assetTokenRequestSizeLimit = limit;
    v9 = objc_opt_new();
    assetBatchesByZoneID = v4->_assetBatchesByZoneID;
    v4->_assetBatchesByZoneID = v9;

    v11 = objc_opt_new();
    rerefAssetBatchesByZoneID = v4->_rerefAssetBatchesByZoneID;
    v4->_rerefAssetBatchesByZoneID = v11;
  }

  return v4;
}

- (void)addMMCSItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_containsObject_(self->_items, v4, itemCopy))
  {
    __assert_rtn("[CKDAssetRequestPlanner addMMCSItem:]", "CKDAssetRequestPlanner.m", 58, "![_items containsObject:item]");
  }

  objc_msgSend_addObject_(self->_items, v5, itemCopy);
  v8 = objc_msgSend_assetZoneKey(itemCopy, v6, v7);
  v11 = objc_msgSend_objectForKeyedSubscript_(self->_assetZoneByKey, v9, v8);
  if (!v11)
  {
    v12 = [CKDAssetZone alloc];
    v11 = objc_msgSend_initWithAssetZoneKey_(v12, v13, v8);
    objc_msgSend_setObject_forKeyedSubscript_(self->_assetZoneByKey, v14, v11, v8);
  }

  objc_msgSend_addMMCSItem_(v11, v10, itemCopy);
}

- (void)addRereferencedPackageItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_containsObject_(self->_items, v4, itemCopy))
  {
    __assert_rtn("[CKDAssetRequestPlanner addRereferencedPackageItem:]", "CKDAssetRequestPlanner.m", 71, "![_items containsObject:item]");
  }

  objc_msgSend_addObject_(self->_items, v5, itemCopy);
  assetZoneByKey = self->_assetZoneByKey;
  v9 = objc_msgSend_assetZoneKey(itemCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(assetZoneByKey, v10, v9);

  if (!v11)
  {
    v13 = [CKDAssetZone alloc];
    v16 = objc_msgSend_assetZoneKey(itemCopy, v14, v15);
    v11 = objc_msgSend_initWithAssetZoneKey_(v13, v17, v16);

    v18 = self->_assetZoneByKey;
    v21 = objc_msgSend_assetZoneKey(itemCopy, v19, v20);
    objc_msgSend_setObject_forKeyedSubscript_(v18, v22, v11, v21);
  }

  objc_msgSend_addRereferencedMMCSPackageItem_(v11, v12, itemCopy);
}

- (void)addMMCSSectionItem:(id)item
{
  itemCopy = item;
  if (objc_msgSend_containsObject_(self->_items, v4, itemCopy))
  {
    __assert_rtn("[CKDAssetRequestPlanner addMMCSSectionItem:]", "CKDAssetRequestPlanner.m", 83, "![_items containsObject:item]");
  }

  objc_msgSend_addObject_(self->_items, v5, itemCopy);
  assetZoneByKey = self->_assetZoneByKey;
  v9 = objc_msgSend_assetZoneKey(itemCopy, v7, v8);
  v11 = objc_msgSend_objectForKeyedSubscript_(assetZoneByKey, v10, v9);

  if (!v11)
  {
    v13 = [CKDAssetZone alloc];
    v16 = objc_msgSend_assetZoneKey(itemCopy, v14, v15);
    v11 = objc_msgSend_initWithAssetZoneKey_(v13, v17, v16);
  }

  objc_msgSend_addMMCSSectionItem_(v11, v12, itemCopy);
}

- (void)planRegisterBatches
{
  v152 = *MEMORY[0x277D85DE8];
  v123 = objc_opt_new();
  assetTokenRequestSizeLimit = self->_assetTokenRequestSizeLimit;
  objc_msgSend_setAssetRegisterAndPutBatches_(self, v3, 0);
  v145 = 0u;
  v146 = 0u;
  v143 = 0u;
  v144 = 0u;
  selfCopy = self;
  obj = objc_msgSend_allKeys(self->_assetZoneByKey, v4, v5);
  v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v6, &v143, v151, 16);
  if (v119)
  {
    v118 = *v144;
    do
    {
      v8 = 0;
      do
      {
        if (*v144 != v118)
        {
          objc_enumerationMutation(obj);
        }

        v120 = v8;
        v9 = *(*(&v143 + 1) + 8 * v8);
        v10 = objc_msgSend_objectForKeyedSubscript_(selfCopy->_assetZoneByKey, v7, v9);
        v11 = [CKDAssetBatch alloc];
        v13 = objc_msgSend_initWithAssetZone_(v11, v12, v10);
        v16 = objc_msgSend_useMMCSEncryptionV2(v9, v14, v15);
        v19 = objc_msgSend_BOOLValue(v16, v17, v18);

        v122 = v13;
        v124 = v19;
        objc_msgSend_setUseMMCSEncryptionV2_(v13, v20, v19);
        v141 = 0u;
        v142 = 0u;
        v139 = 0u;
        v140 = 0u;
        v125 = v10;
        v23 = objc_msgSend_assetRecords(v10, v21, v22);
        v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v139, v150, 16);
        if (v25)
        {
          v28 = v25;
          v29 = *v140;
          do
          {
            for (i = 0; i != v28; ++i)
            {
              if (*v140 != v29)
              {
                objc_enumerationMutation(v23);
              }

              v31 = *(*(&v139 + 1) + 8 * i);
              if (objc_msgSend_isAssetRecord(v31, v26, v27))
              {
                v32 = [CKDAssetRecord alloc];
                v35 = objc_msgSend_recordType(v31, v33, v34);
                v38 = objc_msgSend_recordID(v31, v36, v37);
                v40 = objc_msgSend_initWithRecordType_recordID_(v32, v39, v35, v38);

                v137 = 0u;
                v138 = 0u;
                v135 = 0u;
                v136 = 0u;
                v43 = objc_msgSend_allMMCSSectionItems(v31, v41, v42);
                v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v44, &v135, v149, 16);
                if (v45)
                {
                  v47 = v45;
                  v48 = *v136;
                  do
                  {
                    for (j = 0; j != v47; ++j)
                    {
                      if (*v136 != v48)
                      {
                        objc_enumerationMutation(v43);
                      }

                      objc_msgSend_addMMCSSectionItem_(v40, v46, *(*(&v135 + 1) + 8 * j));
                    }

                    v47 = objc_msgSend_countByEnumeratingWithState_objects_count_(v43, v46, &v135, v149, 16);
                  }

                  while (v47);
                }

                v133 = 0u;
                v134 = 0u;
                v131 = 0u;
                v132 = 0u;
                v52 = objc_msgSend_allMMCSItems(v31, v50, v51);
                v54 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v53, &v131, v148, 16);
                if (v54)
                {
                  v56 = v54;
                  v57 = *v132;
                  do
                  {
                    for (k = 0; k != v56; ++k)
                    {
                      if (*v132 != v57)
                      {
                        objc_enumerationMutation(v52);
                      }

                      objc_msgSend_addMMCSItem_(v40, v55, *(*(&v131 + 1) + 8 * k));
                    }

                    v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v52, v55, &v131, v148, 16);
                  }

                  while (v56);
                }

                if ((objc_msgSend_isEmpty(v40, v59, v60) & 1) == 0)
                {
                  if (objc_msgSend_sizeUpperBound(v40, v61, v62) > assetTokenRequestSizeLimit || objc_msgSend_isPackageSectionRecord(v40, v63, v64))
                  {
                    v67 = [CKDAssetBatch alloc];
                    v69 = objc_msgSend_initWithAssetZone_(v67, v68, v125);
                    objc_msgSend_setUseMMCSEncryptionV2_(v69, v70, v124);
                    objc_msgSend_addAssetRecord_(v69, v71, v31);
                    objc_msgSend_addObject_(v123, v72, v69);
                  }

                  else
                  {
                    v73 = objc_msgSend_sizeUpperBound(v40, v65, v66);
                    if (objc_msgSend_sizeUpperBound(v122, v74, v75) + v73 <= assetTokenRequestSizeLimit)
                    {
                      v81 = v122;
                    }

                    else
                    {
                      objc_msgSend_addObject_(v123, v76, v122);
                      v77 = [CKDAssetBatch alloc];
                      v79 = objc_msgSend_initWithAssetZone_(v77, v78, v125);

                      objc_msgSend_setUseMMCSEncryptionV2_(v79, v80, v124);
                      v81 = v79;
                    }

                    v122 = v81;
                    objc_msgSend_addAssetRecord_(v81, v76, v40);
                  }
                }
              }
            }

            v28 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v139, v150, 16);
          }

          while (v28);
        }

        if ((objc_msgSend_isEmptyOfRereferencesAssets(v122, v82, v83) & 1) == 0)
        {
          objc_msgSend_addObject_(v123, v84, v122);
        }

        v8 = v120 + 1;
      }

      while (v120 + 1 != v119);
      v119 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v7, &v143, v151, 16);
    }

    while (v119);
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  v85 = v123;
  v87 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v86, &v127, v147, 16);
  if (v87)
  {
    v90 = v87;
    v91 = *v128;
    do
    {
      for (m = 0; m != v90; ++m)
      {
        if (*v128 != v91)
        {
          objc_enumerationMutation(v85);
        }

        v93 = *(*(&v127 + 1) + 8 * m);
        assetBatchesByZoneID = selfCopy->_assetBatchesByZoneID;
        v95 = objc_msgSend_assetZone(v93, v88, v89);
        v98 = objc_msgSend_assetZoneKey(v95, v96, v97);
        v101 = objc_msgSend_destinationZoneID(v98, v99, v100);
        v103 = objc_msgSend_objectForKeyedSubscript_(assetBatchesByZoneID, v102, v101);

        if (!v103)
        {
          v103 = objc_opt_new();
          v105 = selfCopy->_assetBatchesByZoneID;
          v108 = objc_msgSend_assetZone(v93, v106, v107);
          v111 = objc_msgSend_assetZoneKey(v108, v109, v110);
          v114 = objc_msgSend_destinationZoneID(v111, v112, v113);
          objc_msgSend_setObject_forKeyedSubscript_(v105, v115, v103, v114);
        }

        objc_msgSend_addObject_(v103, v104, v93);
      }

      v90 = objc_msgSend_countByEnumeratingWithState_objects_count_(v85, v88, &v127, v147, 16);
    }

    while (v90);
  }

  objc_msgSend_setAssetRegisterAndPutBatches_(selfCopy, v116, v85);
}

- (void)planAssetRequests
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  assetTokenRequestSizeLimit = self->_assetTokenRequestSizeLimit;
  v5 = objc_opt_new();
  selfCopy = self;
  v8 = objc_msgSend_assetRegisterAndPutBatches(self, v6, v7);
  v9 = objc_alloc(MEMORY[0x277CBEB18]);
  v12 = objc_msgSend_count(v8, v10, v11);
  v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
  v16 = v14;
  if (v8)
  {
    objc_msgSend_addObjectsFromArray_(v14, v15, v8);
  }

  v41 = v8;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v17 = v16;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v43, v47, 16);
  if (v19)
  {
    v22 = v19;
    v23 = *v44;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v44 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v25 = *(*(&v43 + 1) + 8 * i);
        if ((objc_msgSend_isFailed(v25, v20, v21, v41) & 1) == 0)
        {
          if (objc_msgSend_size(v25, v20, v21) <= assetTokenRequestSizeLimit)
          {
            v31 = objc_msgSend_size(v25, v26, v27);
            if (objc_msgSend_size(v5, v32, v33) + v31 > assetTokenRequestSizeLimit)
            {
              objc_msgSend_addObject_(v3, v34, v5);
              v35 = objc_opt_new();

              v5 = v35;
            }

            objc_msgSend_addAssetBatch_(v5, v34, v25);
          }

          else
          {
            v28 = objc_opt_new();
            objc_msgSend_addAssetBatch_(v28, v29, v25);
            objc_msgSend_addObject_(v3, v30, v28);
          }
        }
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v43, v47, 16);
    }

    while (v22);
  }

  if ((objc_msgSend_isEmpty(v5, v36, v37) & 1) == 0)
  {
    objc_msgSend_addObject_(v3, v38, v5);
  }

  assetTokenRequests = selfCopy->_assetTokenRequests;
  selfCopy->_assetTokenRequests = v3;
  v40 = v3;
}

- (void)failBatch:(id)batch
{
  batchCopy = batch;
  objc_msgSend_setIsFailed_(batchCopy, v3, 1);
  v6 = objc_msgSend_assetTokenRequest(batchCopy, v4, v5);
  v8 = v6;
  if (v6)
  {
    objc_msgSend_addFailedBatch_(v6, v7, batchCopy);
  }
}

- (BOOL)hasSuccessfulBatches
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = objc_msgSend_assetRegisterAndPutBatches(self, a2, v2, 0);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v4, &v11, v15, 16);
  if (v7)
  {
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v3);
        }

        if (!objc_msgSend_isFailed(*(*(&v11 + 1) + 8 * i), v5, v6))
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v3, v5, &v11, v15, 16);
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (BOOL)hasSuccessfulAssetTokenRequests
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_assetTokenRequests;
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v10, v14, 16);
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v2);
        }

        if (objc_msgSend_hasSuccessfulBatches(*(*(&v10 + 1) + 8 * i), v4, v5, v10))
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v4, &v10, v14, 16);
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)CKPropertiesDescription
{
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_items(self, v5, v6);
  v10 = objc_msgSend_count(v7, v8, v9);
  v12 = objc_msgSend_stringWithFormat_(v4, v11, @"itemCount=%lu", v10);
  objc_msgSend_addObject_(v3, v13, v12);

  v14 = MEMORY[0x277CCACA8];
  v17 = objc_msgSend_assetRegisterAndPutBatches(self, v15, v16);
  v20 = objc_msgSend_count(v17, v18, v19);
  v22 = objc_msgSend_stringWithFormat_(v14, v21, @"assetRegisterAndPutBatchCount=%lu", v20);
  objc_msgSend_addObject_(v3, v23, v22);

  v24 = MEMORY[0x277CCACA8];
  v27 = objc_msgSend_assetTokenRequests(self, v25, v26);
  v30 = objc_msgSend_count(v27, v28, v29);
  v32 = objc_msgSend_stringWithFormat_(v24, v31, @"assetTokenRequestCount=%lu", v30);
  objc_msgSend_addObject_(v3, v33, v32);

  v35 = objc_msgSend_componentsJoinedByString_(v3, v34, @", ");

  return v35;
}

@end