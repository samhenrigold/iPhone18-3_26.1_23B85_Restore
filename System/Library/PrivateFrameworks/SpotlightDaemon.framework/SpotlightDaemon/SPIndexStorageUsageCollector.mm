@interface SPIndexStorageUsageCollector
- (NSDictionary)storageUsage;
- (SPIndexStorageUsageCollector)init;
- (void)collectAtPath:(id)path completionBlock:(id)block;
- (void)sendToCoreAnalyticsWithLiveDocCount:(unint64_t)count deadDocCount:(unint64_t)docCount;
@end

@implementation SPIndexStorageUsageCollector

- (SPIndexStorageUsageCollector)init
{
  v8.receiver = self;
  v8.super_class = SPIndexStorageUsageCollector;
  v2 = [(SPIndexStorageUsageCollector *)&v8 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    visitedInodes = v2->_visitedInodes;
    v2->_visitedInodes = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    storageUsage = v2->_storageUsage;
    v2->_storageUsage = dictionary2;
  }

  return v2;
}

- (NSDictionary)storageUsage
{
  v2 = [(NSMutableDictionary *)self->_storageUsage copy];

  return v2;
}

- (void)collectAtPath:(id)path completionBlock:(id)block
{
  pathCopy = path;
  blockCopy = block;
  if (collectAtPath_completionBlock__onceToken != -1)
  {
    [SPIndexStorageUsageCollector collectAtPath:completionBlock:];
  }

  v8 = collectAtPath_completionBlock__sQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2;
  block[3] = &unk_2789356A0;
  v12 = pathCopy;
  v13 = blockCopy;
  block[4] = self;
  v9 = pathCopy;
  v10 = blockCopy;
  dispatch_async(v8, block);
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_BACKGROUND, 0);
  v1 = dispatch_queue_create("Stats collection queue", v0);
  v2 = collectAtPath_completionBlock__sQueue;
  collectAtPath_completionBlock__sQueue = v1;
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2(uint64_t a1)
{
  v1 = a1;
  v118[4] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) canceled])
  {
    v2 = *(*(v1 + 48) + 16);

    v2();
    return;
  }

  [*(*(v1 + 32) + 16) removeAllObjects];
  [*(*(v1 + 32) + 8) removeAllObjects];
  v3 = [MEMORY[0x277CCAA00] defaultManager];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:*(v1 + 40)];
  v5 = *MEMORY[0x277CBE808];
  v95 = *MEMORY[0x277CBE838];
  v118[0] = *MEMORY[0x277CBE838];
  v118[1] = v5;
  v89 = v5;
  v6 = *MEMORY[0x277CBE8C8];
  v92 = *MEMORY[0x277CBE898];
  v118[2] = *MEMORY[0x277CBE898];
  v118[3] = v6;
  v94 = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v118 count:4];
  v112[0] = MEMORY[0x277D85DD0];
  v112[1] = 3221225472;
  v112[2] = __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_3;
  v112[3] = &unk_278937690;
  v112[4] = *(v1 + 32);
  v87 = v3;
  v96 = v4;
  v8 = [v3 enumeratorAtURL:v4 includingPropertiesForKeys:v7 options:0 errorHandler:v112];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v9 = v8;
  v97 = v1;
  v91 = [v9 countByEnumeratingWithState:&v108 objects:v117 count:16];
  if (!v91)
  {
    goto LABEL_82;
  }

  v93 = *v109;
  v88 = *MEMORY[0x277CCA1A8];
  v85 = *MEMORY[0x277CCA1A0];
  v84 = *MEMORY[0x277CCA198];
  v83 = *MEMORY[0x277CCA190];
  obj = v9;
  do
  {
    v10 = 0;
    do
    {
      if (*v109 != v93)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v108 + 1) + 8 * v10);
      if ([*(v1 + 32) canceled])
      {
        (*(*(v1 + 48) + 16))();
        goto LABEL_100;
      }

      v12 = objc_autoreleasePoolPush();
      v106 = 0;
      v107 = 0;
      v13 = [v11 getResourceValue:&v107 forKey:v95 error:&v106];
      v14 = v107;
      v15 = v106;
      v16 = v15;
      if ((v13 & 1) == 0)
      {
        v79 = logForCSLogCategoryIndex(v15);
        v9 = obj;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
        {
          __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_1();
        }

        [*(v1 + 32) setCanceled:1];
        (*(*(v1 + 48) + 16))();

        objc_autoreleasePoolPop(v12);
        goto LABEL_101;
      }

      context = v12;
      v17 = [v11 path];
      v18 = [v96 path];
      v19 = [v17 stringByReplacingOccurrencesOfString:v18 withString:&stru_2846BD100];

      if ([v19 hasPrefix:@"/private"])
      {
        v20 = [v19 substringFromIndex:{objc_msgSend(@"/private", "length")}];

        v19 = v20;
      }

      if ([v19 hasPrefix:@"/"])
      {
        v21 = [v19 substringFromIndex:1];

        v19 = v21;
      }

      v22 = *(*(v1 + 32) + 16);
      v99 = v14;
      v23 = [v14 unsignedLongLongValue];
      v24 = v22;
      v25 = v19;
      v26 = [v25 hasPrefix:@"Priority"];
      v27 = @"priority";
      if (v26 & 1) != 0 || (v28 = [v25 hasPrefix:v88], v27 = @"protectionClassCX", (v28) || (v29 = objc_msgSend(v25, "hasPrefix:", v85), v27 = @"protectionClassC", (v29) || (v30 = objc_msgSend(v25, "hasPrefix:", v84), v27 = @"protectionClassB", (v30) || (v31 = objc_msgSend(v25, "hasPrefix:", v83), v27 = @"protectionClassA", v31))
      {
        incrementIndexStorageSize(v24, v27, v23);
      }

      if ([v25 hasSuffix:@".indexBigDates"])
      {
        v32 = v24;
        v33 = @"bigDate";
        goto LABEL_24;
      }

      v34 = [v25 lastPathComponent];
      if ([v34 isEqualToString:@".store.db"])
      {

LABEL_28:
        incrementIndexStorageSize(v24, @"sdb", v23);
        v36 = 1;
        while (1)
        {
          v37 = [v25 lastPathComponent];
          v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"dbStr-%u.map.", v36];
          v39 = [v37 hasPrefix:v38];

          if (v39)
          {
            break;
          }

          v36 = (v36 + 1);
          if (v36 == 7)
          {
            goto LABEL_33;
          }
        }

        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"dataMap%u", v36];
        incrementIndexStorageSize(v24, v40, v23);

LABEL_33:
        v41 = 1;
LABEL_34:
        v1 = v97;
        goto LABEL_35;
      }

      v35 = [v34 hasPrefix:@"dbStr-"];

      if (v35)
      {
        goto LABEL_28;
      }

      v1 = v97;
      if (isEmbedding(v25))
      {
        v61 = v24;
        v62 = @"embedding";
      }

      else
      {
        v64 = v25;
        if ([v64 hasSuffix:@".directoryStoreFile"])
        {

LABEL_55:
          v61 = v24;
          v62 = @"forwardDirStore";
          goto LABEL_60;
        }

        v65 = [v64 hasSuffix:@".directoryStoreFile.shadow"];

        if (v65)
        {
          goto LABEL_55;
        }

        v66 = [v64 lastPathComponent];
        if (([v66 isEqualToString:@"reverseDirectoryStore"] & 1) != 0 || objc_msgSend(v66, "isEqualToString:", @"reverseDirectoryStore.shadow"))
        {

LABEL_59:
          v61 = v24;
          v62 = @"reverseDirStore";
          goto LABEL_60;
        }

        v67 = [v66 isEqualToString:@"reverseStore.updates"];

        if (v67)
        {
          goto LABEL_59;
        }

        if ([v64 hasSuffix:@".indexIds"])
        {
          v61 = v24;
          v62 = @"indexId";
        }

        else if ([v64 hasSuffix:@".indexTermIds"])
        {
          v61 = v24;
          v62 = @"indexTermId";
        }

        else if ([v64 hasSuffix:@".indexPositions"])
        {
          v61 = v24;
          v62 = @"position";
        }

        else if ([v64 hasSuffix:@".indexPositionTable"])
        {
          v61 = v24;
          v62 = @"positionTable";
        }

        else if ([v64 hasSuffix:@".indexPostings"])
        {
          v61 = v24;
          v62 = @"posting";
        }

        else
        {
          if (![v64 hasSuffix:@".indexScores"])
          {
            if ([v64 hasSuffix:@".indexGroups"])
            {
              v32 = v24;
              v33 = @"group";
            }

            else if (isTermIndex(v64))
            {
              v32 = v24;
              v33 = @"termIndex";
            }

            else
            {
              if (!isJournal(v64))
              {
                v41 = 0;
                goto LABEL_34;
              }

              v32 = v24;
              v33 = @"journal";
            }

LABEL_24:
            incrementIndexStorageSize(v32, v33, v23);
            goto LABEL_33;
          }

          v61 = v24;
          v62 = @"score";
        }
      }

