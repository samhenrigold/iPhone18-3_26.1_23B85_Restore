@interface _CDCloudFamilyDataCollectionTask
- (BOOL)regexMatchForRegex:(void *)regex string:;
- (_CDCloudFamilyDataCollectionTask)initWithActivity:(id)activity;
- (id)aggregateInteractionDataUsingStore:(void *)store contact:(void *)contact callHistoryManager:(void *)manager avgCallDur:;
- (id)airDropPeopleAtHome;
- (id)allAirDropInteractionsFromStore:(uint64_t)store fetchLimit:;
- (id)allEmailAndPhoneNumberHandlesForContact:(void *)contact;
- (id)avgOfAllCallsUsingManager:(uint64_t)manager;
- (id)callFeaturesFromInteractions:(void *)interactions avgCallLength:(double)length contact:;
- (id)contactFamilyNameForContact:me:;
- (id)contactFamilyRelationForContact:contactRelations:me:;
- (id)contactKeysToFetch;
- (id)contactParentsUsingRegexNamesUsingContacts:;
- (id)contactRelationsUsingMe:;
- (id)contactsEmergency;
- (id)contactsEmergencyFamily;
- (id)contactsInContactStore;
- (id)contactsInHome;
- (id)dataPath;
- (id)fetchEmergencyContacts;
- (id)fetchInteractionFeatureDictionaryWithPredicate:(void *)predicate store:(void *)store sortDescription:;
- (id)getThirdPartyPredicateForContact:(void *)contact handles:;
- (id)initWithStorage:(void *)storage contactStore:(void *)store medicalIDStore:(void *)dStore activity:(void *)activity sessionPath:(void *)path dataDirectory:(void *)directory collectionDate:(double)date samplingRate:(void *)self0 maxBatches:(void *)self1 daysPerBatch:;
- (id)labelMembers;
- (id)personRelationshipVocabularyByLocaleDictionary;
- (id)relationshipRegularExpressionForRelationship;
- (id)thirdPartyMessageFeaturesFromFeatureDictionary:(uint64_t)dictionary;
- (id)truncatedFileHandle;
- (void)_execute;
- (void)airDropPeopleAtHome;
- (void)cleanup;
- (void)execute;
- (void)indexToInsertDate:(void *)date array:;
- (void)messagesCumulativeFeaturesFromInteractionsBatch:(void *)batch mutableMessagesDictionary:;
- (void)messagesFeaturesFromCumulativeDict:(uint64_t)dict;
- (void)setSession:(uint64_t)session;
- (void)submitDataForCollection;
@end

@implementation _CDCloudFamilyDataCollectionTask

- (_CDCloudFamilyDataCollectionTask)initWithActivity:(id)activity
{
  activityCopy = activity;
  v5 = NSTemporaryDirectory();
  v23 = [v5 stringByAppendingPathComponent:@"CoreDuet/DataCollection/CloudFamily"];

  date = [MEMORY[0x1E695DF00] date];
  v6 = 1.0;
  if (!CRIsAppleInternal())
  {
    v7 = OSAGetDATaskingValue();
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v7 doubleValue];
        v6 = v8;
      }
    }
  }

  v9 = OSAGetDATaskingValue();
  if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue = [v9 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 12;
  }

  v11 = OSAGetDATaskingValue();
  v21 = v9;
  if (v11 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    unsignedIntegerValue2 = [v11 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue2 = 30;
  }

  v13 = +[_CDInteractionStore defaultDatabaseDirectory];
  v14 = [_CDInteractionStore storeWithDirectory:v13 readOnly:1];
  v15 = objc_alloc_init(getCNContactStoreClass());
  v16 = objc_alloc(getHKMedicalIDStoreClass());
  v17 = objc_alloc_init(getHKHealthStoreClass());
  v18 = [v16 initWithHealthStore:v17];
  v19 = [(_CDCloudFamilyDataCollectionTask *)&self->super.isa initWithStorage:v14 contactStore:v15 medicalIDStore:v18 activity:activityCopy sessionPath:@"/var/mobile/Library/CoreDuet/DataCollection/CloudFamily/session.archive" dataDirectory:v23 collectionDate:date samplingRate:v6 maxBatches:unsignedIntegerValue daysPerBatch:unsignedIntegerValue2];

  return v19;
}

- (id)initWithStorage:(void *)storage contactStore:(void *)store medicalIDStore:(void *)dStore activity:(void *)activity sessionPath:(void *)path dataDirectory:(void *)directory collectionDate:(double)date samplingRate:(void *)self0 maxBatches:(void *)self1 daysPerBatch:
{
  v47 = a2;
  storageCopy = storage;
  storeCopy = store;
  dStoreCopy = dStore;
  activityCopy = activity;
  pathCopy = path;
  directoryCopy = directory;
  if (self)
  {
    v52.receiver = self;
    v52.super_class = _CDCloudFamilyDataCollectionTask;
    self = objc_msgSendSuper2(&v52, sel_init, storeCopy, storageCopy, v47);
    if (self)
    {
      objc_initWeak(&location, self);
      v24 = objc_alloc(MEMORY[0x1E69C5D58]);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __167___CDCloudFamilyDataCollectionTask_initWithStorage_contactStore_medicalIDStore_activity_sessionPath_dataDirectory_collectionDate_samplingRate_maxBatches_daysPerBatch___block_invoke;
      v49[3] = &unk_1E7369890;
      objc_copyWeak(&v50, &location);
      v25 = [v24 initWithBlock:v49];
      v26 = self[16];
      self[16] = v25;

      objc_storeStrong(self + 7, a2);
      objc_storeStrong(self + 8, storage);
      objc_storeStrong(self + 9, store);
      objc_storeStrong(self + 2, dStore);
      v27 = [activityCopy copy];
      v28 = self[5];
      self[5] = v27;

      v29 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:self[5] options:0 error:0];
      if (v29)
      {
        v48 = 0;
        v30 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:&v48];
        v31 = v48;
        if (v31)
        {
          v32 = +[_CDLogging dataCollectionChannel];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            [_CDCloudFamilyDataCollectionTask initWithStorage:v31 contactStore:v32 medicalIDStore:v33 activity:v34 sessionPath:v35 dataDirectory:v36 collectionDate:v37 samplingRate:v38 maxBatches:? daysPerBatch:?];
          }
        }
      }

      else
      {
        v30 = 0;
      }

      objc_storeStrong(self + 11, v30);
      v39 = [pathCopy copy];
      v40 = self[4];
      self[4] = v39;

      v41 = [directoryCopy copy];
      v42 = self[6];
      self[6] = v41;

      *(self + 12) = date;
      self[13] = rate;
      self[14] = batches;
      *(self + 9) = 1;
      v43 = self[3];
      self[3] = &__block_literal_global_47;

      objc_destroyWeak(&v50);
      objc_destroyWeak(&location);
    }
  }

  return self;
}

- (id)contactsEmergency
{
  v68 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v40 = *(self + 72);
    v45 = [MEMORY[0x1E695DFA8] set];
    v59 = 0;
    v60 = &v59;
    v61 = 0x3032000000;
    v62 = __Block_byref_object_copy__14;
    v63 = __Block_byref_object_dispose__14;
    v64 = 0;
    v2 = dispatch_semaphore_create(0);
    v53 = MEMORY[0x1E69E9820];
    v54 = 3221225472;
    v55 = __53___CDCloudFamilyDataCollectionTask_contactsEmergency__block_invoke;
    v56 = &unk_1E7369970;
    v58 = &v59;
    dsema = v2;
    v57 = dsema;
    [v40 fetchMedicalIDEmergencyContactsWithCompletion:&v53];
    v3 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(dsema, v3))
    {
      v4 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        [_CDCloudFamilyDataCollectionTask contactsEmergency];
      }

      v5 = [MEMORY[0x1E695DFA8] set];

      v45 = v5;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = v60[5];
    v6 = 0;
    v7 = [obj countByEnumeratingWithState:&v49 objects:v67 count:16];
    if (v7)
    {
      v46 = *v50;
      *&v8 = 138412290;
      v42 = v8;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v50 != v46)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v49 + 1) + 8 * i);
          nameContactIdentifier = [v10 nameContactIdentifier];

          if (nameContactIdentifier)
          {
            v12 = *(self + 64);
            nameContactIdentifier2 = [v10 nameContactIdentifier];
            v21 = [(_CDCloudFamilyDataCollectionTask *)self contactKeysToFetch:v14];
            v48 = v6;
            v22 = [v12 unifiedContactWithIdentifier:nameContactIdentifier2 keysToFetch:v21 error:&v48];
            v23 = v48;

            v24 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              *buf = v42;
              v66 = v23;
              _os_log_error_impl(&dword_191750000, v24, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
            }

            if (v22)
            {
              [v45 addObject:v22];
            }
          }

          else
          {
            v23 = v6;
          }

          phoneNumberContactIdentifier = [v10 phoneNumberContactIdentifier];

          if (phoneNumberContactIdentifier)
          {
            v26 = *(self + 64);
            phoneNumberContactIdentifier2 = [v10 phoneNumberContactIdentifier];
            v35 = [(_CDCloudFamilyDataCollectionTask *)self contactKeysToFetch:v28];
            v47 = v23;
            v36 = [v26 unifiedContactWithIdentifier:phoneNumberContactIdentifier2 keysToFetch:v35 error:&v47];
            v6 = v47;

            v37 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              *buf = v42;
              v66 = v6;
              _os_log_error_impl(&dword_191750000, v37, OS_LOG_TYPE_ERROR, "Error querying contacts %@", buf, 0xCu);
            }

            if (v36)
            {
              [v45 addObject:v36];
            }
          }

          else
          {
            v6 = v23;
          }
        }

        v7 = [obj countByEnumeratingWithState:&v49 objects:v67 count:16];
      }

      while (v7);
    }

    allObjects = [v45 allObjects];

    _Block_object_dispose(&v59, 8);
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)contactsInContactStore
{
  v31 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x3032000000;
    v26 = __Block_byref_object_copy__14;
    v27 = __Block_byref_object_dispose__14;
    v28 = [MEMORY[0x1E695DFA8] set];
    v2 = objc_alloc_init(getCNContactStoreClass());
    v3 = objc_alloc(getCNContactFetchRequestClass());
    v11 = [(_CDCloudFamilyDataCollectionTask *)self contactKeysToFetch:v4];
    v12 = [v3 initWithKeysToFetch:v11];

    [v12 setContactBatchCount:25];
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __58___CDCloudFamilyDataCollectionTask_contactsInContactStore__block_invoke;
    v21 = &unk_1E7369900;
    v22 = &v23;
    [v2 enumerateContactsWithFetchRequest:v12 error:0 usingBlock:&v18];
    v13 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [v24[5] count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v14;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "_PSFamilyRecommender: Fetched %tu contact ids from contact store", &buf, 0xCu);
    }

    allObjects = [v24[5] allObjects];

    _Block_object_dispose(&v23, 8);
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)airDropPeopleAtHome
{
  v91 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  if (!self)
  {
    dictionary = 0;
    goto LABEL_38;
  }

  context = objc_autoreleasePoolPush();
  defaultManager = [getRTRoutineManagerClass() defaultManager];
  v82 = 0;
  v83 = &v82;
  v84 = 0x3032000000;
  v85 = __Block_byref_object_copy__14;
  v86 = __Block_byref_object_dispose__14;
  v87 = 0;
  v79 = 0;
  v80[0] = &v79;
  v80[1] = 0x3032000000;
  v80[2] = __Block_byref_object_copy__14;
  v80[3] = __Block_byref_object_dispose__14;
  v81 = 0;
  array = [MEMORY[0x1E695DF70] array];
  v2 = dispatch_semaphore_create(0);
  v75[0] = MEMORY[0x1E69E9820];
  v75[1] = 3221225472;
  v75[2] = __55___CDCloudFamilyDataCollectionTask_airDropPeopleAtHome__block_invoke;
  v75[3] = &unk_1E73685F0;
  v77 = &v82;
  v78 = &v79;
  v3 = v2;
  v76 = v3;
  [defaultManager fetchLocationsOfInterestOfType:0 withHandler:v75];
  v4 = dispatch_time(0, 300000000000);
  v57 = v3;
  if (dispatch_semaphore_wait(v3, v4))
  {
    v5 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [_CDCloudFamilyDataCollectionTask airDropPeopleAtHome];
    }

LABEL_23:

    goto LABEL_24;
  }

  if (*(v80[0] + 40))
  {
    v5 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(_CDCloudFamilyDataCollectionTask *)v80 airDropPeopleAtHome:v5];
    }

    goto LABEL_23;
  }

  if (v83[5])
  {
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v5 = v83[5];
    v12 = [v5 countByEnumeratingWithState:&v71 objects:v90 count:16];
    if (v12)
    {
      v13 = *v72;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v72 != v13)
          {
            objc_enumerationMutation(v5);
          }

          v15 = *(*(&v71 + 1) + 8 * i);
          v67 = 0u;
          v68 = 0u;
          v69 = 0u;
          v70 = 0u;
          visits = [v15 visits];
          v17 = [visits countByEnumeratingWithState:&v67 objects:v89 count:16];
          if (v17)
          {
            v18 = *v68;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v68 != v18)
                {
                  objc_enumerationMutation(visits);
                }

                [array addObject:*(*(&v67 + 1) + 8 * j)];
              }

              v17 = [visits countByEnumeratingWithState:&v67 objects:v89 count:16];
            }

            while (v17);
          }
        }

        v12 = [v5 countByEnumeratingWithState:&v71 objects:v90 count:16];
      }

      while (v12);
    }

    goto LABEL_23;
  }

