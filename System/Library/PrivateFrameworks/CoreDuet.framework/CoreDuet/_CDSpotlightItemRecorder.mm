@interface _CDSpotlightItemRecorder
+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder;
+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder knowledgeStore:(id)store;
+ (id)spotlightItemRecorder;
- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder;
- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store;
- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store rateLimitEnforcer:(id)enforcer deletionManagerOverride:(id)override;
- (id)getUserNameOfDonator;
- (unint64_t)getUidOfDonator;
- (void)_addOrUpdateCoreDuetInteractions:(void *)interactions bundleID:;
- (void)_cacheUserActivity:(uint64_t)activity;
- (void)_deleteUserActivitiesWithPersistentIdentifiers:(void *)identifiers bundleID:;
- (void)_enqueueOperation:(uint64_t)operation;
- (void)addInteractions:(id)interactions bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d withCompletion:(id)completion;
- (void)addUserAction:(id)action withItem:(id)item withCompletion:(id)completion;
- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)deleteAllItemsWithBundleID:(int)d isCSSIDeletion:(void *)deletion completion:;
- (void)deleteAllSearchableItemsWithBundleID:(id)d withCompletion:(id)completion;
- (void)deleteAllUserActivities:(id)activities;
- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion;
- (void)deleteKnowledgeEventsMatchingPredicate:(void *)predicate withCompletion:;
- (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d withCompletion:(id)completion;
- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion;
- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion;
- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d;
- (void)donateRelevantShortcuts:(id)shortcuts bundleID:(id)d;
- (void)registerSpotlightRecorderWithServiceName:(id)name;
- (void)runOperation:(uint64_t)operation;
- (void)saveRateLimitedEvents:(int)events donatorUid:(void *)uid responseQueue:(void *)queue withCompletion:;
- (void)startIntentDeletionForContactDeletions;
- (void)submitOperation:(void *)operation;
@end

@implementation _CDSpotlightItemRecorder

- (unint64_t)getUidOfDonator
{
  if (!self)
  {
    return 0;
  }

  SpotlightReceiverConnectionUIDKey = getSpotlightReceiverConnectionUIDKey();
  if (!SpotlightReceiverConnectionUIDKey)
  {
    v6 = getuid();
    if (v6)
    {
      return v6;
    }

LABEL_11:
    v8 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v20[0] = 0;
      _os_log_debug_impl(&dword_191750000, v8, OS_LOG_TYPE_DEBUG, "Using process UID. Dispatch queue UID key or value was not found.", v20, 2u);
    }

    return geteuid();
  }

  v3 = SpotlightReceiverConnectionUIDKey;
  v4 = +[_CDLogging spotlightReceiverChannel];
  if (OUTLINED_FUNCTION_80(v4))
  {
    v20[16] = 0;
    OUTLINED_FUNCTION_22_6();
    _os_log_debug_impl(v10, v11, v12, v13, v14, 2u);
  }

  specific = dispatch_get_specific(v3);
  v6 = getuid();
  if (v6)
  {
    return v6;
  }

  if (!specific)
  {
    goto LABEL_11;
  }

  v7 = +[_CDLogging spotlightReceiverChannel];
  if (OUTLINED_FUNCTION_80(v7))
  {
    v20[8] = 0;
    OUTLINED_FUNCTION_22_6();
    _os_log_debug_impl(v15, v16, v17, v18, v19, 2u);
  }

  return specific;
}

- (id)getUserNameOfDonator
{
  v21 = *MEMORY[0x1E69E9840];
  if (self)
  {
    getUidOfDonator = [(_CDSpotlightItemRecorder *)self getUidOfDonator];
    v3 = +[_CDLogging spotlightReceiverChannel];
    if (OUTLINED_FUNCTION_80(v3))
    {
      *v20 = 67109120;
      *&v20[4] = getUidOfDonator;
      OUTLINED_FUNCTION_22_6();
      _os_log_debug_impl(v9, v10, v11, v12, v13, 8u);
    }

    v4 = getpwuid(getUidOfDonator);
    if (v4 && (v5 = v4, v4->pw_name))
    {
      v6 = +[_CDLogging spotlightReceiverChannel];
      if (OUTLINED_FUNCTION_80(v6))
      {
        pw_name = v5->pw_name;
        *v20 = 136315138;
        *&v20[4] = pw_name;
        OUTLINED_FUNCTION_22_6();
        _os_log_debug_impl(v15, v16, v17, v18, v19, 0xCu);
      }

      self = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5->pw_name];
    }

    else
    {
      v7 = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_error_impl(&dword_191750000, v7, OS_LOG_TYPE_ERROR, "Error converting Spotlight Receiver donator UID to OS user name. Cannot extract OS user name of interaction.", v20, 2u);
      }

      self = NSUserName();
    }
  }

  return self;
}

+ (id)spotlightItemRecorder
{
  v3 = +[_CDInteractionRecorder interactionRecorder];
  v4 = [self spotlightItemRecorderWithInteractionRecorder:v3];

  return v4;
}

+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder
{
  recorderCopy = recorder;
  v4 = [[_CDSpotlightItemRecorder alloc] initWithInteractionRecorder:recorderCopy];

  return v4;
}

+ (_CDSpotlightItemRecorder)spotlightItemRecorderWithInteractionRecorder:(id)recorder knowledgeStore:(id)store
{
  storeCopy = store;
  recorderCopy = recorder;
  v7 = [[_CDSpotlightItemRecorder alloc] initWithInteractionRecorder:recorderCopy knowledgeStore:storeCopy];

  return v7;
}

- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder
{
  recorderCopy = recorder;
  v5 = +[_DKKnowledgeStore knowledgeStore];
  v6 = [(_CDSpotlightItemRecorder *)self initWithInteractionRecorder:recorderCopy knowledgeStore:v5];

  return v6;
}

- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store
{
  storeCopy = store;
  recorderCopy = recorder;
  v8 = +[_DKRateLimitPolicyEnforcer rateLimitPolicyEnforcer];
  v9 = [(_CDSpotlightItemRecorder *)self initWithInteractionRecorder:recorderCopy knowledgeStore:storeCopy rateLimitEnforcer:v8];

  return v9;
}

- (_CDSpotlightItemRecorder)initWithInteractionRecorder:(id)recorder knowledgeStore:(id)store rateLimitEnforcer:(id)enforcer deletionManagerOverride:(id)override
{
  recorderCopy = recorder;
  storeCopy = store;
  enforcerCopy = enforcer;
  overrideCopy = override;
  v76.receiver = self;
  v76.super_class = _CDSpotlightItemRecorder;
  v13 = [(_CDSpotlightItemRecorder *)&v76 init];
  if (v13)
  {
    v14 = objc_alloc(MEMORY[0x1E69C5D60]);
    v15 = objc_opt_new();
    v16 = [v14 initWithGuardedData:{v15, enforcerCopy, storeCopy}];
    v17 = *(v13 + 17);
    *(v13 + 17) = v16;

    objc_initWeak(&location, v13);
    objc_storeStrong(v13 + 9, store);
    objc_storeStrong(v13 + 10, enforcer);
    v18 = +[_DKPrivacyPolicyEnforcer privacyPolicyEnforcer];
    v19 = *(v13 + 11);
    *(v13 + 11) = v18;

    v20 = [_DKContactsPrivacyMaintainer alloc];
    v21 = *(v13 + 9);
    v22 = objc_loadWeakRetained(&location);
    v23 = [(_DKContactsPrivacyMaintainer *)v20 initWithKnowledgeStore:v21 spotlightRecorder:v22];
    v24 = *(v13 + 12);
    *(v13 + 12) = v23;

    v25 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create("rateLimiterQueue", v25);
    v27 = *(v13 + 7);
    *(v13 + 7) = v26;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v29 = *(v13 + 8);
    *(v13 + 8) = dictionary;

    v30 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v31 = dispatch_queue_attr_make_with_qos_class(v30, 5u, 0);

    v32 = dispatch_queue_create("batchExecutionSourceQueue", v31);
    v33 = *(v13 + 2);
    *(v13 + 2) = v32;

    v34 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_191750000, v34, OS_LOG_TYPE_DEFAULT, "SpotlightRecorder init biome BMLibrary.App.Intent stream", buf, 2u);
    }

    v35 = BiomeLibrary();
    v36 = [v35 App];
    intent = [v36 Intent];
    source = [intent source];
    v39 = *(v13 + 19);
    *(v13 + 19) = source;

    v40 = BiomeLibrary();
    v41 = [v40 App];
    relevantShortcuts = [v41 RelevantShortcuts];
    v43 = *(v13 + 22);
    *(v13 + 22) = relevantShortcuts;

    v44 = BiomeLibrary();
    v45 = [v44 App];
    locationActivity = [v45 LocationActivity];
    source2 = [locationActivity source];
    v48 = *(v13 + 21);
    *(v13 + 21) = source2;

    v49 = BiomeLibrary();
    v50 = [v49 App];
    activity = [v50 Activity];
    source3 = [activity source];
    v53 = *(v13 + 20);
    *(v13 + 20) = source3;

    if (overrideCopy)
    {
      objc_storeStrong(v13 + 16, override);
    }

    if (recorderCopy)
    {
      objc_storeStrong(v13 + 18, recorder);
      array = [MEMORY[0x1E695DF70] array];
      v55 = *(v13 + 4);
      *(v13 + 4) = array;

      *(v13 + 5) = 0;
      v56 = dispatch_queue_create("batchArrayQueue", v31);
      v57 = *(v13 + 3);
      *(v13 + 3) = v56;

      v58 = *(v13 + 6);
      *(v13 + 6) = 0;

      v59 = dispatch_source_create(MEMORY[0x1E69E96B8], 0, 0, *(v13 + 2));
      v60 = *(v13 + 1);
      *(v13 + 1) = v59;

      v61 = *(v13 + 1);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke;
      handler[3] = &unk_1E736AA30;
      v62 = v13;
      v73 = v62;
      objc_copyWeak(&v74, &location);
      dispatch_source_set_event_handler(v61, handler);
      dispatch_resume(*(v13 + 1));
      v63 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v13 + 7));
      dispatch_source_set_timer(v63, 0, 0x1176592E000uLL, 0x37E11D6000uLL);
      objc_initWeak(buf, *(v13 + 8));
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3221225472;
      v68[2] = __113___CDSpotlightItemRecorder_initWithInteractionRecorder_knowledgeStore_rateLimitEnforcer_deletionManagerOverride___block_invoke_568;
      v68[3] = &unk_1E73675D0;
      objc_copyWeak(&v70, buf);
      v69 = v62;
      dispatch_source_set_event_handler(v63, v68);
      dispatch_resume(v63);

      objc_destroyWeak(&v70);
      objc_destroyWeak(buf);

      objc_destroyWeak(&v74);
    }

    v64 = v13;

    objc_destroyWeak(&location);
  }

  return v13;
}

- (void)registerSpotlightRecorderWithServiceName:(id)name
{
  nameCopy = name;
  if (SpotlightReceiverLibraryCore(0))
  {
    if (!self->_coalescedDeletionManager)
    {
      v5 = [[_CDSpotlightCoalescedDeletionManager alloc] initWithKnowledgeStore:self->_knowledgeStore];
      coalescedDeletionManager = self->_coalescedDeletionManager;
      self->_coalescedDeletionManager = v5;
    }

    cd_SpotlightReceiverRegister(nameCopy, self);
    self->_registeredSpotlightReceiver = 1;
    v7 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 0;
      v8 = "SpotlightReceiver is available, registering receiver";
      v9 = &v11;
LABEL_8:
      _os_log_impl(&dword_191750000, v7, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
    }
  }

  else
  {
    v7 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 0;
      v8 = "SpotlightReceiver is NOT available";
      v9 = &v10;
      goto LABEL_8;
    }
  }
}

- (void)_addOrUpdateCoreDuetInteractions:(void *)interactions bundleID:
{
  v77 = *MEMORY[0x1E69E9840];
  v40 = a2;
  interactionsCopy = interactions;
  if (!self || !*(self + 144))
  {
    goto LABEL_60;
  }

  selfCopy = self;
  if ([v40 count])
  {
    if (*(self + 104) && [interactionsCopy isEqualToString:@"com.apple.mobilecal"])
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      obj = v40;
      v43 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
      if (v43)
      {
        v5 = 0;
        v42 = *v67;
        while (1)
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v67 != v42)
            {
              objc_enumerationMutation(obj);
            }

            domainIdentifier = [*(*(&v66 + 1) + 8 * i) domainIdentifier];
            v6 = domainIdentifier;
            if (domainIdentifier)
            {
              v7 = [*(selfCopy + 104) computeHashesForString:domainIdentifier reuse:v5];

              [*(selfCopy + 104) setWithHashes:v7];
              v8 = domainIdentifier;
              v9 = objc_opt_self();

              if (v9)
              {
                v65 = 0;
                v63 = 0u;
                v64 = 0u;
                v61 = 0u;
                theString = 0u;
                v59 = 0u;
                v60 = 0u;
                v57 = 0u;
                v58 = 0u;
                v56 = 0u;
                *buffer = 0u;
                v55 = 0u;
                Length = CFStringGetLength(v8);
                *&theString = v8;
                *(&v63 + 1) = 0;
                *&v64 = Length;
                *(&theString + 1) = CFStringGetCharactersPtr(v8);
                v11 = *(&theString + 1) ? 0 : CFStringGetCStringPtr(v8, 0x600u);
                *&v63 = v11;
                *(&v64 + 1) = 0;
                v65 = 0;
                if (Length >= 1)
                {
                  v12 = 0;
                  v13 = 0;
                  v14 = 64;
                  while (1)
                  {
                    if (v13 >= 4)
                    {
                      v15 = 4;
                    }

                    else
                    {
                      v15 = v13;
                    }

                    v16 = v64;
                    if (v64 <= v13)
                    {
LABEL_29:
                      v5 = v7;
                      goto LABEL_30;
                    }

                    if (*(&theString + 1))
                    {
                      break;
                    }

                    if (!v63)
                    {
                      v22 = *(&v64 + 1);
                      if (v65 <= v13 || *(&v64 + 1) > v13)
                      {
                        v24 = v13 - v15;
                        v25 = v15 + v12;
                        v26 = v14 - v15;
                        v27 = v24 + 64;
                        if (v24 + 64 >= v64)
                        {
                          v27 = v64;
                        }

                        *(&v64 + 1) = v24;
                        v65 = v27;
                        if (v64 >= v26)
                        {
                          v16 = v26;
                        }

                        v78.location = *(&v63 + 1) + v24;
                        v78.length = v16 + v25;
                        CFStringGetCharacters(theString, v78, buffer);
                        v22 = *(&v64 + 1);
                      }

                      v17 = &buffer[-v22];
                      goto LABEL_24;
                    }

                    v18 = *(v63 + *(&v63 + 1) + v13);
LABEL_27:
                    if (v18 != 46)
                    {
                      goto LABEL_29;
                    }

                    v19 = objc_autoreleasePoolPush();
                    v20 = *(selfCopy + 104);
                    v21 = [(__CFString *)v8 substringToIndex:v13];
                    v5 = [v20 computeHashesForString:v21 reuse:v7];

                    [*(selfCopy + 104) setWithHashes:v5];
                    objc_autoreleasePoolPop(v19);
LABEL_30:
                    ++v13;
                    --v12;
                    ++v14;
                    v7 = v5;
                    if (Length == v13)
                    {
                      goto LABEL_43;
                    }
                  }

                  v17 = (*(&theString + 1) + 2 * *(&v63 + 1));
LABEL_24:
                  v18 = v17[v13];
                  goto LABEL_27;
                }
              }

              v5 = v7;
LABEL_43:

              v6 = domainIdentifier;
            }
          }

          v43 = [obj countByEnumeratingWithState:&v66 objects:v76 count:16];
          if (!v43)
          {
            goto LABEL_48;
          }
        }
      }

      v5 = 0;