LABEL_60:
      incrementIndexStorageSize(v61, v62, v23);
      v41 = 1;
LABEL_35:

      v104 = 0;
      v105 = 0;
      v42 = [v11 getResourceValue:&v105 forKey:v94 error:&v104];
      v43 = v105;
      v44 = v104;

      if ((v42 & 1) == 0)
      {
        v80 = logForCSLogCategoryIndex(v45);
        if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
        {
          __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_2();
        }

        [*(v1 + 32) setCanceled:1];
        (*(*(v1 + 48) + 16))();

LABEL_99:
        objc_autoreleasePoolPop(context);
LABEL_100:
        v9 = obj;
LABEL_101:

        goto LABEL_106;
      }

      v102 = 0;
      v103 = 0;
      v46 = [v11 getResourceValue:&v103 forKey:v92 error:&v102];
      v47 = v103;
      v48 = v102;

      if ((v46 & 1) == 0)
      {
        v81 = logForCSLogCategoryIndex(v49);
        if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
        {
          __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_3();
        }

        [*(v1 + 32) setCanceled:1];
        (*(*(v1 + 48) + 16))();

        goto LABEL_99;
      }

      if ([v43 unsignedLongValue] > 1)
      {
        v101 = 0;
        v50 = [v11 getResourceValue:&v101 forKey:v89 error:0];
        v51 = v101;
        v52 = v51;
        if (v50)
        {
          v86 = v50;
          [*(*(v1 + 32) + 8) objectForKeyedSubscript:v51];
          v54 = v53 = v1;

          v55 = MEMORY[0x277CCABB0];
          if (v54)
          {
            v56 = [*(*(v53 + 32) + 8) objectForKeyedSubscript:v52];
            v57 = [v55 numberWithUnsignedLong:{objc_msgSend(v56, "unsignedLongValue") - 1}];
            [*(*(v53 + 32) + 8) setObject:v57 forKeyedSubscript:v52];

            v58 = [*(*(v53 + 32) + 8) objectForKeyedSubscript:v52];
            v59 = [v58 unsignedLongValue];

            v50 = v86;
            if (!v59)
            {
              [*(*(v97 + 32) + 8) removeObjectForKey:v52];
            }
          }

          else
          {
            v63 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v43, "unsignedLongValue") - 1}];
            [*(*(v53 + 32) + 8) setObject:v63 forKeyedSubscript:v52];

            updateStorageUsageIgnoreLinks(*(*(v53 + 32) + 16), v25, [v99 unsignedLongLongValue], objc_msgSend(v47, "BOOLValue"), v41);
            v50 = v86;
          }
        }

        else
        {
          v60 = logForCSLogCategoryIndex(v51);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v114 = v11;
            v115 = 2112;
            v116 = v48;
            _os_log_error_impl(&dword_231A35000, v60, OS_LOG_TYPE_ERROR, "Failed to get resource identifier: %@, %@", buf, 0x16u);
          }

          [*(v1 + 32) setCanceled:1];
          (*(*(v1 + 48) + 16))();
        }

        objc_autoreleasePoolPop(context);
        v1 = v97;
        if (!v50)
        {
          goto LABEL_100;
        }
      }

      else
      {
        updateStorageUsageIgnoreLinks(*(*(v1 + 32) + 16), v25, [v99 unsignedLongLongValue], objc_msgSend(v47, "BOOLValue"), v41);

        objc_autoreleasePoolPop(context);
      }

      ++v10;
    }

    while (v10 != v91);
    v9 = obj;
    v68 = [obj countByEnumeratingWithState:&v108 objects:v117 count:16];
    v91 = v68;
  }

  while (v68);