LABEL_24:
  v61 = [array valueForKey:@"entryDate"];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v20 = selfCopy[7];
  v21 = [(_CDCloudFamilyDataCollectionTask *)selfCopy allAirDropInteractionsFromStore:v20 fetchLimit:0];

  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v21;
  v22 = [obj countByEnumeratingWithState:&v63 objects:v88 count:16];
  if (v22)
  {
    v23 = *v64;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v64 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v63 + 1) + 8 * k);
        recipients = [v25 recipients];
        firstObject = [recipients firstObject];
        personId = [firstObject personId];

        if (personId)
        {
          startDate = [v25 startDate];
          v30 = [(_CDCloudFamilyDataCollectionTask *)selfCopy indexToInsertDate:startDate array:v61];

          if (v30)
          {
            v31 = [array objectAtIndexedSubscript:v30 - 1];
            exitDate = [v31 exitDate];
            startDate2 = [v25 startDate];
            [exitDate timeIntervalSinceDate:startDate2];
            v35 = v34 > 0.0;

            if (v35)
            {
              v36 = selfCopy[8];
              recipients2 = [v25 recipients];
              firstObject2 = [recipients2 firstObject];
              personId2 = [firstObject2 personId];
              v47 = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v40];
              v48 = [v36 unifiedContactWithIdentifier:personId2 keysToFetch:v47 error:0];

              if (v48)
              {
                v49 = MEMORY[0x1E696AD98];
                identifier = [v48 identifier];
                v51 = [dictionary objectForKeyedSubscript:identifier];
                v52 = [v49 numberWithInteger:{objc_msgSend(v51, "integerValue") + 1}];
                identifier2 = [v48 identifier];
                [dictionary setObject:v52 forKeyedSubscript:identifier2];
              }
            }
          }
        }
      }

      v22 = [obj countByEnumeratingWithState:&v63 objects:v88 count:16];
    }

    while (v22);
  }

  _Block_object_dispose(&v79, 8);
  _Block_object_dispose(&v82, 8);

  objc_autoreleasePoolPop(context);
LABEL_38:

  return dictionary;
}

- (void)execute
{
  [(_CDCloudFamilyDataCollectionTask *)self _execute];

  [(_CDCloudFamilyDataCollectionTask *)self cleanup];
}

- (id)labelMembers
{
  if (self)
  {
    v1 = objc_alloc_init(getFAFetchFamilyCircleRequestClass());
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__14;
    v28 = __Block_byref_object_dispose__14;
    array = [MEMORY[0x1E695DF70] array];
    v2 = dispatch_semaphore_create(0);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke;
    v21[3] = &unk_1E7369948;
    v23 = &v24;
    v3 = v2;
    v22 = v3;
    [v1 startRequestWithCompletionHandler:v21];
    v4 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [_CDCloudFamilyDataCollectionTask labelMembers];
      }

      array2 = [MEMORY[0x1E695DF70] array];
      v7 = v25[5];
      v25[5] = array2;
    }

    if (![v25[5] count])
    {
      [v1 setForceServerFetch:1];
      v8 = dispatch_semaphore_create(0);

      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __48___CDCloudFamilyDataCollectionTask_labelMembers__block_invoke_1035;
      v18 = &unk_1E7369948;
      v20 = &v24;
      v3 = v8;
      v19 = v3;
      [v1 startRequestWithCompletionHandler:&v15];
      v9 = dispatch_time(0, 300000000000);
      if (dispatch_semaphore_wait(v3, v9))
      {
        v10 = [_CDLogging dataCollectionChannel:v15];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
        {
          [_CDCloudFamilyDataCollectionTask labelMembers];
        }

        array3 = [MEMORY[0x1E695DF70] array];
        v12 = v25[5];
        v25[5] = array3;
      }
    }

    v13 = [v25[5] copy];

    _Block_object_dispose(&v24, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)regexMatchForRegex:(void *)regex string:
{
  v5 = a2;
  regexCopy = regex;
  v7 = regexCopy;
  v8 = 0;
  if (self && regexCopy)
  {
    v8 = [v5 numberOfMatchesInString:regexCopy options:0 range:{0, objc_msgSend(regexCopy, "length")}] != 0;
  }

  return v8;
}

- (id)fetchEmergencyContacts
{
  if (self)
  {
    v1 = *(self + 72);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__14;
    v18 = __Block_byref_object_dispose__14;
    v19 = 0;
    v2 = dispatch_semaphore_create(0);
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __58___CDCloudFamilyDataCollectionTask_fetchEmergencyContacts__block_invoke;
    v11 = &unk_1E7369970;
    v13 = &v14;
    v3 = v2;
    v12 = v3;
    [v1 fetchMedicalIDEmergencyContactsWithCompletion:&v8];
    v4 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v3, v4))
    {
      v5 = [_CDLogging dataCollectionChannel:v8];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        [_CDCloudFamilyDataCollectionTask contactsEmergency];
      }
    }

    v6 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)contactKeysToFetch
{
  OUTLINED_FUNCTION_70_0();
  a29 = v30;
  a30 = v31;
  a18 = *MEMORY[0x1E69E9840];
  if (v32)
  {
    v33 = getCNContactIdentifierKey();
    a9 = v33;
    v34 = getCNContactBirthdayKey();
    a10 = v34;
    v35 = getCNContactRelationsKey();
    a11 = v35;
    v36 = getCNContactGivenNameKey();
    a12 = v36;
    v37 = getCNContactMiddleNameKey();
    a13 = v37;
    v38 = getCNContactFamilyNameKey();
    a14 = v38;
    v39 = getCNContactNicknameKey();
    a15 = v39;
    v40 = getCNContactPhoneNumbersKey();
    a16 = v40;
    v41 = getCNContactEmailAddressesKey();
    a17 = v41;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&a9 count:9];
    objc_claimAutoreleasedReturnValue();
  }

  OUTLINED_FUNCTION_72_0();

  return v42;
}

- (id)contactRelationsUsingMe:
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0;
  v46[7] = *MEMORY[0x1E69E9840];
  v3 = v2;
  v33 = v3;
  v34 = v1;
  if (v1)
  {
    v4 = v3;
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = getCNLabelContactRelationManager();
    v46[0] = v6;
    v7 = getCNLabelContactRelationAssistant();
    v46[1] = v7;
    v8 = getCNLabelContactRelationColleague();
    v46[2] = v8;
    v9 = getCNLabelContactRelationTeacher();
    v46[3] = v9;
    v10 = getCNLabelContactRelationFriend();
    v46[4] = v10;
    v11 = getCNLabelContactRelationMaleFriend();
    v46[5] = v11;
    v12 = getCNLabelContactRelationFemaleFriend();
    v46[6] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:7];

    contactRelations = [v4 contactRelations];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v15 = [contactRelations countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v41;
      do
      {
        v18 = 0;
        do
        {
          if (*v41 != v17)
          {
            objc_enumerationMutation(contactRelations);
          }

          v19 = *(*(&v40 + 1) + 8 * v18);
          label = [v19 label];
          v21 = [OUTLINED_FUNCTION_66_0() containsObject:?];

          if ((v21 & 1) == 0)
          {
            value = [v19 value];
            name = [value name];

            v35 = name;
            v24 = [(_CDCloudFamilyDataCollectionTask *)v34 queryContactsForGivenName:name];
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v25 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v37;
              do
              {
                for (i = 0; i != v26; ++i)
                {
                  if (*v37 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  [v5 addObject:*(*(&v36 + 1) + 8 * i)];
                }

                v26 = [v24 countByEnumeratingWithState:&v36 objects:v44 count:16];
              }

              while (v26);
            }
          }

          ++v18;
        }

        while (v18 != v16);
        v29 = [contactRelations countByEnumeratingWithState:&v40 objects:v45 count:16];
        v16 = v29;
      }

      while (v29);
    }

    [v5 allObjects];
    objc_claimAutoreleasedReturnValue();
  }

  OUTLINED_FUNCTION_49_0();

  return v30;
}

