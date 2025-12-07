@interface SGEnrichmentWritebackAdapter
+ (BOOL)_isEligibleEvent:(id)event;
+ (BOOL)_isSupportedEntityType:(int64_t)type;
+ (id)_attributeSetForEvent:(id)event;
+ (id)_bundleIdentifierFromEvent:(id)event;
+ (id)_index;
- (id)_deleteEventsMatchingEvent:(id)event keepingNewerEvents:(BOOL)events;
- (id)_deleteEventsMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date;
- (id)_uniqueIdentifiersMatchingEvent:(id)event olderThanDate:(id)date;
- (id)_uniqueIdentifiersMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date;
- (void)addEvent:(id)event;
- (void)addEvents:(id)events;
- (void)cancelEvents:(id)events;
- (void)orphanEvent:(id)event;
@end

@implementation SGEnrichmentWritebackAdapter

- (void)cancelEvents:(id)events
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  eventsCopy = events;
  v5 = [eventsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(SGEnrichmentWritebackAdapter *)self cancelEvent:v9, v11];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)addEvents:(id)events
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  eventsCopy = events;
  v5 = [eventsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(eventsCopy);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        v10 = objc_autoreleasePoolPush();
        [(SGEnrichmentWritebackAdapter *)self addEvent:v9, v11];
        objc_autoreleasePoolPop(v10);
        ++v8;
      }

      while (v6 != v8);
      v6 = [eventsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)orphanEvent:(id)event
{
  v4 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingEvent:event keepingNewerEvents:0];
  [v4 setTimeout:60.0];
  wait = [v4 wait];
}

- (void)addEvent:(id)event
{
  v64 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  if (![SGEnrichmentWritebackAdapter _isEligibleEvent:eventCopy])
  {
    v6 = sgLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138739971;
      v61 = eventCopy;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ skipping due to being ineligible", buf, 0xCu);
    }

    goto LABEL_39;
  }

  v6 = [SGEnrichmentWritebackAdapter _bundleIdentifierFromEvent:eventCopy];
  if ([v6 isEqualToString:*MEMORY[0x277D021C0]])
  {
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey emailKey];
    messageId = [emailKey messageId];
    goto LABEL_8;
  }

  if ([v6 isEqualToString:*MEMORY[0x277D021D0]])
  {
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey messageKey];
    messageId = [emailKey uniqueIdentifier];
