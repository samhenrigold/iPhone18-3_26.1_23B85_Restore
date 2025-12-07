@interface SLDCloudKitSyncReader
+ (id)sharedInstance;
- (BOOL)_validateRecordIDString:(id)string;
- (BOOL)syncEngine:(id)engine shouldFetchChangesForZoneID:(id)d;
- (id)_fetchAttributionInternal:(id)internal;
- (id)_syncDirectory;
- (id)_syncDirectoryForWriter:(id)writer;
- (id)apps;
- (id)fetchAttribution:(id)attribution;
- (id)getHighlightsForApplicationIdentifier:(id)identifier;
- (id)getHighlightsInternalForApplicationIdentifier:(id)identifier;
- (id)getSyncableHighlightsForApplicationIdentifier:(id)identifier;
- (id)recordForDevice:(id)device fileName:(id)name;
- (id)syncEngine:(id)engine recordToSaveForRecordID:(id)d;
- (void)accountStatusChanged;
- (void)addApplicationIdentifier:(id)identifier;
- (void)addApplicationIdentifierInternal:(id)internal;
- (void)deleteFromDevice:(id)device fileName:(id)name overrideRetained:(BOOL)retained;
- (void)garbageCollect;
- (void)garbageCollectNow;
- (void)initializeState;
- (void)invalidateApps;
- (void)invalidateAppsInternal;
- (void)notifyChangeCallback;
- (void)reset;
- (void)setChangeCallback:(id)callback;
- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d;
- (void)syncEngine:(id)engine didFetchRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecord:(id)record;
- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone;
- (void)syncEngine:(id)engine failedToFetchChangesForRecordZoneID:(id)d error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecord:(id)record error:(id)error;
- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error;
- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type;
- (void)updateServerAppsIfNecessary;
@end

@implementation SLDCloudKitSyncReader

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_605 != -1)
  {
    +[SLDCloudKitSyncReader sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_606;

  return v3;
}

void __39__SLDCloudKitSyncReader_sharedInstance__block_invoke()
{
  v3 = objc_opt_new();
  v0 = [MEMORY[0x277CBC218] containerWithIdentifier:@"com.apple.SocialLayer"];
  [v3 setContainer:v0];

  [v3 setName:@"ckreader"];
  v1 = [(SLDCloudKitSyncBase *)[SLDCloudKitSyncReader alloc] initWithConfiguration:v3];
  v2 = sharedInstance_sharedInstance_606;
  sharedInstance_sharedInstance_606 = v1;
}

- (void)initializeState
{
  v3.receiver = self;
  v3.super_class = SLDCloudKitSyncReader;
  [(SLDCloudKitSyncBase *)&v3 initializeState];
  *(&self->super._saltLocked + 1) = 0;
  [(SLDCloudKitSyncReader *)self updateServerAppsIfNecessary];
}

- (void)reset
{
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  _syncDirectory = [(SLDCloudKitSyncReader *)self _syncDirectory];
  [defaultManager removeItemAtURL:_syncDirectory error:0];

  v5.receiver = self;
  v5.super_class = SLDCloudKitSyncReader;
  [(SLDCloudKitSyncBase *)&v5 reset];
}

- (void)accountStatusChanged
{
  v4.receiver = self;
  v4.super_class = SLDCloudKitSyncReader;
  [(SLDCloudKitSyncBase *)&v4 accountStatusChanged];
  persistence = [(SLDCloudKitSyncBase *)self persistence];
  [persistence setObject:0 forKeyedSubscript:@"appListLastUploaded"];

  [(SLDCloudKitSyncReader *)self updateServerAppsIfNecessary];
}

- (void)invalidateAppsInternal
{
  persistence = [self persistence];
  v2 = [persistence objectForKeyedSubscript:@"myAppsRecordID"];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (id)apps
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v5 = [persistence objectForKeyedSubscript:@"appListOnServer"];

  return v5;
}

- (BOOL)_validateRecordIDString:(id)string
{
  stringCopy = string;
  if ([stringCopy length])
  {
    v4 = 0;
    while (1)
    {
      v5 = [stringCopy characterAtIndex:v4];
      if (((v5 - 33) > 0x3E || ((1 << (v5 - 33)) & 0x43FFFFFF11FF9401) == 0) && (v5 - 97) >= 0x1A)
      {
        break;
      }

      if (++v4 >= [stringCopy length])
      {
        goto LABEL_7;
      }
    }

    v8 = SLDaemonLogHandle(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SLDCloudKitSyncReader *)stringCopy _validateRecordIDString:v4];
    }

    v6 = 0;
  }

  else
  {
LABEL_7:
    v6 = 1;
  }

  return v6;
}

- (id)_syncDirectory
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (SLDStorageDirectory_onceToken != -1)
  {
    [SLDCloudKitSyncReader _syncDirectory];
  }

  v4 = SLDStorageDirectory_dirURL;
  configuration = [(SLDCloudKitSyncBase *)self configuration];
  name = [configuration name];
  v7 = [v4 URLByAppendingPathComponent:name isDirectory:1];

  return v7;
}

- (id)_syncDirectoryForWriter:(id)writer
{
  writerCopy = writer;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([writerCopy hasPrefix:@"writer!"] && -[SLDCloudKitSyncReader _validateRecordIDString:](self, "_validateRecordIDString:", writerCopy))
  {
    _syncDirectory = [(SLDCloudKitSyncReader *)self _syncDirectory];
    v7 = [_syncDirectory URLByAppendingPathComponent:writerCopy isDirectory:1];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)addApplicationIdentifierInternal:(id)internal
{
  internalCopy = internal;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = SLDaemonLogHandle(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader addApplicationIdentifierInternal:];
  }

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v9 = [persistence objectForKeyedSubscript:@"appIDToTimestamp"];
  v10 = v9;
  if (!v9)
  {
    v9 = MEMORY[0x277CBEC10];
  }

  v11 = [v9 mutableCopy];

  v12 = MEMORY[0x277CCABB0];
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v14 = [v12 numberWithDouble:?];
  [v11 setObject:v14 forKeyedSubscript:internalCopy];

  persistence2 = [(SLDCloudKitSyncBase *)self persistence];
  [persistence2 setObject:v11 forKeyedSubscript:@"appIDToTimestamp"];

  [(SLDCloudKitSyncReader *)self updateServerAppsIfNecessary];
}