- (id)avgOfAllCallsUsingManager:(uint64_t)manager
{
  if (manager)
  {
    v2 = [a2 callsWithPredicate:0 limit:0 offset:0 batchSize:0];
    v3 = [v2 count];
    OUTLINED_FUNCTION_43_0();
    v4 = v2;
    OUTLINED_FUNCTION_36();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      v9 = 0.0;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          OUTLINED_FUNCTION_29_1();
          if (v11 != v8)
          {
            objc_enumerationMutation(v4);
          }

          [*(v15 + 8 * i) duration];
          v9 = v9 + v12;
        }

        OUTLINED_FUNCTION_36();
        v7 = [v4 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v7);
    }

    else
    {
      v9 = 0.0;
    }

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v9 / v3];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (id)contactsEmergencyFamily
{
  v68[7] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v49 = [MEMORY[0x1E695DFA8] set];
    v2 = getCNLabelContactRelationManager();
    v68[0] = v2;
    v3 = getCNLabelContactRelationAssistant();
    v68[1] = v3;
    v4 = getCNLabelContactRelationColleague();
    v68[2] = v4;
    v5 = getCNLabelContactRelationTeacher();
    v68[3] = v5;
    nameContactIdentifier = getCNLabelContactRelationFriend();
    v68[4] = nameContactIdentifier;
    v7 = getCNLabelContactRelationMaleFriend();
    v68[5] = v7;
    v8 = getCNLabelContactRelationFemaleFriend();
    v68[6] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v68 count:7];

    fetchEmergencyContacts = [(_CDCloudFamilyDataCollectionTask *)self fetchEmergencyContacts];
    v11 = OUTLINED_FUNCTION_16_2();
    v13 = [v12 countByEnumeratingWithState:&v55 objects:&v65 count:{16, v11}];
    if (v13)
    {
      v15 = v13;
      selfCopy = self;
      v16 = 0;
      v17 = *v57;
      *&v14 = 138412290;
      v48 = v14;
      v51 = fetchEmergencyContacts;
      do
      {
        v18 = 0;
        do
        {
          OUTLINED_FUNCTION_48_0();
          if (v19 != v17)
          {
            objc_enumerationMutation(fetchEmergencyContacts);
          }

          v20 = *(v56 + 8 * v18);
          [v20 relationship];
          objc_claimAutoreleasedReturnValue();
          v21 = [OUTLINED_FUNCTION_40_0() containsObject:?];

          if ((v21 & 1) == 0)
          {
            nameContactIdentifier = [v20 nameContactIdentifier];

            if (nameContactIdentifier)
            {
              v24 = selfCopy[8];
              nameContactIdentifier2 = [v20 nameContactIdentifier];
              nameContactIdentifier = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v26];
              v54 = v16;
              v50 = [v24 unifiedContactWithIdentifier:nameContactIdentifier2 keysToFetch:nameContactIdentifier error:&v54];
              v22 = v54;

              v33 = +[_CDLogging dataCollectionChannel];
              if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = v48;
                *(&buf + 4) = v22;
                _os_log_error_impl(&dword_191750000, v33, OS_LOG_TYPE_ERROR, "Error querying contacts %@", &buf, 0xCu);
              }

              if (v50)
              {
                [v49 addObject:v50];
              }

              fetchEmergencyContacts = v51;
            }

            else
            {
              v22 = v16;
            }

            phoneNumberContactIdentifier = [v20 phoneNumberContactIdentifier];

            if (phoneNumberContactIdentifier)
            {
              v34 = selfCopy[8];
              phoneNumberContactIdentifier2 = [v20 phoneNumberContactIdentifier];
              v43 = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v36];
              v53 = v22;
              nameContactIdentifier = [v34 unifiedContactWithIdentifier:phoneNumberContactIdentifier2 keysToFetch:v43 error:&v53];
              v16 = v53;

              v44 = +[_CDLogging dataCollectionChannel];
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                LODWORD(buf) = v48;
                *(&buf + 4) = v16;
                _os_log_error_impl(&dword_191750000, v44, OS_LOG_TYPE_ERROR, "Error querying contacts %@", &buf, 0xCu);
              }

              fetchEmergencyContacts = v51;
              if (nameContactIdentifier)
              {
                [v49 addObject:nameContactIdentifier];
              }
            }

            else
            {
              v16 = v22;
            }
          }

          ++v18;
        }

        while (v15 != v18);
        v45 = [fetchEmergencyContacts countByEnumeratingWithState:&v55 objects:&v65 count:16];
        v15 = v45;
      }

      while (v45);
    }

    else
    {
      v16 = 0;
    }

    allObjects = [v49 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  return allObjects;
}

- (id)contactParentsUsingRegexNamesUsingContacts:
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0;
  v3 = v2;
  v37 = v3;
  if (v1)
  {
    v4 = v3;
    relationshipRegularExpressionForRelationship = [_CDCloudFamilyDataCollectionTask relationshipRegularExpressionForRelationship];
    v5 = [MEMORY[0x1E695DFA8] set];
    v6 = v4;
    OUTLINED_FUNCTION_55();
    obj = v7;
    v41 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (!v41)
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_54();
    v39 = v8;
    while (1)
    {
      v9 = 0;
      do
      {
        OUTLINED_FUNCTION_54();
        if (v10 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v42 = v9;
        v11 = *(8 * v9);
        OUTLINED_FUNCTION_16_2();
        v12 = relationshipRegularExpressionForRelationship;
        OUTLINED_FUNCTION_60_0();
        v14 = [v13 countByEnumeratingWithState:? objects:? count:?];
        if (v14)
        {
          v15 = v14;
          v16 = *v45;
          v43 = v12;
          do
          {
            v17 = 0;
            v44 = v15;
            do
            {
              OUTLINED_FUNCTION_48_0();
              if (v18 != v16)
              {
                objc_enumerationMutation(v12);
              }

              givenName = [v11 givenName];
              v20 = OUTLINED_FUNCTION_64_0();
              if ([(_CDCloudFamilyDataCollectionTask *)v20 regexMatchForRegex:v21 string:givenName])
              {
                goto LABEL_17;
              }

              middleName = [v11 middleName];
              v23 = OUTLINED_FUNCTION_64_0();
              if ([(_CDCloudFamilyDataCollectionTask *)v23 regexMatchForRegex:v24 string:middleName])
              {
                goto LABEL_16;
              }

              familyName = [v11 familyName];
              v26 = OUTLINED_FUNCTION_64_0();
              if ([(_CDCloudFamilyDataCollectionTask *)v26 regexMatchForRegex:v27 string:familyName])
              {

                v15 = v44;
LABEL_16:

LABEL_17:
LABEL_18:
                [v5 addObject:v11];
                goto LABEL_19;
              }

              [v11 nickname];
              v29 = v28 = v5;
              v30 = OUTLINED_FUNCTION_64_0();
              v32 = [(_CDCloudFamilyDataCollectionTask *)v30 regexMatchForRegex:v31 string:v29];

              v5 = v28;
              v12 = v43;

              v15 = v44;
              if (v32)
              {
                goto LABEL_18;
              }

LABEL_19:
              ++v17;
            }

            while (v15 != v17);
            OUTLINED_FUNCTION_60_0();
            v33 = [v12 countByEnumeratingWithState:? objects:? count:?];
            v15 = v33;
          }

          while (v33);
        }

        v9 = v42 + 1;
      }

      while (v42 + 1 != v41);
      OUTLINED_FUNCTION_55();
      v41 = [obj countByEnumeratingWithState:? objects:? count:?];
      if (!v41)
      {
LABEL_26:

        [v5 allObjects];
        objc_claimAutoreleasedReturnValue();

        break;
      }
    }
  }

  OUTLINED_FUNCTION_49_0();

  return v34;
}

- (id)contactsInHome
{
  if (self)
  {
    v1 = +[_CDHomeManagerUtilities sharedInstance];
    contactsInHome = [v1 contactsInHome];
  }

  else
  {
    contactsInHome = 0;
  }

  return contactsInHome;
}