LABEL_48:
    }

    v28 = +[_CDConstants mobileMessagesBundleId];
    if ([v28 isEqual:interactionsCopy])
    {

LABEL_52:
      v31 = objc_autoreleasePoolPush();
      *buffer = 0;
      *&buffer[4] = buffer;
      *&v55 = 0x2020000000;
      BYTE8(v55) = 0;
      v32 = [MEMORY[0x1E695DF00] now];
      v33 = *(selfCopy + 136);
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __70___CDSpotlightItemRecorder__addOrUpdateCoreDuetInteractions_bundleID___block_invoke;
      v49[3] = &unk_1E736AA80;
      v34 = interactionsCopy;
      v50 = v34;
      v35 = v40;
      v51 = v35;
      v36 = v32;
      v52 = v36;
      v53 = buffer;
      [v33 runWithLockAcquired:v49];
      if (*(*&buffer[4] + 24) == 1)
      {
        v37 = [v35 count];
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = __70___CDSpotlightItemRecorder__addOrUpdateCoreDuetInteractions_bundleID___block_invoke_2;
        v47[3] = &unk_1E736AAA8;
        v48 = v36;
        v40 = [v35 _pas_filteredArrayWithTest:v47];

        v38 = [v40 count];
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218498;
          v71 = v37;
          v72 = 2114;
          v73 = v34;
          v74 = 2048;
          v75 = v37 - v38;
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "_addOrUpdateCoreDuetInteractions:(count %tu) bundleID:%{public}@ dropping %tu items due to throttling!", buf, 0x20u);
        }
      }

      else
      {
        v40 = v35;
      }

      _Block_object_dispose(buffer, 8);
      objc_autoreleasePoolPop(v31);
      goto LABEL_58;
    }

    v29 = +[_CDConstants contactsAutocompleteBundleId];
    v30 = [v29 isEqual:interactionsCopy];

    if (v30)
    {
      goto LABEL_52;
    }
  }

LABEL_58:
  if ([v40 count])
  {
    [(_CDSpotlightItemRecorder *)v40 _addOrUpdateCoreDuetInteractions:interactionsCopy bundleID:selfCopy];
  }

LABEL_60:
}

- (void)donateRelevantShortcuts:(id)shortcuts bundleID:(id)d
{
  v44 = *MEMORY[0x1E69E9840];
  shortcutsCopy = shortcuts;
  dCopy = d;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: donateRelevantShortcuts:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v8, state);
  os_activity_scope_leave(state);

  v9 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(shortcutsCopy, "count")}];
    *state = 138412546;
    *&state[4] = v10;
    *&state[12] = 2112;
    *&state[14] = dCopy;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "Donate %@ relevant shortcuts for bundleID: %@", state, 0x16u);
  }

  if (dCopy)
  {
    v11 = +[_DKSystemEventStreams appRelevantShortcutsStream];
    name = [v11 name];
    v13 = [_DKQuery predicateForEventsWithStreamName:name];

    v14 = [_DKQuery predicateForEventsWithStringValue:dCopy];
    v15 = MEMORY[0x1E696AB28];
    v35 = v14;
    v36 = v13;
    v42[0] = v13;
    v42[1] = v14;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v17 = [v15 andPredicateWithSubpredicates:v16];

    if (self)
    {
      [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v17 withCompletion:0];
    }

    selfCopy = self;
    v34 = v17;
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v19 = shortcutsCopy;
    v20 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v38;
      do
      {
        v23 = 0;
        do
        {
          if (*v38 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v37 + 1) + 8 * v23);
          v25 = objc_autoreleasePoolPush();
          v26 = [_DKEvent eventWithRelevantShortcut:v24 bundleID:dCopy];
          if (v26)
          {
            [v18 addObject:v26];
          }

          objc_autoreleasePoolPop(v25);
          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v37 objects:v41 count:16];
      }

      while (v21);
    }

    v27 = [v19 count];
    if (v27 > [v18 count])
    {
      v28 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v19, "count") - objc_msgSend(v18, "count")}];
        *state = 138412546;
        *&state[4] = v31;
        *&state[12] = 2112;
        *&state[14] = dCopy;
        _os_log_error_impl(&dword_191750000, v28, OS_LOG_TYPE_ERROR, "Unable to convert %@ relevant shortcuts for bundleID %@ to knowledge events", state, 0x16u);
      }
    }

    if ([v18 count])
    {
      v29 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        [(_CDSpotlightItemRecorder *)v18 donateRelevantShortcuts:dCopy bundleID:v29];
      }

      getUidOfDonator = [(_CDSpotlightItemRecorder *)v33 getUidOfDonator];
      [(_CDSpotlightItemRecorder *)v33 saveRateLimitedEvents:v18 donatorUid:getUidOfDonator responseQueue:0 withCompletion:&__block_literal_global_626];
    }
  }
}

- (void)addInteractions:(id)interactions bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v56 = *MEMORY[0x1E69E9840];
  interactionsCopy = interactions;
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_191750000, "CoreDuet: addInteractions:bundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v14, state);
  os_activity_scope_leave(state);

  v15 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(interactionsCopy, "count")}];
    *state = 138412546;
    *&state[4] = v16;
    *&state[12] = 2112;
    *&state[14] = dCopy;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_INFO, "Adding %@ interactions for bundleID: %@", state, 0x16u);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) == 0 && (objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]) & 1) == 0)
  {
    v17 = interactionsCopy;
    v18 = dCopy;
    v19 = +[_CDConstants mobileMessagesBundleId];
    v20 = [v18 isEqualToString:v19];

    if (v20)
    {
      [_CDSpotlightItemRecorder addInteractions:v52 bundleID:v17 protectionClass:state withCompletion:?];
    }

    context = objc_autoreleasePoolPush();
    if (self)
    {
      if (self->_recorder)
      {
        v21 = +[_CDConstants mobileMessagesBundleId];
        v22 = [v18 isEqualToString:v21];

        if ((v22 & 1) == 0)
        {
          v37 = completionCopy;
          v38 = dCopy;
          v39 = interactionsCopy;
          selfCopy = self;
          getUserNameOfDonator = [(_CDSpotlightItemRecorder *)self getUserNameOfDonator];
          v25 = [MEMORY[0x1E696AE18] predicateWithFormat:@"intent.cd_saveToPeopleStore = YES"];
          v36 = v17;
          v26 = [v17 filteredArrayUsingPredicate:v25];

          v27 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v26, "count")}];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          obj = v26;
          v28 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v49;
            do
            {
              for (i = 0; i != v29; ++i)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(obj);
                }

                v32 = *(*(&v48 + 1) + 8 * i);
                v33 = [_CDInteraction shareSheetInteractionFromINInteraction:v32 bundleID:v18 nsUserName:getUserNameOfDonator knowledgeStore:selfCopy->_knowledgeStore];
                if (v33)
                {
                  [v27 addObject:v33];
                }

                else
                {
                  v34 = [[_CDInteraction alloc] initWithINInteraction:v32 bundleID:v18 nsUserName:getUserNameOfDonator];
                  if (v34)
                  {
                    [v27 addObject:v34];
                  }
                }
              }

              v29 = [obj countByEnumeratingWithState:&v48 objects:v53 count:16];
            }

            while (v29);
          }

          [(_CDSpotlightItemRecorder *)selfCopy _addOrUpdateCoreDuetInteractions:v27 bundleID:v18];
          self = selfCopy;
          dCopy = v38;
          interactionsCopy = v39;
          completionCopy = v37;
          v17 = v36;
        }
      }
    }

    *state = 0;
    *&state[8] = state;
    *&state[16] = 0x2020000000;
    getUidOfDonator = [(_CDSpotlightItemRecorder *)self getUidOfDonator];
    batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __84___CDSpotlightItemRecorder_addInteractions_bundleID_protectionClass_withCompletion___block_invoke;
    block[3] = &unk_1E736AB40;
    v43 = v17;
    v44 = v18;
    selfCopy2 = self;
    v47 = state;
    v46 = completionCopy;
    dispatch_sync(batchExecutionSourceQueue, block);

    _Block_object_dispose(state, 8);
    objc_autoreleasePoolPop(context);
  }
}

- (void)addOrUpdateSearchableItems:(id)items bundleID:(id)d withCompletion:(id)completion
{
  v66[2] = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  dCopy = d;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: addOrUpdateSearchableItems:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *state = 0;
  *&state[8] = 0;
  os_activity_scope_enter(v8, state);
  os_activity_scope_leave(state);

  v9 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(itemsCopy, "count")}];
    *state = 138412546;
    *&state[4] = v10;
    *&state[12] = 2112;
    *&state[14] = dCopy;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_INFO, "Adding %@ searchable items for bundleID: %@", state, 0x16u);
  }

  if ([dCopy isEqualToString:@"com.apple.mobilesafari"] && objc_msgSend(itemsCopy, "count") == 1)
  {
    firstObject = [itemsCopy firstObject];
    attributeSet = [firstObject attributeSet];
    contentURL = [attributeSet contentURL];

    if (contentURL)
    {
      keyPathForMostRecentSafariSpotlightDonation = [get_CDContextQueriesClass() keyPathForMostRecentSafariSpotlightDonation];
      mostRecentSafariSearchableItem = [get_CDContextQueriesClass() mostRecentSafariSearchableItem];
      v65[0] = mostRecentSafariSearchableItem;
      v66[0] = firstObject;
      safariURLInMostRecentSearchableItem = [get_CDContextQueriesClass() safariURLInMostRecentSearchableItem];
      v65[1] = safariURLInMostRecentSearchableItem;
      v66[1] = contentURL;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v66 forKeys:v65 count:2];
      userContext = [get_CDClientContextClass() userContext];
      [userContext setObject:v17 forKeyedSubscript:keyPathForMostRecentSafariSpotlightDonation];
    }
  }

  v19 = [itemsCopy count];
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v45 = MEMORY[0x1E695E0F0];
LABEL_12:

    goto LABEL_14;
  }

  if ([dCopy isEqualToString:@"com.apple.shortcuts"])
  {
    v20 = objc_alloc(MEMORY[0x1E69C5D18]);
    v64[0] = @"com.apple.duetexpertd.spotlightZKW";
    v64[1] = @"spotlightZKW";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v22 = [v20 initWithDomainsFromArray:v21];

    v59[0] = MEMORY[0x1E69E9820];
    v59[1] = 3221225472;
    v59[2] = __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke;
    v59[3] = &unk_1E736AB68;
    v60 = v22;
    v23 = v22;
    v45 = [itemsCopy _pas_filteredArrayWithTest:v59];

    itemsCopy = v23;
    goto LABEL_12;
  }

  v45 = itemsCopy;
LABEL_14:
  if (v19 != [v45 count])
  {
    v24 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v19 - objc_msgSend(v45, "count")}];
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v19];
      *state = 138412802;
      *&state[4] = v25;
      *&state[12] = 2112;
      *&state[14] = v26;
      *&state[22] = 2112;
      v63 = dCopy;
      _os_log_impl(&dword_191750000, v24, OS_LOG_TYPE_INFO, "Ignoring %@ of %@ searchable items added for bundleID: %@", state, 0x20u);
    }
  }

  if ([v45 count])
  {
    selfCopy2 = self;
    if (self && self->_recorder)
    {
      context = objc_autoreleasePoolPush();
      getUserNameOfDonator = [(_CDSpotlightItemRecorder *)self getUserNameOfDonator];
      v48 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v45, "count")}];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v45;
      v29 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (!v29)
      {
        goto LABEL_34;
      }

      v30 = *v56;
      while (1)
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v56 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v55 + 1) + 8 * i);
          context = [_CDSpotlightItemUtils interactionForSearchableItem:v32 nsUserName:getUserNameOfDonator, context];
          if (context)
          {
            [v48 addObject:context];
            v34 = +[_CDConstants mobileMessagesBundleId];
            if ([dCopy isEqualToString:v34])
            {
              isGroupChat = [context isGroupChat];

              if (!isGroupChat)
              {
                goto LABEL_32;
              }

              v34 = [_CDSpotlightItemUtils interactionForSearchableItem:v32 nsUserName:getUserNameOfDonator];
              uniqueIdentifier = [v32 uniqueIdentifier];
              v37 = +[_CDConstants contactsAutocompleteBundleId];
              v38 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:uniqueIdentifier bundleID:v37];
              [v34 setUuid:v38];

              v39 = +[_CDConstants contactsAutocompleteBundleId];
              [v34 setBundleId:v39];

              if (v34)
              {
                [v48 addObject:v34];
              }
            }
          }