LABEL_8:
    v11 = messageId;

    if (v11)
    {
      v12 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingEvent:eventCopy keepingNewerEvents:1];
      [v12 setTimeout:60.0];
      wait = [v12 wait];
      result = [v12 result];

      if (result)
      {
        result2 = [v12 result];
        v16 = [result2 isEqualToNumber:&unk_284749518];

        if (v16)
        {
          v17 = @"update";
        }

        else
        {
          v17 = @"confirm";
        }

        v18 = [(SGEnrichmentWritebackAdapter *)self _uniqueIdentifiersMatchingEvent:eventCopy olderThanDate:0];
        [v18 setTimeout:60.0];
        wait2 = [v18 wait];
        error = [v18 error];

        if (error)
        {
          v21 = sgLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
          {
            error2 = [v18 error];
            *buf = 138740227;
            v61 = eventCopy;
            v62 = 2112;
            v63 = error2;
            _os_log_fault_impl(&dword_231E60000, v21, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing because failed to query spotlight for newer events: %@", buf, 0x16u);
          }

          if (_PASEvaluateLogFaultAndProbCrashCriteria())
          {
            goto LABEL_25;
          }

          goto LABEL_37;
        }

        v54 = v11;
        result3 = [v18 result];
        v25 = objc_msgSend_count(result3);

        if (v25)
        {
          v26 = sgLogHandle();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            result4 = [v18 result];
            *buf = 138740227;
            v61 = eventCopy;
            v62 = 2117;
            v63 = result4;
            _os_log_impl(&dword_231E60000, v26, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ bailing because newer events were found in spotlight: %{sensitive}@", buf, 0x16u);
          }

          goto LABEL_35;
        }

        v28 = [SGEnrichmentWritebackAdapter _attributeSetForEvent:eventCopy];
        v26 = v28;
        if (!v28)
        {
LABEL_35:
          v11 = v54;
          goto LABEL_36;
        }

        [v28 setEventStatus:v17];
        if (([MEMORY[0x277D06960] isValidEventForSpotlightDonation:v26] & 1) == 0)
        {
          v42 = sgLogHandle();
          v11 = v54;
          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138739971;
            v61 = eventCopy;
            _os_log_impl(&dword_231E60000, v42, OS_LOG_TYPE_DEFAULT, "addEvent:%{sensitive}@ bailing because event is not valid for spotlight donation", buf, 0xCu);
          }

          goto LABEL_36;
        }

        context = objc_autoreleasePoolPush();
        duplicateKey2 = [eventCopy duplicateKey];
        parentKey2 = [duplicateKey2 parentKey];
        v51 = +[SGEnrichmentWritebackAdapter _isSupportedEntityType:](SGEnrichmentWritebackAdapter, "_isSupportedEntityType:", [parentKey2 entityType]);

        if (!v51)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          duplicateKey3 = [eventCopy duplicateKey];
          parentKey3 = [duplicateKey3 parentKey];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SGEnrichmentWritebackAdapter.m" lineNumber:292 description:{@"unexpected entityType %lld (uniqueIdentifier logic only supports mail and message bundle ID)", objc_msgSend(parentKey3, "entityType")}];
        }

        if ([v6 rangeOfString:@"-" options:2]== 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = objc_alloc(MEMORY[0x277CCACA8]);
          eventGroupIdentifier = [v26 eventGroupIdentifier];
          v52 = [v31 initWithFormat:@"%@-%@-default-%@-%@", @"CoreSuggestions", @"v3", eventGroupIdentifier, v6];

          objc_autoreleasePoolPop(context);
          v48 = objc_autoreleasePoolPush();
          v33 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"%."];
          invertedSet = [v33 invertedSet];

          v59[0] = @"CoreSuggestions";
          v59[1] = @"v3";
          v59[2] = @"default";
          v35 = [v54 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];
          v59[3] = v35;
          v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:4];
          contexta = [v36 _pas_componentsJoinedByString:@"."];

          objc_autoreleasePoolPop(v48);
          v37 = [objc_alloc(MEMORY[0x277CC34B0]) initWithUniqueIdentifier:v52 domainIdentifier:contexta attributeSet:v26];
          v38 = dispatch_semaphore_create(0);
          v39 = +[SGEnrichmentWritebackAdapter _index];
          v58 = v37;
          v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v58 count:1];
          v55[0] = MEMORY[0x277D85DD0];
          v55[1] = 3221225472;
          v55[2] = __41__SGEnrichmentWritebackAdapter_addEvent___block_invoke;
          v55[3] = &unk_2789501E0;
          v56 = eventCopy;
          v57 = v38;
          v41 = v38;
          [v39 indexSearchableItems:v40 completionHandler:v55];

          v11 = v54;
          dispatch_semaphore_wait(v41, 0xFFFFFFFFFFFFFFFFLL);

LABEL_36:
LABEL_37:

LABEL_38:
          goto LABEL_39;
        }

        v45 = sgLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
        {
          *buf = 138740227;
          v61 = eventCopy;
          v62 = 2114;
          v63 = v6;
          _os_log_fault_impl(&dword_231E60000, v45, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing because bundleIdentifierForUniqueIdentifier contains '-': %{public}@", buf, 0x16u);
        }

        v11 = v54;
        if (!_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          objc_autoreleasePoolPop(context);
          goto LABEL_36;
        }
      }

      else
      {
        v23 = sgLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
        {
          error3 = [v12 error];
          *buf = 138740227;
          v61 = eventCopy;
          v62 = 2112;
          v63 = error3;
          _os_log_fault_impl(&dword_231E60000, v23, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing because deletion timed out or failed: %@", buf, 0x16u);
        }

        if (!_PASEvaluateLogFaultAndProbCrashCriteria())
        {
          goto LABEL_38;
        }
      }

LABEL_25:
      abort();
    }
  }

  v22 = sgLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
  {
    *buf = 138739971;
    v61 = eventCopy;
    _os_log_fault_impl(&dword_231E60000, v22, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ bailing due to nil messageId", buf, 0xCu);
  }

  if (_PASEvaluateLogFaultAndProbCrashCriteria())
  {
    goto LABEL_25;
  }

LABEL_39:
}