- (void)_execute
{
  v214 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    activity = [self activity];
    if (activity)
    {
      v5 = activity;
      activity2 = [selfCopy activity];
      if (xpc_activity_should_defer(activity2))
      {
        activity3 = [selfCopy activity];
        v2 = xpc_activity_set_state(activity3, 3);

        if (v2)
        {
          *(selfCopy + 9) = 0;
          return;
        }
      }

      else
      {
      }
    }

    v7 = *(selfCopy + 48);
    labelMembers = [(_CDCloudFamilyDataCollectionTask *)selfCopy labelMembers];
    if (![labelMembers count])
    {
      goto LABEL_11;
    }

    if (!*(selfCopy + 88))
    {
      v9 = *(selfCopy + 96);
      v10 = arc4random_uniform(0xF4241u) / 1000000.0;
      *(selfCopy + 8) = v10 <= v9;
      if (v10 > v9)
      {
        goto LABEL_11;
      }

      v11 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_53_0(v11))
      {
        *buf = 0;
        OUTLINED_FUNCTION_24_3();
        _os_log_debug_impl(v13, v14, v15, v16, v17, 2u);
      }

      activity3 = +[_CDCloudFamilyDataCollectionSession generateNewSession];
      [(_CDCloudFamilyDataCollectionTask *)selfCopy setSession:activity3];
    }

    if ([(_CDCloudFamilyDataCollectionSession *)*(selfCopy + 88) isValidForCollectionDate:v7])
    {
      v18 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_53_0(v18))
      {
        v31 = MEMORY[0x1E696AD98];
        v32 = *(selfCopy + 88);
        if (v32)
        {
          v33 = v32[5];
        }

        else
        {
          v33 = 0;
        }

        contextb = v32;
        v2 = [v31 numberWithUnsignedInteger:v33];
        *buf = 138412290;
        v211 = v2;
        OUTLINED_FUNCTION_24_3();
        _os_log_debug_impl(v34, v35, v36, v37, v38, 0xCu);
      }

      v19 = *(selfCopy + 88);
      if (v19)
      {
        v19 = *(v19 + 32);
      }

      if (v19)
      {
        v20 = *(selfCopy + 112) * 86400.0;
        v21 = *(selfCopy + 88);
        v22 = v21 ? v21[4] : 0;
        v23 = v21;
        [OUTLINED_FUNCTION_67_0() timeIntervalSinceDate:v22];
        v25 = v24;

        if (v25 < v20)
        {
          v30 = +[_CDLogging dataCollectionChannel];
          if (OUTLINED_FUNCTION_53_0(v30))
          {
            *buf = 0;
            OUTLINED_FUNCTION_24_3();
            _os_log_debug_impl(v51, v52, v53, v54, v55, 2u);
          }

          *(selfCopy + 9) = 0;
          goto LABEL_11;
        }
      }

      v26 = *(selfCopy + 88);
      if (v26)
      {
        v27 = v26[5];
        v28 = *(selfCopy + 104);

        if (v27 > v28)
        {
          v29 = +[_CDLogging dataCollectionChannel];
          if (OUTLINED_FUNCTION_53_0(v29))
          {
            v41 = MEMORY[0x1E696AD98];
            v42 = *(selfCopy + 88);
            if (v42)
            {
              v43 = v42[5];
            }

            else
            {
              v43 = 0;
            }

            v44 = v42;
            v45 = [v41 numberWithUnsignedInteger:v43];
            [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(selfCopy + 104)];
            *buf = 138412546;
            v211 = v45;
            v213 = v212 = 2112;
            OUTLINED_FUNCTION_24_3();
            _os_log_debug_impl(v46, v47, v48, v49, v50, 0x16u);
          }

          goto LABEL_27;
        }
      }

      truncatedFileHandle = [(_CDCloudFamilyDataCollectionTask *)selfCopy truncatedFileHandle];
      v27 = truncatedFileHandle;
      if (!truncatedFileHandle)
      {
        v40 = +[_CDLogging dataCollectionChannel];
        if (OUTLINED_FUNCTION_73_0(v40))
        {
          *buf = 0;
          _os_log_error_impl(&dword_191750000, selfCopy, OS_LOG_TYPE_ERROR, "Failed to open file for writing cloud family data collection data", buf, 2u);
        }

        goto LABEL_37;
      }

      v149 = truncatedFileHandle;
      context = MEMORY[0x1E696AEC0];
      v56 = *(selfCopy + 88);
      if (v56)
      {
        v57 = v56[1];
      }

      else
      {
        v57 = 0;
      }

      v58 = MEMORY[0x1E696AD98];
      v59 = *(selfCopy + 88);
      if (v59)
      {
        v60 = v59[5];
      }

      else
      {
        v60 = 0;
      }

      v61 = v59;
      v62 = v57;
      v63 = v56;
      v144 = [v58 numberWithUnsignedInteger:v60];
      v64 = [context stringWithFormat:@"{collection_id:cloud_family, sessionID:%@, batch:%@, events:["];

      v147 = v64;
      v65 = [v64 dataUsingEncoding:4];
      [v149 writeData:v65];

      contactsInContactStore = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsInContactStore];
      activity5 = *(selfCopy + 64);
      [(_CDCloudFamilyDataCollectionTask *)selfCopy contactKeysToFetch:v68];
      objc_claimAutoreleasedReturnValue();
      v75 = [OUTLINED_FUNCTION_28_2() _ios_meContactWithKeysToFetch:v60 error:0];

      v187 = v75;
      v166 = [_CDCloudFamilyDataCollectionTask contactRelationsUsingMe:];
      contactsEmergencyFamily = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsEmergencyFamily];
      contactsEmergency = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsEmergency];
      contactsInHome = [(_CDCloudFamilyDataCollectionTask *)selfCopy contactsInHome];
      v158 = [_CDCloudFamilyDataCollectionTask contactParentsUsingRegexNamesUsingContacts:];
      photosPeople = [(_CDCloudFamilyDataCollectionTask *)selfCopy photosPeople];
      airDropPeople = [(_CDCloudFamilyDataCollectionTask *)selfCopy airDropPeople];
      airDropPeopleAtHome = [(_CDCloudFamilyDataCollectionTask *)selfCopy airDropPeopleAtHome];
      v154 = objc_alloc_init(getCHManagerClass());
      v152 = [(_CDCloudFamilyDataCollectionTask *)selfCopy avgOfAllCallsUsingManager:v154];
      v198 = 0u;
      v199 = 0u;
      v200 = 0u;
      v201 = 0u;
      obj = contactsInContactStore;
      v186 = [obj countByEnumeratingWithState:&v198 objects:v209 count:16];
      if (v186)
      {
        v185 = *v199;
        do
        {
          v76 = 0;
          do
          {
            if (*v199 != v185)
            {
              objc_enumerationMutation(obj);
            }

            v77 = *(*(&v198 + 1) + 8 * v76);
            contexta = objc_autoreleasePoolPush();
            activity4 = [selfCopy activity];
            if (activity4)
            {
              v79 = activity4;
              activity5 = [selfCopy activity];
              if (xpc_activity_should_defer(activity5))
              {
                activity6 = [selfCopy activity];
                v81 = xpc_activity_set_state(activity6, 3);

                if (v81)
                {
                  *(selfCopy + 9) = 1;
                  objc_autoreleasePoolPop(contexta);
                  v137 = obj;
                  goto LABEL_89;
                }
              }

              else
              {
              }
            }

            identifier = [v187 identifier];
            [v77 identifier];
            objc_claimAutoreleasedReturnValue();
            v83 = [OUTLINED_FUNCTION_8_6() isEqualToString:?];

            if ((v83 & 1) == 0)
            {
              v84 = OUTLINED_FUNCTION_32_1();
              v86 = [(_CDCloudFamilyDataCollectionTask *)v84 allEmailAndPhoneNumberHandlesForContact:v85];
              v194 = 0u;
              v195 = 0u;
              v196 = 0u;
              v197 = 0u;
              v87 = v86;
              v88 = [v87 countByEnumeratingWithState:&v194 objects:v208 count:16];
              if (v88)
              {
                v90 = v88;
                v91 = *v195;
                while (2)
                {
                  for (i = 0; i != v90; ++i)
                  {
                    if (*v195 != v91)
                    {
                      objc_enumerationMutation(v87);
                    }

                    if ([labelMembers containsObject:*(*(&v194 + 1) + 8 * i)])
                    {
                      v89 = &unk_1F05EEA90;
                      goto LABEL_69;
                    }
                  }

                  v90 = [v87 countByEnumeratingWithState:&v194 objects:v208 count:16];
                  if (v90)
                  {
                    continue;
                  }

                  break;
                }
              }

              v89 = &unk_1F05EEA78;
LABEL_69:
              v182 = v89;

              v93 = [(_CDCloudFamilyDataCollectionTask *)selfCopy aggregateInteractionDataUsingStore:v77 contact:v154 callHistoryManager:v152 avgCallDur:?];
              v94 = [v93 mutableCopy];

              OUTLINED_FUNCTION_32_1();
              v95 = [_CDCloudFamilyDataCollectionTask contactFamilyRelationForContact:contactRelations:me:];
              v180 = [v95 mutableCopy];

              v96 = OUTLINED_FUNCTION_32_1();
              v97 = [_CDCloudFamilyDataCollectionTask contactFamilyEmergencyForContact:v96 contactFamilyEmergency:?];
              v178 = [v97 mutableCopy];

              v98 = OUTLINED_FUNCTION_32_1();
              v99 = [_CDCloudFamilyDataCollectionTask contactEmergencyForContact:v98 contactEmergency:?];
              v176 = [v99 mutableCopy];

              v100 = OUTLINED_FUNCTION_32_1();
              v101 = [_CDCloudFamilyDataCollectionTask contactParentsForContact:v100 contactParents:?];
              v174 = [v101 mutableCopy];

              v102 = OUTLINED_FUNCTION_32_1();
              v103 = [_CDCloudFamilyDataCollectionTask contactsInHomeForContact:v102 homeContacts:?];
              v104 = [v103 mutableCopy];

              [v94 addEntriesFromDictionary:v180];
              [v94 addEntriesFromDictionary:v178];
              [v94 addEntriesFromDictionary:v176];
              [v94 addEntriesFromDictionary:v174];
              v170 = v104;
              [v94 addEntriesFromDictionary:v104];
              OUTLINED_FUNCTION_32_1();
              [_CDCloudFamilyDataCollectionTask contactFamilyNameForContact:me:];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_8_6() addEntriesFromDictionary:?];

              v206 = @"labelFinal";
              v207 = v182;
              v105 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v207 forKeys:&v206 count:1];
              v183 = v94;
              [v94 addEntriesFromDictionary:v105];

              if ([photosPeople count])
              {
                identifier2 = [v77 identifier];
                v107 = [photosPeople containsObject:identifier2];

                if (v107)
                {
                  v204 = @"contactInPhotos";
                  v205 = &unk_1F05EEA90;
                  v108 = MEMORY[0x1E695DF20];
                  v109 = &v205;
                  v110 = &v204;
                }

                else
                {
                  v202 = @"contactInPhotos";
                  v203 = &unk_1F05EEA78;
                  v108 = MEMORY[0x1E695DF20];
                  v109 = &v203;
                  v110 = &v202;
                }

                v111 = [v108 dictionaryWithObjects:v109 forKeys:v110 count:1];
                [v94 addEntriesFromDictionary:v111];
              }

              allKeys = [airDropPeople allKeys];
              identifier3 = [v77 identifier];
              v114 = [allKeys containsObject:identifier3];

              if (v114)
              {
                identifier4 = [v77 identifier];
                v116 = [airDropPeople objectForKeyedSubscript:identifier4];
                [v183 setObject:v116 forKeyedSubscript:@"contactInAirDrop"];
              }

              else
              {
                [v183 setObject:&unk_1F05EEA78 forKeyedSubscript:@"contactInAirDrop"];
              }

              allKeys2 = [airDropPeopleAtHome allKeys];
              identifier5 = [v77 identifier];
              v119 = [allKeys2 containsObject:identifier5];

              if (v119)
              {
                identifier6 = [v77 identifier];
                v121 = [airDropPeople objectForKeyedSubscript:identifier6];
                v122 = v183;
                [v183 setObject:v121 forKeyedSubscript:@"contactInAirDropAtHome"];
              }

              else
              {
                v122 = v183;
                [v183 setObject:&unk_1F05EEA78 forKeyedSubscript:@"contactInAirDropAtHome"];
              }

              activity5 = MEMORY[0x1E696ACB0];
              v123 = [v122 copy];
              v193 = 0;
              v124 = [activity5 dataWithJSONObject:v123 options:0 error:&v193];
              v125 = v193;

              if (v125)
              {
                activity5 = +[_CDLogging dataCollectionChannel];
                if (os_log_type_enabled(activity5, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v211 = v125;
                  _os_log_error_impl(&dword_191750000, activity5, OS_LOG_TYPE_ERROR, "Error during JSON serialization %@", buf, 0xCu);
                }
              }

              else
              {
                [v150 writeData:v124];
                [@" "];
                objc_claimAutoreleasedReturnValue();
                [OUTLINED_FUNCTION_8_6() writeData:?];
              }
            }

            objc_autoreleasePoolPop(contexta);
            ++v76;
          }

          while (v76 != v186);
          v126 = [obj countByEnumeratingWithState:&v198 objects:v209 count:16];
          v186 = v126;
        }

        while (v126);
      }

      v127 = [@" "];
      v128 = [v127 length];

      [v150 truncateFileAtOffset:{objc_msgSend(v150, "offsetInFile") - v128}];
      v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"]}"];
      [v129 dataUsingEncoding:4];
      objc_claimAutoreleasedReturnValue();
      [OUTLINED_FUNCTION_17_5() writeData:?];

      [v150 closeFile];
      [_CDCloudFamilyDataCollectionTask submitDataForCollection];
      if (!v130)
      {
LABEL_90:

        selfCopy = v148;
        v27 = v150;
LABEL_37:

LABEL_27:
        goto LABEL_11;
      }

      v131 = MEMORY[0x1E695DF00];
      v132 = *(selfCopy + 88);
      [v131 distantPast];
      objc_claimAutoreleasedReturnValue();
      v133 = OUTLINED_FUNCTION_28_2();
      v137 = [(_CDCloudFamilyDataCollectionSession *)v133 subsequentSessionWithlatestStartDate:v150 lastCollectionDate:v7];

      v192 = 0;
      v134 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v137 requiringSecureCoding:1 error:&v192];
      v135 = v192;
      if (v135)
      {
        v136 = v135;
      }

      else
      {
        stringByDeletingLastPathComponent = [*(selfCopy + 40) stringByDeletingLastPathComponent];
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:0];

        v140 = *(selfCopy + 40);
        v191 = 0;
        v141 = v140;
        [v134 writeToFile:v141 options:0 error:&v191];
        v136 = v191;

        if (!v136)
        {
          *(selfCopy + 9) = 0;
          goto LABEL_95;
        }
      }

      v142 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_73_0(v142))
      {
        *buf = 138412290;
        v211 = v136;
        OUTLINED_FUNCTION_10(&dword_191750000, selfCopy, v143, "Error archiving subsequent airplay data collection session: %@", buf);
      }

LABEL_95:
LABEL_89:

      goto LABEL_90;
    }

LABEL_11:
  }
}

