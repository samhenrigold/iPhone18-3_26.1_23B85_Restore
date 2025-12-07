@interface EKInviteeAlternativeTimeSearcher
+ (BOOL)_span:(id)_span hasSameConflictedParticipantsAsSpan:(id)span;
+ (id)_addressesForParticipants:(id)participants;
+ (id)_allButFirstItemInArray:(id)array;
+ (id)_allButLastItemInArray:(id)array;
+ (id)_findHighestRankedNonOptimalTimeSpans:(id)spans;
+ (id)_findLeftoverSpans:(id)spans usingFreeTimes:(id)times andNonOptimalTimes:(id)optimalTimes;
+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)address;
+ (id)stateAsString:(int64_t)string;
+ (int64_t)_binarySearchForIndexOfTimeSpanInArray:(id)array containingDate:(id)date;
+ (void)_insertUniqueParticipants:(id)participants intoExistingParticipantsArray:(id)array;
+ (void)_validateSpans:(id)spans;
- (BOOL)searchingForMoreTimesWhenAllAttendeesCanAttend;
- (BOOL)searchingForMoreTimesWhenSomeAttendeesCanAttend;
- (EKInviteeAlternativeTimeSearcher)initWithStateChangedCallback:(id)callback;
- (NSArray)originalConflictedParticipants;
- (NSArray)proposedTimes;
- (NSArray)timesWhenAllAttendeesCanAttend;
- (NSArray)timesWhenSomeAttendeesCanAttend;
- (NSDate)originalEndDate;
- (NSDate)originalStartDate;
- (id)_filterOutUnreasonableTimeSlots:(id)slots;
- (id)_generateNonOptimalTimesFromTimeSpans:(id)spans;
- (id)_generateOpenFreeTimesFromTimeSpans:(id)spans;
- (id)_generateTimeSpansForResults:(id)results betweenStartDate:(id)date endDate:(id)endDate;
- (id)_mergeAdjacentSpansWithSameConflictedParticipants:(id)participants;
- (id)_participantforParticipantAddress:(id)address;
- (id)_spliceLeftTimeSpans:(id)spans andNewTimeSpans:(id)timeSpans;
- (void)_attemptSearch;
- (void)_haltSearchWithError:(BOOL)error;
- (void)_processResults:(id)results betweenStartDate:(id)date endDate:(id)endDate;
- (void)_resetSearchFallbackNumbers;
- (void)_sendStateChange:(int64_t)change;
- (void)_transitionToConflictFoundStateAndSearch;
- (void)dealloc;
- (void)resetWithEvent:(id)event organizerAddressForNewlyScheduledEvent:(id)scheduledEvent;
- (void)searchForMoreTimesWhenAllAttendeesCanAttend;
- (void)searchForMoreTimesWhenSomeAttendeesCanAttend;
@end

@implementation EKInviteeAlternativeTimeSearcher

- (EKInviteeAlternativeTimeSearcher)initWithStateChangedCallback:(id)callback
{
  callbackCopy = callback;
  v22.receiver = self;
  v22.super_class = EKInviteeAlternativeTimeSearcher;
  v5 = [(EKInviteeAlternativeTimeSearcher *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(EKInviteeAlternativeTimeSearcher *)v5 setStateChanged:callbackCopy];
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setParticipantAddressesToParticipants:v7];

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalTimesWhenAllAttendeesCanAttend:v8];

    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalTimesWhenSomeAttendeesCanAttend:v9];

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalOriginalConflictedParticipants:v10];

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setInternalProposedTimes:v11];

    v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [(EKInviteeAlternativeTimeSearcher *)v6 setLeftoverSpans:v12];

    v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    objc_opt_class();
    v14 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    [v13 setName:v14];

    [(EKInviteeAlternativeTimeSearcher *)v6 setAvailabilityRequestsQueue:v13];
    objc_opt_class();
    v15 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String = [v15 UTF8String];

    v17 = dispatch_queue_create(uTF8String, 0);
    [(EKInviteeAlternativeTimeSearcher *)v6 setProcessingQueue:v17];

    objc_opt_class();
    v18 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    uTF8String2 = [v18 UTF8String];

    v20 = dispatch_queue_create(uTF8String2, 0);
    [(EKInviteeAlternativeTimeSearcher *)v6 setCallbackQueue:v20];
  }

  return v6;
}

- (void)dealloc
{
  availabilityRequestsQueue = [(EKInviteeAlternativeTimeSearcher *)self availabilityRequestsQueue];
  [availabilityRequestsQueue cancelAllOperations];

  v4.receiver = self;
  v4.super_class = EKInviteeAlternativeTimeSearcher;
  [(EKInviteeAlternativeTimeSearcher *)&v4 dealloc];
}

- (NSDate)originalStartDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EKInviteeAlternativeTimeSearcher_originalStartDate__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __53__EKInviteeAlternativeTimeSearcher_originalStartDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOriginalStartDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSDate)originalEndDate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__EKInviteeAlternativeTimeSearcher_originalEndDate__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__EKInviteeAlternativeTimeSearcher_originalEndDate__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) internalOriginalEndDate];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8](v2, v4);
}

- (NSArray)originalConflictedParticipants
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__EKInviteeAlternativeTimeSearcher_originalConflictedParticipants__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __66__EKInviteeAlternativeTimeSearcher_originalConflictedParticipants__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalOriginalConflictedParticipants];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)timesWhenAllAttendeesCanAttend
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__EKInviteeAlternativeTimeSearcher_timesWhenAllAttendeesCanAttend__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __66__EKInviteeAlternativeTimeSearcher_timesWhenAllAttendeesCanAttend__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalTimesWhenAllAttendeesCanAttend];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)timesWhenSomeAttendeesCanAttend
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__EKInviteeAlternativeTimeSearcher_timesWhenSomeAttendeesCanAttend__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __67__EKInviteeAlternativeTimeSearcher_timesWhenSomeAttendeesCanAttend__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalTimesWhenSomeAttendeesCanAttend];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (NSArray)proposedTimes
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__EKInviteeAlternativeTimeSearcher_proposedTimes__block_invoke;
  v6[3] = &unk_1E77FD530;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(processingQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __49__EKInviteeAlternativeTimeSearcher_proposedTimes__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalProposedTimes];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)searchingForMoreTimesWhenAllAttendeesCanAttend
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenAllAttendeesCanAttend__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__82__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenAllAttendeesCanAttend__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalSearchingForMoreTimesWhenAllAttendeesCanAttend];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (BOOL)searchingForMoreTimesWhenSomeAttendeesCanAttend
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __83__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenSomeAttendeesCanAttend__block_invoke;
  v5[3] = &unk_1E77FD530;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(processingQueue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void *__83__EKInviteeAlternativeTimeSearcher_searchingForMoreTimesWhenSomeAttendeesCanAttend__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) internalSearchingForMoreTimesWhenSomeAttendeesCanAttend];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)searchForMoreTimesWhenAllAttendeesCanAttend
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __79__EKInviteeAlternativeTimeSearcher_searchForMoreTimesWhenAllAttendeesCanAttend__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:1];
  [*(a1 + 32) _resetSearchFallbackNumbers];
  v2 = *(a1 + 32);

  return [v2 _attemptSearch];
}

- (void)searchForMoreTimesWhenSomeAttendeesCanAttend
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __80__EKInviteeAlternativeTimeSearcher_searchForMoreTimesWhenSomeAttendeesCanAttend__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:1];
  [*(a1 + 32) _resetSearchFallbackNumbers];
  v2 = *(a1 + 32);

  return [v2 _attemptSearch];
}

