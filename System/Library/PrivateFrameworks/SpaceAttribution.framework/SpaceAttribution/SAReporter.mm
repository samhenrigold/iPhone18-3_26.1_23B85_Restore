@interface SAReporter
+ (void)collectSAFAppSizeResults:(id)results;
+ (void)reportSnapshot:(id)snapshot;
@end

@implementation SAReporter

+ (void)collectSAFAppSizeResults:(id)results
{
  v41[1] = *MEMORY[0x277D85DE8];
  resultsCopy = results;
  v4 = SALog(resultsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SAReporter collectSAFAppSizeResults:v4];
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1;
  v37 = __Block_byref_object_dispose__1;
  v38 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v5 = objc_opt_new();
  v6 = dispatch_group_create();
  dispatch_group_enter(v6);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __39__SAReporter_collectSAFAppSizeResults___block_invoke;
  v23[3] = &unk_279CD6D98;
  v25 = &v27;
  v26 = &v33;
  v7 = v6;
  v24 = v7;
  [v5 startObservingWithScanOptions:50401 updateHandler:v23];
  v8 = dispatch_time(0, 120000000000);
  v9 = dispatch_group_wait(v7, v8);
  if (v9)
  {
    v10 = SALog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SAReporter collectSAFAppSizeResults:v10];
    }

    v11 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    v13 = [mainBundle localizedStringForKey:@"Timeout reached while collecting SpaceAttributionFramework report" value:&stru_287BC9EA8 table:0];
    v41[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    v15 = [v11 errorWithDomain:*MEMORY[0x277CCA5B8] code:60 userInfo:v14];
    v16 = v28[5];
    v28[5] = v15;

    v17 = 0;
    v18 = v28;
LABEL_11:
    v21 = v18[5];
    goto LABEL_12;
  }

  if (v28[5])
  {
    v19 = SALog(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [v28[5] localizedDescription];
      [(SAReporter *)localizedDescription collectSAFAppSizeResults:buf, v19];
    }

    v17 = 0;
    v18 = v28;
    goto LABEL_11;
  }

  v22 = SALog(0);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    [SAReporter collectSAFAppSizeResults:v22];
  }

  v21 = 0;
  v17 = v34[5];
LABEL_12:
  resultsCopy[2](resultsCopy, v17, v21);

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(&v33, 8);
}

uint64_t __39__SAReporter_collectSAFAppSizeResults___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v97 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v8 = SALog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __39__SAReporter_collectSAFAppSizeResults___block_invoke_cold_1(a1 + 40, v8);
    }

    goto LABEL_34;
  }

  v63 = v6;
  v64 = a1;
  v9 = [v5 appData];
  v10 = [v5 hiddenAppsData];
  v65 = v5;
  [v5 clonesInfo];
  v67 = v66 = v10;
  v62 = v9;
  if (v9)
  {
    v71 = objc_opt_new();
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    obj = v9;
    v75 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
    if (v75)
    {
      v72 = *v91;
      do
      {
        for (i = 0; i != v75; i = i + 1)
        {
          if (*v91 != v72)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v90 + 1) + 8 * i);
          v13 = [obj objectForKeyedSubscript:v12];
          v14 = MEMORY[0x277CBEAC0];
          v15 = [v12 allObjects];
          v16 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "fixedSize")}];
          v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "dataSize")}];
          v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "cloneSize")}];
          v19 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v13, "cloneFixUpSize")}];
          v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v13, "purgeableSize")}];
          v21 = [v13 vendorName];
          v22 = [v14 dictionaryWithObjectsAndKeys:{v15, @"Bundles", v16, @"fixedSize", v17, @"dataSize", v18, @"cloneSize", v19, @"cloneFixUpSize", v20, @"purgeableSize", v21, @"vendorName", 0}];

          [v71 addObject:v22];
        }

        v75 = [obj countByEnumeratingWithState:&v90 objects:v96 count:16];
      }

      while (v75);
    }

    v10 = v66;
    if (v66)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v71 = 0;
    if (v10)
    {
LABEL_13:
      v70 = objc_opt_new();
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v76 = v10;
      v73 = [v76 countByEnumeratingWithState:&v86 objects:v95 count:16];
      if (v73)
      {
        v68 = *v87;
        do
        {
          for (j = 0; j != v73; ++j)
          {
            if (*v87 != v68)
            {
              objc_enumerationMutation(v76);
            }

            v24 = *(*(&v86 + 1) + 8 * j);
            obja = [SAUtilities breakCommaSeparatedStringToComponents:v24];
            v25 = [v76 objectForKeyedSubscript:v24];
            v26 = MEMORY[0x277CBEAC0];
            v27 = [obja allObjects];
            v28 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v25, "fixedSize")}];
            v29 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v25, "dataSize")}];
            v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v25, "cloneSize")}];
            v31 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v25, "cloneFixUpSize")}];
            v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v25, "purgeableSize")}];
            v33 = [v25 vendorName];
            v34 = [v26 dictionaryWithObjectsAndKeys:{v27, @"Bundles", v28, @"fixedSize", v29, @"dataSize", v30, @"cloneSize", v31, @"cloneFixUpSize", v32, @"purgeableSize", v33, @"vendorName", 0}];

            [v70 addObject:v34];
          }

          v73 = [v76 countByEnumeratingWithState:&v86 objects:v95 count:16];
        }

        while (v73);
      }

      goto LABEL_23;
    }
  }

  v70 = 0;