LABEL_82:

  if ([*(v1 + 32) canceled])
  {
    (*(*(v1 + 48) + 16))();
  }

  else
  {
    v69 = v9;
    v70 = *(v1 + 40);
    v100 = 0;
    v71 = [v87 attributesOfFileSystemForPath:v70 error:&v100];
    v72 = v100;
    v73 = v72;
    if (v72)
    {
      v74 = 1;
    }

    else
    {
      v74 = v71 == 0;
    }

    if (v74)
    {
      v82 = logForCSLogCategoryIndex(v72);
      if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
      {
        __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_4(v73, v82);
      }
    }

    else
    {
      v75 = [v71 objectForKeyedSubscript:*MEMORY[0x277CCA1D8]];
      v76 = [v75 unsignedLongLongValue];

      v77 = [v71 objectForKeyedSubscript:*MEMORY[0x277CCA1D0]];
      v78 = [v77 unsignedLongLongValue];

      v1 = v97;
      incrementIndexStorageSize(*(*(v97 + 32) + 16), @"diskSpace", v76);
      incrementIndexStorageSize(*(*(v97 + 32) + 16), @"spaceLeft", v78);
    }

    (*(*(v1 + 48) + 16))();

    v9 = v69;
  }

LABEL_106:
}

uint64_t __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = logForCSLogCategoryIndex(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_3_cold_1();
  }

  [*(a1 + 32) setCanceled:1];
  return 0;
}