- (void)cleanup
{
  v13 = *MEMORY[0x1E69E9840];
  if (self && *(self + 9) == 1)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v3 = *(self + 40);
    [OUTLINED_FUNCTION_37_0() removeItemAtPath:? error:?];
    v4 = 0;

    if (!v4)
    {
LABEL_13:

      return;
    }

    userInfo = [v4 userInfo];
    v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

    if (v6)
    {
      domain = [v6 domain];
      if (([domain isEqualToString:*MEMORY[0x1E696A798]]& 1) != 0)
      {
        code = [v6 code];

        if (code == 2)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

      v9 = +[_CDLogging dataCollectionChannel];
      if (OUTLINED_FUNCTION_73_0(v9))
      {
        v11 = 138412290;
        v12 = v4;
        OUTLINED_FUNCTION_10(&dword_191750000, domain, v10, "Error remove previous session file: %@", &v11);
      }
    }

LABEL_12:

    goto LABEL_13;
  }
}

- (void)setSession:(uint64_t)session
{
  if (session)
  {
    objc_storeStrong((session + 88), a2);
  }
}

- (id)truncatedFileHandle
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    dataPath = [(_CDCloudFamilyDataCollectionTask *)self dataPath];
    stringByDeletingLastPathComponent = [dataPath stringByDeletingLastPathComponent];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v11];
    v4 = v11;

    if (v4)
    {
      v5 = +[_CDLogging dataCollectionChannel];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v12 = 138412290;
        v13 = v4;
        OUTLINED_FUNCTION_10(&dword_191750000, v5, v6, "Error creating directory for data collection: %@", &v12);
      }

      v7 = 0;
    }

    else
    {
      defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
      data = [MEMORY[0x1E695DEF0] data];
      [OUTLINED_FUNCTION_66_0() createFileAtPath:? contents:? attributes:?];

      v7 = [MEMORY[0x1E696AC00] fileHandleForWritingAtPath:dataPath];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)allEmailAndPhoneNumberHandlesForContact:(void *)contact
{
  v3 = a2;
  v4 = v3;
  if (contact)
  {
    phoneNumbers = [v3 phoneNumbers];
    v6 = [phoneNumbers valueForKey:@"value"];

    contact = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_43_0();
    v7 = v6;
    OUTLINED_FUNCTION_36();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          OUTLINED_FUNCTION_29_1();
          if (v13 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v14 = *(v24 + 8 * i);
          unformattedInternationalStringValue = [v14 unformattedInternationalStringValue];

          if (unformattedInternationalStringValue)
          {
            unformattedInternationalStringValue2 = [v14 unformattedInternationalStringValue];
            [contact addObject:unformattedInternationalStringValue2];
          }
        }

        OUTLINED_FUNCTION_36();
        v10 = OUTLINED_FUNCTION_47_0(v17, v18, v19, v20);
      }

      while (v10);
    }

    emailAddresses = [v4 emailAddresses];
    v22 = [emailAddresses valueForKey:@"value"];

    [contact addObjectsFromArray:v22];
  }

  return contact;
}

- (id)aggregateInteractionDataUsingStore:(void *)store contact:(void *)contact callHistoryManager:(void *)manager avgCallDur:
{
  v42[1] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v9 = MEMORY[0x1E695DF90];
    managerCopy = manager;
    contactCopy = contact;
    storeCopy = store;
    v10 = a2;
    v30 = objc_alloc_init(v9);
    v11 = [(_CDCloudFamilyDataCollectionTask *)self allEmailAndPhoneNumberHandlesForContact:storeCopy];
    v37 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v12 = MEMORY[0x1E696AE18];
    v42[0] = @"com.apple.MobileSMS";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:1];
    v34 = [v12 predicateWithFormat:@"bundleId IN %@", v13];

    v14 = MEMORY[0x1E696AE18];
    v41 = @"com.apple.UIKit.activity.Message";
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v41 count:1];
    v33 = [v14 predicateWithFormat:@"targetBundleId IN %@", v15];

    v40[0] = v34;
    v40[1] = v33;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
    v32 = [OUTLINED_FUNCTION_63_0() orPredicateWithSubpredicates:?];

    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY recipients.identifier IN %@", v11];
    v39[0] = v32;
    v39[1] = v31;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v29 = [OUTLINED_FUNCTION_63_0() andPredicateWithSubpredicates:?];

    v18 = [(_CDCloudFamilyDataCollectionTask *)self fetchInteractionFeatureDictionaryWithPredicate:v29 store:v10 sortDescription:v37];
    v19 = v30;
    [v30 addEntriesFromDictionary:v18];
    v20 = [(_CDCloudFamilyDataCollectionTask *)self getThirdPartyPredicateForContact:storeCopy handles:v11];
    v21 = [(_CDCloudFamilyDataCollectionTask *)self fetchInteractionFeatureDictionaryWithPredicate:v20 store:v10 sortDescription:v37];

    v22 = [(_CDCloudFamilyDataCollectionTask *)self thirdPartyMessageFeaturesFromFeatureDictionary:v21];
    [v30 addEntriesFromDictionary:v22];
    v23 = [getCHRecentCallClass() predicateForCallsWithAnyRemoteParticipantHandleNormalizedValues:v11];
    v24 = [contactCopy callsWithPredicate:v23 limit:0 offset:0 batchSize:0];

    [managerCopy doubleValue];
    v26 = v25;

    v27 = [(_CDCloudFamilyDataCollectionTask *)self callFeaturesFromInteractions:v24 avgCallLength:storeCopy contact:v26];

    [OUTLINED_FUNCTION_66_0() addEntriesFromDictionary:?];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)contactFamilyRelationForContact:contactRelations:me:
{
  OUTLINED_FUNCTION_50_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v54[17] = *MEMORY[0x1E69E9840];
  v7 = v6;
  v8 = v3;
  v9 = v1;
  if (v5)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v41 = v8;
    v10 = v8;
    OUTLINED_FUNCTION_61_0();
    v12 = [v11 countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = *v45;
      while (2)
      {
        v15 = 0;
        do
        {
          if (*v45 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v44 + 1) + 8 * v15);
          identifier = [v7 identifier];
          identifier2 = [v16 identifier];
          v19 = [identifier isEqualToString:identifier2];

          if (v19)
          {
            v53 = @"contactFamilyRelation";
            v54[0] = &unk_1F05EEA90;
            v35 = MEMORY[0x1E695DF20];
            v36 = v54;
            v37 = &v53;
            goto LABEL_20;
          }

          ++v15;
        }

        while (v13 != v15);
        OUTLINED_FUNCTION_61_0();
        v13 = OUTLINED_FUNCTION_74(v20, v21, v22, v23);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    [_CDCloudFamilyDataCollectionTask contactRelationsUsingMe:];
    objc_claimAutoreleasedReturnValue();
    OUTLINED_FUNCTION_26_3();
    v10 = v24;
    v25 = [v10 countByEnumeratingWithState:v42 objects:v52 count:16];
    if (v25)
    {
      v26 = v25;
      while (2)
      {
        v27 = 0;
        do
        {
          OUTLINED_FUNCTION_44_0();
          if (!v28)
          {
            objc_enumerationMutation(v10);
          }

          v29 = *(v43 + 8 * v27);
          identifier3 = [v9 identifier];
          identifier4 = [v29 identifier];
          v32 = [identifier3 isEqualToString:identifier4];

          if (v32)
          {
            v50 = @"contactFamilyRelation";
            v51 = &unk_1F05EEA90;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
            objc_claimAutoreleasedReturnValue();

            goto LABEL_21;
          }

          ++v27;
        }

        while (v26 != v27);
        v26 = OUTLINED_FUNCTION_74(v33, v34, v42, v52);
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v48 = @"contactFamilyRelation";
    v49 = &unk_1F05EEA78;
    v35 = MEMORY[0x1E695DF20];
    v36 = &v49;
    v37 = &v48;
LABEL_20:
    [v35 dictionaryWithObjects:v36 forKeys:v37 count:1];
    objc_claimAutoreleasedReturnValue();
LABEL_21:

    v8 = v41;
  }

  OUTLINED_FUNCTION_49_0();

  return v38;
}

- (id)contactFamilyNameForContact:me:
{
  OUTLINED_FUNCTION_52_0();
  v23[1] = *MEMORY[0x1E69E9840];
  v4 = v3;
  v5 = v0;
  v6 = v5;
  if (v1)
  {
    familyName = [v5 familyName];
    [v6 familyName];
    if (objc_claimAutoreleasedReturnValue())
    {
      familyName2 = [OUTLINED_FUNCTION_9_5() familyName];
      if (familyName2)
      {
        v9 = familyName2;
        familyName3 = [v6 familyName];
        familyName4 = [v4 familyName];
        v12 = [familyName length];
        currentLocale = [MEMORY[0x1E695DF58] currentLocale];
        v14 = [familyName3 compare:familyName4 options:129 range:0 locale:{v12, currentLocale}];

        if (!v14)
        {
          v22 = @"contactFamilyName";
          v23[0] = &unk_1F05EEA90;
          v15 = MEMORY[0x1E695DF20];
          v16 = v23;
          v17 = &v22;
LABEL_8:
          v18 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:1];

          goto LABEL_9;
        }
      }

      else
      {
      }
    }

    v20 = @"contactFamilyName";
    v21 = &unk_1F05EEA78;
    v15 = MEMORY[0x1E695DF20];
    v16 = &v21;
    v17 = &v20;
    goto LABEL_8;
  }

  v18 = 0;
LABEL_9:

  return v18;
}

- (void)submitDataForCollection
{
  OUTLINED_FUNCTION_50_0();
  v23 = *MEMORY[0x1E69E9840];
  if (v1)
  {
    v2 = v1;
    v3 = +[_CDLogging dataCollectionChannel];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_191750000, v3, OS_LOG_TYPE_DEBUG, "Compressing airplay data collection json file", buf, 2u);
    }

    dataPath = [(_CDCloudFamilyDataCollectionTask *)&v2->isa dataPath];
    v5 = [dataPath stringByAppendingPathExtension:@"tar.gz"];
    [dataPath fileSystemRepresentation];
    lastPathComponent = [OUTLINED_FUNCTION_67_0() lastPathComponent];
    [lastPathComponent fileSystemRepresentation];

    [v5 fileSystemRepresentation];
    archive_write_new();
    if (!archive_write_add_filter_gzip() && !archive_write_set_format_pax_restricted())
    {
      OUTLINED_FUNCTION_65_0();
      if (!archive_write_open_filename())
      {
        bzero(&v18, 0x90uLL);
        stat(v0, &v18);
        archive_entry_new();
        archive_entry_set_size();
        archive_entry_set_filetype();
        archive_entry_set_perm();
        archive_entry_set_pathname();
        OUTLINED_FUNCTION_65_0();
        if (!archive_write_header())
        {
          v11 = open(v0, 0);
          while (read(v11, buf, 0x2000uLL))
          {
            archive_write_data();
          }

          close(v11);
          archive_entry_free();
          archive_write_close();
          archive_write_free();
          v17 = 0;
          v12 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:v5 options:8 error:&v17];
          v13 = v17;
          if (v13)
          {
            lastPathComponent2 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(lastPathComponent2, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v20 = v13;
              OUTLINED_FUNCTION_10(&dword_191750000, lastPathComponent2, v15, "Error mapping gzipped data collection file for DA submission: %@", buf);
            }
          }

          else
          {
            lastPathComponent2 = [v5 lastPathComponent];
            submissionBlock = [v2 submissionBlock];
            (submissionBlock)[2](submissionBlock, lastPathComponent2, v12);
          }

          goto LABEL_12;
        }

        archive_entry_free();
      }
    }

    v7 = archive_errno();
    v8 = archive_error_string();
    v9 = +[_CDLogging dataCollectionChannel];
    if (OUTLINED_FUNCTION_73_0(v9))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithInt:v7];
      *buf = 138412546;
      v20 = v10;
      v21 = 2080;
      v22 = v8;
      _os_log_error_impl(&dword_191750000, v2, OS_LOG_TYPE_ERROR, "Error compressing data collection file. code:%@ %s", buf, 0x16u);
    }

    archive_write_close();
    archive_write_free();