LABEL_32:
        }

        v29 = [obj countByEnumeratingWithState:&v55 objects:v61 count:16];
        if (!v29)
        {
LABEL_34:

          [(_CDSpotlightItemRecorder *)self _addOrUpdateCoreDuetInteractions:v48 bundleID:dCopy];
          objc_autoreleasePoolPop(context);
          selfCopy2 = self;
          break;
        }
      }
    }

    *state = 0;
    *&state[8] = state;
    *&state[16] = 0x2020000000;
    LODWORD(v63) = [(_CDSpotlightItemRecorder *)selfCopy2 getUidOfDonator];
    v40 = objc_autoreleasePoolPush();
    batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79___CDSpotlightItemRecorder_addOrUpdateSearchableItems_bundleID_withCompletion___block_invoke_645;
    block[3] = &unk_1E736AB40;
    v50 = v45;
    v51 = dCopy;
    selfCopy3 = self;
    v54 = state;
    v53 = completionCopy;
    dispatch_sync(batchExecutionSourceQueue, block);

    objc_autoreleasePoolPop(v40);
    _Block_object_dispose(state, 8);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (void)deleteAllUserActivities:(id)activities
{
  v8 = *MEMORY[0x1E69E9840];
  activitiesCopy = activities;
  v5 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllUserActivities:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v7.opaque[0] = 0;
  v7.opaque[1] = 0;
  os_activity_scope_enter(v5, &v7);
  os_activity_scope_leave(&v7);

  v6 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7.opaque[0]) = 138412290;
    *(v7.opaque + 4) = activitiesCopy;
    _os_log_impl(&dword_191750000, v6, OS_LOG_TYPE_DEFAULT, "Deleting user activies with bundleID: %@", &v7, 0xCu);
  }

  [(_CDSpotlightItemRecorder *)self _deleteUserActivitiesWithPersistentIdentifiers:activitiesCopy bundleID:?];
}

- (void)deleteUserActivitiesWithPersistentIdentifiers:(id)identifiers bundleID:(id)d
{
  v14 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  v8 = _os_activity_create(&dword_191750000, "CoreDuet: deleteUserActivitiesWithPersistentIdentifiers:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v11 = 0;
  *&v11[8] = 0;
  os_activity_scope_enter(v8, v11);
  os_activity_scope_leave(v11);

  v9 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [identifiersCopy count];
    *v11 = 138412802;
    *&v11[4] = identifiersCopy;
    *&v11[12] = 1024;
    *&v11[14] = v10;
    v12 = 2112;
    v13 = dCopy;
    _os_log_impl(&dword_191750000, v9, OS_LOG_TYPE_DEFAULT, "Deleting user activies with persistent identifiers: %@, count: %u, bundleID: %@", v11, 0x1Cu);
  }

  if (identifiersCopy && [identifiersCopy count])
  {
    [(_CDSpotlightItemRecorder *)self _deleteUserActivitiesWithPersistentIdentifiers:identifiersCopy bundleID:dCopy];
  }
}

- (void)deleteSearchableItemsWithDomainIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion
{
  v48[2] = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  completionCopy = completion;
  v11 = [identifiersCopy count];
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {

    identifiersCopy = MEMORY[0x1E695E0F0];
  }

  else if ([dCopy isEqualToString:@"com.apple.shortcuts"])
  {
    v12 = objc_alloc(MEMORY[0x1E69C5D18]);
    v48[0] = @"com.apple.duetexpertd.spotlightZKW";
    v48[1] = @"spotlightZKW";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:2];
    v14 = [v12 initWithDomainsFromArray:v13];

    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke;
    v42[3] = &unk_1E7368CD0;
    v43 = v14;
    v15 = v14;
    v16 = [identifiersCopy _pas_filteredArrayWithTest:v42];

    identifiersCopy = v16;
  }

  else if ([dCopy isEqualToString:@"com.apple.mobilecal"] && self->_calendarAddedItemsFilter)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v45 = __Block_byref_object_copy__27;
    v46 = __Block_byref_object_dispose__27;
    v47 = 0;
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke_2;
    v41[3] = &unk_1E736ABE0;
    v41[4] = self;
    v41[5] = buf;
    v17 = [identifiersCopy _pas_filteredArrayWithTest:v41];

    _Block_object_dispose(buf, 8);
    identifiersCopy = v17;
  }

  if (v11 != [identifiersCopy count])
  {
    v18 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v11 - objc_msgSend(identifiersCopy, "count")}];
      v20 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v11];
      *buf = 138412802;
      *&buf[4] = v19;
      *&buf[12] = 2112;
      *&buf[14] = v20;
      *&buf[22] = 2112;
      v45 = dCopy;
      _os_log_impl(&dword_191750000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring %@ of %@ domain identifiers in call to delete searchable items for bundle %@", buf, 0x20u);
    }
  }

  if ([identifiersCopy count])
  {
    v21 = _os_activity_create(&dword_191750000, "CoreDuet: deleteSearchableItemsWithDomainIdentifiers:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(v21, buf);
    os_activity_scope_leave(buf);

    v22 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = [identifiersCopy count];
      *buf = 134218498;
      *&buf[4] = v23;
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      *&buf[22] = 2112;
      v45 = identifiersCopy;
      _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_DEFAULT, "Deleting %lu searchable items for bundleID: %@ with domain identifiers: %@", buf, 0x20u);
    }

    if (self && self->_recorder)
    {
      v24 = +[_CDInteractionPolicies disallowedCSSIBundleIds];
      v25 = [v24 containsObject:dCopy];

      if (v25)
      {
        v26 = +[_CDLogging spotlightReceiverChannel];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = dCopy;
          _os_log_impl(&dword_191750000, v26, OS_LOG_TYPE_DEFAULT, "Interaction store ignoring call to delete domain identifiers for %{public}@ (disallowed bundle ID)", buf, 0xCu);
        }
      }

      else
      {
        objc_initWeak(buf, self);
        batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
        v34 = MEMORY[0x1E69E9820];
        v35 = 3221225472;
        v36 = __95___CDSpotlightItemRecorder_deleteSearchableItemsWithDomainIdentifiers_bundleID_withCompletion___block_invoke_659;
        v37 = &unk_1E736AC08;
        objc_copyWeak(&v40, buf);
        v38 = dCopy;
        v39 = identifiersCopy;
        dispatch_sync(batchExecutionSourceQueue, &v34);

        objc_destroyWeak(&v40);
        objc_destroyWeak(buf);
      }
    }

    v28 = [&unk_1F05EF6E0 containsObject:{dCopy, v34, v35, v36, v37}];
    v29 = +[_CDLogging spotlightReceiverChannel];
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_INFO);
    if (v28)
    {
      if (v30)
      {
        *buf = 138412290;
        *&buf[4] = dCopy;
        _os_log_impl(&dword_191750000, v29, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using coalesced deletion path", buf, 0xCu);
      }

      coalescedDeletionManager = self->_coalescedDeletionManager;
      v32 = [_CDSpotlightDeletionOperation deletionForEventsWithDomainIdentifiers:identifiersCopy bundleId:dCopy completion:completionCopy];
      [(_CDSpotlightCoalescedDeletionManager *)coalescedDeletionManager processDeletionForOperation:v32];
    }

    else
    {
      if (v30)
      {
        *buf = 138412290;
        *&buf[4] = dCopy;
        _os_log_impl(&dword_191750000, v29, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using direct deletion path", buf, 0xCu);
      }

      v33 = [_DKQuery predicateForSpotlightEventsWithDomainIdentifiers:identifiersCopy bundleID:dCopy];
      [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v33 withCompletion:completionCopy];
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1, 0);
  }
}

- (void)deleteAllSearchableItemsWithBundleID:(id)d withCompletion:(id)completion
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v8 = +[_CDLogging spotlightReceiverChannel];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LODWORD(v18.opaque[0]) = 138543362;
    *(v18.opaque + 4) = dCopy;
    v9 = "Ignoring call to delete all searchable items for %{public}@ (File provider bundle ID)";
    goto LABEL_11;
  }

  v10 = [dCopy isEqualToString:@"com.apple.mobilecal"];
  if (self && v10 && self->_recorder)
  {
    LODWORD(v11) = 953267991;
    v12 = [MEMORY[0x1E69C5CC8] bloomFilterInMemoryWithNumberOfValuesN:13355 errorRateP:v11];
    calendarAddedItemsFilter = self->_calendarAddedItemsFilter;
    self->_calendarAddedItemsFilter = v12;
  }

  v14 = +[_CDConstants mobileMessagesBundleId];
  v15 = [dCopy isEqualToString:v14];

  if (v15)
  {
    v8 = +[_CDLogging spotlightReceiverChannel];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    LODWORD(v18.opaque[0]) = 138543362;
    *(v18.opaque + 4) = dCopy;
    v9 = "Ignoring call to delete all searchable items for %{public}@ (Messages bundle ID)";
LABEL_11:
    _os_log_impl(&dword_191750000, v8, OS_LOG_TYPE_DEFAULT, v9, &v18, 0xCu);
LABEL_12:

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_14;
  }

  v16 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllSearchableItemsWithBundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v18.opaque[0] = 0;
  v18.opaque[1] = 0;
  os_activity_scope_enter(v16, &v18);
  os_activity_scope_leave(&v18);

  v17 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v18.opaque[0]) = 138543362;
    *(v18.opaque + 4) = dCopy;
    _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_DEFAULT, "Deleting searchable items with bundleID: %{public}@", &v18, 0xCu);
  }

  [(_CDSpotlightItemRecorder *)self deleteAllItemsWithBundleID:dCopy isCSSIDeletion:1 completion:completionCopy];
LABEL_14:
}

- (void)deleteSearchableItemsWithIdentifiers:(id)identifiers bundleID:(id)d withCompletion:(id)completion
{
  v113 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  completionCopy = completion;
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v11 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
      *buf = 138412546;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring call to delete searchable items for %@ with %@ item identifiers", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    goto LABEL_18;
  }

  v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteSearchableItemsWithIdentifiers:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *buf = 0;
  *&buf[8] = 0;
  os_activity_scope_enter(v13, buf);
  os_activity_scope_leave(buf);

  v14 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
    *buf = 138412546;
    *&buf[4] = v15;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, "Deleting seachable items from %@ identifiers with bundleID: %@", buf, 0x16u);
  }

  if (self && self->_recorder)
  {
    v16 = +[_CDInteractionPolicies disallowedCSSIBundleIds];
    v17 = [v16 containsObject:dCopy];

    if (v17)
    {
      p_super = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        *&buf[4] = dCopy;
        _os_log_impl(&dword_191750000, p_super, OS_LOG_TYPE_DEFAULT, "Interaction store ignoring call to delete searchable items by ID for %{public}@ (disallowed bundle ID)", buf, 0xCu);
      }

LABEL_13:

      goto LABEL_14;
    }

    v25 = 0x1E7366000uLL;
    v26 = +[_CDConstants mobileMailBundleId];
    v27 = [dCopy containsString:v26];

    if (!v27)
    {
LABEL_64:
      v75 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
      p_super = &v75->super;
      if (v75)
      {
        v75->_type = 1;
      }

      [(_DKPredictionTimeline *)v75 setStartDate:identifiersCopy];
      [(_DKSyncWindow *)p_super setStartDate:dCopy];
      [(_CDSpotlightItemRecorder *)self submitOperation:?];
      v76 = +[(_CDConstants *)*(v25];
      v77 = [dCopy isEqualToString:v76];

      if (v77)
      {
        [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:identifiersCopy bundleID:self withCompletion:?];
      }

      v78 = +[_CDConstants mobileMessagesBundleId];
      v79 = [dCopy isEqualToString:v78];

      if (v79)
      {
        [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:identifiersCopy bundleID:self withCompletion:?];
      }

      goto LABEL_13;
    }

    selfCopy = self;
    v84 = completionCopy;
    v94 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    obj = identifiersCopy;
    v28 = [obj countByEnumeratingWithState:&v105 objects:v111 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v106;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v106 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v105 + 1) + 8 * i);
          v33 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:v32 bundleID:dCopy];
          [v94 addObject:v33];
          v34 = +[_CDConstants mobileMessagesBundleId];
          v35 = [dCopy isEqualToString:v34];

          if (v35)
          {
            v36 = +[_CDConstants contactsAutocompleteBundleId];
            v37 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:v32 bundleID:v36];

            [v94 addObject:v37];
          }
        }

        v29 = [obj countByEnumeratingWithState:&v105 objects:v111 count:16];
      }

      while (v29);
    }

    v38 = [MEMORY[0x1E696AE18] predicateWithFormat:@"((bundleId == %@) AND (uuid IN %@))", dCopy, v94];
    self = selfCopy;
    recorder = selfCopy->_recorder;
    v104 = 0;
    v40 = recorder;
    v82 = v38;
    v41 = [(_CDInteractionQuerying *)v40 queryInteractionsUsingPredicate:v38 sortDescriptors:0 limit:0 error:&v104];
    v42 = v104;

    if (v42)
    {
      v74 = +[_CDLogging spotlightReceiverChannel];
      if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
      {
        [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:bundleID:withCompletion:];
      }
    }

    else
    {
      if (![v41 count])
      {
LABEL_63:
        identifiersCopy = [v94 copy];

        goto LABEL_64;
      }

      v43 = MEMORY[0x1E696AE18];
      v44 = +[_CDConstants shareSheetTargetBundleIdMail];
      v45 = [v43 predicateWithFormat:@"((mechanism == %@) AND (targetBundleId == %@) AND (mailShareSheetDeletionCandidate == %@))", &unk_1F05EEF58, v44, &unk_1F05EEFA0];

      v46 = selfCopy->_recorder;
      v103 = 0;
      v47 = v46;
      v80 = v45;
      v48 = [(_CDInteractionQuerying *)v47 queryInteractionsUsingPredicate:v45 sortDescriptors:0 limit:0 error:&v103];
      v49 = v103;

      v81 = v49;
      if (v49)
      {
        v50 = +[_CDLogging spotlightReceiverChannel];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [_CDSpotlightItemRecorder deleteSearchableItemsWithIdentifiers:bundleID:withCompletion:];
        }
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v85 = v48;
      v89 = [v85 countByEnumeratingWithState:&v99 objects:v110 count:16];
      if (v89)
      {
        v87 = dCopy;
        v88 = *v100;
        v86 = v41;
        do
        {
          for (j = 0; j != v89; ++j)
          {
            if (*v100 != v88)
            {
              objc_enumerationMutation(v85);
            }

            v52 = *(*(&v99 + 1) + 8 * j);
            v53 = objc_autoreleasePoolPush();
            recipients = [v52 recipients];
            v55 = [recipients count];

            if (v55)
            {
              v90 = v53;
              v91 = j;
              v56 = MEMORY[0x1E695DFD8];
              v93 = v52;
              recipients2 = [v52 recipients];
              v58 = [recipients2 valueForKey:@"identifier"];
              v59 = [v56 setWithArray:v58];

              v97 = 0u;
              v98 = 0u;
              v95 = 0u;
              v96 = 0u;
              v60 = v41;
              v61 = [v60 countByEnumeratingWithState:&v95 objects:v109 count:16];
              if (v61)
              {
                v62 = v61;
                v63 = *v96;
                do
                {
                  for (k = 0; k != v62; ++k)
                  {
                    if (*v96 != v63)
                    {
                      objc_enumerationMutation(v60);
                    }

                    v65 = *(*(&v95 + 1) + 8 * k);
                    v66 = objc_autoreleasePoolPush();
                    if ([v65 direction])
                    {
                      recipients3 = [v65 recipients];
                      v68 = [recipients3 count];

                      if (v68)
                      {
                        v69 = MEMORY[0x1E695DFD8];
                        recipients4 = [v65 recipients];
                        v71 = [recipients4 valueForKey:@"identifier"];
                        v72 = [v69 setWithArray:v71];

                        if ([v59 isEqualToSet:v72])
                        {
                          uuid = [v93 uuid];
                          [v94 addObject:uuid];
                        }
                      }
                    }

                    objc_autoreleasePoolPop(v66);
                  }

                  v62 = [v60 countByEnumeratingWithState:&v95 objects:v109 count:16];
                }

                while (v62);
              }

              v41 = v86;
              dCopy = v87;
              v25 = 0x1E7366000;
              v53 = v90;
              j = v91;
            }

            objc_autoreleasePoolPop(v53);
          }

          v89 = [v85 countByEnumeratingWithState:&v99 objects:v110 count:16];
        }

        while (v89);
      }

      self = selfCopy;
      completionCopy = v84;
      v74 = v80;
      v42 = v81;
    }

    goto LABEL_63;
  }