- (void)sendToCoreAnalyticsWithLiveDocCount:(unint64_t)count deadDocCount:(unint64_t)docCount
{
  v62 = *MEMORY[0x277D85DE8];
  if (![(SPIndexStorageUsageCollector *)self canceled])
  {
    countCopy = count;
    docCountCopy = docCount;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v7 = self->_storageUsage;
    v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v50;
      do
      {
        v11 = 0;
        do
        {
          if (*v50 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v49 + 1) + 8 * v11);
          v13 = logForCSLogCategoryIndex(v8);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [(NSMutableDictionary *)self->_storageUsage objectForKeyedSubscript:v12];
            [v14 unsignedLongLongValue];
            LOBYTE(v59) = 0;
            *buf = 0;
            humanize_number();
            v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:buf];
            *buf = 138412546;
            v59 = v12;
            v60 = 2112;
            v61 = v15;
            _os_log_impl(&dword_231A35000, v13, OS_LOG_TYPE_DEFAULT, "Index type %@ size %@", buf, 0x16u);
          }

          ++v11;
        }

        while (v9 != v11);
        v8 = [(NSMutableDictionary *)v7 countByEnumeratingWithState:&v49 objects:v57 count:16];
        v9 = v8;
      }

      while (v8);
    }

    v16 = self->_storageUsage;
    v17 = objc_opt_new();
    v47 = v16;
    allKeys = [(NSMutableDictionary *)v16 allKeys];
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = allKeys;
    v19 = [allKeys countByEnumeratingWithState:&v53 objects:buf count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v54;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v54 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v53 + 1) + 8 * i);
          if ([v23 isEqualToString:@"spaceLeft"])
          {
            v24 = 30;
          }

          else if ([v23 isEqualToString:@"diskSpace"])
          {
            v24 = 30;
          }

          else
          {
            v24 = 10;
          }

          v25 = MEMORY[0x277CCABB0];
          v26 = [(NSMutableDictionary *)v47 objectForKeyedSubscript:v23];
          v27 = [v25 numberWithUnsignedLongLong:{objc_msgSend(v26, "unsignedLongLongValue") >> v24}];
          [v17 setObject:v27 forKeyedSubscript:v23];
        }

        v20 = [obj countByEnumeratingWithState:&v53 objects:buf count:16];
      }

      while (v20);
    }

    v28 = MEMORY[0x277CCABB0];
    v29 = [v17 objectForKeyedSubscript:@"total"];
    unsignedIntegerValue = [v29 unsignedIntegerValue];
    v31 = [v17 objectForKeyedSubscript:@"purgeable"];
    v32 = [v28 numberWithUnsignedInteger:{unsignedIntegerValue - objc_msgSend(v31, "unsignedIntegerValue")}];
    [v17 setObject:v32 forKeyedSubscript:@"nonPurgeable"];

    v33 = MEMORY[0x277CCABB0];
    v34 = [v17 objectForKeyedSubscript:@"embedding"];
    unsignedIntegerValue2 = [v34 unsignedIntegerValue];
    v36 = [v17 objectForKeyedSubscript:@"embeddingPurgeable"];
    v37 = [v33 numberWithUnsignedInteger:{unsignedIntegerValue2 - objc_msgSend(v36, "unsignedIntegerValue")}];
    [v17 setObject:v37 forKeyedSubscript:@"embeddingNonPurgeable"];

    v38 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:countCopy];
    [v17 setObject:v38 forKeyedSubscript:@"liveDocCount"];

    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:docCountCopy];
    [v17 setObject:v39 forKeyedSubscript:@"deletedDocCount"];

    v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(MEMORY[0x277D65768], "version")}];
    stringValue = [v40 stringValue];
    [v17 setObject:stringValue forKeyedSubscript:@"embeddingModelVersion"];

    v42 = [v17 copy];
    v48 = v42;
    v43 = v42;
    AnalyticsSendEventLazy();
  }
}

void __62__SPIndexStorageUsageCollector_collectAtPath_completionBlock___block_invoke_2_cold_4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "Failed to retrieve file system attributes: %@", &v2, 0xCu);
}

@end