- (void)resetWithEvent:(id)event organizerAddressForNewlyScheduledEvent:(id)scheduledEvent
{
  eventCopy = event;
  scheduledEventCopy = scheduledEvent;
  processingQueue = [(EKInviteeAlternativeTimeSearcher *)self processingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke;
  block[3] = &unk_1E77FD7C8;
  block[4] = self;
  v12 = eventCopy;
  v13 = scheduledEventCopy;
  v9 = scheduledEventCopy;
  v10 = eventCopy;
  dispatch_async(processingQueue, block);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke(uint64_t a1)
{
  v133 = *MEMORY[0x1E69E9840];
  v1 = [*(a1 + 32) availabilityRequestsQueue];
  [v1 cancelAllOperations];

  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_1();
  }

  [*(a1 + 32) setAvailabilityRequestInProgress:0];
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:0];
  [*(a1 + 32) setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:0];
  v2 = [*(a1 + 32) internalTimesWhenAllAttendeesCanAttend];
  [v2 removeAllObjects];

  v3 = [*(a1 + 32) internalTimesWhenSomeAttendeesCanAttend];
  [v3 removeAllObjects];

  v4 = [*(a1 + 32) internalProposedTimes];
  [v4 removeAllObjects];

  v5 = [*(a1 + 32) internalOriginalConflictedParticipants];
  [v5 removeAllObjects];

  v6 = [*(a1 + 32) participantAddressesToParticipants];
  [v6 removeAllObjects];

  v7 = [*(a1 + 32) leftoverSpans];
  [v7 removeAllObjects];

  [*(a1 + 32) setNextAvailabilityRangeStartDate:0];
  [*(a1 + 32) setInternalOriginalStartDate:0];
  [*(a1 + 32) setInternalOriginalEndDate:0];
  [*(a1 + 32) setOriginalRangeStartDate:0];
  [*(a1 + 32) setSource:0];
  [*(a1 + 32) setIgnoredEventID:0];
  [*(a1 + 32) setOrganizerAddress:0];
  [*(a1 + 32) _resetSearchFallbackNumbers];
  [*(a1 + 32) _sendStateChange:0];
  v8 = (a1 + 40);
  v9 = [*(a1 + 40) constraints];
  v10 = [v9 supportsAvailabilityRequests];

  if (*(a1 + 40))
  {
    if (v10)
    {
      v11 = [*(a1 + 40) startDate];
      v12 = [*v8 endDateUnadjustedForLegacyClients];
      v13 = [v11 isEqualToDate:v12];

      if (v13)
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_15();
        }

        return;
      }

      if ([*v8 isAllDay])
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_14();
        }

        return;
      }

      v14 = [*v8 isDetached];
      v15 = *v8;
      if (v14)
      {
        v16 = [v15 originalItem];
        v88 = [v16 uniqueId];
      }

      else
      {
        v88 = [v15 uniqueId];
      }

      v17 = EKUIAvailabilitySearchHandle;
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_3(v8, v17);
      }

      v84 = objc_opt_new();
      v18 = [*(a1 + 40) startDate];
      [*(a1 + 32) setInternalOriginalStartDate:v18];

      v19 = [*(a1 + 40) endDateUnadjustedForLegacyClients];
      [*(a1 + 32) setInternalOriginalEndDate:v19];

      v87 = objc_opt_new();
      v20 = [MEMORY[0x1E695DEE8] currentCalendar];
      v21 = [*(a1 + 40) timeZone];
      if (v21 && ([v20 timeZone], v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*v8, "timeZone"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v22, "isEqualToTimeZone:", v23), v23, v22, v21, (v24 & 1) == 0))
      {
        v26 = [v20 copy];

        v27 = [*v8 timeZone];
        [v26 setTimeZone:v27];

        v25 = v26;
      }

      else
      {
        v25 = v20;
      }

      v86 = v25;
      v28 = [v87 dateByAddingHours:1 inCalendar:?];
      v85 = [v28 dateRoundedToNearestFifteenMinutesInCalendar:v86];

      [*(a1 + 32) setOriginalRangeStartDate:v85];
      v29 = [*(a1 + 32) originalRangeStartDate];
      [*(a1 + 32) setNextAvailabilityRangeStartDate:v29];

      [*(a1 + 32) setIgnoredEventID:v88];
      v30 = [*(a1 + 40) calendar];
      v31 = [v30 source];
      [*(a1 + 32) setSource:v31];

      if ([*(a1 + 40) isStartDateDirty])
      {
        v97 = 1;
      }

      else
      {
        v97 = [*v8 isEndDateDirty];
      }

      v91 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v96 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_4();
      }

      v92 = [*v8 organizer];
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      v32 = [*v8 attendees];
      v33 = [v32 countByEnumeratingWithState:&v123 objects:v132 count:16];
      if (v33)
      {
        v34 = *v124;
        do
        {
          for (i = 0; i != v33; ++i)
          {
            if (*v124 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v36 = *(*(&v123 + 1) + 8 * i);
            if ([v36 participantType] != 2)
            {
              v38 = [v36 URL];
              v39 = [v38 absoluteString];

              if (v39)
              {
                if (([v36 isEqualToParticipant:v92] & 1) == 0)
                {
                  if (v97)
                  {
                    v40 = EKUIAvailabilitySearchHandle;
                    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v129 = v36;
                      _os_log_debug_impl(&dword_1A805E000, v40, OS_LOG_TYPE_DEBUG, "The event has a dirty date property, so we'll forcibly request availability for this participant: [%@]", buf, 0xCu);
                    }

                    goto LABEL_52;
                  }

                  if ([v36 participantStatus] == 3)
                  {
                    v42 = EKUIAvailabilitySearchHandle;
                    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v129 = v36;
                      _os_log_debug_impl(&dword_1A805E000, v42, OS_LOG_TYPE_DEBUG, "Attendee has declined: [%@]", buf, 0xCu);
                    }

                    [v91 addObject:v36];
                  }

                  else if (!EKUIAttendeeUtils_AttendeeHasResponded(v36))
                  {
                    v43 = EKUIAvailabilitySearchHandle;
                    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 138412290;
                      v129 = v36;
                      _os_log_debug_impl(&dword_1A805E000, v43, OS_LOG_TYPE_DEBUG, "Attendee needs to respond: [%@]", buf, 0xCu);
                    }

LABEL_52:
                    [v96 addObject:v39];
                  }

                  v44 = EKUIAvailabilitySearchHandle;
                  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v129 = v39;
                    v130 = 2112;
                    v131 = v36;
                    _os_log_debug_impl(&dword_1A805E000, v44, OS_LOG_TYPE_DEBUG, "Adding participant with address [%@] to the list of attendees to be included in conflict resolution.  Participant: [%@]", buf, 0x16u);
                  }

                  v45 = [*(a1 + 32) participantAddressesToParticipants];
                  [v45 setObject:v36 forKey:v39];
                }
              }

              else
              {
                v41 = EKUIAvailabilitySearchHandle;
                if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v129 = v36;
                  _os_log_error_impl(&dword_1A805E000, v41, OS_LOG_TYPE_ERROR, "No participant address found for participant: [%@].  Will not search use this participant to search for alternative times.", buf, 0xCu);
                }
              }

              goto LABEL_57;
            }

            v37 = EKUIAvailabilitySearchHandle;
            if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412290;
              v129 = v36;
              _os_log_debug_impl(&dword_1A805E000, v37, OS_LOG_TYPE_DEBUG, "Will not consider attendee for conflict detection because it is a room: [%@]", buf, 0xCu);
            }

LABEL_57:
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v46 = v36;
              v47 = [v46 proposedStartDateForEvent:*v8];
              if (v47)
              {
                v48 = [*(a1 + 32) internalProposedStarts];
                [v48 addObject:v47];
              }
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v123 objects:v132 count:16];
        }

        while (v33);
      }

      v49 = [v92 URL];
      v90 = [v49 absoluteString];

      v50 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
      if (v90)
      {
        if (v50)
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_5();
        }

        [*(a1 + 32) setOrganizerAddress:v90];
        v51 = [*(a1 + 32) participantAddressesToParticipants];
        [v51 setObject:v92 forKey:v90];
      }

      else
      {
        if (v50)
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_6();
        }

        v52 = a1;
        if (*(a1 + 48))
        {
          [*(a1 + 32) setOrganizerAddress:?];
          v53 = [objc_opt_class() _selfOrganizerForNewlyScheduledEventWithAddress:*(a1 + 48)];
          v54 = [*(a1 + 32) participantAddressesToParticipants];
          [v54 setObject:v53 forKey:*(a1 + 48)];
        }

        else
        {
          if (!os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_74;
          }

          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_7();
        }
      }

      v52 = a1;