void __41__SGEnrichmentWritebackAdapter_addEvent___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138740227;
      v7 = v5;
      v8 = 2112;
      v9 = v3;
      _os_log_fault_impl(&dword_231E60000, v4, OS_LOG_TYPE_FAULT, "addEvent:%{sensitive}@ indexing failed with error %@", &v6, 0x16u);
    }

    if (_PASEvaluateLogFaultAndProbCrashCriteria())
    {
      abort();
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_deleteEventsMatchingEvent:(id)event keepingNewerEvents:(BOOL)events
{
  eventCopy = event;
  if (([eventCopy heuristicUpdatingEnabled] & 1) != 0 && (objc_msgSend(eventCopy, "duplicateKey"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "parentKey"), v8 = objc_claimAutoreleasedReturnValue(), v9 = +[SGEnrichmentWritebackAdapter _isSupportedEntityType:](SGEnrichmentWritebackAdapter, "_isSupportedEntityType:", objc_msgSend(v8, "entityType")), v8, v7, v9))
  {
    duplicateKey = [eventCopy duplicateKey];
    pseudoEventKey = [duplicateKey pseudoEventKey];
    groupId = [pseudoEventKey groupId];
    extraKeyTag = [eventCopy extraKeyTag];
    value = [extraKeyTag value];
    if (events)
    {
      [eventCopy creationTimestamp];
      v16 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:v15];
      v17 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingGroupId:groupId fallbackGroupId:value olderThanDate:v16];
    }

    else
    {
      v17 = [(SGEnrichmentWritebackAdapter *)self _deleteEventsMatchingGroupId:groupId fallbackGroupId:value olderThanDate:0];
    }
  }

  else
  {
    v17 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEC38]];
  }

  return v17;
}

- (id)_deleteEventsMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date
{
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  if (idCopy | groupIdCopy)
  {
    v12 = objc_opt_new();
    workQueue = [v12 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke;
    block[3] = &unk_278954AC8;
    block[4] = self;
    v18 = idCopy;
    v19 = groupIdCopy;
    v20 = dateCopy;
    v14 = v12;
    v21 = v14;
    dispatch_async(workQueue, block);

    v15 = v21;
    v11 = v14;
  }

  else
  {
    v11 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEC38]];
  }

  return v11;
}

void __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _uniqueIdentifiersMatchingGroupId:*(a1 + 40) fallbackGroupId:*(a1 + 48) olderThanDate:*(a1 + 56)];
  v3 = [v2 wait];
  if (([*(a1 + 64) isComplete] & 1) == 0)
  {
    v4 = [v2 result];

    if (v4)
    {
      v5 = +[SGEnrichmentWritebackAdapter _index];
      v6 = [v2 result];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2;
      v15[3] = &unk_2789501E0;
      v7 = &v16;
      v16 = v2;
      v17 = *(a1 + 64);
      [v5 deleteSearchableItemsWithIdentifiers:v6 completionHandler:v15];

      v8 = v17;
    }

    else
    {
      v9 = sgLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v10 = *(a1 + 40);
        v11 = *(a1 + 48);
        v12 = [v2 error];
        *buf = 138740483;
        v19 = v10;
        v20 = 2117;
        v21 = v11;
        v22 = 2112;
        v23 = v12;
        _os_log_fault_impl(&dword_231E60000, v9, OS_LOG_TYPE_FAULT, "deleteEventsMatchingGroupId:%{sensitive}@ fallbackGroupId:%{sensitive}@ deleting all because we couldn't find existing stuff in Spotlight (%@)", buf, 0x20u);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }

      v8 = +[SGEnrichmentWritebackAdapter _index];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_45;
      v13[3] = &unk_278955BA8;
      v7 = &v14;
      v14 = *(a1 + 64);
      [v8 deleteSearchableItemsWithDomainIdentifiers:&unk_28474A630 completionHandler:v13];
    }
  }
}