- (void)updateServerAppsIfNecessary
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)garbageCollect
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!*(&self->super._saltLocked + 1))
  {
    *(&self->super._saltLocked + 1) = 1;
    objc_initWeak(&location, self);
    v4 = dispatch_time(0, 2000000000);
    queue2 = [(SLDCloudKitSyncBase *)self queue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __39__SLDCloudKitSyncReader_garbageCollect__block_invoke;
    v6[3] = &unk_278925C50;
    objc_copyWeak(&v7, &location);
    dispatch_after(v4, queue2, v6);

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __39__SLDCloudKitSyncReader_garbageCollect__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[58] = 0;
    v2 = WeakRetained;
    [WeakRetained garbageCollectNow];
    WeakRetained = v2;
  }
}

- (void)garbageCollectNow
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)recordForDevice:(id)device fileName:(id)name
{
  deviceCopy = device;
  nameCopy = name;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(SLDCloudKitSyncReader *)self _validateRecordIDString:deviceCopy]&& [(SLDCloudKitSyncReader *)self _validateRecordIDString:nameCopy])
  {
    v9 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:deviceCopy];
    v10 = [v9 URLByAppendingPathComponent:nameCopy];
    if (v10)
    {
      v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v10 options:1 error:0];
      if (v11)
      {
        v12 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v11 error:0];
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
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)deleteFromDevice:(id)device fileName:(id)name overrideRetained:(BOOL)retained
{
  retainedCopy = retained;
  deviceCopy = device;
  nameCopy = name;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(SLDCloudKitSyncReader *)self _validateRecordIDString:deviceCopy]&& [(SLDCloudKitSyncReader *)self _validateRecordIDString:nameCopy])
  {
    persistence = [(SLDCloudKitSyncBase *)self persistence];
    v11 = [persistence objectForKeyedSubscript:@"files"];
    v12 = [v11 mutableCopy];

    if (!v12)
    {
LABEL_24:

      goto LABEL_25;
    }

    v13 = [v12 objectForKeyedSubscript:deviceCopy];
    v14 = [v13 mutableCopy];

    if (!v14 || ([v14 objectForKeyedSubscript:nameCopy], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
    {
LABEL_23:

      goto LABEL_24;
    }

    persistence2 = [(SLDCloudKitSyncBase *)self persistence];
    v17 = [persistence2 objectForKeyedSubscript:@"retainUntilExpirationFiles"];
    v18 = [v17 mutableCopy];

    if (v18)
    {
      v19 = [v18 objectForKeyedSubscript:deviceCopy];
      v20 = [v19 containsObject:nameCopy];

      if (v20)
      {
        if (!retainedCopy)
        {
LABEL_22:

          goto LABEL_23;
        }

        v21 = [v18 objectForKeyedSubscript:deviceCopy];
        v22 = [v21 mutableCopy];

        [v22 removeObject:nameCopy];
        if ([v22 count])
        {
          v23 = v22;
        }

        else
        {
          v23 = 0;
        }

        [v18 setObject:v23 forKeyedSubscript:deviceCopy];
        persistence3 = [(SLDCloudKitSyncBase *)self persistence];
        [persistence3 setObject:v18 forKeyedSubscript:@"retainUntilExpirationFiles"];
      }
    }

    [v14 setObject:0 forKeyedSubscript:nameCopy];
    if ([v14 count])
    {
      v25 = v14;
    }

    else
    {
      v25 = 0;
    }

    [v12 setObject:v25 forKeyedSubscript:deviceCopy];
    persistence4 = [(SLDCloudKitSyncBase *)self persistence];
    [persistence4 setObject:v12 forKeyedSubscript:@"files"];

    persistence5 = [(SLDCloudKitSyncBase *)self persistence];
    v28 = [persistence5 objectForKeyedSubscript:@"rankings"];
    v29 = [v28 mutableCopy];

    v30 = [v29 objectForKeyedSubscript:deviceCopy];
    v31 = [v30 mutableCopy];

    v32 = [v31 objectForKeyedSubscript:nameCopy];

    if (v32)
    {
      [v31 setObject:0 forKeyedSubscript:nameCopy];
      if ([v31 count])
      {
        v33 = v31;
      }

      else
      {
        v33 = 0;
      }

      [v29 setObject:v33 forKeyedSubscript:deviceCopy];
      persistence6 = [(SLDCloudKitSyncBase *)self persistence];
      [persistence6 setObject:v29 forKeyedSubscript:@"rankings"];
    }

    v35 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:deviceCopy];
    v36 = [v35 URLByAppendingPathComponent:nameCopy];

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    [defaultManager removeItemAtURL:v36 error:0];

    [(SLDCloudKitSyncReader *)self notifyChangeCallback];
    goto LABEL_22;
  }

LABEL_25:
}

