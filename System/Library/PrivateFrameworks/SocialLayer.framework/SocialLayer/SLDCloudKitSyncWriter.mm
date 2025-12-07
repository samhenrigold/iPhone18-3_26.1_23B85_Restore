@interface SLDCloudKitSyncWriter
+ (id)sharedInstance;
- (BOOL)_didHandleSyncError:(id)error retryBlock:(id)block;
- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d;
- (id)_idForRecordIDString:(id)string;
- (id)_recordIDsFromStrings:(id)strings;
- (id)recordIDStringOfSavedIDString:(id)string;
- (id)recordZoneID;
- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d;
- (unint64_t)_batchNumberOfRecordIDString:(id)string;
- (unint64_t)versionOfSavedIDString:(id)string;
- (void)_savedRecord:(id)record;
- (void)accountStatusChanged;
- (void)checkForAppChanges;
- (void)checkForAppChangesNow;
- (void)dealloc;
- (void)fetchAndProcessFreshHighlights;
- (void)handleMetadataSizeBecomingEligibleForSync;
- (void)initializeState;
- (void)invalidateHighlights;
- (void)invalidateHighlightsInternal;
- (void)nextTask;
- (void)reset;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone;
- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToFetchChangesForRecordZoneID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type;
@end

@implementation SLDCloudKitSyncWriter

void __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    dispatch_source_cancel(WeakRetained[9]);
    v3 = WeakRetained[9];
    WeakRetained[9] = 0;

    [(dispatch_source_t *)WeakRetained invalidateHighlightsInternal];
  }
}