LABEL_74:
      if ((v97 & 1) != 0 || (v52 = a1, [v96 count]))
      {
        objc_initWeak(buf, *(v52 + 32));
        v55 = objc_alloc_init(MEMORY[0x1E695DF90]);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_19;
        aBlock[3] = &unk_1E77FDED0;
        objc_copyWeak(&v122, buf);
        v56 = v55;
        v121 = v56;
        v95 = _Block_copy(aBlock);
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_12();
        }

        v57 = [EKRequestAvailabilityOperation alloc];
        v58 = [*(a1 + 32) source];
        v59 = [*(a1 + 32) internalOriginalStartDate];
        v60 = [*(a1 + 32) internalOriginalEndDate];
        v61 = [*(a1 + 32) ignoredEventID];
        val = [(EKRequestAvailabilityOperation *)v57 initWithSource:v58 startDate:v59 endDate:v60 ignoredEventID:v61 addresses:v96 resultsBlock:v95];

        objc_initWeak(&location, val);
        v112[0] = MEMORY[0x1E69E9820];
        v112[1] = 3221225472;
        v112[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22;
        v112[3] = &unk_1E77FDF20;
        objc_copyWeak(&v116, buf);
        objc_copyWeak(&v117, &location);
        v94 = v56;
        v113 = v94;
        v118 = v97;
        v62 = v91;
        v63 = a1;
        v64 = *(a1 + 32);
        v114 = v62;
        v115 = v64;
        [(EKRequestAvailabilityOperation *)val setCompletionBlock:v112];
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_13();
          v63 = a1;
        }

        [*(v63 + 32) setAvailabilityRequestInProgress:1];
        v65 = [*(v63 + 32) availabilityRequestsQueue];
        [v65 addOperation:val];

        v66 = [*(a1 + 32) internalOriginalEndDate];
        v67 = [*(a1 + 32) internalOriginalStartDate];
        [v66 timeIntervalSinceDate:v67];
        v69 = v68;

        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        obj = v84;
        v70 = [obj countByEnumeratingWithState:&v108 objects:v127 count:16];
        if (v70)
        {
          v71 = *v109;
          do
          {
            for (j = 0; j != v70; ++j)
            {
              if (*v109 != v71)
              {
                objc_enumerationMutation(obj);
              }

              v73 = *(*(&v108 + 1) + 8 * j);
              v74 = [EKRequestAvailabilityOperation alloc];
              v75 = [*(a1 + 32) source];
              v76 = [v73 dateByAddingTimeInterval:*&v69];
              v77 = [*(a1 + 32) ignoredEventID];
              v78 = [(EKRequestAvailabilityOperation *)v74 initWithSource:v75 startDate:v73 endDate:v76 ignoredEventID:v77 addresses:v96 resultsBlock:v95];

              objc_initWeak(&from, v78);
              v99[0] = MEMORY[0x1E69E9820];
              v99[1] = 3221225472;
              v99[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_27;
              v99[3] = &unk_1E77FDF70;
              objc_copyWeak(&v104, buf);
              objc_copyWeak(v105, &from);
              v100 = v94;
              v106 = v97;
              v101 = v62;
              v102 = v73;
              v105[1] = v69;
              v103 = *(a1 + 32);
              [(EKRequestAvailabilityOperation *)v78 setCompletionBlock:v99];
              v79 = [*(a1 + 32) availabilityRequestsQueue];
              [v79 addOperation:v78];

              objc_destroyWeak(v105);
              objc_destroyWeak(&v104);
              objc_destroyWeak(&from);
            }

            v70 = [obj countByEnumeratingWithState:&v108 objects:v127 count:16];
          }

          while (v70);
        }

        objc_destroyWeak(&v117);
        objc_destroyWeak(&v116);
        objc_destroyWeak(&location);

        objc_destroyWeak(&v122);
        objc_destroyWeak(buf);
      }

      else
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_8();
        }

        if ([v91 count])
        {
          v80 = EKUIAvailabilitySearchHandle;
          if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
          {
            __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_9(v80, v91);
          }

          v81 = [*(a1 + 32) internalOriginalConflictedParticipants];
          [v81 addObjectsFromArray:v91];

          [*(a1 + 32) _transitionToConflictFoundStateAndSearch];
        }

        else
        {
          v82 = [*(a1 + 32) noConflictRequired];
          v83 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
          if (v82)
          {
            if (v83)
            {
              __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_11();
            }

            [*(a1 + 32) _transitionToConflictFoundStateAndSearch];
          }

          else if (v83)
          {
            __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_10();
          }
        }
      }

      return;
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_2();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_16();
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained processingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_2;
    v7[3] = &unk_1E77FD580;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      if (([v3 isCancelled] & 1) == 0)
      {
        v5 = [v4 error];
        v6 = [WeakRetained processingQueue];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23;
        v10[3] = &unk_1E77FDEF8;
        v11 = v5;
        v12 = WeakRetained;
        v13 = *(a1 + 32);
        v16 = *(a1 + 72);
        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        v14 = v7;
        v15 = v8;
        v9 = v5;
        dispatch_async(v6, v10);
      }
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_1();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2();
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_1();
    }

    [*(a1 + 40) setAvailabilityRequestInProgress:0];
    [*(a1 + 40) _haltSearchWithError:1];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24;
    v14 = &unk_1E77FD298;
    v3 = *(a1 + 48);
    v15 = *(a1 + 40);
    v4 = v2;
    v16 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:&v11];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v5 addObjectsFromArray:{v4, v11, v12, v13, v14, v15}];
    if ((*(a1 + 72) & 1) == 0)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_2();
      }

      [v5 addObjectsFromArray:*(a1 + 56)];
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_3();
    }

    v6 = [*(a1 + 40) internalOriginalConflictedParticipants];
    [v6 addObjectsFromArray:v5];

    v7 = [*(a1 + 40) originalRangeStartDate];
    [*(a1 + 40) setNextAvailabilityRangeStartDate:v7];

    [*(a1 + 40) setAvailabilityRequestInProgress:0];
    v8 = [v5 count];
    v9 = [*(a1 + 64) noConflictRequired];
    v10 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
    if ((v9 & 1) != 0 || v8)
    {
      if (v10)
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_5();
      }

      [*(a1 + 40) _transitionToConflictFoundStateAndSearch];
    }

    else if (v10)
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_4();
    }
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([EKAvailabilityUtilities spansIncludeBusyPeriod:a3])
  {
    v6 = [*(a1 + 32) _participantforParticipantAddress:v5];
    if (v6)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_2();
      }

      [*(a1 + 40) addObject:v6];
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_3();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_1();
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = objc_loadWeakRetained((a1 + 72));
  v4 = v3;
  if (WeakRetained)
  {
    if (v3)
    {
      if (([v3 isCancelled] & 1) == 0)
      {
        v5 = [v4 error];
        v6 = [WeakRetained processingQueue];
        v8[0] = MEMORY[0x1E69E9820];
        v8[1] = 3221225472;
        v8[2] = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_28;
        v8[3] = &unk_1E77FDF48;
        v9 = v5;
        v10 = WeakRetained;
        v11 = *(a1 + 32);
        v15 = *(a1 + 88);
        v12 = *(a1 + 40);
        v14 = *(a1 + 80);
        v13 = *(a1 + 48);
        v7 = v5;
        dispatch_async(v6, v8);
      }
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_1();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2();
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_28(uint64_t a1)
{
  if (*(a1 + 32))
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_1();
    }

    [*(a1 + 40) setAvailabilityRequestInProgress:0];
    [*(a1 + 40) _haltSearchWithError:1];
  }

  else
  {
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_29;
    v14 = &unk_1E77FD298;
    v3 = *(a1 + 48);
    v15 = *(a1 + 40);
    v4 = v2;
    v16 = v4;
    [v3 enumerateKeysAndObjectsUsingBlock:&v11];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v5 addObjectsFromArray:{v4, v11, v12, v13, v14, v15}];
    if ((*(a1 + 88) & 1) == 0)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_2();
      }

      [v5 addObjectsFromArray:*(a1 + 56)];
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_3();
    }

    v6 = [EKInviteeAlternativeTime alloc];
    v7 = *(a1 + 64);
    v8 = [v7 dateByAddingTimeInterval:*(a1 + 80)];
    v9 = [(EKInviteeAlternativeTime *)v6 initWithStartDate:v7 endDate:v8 conflictedParticipants:v5];

    v10 = [*(a1 + 72) internalProposedTimes];
    [v10 addObject:v9];

    [*(a1 + 72) _sendStateChange:2];
    [*(a1 + 40) setAvailabilityRequestInProgress:0];
  }
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_29(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if ([EKAvailabilityUtilities spansIncludeBusyPeriod:a3])
  {
    v6 = [*(a1 + 32) _participantforParticipantAddress:v5];
    if (v6)
    {
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
      {
        __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_2();
      }

      [*(a1 + 40) addObject:v6];
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_3();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_1();
  }
}

+ (id)stateAsString:(int64_t)string
{
  if (string > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E77FE098[string];
  }
}

- (void)_attemptSearch
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained processingQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_2;
    v7[3] = &unk_1E77FD580;
    v8 = *(a1 + 32);
    v9 = v3;
    dispatch_async(v6, v7);
  }
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v3 = objc_loadWeakRetained(a1 + 8);
  if (v3)
  {
    if (WeakRetained)
    {
      if ([WeakRetained isCancelled])
      {
        if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
        {
          __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_1();
        }
      }

      else
      {
        v4 = [WeakRetained error];
        v5 = [v3 processingQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46;
        block[3] = &unk_1E77FDF98;
        block[4] = v3;
        v8 = v4;
        v9 = a1[4];
        v10 = a1[5];
        v11 = a1[6];
        v6 = v4;
        dispatch_async(v5, block);
      }
    }

    else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_2();
    }
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2();
  }
}