- (id)_fetchAttributionInternal:(id)internal
{
  internalCopy = internal;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = objc_autoreleasePoolPush();
  v7 = [internalCopy componentsSeparatedByString:@"/"];
  if ([v7 count] != 2)
  {
    v9 = 0;
    goto LABEL_32;
  }

  v8 = [v7 objectAtIndexedSubscript:0];
  v9 = 0;
  if ([v8 hasPrefix:@"writer!"])
  {
    v10 = [v7 objectAtIndexedSubscript:1];
    if (![v10 hasPrefix:@"attribution!"])
    {
      v9 = 0;
LABEL_30:

      goto LABEL_31;
    }

    v11 = [(SLDCloudKitSyncReader *)self recordForDevice:v8 fileName:v10];
    if (!v11)
    {
      v9 = 0;
LABEL_29:

      goto LABEL_30;
    }

    v66 = v10;
    v67 = v8;
    v12 = objc_alloc(MEMORY[0x277D3A4D0]);
    encryptedValues = [v11 encryptedValues];
    v14 = [encryptedValues objectForKeyedSubscript:@"handle"];
    encryptedValues2 = [v11 encryptedValues];
    v16 = [encryptedValues2 objectForKeyedSubscript:@"displayName"];
    v69 = [v12 initWithHandle:v14 displayName:v16];

    encryptedValues3 = [v11 encryptedValues];
    v18 = [encryptedValues3 objectForKeyedSubscript:@"groupPhoto"];

    v61 = v6;
    if (v18 && ([v11 encryptedValues], v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "objectForKeyedSubscript:", @"groupPhoto"), v20 = objc_claimAutoreleasedReturnValue(), v21 = -[SLDCloudKitSyncReader _validateRecordIDString:](self, "_validateRecordIDString:", v20), v20, v19, v21))
    {
      v22 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:v67];
      encryptedValues4 = [v11 encryptedValues];
      v24 = [encryptedValues4 objectForKeyedSubscript:@"groupPhoto"];
      v70 = [v22 URLByAppendingPathComponent:v24];
    }

    else
    {
      v70 = 0;
    }

    v25 = objc_alloc(MEMORY[0x277D3A4B0]);
    encryptedValues5 = [v11 encryptedValues];
    v26 = [encryptedValues5 objectForKeyedSubscript:@"identifier"];
    encryptedValues6 = [v11 encryptedValues];
    v57 = [encryptedValues6 objectForKeyedSubscript:@"sourceAppDisplayName"];
    encryptedValues7 = [v11 encryptedValues];
    v56 = [encryptedValues7 objectForKeyedSubscript:@"groupDisplayName"];
    v27 = MEMORY[0x277CBEAA8];
    encryptedValues8 = [v11 encryptedValues];
    v58 = [encryptedValues8 objectForKeyedSubscript:@"timestamp"];
    [v58 doubleValue];
    v54 = [v27 dateWithTimeIntervalSinceReferenceDate:?];
    encryptedValues9 = [v11 encryptedValues];
    v28 = [encryptedValues9 objectForKeyedSubscript:@"starred"];
    bOOLValue = [v28 BOOLValue];
    v68 = v11;
    encryptedValues10 = [v11 encryptedValues];
    v31 = [encryptedValues10 objectForKeyedSubscript:@"fromMe"];
    BYTE1(v52) = [v31 BOOLValue];
    LOBYTE(v52) = bOOLValue;
    v32 = [v25 initWithIdentifier:v26 sourceAppDisplayName:v57 conversationIdentifier:@"c" groupPhotoPath:v70 groupDisplayName:v56 relatedPeople:MEMORY[0x277CBEBF8] sender:v69 timestamp:v54 collaborationMetadata:0 starred:v52 fromMe:?];

    v33 = v70;
    if (!v32)
    {
      v9 = 0;
      v10 = v66;
      v8 = v67;
      v11 = v68;
      v6 = v61;
LABEL_28:

      goto LABEL_29;
    }

    v71[0] = 0;
    v9 = [[SLAttribution alloc] initWithPortraitAttribution:v32 error:v71];
    v34 = v71[0];
    v65 = v34;
    v10 = v66;
    v6 = v61;
    v53 = v32;
    if (v9)
    {
      v35 = v68;
      encryptedValues11 = [v68 encryptedValues];
      v37 = [encryptedValues11 objectForKeyedSubscript:@"shortDisplayName"];

      v8 = v67;
      if (v37)
      {
        encryptedValues12 = [v68 encryptedValues];
        v38 = [encryptedValues12 objectForKeyedSubscript:@"shortDisplayName"];
        sender = [(SLAttribution *)v9 sender];
        [sender setShortDisplayName:v38];

        v35 = v68;
      }

      encryptedValues13 = [v35 encryptedValues];
      v41 = [encryptedValues13 objectForKeyedSubscript:@"contactPhoto"];

      v11 = v35;
      if (!v41)
      {
        goto LABEL_27;
      }

      encryptedValues14 = [v35 encryptedValues];
      v43 = [encryptedValues14 objectForKeyedSubscript:@"contactPhoto"];
      v44 = [(SLDCloudKitSyncReader *)self _validateRecordIDString:v43];

      v11 = v68;
      if (!v44)
      {
        goto LABEL_27;
      }

      v45 = [(SLDCloudKitSyncReader *)self _syncDirectoryForWriter:v67];
      encryptedValues15 = [v68 encryptedValues];
      v47 = [encryptedValues15 objectForKeyedSubscript:@"contactPhoto"];
      v48 = [v45 URLByAppendingPathComponent:v47];

      if (v48)
      {
        v49 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v48 options:8 error:0];
        if (v49)
        {
          sender2 = [(SLAttribution *)v9 sender];
          [sender2 setThumbnailImageData:v49];
        }
      }

      v11 = v68;
    }

    else
    {
      v48 = SLDaemonLogHandle(v34);
      v8 = v67;
      v11 = v68;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_FAULT))
      {
        [SLDCloudKitSyncReader _fetchAttributionInternal:];
      }
    }

LABEL_27:
    v33 = v70;
    v32 = v53;
    goto LABEL_28;
  }

LABEL_31:

LABEL_32:
  objc_autoreleasePoolPop(v6);

  return v9;
}