- (void)invalidateHighlightsInternal
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)nextTask
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)fetchAndProcessFreshHighlights
{
  selfCopy = self;
  v191 = *MEMORY[0x277D85DE8];
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v108 = os_transaction_create();
  v4 = SLDaemonLogHandle(v108);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "#SLDCK beginning fetchAndProcessFreshHighlights", buf, 2u);
  }

  v5 = objc_opt_new();
  v6 = *&selfCopy->_freshHighlightsGenerated;
  *&selfCopy->_freshHighlightsGenerated = v5;

  persistence = [(SLDCloudKitSyncBase *)selfCopy persistence];
  v8 = [persistence objectForKeyedSubscript:@"savedIDs"];

  v9 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v178 objects:v190 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v179;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v179 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [(SLDCloudKitSyncWriter *)selfCopy recordIDStringOfSavedIDString:*(*(&v178 + 1) + 8 * i)];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v178 objects:v190 count:16];
    }

    while (v12);
  }

  v107 = v10;

  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = objc_opt_new();
  v19 = objc_opt_new();
  getIncrementedBatchNumber = [(SLDCloudKitSyncBase *)selfCopy getIncrementedBatchNumber];
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke;
  aBlock[3] = &__block_descriptor_40_e28___NSString_16__0__NSString_8l;
  aBlock[4] = getIncrementedBatchNumber;
  v21 = _Block_copy(aBlock);
  v176[0] = MEMORY[0x277D85DD0];
  v176[1] = 3221225472;
  v176[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2;
  v176[3] = &unk_2789272E0;
  v176[4] = selfCopy;
  v22 = _Block_copy(v176);
  v174[0] = MEMORY[0x277D85DD0];
  v174[1] = 3221225472;
  v174[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3;
  v174[3] = &unk_278927308;
  v174[4] = selfCopy;
  v23 = v16;
  v175 = v23;
  v24 = _Block_copy(v174);
  v170[0] = MEMORY[0x277D85DD0];
  v170[1] = 3221225472;
  v170[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_4;
  v170[3] = &unk_278927330;
  v170[4] = selfCopy;
  v100 = v9;
  v171 = v100;
  v113 = v23;
  v172 = v113;
  v25 = v21;
  v173 = v25;
  v26 = _Block_copy(v170);
  v163[0] = MEMORY[0x277D85DD0];
  v163[1] = 3221225472;
  v163[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_5;
  v163[3] = &unk_278927358;
  v106 = v17;
  v164 = v106;
  v165 = selfCopy;
  v27 = v26;
  v166 = v27;
  v28 = v25;
  v167 = v28;
  v29 = v22;
  v168 = v29;
  v30 = v24;
  v169 = v30;
  v31 = _Block_copy(v163);
  v161[0] = MEMORY[0x277D85DD0];
  v161[1] = 3221225472;
  v161[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_6;
  v161[3] = &unk_278927380;
  v103 = v31;
  v162 = v103;
  v32 = _Block_copy(v161);
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7;
  v152[3] = &unk_2789273D0;
  v102 = v32;
  v156 = v102;
  v105 = v18;
  v153 = v105;
  v104 = v19;
  v154 = v104;
  v155 = selfCopy;
  v33 = v27;
  v157 = v33;
  v34 = v28;
  v158 = v34;
  v35 = v29;
  v159 = v35;
  v36 = v30;
  v160 = v36;
  v37 = _Block_copy(v152);
  v147[0] = MEMORY[0x277D85DD0];
  v147[1] = 3221225472;
  v147[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486;
  v147[3] = &unk_2789273F8;
  v147[4] = selfCopy;
  v38 = v33;
  v148 = v38;
  v39 = v34;
  v149 = v39;
  v40 = v35;
  v150 = v40;
  v41 = v36;
  v151 = v41;
  v42 = _Block_copy(v147);
  v43 = objc_opt_new();
  v138[0] = MEMORY[0x277D85DD0];
  v138[1] = 3221225472;
  v138[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_499;
  v138[3] = &unk_278927420;
  v99 = v42;
  v141 = v99;
  v98 = v43;
  v139 = v98;
  v101 = v37;
  v142 = v101;
  v140 = selfCopy;
  v112 = v38;
  v143 = v112;
  v111 = v39;
  v144 = v111;
  v110 = v40;
  v145 = v110;
  v109 = v41;
  v146 = v109;
  v44 = _Block_copy(v138);
  v45 = objc_opt_new();
  persistence2 = [(SLDCloudKitSyncBase *)selfCopy persistence];
  v47 = [persistence2 objectForKeyedSubscript:@"lastKnownApps"];

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  obj = v47;
  v48 = [obj countByEnumeratingWithState:&v134 objects:v189 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v135;
    v114 = *MEMORY[0x277D3A750];
    v115 = *v135;
    v116 = selfCopy;
    do
    {
      v51 = 0;
      v117 = v49;
      do
      {
        if (*v135 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v52 = *(*(&v134 + 1) + 8 * v51);
        v53 = objc_autoreleasePoolPush();
        v54 = [&unk_28469BD80 containsObject:v52];
        context = v53;
        if (v54)
        {
          v55 = objc_opt_new();
          v56 = v52;
          v57 = [@"com.apple.TVWatchList" isEqual:v56];
          v121 = v56;
          if (v57)
          {

            v121 = @"com.apple.tv";
          }

          v120 = v51;
          v58 = SLDaemonLogHandle(v57);
          if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v186 = v121;
            v187 = 2112;
            v188 = v56;
            _os_log_debug_impl(&dword_231772000, v58, OS_LOG_TYPE_DEBUG, "#SLDCK Asking Portrait for %@ highlights (requested app identifier: %@)", buf, 0x16u);
          }

          v59 = objc_opt_new();
          v133 = 0;
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_531;
          v131[3] = &unk_278927448;
          v60 = v55;
          v132 = v60;
          [v59 iterRankedHighlightsWithLimit:100 client:v121 variant:v114 error:&v133 block:v131];
          v119 = v133;

          v129 = 0u;
          v130 = 0u;
          v127 = 0u;
          v128 = 0u;
          v61 = v60;
          v62 = [v61 countByEnumeratingWithState:&v127 objects:v184 count:16];
          if (v62)
          {
            v63 = v62;
            v64 = *v128;
            do
            {
              for (j = 0; j != v63; ++j)
              {
                if (*v128 != v64)
                {
                  objc_enumerationMutation(v61);
                }

                v66 = *(*(&v127 + 1) + 8 * j);
                v67 = objc_autoreleasePoolPush();
                v68 = v44[2](v44, v66, v56);
                if (v68)
                {
                  [v45 addObject:v68];
                }

                objc_autoreleasePoolPop(v67);
              }

              v63 = [v61 countByEnumeratingWithState:&v127 objects:v184 count:16];
            }

            while (v63);
          }

          v50 = v115;
          selfCopy = v116;
          v49 = v117;
          v51 = v120;
        }

        else
        {
          v61 = SLDaemonLogHandle(v54);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v186 = v52;
            v187 = 2112;
            v188 = &unk_28469BD80;
            _os_log_error_impl(&dword_231772000, v61, OS_LOG_TYPE_ERROR, "#SLDCK Ignoring sync request for app identifier not in allowlist: %@ (allowed: %@)", buf, 0x16u);
          }
        }

        objc_autoreleasePoolPop(context);
        ++v51;
      }

      while (v51 != v49);
      v49 = [obj countByEnumeratingWithState:&v134 objects:v189 count:16];
    }

    while (v49);
  }

  v69 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:1];
  v183 = v69;
  v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v183 count:1];
  v71 = [v113 sortedArrayUsingDescriptors:v70];

  v72 = [v45 arrayByAddingObjectsFromArray:v71];
  v73 = [v72 componentsJoinedByString:@"\n"];
  v74 = [(SLDCloudKitSyncBase *)selfCopy idStringForType:@"index" uniqueString:v73];

  v75 = (*(v112 + 2))(v112, v74);
  if (!v75)
  {
    v75 = (*(v111 + 2))(v111, v74);
    v76 = objc_alloc(MEMORY[0x277CBC5A0]);
    recordZoneID = [(SLDCloudKitSyncWriter *)selfCopy recordZoneID];
    v78 = [v76 initWithRecordType:@"index" zoneID:recordZoneID];

    v79 = (*(v110 + 2))(v110, v75);
    [v78 setRecordID:v79];

    encryptedValues = [v78 encryptedValues];
    [encryptedValues setObject:v71 forKeyedSubscript:@"recordIDs"];

    encryptedValues2 = [v78 encryptedValues];
    [encryptedValues2 setObject:v45 forKeyedSubscript:@"highlights"];

    (*(v109 + 2))(v109, v78);
  }

  persistence3 = [(SLDCloudKitSyncBase *)selfCopy persistence];
  v83 = [persistence3 objectForKeyedSubscript:@"savedIDs"];
  v84 = v83;
  if (!v83)
  {
    v83 = MEMORY[0x277CBEC10];
  }

  v85 = [v83 mutableCopy];

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  v86 = v100;
  v87 = [v86 countByEnumeratingWithState:&v123 objects:v182 count:16];
  if (v87)
  {
    v88 = v87;
    v89 = *v124;
    do
    {
      for (k = 0; k != v88; ++k)
      {
        if (*v124 != v89)
        {
          objc_enumerationMutation(v86);
        }

        v91 = [(SLDCloudKitSyncWriter *)selfCopy _idForRecordIDString:*(*(&v123 + 1) + 8 * k)];
        [v85 setObject:0 forKeyedSubscript:v91];
      }

      v88 = [v86 countByEnumeratingWithState:&v123 objects:v182 count:16];
    }

    while (v88);
  }

  persistence4 = [(SLDCloudKitSyncBase *)selfCopy persistence];
  [persistence4 setObject:v85 forKeyedSubscript:@"savedIDs"];

  syncEngine = [(SLDCloudKitSyncBase *)selfCopy syncEngine];
  allKeys = [*&selfCopy->_freshHighlightsGenerated allKeys];
  v95 = [(SLDCloudKitSyncWriter *)selfCopy _recordIDsFromStrings:allKeys];
  allObjects = [v86 allObjects];
  v97 = [(SLDCloudKitSyncWriter *)selfCopy _recordIDsFromStrings:allObjects];
  [syncEngine addRecordIDsToSave:v95 recordIDsToDelete:v97];

  *(&selfCopy->super._saltLocked + 1) = 1;
  [(SLDCloudKitSyncWriter *)selfCopy nextTask];
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SLDCloudKitSyncWriter sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __39__SLDCloudKitSyncWriter_sharedInstance__block_invoke()
{
  v3 = objc_opt_new();
  v0 = [MEMORY[0x277CBC218] containerWithIdentifier:@"com.apple.SocialLayer"];
  [v3 setContainer:v0];

  [v3 setName:@"ckwriter"];
  v1 = [(SLDCloudKitSyncBase *)[SLDCloudKitSyncWriter alloc] initWithConfiguration:v3];
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;
}

- (void)initializeState
{
  v6.receiver = self;
  v6.super_class = SLDCloudKitSyncWriter;
  [(SLDCloudKitSyncBase *)&v6 initializeState];
  *(&self->super._saltLocked + 1) = 0;
  *(&self->super._saltLocked + 2) = 0;
  v3 = *&self->_freshHighlightsGenerated;
  *&self->_freshHighlightsGenerated = 0;

  [(SLDCloudKitSyncWriter *)self checkForAppChangesNow];
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__SLDCloudKitSyncWriter_initializeState__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unint64_t)versionOfSavedIDString:(id)string
{
  stringCopy = string;
  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v6 = [persistence objectForKeyedSubscript:@"savedIDs"];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:stringCopy];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 objectAtIndexedSubscript:0];
      unsignedIntegerValue = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    unsignedIntegerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  return unsignedIntegerValue;
}

- (id)recordIDStringOfSavedIDString:(id)string
{
  v14[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v6 = [persistence objectForKeyedSubscript:@"savedIDs"];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:stringCopy];
    v8 = v7;
    if (v7)
    {
      v14[0] = stringCopy;
      v9 = [v7 objectAtIndexedSubscript:1];
      stringValue = [v9 stringValue];
      v14[1] = stringValue;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
      v12 = [v11 componentsJoinedByString:@"!"];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)_batchNumberOfRecordIDString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy rangeOfString:@"!" options:6];
  v6 = [stringCopy substringFromIndex:v4 + v5];

  longLongValue = [v6 longLongValue];
  return longLongValue;
}

- (id)_idForRecordIDString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy substringToIndex:{objc_msgSend(stringCopy, "rangeOfString:options:", @"!", 6)}];

  return v4;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = a2;
  v5 = [[v3 alloc] initWithFormat:@"%@!%tu", v4, *(a1 + 32)];

  return v5;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBC5D0];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) recordZoneID];
  v7 = [v5 initWithRecordName:v4 zoneID:v6];

  return v7;
}