uint64_t __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46(uint64_t a1)
{
  [*(a1 + 32) setAvailabilityRequestInProgress:0];
  if (*(a1 + 40))
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46_cold_1();
    }

    return [*(a1 + 32) _attemptSearch];
  }

  else
  {
    [*(a1 + 32) setNextAvailabilityRangeStartDate:*(a1 + 48)];
    v3 = *(a1 + 32);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v6 = *(a1 + 48);

    return [v3 _processResults:v4 betweenStartDate:v5 endDate:v6];
  }
}

- (void)_resetSearchFallbackNumbers
{
  v3 = MEMORY[0x1E696AD98];
  selfCopy = self;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "remainingSearchAttempts")}];
  v6 = MEMORY[0x1E696AD98];
  [a2 availabilitySearchDurationMultiplier];
  v7 = [v6 numberWithDouble:?];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x16u);
}

- (void)_sendStateChange:(int64_t)change
{
  callbackQueue = [(EKInviteeAlternativeTimeSearcher *)self callbackQueue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke;
  v6[3] = &unk_1E77FDDC0;
  v6[4] = self;
  v6[5] = change;
  dispatch_async(callbackQueue, v6);
}

void __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) stateChanged];

  v4 = EKUIAvailabilitySearchHandle;
  if (v3)
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_1(v2, v4, a1);
    }

    v5 = [*(a1 + 32) stateChanged];
    v5[2](v5, *(a1 + 40));
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_2(v2, v4, a1);
  }
}

- (void)_transitionToConflictFoundStateAndSearch
{
  v5 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  v3 = [objc_opt_class() stateAsString:1];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_1A805E000, selfCopy, OS_LOG_TYPE_DEBUG, "Transitioning to the [%@] state and attempting a search.", v4, 0xCu);
}

- (id)_participantforParticipantAddress:(id)address
{
  addressCopy = address;
  participantAddressesToParticipants = [(EKInviteeAlternativeTimeSearcher *)self participantAddressesToParticipants];
  v6 = [participantAddressesToParticipants objectForKey:addressCopy];

  if (!v6)
  {
    v7 = EKUtils_AdjustedAttendeeAddress(addressCopy);
    participantAddressesToParticipants2 = [(EKInviteeAlternativeTimeSearcher *)self participantAddressesToParticipants];
    v6 = [participantAddressesToParticipants2 objectForKey:v7];
  }

  return v6;
}

- (void)_processResults:(id)results betweenStartDate:(id)date endDate:(id)endDate
{
  v44 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  dateCopy = date;
  endDateCopy = endDate;
  v11 = EKUIAvailabilitySearchHandle;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v39 = dateCopy;
    v40 = 2112;
    v41 = endDateCopy;
    v42 = 2112;
    v43 = resultsCopy;
    _os_log_debug_impl(&dword_1A805E000, v11, OS_LOG_TYPE_DEBUG, "Processing results - start date: [%@] end date: [%@] results: [%@]", buf, 0x20u);
  }

  v35 = dateCopy;
  v36 = resultsCopy;
  v34 = endDateCopy;
  v12 = [(EKInviteeAlternativeTimeSearcher *)self _generateTimeSpansForResults:resultsCopy betweenStartDate:dateCopy endDate:endDateCopy];
  leftoverSpans = [(EKInviteeAlternativeTimeSearcher *)self leftoverSpans];
  v14 = [(EKInviteeAlternativeTimeSearcher *)self _spliceLeftTimeSpans:leftoverSpans andNewTimeSpans:v12];

  v33 = v14;
  v15 = [(EKInviteeAlternativeTimeSearcher *)self _mergeAdjacentSpansWithSameConflictedParticipants:v14];
  v16 = [(EKInviteeAlternativeTimeSearcher *)self _generateOpenFreeTimesFromTimeSpans:v15];
  v17 = [(EKInviteeAlternativeTimeSearcher *)self _generateNonOptimalTimesFromTimeSpans:v15];
  v18 = [objc_opt_class() _findLeftoverSpans:v12 usingFreeTimes:v16 andNonOptimalTimes:v17];
  leftoverSpans2 = [(EKInviteeAlternativeTimeSearcher *)self leftoverSpans];
  v32 = v18;
  [leftoverSpans2 setArray:v18];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __77__EKInviteeAlternativeTimeSearcher__processResults_betweenStartDate_endDate___block_invoke;
  aBlock[3] = &unk_1E77FDFE8;
  aBlock[4] = self;
  v20 = _Block_copy(aBlock);
  v21 = [v16 indexesOfObjectsPassingTest:v20];
  v22 = [v17 indexesOfObjectsPassingTest:v20];
  internalTimesWhenAllAttendeesCanAttend = [(EKInviteeAlternativeTimeSearcher *)self internalTimesWhenAllAttendeesCanAttend];
  v24 = [v16 objectsAtIndexes:v21];
  [internalTimesWhenAllAttendeesCanAttend addObjectsFromArray:v24];

  internalTimesWhenSomeAttendeesCanAttend = [(EKInviteeAlternativeTimeSearcher *)self internalTimesWhenSomeAttendeesCanAttend];
  v26 = [v17 objectsAtIndexes:v22];
  [internalTimesWhenSomeAttendeesCanAttend addObjectsFromArray:v26];

  if (-[EKInviteeAlternativeTimeSearcher internalSearchingForMoreTimesWhenAllAttendeesCanAttend](self, "internalSearchingForMoreTimesWhenAllAttendeesCanAttend") && [v16 count])
  {
    [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:0];
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  if (-[EKInviteeAlternativeTimeSearcher internalSearchingForMoreTimesWhenSomeAttendeesCanAttend](self, "internalSearchingForMoreTimesWhenSomeAttendeesCanAttend") && [v17 count])
  {
    [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:0];
  }

  else if (!v27)
  {
    goto LABEL_14;
  }

  v28 = EKUIAvailabilitySearchHandle;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKInviteeAlternativeTimeSearcher _processResults:v28 betweenStartDate:v16 endDate:v17];
  }

  [(EKInviteeAlternativeTimeSearcher *)self _sendStateChange:2];
  LOBYTE(v27) = 1;
LABEL_14:
  if (![(EKInviteeAlternativeTimeSearcher *)self internalSearchingForMoreTimesWhenAllAttendeesCanAttend]&& ![(EKInviteeAlternativeTimeSearcher *)self internalSearchingForMoreTimesWhenSomeAttendeesCanAttend])
  {
    if ((v27 & 1) == 0)
    {
      CalAnalyticsSendEvent();
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        [EKInviteeAlternativeTimeSearcher _processResults:betweenStartDate:endDate:];
      }
    }

    goto LABEL_25;
  }

  remainingSearchAttempts = [(EKInviteeAlternativeTimeSearcher *)self remainingSearchAttempts];
  v30 = EKUIAvailabilitySearchHandle;
  v31 = os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG);
  if (!remainingSearchAttempts)
  {
    if (v31)
    {
      [EKInviteeAlternativeTimeSearcher _processResults:betweenStartDate:endDate:];
    }

LABEL_25:
    [(EKInviteeAlternativeTimeSearcher *)self _haltSearchWithError:0];
    goto LABEL_26;
  }

  if (v31)
  {
    [EKInviteeAlternativeTimeSearcher _processResults:v30 betweenStartDate:self endDate:?];
  }

  [(EKInviteeAlternativeTimeSearcher *)self _attemptSearch];