LABEL_23:
  if (v67)
  {
    v35 = objc_opt_new();
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v36 = v67;
    v37 = [v36 countByEnumeratingWithState:&v82 objects:v94 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v83;
      do
      {
        for (k = 0; k != v38; ++k)
        {
          if (*v83 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v82 + 1) + 8 * k);
          v42 = [v36 objectForKeyedSubscript:v41];
          [v35 setObject:v42 forKeyedSubscript:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v82 objects:v94 count:16];
      }

      while (v38);
    }
  }

  else
  {
    v35 = 0;
  }

  v77 = MEMORY[0x277CBEAC0];
  v5 = v65;
  objb = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "diskCapacity")}];
  v74 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "diskUsed")}];
  v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "totalCDAvailable")}];
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "totalCDPluginsSize")}];
  v43 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "totalSAFPluginsSize")}];
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "totalPurgeableClones")}];
  v60 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "totalSAFAppsCacheSize")}];
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "totalCDAppsCacheSize")}];
  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "totalPurgeableDataSize")}];
  v45 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v65, "rawSystemDataSize")}];
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "rawDiskedUsed")}];
  v78 = [v77 dictionaryWithObjectsAndKeys:{objb, @"Disk Capacity", v74, @"Disk Used", v69, @"TotalCDAvailable", v61, @"TotalCDPluginsSize", v43, @"TotalSAFPluginsSize", v44, @"TotalPurgeableClones", v60, @"TotalSAFAppsCacheSize", v59, @"TotalCDAppsCacheSize", v58, @"TotalPurgeableDataSize", v45, @"RawSystemDataSize", v46, @"RawDiskedUsed", v71, @"Apps Data", v70, @"Hidden Apps Data", 0}];

  v47 = [v65 pathsList];
  v48 = [v65 attributionTags];
  v49 = [v65 FSPurgeableData];
  v50 = [v65 appsList];
  v51 = [v65 systemDetails];
  v52 = MEMORY[0x277CBEAC0];
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v65, "internalFlags")}];
  v54 = [v52 dictionaryWithObjectsAndKeys:{v78, @"App Sizer", v47, @"Paths List", v48, @"Attribution Tags", v35, @"Clones Data", v49, @"FS Purgeable Data", v51, @"System Details", v50, @"Apps List", v53, @"Internal Flags", 0}];
  a1 = v64;
  v55 = *(*(v64 + 48) + 8);
  v56 = *(v55 + 40);
  *(v55 + 40) = v54;

  v8 = v71;
  v6 = v63;
LABEL_34:

  dispatch_group_leave(*(a1 + 32));
  return 1;
}

+ (void)reportSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__1;
  v15 = __Block_byref_object_dispose__1;
  v16 = 0;
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1;
  v9 = __Block_byref_object_dispose__1;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__SAReporter_reportSnapshot___block_invoke;
  v4[3] = &unk_279CD6DC0;
  v4[4] = &v5;
  v4[5] = &v11;
  [SAReporter collectSAFAppSizeResults:v4];
  if (v12[5])
  {
    snapshotCopy[2](snapshotCopy, 0);
  }

  else
  {
    snapshotCopy[2](snapshotCopy, v6[5]);
  }

  _Block_object_dispose(&v5, 8);

  _Block_object_dispose(&v11, 8);
}

void __29__SAReporter_reportSnapshot___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (void)collectSAFAppSizeResults:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[SAReporter collectSAFAppSizeResults:]";
  _os_log_debug_impl(&dword_26B26B000, log, OS_LOG_TYPE_DEBUG, "%s: Started to collect SpaceAttributionFramework report...", &v1, 0xCu);
}

+ (void)collectSAFAppSizeResults:(os_log_t)log .cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[SAReporter collectSAFAppSizeResults:]";
  _os_log_error_impl(&dword_26B26B000, log, OS_LOG_TYPE_ERROR, "%s: Timeout reached while collecting SpaceAttributionFramework report", &v1, 0xCu);
}

+ (void)collectSAFAppSizeResults:(os_log_t)log .cold.3(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315394;
  *(buf + 4) = "+[SAReporter collectSAFAppSizeResults:]";
  *(buf + 6) = 2112;
  *(buf + 14) = a1;
  _os_log_error_impl(&dword_26B26B000, log, OS_LOG_TYPE_ERROR, "%s: Encountered an error while collecting SpaceAttributionFramework report: %@", buf, 0x16u);
}

+ (void)collectSAFAppSizeResults:(os_log_t)log .cold.4(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[SAReporter collectSAFAppSizeResults:]";
  _os_log_debug_impl(&dword_26B26B000, log, OS_LOG_TYPE_DEBUG, "%s: Finished collecting SpaceAttributionFramework report", &v1, 0xCu);
}

void __39__SAReporter_collectSAFAppSizeResults___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [*(*(*a1 + 8) + 40) localizedDescription];
  v4 = 136315394;
  v5 = "+[SAReporter collectSAFAppSizeResults:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_26B26B000, a2, OS_LOG_TYPE_ERROR, "%s: Encountered error while running app sizer: %@", &v4, 0x16u);
}

@end