LABEL_12:
  }

  OUTLINED_FUNCTION_49_0();
}

- (id)dataPath
{
  selfCopy = self;
  if (self)
  {
    if (self[11])
    {
      v2 = self[11];
      if (v2)
      {
        v3 = v2[1];
      }

      else
      {
        v3 = 0;
      }

      v4 = self[11];
      v5 = v3;
      v6 = v2;
      v7 = [OUTLINED_FUNCTION_37_0() numberWithUnsignedInteger:?];
      v8 = [v5 stringByAppendingFormat:@".%@.json", v7];

      selfCopy = [selfCopy[4] stringByAppendingPathComponent:v8];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)indexToInsertDate:(void *)date array:
{
  if (result)
  {
    dateCopy = date;
    v5 = a2;
    [dateCopy count];
    v6 = [OUTLINED_FUNCTION_51_0() indexOfObject:? inSortedRange:? options:? usingComparator:?];

    return v6;
  }

  return result;
}

- (id)allAirDropInteractionsFromStore:(uint64_t)store fetchLimit:
{
  v21[2] = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = MEMORY[0x1E696AE18];
    v5 = a2;
    v6 = [v4 predicateWithFormat:@"(targetBundleId == %@)", @"com.apple.UIKit.activity.AirDrop"];
    v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(mechanism == %@)", &unk_1F05EEAA8];
    v21[0] = v7;
    v21[1] = v6;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:2];
    v9 = [OUTLINED_FUNCTION_62_0() andPredicateWithSubpredicates:?];

    v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:0];
    v20 = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
    v17 = 0;
    v12 = [v5 queryInteractionsUsingPredicate:v9 sortDescriptors:v11 limit:store error:&v17];

    v13 = v17;
    if (v13)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v18 = 138412290;
        v19 = v13;
        OUTLINED_FUNCTION_10(&dword_191750000, MEMORY[0x1E69E9C10], v14, "Error querying interactions database: %@", &v18);
      }

      v15 = 0;
    }

    else
    {
      v15 = v12;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)relationshipRegularExpressionForRelationship
{
  OUTLINED_FUNCTION_50_0();
  v32 = *MEMORY[0x1E69E9840];
  if (v0)
  {
    personRelationshipVocabularyByLocaleDictionary = [(_CDCloudFamilyDataCollectionTask *)v0 personRelationshipVocabularyByLocaleDictionary];
    allValues = [personRelationshipVocabularyByLocaleDictionary allValues];
    array = [MEMORY[0x1E695DF70] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v2 = allValues;
    OUTLINED_FUNCTION_55();
    obj = v3;
    v24 = [v3 countByEnumeratingWithState:? objects:? count:?];
    if (v24)
    {
      OUTLINED_FUNCTION_54();
      v23 = v4;
      do
      {
        v5 = 0;
        do
        {
          OUTLINED_FUNCTION_54();
          if (v6 != v23)
          {
            objc_enumerationMutation(obj);
          }

          v25 = v5;
          allValues2 = [*(*(&v28 + 1) + 8 * v5) allValues];
          OUTLINED_FUNCTION_16_2();
          OUTLINED_FUNCTION_60_0();
          v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
          if (v9)
          {
            v10 = v9;
            v11 = *v27[3];
            do
            {
              for (i = 0; i != v10; ++i)
              {
                OUTLINED_FUNCTION_48_0();
                if (v13 != v11)
                {
                  objc_enumerationMutation(allValues2);
                }

                v14 = MEMORY[0x1E696AEC0];
                v15 = [*(v27[2] + 8 * i) componentsJoinedByString:@"|"];
                v16 = [v14 stringWithFormat:@"^(%@)$", v15];

                v27[0] = 0;
                v17 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:v16 options:1 error:v27];
                if (v17)
                {
                  [array addObject:v17];
                }
              }

              OUTLINED_FUNCTION_60_0();
              v10 = [allValues2 countByEnumeratingWithState:? objects:? count:?];
            }

            while (v10);
          }

          v5 = v25 + 1;
        }

        while (v25 + 1 != v24);
        OUTLINED_FUNCTION_55();
        v24 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v24);
    }
  }

  OUTLINED_FUNCTION_49_0();

  return v18;
}

- (id)personRelationshipVocabularyByLocaleDictionary
{
  if (self)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82___CDCloudFamilyDataCollectionTask_personRelationshipVocabularyByLocaleDictionary__block_invoke;
    block[3] = &unk_1E7367440;
    block[4] = self;
    if (_MergedGlobals_1 != -1)
    {
      dispatch_once(&_MergedGlobals_1, block);
    }

    self = qword_1EADBD5E0;
    v1 = block[6];
  }

  return self;
}