LABEL_14:
  v19 = [&unk_1F05EF6F8 containsObject:dCopy];
  v20 = +[_CDLogging spotlightReceiverChannel];
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
  if (v19)
  {
    if (v21)
    {
      *buf = 138412290;
      *&buf[4] = dCopy;
      _os_log_impl(&dword_191750000, v20, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using coalesced deletion path", buf, 0xCu);
    }

    coalescedDeletionManager = self->_coalescedDeletionManager;
    v23 = [_CDSpotlightDeletionOperation deletionForEventsWithItemIdentifiers:identifiersCopy bundleId:dCopy completion:completionCopy];
    [(_CDSpotlightCoalescedDeletionManager *)coalescedDeletionManager processDeletionForOperation:v23];
  }

  else
  {
    if (v21)
    {
      *buf = 138412290;
      *&buf[4] = dCopy;
      _os_log_impl(&dword_191750000, v20, OS_LOG_TYPE_INFO, "Deleting searchable items for bundleId: %@ using direct deletion path", buf, 0xCu);
    }

    v24 = [_DKQuery predicateForSpotlightEventsWithItemIdentifiers:identifiersCopy bundleID:dCopy];
    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v24 withCompletion:completionCopy];
  }

LABEL_18:
}

- (void)deleteSearchableItemsSinceDate:(id)date bundleID:(id)d withCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  dCopy = d;
  completionCopy = completion;
  if ([dCopy isEqualToString:@"com.apple.icloud.drive.fileprovider"])
  {
    v11 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = _CDFormattedDate(dateCopy);
      *buf = 138412546;
      *&buf[4] = dCopy;
      *&buf[12] = 2112;
      *&buf[14] = v12;
      _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring call to delete searchable items for %@ since date %@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1, 0);
    }
  }

  else
  {
    v13 = _os_activity_create(&dword_191750000, "CoreDuet: deleteSearchableItemsSinceDate:bundleID:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    *buf = 0;
    *&buf[8] = 0;
    os_activity_scope_enter(v13, buf);
    os_activity_scope_leave(buf);

    v14 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = _CDFormattedDate(dateCopy);
      *buf = 138412546;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = dCopy;
      _os_log_impl(&dword_191750000, v14, OS_LOG_TYPE_DEFAULT, "Deleting searchable items since date %@ with bundleID %@", buf, 0x16u);
    }

    objc_initWeak(buf, self);
    batchExecutionSourceQueue = self->_batchExecutionSourceQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __83___CDSpotlightItemRecorder_deleteSearchableItemsSinceDate_bundleID_withCompletion___block_invoke;
    block[3] = &unk_1E7367B60;
    v17 = dateCopy;
    v21 = v17;
    v18 = dCopy;
    v22 = v18;
    objc_copyWeak(&v23, buf);
    dispatch_sync(batchExecutionSourceQueue, block);
    v19 = [_DKQuery predicateForSpotlightEventsWithBundleID:v18 sinceDate:v17];
    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v19 withCompletion:completionCopy];

    objc_destroyWeak(&v23);
    objc_destroyWeak(buf);
  }
}

- (void)startIntentDeletionForContactDeletions
{
  [(_DKContactsPrivacyMaintainer *)self->_contactsPrivacyMaintainer registerContactDeletionNotifications];
  contactsPrivacyMaintainer = self->_contactsPrivacyMaintainer;

  [(_DKContactsPrivacyMaintainer *)contactsPrivacyMaintainer scheduleIntentsPruningXPCActivity];
}

- (void)deleteInteractionsWithIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithIdentifiers:bundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v19 = 0;
  *&v19[8] = 0;
  os_activity_scope_enter(v14, v19);
  os_activity_scope_leave(v19);

  v15 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(identifiersCopy, "count")}];
    *v19 = 138412546;
    *&v19[4] = v16;
    *&v19[12] = 2112;
    *&v19[14] = dCopy;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Deleting interactions from %@ identifiers with bundleID: %@", v19, 0x16u);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]))
  {
    v17 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *v19 = 0;
      _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_INFO, "Request to delete items with identifiers with protectionClass A or B when in class C, D.", v19, 2u);
    }
  }

  [(_CDSpotlightItemRecorder *)self deleteSearchableItemsWithIdentifiers:identifiersCopy bundleID:dCopy withCompletion:completionCopy];
  v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];
  [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentIdentifiers:v18 bundleId:dCopy];
}

- (void)deleteInteractionsWithGroupIdentifiers:(id)identifiers bundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v14 = _os_activity_create(&dword_191750000, "CoreDuet: deleteInteractionsWithGroupIdentifiers:bundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  *v21 = 0;
  *&v21[8] = 0;
  os_activity_scope_enter(v14, v21);
  os_activity_scope_leave(v21);

  v15 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 138412546;
    *&v21[4] = identifiersCopy;
    *&v21[12] = 2112;
    *&v21[14] = dCopy;
    _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Deleting interactions with group identifiers %@, bundleID: %@", v21, 0x16u);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]))
  {
    v16 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *v21 = 0;
      _os_log_impl(&dword_191750000, v16, OS_LOG_TYPE_INFO, "Request to delete items with identifiers with protectionClass A or B when in class C, D.", v21, 2u);
    }
  }

  [(_CDSpotlightItemRecorder *)self deleteSearchableItemsWithDomainIdentifiers:identifiersCopy bundleID:dCopy withCompletion:completionCopy];
  v17 = +[_CDConstants mobileMessagesBundleId];
  v18 = [dCopy isEqualToString:v17];

  if (v18)
  {
    v19 = +[_CDConstants contactsAutocompleteBundleId];
    [(_CDSpotlightItemRecorder *)self deleteSearchableItemsWithDomainIdentifiers:identifiersCopy bundleID:v19 withCompletion:0];
  }

  v20 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:identifiersCopy];
  [getBMLibraryStreamsPrunerClass() pruneWithDeletedIntentGroupIdentifiers:v20 bundleId:dCopy];
}

- (void)runOperation:(uint64_t)operation
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (!operation || !*(operation + 144))
  {
    goto LABEL_27;
  }

  if (!v3)
  {
LABEL_6:
    v6 = +[_CDInteractionPolicies interactionPolicies];
    v7 = v6;
    if (v4)
    {
      v8 = v4[1];
    }

    else
    {
      v8 = 0;
    }

    v9 = [v6 filterAndModifyInteractionsWithPolicies:v8 enforceDataLimits:1 enforcePrivacy:1];

    [*(operation + 144) recordInteractions:v9];
    goto LABEL_26;
  }

  v5 = v3[3];
  if (v5 == 1)
  {
    v10 = v3[1];
    [v10 count];
    v11 = [OUTLINED_FUNCTION_5_1() arrayWithCapacity:?];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v9 = v10;
    v12 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v39;
      do
      {
        v15 = 0;
        do
        {
          if (*v39 != v14)
          {
            objc_enumerationMutation(v9);
          }

          v16 = *(*(&v38 + 1) + 8 * v15);
          if ([v4[2] isEqualToString:@"com.apple.mobilemail"])
          {
            [v11 addObject:v16];
          }

          else
          {
            v17 = [_CDSpotlightItemUtils interactionUUIDForSearchableItemWithUID:v16 bundleID:v4[2]];
            [v11 addObject:v17];
          }

          ++v15;
        }

        while (v13 != v15);
        v13 = [v9 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v13);
    }

    v18 = v4[2];
    v19 = +[_CDConstants mobileMessagesBundleId];
    v20 = [v18 isEqualToString:v19];

    if (v20)
    {
      v21 = +[_CDConstants shareSheetTargetBundleIdMessages];
    }

    else
    {
      v22 = v4[2];
      OUTLINED_FUNCTION_19_7();
      v23 = +[_CDConstants mobileMailBundleId];
      v24 = [v20 isEqualToString:v23];

      if (!v24)
      {
        v26 = 0x1E695D000uLL;
        goto LABEL_25;
      }

      v21 = +[_CDConstants shareSheetTargetBundleIdMail];
    }

    v25 = v21;
    v26 = 0x1E695D000;

    v18 = v25;
LABEL_25:
    v27 = objc_alloc(*(v26 + 3952));
    v28 = MEMORY[0x1E696AE18];
    v29 = v4[2];
    v30 = [v28 predicateWithFormat:@"mechanism != %@ && bundleId == %@", &unk_1F05EEF58, v29, v38];
    v31 = [MEMORY[0x1E696AE18] predicateWithFormat:@"mechanism == %@ && targetBundleId == %@", &unk_1F05EEF58, v18];

    v32 = [v27 initWithObjects:{v30, v31, 0}];
    v33 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v32];
    v34 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v11];
    v35 = MEMORY[0x1E696AB28];
    v42[0] = v33;
    v42[1] = v34;
    v36 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
    v37 = [v35 andPredicateWithSubpredicates:v36];

    [*(operation + 144) deleteInteractionsMatchingPredicate:v37 sortDescriptors:MEMORY[0x1E695E0F0] limit:0 debuggingReason:@"_CDSpotlightItemRecorderOperationTypeDelete" error:0];
LABEL_26:

    goto LABEL_27;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

LABEL_27:
}

- (void)_enqueueOperation:(uint64_t)operation
{
  v3 = a2;
  v4 = v3;
  if (operation && *(operation + 144))
  {
    v5 = *(operation + 24);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46___CDSpotlightItemRecorder__enqueueOperation___block_invoke;
    v6[3] = &unk_1E7367710;
    v6[4] = operation;
    v7 = v3;
    dispatch_sync(v5, v6);
  }
}

- (void)submitOperation:(void *)operation
{
  v3 = a2;
  v4 = v3;
  if (operation && operation[18])
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v5 = operation[3];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44___CDSpotlightItemRecorder_submitOperation___block_invoke;
    block[3] = &unk_1E7367248;
    v16 = &v17;
    block[4] = operation;
    v6 = v3;
    v15 = v6;
    dispatch_sync(v5, block);
    if (*(v18 + 24) == 1)
    {
      objc_initWeak(&location, operation);
      v7 = operation[2];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __44___CDSpotlightItemRecorder_submitOperation___block_invoke_2;
      v10[3] = &unk_1E73675D0;
      objc_copyWeak(&v12, &location);
      v11 = v6;
      dispatch_sync(v7, v10);

      objc_destroyWeak(&v12);
      objc_destroyWeak(&location);
    }

    else
    {
      v8 = OUTLINED_FUNCTION_11_9();
      [(_CDSpotlightItemRecorder *)v8 _enqueueOperation:v9];
    }

    _Block_object_dispose(&v17, 8);
  }
}