void __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 addMetadataToRecord:v4];
  v5 = *(a1 + 40);
  v6 = [v4 recordID];
  v7 = [v6 recordName];
  [v5 addObject:v7];

  v8 = *(*(a1 + 32) + 64);
  v10 = [v4 recordID];
  v9 = [v10 recordName];
  [v8 setObject:v4 forKeyedSubscript:v9];
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 versionOfSavedIDString:v4] == 7)
  {
    v5 = [*(a1 + 32) recordIDStringOfSavedIDString:v4];

    [*(a1 + 40) removeObject:v5];
    [*(a1 + 48) addObject:v5];
  }

  else
  {
    v5 = (*(*(a1 + 56) + 16))();

    v6 = [*(*(a1 + 32) + 64) objectForKeyedSubscript:v5];

    if (!v6)
    {
      goto LABEL_5;
    }
  }

  v6 = v5;
  v5 = v6;
LABEL_5:

  return v6;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_5(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    memset(&c, 0, sizeof(c));
    CC_SHA256_Init(&c);
    CC_SHA256_Update(&c, [v3 bytes], objc_msgSend(v3, "length"));
    CC_SHA256_Final(v37, &c);
    v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:v37 length:16];
  }

  else
  {
    v4 = 0;
  }

  v5 = [*(a1 + 32) objectForKeyedSubscript:v4];
  if (v5)
  {
    v6 = v5;
    goto LABEL_22;
  }

  v7 = CGImageSourceCreateWithData(v3, 0);
  if (v7)
  {
    v8 = v7;
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v7, 0, 0);
    CFRelease(v8);
    if (ImageAtIndex)
    {
      Width = CGImageGetWidth(ImageAtIndex);
      Height = CGImageGetHeight(ImageAtIndex);
      if (Width * Height <= 16384.0)
      {
        Image = CGImageRetain(ImageAtIndex);
      }

      else
      {
        v12 = Width / Height;
        v13 = sqrt(16384.0 / v12);
        v14 = fmax(round(v12 * v13), 1.0);
        v15 = fmax(round(v13), 1.0);
        RGB = CGColorSpaceGetRGB();
        v17 = CGBitmapContextCreate(0, v14, v15, 8uLL, 0, RGB, 1u);
        if (!v17)
        {
          CFRelease(ImageAtIndex);
          goto LABEL_21;
        }

        v18 = v17;
        CGContextSetInterpolationQuality(v17, kCGInterpolationHigh);
        v41.origin.x = 0.0;
        v41.origin.y = 0.0;
        v41.size.width = v14;
        v41.size.height = v15;
        CGContextDrawImage(v18, v41, ImageAtIndex);
        Image = CGBitmapContextCreateImage(v18);
        CFRelease(v18);
      }

      CGImageRelease(ImageAtIndex);
      if (Image)
      {
        v20 = objc_opt_new();
        v21 = CGImageDestinationCreateWithData(v20, @"public.jpeg", 1uLL, 0);
        if (v21)
        {
          v22 = v21;
          *v37 = *MEMORY[0x277CD2D48];
          v23 = [MEMORY[0x277CCABB0] numberWithDouble:{0.8, *v37}];
          *c.count = v23;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&c forKeys:v37 count:1];
          CGImageDestinationAddImage(v22, Image, v24);

          CFRelease(Image);
          v25 = CGImageDestinationFinalize(v22);
          CFRelease(v22);
          if (v25)
          {
            v26 = [(__CFData *)v20 copy];

            if (v26)
            {
              v27 = [*(a1 + 40) idStringForType:@"image" uniqueData:v26];
              v28 = (*(*(a1 + 48) + 16))();
              if (v28)
              {
                v29 = v28;
                [*(a1 + 32) setObject:v28 forKeyedSubscript:v4];
                v6 = v29;
              }

              else
              {
                v31 = (*(*(a1 + 56) + 16))();
                v32 = objc_alloc(MEMORY[0x277CBC5A0]);
                v33 = [*(a1 + 40) recordZoneID];
                v34 = [v32 initWithRecordType:@"image" zoneID:v33];

                v35 = (*(*(a1 + 64) + 16))();
                [v34 setRecordID:v35];

                v36 = [v34 encryptedValues];
                [v36 setObject:v26 forKeyedSubscript:@"compressed"];

                [*(a1 + 32) setObject:v31 forKeyedSubscript:v4];
                (*(*(a1 + 72) + 16))();
                v6 = v31;
              }

              goto LABEL_22;
            }

            goto LABEL_21;
          }
        }

        else
        {
          CGImageRelease(Image);
        }
      }
    }
  }

LABEL_21:
  v6 = 0;