LABEL_26:
}

uint64_t __77__EKInviteeAlternativeTimeSearcher__processResults_betweenStartDate_endDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 endDate];
  v4 = [*(a1 + 32) originalRangeStartDate];
  v5 = [v3 CalIsBeforeDate:v4];

  return v5 ^ 1u;
}

- (void)_haltSearchWithError:(BOOL)error
{
  errorCopy = error;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    [EKInviteeAlternativeTimeSearcher _haltSearchWithError:];
  }

  [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenAllAttendeesCanAttend:0];
  [(EKInviteeAlternativeTimeSearcher *)self setInternalSearchingForMoreTimesWhenSomeAttendeesCanAttend:0];
  if (errorCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  [(EKInviteeAlternativeTimeSearcher *)self _sendStateChange:v5];
}

+ (id)_findLeftoverSpans:(id)spans usingFreeTimes:(id)times andNonOptimalTimes:(id)optimalTimes
{
  spansCopy = spans;
  v8 = MEMORY[0x1E695DF70];
  optimalTimesCopy = optimalTimes;
  timesCopy = times;
  v11 = objc_alloc_init(v8);
  lastObject = [timesCopy lastObject];

  endDate = [lastObject endDate];
  lastObject2 = [optimalTimesCopy lastObject];

  endDate2 = [lastObject2 endDate];
  v16 = endDate;
  v17 = v16;
  if (v16)
  {
    v18 = v16;
    if (endDate2)
    {
      v18 = v16;
      if (([v16 CalIsAfterDate:endDate2] & 1) == 0)
      {
        v18 = endDate2;
      }
    }
  }

  else
  {
    v18 = endDate2;
    if (!v18)
    {
      goto LABEL_12;
    }
  }

  v19 = [objc_opt_class() _binarySearchForIndexOfTimeSpanInArray:spansCopy containingDate:v18];
  if (v19 == [objc_opt_class() _invalidBinarySearchIndex])
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
    {
      +[EKInviteeAlternativeTimeSearcher _findLeftoverSpans:usingFreeTimes:andNonOptimalTimes:];
    }
  }

  else
  {
    v20 = [spansCopy objectAtIndex:v19];
    v21 = [v20 copy];
    [v21 setStartDate:v18];
    [v11 addObject:v21];
    v22 = [spansCopy count] + ~v19;
    if (v22)
    {
      v23 = [spansCopy subarrayWithRange:{v19 + 1, v22}];
      [v11 addObjectsFromArray:v23];
    }
  }

LABEL_12:
  v24 = +[EKDebugPreferences shared];
  verifyIntegrityOfAvailabilityTimeSearchTimelines = [v24 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (verifyIntegrityOfAvailabilityTimeSearchTimelines)
  {
    [objc_opt_class() _validateSpans:v11];
  }

  return v11;
}

+ (id)_addressesForParticipants:(id)participants
{
  v19 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  if (participantsCopy && [participantsCopy count])
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = participantsCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          participant = [*(*(&v14 + 1) + 8 * i) participant];
          v11 = [participant URL];
          absoluteString = [v11 absoluteString];

          if (absoluteString)
          {
            [v4 addObject:absoluteString];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }
  }

  return v4;
}

+ (BOOL)_span:(id)_span hasSameConflictedParticipantsAsSpan:(id)span
{
  spanCopy = span;
  _spanCopy = _span;
  v7 = objc_opt_class();
  conflictedParticipants = [_spanCopy conflictedParticipants];

  v9 = [v7 _addressesForParticipants:conflictedParticipants];

  v10 = objc_opt_class();
  conflictedParticipants2 = [spanCopy conflictedParticipants];

  v12 = [v10 _addressesForParticipants:conflictedParticipants2];

  if (v9)
  {
    v13 = [v9 count] == 0;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v13 = 1;
    if (!v12)
    {
      goto LABEL_14;
    }
  }

  v14 = [v12 count];
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (v14)
  {
    v16 = v13;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v13 = v15;
  }

  else
  {
    v13 = [v9 isEqualToSet:v12];
  }

LABEL_14:

  return v13;
}

+ (id)_allButLastItemInArray:(id)array
{
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    v5 = [arrayCopy count];
    if (v5 > 1)
    {
      [v4 subarrayWithRange:{0, v5 - 1}];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_allButFirstItemInArray:(id)array
{
  arrayCopy = array;
  v4 = arrayCopy;
  if (arrayCopy)
  {
    v5 = [arrayCopy count];
    if (v5 > 1)
    {
      [v4 subarrayWithRange:{1, v5 - 1}];
    }

    else
    {
      [MEMORY[0x1E695DEC8] array];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_spliceLeftTimeSpans:(id)spans andNewTimeSpans:(id)timeSpans
{
  spansCopy = spans;
  timeSpansCopy = timeSpans;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (spansCopy && [spansCopy count])
  {
    lastObject = [spansCopy lastObject];
    firstObject = [timeSpansCopy firstObject];
    conflictedParticipants = [lastObject conflictedParticipants];
    v11 = [conflictedParticipants count];

    conflictedParticipants2 = [firstObject conflictedParticipants];
    v13 = [conflictedParticipants2 count];

    if ((v11 != 0) != (v13 == 0) && (!v11 || [objc_opt_class() _span:lastObject hasSameConflictedParticipantsAsSpan:firstObject]))
    {
      v14 = [objc_opt_class() _allButLastItemInArray:spansCopy];
      [v7 addObjectsFromArray:v14];
      v15 = objc_alloc_init(EKInviteeTimeSpan);
      startDate = [lastObject startDate];
      [(EKInviteeTimeSpan *)v15 setStartDate:startDate];

      endDate = [firstObject endDate];
      [(EKInviteeTimeSpan *)v15 setEndDate:endDate];

      conflictedParticipants3 = [lastObject conflictedParticipants];
      [(EKInviteeTimeSpan *)v15 setConflictedParticipants:conflictedParticipants3];

      [v7 addObject:v15];
      v19 = [objc_opt_class() _allButFirstItemInArray:timeSpansCopy];
      [v7 addObjectsFromArray:v19];
    }

    else
    {
      [v7 addObjectsFromArray:spansCopy];
      [v7 addObjectsFromArray:timeSpansCopy];
    }
  }

  else
  {
    [v7 addObjectsFromArray:timeSpansCopy];
  }

  v20 = +[EKDebugPreferences shared];
  verifyIntegrityOfAvailabilityTimeSearchTimelines = [v20 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (verifyIntegrityOfAvailabilityTimeSearchTimelines)
  {
    [objc_opt_class() _validateSpans:v7];
  }

  return v7;
}

- (id)_mergeAdjacentSpansWithSameConflictedParticipants:(id)participants
{
  v22 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (participantsCopy && [participantsCopy count])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = participantsCopy;
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v18;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v18 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v17 + 1) + 8 * i);
          if (v8 && [objc_opt_class() _span:v11 hasSameConflictedParticipantsAsSpan:{v8, v17}])
          {
            endDate = [v11 endDate];
            [v8 setEndDate:endDate];
          }

          else
          {
            v13 = v11;

            [v4 addObject:v13];
            v8 = v13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }
  }

  v14 = +[EKDebugPreferences shared];
  verifyIntegrityOfAvailabilityTimeSearchTimelines = [v14 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (verifyIntegrityOfAvailabilityTimeSearchTimelines)
  {
    [objc_opt_class() _validateSpans:v4];
  }

  return v4;
}

- (id)_generateOpenFreeTimesFromTimeSpans:(id)spans
{
  v36 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  internalOriginalEndDate = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalEndDate];
  internalOriginalStartDate = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalStartDate];
  [internalOriginalEndDate timeIntervalSinceDate:internalOriginalStartDate];
  v9 = v8;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v10 = spansCopy;
  v11 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v32;
    v29 = *v32;
    v30 = v10;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v31 + 1) + 8 * i);
        conflictedParticipants = [v15 conflictedParticipants];
        v17 = [conflictedParticipants count];

        if (!v17)
        {
          endDate = [v15 endDate];
          startDate = [v15 startDate];
          [endDate timeIntervalSinceDate:startDate];
          v21 = v20;

          if (v21 >= v9)
          {
            v22 = (v21 / v9);
            for (j = [v15 startDate];
            {
              v24 = [j dateByAddingTimeInterval:v9];
              v25 = [EKInviteeAlternativeTime alloc];
              conflictedParticipants2 = [v15 conflictedParticipants];
              v27 = [(EKInviteeAlternativeTime *)v25 initWithStartDate:j endDate:v24 conflictedParticipants:conflictedParticipants2];

              [v5 addObject:v27];
              j = v24;
            }

            v13 = v29;
            v10 = v30;
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }

  return v5;
}

+ (void)_insertUniqueParticipants:(id)participants intoExistingParticipantsArray:(id)array
{
  v37 = *MEMORY[0x1E69E9840];
  participantsCopy = participants;
  arrayCopy = array;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = participantsCopy;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v31 + 1) + 8 * i);
        participant = [v13 participant];
        v15 = [participant URL];
        absoluteString = [v15 absoluteString];

        if (absoluteString)
        {
          [v7 setObject:v13 forKey:absoluteString];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v10);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v17 = arrayCopy;
  v18 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v28;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v28 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v27 + 1) + 8 * j);
        participant2 = [v22 participant];
        v24 = [participant2 URL];
        absoluteString2 = [v24 absoluteString];

        if (absoluteString2)
        {
          [v7 setObject:v22 forKey:absoluteString2];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v19);
  }

  allValues = [v7 allValues];
  [v17 setArray:allValues];
}