- (id)getHighlightsInternalForApplicationIdentifier:(id)identifier
{
  v197 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queue = [(SLDCloudKitSyncBase *)self queue];
  dispatch_assert_queue_V2(queue);

  persistence = [(SLDCloudKitSyncBase *)self persistence];
  v7 = [persistence objectForKeyedSubscript:@"rankings"];

  persistence2 = [(SLDCloudKitSyncBase *)self persistence];
  v9 = [persistence2 objectForKeyedSubscript:@"files"];

  v130 = 0;
  v126 = v7;
  if (v7 && v9)
  {
    v156 = objc_opt_new();
    v130 = objc_opt_new();
    v180 = 0u;
    v181 = 0u;
    v182 = 0u;
    v183 = 0u;
    v10 = v7;
    v135 = [v10 countByEnumeratingWithState:&v180 objects:v196 count:16];
    if (v135)
    {
      v134 = *v181;
      v140 = identifierCopy;
      selfCopy = self;
      v132 = v10;
      v133 = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v181 != v134)
          {
            v12 = v11;
            objc_enumerationMutation(v10);
            v11 = v12;
          }

          v138 = v11;
          v13 = *(*(&v180 + 1) + 8 * v11);
          v14 = [v10 objectForKeyedSubscript:v13];
          v158 = [v9 objectForKeyedSubscript:v13];
          if (v158)
          {
            v178 = 0u;
            v179 = 0u;
            v176 = 0u;
            v177 = 0u;
            v15 = v14;
            v16 = [v15 countByEnumeratingWithState:&v176 objects:v195 count:16];
            if (!v16)
            {
              v18 = v15;
              identifierCopy = v140;
LABEL_101:

              goto LABEL_102;
            }

            v17 = v16;
            v18 = 0;
            v19 = *v177;
            v150 = v14;
            v151 = *v177;
            v157 = v13;
            do
            {
              v20 = 0;
              v154 = v17;
              do
              {
                if (*v177 != v19)
                {
                  objc_enumerationMutation(v15);
                }

                v21 = *(*(&v176 + 1) + 8 * v20);
                v22 = [v158 objectForKeyedSubscript:v21];
                v23 = [v158 objectForKeyedSubscript:v18];
                v24 = [v23 compare:v22];

                if (v24 == 1)
                {
                  v25 = v157;
                }

                else
                {
                  v26 = v18;
                  v174 = 0u;
                  v175 = 0u;
                  v172 = 0u;
                  v173 = 0u;
                  v27 = v15;
                  v28 = [v15 objectForKeyedSubscript:v21];
                  v29 = [v28 countByEnumeratingWithState:&v172 objects:v194 count:16];
                  if (v29)
                  {
                    v30 = v29;
                    v31 = *v173;
                    while (2)
                    {
                      for (i = 0; i != v30; ++i)
                      {
                        if (*v173 != v31)
                        {
                          objc_enumerationMutation(v28);
                        }

                        v33 = [v158 objectForKeyedSubscript:*(*(&v172 + 1) + 8 * i)];

                        if (!v33)
                        {
                          v18 = v26;
                          goto LABEL_26;
                        }
                      }

                      v30 = [v28 countByEnumeratingWithState:&v172 objects:v194 count:16];
                      if (v30)
                      {
                        continue;
                      }

                      break;
                    }
                  }

                  v18 = v21;
                  v28 = v26;
LABEL_26:

                  v14 = v150;
                  v19 = v151;
                  v25 = v157;
                  v15 = v27;
                  v17 = v154;
                }

                ++v20;
              }

              while (v20 != v17);
              v17 = [v15 countByEnumeratingWithState:&v176 objects:v195 count:16];
            }

            while (v17);

            identifierCopy = v140;
            v10 = v132;
            v9 = v133;
            if (v18)
            {
              v34 = objc_alloc(MEMORY[0x277CBEAA8]);
              v35 = [v158 objectForKeyedSubscript:v18];
              [v35 doubleValue];
              v36 = [v34 initWithTimeIntervalSinceReferenceDate:?];

              [v36 timeIntervalSinceNow];
              if (v37 >= -2592000.0)
              {
                [v36 timeIntervalSinceNow];
                if (v38 <= 86400.0)
                {
                  v39 = [(SLDCloudKitSyncReader *)selfCopy recordForDevice:v25 fileName:v18];
                  if (v39)
                  {
                    v131 = v36;
                    v40 = v39;
                    persistence3 = [(SLDCloudKitSyncBase *)selfCopy persistence];
                    v42 = [persistence3 objectForKeyedSubscript:@"retainUntilExpirationFiles"];
                    v43 = v42;
                    if (!v42)
                    {
                      v42 = MEMORY[0x277CBEC10];
                    }

                    v44 = [v42 mutableCopy];

                    v45 = objc_opt_new();
                    v128 = v44;
                    v46 = [v44 objectForKeyedSubscript:v25];
                    v47 = v46;
                    if (v46)
                    {
                      v48 = v46;
                    }

                    else
                    {
                      v48 = MEMORY[0x277CBEBF8];
                    }

                    [v45 addObjectsFromArray:v48];

                    v170 = 0u;
                    v171 = 0u;
                    v168 = 0u;
                    v169 = 0u;
                    v129 = v40;
                    encryptedValues = [v40 encryptedValues];
                    v50 = [encryptedValues objectForKeyedSubscript:@"recordIDs"];

                    v51 = [v50 countByEnumeratingWithState:&v168 objects:v193 count:16];
                    if (v51)
                    {
                      v52 = v51;
                      v53 = *v169;
                      do
                      {
                        for (j = 0; j != v52; ++j)
                        {
                          if (*v169 != v53)
                          {
                            objc_enumerationMutation(v50);
                          }

                          [v45 addObject:*(*(&v168 + 1) + 8 * j)];
                        }

                        v52 = [v50 countByEnumeratingWithState:&v168 objects:v193 count:16];
                      }

                      while (v52);
                    }

                    v127 = v45;
                    if ([v45 count])
                    {
                      allObjects = [v45 allObjects];
                      v56 = v128;
                      [v128 setObject:allObjects forKeyedSubscript:v25];
                    }

                    else
                    {
                      v56 = v128;
                      [v128 setObject:0 forKeyedSubscript:v25];
                    }

                    v57 = selfCopy;
                    persistence4 = [(SLDCloudKitSyncBase *)selfCopy persistence];
                    [persistence4 setObject:v56 forKeyedSubscript:@"retainUntilExpirationFiles"];

                    v166 = 0u;
                    v167 = 0u;
                    v164 = 0u;
                    v165 = 0u;
                    encryptedValues2 = [v129 encryptedValues];
                    v60 = [encryptedValues2 objectForKeyedSubscript:@"highlights"];

                    obj = v60;
                    v61 = [v60 countByEnumeratingWithState:&v164 objects:v192 count:16];
                    v14 = v150;
                    v149 = v61;
                    if (v61)
                    {
                      v146 = *v165;
                      v139 = v18;
                      do
                      {
                        v62 = 0;
                        do
                        {
                          if (*v165 != v146)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v63 = *(*(&v164 + 1) + 8 * v62);
                          v64 = objc_autoreleasePoolPush();
                          v147 = v63;
                          v65 = [(SLDCloudKitSyncReader *)v57 recordForDevice:v25 fileName:v63];
                          v66 = v65;
                          if (v65)
                          {
                            if (!identifierCopy || ([v65 encryptedValues], v67 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v67, "objectForKeyedSubscript:", @"applicationIdentifier"), v68 = v66, v69 = v64, v70 = v62, v71 = objc_claimAutoreleasedReturnValue(), v67, LODWORD(v67) = objc_msgSend(v71, "isEqual:", identifierCopy), v71, v62 = v70, v64 = v69, v66 = v68, v67))
                            {
                              v145 = v62;
                              encryptedValues3 = [v66 encryptedValues];
                              v73 = [encryptedValues3 objectForKeyedSubscript:@"entity"];
                              v74 = [(SLDCloudKitSyncReader *)v57 recordForDevice:v25 fileName:v73];

                              if (!v74)
                              {
                                goto LABEL_95;
                              }

                              encryptedValues4 = [v74 encryptedValues];
                              v76 = [encryptedValues4 objectForKeyedSubscript:@"identifier"];

                              v155 = v76;
                              if (!v76)
                              {
                                v152 = SLDaemonLogHandle(v77);
                                if (os_log_type_enabled(v152, OS_LOG_TYPE_FAULT))
                                {
                                  [SLDCloudKitSyncReader getHighlightsInternalForApplicationIdentifier:];
                                }

                                goto LABEL_94;
                              }

                              v142 = v74;
                              v143 = v64;
                              v78 = objc_alloc(MEMORY[0x277CBEB18]);
                              encryptedValues5 = [v66 encryptedValues];
                              v80 = [encryptedValues5 objectForKeyedSubscript:@"attributions"];
                              v152 = [v78 initWithCapacity:{objc_msgSend(v80, "count")}];

                              v162 = 0u;
                              v163 = 0u;
                              v160 = 0u;
                              v161 = 0u;
                              v141 = v66;
                              encryptedValues6 = [v66 encryptedValues];
                              v82 = [encryptedValues6 objectForKeyedSubscript:@"attributions"];

                              v83 = [v82 countByEnumeratingWithState:&v160 objects:v191 count:16];
                              if (v83)
                              {
                                v84 = v83;
                                v85 = *v161;
                                do
                                {
                                  for (k = 0; k != v84; ++k)
                                  {
                                    if (*v161 != v85)
                                    {
                                      objc_enumerationMutation(v82);
                                    }

                                    v87 = *(*(&v160 + 1) + 8 * k);
                                    v88 = objc_autoreleasePoolPush();
                                    v190[0] = v25;
                                    v190[1] = v87;
                                    v89 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:2];
                                    v90 = [v89 componentsJoinedByString:@"/"];

                                    v91 = [(SLDCloudKitSyncReader *)v57 _fetchAttributionInternal:v90];
                                    v92 = v91;
                                    if (v91)
                                    {
                                      sender = [v91 sender];
                                      handle = [sender handle];

                                      if (handle)
                                      {
                                        v189[0] = v155;
                                        v189[1] = handle;
                                        v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v189 count:2];
                                        v96 = [v95 componentsJoinedByString:@"\n"];

                                        if (([v156 containsObject:v96] & 1) == 0)
                                        {
                                          [v156 addObject:v96];
                                          [v152 addObject:v90];
                                        }

                                        v57 = selfCopy;
                                      }

                                      v25 = v157;
                                    }

                                    objc_autoreleasePoolPop(v88);
                                  }

                                  v84 = [v82 countByEnumeratingWithState:&v160 objects:v191 count:16];
                                }

                                while (v84);
                              }

                              v98 = SLDaemonLogHandle(v97);
                              if (os_log_type_enabled(v98, OS_LOG_TYPE_DEBUG))
                              {
                                v184[0] = v25;
                                v184[1] = v147;
                                v124 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:2];
                                *buf = 138412546;
                                v186 = v124;
                                v187 = 2112;
                                v188 = v152;
                                _os_log_debug_impl(&dword_231772000, v98, OS_LOG_TYPE_DEBUG, "#SLDCK %@ device scoped attributions: %@", buf, 0x16u);
                              }

                              v18 = v139;
                              identifierCopy = v140;
                              v14 = v150;
                              v74 = v142;
                              v64 = v143;
                              v66 = v141;
                              if (![v152 count])
                              {
                                v57 = selfCopy;
                                goto LABEL_94;
                              }

                              v99 = [v142 objectForKeyedSubscript:@"version"];
                              unsignedIntegerValue = [v99 unsignedIntegerValue];

                              if (unsignedIntegerValue <= 1)
                              {
                                encryptedValues7 = [v142 encryptedValues];
                                v114 = [encryptedValues7 objectForKeyedSubscript:@"supplementaryData"];
                                v115 = MEMORY[0x277CBEC10];
                                if (!v114)
                                {
                                  v115 = 0;
                                }

                                v108 = v115;

                                v57 = selfCopy;
                                if (!v108)
                                {
                                  goto LABEL_89;
                                }
                              }

                              else
                              {
                                v101 = MEMORY[0x277CCAAC8];
                                v102 = MEMORY[0x277CBEB98];
                                v103 = objc_opt_class();
                                v104 = objc_opt_class();
                                v105 = [v102 setWithObjects:{v103, v104, objc_opt_class(), 0}];
                                encryptedValues8 = [v142 encryptedValues];
                                v107 = [encryptedValues8 objectForKeyedSubscript:@"supplementaryData"];
                                v159 = 0;
                                v108 = [v101 unarchivedObjectOfClasses:v105 fromData:v107 error:&v159];
                                v109 = v159;

                                if (v109)
                                {
                                  v111 = SLDaemonLogHandle(v110);
                                  v57 = selfCopy;
                                  v74 = v142;
                                  if (os_log_type_enabled(v111, OS_LOG_TYPE_FAULT))
                                  {
                                    v112 = [v142 objectForKeyedSubscript:@"version"];
                                    *buf = 138412546;
                                    v186 = v112;
                                    v187 = 2112;
                                    v188 = v109;
                                    _os_log_fault_impl(&dword_231772000, v111, OS_LOG_TYPE_FAULT, "#SLDCK unable to decode supplementary data from record with version %@: %@", buf, 0x16u);

                                    v57 = selfCopy;
                                  }

LABEL_87:

LABEL_92:
LABEL_93:

                                  identifierCopy = v140;
                                  v64 = v143;
LABEL_94:

LABEL_95:
                                  v62 = v145;
                                  goto LABEL_96;
                                }

                                v57 = selfCopy;
                                v74 = v142;
                                if (!v108)
                                {
LABEL_89:
                                  v109 = SLDaemonLogHandle(v110);
                                  if (os_log_type_enabled(v109, OS_LOG_TYPE_FAULT))
                                  {
                                    [SLDCloudKitSyncReader getHighlightsInternalForApplicationIdentifier:];
                                  }

                                  v108 = 0;
                                  goto LABEL_92;
                                }
                              }

                              if (SLDValidateSupplementaryData(v108))
                              {
                                v136 = objc_alloc(MEMORY[0x277D3A4C0]);
                                v116 = MEMORY[0x277CBEBC0];
                                encryptedValues9 = [v74 encryptedValues];
                                v137 = [encryptedValues9 objectForKeyedSubscript:@"resourceURL"];
                                v117 = [v116 URLWithString:v137];
                                v118 = MEMORY[0x277CBEAA8];
                                encryptedValues10 = [v141 encryptedValues];
                                v120 = [encryptedValues10 objectForKeyedSubscript:@"timestamp"];
                                [v120 doubleValue];
                                v121 = [v118 dateWithTimeIntervalSinceReferenceDate:?];
                                encryptedValues11 = [v141 encryptedValues];
                                v123 = [encryptedValues11 objectForKeyedSubscript:@"score"];
                                v109 = [v136 initWithIdentifier:v155 resourceURL:v117 timestamp:v121 attributionIdentifiers:v152 supplementaryData:v108 score:v123];

                                v74 = v142;
                                v57 = selfCopy;

                                v25 = v157;
                                v66 = v141;

                                v111 = [objc_alloc(MEMORY[0x277D3A508]) initWithHighlight:v109 rankingDate:v131 originatingDeviceId:v157];
                                [v130 addObject:v111];
                                goto LABEL_87;
                              }

                              goto LABEL_93;
                            }
                          }

LABEL_96:

                          objc_autoreleasePoolPop(v64);
                          ++v62;
                        }

                        while (v62 != v149);
                        v149 = [obj countByEnumeratingWithState:&v164 objects:v192 count:16];
                      }

                      while (v149);
                    }

                    v36 = v131;
                    v39 = v129;
                  }
                }
              }

              v10 = v132;
              v9 = v133;
              goto LABEL_101;
            }
          }