void __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v9 = a2;
  v4 = [v3 result];
  v5 = objc_msgSend_count(v4);
  v6 = &unk_284749518;
  if (!v5)
  {
    v6 = &unk_284749530;
  }

  v7 = v6;

  if (v9)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  [*(a1 + 40) completeWithResult:v8 error:?];
}

uint64_t __91__SGEnrichmentWritebackAdapter__deleteEventsMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = &unk_284749530;
  }

  return [v2 completeWithResult:v3 error:a2];
}

- (id)_uniqueIdentifiersMatchingEvent:(id)event olderThanDate:(id)date
{
  eventCopy = event;
  dateCopy = date;
  if ([eventCopy heuristicUpdatingEnabled])
  {
    duplicateKey = [eventCopy duplicateKey];
    pseudoEventKey = [duplicateKey pseudoEventKey];
    groupId = [pseudoEventKey groupId];
    extraKeyTag = [eventCopy extraKeyTag];
    value = [extraKeyTag value];
    v13 = [(SGEnrichmentWritebackAdapter *)self _uniqueIdentifiersMatchingGroupId:groupId fallbackGroupId:value olderThanDate:dateCopy];
  }

  else
  {
    v13 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEBF8]];
  }

  return v13;
}

- (id)_uniqueIdentifiersMatchingGroupId:(id)id fallbackGroupId:(id)groupId olderThanDate:(id)date
{
  v46[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  groupIdCopy = groupId;
  dateCopy = date;
  if (idCopy | groupIdCopy)
  {
    v34 = objc_opt_new();
    v11 = objc_opt_new();
    [v11 setLowPriority:qos_class_self() < QOS_CLASS_USER_INITIATED];
    v46[0] = *MEMORY[0x277CC3208];
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];
    [v11 setFetchAttributes:v12];

    [v11 setReason:@"reason:SGEnrichmentWritebackAdapter-1; code:8"];
    v13 = objc_opt_new();
    if (idCopy)
    {
      v14 = objc_autoreleasePoolPush();
      v15 = spotlightEscaped(idCopy);
      v16 = [@"kMDItemEventGroupIdentifier == " stringByAppendingString:v15];
      [v13 addObject:v16];

      objc_autoreleasePoolPop(v14);
    }

    if (groupIdCopy)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = spotlightEscaped(groupIdCopy);
      v19 = [@"kMDItemEventGroupIdentifier == " stringByAppendingString:v18];
      [v13 addObject:v19];

      objc_autoreleasePoolPop(v17);
    }

    v20 = [v13 _pas_componentsJoinedByString:@" || "];

    if (dateCopy)
    {
      v21 = objc_alloc(MEMORY[0x277CCACA8]);
      [dateCopy timeIntervalSinceReferenceDate];
      v23 = [v21 initWithFormat:@"(%@) && kMDItemContentCreationDate < %f", v20, v22, v34];

      v20 = v23;
    }

    v24 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:v20 context:v11];
    [v24 setPrivateIndex:0];
    v45 = @"com.apple.spotlight.events";
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    [v24 setBundleIDs:v25];

    if ([MEMORY[0x277D42598] isDeviceFormattedForProtection])
    {
      v44 = *MEMORY[0x277CCA1A0];
      v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      [v24 setProtectionClasses:v26];
    }

    v27 = objc_opt_new();
    v28 = [objc_alloc(MEMORY[0x277D425A8]) initWithDomain:@"CoreSuggestions"];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke;
    v41[3] = &unk_278951170;
    v29 = v27;
    v42 = v29;
    v30 = v28;
    v43 = v30;
    [v24 setFoundItemsHandler:v41];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_3;
    v38[3] = &unk_2789501E0;
    v31 = v34;
    v39 = v31;
    v32 = v29;
    v40 = v32;
    [v24 setCompletionHandler:v38];
    objc_initWeak(&location, v24);
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_4;
    v35[3] = &unk_278950208;
    objc_copyWeak(&v36, &location);
    [v31 wait:v35];
    [v24 start];
    v10 = v31;
    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x277D01FE8] createWithImmediateResult:MEMORY[0x277CBEBF8]];
  }

  return v10;
}