- (id)_generateNonOptimalTimesFromTimeSpans:(id)spans
{
  v74 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  v60 = objc_alloc_init(MEMORY[0x1E695DF70]);
  internalOriginalEndDate = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalEndDate];
  selfCopy = self;
  internalOriginalStartDate = [(EKInviteeAlternativeTimeSearcher *)self internalOriginalStartDate];
  [internalOriginalEndDate timeIntervalSinceDate:internalOriginalStartDate];
  v8 = v7;

  firstObject = [spansCopy firstObject];
  lastObject = [spansCopy lastObject];
  v58 = firstObject;
  startDate = [firstObject startDate];
  v57 = lastObject;
  endDate = [lastObject endDate];
  v13 = startDate;
  v66 = spansCopy;
  v67 = [spansCopy count];
  v59 = v13;
  v61 = endDate;
  if ([v13 CalIsBeforeDate:endDate] && v67)
  {
    v14 = 0;
    v15 = v13;
    while (1)
    {
      v16 = [v15 dateByAddingTimeInterval:v8];
      if ([v16 CalIsAfterDate:endDate])
      {

        v13 = v15;
        break;
      }

      v17 = objc_alloc_init(EKInviteeTimeSpan);
      [(EKInviteeTimeSpan *)v17 setStartDate:v15];
      v18 = v16;
      [(EKInviteeTimeSpan *)v17 setEndDate:v16];
      v19 = [v66 objectAtIndex:v14];
      v20 = objc_alloc(MEMORY[0x1E695DF70]);
      conflictedParticipants = [v19 conflictedParticipants];
      v22 = [v20 initWithArray:conflictedParticipants];

      endDate2 = [(EKInviteeTimeSpan *)v17 endDate];
      endDate3 = [v19 endDate];
      v25 = [endDate2 isEqualToDate:endDate3];

      v62 = v19;
      if (v25)
      {
        ++v14;
      }

      else
      {
        endDate4 = [(EKInviteeTimeSpan *)v17 endDate];
        endDate5 = [v19 endDate];
        v30 = [endDate4 CalIsAfterDate:endDate5];

        if (v30)
        {
          v31 = v14 + 1;
          if (v14 + 1 < v67)
          {
            v32 = v14;
            v33 = v14 + 1;
            v13 = v18;
            while (1)
            {
              v34 = [v66 objectAtIndex:v31];
              startDate2 = [v34 startDate];
              v36 = [startDate2 CalIsBeforeDate:v13];

              if (!v36)
              {
                break;
              }

              v37 = objc_opt_class();
              conflictedParticipants2 = [v34 conflictedParticipants];
              [v37 _insertUniqueParticipants:conflictedParticipants2 intoExistingParticipantsArray:v22];

              endDate6 = [v34 endDate];
              LODWORD(conflictedParticipants2) = [endDate6 isEqualToDate:v13];

              if (conflictedParticipants2)
              {
                v31 = v32 + 2;
                break;
              }

              endDate7 = [v34 endDate];
              v41 = [endDate7 CalIsAfterDate:v13];

              v14 = v32 + 1;
              if ((v41 & 1) == 0)
              {
                v31 = v33++;
                v42 = v32 + 2;
                ++v32;
                if (v42 < v67)
                {
                  continue;
                }
              }

              goto LABEL_8;
            }

            v14 = v31;
            goto LABEL_8;
          }
        }
      }

      v13 = v18;
LABEL_8:
      [(EKInviteeTimeSpan *)v17 setConflictedParticipants:v22];
      conflictedParticipants3 = [(EKInviteeTimeSpan *)v17 conflictedParticipants];
      v27 = [conflictedParticipants3 count];

      if (v27)
      {
        [v60 addObject:v17];
      }

      endDate = v61;
      if ([v13 CalIsBeforeDate:v61])
      {
        v15 = v13;
        if (v14 < v67)
        {
          continue;
        }
      }

      break;
    }
  }

  v68 = v13;
  v63 = [(EKInviteeAlternativeTimeSearcher *)selfCopy _filterOutUnreasonableTimeSlots:v60];
  v65 = [objc_opt_class() _rankNonOptimalTimeSpans:v63];
  v43 = [objc_opt_class() _findHighestRankedNonOptimalTimeSpans:v65];
  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v45 = v43;
  v46 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v70;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v70 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v69 + 1) + 8 * i);
        v51 = [EKInviteeAlternativeTime alloc];
        startDate3 = [v50 startDate];
        endDate8 = [v50 endDate];
        conflictedParticipants4 = [v50 conflictedParticipants];
        v55 = [(EKInviteeAlternativeTime *)v51 initWithStartDate:startDate3 endDate:endDate8 conflictedParticipants:conflictedParticipants4];

        [v44 addObject:v55];
      }

      v47 = [v45 countByEnumeratingWithState:&v69 objects:v73 count:16];
    }

    while (v47);
  }

  return v44;
}

- (id)_filterOutUnreasonableTimeSlots:(id)slots
{
  if (slots)
  {
    slotsCopy = slots;
    participantAddressesToParticipants = [(EKInviteeAlternativeTimeSearcher *)self participantAddressesToParticipants];
    allKeys = [participantAddressesToParticipants allKeys];
    v7 = [allKeys count];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __68__EKInviteeAlternativeTimeSearcher__filterOutUnreasonableTimeSlots___block_invoke;
    v11[3] = &__block_descriptor_40_e34_B32__0__EKInviteeTimeSpan_8Q16_B24l;
    v11[4] = v7;
    v8 = [slotsCopy indexesOfObjectsPassingTest:v11];
    v9 = [slotsCopy objectsAtIndexes:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

BOOL __68__EKInviteeAlternativeTimeSearcher__filterOutUnreasonableTimeSlots___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v3 conflictedParticipants];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v16 + 1) + 8 * v9) participant];
        v11 = [v10 URL];
        v12 = [v11 absoluteString];

        if (v12)
        {
          [v4 addObject:v12];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v13 = *(a1 + 32);
    v14 = v13 != [v4 count];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

+ (id)_findHighestRankedNonOptimalTimeSpans:(id)spans
{
  v30 = *MEMORY[0x1E69E9840];
  spansCopy = spans;
  if ([spansCopy count] <= 0x14)
  {
    v4 = spansCopy;
LABEL_20:
    v17 = v4;
    goto LABEL_21;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = spansCopy;
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (!v6)
  {

LABEL_19:
    v4 = [v5 subarrayWithRange:{0, 20, v25}];
    goto LABEL_20;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  v10 = *v26;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v26 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v12 = *(*(&v25 + 1) + 8 * i);
      conflictedParticipants = [v12 conflictedParticipants];
      v14 = [conflictedParticipants count];

      if (v8 == v14)
      {
        ++v9;
      }

      else if (v8)
      {
        goto LABEL_13;
      }

      conflictedParticipants2 = [v12 conflictedParticipants];
      v8 = [conflictedParticipants2 count];
    }

    v7 = [v5 countByEnumeratingWithState:&v25 objects:v29 count:16];
  }

  while (v7);
LABEL_13:

  if (v9 <= 0x14)
  {
    goto LABEL_19;
  }

  v16 = [v5 mutableCopy];
  v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v18 = -20;
  do
  {
    v19 = arc4random();
    v20 = v19 % [v16 count];
    v21 = [v16 objectAtIndex:v20];
    [v17 addObject:v21];
    [v16 removeObjectAtIndex:v20];
  }

  while (!__CFADD__(v18++, 1));

LABEL_21:
  v23 = [v17 sortedArrayWithOptions:16 usingComparator:&__block_literal_global_28];

  return v23;
}

uint64_t __74__EKInviteeAlternativeTimeSearcher__findHighestRankedNonOptimalTimeSpans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 startDate];
  v6 = [v4 startDate];

  v7 = [v5 compare:v6];
  return v7;
}