LABEL_102:

          v11 = v138 + 1;
        }

        while (v138 + 1 != v135);
        v135 = [v10 countByEnumeratingWithState:&v180 objects:v196 count:16];
      }

      while (v135);
    }
  }

  return v130;
}

- (void)syncEngine:(id)engine didSaveRecordZone:(id)zone
{
  zoneCopy = zone;
  v5 = SLDaemonLogHandle(zoneCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader syncEngine:zoneCopy didSaveRecordZone:?];
  }
}

- (void)syncEngine:(id)engine failedToSaveRecordZone:(id)zone error:(id)error
{
  zoneCopy = zone;
  errorCopy = error;
  v8 = SLDaemonLogHandle(errorCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [SLDCloudKitSyncReader syncEngine:failedToSaveRecordZone:error:];
  }
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
  v13[2] = __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke;
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

void __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) zoneID];
    v5 = [v4 zoneName];
    v6 = [@"readers" isEqual:v5];

    if (v6)
    {
      v7 = [*(a1 + 40) persistence];
      v8 = [v7 objectForKeyedSubscript:@"myAppsRecordID"];
      v9 = [*(a1 + 48) recordName];
      v10 = [v8 isEqual:v9];

      if (v10)
      {
        v12 = [objc_alloc(MEMORY[0x277CBC5A0]) initWithRecordType:@"reader" recordID:*(a1 + 48)];
        v14 = *(a1 + 56);
        v13 = a1 + 56;
        v15 = *(v14 + 8);
        v16 = *(v15 + 40);
        *(v15 + 40) = v12;

        [*(v13 - 16) addMetadataToRecord:*(*(*v13 + 8) + 40)];
        v17 = [*(v13 - 16) apps];
        v18 = [*(*(*v13 + 8) + 40) encryptedValues];
        [v18 setObject:v17 forKeyedSubscript:@"applicationIdentifiers"];

        v20 = SLDaemonLogHandle(v19);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_2();
        }
      }

      else
      {
        v20 = SLDaemonLogHandle(v11);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_1();
        }
      }
    }
  }
}

