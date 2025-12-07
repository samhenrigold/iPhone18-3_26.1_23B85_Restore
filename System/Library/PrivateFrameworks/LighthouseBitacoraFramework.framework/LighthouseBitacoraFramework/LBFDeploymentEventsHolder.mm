@interface LBFDeploymentEventsHolder
- (BOOL)dumpFetchedEvents;
- (LBFDeploymentEventsHolder)initWithExperimentOrTaskId:(id)id deploymentId:(id)deploymentId;
- (id)eventToJSONDictionary:(id)dictionary;
- (id)eventToJSONString:(id)string;
- (id)fetchedEventsInDictionaries;
- (id)getSortedEvents;
@end

@implementation LBFDeploymentEventsHolder

- (LBFDeploymentEventsHolder)initWithExperimentOrTaskId:(id)id deploymentId:(id)deploymentId
{
  idCopy = id;
  deploymentIdCopy = deploymentId;
  v21.receiver = self;
  v21.super_class = LBFDeploymentEventsHolder;
  v9 = [(LBFDeploymentEventsHolder *)&v21 init];
  v11 = v9;
  if (v9)
  {
    LBFLoggingUtilsInit(v9, v10);
    objc_storeStrong(&v11->_experimentOrTaskId, id);
    objc_storeStrong(&v11->_deploymentId, deploymentId);
    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mlruntimedEvents = v11->_mlruntimedEvents;
    v11->_mlruntimedEvents = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    lighthousePluginEvents = v11->_lighthousePluginEvents;
    v11->_lighthousePluginEvents = v14;

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    trialdEvents = v11->_trialdEvents;
    v11->_trialdEvents = v16;

    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    dprivacydEvents = v11->_dprivacydEvents;
    v11->_dprivacydEvents = v18;
  }

  return v11;
}

- (id)eventToJSONDictionary:(id)dictionary
{
  v89[4] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v88[0] = &unk_286800FD0;
  v88[1] = &unk_286800FE8;
  v89[0] = @"Unknown";
  v89[1] = @"Allocation";
  v88[2] = &unk_286801000;
  v88[3] = &unk_286801018;
  v89[2] = @"Activation";
  v89[3] = @"Deactivation";
  v6 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v4, v5, v89, v88, 4);
  objc_msgSend_json(dictionaryCopy, v7, v9, v8);
  v79 = v86 = 0;
  v12 = objc_msgSend_JSONObjectWithData_options_error_(MEMORY[0x277CCAAA0], v10, v11, v79, 0, &v86);
  v77 = v86;
  v78 = v12;
  v16 = objc_msgSend_mutableCopy(v12, v13, v15, v14);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = objc_msgSend_eventType(dictionaryCopy, v17, v19, v18);
    v23 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v21, v22, v20);
    v26 = objc_msgSend_objectForKey_(v6, v24, v25, v23);

    objc_msgSend_setObject_forKey_(v16, v27, v28, v26, @"eventType");
  }

  v80 = v6;
  v81 = dictionaryCopy;
  v29 = objc_msgSend_null(MEMORY[0x277CBEB68], v17, v19, v18);
  v32 = objc_msgSend_allKeysForObject_(v16, v30, v31, v29);

  v76 = v32;
  objc_msgSend_removeObjectsForKeys_(v16, v33, v34, v32);
  v38 = objc_msgSend_mutableCopy(v16, v35, v37, v36);
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v39 = v16;
  v42 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v40, v41, &v82, v87, 16);
  if (v42)
  {
    v45 = v42;
    v46 = *v83;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v83 != v46)
        {
          objc_enumerationMutation(v39);
        }

        v48 = *(*(&v82 + 1) + 8 * i);
        v49 = objc_msgSend_objectForKey_(v39, v43, v44, v48);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v51 = objc_msgSend_objectForKey_(v39, v43, v44, v48);
          v55 = objc_msgSend_mutableCopy(v51, v52, v54, v53);

          v59 = objc_msgSend_null(MEMORY[0x277CBEB68], v56, v58, v57);
          v62 = objc_msgSend_allKeysForObject_(v55, v60, v61, v59);

          objc_msgSend_removeObjectsForKeys_(v55, v63, v64, v62);
          v68 = objc_msgSend_copy(v55, v65, v67, v66);
          objc_msgSend_setObject_forKey_(v38, v69, v70, v68, v48);
        }
      }

      v45 = objc_msgSend_countByEnumeratingWithState_objects_count_(v39, v43, v44, &v82, v87, 16);
    }

    while (v45);
  }

  v74 = objc_msgSend_copy(v38, v71, v73, v72);

  return v74;
}