LABEL_22:

  return v6;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_6(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v7)
  {
    v10 = [v8 objectForKeyedSubscript:v7];
    if (v10)
    {
      v11 = [MEMORY[0x277CBEB68] null];
      v12 = [v11 isEqual:v10];

      if (v12)
      {
        v13 = 0;
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_6_cold_1();
        }

        v13 = v10;
      }
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = v9[2](v9);
      if (v15)
      {
        v13 = (*(*(a1 + 32) + 16))();
        if (v13)
        {
          [v8 setObject:v13 forKeyedSubscript:v7];
        }

        else
        {
          v17 = [MEMORY[0x277CBEB68] null];
          [v8 setObject:v17 forKeyedSubscript:v7];
        }
      }

      else
      {
        v16 = [MEMORY[0x277CBEB68] null];
        [v8 setObject:v16 forKeyedSubscript:v7];

        v13 = 0;
      }

      objc_autoreleasePoolPop(v14);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7(void *a1, void *a2)
{
  v83[9] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [SLPerson alloc];
  v5 = [v3 sender];
  v82 = 0;
  v6 = [(SLPerson *)v4 initWithPortraitPerson:v5 error:&v82];
  v7 = v82;

  if (v7)
  {
    v9 = SLDaemonLogHandle(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7_cold_1();
    }

    v10 = 0;
  }

  else
  {
    v11 = [(SLPerson *)v6 contact];
    v12 = a1[7];
    v13 = [v11 identifier];
    v14 = a1[4];
    v80[0] = MEMORY[0x277D85DD0];
    v80[1] = 3221225472;
    v80[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_436;
    v80[3] = &unk_2789273A8;
    v76 = v11;
    v81 = v76;
    v15 = (*(v12 + 16))(v12, v13, v14, v80);

    v16 = a1[7];
    v17 = [v3 groupPhotoPath];
    v18 = v3;
    v19 = v17;
    v20 = a1[5];
    v78[0] = MEMORY[0x277D85DD0];
    v78[1] = 3221225472;
    v78[2] = __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2_438;
    v78[3] = &unk_2789273A8;
    v74 = v18;
    v21 = v18;
    v79 = v21;
    (*(v16 + 16))(v16, v19, v20, v78);
    v22 = v73 = a1;
    v77 = v22;

    v23 = [v21 identifier];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = &stru_28468DAB8;
    }

    v83[0] = v25;
    v26 = [v21 sourceAppDisplayName];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &stru_28468DAB8;
    }

    v83[1] = v28;
    if ([v21 isStarred])
    {
      v29 = @"1";
    }

    else
    {
      v29 = @"0";
    }

    v83[2] = v29;
    if ([v21 isFromMe])
    {
      v30 = @"1";
    }

    else
    {
      v30 = @"0";
    }

    v83[3] = v30;
    v31 = [(SLPerson *)v6 handle];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = &stru_28468DAB8;
    }

    v83[4] = v33;
    v34 = [(SLPerson *)v6 displayName];
    v35 = v34;
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = &stru_28468DAB8;
    }

    v83[5] = v36;
    v37 = [(SLPerson *)v6 shortDisplayName];
    v38 = v37;
    if (v37)
    {
      v39 = v37;
    }

    else
    {
      v39 = &stru_28468DAB8;
    }

    v75 = v15;
    if (v15)
    {
      v40 = v15;
    }

    else
    {
      v40 = &stru_28468DAB8;
    }

    v83[6] = v39;
    v83[7] = v40;
    if (v22)
    {
      v41 = v22;
    }

    else
    {
      v41 = &stru_28468DAB8;
    }

    v83[8] = v41;
    v42 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:9];

    v43 = v73[6];
    v44 = [v42 componentsJoinedByString:@"\n"];
    v45 = [v43 idStringForType:@"attribution" uniqueString:v44];

    v46 = (*(v73[8] + 16))();
    if (v46)
    {
      v10 = v46;
    }

    else
    {
      v72 = (*(v73[9] + 16))();
      v47 = objc_alloc(MEMORY[0x277CBC5A0]);
      v48 = [v73[6] recordZoneID];
      v49 = [v47 initWithRecordType:@"attribution" zoneID:v48];

      v50 = (*(v73[10] + 16))();
      [v49 setRecordID:v50];

      v51 = [v21 identifier];
      v52 = [v49 encryptedValues];
      [v52 setObject:v51 forKeyedSubscript:@"identifier"];

      v53 = [v21 sourceAppDisplayName];
      v54 = [v49 encryptedValues];
      [v54 setObject:v53 forKeyedSubscript:@"sourceAppDisplayName"];

      v55 = MEMORY[0x277CCABB0];
      v56 = [v21 timestamp];
      [v56 timeIntervalSinceReferenceDate];
      v57 = [v55 numberWithDouble:?];
      v58 = [v49 encryptedValues];
      [v58 setObject:v57 forKeyedSubscript:@"timestamp"];

      v59 = [(SLPerson *)v6 handle];
      v60 = [v49 encryptedValues];
      [v60 setObject:v59 forKeyedSubscript:@"handle"];

      v61 = [(SLPerson *)v6 displayName];
      v62 = [v49 encryptedValues];
      [v62 setObject:v61 forKeyedSubscript:@"displayName"];

      v63 = [(SLPerson *)v6 shortDisplayName];
      v64 = [v49 encryptedValues];
      [v64 setObject:v63 forKeyedSubscript:@"shortDisplayName"];

      v65 = [v49 encryptedValues];
      [v65 setObject:v75 forKeyedSubscript:@"contactPhoto"];

      v66 = [v49 encryptedValues];
      [v66 setObject:v22 forKeyedSubscript:@"groupPhoto"];

      v67 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v21, "isStarred")}];
      v68 = [v49 encryptedValues];
      [v68 setObject:v67 forKeyedSubscript:@"starred"];

      v69 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v21, "isFromMe")}];
      v70 = [v49 encryptedValues];
      [v70 setObject:v69 forKeyedSubscript:@"fromMe"];

      (*(v73[11] + 16))();
      v10 = v72;
    }

    v9 = v76;
    v7 = 0;
    v3 = v74;
  }

  return v10;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_2_438(uint64_t a1)
{
  v1 = MEMORY[0x277CBEA90];
  v2 = [*(a1 + 32) groupPhotoPath];
  v3 = [v1 dataWithContentsOfURL:v2 options:1 error:0];

  return v3;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v5 dataUsingEncoding:4];
  v7 = [v4 idStringForType:@"entity" uniqueData:v6];

  v8 = (*(*(a1 + 40) + 16))();
  if (v8)
  {
    v9 = v8;
    v10 = v9;
  }

  else
  {
    v9 = (*(*(a1 + 48) + 16))();
    v11 = objc_alloc(MEMORY[0x277CBC5A0]);
    v12 = [*(a1 + 32) recordZoneID];
    v13 = [v11 initWithRecordType:@"entity" zoneID:v12];

    v14 = (*(*(a1 + 56) + 16))();
    [v13 setRecordID:v14];

    v15 = [v3 identifier];
    v16 = [v13 encryptedValues];
    [v16 setObject:v15 forKeyedSubscript:@"identifier"];

    v17 = [v3 resourceURL];
    v18 = [v17 absoluteString];
    v19 = [v13 encryptedValues];
    [v19 setObject:v18 forKeyedSubscript:@"resourceURL"];

    v20 = [v3 supplementaryData];
    LODWORD(v18) = SLDValidateSupplementaryData(v20);

    if (v18)
    {
      v21 = MEMORY[0x277CCAAB0];
      v22 = [v3 supplementaryData];
      v29 = 0;
      v23 = [v21 archivedDataWithRootObject:v22 requiringSecureCoding:1 error:&v29];
      v24 = v29;

      if (v24)
      {
        v26 = SLDaemonLogHandle(v25);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486_cold_1();
        }

        v10 = 0;
      }

      else
      {
        v27 = [v13 encryptedValues];
        [v27 setObject:v23 forKeyedSubscript:@"supplementaryData"];

        (*(*(a1 + 64) + 16))();
        v10 = v9;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

id __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_499(uint64_t a1, void *a2, void *a3)
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = (*(*(a1 + 48) + 16))();
  if (v7)
  {
    v54 = v7;
    v56 = v6;
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v9 = [v5 attributionIdentifiers];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v55 = v5;
    v11 = [v5 attributionIdentifiers];
    v12 = [v11 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v60;
      do
      {
        v15 = 0;
        do
        {
          if (*v60 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v59 + 1) + 8 * v15);
          v17 = *(a1 + 32);
          v58 = 0;
          v18 = [v17 attributionForIdentifier:v16 error:&v58];
          v19 = v58;
          v20 = v19;
          if (v19)
          {
            v21 = SLDaemonLogHandle(v19);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
            {
              *buf = 138412546;
              v65 = v16;
              v66 = 2112;
              v67 = v20;
              _os_log_fault_impl(&dword_231772000, v21, OS_LOG_TYPE_FAULT, "#SLDCK portrait store couldn't retrieve attribution %@ (err: %@)", buf, 0x16u);
            }

LABEL_10:

            goto LABEL_11;
          }

          if (v18)
          {
            v21 = (*(*(a1 + 56) + 16))();
            if (v21)
            {
              [v10 addObject:v21];
            }

            goto LABEL_10;
          }

LABEL_11:

          ++v15;
        }

        while (v13 != v15);
        v22 = [v11 countByEnumeratingWithState:&v59 objects:v68 count:16];
        v13 = v22;
      }

      while (v22);
    }

    v23 = [v55 timestamp];
    [v23 timeIntervalSinceReferenceDate];
    v25 = v24;

    v26 = [v55 score];
    v27 = objc_opt_new();
    [v27 setUsesSignificantDigits:1];
    [v27 setMaximumSignificantDigits:14];
    [v27 setMinimumSignificantDigits:14];
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = &unk_28469BD50;
    }

    v29 = [v27 stringFromNumber:v28];
    v63[0] = v54;
    v63[1] = v56;
    v30 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
    v31 = [v30 stringValue];
    v63[2] = v31;
    v63[3] = v29;
    v57 = v29;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:4];
    v33 = [v10 sortedArrayUsingSelector:sel_compare_];
    v34 = [v32 arrayByAddingObjectsFromArray:v33];

    v35 = *(a1 + 40);
    v36 = [v34 componentsJoinedByString:@"\n"];
    v37 = [v35 idStringForType:@"highlight" uniqueString:v36];

    v38 = (*(*(a1 + 64) + 16))();
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      (*(*(a1 + 72) + 16))();
      v40 = v53 = v34;
      v41 = objc_alloc(MEMORY[0x277CBC5A0]);
      v42 = [*(a1 + 40) recordZoneID];
      v43 = [v41 initWithRecordType:@"highlight" zoneID:v42];

      v44 = (*(*(a1 + 80) + 16))();
      [v43 setRecordID:v44];

      v45 = [v43 encryptedValues];
      [v45 setObject:v54 forKeyedSubscript:@"entity"];

      v46 = [MEMORY[0x277CCABB0] numberWithDouble:v25];
      v47 = [v43 encryptedValues];
      [v47 setObject:v46 forKeyedSubscript:@"timestamp"];

      v48 = [v43 encryptedValues];
      [v48 setObject:v10 forKeyedSubscript:@"attributions"];

      v49 = [v43 encryptedValues];
      [v49 setObject:v56 forKeyedSubscript:@"applicationIdentifier"];

      v50 = [v43 encryptedValues];
      [v50 setObject:v26 forKeyedSubscript:@"score"];

      (*(*(a1 + 88) + 16))();
      v51 = v40;
      v34 = v53;
      v39 = v51;
    }

    v5 = v55;
    v6 = v56;
    v7 = v54;
  }

  else
  {
    v39 = 0;
  }

  return v39;
}