- (void)syncEngine:(id)engine didSaveRecord:(id)record
{
  recordCopy = record;
  v5 = SLDaemonLogHandle(recordCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader syncEngine:recordCopy didSaveRecord:?];
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
  v15[2] = __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke;
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

void __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = [*(a1 + 48) recordID];
    v5 = [v4 zoneID];
    v6 = [v5 zoneName];
    v7 = [@"readers" isEqual:v6];

    v9 = SLDaemonLogHandle(v8);
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_2();
      }

      v11 = [*(a1 + 40) persistence];
      v12 = [v11 objectForKeyedSubscript:@"myAppsRecordID"];
      v13 = [*(a1 + 48) recordID];
      v14 = [v13 recordName];
      v15 = [v12 isEqual:v14];

      if (v15)
      {
        v16 = [*(a1 + 40) persistence];
        [v16 setObject:0 forKeyedSubscript:@"appListLastUploaded"];

        v17 = [*(a1 + 40) persistence];
        [v17 setObject:0 forKeyedSubscript:@"appListOnServer"];

        [*(a1 + 40) checkForAccountChanges];
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_1();
      }
    }
  }
}

- (void)syncEngine:(id)engine didDeleteRecordWithID:(id)d
{
  dCopy = d;
  v5 = SLDaemonLogHandle(dCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SLDCloudKitSyncReader syncEngine:didDeleteRecordWithID:];
  }
}

- (void)syncEngine:(id)engine recordWithIDWasDeleted:(id)deleted recordType:(id)type
{
  deletedCopy = deleted;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__SLDCloudKitSyncReader_syncEngine_recordWithIDWasDeleted_recordType___block_invoke;
  v9[3] = &unk_278925CF0;
  v10 = deletedCopy;
  selfCopy = self;
  v8 = deletedCopy;
  dispatch_sync(queue, v9);
}

void __70__SLDCloudKitSyncReader_syncEngine_recordWithIDWasDeleted_recordType___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) zoneID];
  v4 = [v2 zoneName];

  v3 = [*(a1 + 32) recordName];
  [*(a1 + 40) deleteFromDevice:v4 fileName:v3 overrideRetained:0];
  [*(a1 + 40) garbageCollect];
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
  v12[2] = __64__SLDCloudKitSyncReader_syncEngine_shouldFetchChangesForZoneID___block_invoke;
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