uint64_t __61__EKInviteeAlternativeTimeSearcher__rankNonOptimalTimeSpans___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 conflictedParticipants];
  if (v6)
  {
    v7 = [v4 conflictedParticipants];
    v8 = [v7 count];
  }

  else
  {
    v8 = 0;
  }

  v9 = [v5 conflictedParticipants];
  if (v9)
  {
    v10 = [v5 conflictedParticipants];
    v11 = [v10 count];
  }

  else
  {
    v11 = 0;
  }

  if (v8 >= v11)
  {
    if (v8 > v11)
    {
      v12 = 1;
    }

    else
    {
      v13 = [v4 startDate];
      v14 = [v5 startDate];
      v12 = [v13 compare:v14];
    }
  }

  else
  {
    v12 = -1;
  }

  return v12;
}

- (id)_generateTimeSpansForResults:(id)results betweenStartDate:(id)date endDate:(id)endDate
{
  v8 = MEMORY[0x1E695DF70];
  endDateCopy = endDate;
  dateCopy = date;
  resultsCopy = results;
  v12 = objc_alloc_init(v8);
  v13 = objc_alloc_init(EKInviteeTimeSpan);
  [(EKInviteeTimeSpan *)v13 setStartDate:dateCopy];

  [(EKInviteeTimeSpan *)v13 setEndDate:endDateCopy];
  [v12 addObject:v13];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke;
  v22 = &unk_1E77FD298;
  selfCopy = self;
  v14 = v12;
  v24 = v14;
  [resultsCopy enumerateKeysAndObjectsUsingBlock:&v19];

  v15 = [EKDebugPreferences shared:v19];
  LODWORD(endDateCopy) = [v15 verifyIntegrityOfAvailabilityTimeSearchTimelines];

  if (endDateCopy)
  {
    [objc_opt_class() _validateSpans:v14];
  }

  v16 = v24;
  v17 = v14;

  return v14;
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) _participantforParticipantAddress:v5];
  if (v7)
  {
    v8 = [EKParticipantForSorting participantForSortingWithEKParticipant:v7];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60;
    v10[3] = &unk_1E77FE050;
    v11 = *(a1 + 40);
    v12 = v8;
    v13 = *(a1 + 32);
    v9 = v8;
    [v6 enumerateObjectsUsingBlock:v10];
  }

  else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_cold_1();
  }
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60(uint64_t a1, void *a2)
{
  v69[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v3 endDate];
  v6 = [v4 isEqualToDate:v5];

  if (v6)
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_3();
    }
  }

  else if (+[EKAvailabilityUtilities showTypeAsBusy:](EKAvailabilityUtilities, "showTypeAsBusy:", [v3 type]))
  {
    v7 = [*(a1 + 32) firstObject];
    v8 = [*(a1 + 32) lastObject];
    v9 = [v3 startDate];
    v10 = [v7 startDate];
    v11 = [v9 CalIsBeforeDate:v10];

    if (v11)
    {
      v12 = objc_alloc_init(EKInviteeTimeSpan);
      v13 = [v3 startDate];
      [(EKInviteeTimeSpan *)v12 setStartDate:v13];

      v14 = [v7 startDate];
      [(EKInviteeTimeSpan *)v12 setEndDate:v14];

      v15 = [(EKInviteeTimeSpan *)v12 conflictedParticipants];
      v69[0] = *(a1 + 40);
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
      [v15 addObjectsFromArray:v16];

      [*(a1 + 32) insertObject:v12 atIndex:0];
    }

    v17 = [v3 endDate];
    v18 = [v8 endDate];
    v19 = [v17 CalIsAfterDate:v18];

    if (v19)
    {
      v20 = objc_alloc_init(EKInviteeTimeSpan);
      v21 = [v8 endDate];
      [(EKInviteeTimeSpan *)v20 setStartDate:v21];

      v22 = [v3 endDate];
      [(EKInviteeTimeSpan *)v20 setEndDate:v22];

      v23 = [(EKInviteeTimeSpan *)v20 conflictedParticipants];
      v68 = *(a1 + 40);
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v68 count:1];
      [v23 addObjectsFromArray:v24];

      [*(a1 + 32) addObject:v20];
    }

    v25 = objc_opt_class();
    v26 = *(a1 + 32);
    v27 = [v3 startDate];
    v28 = [v25 _binarySearchForIndexOfTimeSpanInArray:v26 containingDate:v27];

    if (v28 == [objc_opt_class() _invalidBinarySearchIndex])
    {
      v29 = EKUIAvailabilitySearchHandle;
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_2(v29, v3);
      }
    }

    else
    {
      v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v31 = [*(a1 + 32) count];
      v66 = v28 - v31;
      if (v28 >= v31)
      {
        v60 = 0;
      }

      else
      {
        v63 = v8;
        v64 = v7;
        v32 = 0;
        v61 = v31 - v28;
        v62 = v28;
        v65 = a1;
        while (1)
        {
          v33 = [*(a1 + 32) objectAtIndex:{v28, v61}];
          v34 = [v3 endDate];
          v35 = [v33 startDate];
          v36 = [v34 CalIsBeforeOrSameAsDate:v35];

          if (v36)
          {
            break;
          }

          v37 = v30;
          v38 = [v33 startDate];
          v39 = [v33 endDate];
          v40 = [v3 startDate];
          v41 = [v33 startDate];
          v42 = [v40 CalIsAfterDate:v41];

          if (v42)
          {
            v43 = objc_alloc_init(EKInviteeTimeSpan);
            v44 = [v33 startDate];
            [(EKInviteeTimeSpan *)v43 setStartDate:v44];

            v45 = [v3 startDate];
            [(EKInviteeTimeSpan *)v43 setEndDate:v45];

            v46 = [(EKInviteeTimeSpan *)v43 conflictedParticipants];
            v47 = [v33 conflictedParticipants];
            [v46 addObjectsFromArray:v47];

            [v37 addObject:v43];
            v48 = [v3 startDate];

            v38 = v48;
          }

          [v37 addObject:v33];
          v49 = [v3 endDate];
          v50 = [v33 endDate];
          v51 = [v49 CalIsBeforeDate:v50];

          if (v51)
          {
            v52 = objc_alloc_init(EKInviteeTimeSpan);
            v53 = [v3 endDate];
            [(EKInviteeTimeSpan *)v52 setStartDate:v53];

            v54 = [v33 endDate];
            [(EKInviteeTimeSpan *)v52 setEndDate:v54];

            v55 = [(EKInviteeTimeSpan *)v52 conflictedParticipants];
            v56 = [v33 conflictedParticipants];
            [v55 addObjectsFromArray:v56];

            [v37 addObject:v52];
            v57 = [v3 endDate];

            v39 = v57;
          }

          v30 = v37;
          [v33 setStartDate:v38];
          [v33 setEndDate:v39];
          v58 = [v33 conflictedParticipants];
          a1 = v65;
          v67 = *(v65 + 40);
          v59 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
          [v58 addObjectsFromArray:v59];

          ++v28;
          if (v66 == --v32)
          {
            v8 = v63;
            v7 = v64;
            v60 = v61;
            v28 = v62;
            goto LABEL_23;
          }
        }

        v60 = -v32;
        v8 = v63;
        v7 = v64;
        v28 = v62;
      }

LABEL_23:
      if ([v30 count])
      {
        [*(a1 + 32) replaceObjectsInRange:v28 withObjectsFromArray:{v60, v30}];
      }

      else if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_1();
      }
    }
  }
}