- (id)_recordIDsFromStrings:(id)strings
{
  v24 = *MEMORY[0x277D85DE8];
  stringsCopy = strings;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([stringsCopy count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    recordZoneID = [(SLDCloudKitSyncWriter *)self recordZoneID];
    if (recordZoneID)
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = stringsCopy;
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v19 + 1) + 8 * i);
            v14 = objc_alloc(MEMORY[0x277CBC5D0]);
            v15 = [v14 initWithRecordName:v13 zoneID:{recordZoneID, v19}];
            [v6 addObject:v15];
          }

          v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v10);
      }

      v16 = v6;
    }

    else
    {
      v17 = SLDaemonLogHandle(0);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        [SLDCloudKitSyncWriter _recordIDsFromStrings:];
      }

      v16 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v16 = MEMORY[0x277CBEBF8];
  }

  return v16;
}

- (id)recordZoneID
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v5 = [persistence objectForKeyedSubscript:@"recordZoneID"];

  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CBC5F8]);
    v7 = [v6 initWithZoneName:v5 ownerName:*MEMORY[0x277CBBF28]];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)reset
{
  v3 = SLDaemonLogHandle(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231772000, v3, OS_LOG_TYPE_DEFAULT, "#SLDCK RESET RESET RESET!", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SLDCloudKitSyncWriter;
  [(SLDCloudKitSyncBase *)&v4 reset];
  [(SLDCloudKitSyncWriter *)self nextTask];
}

- (void)accountStatusChanged
{
  v3.receiver = self;
  v3.super_class = SLDCloudKitSyncWriter;
  [(SLDCloudKitSyncBase *)&v3 accountStatusChanged];
  [(SLDCloudKitSyncWriter *)self nextTask];
}

- (void)handleMetadataSizeBecomingEligibleForSync
{
  v6.receiver = self;
  v6.super_class = SLDCloudKitSyncWriter;
  handleMetadataSizeBecomingEligibleForSync = [(SLDCloudKitSyncBase *)&v6 handleMetadataSizeBecomingEligibleForSync];
  v4 = SLDaemonLogHandle(handleMetadataSizeBecomingEligibleForSync);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_DEFAULT, "#SLDCK nextTask: sync engine metadata should be small enough now", v5, 2u);
  }

  [(SLDCloudKitSyncWriter *)self nextTask];
}

- (void)checkForAppChanges
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!*(&self->super._saltLocked + 2))
  {
    *(&self->super._saltLocked + 2) = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 10000000000);
    queue2 = [(SLDCloudKitSyncBase *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43__SLDCloudKitSyncWriter_checkForAppChanges__block_invoke;
    v6[3] = &unk_278925C50;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, queue2, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __43__SLDCloudKitSyncWriter_checkForAppChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[59] == 1)
  {
    WeakRetained[59] = 0;
    v2 = WeakRetained;
    [WeakRetained checkForAppChangesNow];
    WeakRetained = v2;
  }
}

- (void)checkForAppChangesNow
{
  v33 = *MEMORY[0x277D85DE8];
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v5 = [persistence objectForKeyedSubscript:@"readers"];

  v6 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [v5 allValues];
  v8 = [allValues countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      v11 = 0;
      do
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [v6 addObjectsFromArray:*(*(&v23 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v9);
  }

  v12 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"self" ascending:1];
  v31 = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
  v14 = [v6 sortedArrayUsingDescriptors:v13];

  persistence2 = [(SLDCloudKitSyncBase *)self persistence];
  v16 = [persistence2 objectForKeyedSubscript:@"lastKnownApps"];
  v17 = [v16 isEqual:v14];

  if ((v17 & 1) == 0)
  {
    v19 = SLDaemonLogHandle(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      persistence3 = [(SLDCloudKitSyncBase *)self persistence];
      v21 = [persistence3 objectForKeyedSubscript:@"lastKnownApps"];
      *buf = 138412546;
      v28 = v21;
      v29 = 2112;
      v30 = v14;
      _os_log_impl(&dword_231772000, v19, OS_LOG_TYPE_DEFAULT, "#SLDCK app list changed (prev %@, now %@)", buf, 0x16u);
    }

    persistence4 = [(SLDCloudKitSyncBase *)self persistence];
    [persistence4 setObject:v14 forKeyedSubscript:@"lastKnownApps"];

    [(SLDCloudKitSyncWriter *)self invalidateHighlightsInternal];
  }
}

- (BOOL)_didHandleSyncError:(id)error retryBlock:(id)block
{
  v24[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  blockCopy = block;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  domain = [errorCopy domain];
  if ([domain isEqual:*MEMORY[0x277CBBF50]])
  {
  }

  else
  {
    domain2 = [errorCopy domain];
    v11 = [domain2 isEqual:*MEMORY[0x277CBBF98]];

    if (!v11)
    {
      domain3 = [errorCopy domain];
      v18 = [domain3 isEqual:*MEMORY[0x277CCA050]];

      if (!v18)
      {
        goto LABEL_21;
      }

      code = [errorCopy code];
      if ((code | 2) != 0x1003 || !blockCopy)
      {
        goto LABEL_21;
      }

      v20 = SLDaemonLogHandle(code);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  code2 = [errorCopy code];
  switch(code2)
  {
    case 18:
      persistence = [(SLDCloudKitSyncBase *)self persistence];
      [persistence setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"incompatibleVersion"];

      goto LABEL_23;
    case 34:
      if (!blockCopy)
      {
        break;
      }

      v20 = SLDaemonLogHandle(34);
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

LABEL_19:
      [SLDCloudKitSyncWriter _didHandleSyncError:retryBlock:];
LABEL_20:

      blockCopy[2](blockCopy);
LABEL_23:
      [(SLDCloudKitSyncWriter *)self nextTask];
LABEL_24:
      v21 = 1;
      goto LABEL_25;
    case 112:
      v13 = SLDaemonLogHandle(112);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SLDCloudKitSyncWriter _didHandleSyncError:retryBlock:];
      }

      recordZoneID = [(SLDCloudKitSyncWriter *)self recordZoneID];
      [(SLDCloudKitSyncWriter *)self reset];
      if (recordZoneID)
      {
        syncEngine = [(SLDCloudKitSyncBase *)self syncEngine];
        v24[0] = recordZoneID;
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
        [syncEngine addRecordZonesToSave:0 recordZoneIDsToDelete:v16];
      }

      [(SLDCloudKitSyncWriter *)self nextTask];

      goto LABEL_24;
  }

LABEL_21:
  v21 = 0;
LABEL_25:

  return v21;
}

- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone
{
  engineCopy = engine;
  zoneCopy = zone;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke;
  block[3] = &unk_278927298;
  v12 = engineCopy;
  selfCopy = self;
  v14 = zoneCopy;
  v9 = zoneCopy;
  v10 = engineCopy;
  dispatch_sync(queue, block);
}

void __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) syncEngine];

  if (v3 == v4)
  {
    v5 = [*(a1 + 40) persistence];
    v6 = [v5 objectForKeyedSubscript:@"recordZoneID"];
    v8 = *(a1 + 48);
    v7 = a1 + 48;
    v9 = [v8 zoneID];
    v10 = [v9 zoneName];
    v11 = [v6 isEqual:v10];

    if (v11)
    {
      v13 = [*v2 persistence];
      v14 = [v13 objectForKeyedSubscript:@"recordZoneIDSaved"];
      v15 = [v14 BOOLValue];

      if ((v15 & 1) == 0)
      {
        v17 = SLDaemonLogHandle(v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_2();
        }

        v18 = [*v2 persistence];
        [v18 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"recordZoneIDSaved"];

        [*v2 nextTask];
      }
    }

    else
    {
      v19 = SLDaemonLogHandle(v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_1(v7, v2, v19);
      }
    }
  }
}

- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error
{
  engineCopy = engine;
  zoneCopy = zone;
  errorCopy = error;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = engineCopy;
  selfCopy = self;
  v18 = zoneCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = zoneCopy;
  v14 = engineCopy;
  dispatch_sync(queue, v15);
}

void __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 40) persistence];
    v5 = [v4 objectForKeyedSubscript:@"recordZoneIDSaved"];
    v6 = [v5 BOOLValue];

    if ((v6 & 1) == 0)
    {
      v7 = [*(a1 + 40) persistence];
      v8 = [v7 objectForKeyedSubscript:@"recordZoneID"];
      v9 = [*(a1 + 48) zoneID];
      v10 = [v9 zoneName];
      v11 = [v8 isEqual:v10];

      if (v11)
      {
        v13 = SLDaemonLogHandle(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_cold_1();
        }

        v14 = *(a1 + 40);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_565;
        v21[3] = &unk_278925CF0;
        v21[4] = v14;
        v15 = *(a1 + 56);
        v22 = *(a1 + 48);
        if (([v14 _didHandleSyncError:v15 retryBlock:v21] & 1) == 0)
        {
          v16 = *MEMORY[0x277CBBF50];
          v17 = [*(a1 + 56) domain];
          LODWORD(v16) = [v16 isEqual:v17];

          if (v16 && ((v18 = [*(a1 + 56) code], v18 == 32) || v18 == 9))
          {
            v19 = *(a1 + 40);
            v20[0] = MEMORY[0x277D85DD0];
            v20[1] = 3221225472;
            v20[2] = __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_2;
            v20[3] = &unk_278925D90;
            v20[4] = v19;
            [v19 checkForAccountChangesNowWithCompletion:v20];
          }

          else
          {
            [*(a1 + 40) nextTask];
          }
        }
      }
    }
  }
}

void __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_565(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) syncEngine];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 addRecordZonesToSave:v3 recordZoneIDsToDelete:0];
}

uint64_t __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  dispatch_assert_queue_V2(v2);

  v3 = *(a1 + 32);

  return [v3 nextTask];
}

- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d
{
  engineCopy = engine;
  dCopy = d;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__12;
  v22 = __Block_byref_object_dispose__12;
  v23 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke;
  v13[3] = &unk_278927498;
  v14 = engineCopy;
  selfCopy = self;
  v16 = dCopy;
  v17 = &v18;
  v9 = dCopy;
  v10 = engineCopy;
  dispatch_sync(queue, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = *(*(a1 + 40) + 64);
    if (v5)
    {
      v7 = *(a1 + 48);
      v6 = a1 + 48;
      v8 = [v7 recordName];
      v9 = [v5 objectForKeyedSubscript:v8];
      v10 = *(*(v6 + 8) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      v12 = *(*(*(v6 + 8) + 8) + 40);
      v14 = SLDaemonLogHandle(v13);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v12)
      {
        if (v15)
        {
          __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_1();
        }
      }

      else if (v15)
      {
        __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_2();
      }
    }

    else
    {
      v14 = SLDaemonLogHandle(v4);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_3();
      }
    }
  }
}

- (void)_savedRecord:(id)record
{
  v29[1] = *MEMORY[0x277D85DE8];
  recordCopy = record;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  recordID = [recordCopy recordID];
  recordName = [recordID recordName];

  v9 = SLDaemonLogHandle(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncWriter _savedRecord:recordCopy];
  }

  v10 = [*&self->_freshHighlightsGenerated objectForKeyedSubscript:recordName];

  if (v10)
  {
    [*&self->_freshHighlightsGenerated setObject:0 forKeyedSubscript:recordName];
    persistence = [(SLDCloudKitSyncBase *)self persistence];
    v12 = [persistence objectForKeyedSubscript:@"savedIDs"];
    v13 = v12;
    if (!v12)
    {
      v12 = MEMORY[0x277CBEC10];
    }

    v14 = [v12 mutableCopy];

    v15 = [(SLDCloudKitSyncWriter *)self _batchNumberOfRecordIDString:recordName];
    v16 = [recordCopy objectForKeyedSubscript:@"version"];
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{v15, v16}];
    v28[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
    v19 = [(SLDCloudKitSyncWriter *)self _idForRecordIDString:recordName];
    [v14 setObject:v18 forKeyedSubscript:v19];

    persistence2 = [(SLDCloudKitSyncBase *)self persistence];
    [persistence2 setObject:v14 forKeyedSubscript:@"savedIDs"];

    v22 = SLDaemonLogHandle(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [SLDCloudKitSyncWriter _savedRecord:recordCopy];
    }

    [(SLDCloudKitSyncWriter *)self nextTask];
  }

  else
  {
    v23 = [(SLDCloudKitSyncWriter *)self recordIDStringOfSavedIDString:recordName];
    v14 = v23;
    if (v23 && (v23 = [v23 isEqual:recordName], (v23 & 1) != 0))
    {
      syncEngine = SLDaemonLogHandle(v23);
      if (os_log_type_enabled(syncEngine, OS_LOG_TYPE_DEBUG))
      {
        [SLDCloudKitSyncWriter _savedRecord:recordCopy];
      }
    }

    else
    {
      v25 = SLDaemonLogHandle(v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        [SLDCloudKitSyncWriter _savedRecord:recordCopy];
      }

      syncEngine = [(SLDCloudKitSyncBase *)self syncEngine];
      recordID2 = [recordCopy recordID];
      v29[0] = recordID2;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
      [syncEngine addRecordIDsToSave:MEMORY[0x277CBEBF8] recordIDsToDelete:v27];
    }
  }
}