void __64__SLDCloudKitSyncReader_syncEngine_shouldFetchChangesForZoneID___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v5 = [*(a1 + 48) zoneName];
    v6 = [v5 hasPrefix:@"writer!"];

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
  block[2] = __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke;
  block[3] = &unk_278927298;
  v12 = engineCopy;
  selfCopy = self;
  v14 = recordCopy;
  v9 = recordCopy;
  v10 = engineCopy;
  dispatch_sync(queue, block);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) syncEngine];

  if (v2 == v3)
  {
    v4 = (a1 + 48);
    v5 = [*(a1 + 40) recordSupportsOurVersion:*(a1 + 48)];
    if ((v5 & 1) == 0)
    {
      v11 = SLDaemonLogHandle(v5);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_1(a1 + 48);
      }

      goto LABEL_55;
    }

    v6 = [*v4 recordID];
    v7 = [v6 zoneID];
    v8 = [v7 zoneName];
    v9 = [v8 hasPrefix:@"writer!"];

    v11 = SLDaemonLogHandle(v10);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
    if ((v9 & 1) == 0)
    {
      if (v12)
      {
        __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_2((a1 + 48));
      }

      goto LABEL_55;
    }

    if (v12)
    {
      __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_3(a1 + 48);
    }

    v13 = *(a1 + 40);
    v14 = [*(a1 + 48) recordID];
    v15 = [v14 zoneID];
    v16 = [v15 zoneName];
    LODWORD(v13) = [v13 _validateRecordIDString:v16];

    if (v13)
    {
      v17 = *(a1 + 40);
      v18 = [*(a1 + 48) recordID];
      v19 = [v18 recordName];
      LODWORD(v17) = [v17 _validateRecordIDString:v19];

      if (v17)
      {
        v20 = *(a1 + 40);
        v21 = [*(a1 + 48) recordID];
        v22 = [v21 zoneID];
        v23 = [v22 zoneName];
        v11 = [v20 _syncDirectoryForWriter:v23];

        if (!v11)
        {
          v29 = SLDaemonLogHandle(v24);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_13();
          }

          goto LABEL_54;
        }

        v25 = [*(a1 + 40) persistence];
        v26 = [v25 objectForKeyedSubscript:@"files"];
        v27 = v26;
        v28 = MEMORY[0x277CBEC10];
        if (!v26)
        {
          v26 = MEMORY[0x277CBEC10];
        }

        v29 = [v26 mutableCopy];

        v30 = [*(a1 + 48) recordID];
        v31 = [v30 zoneID];
        v32 = [v31 zoneName];
        v33 = [v29 objectForKeyedSubscript:v32];
        v34 = v33;
        if (!v33)
        {
          v33 = v28;
        }

        v35 = [v33 mutableCopy];

        v36 = [*(a1 + 48) recordID];
        v37 = [v36 recordName];
        v38 = [v35 objectForKeyedSubscript:v37];

        if (v38)
        {
          v40 = SLDaemonLogHandle(v39);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_4();
          }

          goto LABEL_53;
        }

        v41 = [MEMORY[0x277CCAA00] defaultManager];
        v97 = 0;
        v42 = [v41 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v97];
        v40 = v97;

        if ((v42 & 1) == 0)
        {
          v74 = SLDaemonLogHandle(v43);
          if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_5();
          }

          goto LABEL_52;
        }

        v44 = [*v4 objectForKeyedSubscript:@"recordTimestamp"];
        v45 = [*v4 recordID];
        v46 = [v45 recordName];
        [v35 setObject:v44 forKeyedSubscript:v46];

        v47 = [*v4 recordType];
        LODWORD(v45) = [@"index" isEqual:v47];

        if (v45)
        {
          v93 = v40;
          v49 = v28;
          v50 = SLDaemonLogHandle(v48);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_6();
          }

          v51 = [*(a1 + 40) persistence];
          v52 = [v51 objectForKeyedSubscript:@"rankings"];
          v53 = v52;
          if (!v52)
          {
            v52 = v49;
          }

          v91 = [v52 mutableCopy];

          v54 = [*(a1 + 48) recordID];
          v55 = [v54 zoneID];
          v56 = [v55 zoneName];
          v57 = [v91 objectForKeyedSubscript:v56];
          v58 = v57;
          if (!v57)
          {
            v57 = MEMORY[0x277CBEC10];
          }

          v59 = [v57 mutableCopy];

          v60 = [*(a1 + 48) encryptedValues];
          v61 = [v60 objectForKeyedSubscript:@"recordIDs"];
          v62 = [*(a1 + 48) recordID];
          v63 = [v62 recordName];
          [v59 setObject:v61 forKeyedSubscript:v63];

          v64 = [*(a1 + 48) recordID];
          v65 = [v64 zoneID];
          v66 = [v65 zoneName];
          [v92 setObject:v59 forKeyedSubscript:v66];

          v67 = [*(a1 + 40) persistence];
          [v67 setObject:v92 forKeyedSubscript:@"rankings"];

          v40 = v93;
        }

        v68 = [*(a1 + 48) recordID];
        v69 = [v68 zoneID];
        v70 = [v69 zoneName];
        [v29 setObject:v35 forKeyedSubscript:v70];

        v71 = [*(a1 + 40) persistence];
        [v71 setObject:v29 forKeyedSubscript:@"files"];

        v72 = [*(a1 + 48) recordID];
        v73 = [v72 recordName];
        v74 = [v11 URLByAppendingPathComponent:v73];

        v76 = SLDaemonLogHandle(v75);
        if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
        {
          __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_7();
        }

        v77 = [*v4 recordType];
        v78 = [@"image" isEqual:v77];

        v80 = SLDaemonLogHandle(v79);
        v81 = os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG);
        if (v78)
        {
          if (v81)
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_11();
          }

          v82 = [*v4 encryptedValues];
          v83 = [v82 objectForKeyedSubscript:@"compressed"];

          v96 = 0;
          [v83 writeToURL:v74 options:0 error:&v96];
          v84 = v96;
          v85 = v84;
          if (!v84)
          {
            goto LABEL_51;
          }

          v86 = SLDaemonLogHandle(v84);
          if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_12();
          }
        }

        else
        {
          if (v81)
          {
            __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_8();
          }

          v87 = *v4;
          v95 = 0;
          v85 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v87 requiringSecureCoding:1 error:&v95];
          v88 = v95;
          v83 = v88;
          if (v85)
          {
            v94 = 0;
            [v85 writeToURL:v74 options:0 error:&v94];
            v89 = v94;
            v86 = v89;
            if (v89)
            {
              v90 = SLDaemonLogHandle(v89);
              if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
              {
                __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_9();
              }
            }
          }

          else
          {
            v86 = SLDaemonLogHandle(v88);
            if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
            {
              __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_10();
            }
          }
        }

LABEL_51:
        [*(a1 + 40) garbageCollect];
LABEL_52:

LABEL_53:
LABEL_54:

LABEL_55:
      }
    }
  }
}