- (id)callFeaturesFromInteractions:(void *)interactions avgCallLength:(double)length contact:
{
  v247 = *MEMORY[0x1E69E9840];
  v7 = a2;
  interactionsCopy = interactions;
  if (self)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v236 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v236 setDateFormat:@"dd/MM/yyyy"];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    birthday = [interactionsCopy birthday];
    v237 = [MEMORY[0x1E695DFA8] set];
    lastObject = [v7 lastObject];
    date = [lastObject date];

    if (date && ([MEMORY[0x1E695DF00] date], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(currentCalendar, "components:fromDate:toDate:options:", 16, date, v13, 0), v14 = objc_claimAutoreleasedReturnValue(), v13, v14))
    {
      v15 = [v14 day];
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
      [OUTLINED_FUNCTION_51_0() setObject:? forKeyedSubscript:?];

      if (v15 && [v7 count])
      {
        v228 = v15;
        v229 = v14;
        v230 = date;
        v17 = +[_CDContactFavoritesUtilities sharedInstance];
        v244[0] = MEMORY[0x1E69E9820];
        v244[1] = 3221225472;
        v244[2] = __87___CDCloudFamilyDataCollectionTask_callFeaturesFromInteractions_avgCallLength_contact___block_invoke;
        v244[3] = &unk_1E7369998;
        v231 = v9;
        v18 = v9;
        v245 = v18;
        v232 = interactionsCopy;
        [v17 accessEntriesForContact:interactionsCopy withBlock:v244];

        [v18 setObject:&unk_1F05EF180 forKeyedSubscript:@"callMaxDur"];
        v242 = 0u;
        v243 = 0u;
        v240 = 0u;
        v241 = 0u;
        v233 = v7;
        obj = v7;
        v19 = 0x1E696A000uLL;
        v238 = [obj countByEnumeratingWithState:&v240 objects:v246 count:16];
        if (!v238)
        {
          goto LABEL_74;
        }

        v235 = *v241;
        v20 = length + length;
        while (1)
        {
          v21 = 0;
          do
          {
            if (*v241 != v235)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v240 + 1) + 8 * v21);
            v23 = *(v19 + 3480);
            v24 = [v18 objectForKeyedSubscript:@"callTotalDur"];
            [v24 doubleValue];
            v26 = v25;
            [v22 duration];
            [v23 numberWithDouble:v26 + v27];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            [v22 duration];
            v29 = v28;
            v30 = [v18 objectForKeyedSubscript:@"callMaxDur"];
            [v30 doubleValue];
            v32 = v31;

            if (v29 > v32)
            {
              v33 = *(v19 + 3480);
              [v22 duration];
              [v33 numberWithDouble:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];
            }

            callStatus = [v22 callStatus];
            if (callStatus == getkCHCallStatusConnectedOutgoing())
            {
              v35 = *(v19 + 3480);
              v36 = [v18 objectForKeyedSubscript:@"callOutgoingRatio"];
              [v35 numberWithInteger:{objc_msgSend(v36, "integerValue") + 1}];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];
            }

            [v22 duration];
            v38 = v37;
            if (v37 >= v20)
            {
              v39 = *(v19 + 3480);
              v40 = [v18 objectForKeyedSubscript:@"callLongRatio"];
              [v39 numberWithInteger:{objc_msgSend(v40, "integerValue") + 1}];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];
            }

            date2 = [v22 date];
            v42 = [v236 stringFromDate:date2];

            [v237 addObject:v42];
            date3 = [v22 date];
            v19 = currentCalendar;
            v44 = [currentCalendar components:568 fromDate:date3];

            [v44 weekday];
            [OUTLINED_FUNCTION_58_0() hour];
            v45 = [OUTLINED_FUNCTION_9_5() day];
            month = [v44 month];
            if ([birthday day] == v45 && objc_msgSend(birthday, "month") == month)
            {
              [v18 setObject:&unk_1F05EEA90 forKeyedSubscript:@"callBirthday"];
            }

            v47 = date3 - 6;
            if ((currentCalendar - 2) > 3)
            {
              if (currentCalendar != 7)
              {
                if (currentCalendar == 6)
                {
                  if (v47 > 5)
                  {
                    OUTLINED_FUNCTION_56_0();
                    v19 = 0x1E696A000;
                    if (!v56 & v55)
                    {
                      v91 = OUTLINED_FUNCTION_10_6();
                      if (v92 > 5)
                      {
                        v103 = [v91 objectForKeyedSubscript:@"callNightFri"];
                        [v103 integerValue];
                        [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v104 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightFri"];
                        [v104 doubleValue];
                        OUTLINED_FUNCTION_33_0();
                        [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v52 = @"callLongNightFri";
                        if (v38 < v20)
                        {
                          goto LABEL_35;
                        }
                      }

                      else
                      {
                        v93 = [v91 objectForKeyedSubscript:@"callEveFri"];
                        [v93 integerValue];
                        [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v94 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveFri"];
                        [v94 doubleValue];
                        OUTLINED_FUNCTION_33_0();
                        [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                        objc_claimAutoreleasedReturnValue();
                        [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                        v52 = @"callLongEveFri";
                        if (v38 < v20)
                        {
                          goto LABEL_35;
                        }
                      }
                    }

                    else
                    {
                      v83 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callNoonFri"];
                      [v83 integerValue];
                      [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v84 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonFri"];
                      [v84 doubleValue];
                      OUTLINED_FUNCTION_33_0();
                      [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v52 = @"callLongNoonFri";
                      if (v38 < v20)
                      {
                        goto LABEL_35;
                      }
                    }
                  }

                  else
                  {
                    v53 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callMorningFri"];
                    [v53 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v54 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurMorningFri"];
                    [v54 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongMorningFri";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else if (v47 > 5)
                {
                  OUTLINED_FUNCTION_56_0();
                  v19 = 0x1E696A000;
                  if (!v56 & v55)
                  {
                    v99 = OUTLINED_FUNCTION_10_6();
                    if (v100 > 5)
                    {
                      v107 = [v99 objectForKeyedSubscript:@"callNightSun"];
                      [v107 integerValue];
                      [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v108 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightSun"];
                      [v108 doubleValue];
                      OUTLINED_FUNCTION_33_0();
                      [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v52 = @"callLongNightSun";
                      if (v38 < v20)
                      {
                        goto LABEL_35;
                      }
                    }

                    else
                    {
                      v101 = [v99 objectForKeyedSubscript:@"callEveSun"];
                      [v101 integerValue];
                      [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v102 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveSun"];
                      [v102 doubleValue];
                      OUTLINED_FUNCTION_33_0();
                      [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                      objc_claimAutoreleasedReturnValue();
                      [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                      v52 = @"callLongEveSun";
                      if (v38 < v20)
                      {
                        goto LABEL_35;
                      }
                    }
                  }

                  else
                  {
                    v87 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callNoonSun"];
                    [v87 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v88 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonSun"];
                    [v88 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongNoonSun";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else
                {
                  v77 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callMorningSun"];
                  [v77 integerValue];
                  [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v78 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurMorningSun"];
                  [v78 doubleValue];
                  OUTLINED_FUNCTION_33_0();
                  [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v52 = @"callLongMorningSun";
                  if (v38 < v20)
                  {
                    goto LABEL_35;
                  }
                }

                goto LABEL_34;
              }

              if (v47 > 5)
              {
                OUTLINED_FUNCTION_56_0();
                if (!v56 & v55)
                {
                  v95 = OUTLINED_FUNCTION_7_5();
                  if (v96 > 5)
                  {
                    v105 = [v95 objectForKeyedSubscript:@"callNightSat"];
                    [v105 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v106 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightSat"];
                    [v106 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongNightSat";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v97 = [v95 objectForKeyedSubscript:@"callEveSat"];
                    [v97 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v98 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveSat"];
                    [v98 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongEveSat";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else
                {
                  v85 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callNoonSat"];
                  [v85 integerValue];
                  [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v86 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonSat"];
                  [v86 doubleValue];
                  OUTLINED_FUNCTION_33_0();
                  [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v52 = @"callLongNoonSat";
                  if (v38 < v20)
                  {
                    goto LABEL_35;
                  }
                }

LABEL_34:
                v61 = *(v19 + 3480);
                v62 = [v18 objectForKeyedSubscript:v52];
                v63 = [v61 numberWithInteger:{objc_msgSend(v62, "integerValue") + 1}];
                [v18 setObject:v63 forKeyedSubscript:v52];

                goto LABEL_35;
              }

              v48 = 0x1E696A000uLL;
              v59 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callMorningSat"];
              [v59 integerValue];
              [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v60 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callDurMorningSat"];
              [v60 doubleValue];
              OUTLINED_FUNCTION_33_0();
              [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v51 = v38 < v20;
              v52 = @"callLongMorningSat";
            }

            else
            {
              if (v47 > 5)
              {
                OUTLINED_FUNCTION_56_0();
                if (!v56 & v55)
                {
                  v79 = OUTLINED_FUNCTION_7_5();
                  if (v80 > 5)
                  {
                    v89 = [v79 objectForKeyedSubscript:@"callNightWeekday"];
                    [v89 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v90 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNightWeekday"];
                    [v90 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongNightWeekday";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }

                  else
                  {
                    v81 = [v79 objectForKeyedSubscript:@"callEveWeekday"];
                    [v81 integerValue];
                    [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v82 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurEveWeekday"];
                    [v82 doubleValue];
                    OUTLINED_FUNCTION_33_0();
                    [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                    objc_claimAutoreleasedReturnValue();
                    [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                    v52 = @"callLongEveWeekday";
                    if (v38 < v20)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                else
                {
                  v57 = [OUTLINED_FUNCTION_7_5() objectForKeyedSubscript:@"callNoonWeekday"];
                  [v57 integerValue];
                  [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v58 = [OUTLINED_FUNCTION_10_6() objectForKeyedSubscript:@"callDurNoonWeekday"];
                  [v58 doubleValue];
                  OUTLINED_FUNCTION_33_0();
                  [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

                  v52 = @"callLongNoonWeekday";
                  if (v38 < v20)
                  {
                    goto LABEL_35;
                  }
                }

                goto LABEL_34;
              }

              v48 = 0x1E696A000;
              v49 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callMorningWeekday"];
              [v49 integerValue];
              [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v50 = [OUTLINED_FUNCTION_57_0() objectForKeyedSubscript:@"callDurMorningWeekday"];
              [v50 doubleValue];
              OUTLINED_FUNCTION_33_0();
              [OUTLINED_FUNCTION_14_4() numberWithDouble:?];
              objc_claimAutoreleasedReturnValue();
              [OUTLINED_FUNCTION_3_14() setObject:? forKeyedSubscript:?];

              v51 = v38 < v20;
              v52 = @"callLongMorningWeekday";
            }

            v19 = v48;
            if (!v51)
            {
              goto LABEL_34;
            }

LABEL_35:
            date4 = [v22 date];
            [date4 timeIntervalSinceNow];
            v66 = v65;

            v67 = @"callTwoWeeks";
            if (v66 >= -1209600.0 || ([v22 date], v68 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v68, "timeIntervalSinceNow"), v70 = v69, v68, v67 = @"callSixWeeks", v70 >= -3628800.0) || (objc_msgSend(v22, "date"), v71 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v71, "timeIntervalSinceNow"), v73 = v72, v71, v67 = @"callTwelveWeeks", v73 >= -7257600.0))
            {
              v74 = *(v19 + 3480);
              v75 = [v18 objectForKeyedSubscript:v67];
              v76 = [v74 numberWithInteger:{objc_msgSend(v75, "integerValue") + 1}];
              [v18 setObject:v76 forKeyedSubscript:v67];
            }

            ++v21;
          }

          while (v238 != v21);
          v109 = [obj countByEnumeratingWithState:&v240 objects:v246 count:16];
          v238 = v109;
          if (!v109)
          {
LABEL_74:

            v110 = [v18 objectForKeyedSubscript:@"callTotal"];
            integerValue = [v110 integerValue];

            v112 = [*(v19 + 3480) numberWithDouble:{objc_msgSend(v237, "count") / v228}];
            [v18 setObject:v112 forKeyedSubscript:@"callDayRatio"];

            v113 = *(v19 + 3480);
            v114 = v19;
            v115 = [v18 objectForKeyedSubscript:@"callOutgoingRatio"];
            v116 = integerValue;
            [v113 numberWithDouble:{objc_msgSend(v115, "integerValue") / integerValue}];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v117 = *(v19 + 3480);
            v118 = [v18 objectForKeyedSubscript:@"callTotalDur"];
            [v118 doubleValue];
            v120 = [v117 numberWithLong:10 * (llround(v119 / v116) / 10)];
            [v18 setObject:v120 forKeyedSubscript:@"callAvgDur"];

            v121 = *(v19 + 3480);
            v122 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v122 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v123 = *(v114 + 3480);
            v124 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v124 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v125 = *(v114 + 3480);
            v126 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v126 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v127 = *(v114 + 3480);
            v128 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v128 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v129 = *(v114 + 3480);
            v130 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v130 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v131 = *(v114 + 3480);
            v132 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v132 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v133 = *(v114 + 3480);
            v134 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v134 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v135 = *(v114 + 3480);
            v136 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v136 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v137 = *(v114 + 3480);
            v138 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v138 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v139 = *(v114 + 3480);
            v140 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v140 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v141 = *(v114 + 3480);
            v142 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v142 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v143 = *(v114 + 3480);
            v144 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v144 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v145 = *(v114 + 3480);
            v146 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v146 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v147 = *(v114 + 3480);
            v148 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v148 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v149 = *(v114 + 3480);
            v150 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v150 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v151 = *(v114 + 3480);
            v152 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v152 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v153 = *(v114 + 3480);
            v154 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v154 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v155 = *(v114 + 3480);
            v156 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v156 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v157 = *(v114 + 3480);
            v158 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v158 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v159 = *(v114 + 3480);
            v160 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v160 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v161 = *(v114 + 3480);
            v162 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v162 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v163 = *(v114 + 3480);
            v164 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v164 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v165 = *(v114 + 3480);
            v166 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v166 doubleValue];
            [v165 numberWithLong:llround(v167 / v116)];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v168 = *(v114 + 3480);
            v169 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v169 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v170 = *(v114 + 3480);
            v171 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v171 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v172 = *(v114 + 3480);
            v173 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v173 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v174 = *(v114 + 3480);
            v175 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v175 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v176 = *(v114 + 3480);
            v177 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v177 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v178 = *(v114 + 3480);
            v179 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v179 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v180 = *(v114 + 3480);
            v181 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v181 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v182 = *(v114 + 3480);
            v183 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v183 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v184 = *(v114 + 3480);
            v185 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v185 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v186 = *(v114 + 3480);
            v187 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v187 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v188 = *(v114 + 3480);
            v189 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v189 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v190 = *(v114 + 3480);
            v191 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v191 doubleValue];
            [OUTLINED_FUNCTION_0_20() numberWithLong:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v192 = *(v114 + 3480);
            v193 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v193 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v194 = *(v114 + 3480);
            v195 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v195 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v196 = *(v114 + 3480);
            v197 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v197 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v198 = *(v114 + 3480);
            v199 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v199 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v200 = *(v114 + 3480);
            v201 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v201 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v202 = *(v114 + 3480);
            v203 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v203 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v204 = *(v114 + 3480);
            v205 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v205 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v206 = *(v114 + 3480);
            v207 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v207 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v208 = *(v114 + 3480);
            v209 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v209 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v210 = *(v114 + 3480);
            v211 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v211 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v212 = *(v114 + 3480);
            v213 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v213 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v214 = *(v114 + 3480);
            v215 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v215 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v216 = *(v114 + 3480);
            v217 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v217 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v218 = *(v114 + 3480);
            v219 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v219 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v220 = *(v114 + 3480);
            v221 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v221 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v222 = *(v114 + 3480);
            v223 = [OUTLINED_FUNCTION_6_12() objectForKeyedSubscript:?];
            [v223 integerValue];
            [OUTLINED_FUNCTION_2_12() numberWithDouble:?];
            objc_claimAutoreleasedReturnValue();
            [OUTLINED_FUNCTION_1_15() setObject:? forKeyedSubscript:?];

            v224 = v18;
            interactionsCopy = v232;
            v7 = v233;
            date = v230;
            v9 = v231;
            v14 = v229;
            goto LABEL_77;
          }
        }
      }

      v226 = v9;
LABEL_77:

      v225 = v9;
    }

    else
    {
      v225 = MEMORY[0x1E695E0F8];
    }
  }

  else
  {
    v225 = 0;
  }

  return v225;
}

- (void)messagesCumulativeFeaturesFromInteractionsBatch:(void *)batch mutableMessagesDictionary:
{
  v53 = *MEMORY[0x1E69E9840];
  v5 = a2;
  batchCopy = batch;
  if (!self)
  {
    goto LABEL_37;
  }

  v46 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v46 setDateFormat:@"dd/MM/yyyy"];
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  if (![v5 count])
  {
    goto LABEL_36;
  }

  v7 = 0x1E696A000uLL;
  v8 = MEMORY[0x1E696AD98];
  v9 = [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
  v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(v5, "count") + objc_msgSend(v9, "integerValue")}];
  [OUTLINED_FUNCTION_51_0() setObject:? forKeyedSubscript:?];

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v42 = v5;
  obj = v5;
  v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (!v47)
  {
    goto LABEL_35;
  }

  v44 = *v49;
  do
  {
    for (i = 0; i != v47; ++i)
    {
      if (*v49 != v44)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v48 + 1) + 8 * i);
      if ([v12 direction] == 1)
      {
        v13 = *(v7 + 3480);
        v14 = [batchCopy objectForKeyedSubscript:@"firstPartyMsgOutgoingRatio"];
        v15 = [v13 numberWithInteger:{objc_msgSend(v14, "integerValue") + 1}];
        [OUTLINED_FUNCTION_51_0() setObject:? forKeyedSubscript:?];
      }

      startDate = [v12 startDate];
      v17 = [v46 stringFromDate:startDate];

      v18 = [batchCopy objectForKeyedSubscript:@"daysSeen"];

      if (!v18)
      {
        v19 = objc_opt_new();
        [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
      }

      v20 = [batchCopy objectForKeyedSubscript:@"fromDate"];

      if (!v20 || ([batchCopy objectForKeyedSubscript:@"fromDate"], v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "startDate"), v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v21, "compare:", v22), v22, v21, v23 == 1))
      {
        startDate2 = [v12 startDate];
        [OUTLINED_FUNCTION_37_0() setObject:? forKeyedSubscript:?];
      }

      v25 = [batchCopy objectForKeyedSubscript:@"daysSeen"];
      [v25 addObject:v17];

      startDate3 = [v12 startDate];
      v27 = [currentCalendar components:544 fromDate:startDate3];

      weekday = [v27 weekday];
      hour = [v27 hour];
      v30 = hour - 6;
      if ((weekday - 2) > 3)
      {
        if (weekday == 7)
        {
          if (v30 >= 6 && (hour - 12) >= 6)
          {
LABEL_29:
            OUTLINED_FUNCTION_68_0();
          }
        }

        else if (weekday == 6)
        {
          if (v30 >= 6 && (hour - 12) >= 6)
          {
            goto LABEL_29;
          }
        }

        else if (v30 >= 6 && (hour - 12) >= 6)
        {
          goto LABEL_29;
        }
      }

      else if (v30 >= 6 && (hour - 12) >= 6)
      {
        goto LABEL_29;
      }

      [OUTLINED_FUNCTION_37_0() objectForKeyedSubscript:?];
      v32 = v31 = v7;
      [v32 integerValue];
      v33 = [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
      [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

      v7 = v31;
      startDate4 = [v12 startDate];
      [startDate4 timeIntervalSinceNow];
      v36 = v35;

      if (v36 >= -1209600.0 || ([v12 startDate], v37 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v37, "timeIntervalSinceNow"), v39 = v38, v37, v39 >= -3628800.0))
      {
        v40 = [batchCopy objectForKeyedSubscript:@"firstPartyMsgTwoWeeks"];
        [v40 integerValue];
        v41 = [OUTLINED_FUNCTION_13_4() numberWithInteger:?];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];
      }
    }

    v47 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  }

  while (v47);
LABEL_35:

  v5 = v42;
LABEL_36:

LABEL_37:
}

- (void)messagesFeaturesFromCumulativeDict:(uint64_t)dict
{
  v3 = a2;
  v4 = v3;
  if (dict)
  {
    if ([v3 count])
    {
      v5 = [v4 objectForKeyedSubscript:@"firstPartyMsgTotal"];
      integerValue = [v5 integerValue];

      if (integerValue)
      {
        v7 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        v8 = [v4 objectForKeyedSubscript:@"fromDate"];
        [OUTLINED_FUNCTION_14_0() removeObjectForKey:?];
        [v4 removeObjectForKey:@"fromDate"];
        if (v8)
        {
          currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
          date = [MEMORY[0x1E695DF00] date];
          v11 = [currentCalendar components:16 fromDate:v8 toDate:date options:0];

          if (v11)
          {
            v12 = [v11 day];
            if (!v12)
            {

              goto LABEL_12;
            }

            v13 = [MEMORY[0x1E696AD98] numberWithDouble:{objc_msgSend(v7, "count") / v12}];
            [v4 setObject:v13 forKeyedSubscript:@"firstPartyMsgDayRatio"];
          }

          else
          {
            [v4 setObject:&unk_1F05EF190 forKeyedSubscript:@"firstPartyMsgDayRatio"];
            v13 = +[_CDLogging dataCollectionChannel];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *v52 = 0;
              _os_log_error_impl(&dword_191750000, v13, OS_LOG_TYPE_ERROR, "Number of days was not valid, could not calculate ratio", v52, 2u);
            }
          }
        }

        v14 = MEMORY[0x1E696AD98];
        v15 = [v4 objectForKeyedSubscript:@"firstPartyMsgOutgoingRatio"];
        [v14 numberWithDouble:{objc_msgSend(v15, "integerValue") / integerValue}];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v16 = MEMORY[0x1E696AD98];
        v17 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v17 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v18 = MEMORY[0x1E696AD98];
        v19 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v19 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v20 = MEMORY[0x1E696AD98];
        v21 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v21 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v22 = MEMORY[0x1E696AD98];
        v23 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v23 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v24 = MEMORY[0x1E696AD98];
        v25 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v25 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v26 = MEMORY[0x1E696AD98];
        v27 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v27 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v28 = MEMORY[0x1E696AD98];
        v29 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v29 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v30 = MEMORY[0x1E696AD98];
        v31 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v31 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v32 = MEMORY[0x1E696AD98];
        v33 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v33 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v34 = MEMORY[0x1E696AD98];
        v35 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v35 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v36 = MEMORY[0x1E696AD98];
        v37 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v37 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v38 = MEMORY[0x1E696AD98];
        v39 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v39 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v40 = MEMORY[0x1E696AD98];
        v41 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v41 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v42 = MEMORY[0x1E696AD98];
        v43 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v43 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v44 = MEMORY[0x1E696AD98];
        v45 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v45 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v46 = MEMORY[0x1E696AD98];
        v47 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v47 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v48 = MEMORY[0x1E696AD98];
        v49 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v49 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

        v50 = MEMORY[0x1E696AD98];
        v51 = [OUTLINED_FUNCTION_14_0() objectForKeyedSubscript:?];
        [v51 integerValue];
        [OUTLINED_FUNCTION_5_9() numberWithDouble:?];
        objc_claimAutoreleasedReturnValue();
        [OUTLINED_FUNCTION_13_3() setObject:? forKeyedSubscript:?];

LABEL_12:
      }
    }
  }
}

- (id)thirdPartyMessageFeaturesFromFeatureDictionary:(uint64_t)dictionary
{
  v3 = a2;
  if (dictionary)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if ([v3 count])
    {
      v5 = v3;
      if ([v5 count])
      {
        v6 = [v5 objectForKeyedSubscript:@"firstPartyMsgTotal"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v7 = [v5 objectForKeyedSubscript:@"firstPartyMsgDayRatio"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v8 = [v5 objectForKeyedSubscript:@"firstPartyMsgTwoWeeks"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v9 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v10 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v11 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v12 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightWeekday"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v13 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v14 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v15 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v16 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightFri"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v17 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v18 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v19 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v20 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightSat"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v21 = [v5 objectForKeyedSubscript:@"firstPartyMsgMorningSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v22 = [v5 objectForKeyedSubscript:@"firstPartyMsgNoonSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v23 = [v5 objectForKeyedSubscript:@"firstPartyMsgEveSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v24 = [v5 objectForKeyedSubscript:@"firstPartyMsgNightSun"];
        [OUTLINED_FUNCTION_11_0() setObject:? forKeyedSubscript:?];

        v25 = v4;
      }

      else
      {
        v25 = MEMORY[0x1E695E0F8];
      }
    }

    else
    {
      v25 = v4;
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

- (id)getThirdPartyPredicateForContact:(void *)contact handles:
{
  v42 = *MEMORY[0x1E69E9840];
  v35 = a2;
  contactCopy = contact;
  v34 = contactCopy;
  if (self)
  {
    v7 = contactCopy;
    array = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"bundleId != %@", @"com.apple.MobileSMS"];
    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"direction IN %@", &unk_1F05EF488];
    [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism IN %@", &unk_1F05EF4A0];
    objc_claimAutoreleasedReturnValue();
    v32 = v9;
    [OUTLINED_FUNCTION_67_0() addObject:v9];
    v31 = v10;
    [array addObject:v10];
    v33 = array;
    v30 = v3;
    [array addObject:v3];
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    OUTLINED_FUNCTION_16_2();
    obj = v7;
    v13 = [obj countByEnumeratingWithState:v37 objects:v41 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v39;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          OUTLINED_FUNCTION_48_0();
          if (v17 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(v38 + 8 * i);
          v19 = [_CDContactResolver normalizedStringFromContactString:v18];
          alphanumericCharacterSet = [MEMORY[0x1E696AB08] alphanumericCharacterSet];
          v21 = [v18 stringByAddingPercentEncodingWithAllowedCharacters:alphanumericCharacterSet];

          v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"conversationIdentifier(%@)", v21];
          [v12 addObject:v3];

          [OUTLINED_FUNCTION_62_0() addObject:?];
        }

        v14 = [obj countByEnumeratingWithState:v37 objects:v41 count:16];
      }

      while (v14);
    }

    v22 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(ANY recipients.identifier IN %@)", v11];
    v23 = [MEMORY[0x1E696AE18] predicateWithFormat:@"(derivedIntentIdentifier IN %@)", v12];
    v24 = MEMORY[0x1E696AE18];
    [v35 identifier];
    objc_claimAutoreleasedReturnValue();
    v25 = [OUTLINED_FUNCTION_8_6() setWithObject:?];
    v26 = [v24 predicateWithFormat:@"(ANY recipients.personId IN %@)", v25];

    v40[0] = v22;
    v40[1] = v23;
    v40[2] = v26;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:3];
    objc_claimAutoreleasedReturnValue();
    v27 = [OUTLINED_FUNCTION_8_6() orPredicateWithSubpredicates:?];
    [v33 addObject:v27];

    v28 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v33];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

- (id)fetchInteractionFeatureDictionaryWithPredicate:(void *)predicate store:(void *)store sortDescription:
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  predicateCopy = predicate;
  storeCopy = store;
  if (self)
  {
    v10 = objc_opt_new();
    v11 = 0;
    v12 = MEMORY[0x1E695E0F0];
    do
    {
      v13 = v12;
      v14 = objc_autoreleasePoolPush();
      v17[0] = storeCopy;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
      v12 = [OUTLINED_FUNCTION_51_0() queryInteractionsUsingPredicate:? sortDescriptors:? limit:? offset:? error:?];

      [(_CDCloudFamilyDataCollectionTask *)self messagesCumulativeFeaturesFromInteractionsBatch:v12 mutableMessagesDictionary:v10];
      v11 += 128;
      objc_autoreleasePoolPop(v14);
    }

    while ([v12 count] == 128);
    [(_CDCloudFamilyDataCollectionTask *)self messagesFeaturesFromCumulativeDict:v10];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)initWithStorage:(uint64_t)a3 contactStore:(uint64_t)a4 medicalIDStore:(uint64_t)a5 activity:(uint64_t)a6 sessionPath:(uint64_t)a7 dataDirectory:(uint64_t)a8 collectionDate:samplingRate:maxBatches:daysPerBatch:.cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_2(&dword_191750000, a2, a3, "Error unarchiving cloud family data collection session: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)airDropPeopleAtHome
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(*self + 40);
  OUTLINED_FUNCTION_0_2(&dword_191750000, a2, a3, "Error fetching home visits: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end