- (void)syncEngine:(id)engine didSaveRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SLDCloudKitSyncWriter_syncEngine_didSaveRecord___block_invoke;
  block[3] = &unk_278927298;
  v12 = engineCopy;
  selfCopy = self;
  v14 = recordCopy;
  v9 = recordCopy;
  v10 = engineCopy;
  dispatch_sync(queue, block);
}

void __50__SLDCloudKitSyncWriter_syncEngine_didSaveRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v4 _savedRecord:v5];
  }
}

- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error
{
  engineCopy = engine;
  recordCopy = record;
  errorCopy = error;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = engineCopy;
  selfCopy = self;
  v18 = recordCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = recordCopy;
  v14 = engineCopy;
  dispatch_sync(queue, v15);
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) recordID];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    v7 = [*(a1 + 40) persistence];
    v8 = [v7 objectForKeyedSubscript:@"recordZoneID"];
    v9 = [v6 isEqual:v8];

    v11 = SLDaemonLogHandle(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v12)
      {
        __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_2(a1 + 48);
      }

      v13 = *(a1 + 40);
      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_566;
      v28 = &unk_278925CF0;
      v29 = v13;
      v14 = *(a1 + 56);
      v30 = *(a1 + 48);
      if ([v13 _didHandleSyncError:v14 retryBlock:&v25])
      {
        goto LABEL_22;
      }

      v15 = *MEMORY[0x277CBBF50];
      v16 = [*(a1 + 56) domain];
      LODWORD(v15) = [v15 isEqual:v16];

      if (v15)
      {
        v17 = [*(a1 + 56) code];
        if (v17 <= 25)
        {
          if (v17 != 9)
          {
            if (v17 == 14)
            {
              [*(a1 + 40) _savedRecord:*(a1 + 48)];
            }

            goto LABEL_21;
          }

          goto LABEL_19;
        }

        if (v17 != 26 && v17 != 28)
        {
          if (v17 != 32)
          {
            goto LABEL_21;
          }

LABEL_19:
          [*(a1 + 40) checkForAccountChanges];
          v18 = *(*(a1 + 40) + 64);
          v19 = [*(a1 + 48) recordID];
          v20 = [v19 recordName];
          v21 = [v18 objectForKeyedSubscript:v20];

          if (v21)
          {
            v22 = [*(a1 + 40) syncEngine];
            v23 = [*(a1 + 48) recordID];
            v31[0] = v23;
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
            [v22 addRecordIDsToSave:v24 recordIDsToDelete:0];
          }

          goto LABEL_21;
        }

        [*(a1 + 40) reset];
      }

LABEL_21:
      [*(a1 + 40) nextTask];
LABEL_22:

      return;
    }

    if (v12)
    {
      __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_1(a1 + 48);
    }
  }
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_566(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 32) + 64);
  if (v1)
  {
    v3 = [*(a1 + 40) recordID];
    v4 = [v3 recordName];
    v5 = [v1 objectForKeyedSubscript:v4];

    if (v5)
    {
      v6 = [*(a1 + 32) syncEngine];
      v7 = [*(a1 + 40) recordID];
      v9[0] = v7;
      v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
      [v6 addRecordIDsToSave:v8 recordIDsToDelete:0];
    }
  }
}

- (void)syncEngine:(id)engine failedToDeleteRecordWithID:(id)d error:(id)error
{
  engineCopy = engine;
  dCopy = d;
  errorCopy = error;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = engineCopy;
  selfCopy = self;
  v18 = dCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = dCopy;
  v14 = engineCopy;
  dispatch_sync(queue, v15);
}

void __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke(uint64_t a1)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) zoneID];
    v5 = [v4 zoneName];
    v6 = [*(a1 + 40) persistence];
    v7 = [v6 objectForKeyedSubscript:@"recordZoneID"];
    v8 = [v5 isEqual:v7];

    if (v8)
    {
      v10 = SLDaemonLogHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_cold_1();
      }

      v11 = *(a1 + 40);
      v23 = MEMORY[0x277D85DD0];
      v24 = 3221225472;
      v25 = __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_567;
      v26 = &unk_278925CF0;
      v27 = v11;
      v12 = *(a1 + 56);
      v28 = *(a1 + 48);
      if ([v11 _didHandleSyncError:v12 retryBlock:&v23])
      {
        goto LABEL_17;
      }

      v13 = [*(a1 + 56) domain];
      v14 = [v13 isEqual:*MEMORY[0x277CBBF50]];

      if (v14)
      {
        v15 = [*(a1 + 56) code];
        if (v15 <= 27)
        {
          if (v15 != 9)
          {
            if (v15 != 26)
            {
              goto LABEL_16;
            }

LABEL_13:
            v16 = [*(a1 + 48) zoneID];
            v17 = [v16 zoneName];
            v18 = [*(a1 + 40) persistence];
            v19 = [v18 objectForKeyedSubscript:@"recordZoneID"];
            v20 = [v17 isEqual:v19];

            if (v20)
            {
              [*(a1 + 40) reset];
            }

            goto LABEL_16;
          }

          goto LABEL_15;
        }

        if (v15 == 32)
        {
LABEL_15:
          [*(a1 + 40) checkForAccountChanges];
          v21 = [*(a1 + 40) syncEngine];
          v29[0] = *(a1 + 48);
          v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:1];
          [v21 addRecordIDsToSave:0 recordIDsToDelete:v22];

          goto LABEL_16;
        }

        if (v15 == 28)
        {
          goto LABEL_13;
        }
      }

LABEL_16:
      [*(a1 + 40) nextTask];
LABEL_17:
    }
  }
}

void __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_567(uint64_t a1)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) syncEngine];
  v4[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v2 addRecordIDsToSave:0 recordIDsToDelete:v3];
}

- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d
{
  engineCopy = engine;
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__SLDCloudKitSyncWriter_syncEngine_shouldFetchChangesForZoneID___block_invoke;
  v12[3] = &unk_2789274C0;
  v13 = engineCopy;
  selfCopy = self;
  v15 = dCopy;
  v16 = &v17;
  v9 = dCopy;
  v10 = engineCopy;
  dispatch_sync(queue, v12);

  LOBYTE(dCopy) = *(v18 + 24);
  _Block_object_dispose(&v17, 8);
  return dCopy;
}

void __64__SLDCloudKitSyncWriter_syncEngine_shouldFetchChangesForZoneID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = [*(a1 + 48) zoneName];
    v6 = [@"readers" isEqual:v5];

    v4 = *(*(a1 + 56) + 8);
    if (v6)
    {
      *(v4 + 24) = 1;
      return;
    }
  }

  else
  {
    v4 = *(*(a1 + 56) + 8);
  }

  *(v4 + 24) = 0;
}

- (void)syncEngine:(id)engine didFetchRecord:(id)record
{
  engineCopy = engine;
  recordCopy = record;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke;
  block[3] = &unk_278927298;
  v12 = engineCopy;
  selfCopy = self;
  v14 = recordCopy;
  v9 = recordCopy;
  v10 = engineCopy;
  dispatch_sync(queue, block);
}