void __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2;
  v5[3] = &unk_27894DD40;
  v3 = *(a1 + 32);
  v6 = *(a1 + 40);
  v4 = [a2 _pas_mappedArrayWithTransform:v5];
  [v3 addObjectsFromArray:v4];
}

uint64_t __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    return [v3 fail:a2];
  }

  else
  {
    return [v3 succeed:*(a1 + 40)];
  }
}

void __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    [WeakRetained cancel];
  }
}

id __96__SGEnrichmentWritebackAdapter__uniqueIdentifiersMatchingGroupId_fallbackGroupId_olderThanDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 domainIdentifier];
  LODWORD(v4) = [v4 containsDomain:v5];

  if (v4)
  {
    v6 = [v3 uniqueIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_attributeSetForEvent:(id)event
{
  v37 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  attributeSetForEvent = [eventCopy attributeSetForEvent];
  if (!attributeSetForEvent)
  {
    goto LABEL_20;
  }

  v5 = [SGEnrichmentWritebackAdapter _bundleIdentifierFromEvent:eventCopy];
  if ([v5 isEqualToString:*MEMORY[0x277D021C0]])
  {
    [attributeSetForEvent setEventSourceBundleIdentifier:@"com.apple.mobilemail"];
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey emailKey];
    messageId = [emailKey messageId];
LABEL_6:
    v10 = messageId;
    [attributeSetForEvent setEventMessageIdentifier:messageId];

    goto LABEL_7;
  }

  if ([v5 isEqualToString:*MEMORY[0x277D021D0]])
  {
    [attributeSetForEvent setEventSourceBundleIdentifier:@"com.apple.MobileSMS"];
    duplicateKey = [eventCopy duplicateKey];
    parentKey = [duplicateKey parentKey];
    emailKey = [parentKey messageKey];
    messageId = [emailKey uniqueIdentifier];
    goto LABEL_6;
  }

LABEL_7:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  tags = [eventCopy tags];
  v12 = [tags countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
LABEL_9:
    v15 = 0;
    while (1)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(tags);
      }

      v16 = *(*(&v32 + 1) + 8 * v15);
      if ([v16 isAppleMailMessageId])
      {
        break;
      }

      if (v13 == ++v15)
      {
        v13 = [tags countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v13)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

    v17 = v16;

    if (!v17)
    {
      goto LABEL_19;
    }

    value = [v17 value];
    v19 = SGDelimitedStringsDeserialize();

    firstObject = [v19 firstObject];
    [attributeSetForEvent setAccountIdentifier:firstObject];

    lastObject = [v19 lastObject];
    [attributeSetForEvent setMailMessageID:lastObject];

    tags = v17;
  }

LABEL_18:

LABEL_19:
  tags2 = [eventCopy tags];
  v23 = [tags2 _pas_mappedSetWithTransform:&__block_literal_global_98_14628];
  allObjects = [v23 allObjects];
  [attributeSetForEvent setMailboxIdentifiers:allObjects];

  duplicateKey2 = [eventCopy duplicateKey];
  pseudoEventKey = [duplicateKey2 pseudoEventKey];
  groupId = [pseudoEventKey groupId];
  [attributeSetForEvent setEventGroupIdentifier:groupId];

  extraKeyTag = [eventCopy extraKeyTag];
  value2 = [extraKeyTag value];
  [attributeSetForEvent setEventFallbackGroupIdentifier:value2];

  v30 = attributeSetForEvent;
LABEL_20:

  return attributeSetForEvent;
}

id __54__SGEnrichmentWritebackAdapter__attributeSetForEvent___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isMailboxIdentifier])
  {
    v3 = [v2 value];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BOOL)_isEligibleEvent:(id)event
{
  eventCopy = event;
  v23 = objc_autoreleasePoolPush();
  v20 = objc_alloc(MEMORY[0x277CBEB98]);
  extractedFlight = [MEMORY[0x277D01FA0] extractedFlight];
  extractedHotel = [MEMORY[0x277D01FA0] extractedHotel];
  extractedFood = [MEMORY[0x277D01FA0] extractedFood];
  extractedCarRental = [MEMORY[0x277D01FA0] extractedCarRental];
  extractedTicket = [MEMORY[0x277D01FA0] extractedTicket];
  extractedMovie = [MEMORY[0x277D01FA0] extractedMovie];
  extractedAppointment = [MEMORY[0x277D01FA0] extractedAppointment];
  extractedSocial = [MEMORY[0x277D01FA0] extractedSocial];
  extractedBus = [MEMORY[0x277D01FA0] extractedBus];
  extractedBoat = [MEMORY[0x277D01FA0] extractedBoat];
  extractedTrain = [MEMORY[0x277D01FA0] extractedTrain];
  v21 = [v20 initWithObjects:{extractedFlight, extractedHotel, extractedFood, extractedCarRental, extractedTicket, extractedMovie, extractedAppointment, extractedSocial, extractedBus, extractedBoat, extractedTrain, 0}];

  objc_autoreleasePoolPop(v23);
  duplicateKey = [eventCopy duplicateKey];
  parentKey = [duplicateKey parentKey];
  if ([self _isSupportedEntityType:{objc_msgSend(parentKey, "entityType")}])
  {
    tags = [eventCopy tags];
    v15 = v21;
    v16 = [tags intersectsSet:v21];
  }

  else
  {
    v16 = 0;
    v15 = v21;
  }

  return v16;
}