+ (int64_t)_binarySearchForIndexOfTimeSpanInArray:(id)array containingDate:(id)date
{
  arrayCopy = array;
  dateCopy = date;
  _invalidBinarySearchIndex = [objc_opt_class() _invalidBinarySearchIndex];
  v8 = [arrayCopy count];
  if (arrayCopy && v8)
  {
    v9 = 0;
    v10 = v8 - 1;
    do
    {
      v11 = v9 + ((v10 - v9) >> 1);
      v12 = [arrayCopy objectAtIndex:v11];
      startDate = [v12 startDate];
      if ([dateCopy CalIsAfterOrSameAsDate:startDate])
      {
        endDate = [v12 endDate];
        v15 = [dateCopy CalIsBeforeDate:endDate];

        if (v15)
        {

          _invalidBinarySearchIndex = v9 + ((v10 - v9) >> 1);
          break;
        }
      }

      else
      {
      }

      startDate2 = [v12 startDate];
      v17 = [dateCopy CalIsBeforeDate:startDate2];

      if (v17)
      {
        v10 = v11 - 1;
      }

      else
      {
        v9 = v11 + 1;
      }
    }

    while (v9 <= v10);
  }

  return _invalidBinarySearchIndex;
}

+ (id)_selfOrganizerForNewlyScheduledEventWithAddress:(id)address
{
  v3 = MEMORY[0x1E6992F50];
  addressCopy = address;
  defaultProvider = [v3 defaultProvider];
  myFullName = [defaultProvider myFullName];
  v7 = myFullName;
  if (!myFullName || (myFullName = [myFullName length]) == 0)
  {
    v8 = EKBundle(myFullName);
    v9 = [v8 localizedStringForKey:@"You" value:&stru_1F1B49D68 table:0];

    v7 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:addressCopy];

  v11 = [EKOrganizer organizerWithName:v7 emailAddress:0 phoneNumber:0 address:v10 isCurrentUser:1];

  return v11;
}

+ (void)_validateSpans:(id)spans
{
  spansCopy = spans;
  v4 = EKUIAvailabilitySearchHandle;
  if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_DEBUG))
  {
    [(EKInviteeAlternativeTimeSearcher *)v4 _validateSpans:spansCopy];
  }

  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__6;
  v8[4] = __Block_byref_object_dispose__6;
  v9 = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = __Block_byref_object_copy__6;
  v6[4] = __Block_byref_object_dispose__6;
  v7 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke;
  v5[3] = &unk_1E77FE078;
  v5[4] = v8;
  v5[5] = &v22;
  v5[6] = &v18;
  v5[7] = &v14;
  v5[8] = v6;
  v5[9] = &v10;
  [spansCopy enumerateObjectsUsingBlock:v5];
  if (*(v23 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  if (*(v19 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  if (*(v15 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  if (*(v11 + 24) == 1 && os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
  {
    +[EKInviteeAlternativeTimeSearcher _validateSpans:];
  }

  _Block_object_dispose(v6, 8);

  _Block_object_dispose(v8, 8);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 startDate];
  v5 = [v3 endDate];
  if (*(*(a1[4] + 8) + 40) && ([v4 isEqualToDate:?] & 1) == 0)
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_1();
    }

    *(*(a1[5] + 8) + 24) = 1;
  }

  v6 = [v3 endDate];
  v7 = *(a1[4] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if ([v4 isEqualToDate:v5])
  {
    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_3();
    }

    v9 = 6;
  }

  else
  {
    if (![v4 CalIsAfterDate:v5])
    {
      goto LABEL_15;
    }

    if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
    {
      __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_2();
    }

    v9 = 7;
  }

  *(*(a1[v9] + 8) + 24) = 1;
LABEL_15:
  v10 = a1 + 8;
  v11 = *(*(a1[8] + 8) + 40);
  if (v11)
  {
    v12 = [v11 conflictedParticipants];
    if (v12)
    {
      v13 = [*(*(*v10 + 8) + 40) conflictedParticipants];
      v14 = [v13 count] != 0;
    }

    else
    {
      v14 = 0;
    }

    v15 = [v3 conflictedParticipants];
    if (v15)
    {
      v16 = [v3 conflictedParticipants];
      v17 = [v16 count] != 0;
    }

    else
    {
      v17 = 0;
    }

    if (!v14 && !v17)
    {
      *(*(a1[9] + 8) + 24) = 1;
      if (os_log_type_enabled(EKUIAvailabilitySearchHandle, OS_LOG_TYPE_ERROR))
      {
        __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_4();
      }
    }
  }

  v18 = *(*v10 + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v3;
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_3(id *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  v5 = [v3 startDate];
  v6 = [*a1 endDateUnadjustedForLegacyClients];
  v7 = [*a1 calendar];
  v13 = [v7 source];
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x2Au);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_5()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_1A805E000, v1, OS_LOG_TYPE_DEBUG, "Adding organizer with address [%@] to the list of attendees to be included in conflict resolution.  Participant: [%@]", v2, 0x16u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_6()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "No 'organizerAddressForNewlyScheduledEvent' given.  The organizer for this event is unknown and conflict resolution will likely be incorrect and irrelevant.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_9(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_11()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_12()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_13()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_15()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_cold_16()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "No event given.  Will not search for alternative times.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_22_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_23_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher_resetWithEvent_organizerAddressForNewlyScheduledEvent___block_invoke_24_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_3_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __50__EKInviteeAlternativeTimeSearcher__attemptSearch__block_invoke_46_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_1(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = [objc_opt_class() stateAsString:*(a3 + 40)];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_1A805E000, v6, v7, "Sending state change.  State: [%@]", v8, v9, v10, v11);
}

void __53__EKInviteeAlternativeTimeSearcher__sendStateChange___block_invoke_cold_2(uint64_t *a1, void *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [objc_opt_class() stateAsString:*(a3 + 40)];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v4, OS_LOG_TYPE_ERROR, "No 'state changed' callback found.  Will not send state changed information.  State: [%@]", v6, 0xCu);
}

- (void)_processResults:(void *)a1 betweenStartDate:(void *)a2 endDate:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD98];
  v6 = a1;
  v7 = [v5 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a3, "count")}];
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v9, v10, v11, v12, v13, 0x16u);
}

- (void)_processResults:betweenStartDate:endDate:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "Search has not progressed and no more work remains.  This is an invalid state, as there should always be work to do until we've seen search results or there are no more search attempts left.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

- (void)_processResults:(void *)a1 betweenStartDate:(void *)a2 endDate:.cold.3(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "remainingSearchAttempts")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10(&dword_1A805E000, v6, v7, "There are [%@] remaining search attempts left.  Continuing search.", v8, v9, v10, v11);
}

- (void)_processResults:betweenStartDate:endDate:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_haltSearchWithError:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_findLeftoverSpans:usingFreeTimes:andNonOptimalTimes:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_6(&dword_1A805E000, v0, v1, "No replacement spans found.");
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void __90__EKInviteeAlternativeTimeSearcher__generateTimeSpansForResults_betweenStartDate_endDate___block_invoke_60_cold_2(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 startDate];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1A805E000, v3, OS_LOG_TYPE_ERROR, "Could not find a time span that contains date: [%@]", v5, 0xCu);
}

+ (void)_validateSpans:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = MEMORY[0x1E696AD98];
  v4 = a1;
  v5 = [v3 numberWithUnsignedInteger:{objc_msgSend(a2, "count")}];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3_1();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "Found span whose start date doesn't match previous span's end date.  Previous lastEndDate: [%@].  Cached span: [%@]");
}

void __51__EKInviteeAlternativeTimeSearcher__validateSpans___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_8(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9(&dword_1A805E000, v0, v1, "Contiguous free spans exist.  Last inspected span: [%@].  This span: [%@]");
}

@end