- (id)eventToJSONString:(id)string
{
  v4 = MEMORY[0x277CCAAA0];
  v5 = objc_msgSend_eventToJSONDictionary_(self, a2, v3, string);
  v14 = 0;
  v8 = objc_msgSend_dataWithJSONObject_options_error_(v4, v6, v7, v5, 1, &v14);

  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = objc_msgSend_initWithData_encoding_(v9, v10, v11, v8, 4);

  return v12;
}

- (id)getSortedEvents
{
  v22[1] = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_arrayByAddingObjectsFromArray_(self->_mlruntimedEvents, a2, v2, self->_lighthousePluginEvents);
  v7 = objc_msgSend_arrayByAddingObjectsFromArray_(v4, v5, v6, self->_trialdEvents);
  v10 = objc_msgSend_arrayByAddingObjectsFromArray_(v7, v8, v9, self->_dprivacydEvents);

  v11 = objc_alloc(MEMORY[0x277CCAC98]);
  v14 = objc_msgSend_initWithKey_ascending_(v11, v12, v13, @"timestamp", 1);
  v22[0] = v14;
  v17 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v15, v16, v22, 1);
  v20 = objc_msgSend_sortedArrayUsingDescriptors_(v10, v18, v19, v17);

  return v20;
}

- (BOOL)dumpFetchedEvents
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    deploymentId = self->_deploymentId;
    *buf = 138412290;
    v91 = deploymentId;
    _os_log_impl(&dword_255ED5000, v3, OS_LOG_TYPE_INFO, "dumpFetchedEvents deploymentId %@", buf, 0xCu);
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v5 = self->_mlruntimedEvents;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, &v82, v89, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v83;
    v10.n128_u64[0] = 138412290;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v83 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = objc_msgSend_eventToJSONString_(self, v9, v10, *(*(&v82 + 1) + 8 * i));
        v15 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v91 = v14;
          _os_log_impl(&dword_255ED5000, v15, OS_LOG_TYPE_INFO, "Dump: MLRuntimed Event - BMLighthouseLedgerMlruntimedEvent:\n%@\n\n", buf, 0xCu);
        }

        v16 = v14;
        v20 = objc_msgSend_UTF8String(v16, v17, v19, v18);
        printf("Dump: MLRuntimed Event - BMLighthouseLedgerMlruntimedEvent:\n%s\n\n", v20);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, v10, &v82, v89, 16);
    }

    while (v11);
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v21 = self->_lighthousePluginEvents;
  v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v22, v23, &v78, v88, 16);
  if (v24)
  {
    v27 = v24;
    v28 = *v79;
    v26.n128_u64[0] = 138412290;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v79 != v28)
        {
          objc_enumerationMutation(v21);
        }

        v30 = objc_msgSend_eventToJSONString_(self, v25, v26, *(*(&v78 + 1) + 8 * j));
        v31 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v91 = v30;
          _os_log_impl(&dword_255ED5000, v31, OS_LOG_TYPE_INFO, "Dump: Lighthouse Event - BMLighthouseLedgerLighthousePluginEvent:\n%@\n\n", buf, 0xCu);
        }

        v32 = v30;
        v36 = objc_msgSend_UTF8String(v32, v33, v35, v34);
        printf("Dump: Lighthouse Event - BMLighthouseLedgerLighthousePluginEvent:\n%s\n\n", v36);
      }

      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v21, v25, v26, &v78, v88, 16);
    }

    while (v27);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v37 = self->_trialdEvents;
  v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v38, v39, &v74, v87, 16);
  if (v40)
  {
    v43 = v40;
    v44 = *v75;
    v42.n128_u64[0] = 138412290;
    do
    {
      for (k = 0; k != v43; ++k)
      {
        if (*v75 != v44)
        {
          objc_enumerationMutation(v37);
        }

        v46 = objc_msgSend_eventToJSONString_(self, v41, v42, *(*(&v74 + 1) + 8 * k));
        v47 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v91 = v46;
          _os_log_impl(&dword_255ED5000, v47, OS_LOG_TYPE_INFO, "Dump: Triald Event - BMLighthouseLedgerTrialdEvent:\n%@\n\n", buf, 0xCu);
        }

        v48 = v46;
        v52 = objc_msgSend_UTF8String(v48, v49, v51, v50);
        printf("Dump: Triald Event - BMLighthouseLedgerTrialdEvent:\n%s\n\n", v52);
      }

      v43 = objc_msgSend_countByEnumeratingWithState_objects_count_(v37, v41, v42, &v74, v87, 16);
    }

    while (v43);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v53 = self->_dprivacydEvents;
  v56 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v54, v55, &v70, v86, 16);
  if (v56)
  {
    v59 = v56;
    v60 = *v71;
    v58.n128_u64[0] = 138412290;
    do
    {
      for (m = 0; m != v59; ++m)
      {
        if (*v71 != v60)
        {
          objc_enumerationMutation(v53);
        }

        v62 = objc_msgSend_eventToJSONString_(self, v57, v58, *(*(&v70 + 1) + 8 * m));
        v63 = LBFLogContextEventsHolder;
        if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v91 = v62;
          _os_log_impl(&dword_255ED5000, v63, OS_LOG_TYPE_INFO, "Dump: Dprivacyd Event - BMLighthouseLedgerDediscoPrivacyEvent:\n%@\n\n", buf, 0xCu);
        }

        v64 = v62;
        v68 = objc_msgSend_UTF8String(v64, v65, v67, v66);
        printf("Dump: Dprivacyd Event - BMLighthouseLedgerDediscoPrivacyEvent:\n%s\n\n", v68);
      }

      v59 = objc_msgSend_countByEnumeratingWithState_objects_count_(v53, v57, v58, &v70, v86, 16);
    }

    while (v59);
  }

  return 1;
}