+ (BOOL)_isSupportedEntityType:(int64_t)type
{
  if (type != 5)
  {
    return type == 13;
  }

  v8 = v3;
  v9 = v4;
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    return 1;
  }

  v5 = sgEventsLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_DEFAULT, "SGEnrichmentWritebackdapter: TextUnderstanding/RealtimeAPI and SpotlightknowledgedTUV2 enabled, skip donation to spotlight events bundle.", v7, 2u);
  }

  return 0;
}

+ (id)_bundleIdentifierFromEvent:(id)event
{
  v3 = MEMORY[0x277CBEAC0];
  eventCopy = event;
  v5 = [v3 alloc];
  v6 = [v5 initWithObjectsAndKeys:{*MEMORY[0x277D021C0], &unk_284749548, *MEMORY[0x277D021D0], &unk_284749560, 0}];
  v7 = MEMORY[0x277CCABB0];
  duplicateKey = [eventCopy duplicateKey];

  parentKey = [duplicateKey parentKey];
  v10 = [v7 numberWithLongLong:{objc_msgSend(parentKey, "entityType")}];
  v11 = [v6 objectForKey:v10];

  return v11;
}

+ (id)_index
{
  if (_index__pasOnceToken5 != -1)
  {
    dispatch_once(&_index__pasOnceToken5, &__block_literal_global_14645);
  }

  v3 = _index__pasExprOnceResult;

  return v3;
}

void __38__SGEnrichmentWritebackAdapter__index__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_alloc(MEMORY[0x277CC34A8]);
  v2 = [v1 initWithName:@"com.apple.spotlight.events" protectionClass:*MEMORY[0x277CCA1A0] bundleIdentifier:@"com.apple.spotlight.events"];
  v3 = _index__pasExprOnceResult;
  _index__pasExprOnceResult = v2;

  objc_autoreleasePoolPop(v0);
}

@end