- (void)saveRateLimitedEvents:(int)events donatorUid:(void *)uid responseQueue:(void *)queue withCompletion:
{
  HIDWORD(v389) = events;
  v691 = *MEMORY[0x1E69E9840];
  v8 = a2;
  uidCopy = uid;
  queueCopy = queue;
  selfCopy = self;
  if (self)
  {
    if ([v8 count])
    {
      v11 = *(self + 80);
      v392 = queueCopy;
      if (v11)
      {
        v12 = [v11 filterObjectsByEnforcingRateLimit:v8];
      }

      else
      {
        v12 = [v8 copy];
      }

      v394 = v12;
      [v12 count];
      if (queueCopy != [OUTLINED_FUNCTION_16_6() count])
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          [v394 count];
          *buf = 134218240;
          v688 = v13;
          v689 = 2048;
          v690 = [OUTLINED_FUNCTION_16_6() count];
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "SpotlightRecorder rate limiting kicked in - saving %lu of %lu objects.", buf, 0x16u);
        }
      }

      v393 = uidCopy;
      v15 = [*(self + 88) enforcePrivacy:v394];
      v16 = [v15 count];
      if (v16 != [v8 count])
      {
        v17 = MEMORY[0x1E69E9C10];
        v18 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v19 = [v15 count];
          v20 = [v394 count];
          *buf = 134218240;
          v688 = v19;
          v689 = 2048;
          v690 = v20;
          _os_log_impl(&dword_191750000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "SpotlightRecorder privacy policy kicked in - saving %lu of %lu objects.", buf, 0x16u);
        }
      }

      v388 = v8;
      v21 = *(self + 72);
      v682[0] = MEMORY[0x1E69E9820];
      v682[1] = 3221225472;
      v682[2] = __90___CDSpotlightItemRecorder_saveRateLimitedEvents_donatorUid_responseQueue_withCompletion___block_invoke_2;
      v682[3] = &unk_1E736AAD0;
      v684 = v392;
      v22 = v15;
      v683 = v22;
      [v21 saveObjects:v22 tracker:&__block_literal_global_78 responseQueue:v393 withCompletion:v682];
      startDate2 = 0x1E695D000;
      v391 = objc_opt_new();
      v390 = objc_opt_new();
      v24 = objc_opt_new();
      v678 = 0u;
      v679 = 0u;
      v680 = 0u;
      v681 = 0u;
      obj = v22;
      v657 = [obj countByEnumeratingWithState:&v678 objects:v686 count:16];
      if (v657)
      {
        v25 = MEMORY[0x1E69E9C10];
        v656 = *v679;
        v633 = v24;
        do
        {
          v26 = 0;
          do
          {
            if (*v679 != v656)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v678 + 1) + 8 * v26);
            v28 = v25;
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v688 = v27;
              _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "SpotlightRecorder trying to donate to biome with event: %@", buf, 0xCu);
            }

            stream = [v27 stream];
            [stream name];
            objc_claimAutoreleasedReturnValue();
            appRelevantShortcutsStream = [OUTLINED_FUNCTION_20_8() appRelevantShortcutsStream];
            name = [appRelevantShortcutsStream name];
            v32 = [OUTLINED_FUNCTION_11_0() isEqual:?];

            if (!v32)
            {
              stream2 = [v27 stream];
              [stream2 name];
              objc_claimAutoreleasedReturnValue();
              appIntentsStream = [OUTLINED_FUNCTION_20_8() appIntentsStream];
              name2 = [appIntentsStream name];
              v44 = [OUTLINED_FUNCTION_11_0() isEqual:?];

              if (v44)
              {
                v661 = v26;
                metadata = [v27 metadata];
                v46 = v27;
                source = [v27 source];
                groupID = [source groupID];

                v48 = +[_DKIntentMetadataKey serializedInteraction];
                v49 = [metadata objectForKeyedSubscript:v48];
                null = [MEMORY[0x1E695DFB0] null];
                v667 = metadata;
                if (v49 == null)
                {
                  v652 = 0;
                }

                else
                {
                  v51 = +[_DKIntentMetadataKey serializedInteraction];
                  v652 = [metadata objectForKeyedSubscript:v51];
                }

                v79 = +[_DKIntentMetadataKey intentClass];
                v80 = [metadata objectForKeyedSubscript:v79];
                null2 = [MEMORY[0x1E695DFB0] null];
                if (v80 == null2)
                {
                  v83 = 0;
                }

                else
                {
                  v82 = +[_DKIntentMetadataKey intentClass];
                  v83 = [metadata objectForKeyedSubscript:v82];
                }

                v85 = objc_opt_class();
                v86 = NSStringFromClass(v85);
                v87 = [v83 isEqualToString:v86];

                if (v87)
                {
                  v88 = MEMORY[0x1E696ACD0];
                  v89 = objc_opt_class();
                  v677 = 0;
                  v86 = [v88 unarchivedObjectOfClass:v89 fromData:v652 error:&v677];
                  v90 = metadata;
                  v659 = v677;
                  if (v659 || ([v86 intent], v91 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v91, (isKindOfClass & 1) == 0))
                  {
                    v100 = v46;
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "SpotlightRecorder unable to unarchive serialized interaction for INStartCallIntent", buf, 2u);
                    }
                  }

                  else
                  {
                    intent = [v86 intent];
                    contacts = [intent contacts];
                    v95 = [contacts count];

                    if (v95)
                    {
                      contacts2 = [intent contacts];
                      v97 = [contacts2 objectAtIndexedSubscript:0];
                      personHandle = [v97 personHandle];
                      value = [personHandle value];

                      groupID = value;
                    }

                    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 0;
                      _os_log_debug_impl(&dword_191750000, v25, OS_LOG_TYPE_DEBUG, "SpotlightRecorder INStartCallIntent received with no contacts", buf, 2u);
                    }

                    v90 = v667;
                    v100 = v46;
                  }
                }

                else
                {
                  v659 = 0;
                  v90 = metadata;
                  v100 = v46;
                }

                v611 = objc_alloc(MEMORY[0x1E698EA98]);
                startDate = [v100 startDate];
                source2 = [v100 source];
                bundleID = [source2 bundleID];
                source3 = [v100 source];
                sourceID = [source3 sourceID];
                +[_DKIntentMetadataKey intentVerb];
                objc_claimAutoreleasedReturnValue();
                v101 = OUTLINED_FUNCTION_9_10();
                v623 = v102;
                v103 = [v101 objectForKeyedSubscript:?];
                null3 = [MEMORY[0x1E695DFB0] null];
                if (v103 == null3)
                {
                  v608 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey intentVerb];
                  objc_claimAutoreleasedReturnValue();
                  v104 = OUTLINED_FUNCTION_9_10();
                  v580 = v105;
                  v576 = [v104 objectForKeyedSubscript:?];
                  v608 = v576;
                }

                +[_DKIntentMetadataKey intentType];
                objc_claimAutoreleasedReturnValue();
                v106 = OUTLINED_FUNCTION_9_10();
                v614 = v107;
                [v106 objectForKeyedSubscript:?];
                objc_claimAutoreleasedReturnValue();
                [OUTLINED_FUNCTION_3_20() null];
                v637 = v640 = v86;
                if (v86 == v637)
                {
                  v110 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey intentType];
                  objc_claimAutoreleasedReturnValue();
                  v108 = OUTLINED_FUNCTION_9_10();
                  v579 = v109;
                  v110 = [v108 objectForKeyedSubscript:?];
                  v574 = v110;
                }

                integerValue = [v110 integerValue];
                if (integerValue >= 4)
                {
                  v86 = +[_CDLogging spotlightReceiverChannel];
                  v112 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
                  if (v112)
                  {
                    OUTLINED_FUNCTION_14_7(v112, v113, v114, v115, v116, v117, v118, v119, v120, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v121);
                    _os_log_error_impl(&dword_191750000, v86, OS_LOG_TYPE_ERROR, "unable to convert _INIntentType enum value: %ld", v344, 0xCu);
                  }

                  integerValue = 0;
                }

                +[_DKIntentMetadataKey intentHandlingStatus];
                objc_claimAutoreleasedReturnValue();
                v122 = OUTLINED_FUNCTION_9_10();
                v605 = v123;
                [v122 objectForKeyedSubscript:?];
                objc_claimAutoreleasedReturnValue();
                null4 = [OUTLINED_FUNCTION_3_20() null];
                v596 = integerValue;
                if (v86 == null4)
                {
                  v126 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey intentHandlingStatus];
                  objc_claimAutoreleasedReturnValue();
                  v124 = OUTLINED_FUNCTION_9_10();
                  v578 = v125;
                  v126 = [v124 objectForKeyedSubscript:?];
                  v573 = v126;
                }

                v602 = v86;
                integerValue2 = [v126 integerValue];
                if (integerValue2 >= 7)
                {
                  v86 = +[_CDLogging spotlightReceiverChannel];
                  v128 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
                  if (v128)
                  {
                    OUTLINED_FUNCTION_14_7(v128, v129, v130, v131, v132, v133, v134, v135, v136, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v137);
                    _os_log_error_impl(&dword_191750000, v86, OS_LOG_TYPE_ERROR, "unable to convert INIntentHandlingStatus enum value: %ld", v345, 0xCu);
                  }

                  v590 = 0;
                }

                else
                {
                  v590 = integerValue2 + 1;
                }

                source4 = [v100 source];
                itemID = [source4 itemID];
                +[_DKIntentMetadataKey donatedBySiri];
                objc_claimAutoreleasedReturnValue();
                v138 = [OUTLINED_FUNCTION_16_6() objectForKeyedSubscript:v86];
                [MEMORY[0x1E695DFB0] null];
                v140 = v139 = v90;
                v620 = v103;
                startDate2 = v83;
                if (v138 == v140)
                {
                  v143 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey donatedBySiri];
                  objc_claimAutoreleasedReturnValue();
                  v141 = OUTLINED_FUNCTION_5_1();
                  v577 = v142;
                  v143 = [v141 objectForKeyedSubscript:?];
                  v572 = v143;
                }

                v144 = +[_DKIntentMetadataKey direction];
                v145 = [v139 objectForKeyedSubscript:v144];
                null5 = [MEMORY[0x1E695DFB0] null];
                if (v145 == null5)
                {
                  v149 = 0;
                }

                else
                {
                  +[_DKIntentMetadataKey direction];
                  objc_claimAutoreleasedReturnValue();
                  v147 = OUTLINED_FUNCTION_5_1();
                  v575 = v148;
                  v149 = [v147 objectForKeyedSubscript:?];
                  v571 = v149;
                }

                integerValue3 = [v149 integerValue];
                v151 = integerValue3;
                if (integerValue3 >= 4)
                {
                  v153 = +[_CDLogging spotlightReceiverChannel];
                  if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
                  {
                    v346 = [MEMORY[0x1E696AD98] numberWithInteger:v151];
                    *buf = 138412290;
                    v688 = v346;
                    _os_log_error_impl(&dword_191750000, v153, OS_LOG_TYPE_ERROR, "unable to convert _CDInteractionDirection enum value: %@", buf, 0xCu);
                  }

                  v152 = 0;
                }

                else
                {
                  v152 = dword_19190EF40[integerValue3];
                }

                v364 = groupID;
                LODWORD(v363) = v152;
                v361 = itemID;
                v362 = v143;
                v360 = v652;
                LODWORD(v359) = v590;
                v154 = [v611 initWithAbsoluteTimestamp:startDate bundleID:bundleID sourceID:sourceID intentClass:startDate2 intentVerb:v608 intentType:v596 handlingStatus:v359 interaction:? itemID:? donatedBySiri:? interactionDirection:? groupIdentifier:?];
                v26 = v661;
                if (v145 != null5)
                {
                }

                v24 = v633;
                if (v138 != v140)
                {
                }

                v25 = MEMORY[0x1E69E9C10];
                if (v602 != null4)
                {
                }

                metadata4 = v667;
                value4 = groupID;
                if (v640 != v637)
                {
                }

                if (v620 != null3)
                {
                }

                [*(selfCopy + 152) sendEvent:v154];
              }

              else
              {
                stream3 = [v27 stream];
                [stream3 name];
                objc_claimAutoreleasedReturnValue();
                appActivityStream = [OUTLINED_FUNCTION_20_8() appActivityStream];
                name3 = [appActivityStream name];
                v55 = [OUTLINED_FUNCTION_11_0() isEqual:?];

                if (v55)
                {
                  v653 = v27;
                  metadata2 = [v27 metadata];
                  v57 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  [MEMORY[0x1E695DFB0] null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v666 = 0;
                  }

                  else
                  {
                    v666 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  }

                  v155 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  [MEMORY[0x1E695DFB0] null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v156 = 0;
                  }

                  else
                  {
                    v156 = [metadata2 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  }

                  v545 = objc_alloc(MEMORY[0x1E698EA88]);
                  value2 = [v27 value];
                  stringValue = [value2 stringValue];
                  v563 = +[_DKApplicationActivityMetadataKey activityType];
                  v157 = [metadata2 objectForKeyedSubscript:?];
                  [MEMORY[0x1E695DFB0] null];
                  v559 = v561 = v157;
                  if (v157 == v559)
                  {
                    v542 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey activityType];
                    objc_claimAutoreleasedReturnValue();
                    v158 = OUTLINED_FUNCTION_8_4();
                    v501 = v159;
                    v497 = [v158 objectForKeyedSubscript:?];
                    v542 = v497;
                  }

                  +[_DKApplicationActivityMetadataKey beginningOfActivity];
                  objc_claimAutoreleasedReturnValue();
                  v160 = OUTLINED_FUNCTION_8_4();
                  v557 = v161;
                  v162 = [v160 objectForKeyedSubscript:?];
                  null6 = [MEMORY[0x1E695DFB0] null];
                  if (v162 == null6)
                  {
                    v539 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey beginningOfActivity];
                    objc_claimAutoreleasedReturnValue();
                    v163 = OUTLINED_FUNCTION_8_4();
                    v500 = v164;
                    v495 = [v163 objectForKeyedSubscript:?];
                    v539 = v495;
                  }

                  +[_DKApplicationActivityMetadataKey contentDescription];
                  objc_claimAutoreleasedReturnValue();
                  v165 = OUTLINED_FUNCTION_8_4();
                  v553 = v166;
                  [v165 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v644 = v647 = metadata2;
                  if (metadata2 == v644)
                  {
                    v538 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey contentDescription];
                    objc_claimAutoreleasedReturnValue();
                    v167 = OUTLINED_FUNCTION_8_4();
                    v499 = v168;
                    v493 = [v167 objectForKeyedSubscript:?];
                    v538 = v493;
                  }

                  +[_DKApplicationActivityMetadataKey expirationDate];
                  objc_claimAutoreleasedReturnValue();
                  v169 = OUTLINED_FUNCTION_8_4();
                  v551 = v170;
                  [v169 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v638 = v641 = metadata2;
                  if (metadata2 == v638)
                  {
                    v535 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey expirationDate];
                    objc_claimAutoreleasedReturnValue();
                    v171 = OUTLINED_FUNCTION_8_4();
                    v498 = v172;
                    v491 = [v171 objectForKeyedSubscript:?];
                    v535 = v491;
                  }

                  +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                  objc_claimAutoreleasedReturnValue();
                  v173 = OUTLINED_FUNCTION_8_4();
                  v549 = v174;
                  [v173 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v630 = v635 = metadata2;
                  if (metadata2 == v630)
                  {
                    v533 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                    objc_claimAutoreleasedReturnValue();
                    v175 = OUTLINED_FUNCTION_8_4();
                    v496 = v176;
                    v489 = [v175 objectForKeyedSubscript:?];
                    v533 = v489;
                  }

                  +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                  objc_claimAutoreleasedReturnValue();
                  v177 = OUTLINED_FUNCTION_8_4();
                  v548 = v178;
                  [v177 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v624 = v627 = metadata2;
                  if (metadata2 == v624)
                  {
                    v530 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                    objc_claimAutoreleasedReturnValue();
                    v179 = OUTLINED_FUNCTION_8_4();
                    v494 = v180;
                    v487 = [v179 objectForKeyedSubscript:?];
                    v530 = v487;
                  }

                  +[_DKApplicationActivityMetadataKey itemIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v181 = OUTLINED_FUNCTION_8_4();
                  v544 = v182;
                  [v181 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v618 = v621 = metadata2;
                  if (metadata2 == v618)
                  {
                    v527 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey itemIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v183 = OUTLINED_FUNCTION_8_4();
                    v492 = v184;
                    v485 = [v183 objectForKeyedSubscript:?];
                    v527 = v485;
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                  objc_claimAutoreleasedReturnValue();
                  v185 = OUTLINED_FUNCTION_8_4();
                  v541 = v186;
                  [v185 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v612 = v615 = metadata2;
                  if (metadata2 == v612)
                  {
                    v526 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                    objc_claimAutoreleasedReturnValue();
                    v187 = OUTLINED_FUNCTION_8_4();
                    v490 = v188;
                    v483 = [v187 objectForKeyedSubscript:?];
                    v526 = v483;
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v189 = OUTLINED_FUNCTION_8_4();
                  v536 = v190;
                  [v189 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v606 = v609 = metadata2;
                  if (metadata2 == v606)
                  {
                    v523 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v191 = OUTLINED_FUNCTION_8_4();
                    v488 = v192;
                    v481 = [v191 objectForKeyedSubscript:?];
                    v523 = v481;
                  }

                  +[_DKApplicationActivityMetadataKey shortcutAvailability];
                  objc_claimAutoreleasedReturnValue();
                  v193 = OUTLINED_FUNCTION_8_4();
                  v532 = v194;
                  [v193 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v600 = v603 = metadata2;
                  if (metadata2 == v600)
                  {
                    v519 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey shortcutAvailability];
                    objc_claimAutoreleasedReturnValue();
                    v195 = OUTLINED_FUNCTION_8_4();
                    v486 = v196;
                    v479 = [v195 objectForKeyedSubscript:?];
                    v519 = v479;
                  }

                  +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                  objc_claimAutoreleasedReturnValue();
                  v197 = OUTLINED_FUNCTION_8_4();
                  v529 = v198;
                  [v197 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v594 = v597 = metadata2;
                  if (metadata2 == v594)
                  {
                    v517 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                    objc_claimAutoreleasedReturnValue();
                    v199 = OUTLINED_FUNCTION_8_4();
                    v484 = v200;
                    v477 = [v199 objectForKeyedSubscript:?];
                    v517 = v477;
                  }

                  +[_DKApplicationActivityMetadataKey title];
                  objc_claimAutoreleasedReturnValue();
                  v201 = OUTLINED_FUNCTION_8_4();
                  v524 = v202;
                  [v201 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v587 = v591 = metadata2;
                  if (metadata2 == v587)
                  {
                    v510 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey title];
                    objc_claimAutoreleasedReturnValue();
                    v203 = OUTLINED_FUNCTION_8_4();
                    v482 = v204;
                    v475 = [v203 objectForKeyedSubscript:?];
                    v510 = v475;
                  }

                  +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                  objc_claimAutoreleasedReturnValue();
                  v205 = OUTLINED_FUNCTION_8_4();
                  v521 = v206;
                  [v205 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v583 = v585 = metadata2;
                  if (metadata2 == v583)
                  {
                    v504 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                    objc_claimAutoreleasedReturnValue();
                    v207 = OUTLINED_FUNCTION_8_4();
                    v480 = v208;
                    v474 = [v207 objectForKeyedSubscript:?];
                    v504 = v474;
                  }

                  +[_DKApplicationActivityMetadataKey userActivityUUID];
                  objc_claimAutoreleasedReturnValue();
                  v209 = OUTLINED_FUNCTION_8_4();
                  v516 = v210;
                  [v209 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_6_17() null];
                  v514 = metadata2;
                  v662 = v26;
                  v659 = v156;
                  v512 = v555 = v162;
                  if (metadata2 == v512)
                  {
                    v502 = 0;
                  }

                  else
                  {
                    +[_DKApplicationActivityMetadataKey userActivityUUID];
                    objc_claimAutoreleasedReturnValue();
                    v211 = OUTLINED_FUNCTION_8_4();
                    v478 = v212;
                    v473 = [v211 objectForKeyedSubscript:?];
                    v502 = v473;
                  }

                  v213 = metadata2;
                  source5 = [v27 source];
                  sourceID2 = [source5 sourceID];
                  source6 = [v27 source];
                  bundleID2 = [source6 bundleID];
                  source7 = [v27 source];
                  itemID2 = [source7 itemID];
                  source8 = [v653 source];
                  groupID2 = [source8 groupID];
                  v219 = MEMORY[0x1E695DF00];
                  [v666 doubleValue];
                  v220 = [v219 dateWithTimeIntervalSinceReferenceDate:?];
                  v221 = [v213 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.externalID"];
                  null7 = [MEMORY[0x1E695DFB0] null];
                  v669 = v213;
                  if (v221 == null7)
                  {
                    v223 = 0;
                  }

                  else
                  {
                    v223 = [v213 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.externalID"];
                    v476 = v223;
                  }

                  v224 = MEMORY[0x1E695DF00];
                  [v659 doubleValue];
                  [v224 dateWithTimeIntervalSinceReferenceDate:?];
                  v374 = v373 = v223;
                  v371 = groupID2;
                  v372 = v220;
                  v369 = bundleID2;
                  v370 = itemID2;
                  v367 = v502;
                  v368 = sourceID2;
                  v365 = v510;
                  v366 = v504;
                  v363 = v519;
                  v364 = v517;
                  v361 = v526;
                  v362 = v523;
                  v359 = v530;
                  v360 = v527;
                  v546 = [v545 initWithBundleID:stringValue activityType:v542 beginningOfActivity:v539 contentDescription:v538 expirationDate:v535 isEligibleForPrediction:v533 isPubliclyIndexable:? itemIdentifier:? itemRelatedContentURL:? itemRelatedUniqueIdentifier:? shortcutAvailability:? suggestedInvocationPhrase:? title:? userActivityRequiredString:? userActivityUUID:? sourceID:? sourceBundleID:? sourceItemID:? sourceGroupID:? calendarUserActivityDate:? calendarUserActivityExternalID:? calendarUserActivityEndDate:?];

                  if (v221 != null7)
                  {
                  }

                  if (v514 != v512)
                  {
                  }

                  v24 = v633;
                  v25 = MEMORY[0x1E69E9C10];
                  v26 = v662;
                  metadata4 = v669;
                  if (v585 != v583)
                  {
                  }

                  if (v591 != v587)
                  {
                  }

                  if (v597 != v594)
                  {
                  }

                  if (v603 != v600)
                  {
                  }

                  if (v609 != v606)
                  {
                  }

                  if (v615 != v612)
                  {
                  }

                  if (v621 != v618)
                  {
                  }

                  if (v627 != v624)
                  {
                  }

                  if (v635 != v630)
                  {
                  }

                  if (v641 != v638)
                  {
                  }

                  if (v647 != v644)
                  {
                  }

                  if (v555 != null6)
                  {
                  }

                  if (v561 != v559)
                  {
                  }

                  v225 = *(selfCopy + 160);
                  startDate2 = [v653 startDate];
                  [startDate2 timeIntervalSinceReferenceDate];
                  [v225 sendEvent:v546 timestamp:?];
                }

                else
                {
                  stream4 = [v27 stream];
                  [stream4 name];
                  objc_claimAutoreleasedReturnValue();
                  appLocationActivityStream = [OUTLINED_FUNCTION_20_8() appLocationActivityStream];
                  name4 = [appLocationActivityStream name];
                  v62 = [OUTLINED_FUNCTION_11_0() isEqual:?];

                  if (!v62)
                  {
                    goto LABEL_298;
                  }

                  v654 = v27;
                  metadata3 = [v27 metadata];
                  v64 = [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  [MEMORY[0x1E695DFB0] null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v666 = 0;
                  }

                  else
                  {
                    v666 = [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.date"];
                  }

                  [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_20() null];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_21_8();
                  if (v58)
                  {
                    v659 = 0;
                  }

                  else
                  {
                    v659 = [metadata3 objectForKeyedSubscript:@"com.apple.calendarUIKit.userActivity.endDate"];
                  }

                  +[_DKLocationApplicationActivityMetadataKey URL];
                  objc_claimAutoreleasedReturnValue();
                  v226 = [OUTLINED_FUNCTION_16_6() objectForKeyedSubscript:v64];
                  null8 = [MEMORY[0x1E695DFB0] null];
                  v670 = metadata3;
                  if (v226 == null8)
                  {
                    v229 = 0;
                  }

                  else
                  {
                    v228 = +[_DKLocationApplicationActivityMetadataKey URL];
                    metadata3 = [metadata3 objectForKeyedSubscript:v228];

                    v229 = metadata3;
                  }

                  if (v229)
                  {
                    v651 = [MEMORY[0x1E695DFF8] URLWithString:v229];
                  }

                  else
                  {
                    v651 = 0;
                  }

                  objc_alloc(MEMORY[0x1E698EB28]);
                  value3 = [v27 value];
                  [value3 stringValue];
                  objc_claimAutoreleasedReturnValue();
                  +[_DKApplicationActivityMetadataKey activityType];
                  objc_claimAutoreleasedReturnValue();
                  v230 = OUTLINED_FUNCTION_12();
                  v515 = v231;
                  v232 = [v230 objectForKeyedSubscript:?];
                  null9 = [MEMORY[0x1E695DFB0] null];
                  if (v232 != null9)
                  {
                    +[_DKApplicationActivityMetadataKey activityType];
                    objc_claimAutoreleasedReturnValue();
                    v233 = OUTLINED_FUNCTION_12();
                    v445 = v234;
                    v441 = [v233 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey beginningOfActivity];
                  objc_claimAutoreleasedReturnValue();
                  v235 = OUTLINED_FUNCTION_12();
                  v509 = v236;
                  [v235 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v648 = v507 = metadata3;
                  if (metadata3 != v648)
                  {
                    +[_DKApplicationActivityMetadataKey beginningOfActivity];
                    objc_claimAutoreleasedReturnValue();
                    v237 = OUTLINED_FUNCTION_12();
                    v444 = v238;
                    v439 = [v237 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey contentDescription];
                  objc_claimAutoreleasedReturnValue();
                  v239 = OUTLINED_FUNCTION_12();
                  v505 = v240;
                  [v239 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v642 = v645 = metadata3;
                  if (metadata3 != v642)
                  {
                    +[_DKApplicationActivityMetadataKey contentDescription];
                    objc_claimAutoreleasedReturnValue();
                    v241 = OUTLINED_FUNCTION_12();
                    v443 = v242;
                    v437 = [v241 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey expirationDate];
                  objc_claimAutoreleasedReturnValue();
                  v243 = OUTLINED_FUNCTION_12();
                  v503 = v244;
                  [v243 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v636 = v639 = metadata3;
                  if (metadata3 != v636)
                  {
                    +[_DKApplicationActivityMetadataKey expirationDate];
                    objc_claimAutoreleasedReturnValue();
                    v245 = OUTLINED_FUNCTION_12();
                    v442 = v246;
                    v435 = [v245 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                  objc_claimAutoreleasedReturnValue();
                  v247 = OUTLINED_FUNCTION_12();
                  v472 = v248;
                  [v247 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v628 = v631 = metadata3;
                  if (metadata3 != v628)
                  {
                    +[_DKApplicationActivityMetadataKey isEligibleForPrediction];
                    objc_claimAutoreleasedReturnValue();
                    v249 = OUTLINED_FUNCTION_12();
                    v440 = v250;
                    v433 = [v249 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                  objc_claimAutoreleasedReturnValue();
                  v251 = OUTLINED_FUNCTION_12();
                  v471 = v252;
                  [v251 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v622 = v625 = metadata3;
                  if (metadata3 != v622)
                  {
                    +[_DKApplicationActivityMetadataKey isPubliclyIndexable];
                    objc_claimAutoreleasedReturnValue();
                    v253 = OUTLINED_FUNCTION_12();
                    v438 = v254;
                    v431 = [v253 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey itemIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v255 = OUTLINED_FUNCTION_12();
                  v470 = v256;
                  [v255 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v616 = v619 = metadata3;
                  if (metadata3 != v616)
                  {
                    +[_DKApplicationActivityMetadataKey itemIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v257 = OUTLINED_FUNCTION_12();
                    v436 = v258;
                    v429 = [v257 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                  objc_claimAutoreleasedReturnValue();
                  v259 = OUTLINED_FUNCTION_12();
                  v469 = v260;
                  [v259 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v610 = v613 = metadata3;
                  if (metadata3 != v610)
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedContentURL];
                    objc_claimAutoreleasedReturnValue();
                    v261 = OUTLINED_FUNCTION_12();
                    v434 = v262;
                    v427 = [v261 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                  objc_claimAutoreleasedReturnValue();
                  v263 = OUTLINED_FUNCTION_12();
                  v468 = v264;
                  [v263 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v604 = v607 = metadata3;
                  if (metadata3 != v604)
                  {
                    +[_DKApplicationActivityMetadataKey itemRelatedUniqueIdentifier];
                    objc_claimAutoreleasedReturnValue();
                    v265 = OUTLINED_FUNCTION_12();
                    v432 = v266;
                    v425 = [v265 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey shortcutAvailability];
                  objc_claimAutoreleasedReturnValue();
                  v267 = OUTLINED_FUNCTION_12();
                  v467 = v268;
                  [v267 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v598 = v601 = metadata3;
                  if (metadata3 != v598)
                  {
                    +[_DKApplicationActivityMetadataKey shortcutAvailability];
                    objc_claimAutoreleasedReturnValue();
                    v269 = OUTLINED_FUNCTION_12();
                    v430 = v270;
                    v423 = [v269 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                  objc_claimAutoreleasedReturnValue();
                  v271 = OUTLINED_FUNCTION_12();
                  v466 = v272;
                  [v271 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v592 = v595 = metadata3;
                  if (metadata3 != v592)
                  {
                    +[_DKApplicationActivityMetadataKey suggestedInvocationPhrase];
                    objc_claimAutoreleasedReturnValue();
                    v273 = OUTLINED_FUNCTION_12();
                    v428 = v274;
                    v421 = [v273 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey title];
                  objc_claimAutoreleasedReturnValue();
                  v275 = OUTLINED_FUNCTION_12();
                  v464 = v276;
                  [v275 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v586 = v588 = metadata3;
                  if (metadata3 != v586)
                  {
                    +[_DKApplicationActivityMetadataKey title];
                    objc_claimAutoreleasedReturnValue();
                    v277 = OUTLINED_FUNCTION_12();
                    v426 = v278;
                    v418 = [v277 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                  objc_claimAutoreleasedReturnValue();
                  v279 = OUTLINED_FUNCTION_12();
                  v463 = v280;
                  [v279 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v582 = v584 = metadata3;
                  if (metadata3 != v582)
                  {
                    +[_DKApplicationActivityMetadataKey userActivityRequiredString];
                    objc_claimAutoreleasedReturnValue();
                    v281 = OUTLINED_FUNCTION_12();
                    v424 = v282;
                    v416 = [v281 objectForKeyedSubscript:?];
                  }

                  +[_DKApplicationActivityMetadataKey userActivityUUID];
                  objc_claimAutoreleasedReturnValue();
                  v283 = OUTLINED_FUNCTION_12();
                  v462 = v284;
                  [v283 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_5_14() null];
                  v566 = v568 = metadata3;
                  if (metadata3 != v566)
                  {
                    +[_DKApplicationActivityMetadataKey userActivityUUID];
                    objc_claimAutoreleasedReturnValue();
                    v285 = OUTLINED_FUNCTION_12();
                    v422 = v286;
                    v414 = [v285 objectForKeyedSubscript:?];
                  }

                  source9 = [v27 source];
                  sourceID3 = [source9 sourceID];
                  source10 = [v27 source];
                  bundleID3 = [source10 bundleID];
                  source11 = [v27 source];
                  itemID3 = [source11 itemID];
                  source12 = [v27 source];
                  groupID3 = [source12 groupID];
                  v287 = MEMORY[0x1E695DF00];
                  [v666 doubleValue];
                  v556 = [v287 dateWithTimeIntervalSinceReferenceDate:?];
                  [OUTLINED_FUNCTION_11_0() objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  [OUTLINED_FUNCTION_3_20() null];
                  v552 = v554 = v287;
                  if (v287 != v552)
                  {
                    v420 = [OUTLINED_FUNCTION_11_0() objectForKeyedSubscript:?];
                  }

                  v288 = MEMORY[0x1E695DF00];
                  [v659 doubleValue];
                  v550 = [v288 dateWithTimeIntervalSinceReferenceDate:?];
                  +[_DKLocationApplicationActivityMetadataKey locationName];
                  objc_claimAutoreleasedReturnValue();
                  v289 = OUTLINED_FUNCTION_12();
                  v457 = v290;
                  [v289 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null10 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null10)
                  {
                    +[_DKLocationApplicationActivityMetadataKey locationName];
                    objc_claimAutoreleasedReturnValue();
                    v291 = OUTLINED_FUNCTION_12();
                    v419 = v292;
                    v412 = [v291 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey latitude];
                  objc_claimAutoreleasedReturnValue();
                  v293 = OUTLINED_FUNCTION_12();
                  v456 = v294;
                  [v293 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null11 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null11)
                  {
                    +[_DKLocationApplicationActivityMetadataKey latitude];
                    objc_claimAutoreleasedReturnValue();
                    v295 = OUTLINED_FUNCTION_12();
                    v417 = v296;
                    v410 = [v295 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey longitude];
                  objc_claimAutoreleasedReturnValue();
                  v297 = OUTLINED_FUNCTION_12();
                  v455 = v298;
                  [v297 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null12 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null12)
                  {
                    +[_DKLocationApplicationActivityMetadataKey longitude];
                    objc_claimAutoreleasedReturnValue();
                    v299 = OUTLINED_FUNCTION_12();
                    v415 = v300;
                    v408 = [v299 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey city];
                  objc_claimAutoreleasedReturnValue();
                  v301 = OUTLINED_FUNCTION_12();
                  v454 = v302;
                  [v301 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null13 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null13)
                  {
                    +[_DKLocationApplicationActivityMetadataKey city];
                    objc_claimAutoreleasedReturnValue();
                    v303 = OUTLINED_FUNCTION_12();
                    v413 = v304;
                    v406 = [v303 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
                  objc_claimAutoreleasedReturnValue();
                  v305 = OUTLINED_FUNCTION_12();
                  v453 = v306;
                  [v305 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null14 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null14)
                  {
                    +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
                    objc_claimAutoreleasedReturnValue();
                    v307 = OUTLINED_FUNCTION_12();
                    v411 = v308;
                    v404 = [v307 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey country];
                  objc_claimAutoreleasedReturnValue();
                  v309 = OUTLINED_FUNCTION_12();
                  v452 = v310;
                  [v309 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null15 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null15)
                  {
                    +[_DKLocationApplicationActivityMetadataKey country];
                    objc_claimAutoreleasedReturnValue();
                    v311 = OUTLINED_FUNCTION_12();
                    v409 = v312;
                    v402 = [v311 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey thoroughfare];
                  objc_claimAutoreleasedReturnValue();
                  v313 = OUTLINED_FUNCTION_12();
                  v451 = v314;
                  [v313 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null16 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null16)
                  {
                    +[_DKLocationApplicationActivityMetadataKey thoroughfare];
                    objc_claimAutoreleasedReturnValue();
                    v315 = OUTLINED_FUNCTION_12();
                    v407 = v316;
                    v400 = [v315 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey fullyFormattedAddress];
                  objc_claimAutoreleasedReturnValue();
                  v317 = OUTLINED_FUNCTION_12();
                  v450 = v318;
                  [v317 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null17 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null17)
                  {
                    +[_DKLocationApplicationActivityMetadataKey fullyFormattedAddress];
                    objc_claimAutoreleasedReturnValue();
                    v319 = OUTLINED_FUNCTION_12();
                    v405 = v320;
                    v398 = [v319 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
                  objc_claimAutoreleasedReturnValue();
                  v321 = OUTLINED_FUNCTION_12();
                  v449 = v322;
                  [v321 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null18 = [OUTLINED_FUNCTION_3_20() null];
                  if (v288 != null18)
                  {
                    +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
                    objc_claimAutoreleasedReturnValue();
                    v323 = OUTLINED_FUNCTION_12();
                    v403 = v324;
                    v397 = [v323 objectForKeyedSubscript:?];
                  }

                  +[_DKLocationApplicationActivityMetadataKey postalCode];
                  objc_claimAutoreleasedReturnValue();
                  v325 = OUTLINED_FUNCTION_12();
                  v448 = v326;
                  [v325 objectForKeyedSubscript:?];
                  objc_claimAutoreleasedReturnValue();
                  null19 = [OUTLINED_FUNCTION_3_20() null];
                  v513 = v232;
                  if (v288 != null19)
                  {
                    +[_DKLocationApplicationActivityMetadataKey postalCode];
                    objc_claimAutoreleasedReturnValue();
                    v327 = OUTLINED_FUNCTION_12();
                    v401 = v328;
                    v396 = [v327 objectForKeyedSubscript:?];
                  }

                  v520 = v229;
                  +[_DKLocationApplicationActivityMetadataKey phoneNumbers];
                  objc_claimAutoreleasedReturnValue();
                  v329 = OUTLINED_FUNCTION_8_4();
                  v446 = v330;
                  v331 = [v329 objectForKeyedSubscript:?];
                  null20 = [MEMORY[0x1E695DFB0] null];
                  v663 = v26;
                  if (v331 != null20)
                  {
                    +[_DKLocationApplicationActivityMetadataKey phoneNumbers];
                    objc_claimAutoreleasedReturnValue();
                    v333 = OUTLINED_FUNCTION_8_4();
                    v399 = v334;
                    v395 = [v333 objectForKeyedSubscript:?];
                  }

                  v335 = +[_DKLocationApplicationActivityMetadataKey displayName];
                  v336 = [v670 objectForKeyedSubscript:v335];
                  null21 = [MEMORY[0x1E695DFB0] null];
                  if (v336 == null21)
                  {
                    OUTLINED_FUNCTION_1_28();
                    v386 = 0;
                    v387 = v342;
                    v465 = OUTLINED_FUNCTION_4_18();
                  }

                  else
                  {
                    v338 = +[_DKLocationApplicationActivityMetadataKey displayName];
                    v339 = [v670 objectForKeyedSubscript:v338];
                    OUTLINED_FUNCTION_1_28();
                    v386 = v340;
                    v387 = v341;
                    v465 = OUTLINED_FUNCTION_4_18();

                    v24 = v633;
                  }

                  if (v331 != null20)
                  {
                  }

                  v25 = MEMORY[0x1E69E9C10];
                  v26 = v663;
                  metadata4 = v670;
                  if (v288 != null19)
                  {
                  }

                  if (v288 != null18)
                  {
                  }

                  if (v288 != null17)
                  {
                  }

                  if (v288 != null16)
                  {
                  }

                  if (v288 != null15)
                  {
                  }

                  if (v288 != null14)
                  {
                  }

                  if (v288 != null13)
                  {
                  }

                  if (v288 != null12)
                  {
                  }

                  if (v288 != null11)
                  {
                  }

                  if (v288 != null10)
                  {
                  }

                  if (v554 != v552)
                  {
                  }

                  if (v568 != v566)
                  {
                  }

                  if (v584 != v582)
                  {
                  }

                  if (v588 != v586)
                  {
                  }

                  if (v595 != v592)
                  {
                  }

                  if (v601 != v598)
                  {
                  }

                  if (v607 != v604)
                  {
                  }

                  if (v613 != v610)
                  {
                  }

                  if (v619 != v616)
                  {
                  }

                  if (v625 != v622)
                  {
                  }

                  if (v631 != v628)
                  {
                  }

                  if (v639 != v636)
                  {
                  }

                  if (v645 != v642)
                  {
                  }

                  if (v507 != v648)
                  {
                  }

                  if (v513 != null9)
                  {
                  }

                  v343 = *(selfCopy + 168);
                  startDate2 = [v654 startDate];
                  [startDate2 timeIntervalSinceReferenceDate];
                  [v343 sendEvent:v465 timestamp:?];
                }

                value4 = v666;
              }

              v84 = v659;
              goto LABEL_296;
            }

            metadata4 = [v27 metadata];
            value4 = [v27 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v660 = v26;
              v35 = objc_alloc(MEMORY[0x1E698EB30]);
              v664 = value4;
              stringValue2 = [value4 stringValue];
              startDate2 = +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
              v36 = [metadata4 objectForKeyedSubscript:startDate2];
              null22 = [MEMORY[0x1E695DFB0] null];
              if (v36 == null22)
              {
                v40 = 0;
              }

              else
              {
                +[_DKRelevantShortcutMetadataKey keyImageProxyIdentifier];
                objc_claimAutoreleasedReturnValue();
                v38 = OUTLINED_FUNCTION_9_10();
                v569 = v39;
                v40 = [v38 objectForKeyedSubscript:?];
                v570 = v40;
              }

              v65 = +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
              v66 = [metadata4 objectForKeyedSubscript:v65];
              null23 = [MEMORY[0x1E695DFB0] null];
              v668 = metadata4;
              if (v66 == null23)
              {
                v78 = [v35 initWithBundleID:stringValue2 keyImageProxyIdentifier:v40 serializedRelevantShortcut:0];
              }

              else
              {
                +[_DKRelevantShortcutMetadataKey serializedRelevantShortcut];
                v655 = v66;
                v68 = v65;
                v69 = v40;
                v70 = null22;
                v71 = v36;
                v72 = startDate2;
                v74 = v73 = v35;
                v75 = [metadata4 objectForKeyedSubscript:v74];
                v76 = v73;
                startDate2 = v72;
                v36 = v71;
                null22 = v70;
                v77 = v69;
                v65 = v68;
                v66 = v655;
                v78 = [v76 initWithBundleID:stringValue2 keyImageProxyIdentifier:v77 serializedRelevantShortcut:v75];
              }

              value4 = v664;

              v26 = v660;
              if (v36 != null22)
              {
              }

              v24 = v633;
              [v633 addObject:v78];
              v25 = MEMORY[0x1E69E9C10];
              v84 = v78;
              metadata4 = v668;
LABEL_296:
            }

LABEL_298:
            ++v26;
          }

          while (v657 != v26);
          v347 = [obj countByEnumeratingWithState:&v678 objects:v686 count:16];
          v657 = v347;
        }

        while (v347);
      }

      v348 = v391;
      if ([v391 count])
      {
        [*(selfCopy + 184) publishXPCEventForAppIntents:v391 appActivities:v390 uid:HIDWORD(v389)];
      }

      if ([v24 count])
      {
        v349 = [v24 objectAtIndexedSubscript:0];
        bundleID4 = [v349 bundleID];

        pruner = [*(selfCopy + 176) pruner];
        v675[0] = MEMORY[0x1E69E9820];
        v675[1] = 3221225472;
        v675[2] = __90___CDSpotlightItemRecorder_saveRateLimitedEvents_donatorUid_responseQueue_withCompletion___block_invoke_619;
        v675[3] = &unk_1E7369840;
        v352 = bundleID4;
        v676 = v352;
        [pruner deleteEventsPassingTest:v675];

        source13 = [*(selfCopy + 176) source];
        v671 = 0u;
        v672 = 0u;
        v673 = 0u;
        v674 = 0u;
        v354 = v24;
        v355 = [v354 countByEnumeratingWithState:&v671 objects:v685 count:16];
        if (v355)
        {
          v356 = v355;
          v357 = *v672;
          do
          {
            for (i = 0; i != v356; ++i)
            {
              if (*v672 != v357)
              {
                objc_enumerationMutation(v354);
              }

              [source13 sendEvent:*(*(&v671 + 1) + 8 * i)];
            }

            v356 = [v354 countByEnumeratingWithState:&v671 objects:v685 count:16];
          }

          while (v356);
        }

        v348 = v391;
      }

      queueCopy = v392;
      uidCopy = v393;
      v8 = v388;
    }

    else if (queueCopy)
    {
      (*(queueCopy + 2))(queueCopy, MEMORY[0x1E695E0F0], 0);
    }
  }
}

- (void)_cacheUserActivity:(uint64_t)activity
{
  v3 = a2;
  if (activity)
  {
    v4 = *(activity + 112);
    if (v4)
    {
      v11 = v3;
      source = [v3 source];
      sourceID = [source sourceID];
      value = [v11 value];
      stringValue = [value stringValue];
      source2 = [v11 source];
      itemID = [source2 itemID];
      [v4 addSourceID:sourceID bundleID:stringValue itemID:itemID];

      v3 = v11;
    }
  }
}

- (void)addUserAction:(id)action withItem:(id)item withCompletion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  itemCopy = item;
  completionCopy = completion;
  v9 = _os_activity_create(&dword_191750000, "CoreDuet: addUserAction:withItem:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v9, &state);
  os_activity_scope_leave(&state);

  v10 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    bundleID = [itemCopy bundleID];
    LODWORD(state.opaque[0]) = 138412290;
    *(state.opaque + 4) = bundleID;
    _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "Adding user action for bundleID: %@", &state, 0xCu);
  }

  [_CDSpotlightItemUtils knowledgeEventsForSearchableItem:itemCopy userAction:actionCopy];
  objc_claimAutoreleasedReturnValue();
  v12 = OUTLINED_FUNCTION_16_6();
  getUidOfDonator = [(_CDSpotlightItemRecorder *)v12 getUidOfDonator];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = v9;
  v13 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
  if (v13)
  {
    v14 = *v41;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v41 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v40 + 1) + 8 * i);
        [(_CDSpotlightItemRecorder *)self _cacheUserActivity:v16];
        state.opaque[0] = 0;
        state.opaque[1] = &state;
        v46 = 0x2020000000;
        v47 = 1;
        v17 = MEMORY[0x1E696AEC0];
        bundleID2 = [itemCopy bundleID];
        stream = [v16 stream];
        name = [stream name];
        v21 = [v17 stringWithFormat:@"%@_%@", bundleID2, name];

        activityRateLimiterQueue = self->_activityRateLimiterQueue;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __66___CDSpotlightItemRecorder_addUserAction_withItem_withCompletion___block_invoke;
        block[3] = &unk_1E7369DF0;
        block[4] = self;
        v23 = v21;
        v36 = v23;
        v37 = v16;
        v24 = itemCopy;
        v38 = v24;
        p_state = &state;
        dispatch_sync(activityRateLimiterQueue, block);
        v25 = *(state.opaque[1] + 24);
        if ((v25 & 1) == 0)
        {

          _Block_object_dispose(&state, 8);
          goto LABEL_14;
        }

        v44 = v16;
        v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v44 count:1];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __66___CDSpotlightItemRecorder_addUserAction_withItem_withCompletion___block_invoke_655;
        v31[3] = &unk_1E736AB90;
        v32 = v24;
        v33 = actionCopy;
        v34 = completionCopy;
        [(_CDSpotlightItemRecorder *)self saveRateLimitedEvents:v26 donatorUid:getUidOfDonator responseQueue:0 withCompletion:v31];

        _Block_object_dispose(&state, 8);
        if (!v25)
        {
          goto LABEL_14;
        }
      }

      v13 = [obj countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)_deleteUserActivitiesWithPersistentIdentifiers:(void *)identifiers bundleID:
{
  v34[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  identifiersCopy = identifiers;
  v7 = identifiersCopy;
  if (self)
  {
    if (!identifiersCopy)
    {
      v10 = +[_CDLogging knowledgeChannel];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_191750000, v10, OS_LOG_TYPE_ERROR, "Delete user activities failed because the bundleID is nil.", buf, 2u);
      }

      goto LABEL_25;
    }

    v8 = +[_DKSystemEventStreams appActivityStream];
    name = [v8 name];
    v10 = [_DKQuery predicateForEventsWithStreamName:name];

    v11 = +[_DKSystemEventStreams appLocationActivityStream];
    name2 = [v11 name];
    v13 = [_DKQuery predicateForEventsWithStreamName:name2];

    v34[0] = v10;
    v34[1] = v13;
    [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:2];
    objc_claimAutoreleasedReturnValue();
    v14 = [OUTLINED_FUNCTION_19_7() orPredicateWithSubpredicates:name2];

    v15 = *(self + 112);
    v16 = v15 == 0;
    if (v15)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __84___CDSpotlightItemRecorder__deleteUserActivitiesWithPersistentIdentifiers_bundleID___block_invoke;
      v30[3] = &unk_1E736ABB8;
      v30[4] = self;
      v31 = v7;
      v17 = [v5 _pas_filteredArrayWithTest:v30];
    }

    else
    {
      v17 = v5;
    }

    if ([v17 count])
    {
      v18 = arc4random_uniform(0x64u) == 0;
    }

    else
    {
      v18 = 0;
    }

    v19 = *(self + 112);
    if (v19)
    {
      v20 = [v19 count] != 0 && (v17 == 0 || v18);
      if (v15)
      {
        v16 = v20;
      }

      else
      {
        v16 = 1;
      }
    }

    v21 = v14;
    if (v17)
    {
      if (![v17 count])
      {
        v22 = +[_CDLogging knowledgeChannel];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_INFO, "Skipping deletion, all identifiers filterd by cache", buf, 2u);
        }

LABEL_24:

LABEL_25:
        goto LABEL_26;
      }

      v29 = v16;
      +[_DKSource spotlightSourceID];
      objc_claimAutoreleasedReturnValue();
      v23 = [OUTLINED_FUNCTION_17_9() predicateForEventsWithSourceID:? bundleID:? itemIDs:?];
    }

    else
    {
      v29 = v16;
      +[_DKSource spotlightSourceID];
      objc_claimAutoreleasedReturnValue();
      v23 = [OUTLINED_FUNCTION_17_9() predicateForEventsWithSourceID:? bundleID:?];
    }

    v22 = v23;

    v24 = MEMORY[0x1E696AB28];
    v33[0] = v21;
    v33[1] = v22;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
    v26 = [v24 andPredicateWithSubpredicates:v25];

    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v26 withCompletion:0];
    if (v29)
    {
      v27 = [[_CDUserActivityCache alloc] initWithKnowledgeStore:*(self + 72)];
      [(_CDUserActivityCache *)v27 populateCache];
      v28 = *(self + 112);
      *(self + 112) = v27;
    }

    goto LABEL_24;
  }

LABEL_26:
}

- (void)deleteKnowledgeEventsMatchingPredicate:(void *)predicate withCompletion:
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  predicateCopy = predicate;
  if (self)
  {
    v7 = +[_CDLogging spotlightReceiverChannel];
    v8 = os_signpost_id_generate(v7);

    v9 = +[_CDLogging spotlightReceiverChannel];
    v10 = v9;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "_CDSpotlightReceieverDeleteKnowledgeEvents", " enableTelemetry=YES ", buf, 2u);
    }

    v11 = *(self + 72);
    v22 = 0;
    v12 = [v11 deleteAllEventsMatchingPredicate:v5 error:&v22];
    v13 = v22;
    v14 = +[_CDLogging spotlightReceiverChannel];
    v15 = v14;
    if (v13)
    {
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        cd_sanitizeForLogging = [v5 cd_sanitizeForLogging];
        *buf = 138478083;
        v24 = cd_sanitizeForLogging;
        v25 = 2114;
        v26 = v13;
        _os_log_error_impl(&dword_191750000, v15, OS_LOG_TYPE_ERROR, "Failed to delete knowledge events with predicate %{private}@. Error = %{public}@.", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      cd_sanitizeForLogging2 = [v5 cd_sanitizeForLogging];
      *buf = 134218243;
      v24 = v12;
      v25 = 2113;
      v26 = cd_sanitizeForLogging2;
      _os_log_impl(&dword_191750000, v15, OS_LOG_TYPE_DEFAULT, "Successfully deleted %lu knowledge events with predicate %{private}@.", buf, 0x16u);
    }

    v18 = +[_CDLogging spotlightReceiverChannel];
    v19 = v18;
    if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v18))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_191750000, v19, OS_SIGNPOST_INTERVAL_END, v8, "_CDSpotlightReceieverDeleteKnowledgeEvents", &unk_19191A712, buf, 2u);
    }

    if (predicateCopy)
    {
      v20 = OUTLINED_FUNCTION_11_0();
      v21(v20);
    }
  }
}

- (void)deleteAllItemsWithBundleID:(int)d isCSSIDeletion:(void *)deletion completion:
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = a2;
  deletionCopy = deletion;
  if (self)
  {
    if (self[18])
    {
      if (d && (+[_CDInteractionPolicies disallowedCSSIBundleIds](_CDInteractionPolicies, "disallowedCSSIBundleIds"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 containsObject:v7], v9, v10))
      {
        v11 = +[_CDLogging spotlightReceiverChannel];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v7;
          _os_log_impl(&dword_191750000, v11, OS_LOG_TYPE_DEFAULT, "Interaction store ignoring call to delete all searchable items for %{public}@ (disallowed bundle ID)", buf, 0xCu);
        }
      }

      else
      {
        objc_initWeak(buf, self);
        v12 = self[2];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __81___CDSpotlightItemRecorder_deleteAllItemsWithBundleID_isCSSIDeletion_completion___block_invoke;
        v14[3] = &unk_1E73675D0;
        objc_copyWeak(&v16, buf);
        v15 = v7;
        dispatch_sync(v12, v14);

        objc_destroyWeak(&v16);
        objc_destroyWeak(buf);
      }
    }

    v13 = [_DKQuery predicateForSpotlightEventsWithBundleID:v7];
    [(_CDSpotlightItemRecorder *)self deleteKnowledgeEventsMatchingPredicate:v13 withCompletion:deletionCopy];
  }
}

- (void)deleteAllInteractionsWithBundleID:(id)d protectionClass:(id)class withCompletion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  dCopy = d;
  classCopy = class;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_191750000, "CoreDuet: deleteAllInteractionsWithBundleID:protectionClass:", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v14.opaque[0] = 0;
  v14.opaque[1] = 0;
  os_activity_scope_enter(v11, &v14);
  os_activity_scope_leave(&v14);

  v12 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v14.opaque[0]) = 138412290;
    *(v14.opaque + 4) = dCopy;
    _os_log_impl(&dword_191750000, v12, OS_LOG_TYPE_DEFAULT, "Deleting interactions with bundleID: %@", &v14, 0xCu);
  }

  if (([classCopy isEqualToString:*MEMORY[0x1E696A378]] & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x1E696A380]))
  {
    v13 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      LOWORD(v14.opaque[0]) = 0;
      _os_log_impl(&dword_191750000, v13, OS_LOG_TYPE_INFO, "Request to delete items with identifiers with protectionClass A or B when in class C, D.", &v14, 2u);
    }
  }

  [(_CDSpotlightItemRecorder *)self deleteAllItemsWithBundleID:dCopy isCSSIDeletion:0 completion:completionCopy];
}

- (void)_addOrUpdateCoreDuetInteractions:(void *)a3 bundleID:.cold.1(void *a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
  v6 = v5;
  if (v5)
  {
    v5->_type = 0;
  }

  [(_DKPredictionTimeline *)v5 setStartDate:a1];
  v7 = OUTLINED_FUNCTION_11_9();
  [(_DKSyncWindow *)v7 setStartDate:v8];
  [(_CDSpotlightItemRecorder *)a3 submitOperation:v6];
}

- (void)donateRelevantShortcuts:(NSObject *)a3 bundleID:.cold.1(void *a1, uint64_t a2, NSObject *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  [a1 count];
  v5 = [OUTLINED_FUNCTION_5_1() numberWithUnsignedInteger:?];
  OUTLINED_FUNCTION_1();
  v7 = 2112;
  v8 = a2;
  _os_log_debug_impl(&dword_191750000, a3, OS_LOG_TYPE_DEBUG, "Saving %@ relevant shortcuts with bundleID %@ to knowledge store", v6, 0x16u);
}

- (void)addInteractions:(uint64_t)a3 bundleID:protectionClass:withCompletion:.cold.1(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF00] date];
  v29 = objc_alloc_init(MEMORY[0x1E695DF70]);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  obj = a2;
  v28 = a3;
  v7 = [obj countByEnumeratingWithState:a1 objects:a3 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = **(a1 + 16);
    v30 = v9;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (**(a1 + 16) != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(a1 + 8) + 8 * i);
        v12 = [v11 dateInterval];
        v13 = [v12 startDate];

        if (v13)
        {
          [v6 timeIntervalSinceDate:v13];
          v15 = v14;
          if ([v11 direction] == 2)
          {
            v16 = [v11 intent];
            [v16 _className];
            v18 = v17 = v6;
            v19 = objc_opt_class();
            NSStringFromClass(v19);
            v21 = v20 = v8;
            v22 = [v18 isEqualToString:v21];

            v8 = v20;
            v6 = v17;
            v9 = v30;

            if (v22)
            {
              if (v15 > 0.0 && v15 < 180.0)
              {
                v23 = [v11 intent];
                v24 = [_CDSpotlightItemUtils messageContextDictionaryForSendMessageIntent:v23];
                if (v24)
                {
                  [v29 addObject:v24];
                }
              }
            }
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:a1 objects:v28 count:16];
    }

    while (v8);
  }

  if ([v29 count])
  {
    v25 = [get_CDContextualKeyPathClass() ephemeralKeyPathWithKey:@"/interactions/messages"];
    v26 = [v29 copy];
    v27 = [get_CDClientContextClass() userContext];
    [v27 setObject:v26 forKeyedSubscript:v25];
  }
}

- (void)deleteSearchableItemsWithIdentifiers:(uint64_t)a1 bundleID:(void *)a2 withCompletion:.cold.3(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
  v4 = v3;
  if (v3)
  {
    v3->_type = 1;
  }

  v5 = OUTLINED_FUNCTION_11_9();
  [(_DKPredictionTimeline *)v5 setStartDate:v6];
  v7 = +[_CDConstants facetimeBundleId];
  v8 = OUTLINED_FUNCTION_11_9();
  [(_DKSyncWindow *)v8 setStartDate:v9];

  [(_CDSpotlightItemRecorder *)a2 submitOperation:v4];
}

- (void)deleteSearchableItemsWithIdentifiers:(uint64_t)a1 bundleID:(void *)a2 withCompletion:.cold.4(uint64_t a1, void *a2)
{
  v3 = objc_alloc_init(_CDSpotlightItemRecorderOperation);
  v4 = v3;
  if (v3)
  {
    v3->_type = 1;
  }

  v5 = OUTLINED_FUNCTION_11_9();
  [(_DKPredictionTimeline *)v5 setStartDate:v6];
  v7 = +[_CDConstants contactsAutocompleteBundleId];
  v8 = OUTLINED_FUNCTION_11_9();
  [(_DKSyncWindow *)v8 setStartDate:v9];

  [(_CDSpotlightItemRecorder *)a2 submitOperation:v4];
}

@end