- (void)notifyChangeCallback
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __45__SLDCloudKitSyncReader_notifyChangeCallback__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 72) = 0;
    v3 = _Block_copy(WeakRetained[8]);
    v4 = SLDaemonLogHandle(v3);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
    if (v3)
    {
      if (v5)
      {
        *buf = 0;
        _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "#SLDCK invoking change callback", buf, 2u);
      }

      v4 = dispatch_get_global_queue(-2, 0);
      dispatch_async(v4, v3);
    }

    else if (v5)
    {
      v6[0] = 0;
      _os_log_impl(&dword_231772000, v4, OS_LOG_TYPE_INFO, "#SLDCK not invoking change callback because it's nil", v6, 2u);
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
  v15[2] = __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke;
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

void __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke(uint64_t a1)
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

      if ((v12 & 1) == 0)
      {
        v14 = SLDaemonLogHandle(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1();
        }

        v15 = [*(a1 + 40) syncEngine];
        v17 = *(a1 + 48);
        v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
        [v15 addRecordZonesToSave:0 recordZoneIDsToDelete:v16];
      }
    }
  }
}

- (void)invalidateApps
{
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__SLDCloudKitSyncReader_invalidateApps__block_invoke;
  block[3] = &unk_278925D90;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)addApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__SLDCloudKitSyncReader_addApplicationIdentifier___block_invoke;
  v7[3] = &unk_278925CF0;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(queue, v7);
}

- (id)getHighlightsForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__SLDCloudKitSyncReader_getHighlightsForApplicationIdentifier___block_invoke;
  block[3] = &unk_278926700;
  block[4] = self;
  v10 = identifierCopy;
  v11 = &v12;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __63__SLDCloudKitSyncReader_getHighlightsForApplicationIdentifier___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) getHighlightsInternalForApplicationIdentifier:*(a1 + 40)];
  v2 = objc_opt_new();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v22 + 1) + 8 * i);
        v9 = [v8 originatingDeviceId];
        v10 = [v2 objectForKeyedSubscript:v9];

        if (!v10)
        {
          v10 = objc_opt_new();
          v11 = [v8 originatingDeviceId];
          [v2 setObject:v10 forKeyedSubscript:v11];
        }

        v12 = [SLHighlight alloc];
        v13 = [v8 highlight];
        v21 = 0;
        v14 = [(SLHighlight *)v12 initWithPortraitHighlight:v13 error:&v21];
        v15 = v21;

        if (v14)
        {
          [v10 addObject:v14];
        }

        else
        {
          v17 = SLDaemonLogHandle(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
          {
            *buf = 138412290;
            v27 = v15;
            _os_log_fault_impl(&dword_231772000, v17, OS_LOG_TYPE_FAULT, "couldn't convert portrait highlight to sl highlight: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v5);
  }

  v18 = *(*(a1 + 48) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v2;
}

- (id)getSyncableHighlightsForApplicationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __71__SLDCloudKitSyncReader_getSyncableHighlightsForApplicationIdentifier___block_invoke;
  block[3] = &unk_2789274E8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __71__SLDCloudKitSyncReader_getSyncableHighlightsForApplicationIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) getHighlightsInternalForApplicationIdentifier:*(a1 + 40)];
  v4 = v2;
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v3);
}

- (id)fetchAttribution:(id)attribution
{
  attributionCopy = attribution;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__12;
  v16 = __Block_byref_object_dispose__12;
  v17 = 0;
  queue = [(SLDCloudKitSyncBase *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__SLDCloudKitSyncReader_fetchAttribution___block_invoke;
  block[3] = &unk_2789274E8;
  v10 = attributionCopy;
  v11 = &v12;
  block[4] = self;
  v6 = attributionCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __42__SLDCloudKitSyncReader_fetchAttribution___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _fetchAttributionInternal:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)setChangeCallback:(id)callback
{
  callbackCopy = callback;
  queue = [(SLDCloudKitSyncBase *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__SLDCloudKitSyncReader_setChangeCallback___block_invoke;
  v7[3] = &unk_2789266B0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_sync(queue, v7);
}

uint64_t __43__SLDCloudKitSyncReader_setChangeCallback___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)_validateRecordIDString:(void *)a1 .cold.1(void *a1, uint64_t a2)
{
  v2 = [a1 substringWithRange:{a2, 1}];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

- (void)addApplicationIdentifierInternal:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_fetchAttributionInternal:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_11();
  v3 = v0;
  _os_log_fault_impl(&dword_231772000, v1, OS_LOG_TYPE_FAULT, "#SLDCK cannot make SLAttribution for %@: %@", v2, 0x16u);
}

- (void)getHighlightsInternalForApplicationIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_11();
  v1 = [v0 objectForKeyedSubscript:@"version"];
  OUTLINED_FUNCTION_15(v1, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK nil supplementary data in record written by version %@");
}

- (void)getHighlightsInternalForApplicationIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_11();
  v1 = [v0 objectForKeyedSubscript:@"version"];
  OUTLINED_FUNCTION_15(v1, 5.7779e-34);
  OUTLINED_FUNCTION_10(&dword_231772000, v2, v3, "#SLDCK nil identifier in record written by version %@");
}

- (void)syncEngine:(void *)a1 didSaveRecordZone:.cold.1(void *a1)
{
  v1 = [a1 zoneID];
  v2 = [v1 zoneName];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)syncEngine:failedToSaveRecordZone:error:.cold.1()
{
  OUTLINED_FUNCTION_14();
  v1 = [v0 zoneID];
  v2 = [v1 zoneName];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __60__SLDCloudKitSyncReader_syncEngine_recordToSaveForRecordID___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_0_4(&dword_231772000, v0, v1, "#SLDCK giving sync engine contents for record id %@: %@");
}

- (void)syncEngine:(void *)a1 didSaveRecord:.cold.1(void *a1)
{
  v1 = [a1 recordID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_16();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __61__SLDCloudKitSyncReader_syncEngine_failedToSaveRecord_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_14();
  v1 = [OUTLINED_FUNCTION_8(v0) recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)syncEngine:didDeleteRecordWithID:.cold.1()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_1(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_2(id *a1)
{
  v2 = [OUTLINED_FUNCTION_8(a1) recordID];
  v3 = [*a1 recordID];
  v4 = [v3 zoneID];
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_3(uint64_t a1)
{
  v1 = [OUTLINED_FUNCTION_8(a1) recordID];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_14();
  v1 = [OUTLINED_FUNCTION_8(v0) recordID];
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_11()
{
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __51__SLDCloudKitSyncReader_syncEngine_didFetchRecord___block_invoke_cold_13()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __78__SLDCloudKitSyncReader_syncEngine_failedToFetchChangesForRecordZoneID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end