void __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = SLDaemonLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [*(a1 + 48) recordID];
      v24 = 138412290;
      v25 = v6;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "#SLDCK fetched %@", &v24, 0xCu);
    }

    v7 = [*(a1 + 48) recordID];
    v8 = [v7 zoneID];
    v9 = [v8 zoneName];
    v10 = [@"readers" isEqual:v9];

    if (v10)
    {
      if ([*(a1 + 40) recordSupportsOurVersion:*(a1 + 48)])
      {
        v11 = [*(a1 + 48) recordType];
        v12 = [@"reader" isEqual:v11];

        if (v12)
        {
          v13 = [*(a1 + 40) persistence];
          v14 = [v13 objectForKeyedSubscript:@"readers"];
          v15 = v14;
          if (!v14)
          {
            v14 = MEMORY[0x277CBEC10];
          }

          v16 = [v14 mutableCopy];

          v17 = [*(a1 + 48) encryptedValues];
          v18 = [v17 objectForKeyedSubscript:@"applicationIdentifiers"];
          v19 = [*(a1 + 48) recordID];
          v20 = [v19 recordName];
          [v16 setObject:v18 forKeyedSubscript:v20];

          v22 = SLDaemonLogHandle(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke_cold_1((a1 + 48));
          }

          v23 = [*(a1 + 40) persistence];
          [v23 setObject:v16 forKeyedSubscript:@"readers"];

          [*(a1 + 40) checkForAppChanges];
        }
      }
    }
  }
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  engineCopy = engine;
  deletedCopy = deleted;
  typeCopy = type;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke;
  v15[3] = &unk_278927470;
  v16 = engineCopy;
  selfCopy = self;
  v18 = deletedCopy;
  v19 = typeCopy;
  v12 = typeCopy;
  v13 = deletedCopy;
  v14 = engineCopy;
  dispatch_sync(queue, v15);
}

void __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v14 = [*(a1 + 48) zoneID];
    v4 = [v14 zoneName];
    if ([@"readers" isEqual:v4])
    {
      v5 = [@"reader" isEqual:*(a1 + 56)];

      if (v5)
      {
        v7 = SLDaemonLogHandle(v6);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke_cold_1();
        }

        v8 = [*(a1 + 40) persistence];
        v9 = [v8 objectForKeyedSubscript:@"readers"];
        v10 = v9;
        if (!v9)
        {
          v9 = MEMORY[0x277CBEC10];
        }

        v11 = [v9 mutableCopy];

        v12 = [*(a1 + 48) recordName];
        [v11 setObject:0 forKeyedSubscript:v12];

        v13 = [*(a1 + 40) persistence];
        [v13 setObject:v11 forKeyedSubscript:@"readers"];

        [*(a1 + 40) checkForAppChanges];
      }
    }

    else
    {
    }
  }
}

- (void)syncEngine:(id)engine failedToFetchChangesForRecordZoneID:(id)d error:(id)error
{
  engineCopy = engine;
  dCopy = d;
  errorCopy = error;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke;
  v15[3] = &unk_278927470;
  v16 = engineCopy;
  selfCopy = self;
  v18 = dCopy;
  v19 = errorCopy;
  v12 = errorCopy;
  v13 = dCopy;
  v14 = engineCopy;
  dispatch_sync(queue, v15);
}

void __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = SLDaemonLogHandle(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_231772000, v5, OS_LOG_TYPE_DEFAULT, "#SLDCK Failed to fetch changes for zone %@: %@", buf, 0x16u);
    }

    v8 = [*(a1 + 56) domain];
    if ([v8 isEqual:*MEMORY[0x277CBBF50]])
    {
    }

    else
    {
      v9 = [*(a1 + 56) domain];
      v10 = [v9 isEqual:*MEMORY[0x277CBBF98]];

      if (!v10)
      {
        return;
      }
    }

    if ([*(a1 + 56) code] == 112)
    {
      v11 = [*(a1 + 48) zoneName];
      v12 = [@"readers" isEqual:v11];

      if (v12)
      {
        v14 = SLDaemonLogHandle(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1();
        }

        v15 = [*(a1 + 40) syncEngine];
        v17 = *(a1 + 48);
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
        [v15 addRecordZonesToSave:0 recordZoneIDsToDelete:v16];
      }
    }
  }
}

- (void)dealloc
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)invalidateHighlights
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    dispatch_suspend(v3);
  }

  else
  {
    objc_initWeak(&location, v2);
    v4 = [*(a1 + 32) queue];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v4);
    v6 = *(a1 + 32);
    v7 = *(v6 + 72);
    *(v6 + 72) = v5;

    v8 = os_transaction_create();
    v9 = *(*(a1 + 32) + 72);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__SLDCloudKitSyncWriter_invalidateHighlights__block_invoke_2;
    handler[3] = &unk_278926DB0;
    v14 = v8;
    v10 = v8;
    objc_copyWeak(&v15, &location);
    dispatch_source_set_event_handler(v9, handler);
    objc_destroyWeak(&v15);

    objc_destroyWeak(&location);
  }

  v11 = *(*(a1 + 32) + 72);
  v12 = dispatch_time(0, 5000000000);
  dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  dispatch_resume(*(*(a1 + 32) + 72));
}

void __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_7_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __55__SLDCloudKitSyncWriter_fetchAndProcessFreshHighlights__block_invoke_3_486_cold_1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_recordIDsFromStrings:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_didHandleSyncError:retryBlock:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_didHandleSyncError:retryBlock:.cold.3()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_1(uint64_t a1, id *a2, NSObject *a3)
{
  v5 = [OUTLINED_FUNCTION_8(a1) zoneID];
  v6 = [v5 zoneName];
  v7 = [*a2 persistence];
  v8 = [v7 objectForKeyedSubscript:@"recordZoneID"];
  v10 = 138412546;
  v11 = v6;
  OUTLINED_FUNCTION_6_0();
  v12 = v9;
  _os_log_error_impl(&dword_231772000, a3, OS_LOG_TYPE_ERROR, "#SLDCK unexpected record zone saved (was %@, expected %@)", &v10, 0x16u);
}

void __54__SLDCloudKitSyncWriter_syncEngine_didSaveRecordZone___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __65__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecordZone_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SLDCloudKitSyncWriter_syncEngine_recordToSaveForRecordID___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_savedRecord:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_savedRecord:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_savedRecord:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_savedRecord:(void *)a1 .cold.4(void *a1)
{
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) recordID];
  v2 = [v1 zoneID];
  v3 = [v2 zoneName];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);
}

void __61__SLDCloudKitSyncWriter_syncEngine_failedToSaveRecord_error___block_invoke_cold_2(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __69__SLDCloudKitSyncWriter_syncEngine_failedToDeleteRecordWithID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SLDCloudKitSyncWriter_syncEngine_didFetchRecord___block_invoke_cold_1(id *a1)
{
  v2 = [OUTLINED_FUNCTION_8(a1) recordID];
  v3 = [*a1 encryptedValues];
  v4 = [v3 objectForKeyedSubscript:@"applicationIdentifiers"];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __70__SLDCloudKitSyncWriter_syncEngine_recordWithIDWasDeleted_recordType___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __78__SLDCloudKitSyncWriter_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end