- (id)fetchedEventsInDictionaries
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = LBFLogContextEventsHolder;
  if (os_log_type_enabled(LBFLogContextEventsHolder, OS_LOG_TYPE_INFO))
  {
    deploymentId = self->_deploymentId;
    *buf = 138412290;
    v59 = deploymentId;
    _os_log_impl(&dword_255ED5000, v4, OS_LOG_TYPE_INFO, "fetchedEventsInDictionaries deploymentId %@", buf, 0xCu);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = self->_mlruntimedEvents;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, v8, &v51, v57, 16);
  if (v9)
  {
    v12 = v9;
    v13 = *v52;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v52 != v13)
        {
          objc_enumerationMutation(v6);
        }

        v15 = objc_msgSend_eventToJSONDictionary_(self, v10, v11, *(*(&v51 + 1) + 8 * i));
        objc_msgSend_addObject_(v3, v16, v17, v15);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v10, v11, &v51, v57, 16);
    }

    while (v12);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = self->_lighthousePluginEvents;
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, v20, &v47, v56, 16);
  if (v21)
  {
    v24 = v21;
    v25 = *v48;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v48 != v25)
        {
          objc_enumerationMutation(v18);
        }

        v27 = objc_msgSend_eventToJSONDictionary_(self, v22, v23, *(*(&v47 + 1) + 8 * j));
        objc_msgSend_addObject_(v3, v28, v29, v27);
      }

      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v22, v23, &v47, v56, 16);
    }

    while (v24);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v30 = self->_trialdEvents;
  v33 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v31, v32, &v43, v55, 16);
  if (v33)
  {
    v36 = v33;
    v37 = *v44;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(v30);
        }

        v39 = objc_msgSend_eventToJSONDictionary_(self, v34, v35, *(*(&v43 + 1) + 8 * k), v43);
        objc_msgSend_addObject_(v3, v40, v41, v39);
      }

      v36 = objc_msgSend_countByEnumeratingWithState_objects_count_(v30, v34, v35, &v43, v55, 16);
    }

    while (v36);
  }

  return v3;
}

@end