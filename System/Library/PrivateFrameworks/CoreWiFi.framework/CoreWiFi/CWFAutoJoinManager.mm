@interface CWFAutoJoinManager
- (BOOL)__allowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error;
- (BOOL)__allowBrokenBackhaulPersonalHotspotFallback;
- (BOOL)__allowHotspot:(id)hotspot error:(id *)error;
- (BOOL)__allowJoinCandidate:(id)candidate context:(id)context defer:(BOOL *)defer error:(id *)error;
- (BOOL)__allowKnownNetwork:(id)network context:(id)context allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer targetQueue:(id)queue error:(id *)error;
- (BOOL)__allowOpportunisticNetworkTransitionWithTrigger:(int64_t)trigger;
- (BOOL)__calloutToAllowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error;
- (BOOL)__calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:(id *)error;
- (BOOL)__calloutToAllowHotspot:(id)hotspot error:(id *)error;
- (BOOL)__calloutToAllowJoinCandidate:(id)candidate trigger:(int64_t)trigger defer:(BOOL *)defer error:(id *)error;
- (BOOL)__calloutToAllowKnownNetwork:(id)network trigger:(int64_t)trigger allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer queue:(id)queue error:(id *)error;
- (BOOL)__calloutToAssociateWithParameters:(id)parameters error:(id *)error;
- (BOOL)__calloutToConnectToHotspot:(id)hotspot error:(id *)error;
- (BOOL)__candidateSupportsSeamlessSSIDTransition:(id)transition fromNetwork:(id)network context:(id)context;
- (BOOL)__connectToHotspot:(id)hotspot error:(id *)error;
- (BOOL)__defaultUserConfiguredNetworkPreference;
- (BOOL)__didRecentlyJoinAny6GHzOnlyNetworks:(id)networks;
- (BOOL)__discoverKnownNetworksWithContext:(id)context error:(id *)error;
- (BOOL)__hasJoinedAnyKnownNetworkSinceBoot;
- (BOOL)__isAutoJoinCancelled:(id *)cancelled;
- (BOOL)__isAutoJoinRequeued;
- (BOOL)__isAutoJoiningAtHome;
- (BOOL)__isDeferrableJoinCandidate:(id)candidate;
- (BOOL)__isDeferrableKnownNetwork:(id)network;
- (BOOL)__isEnabledKnownNetworkNearby;
- (BOOL)__isNonPinnedEAPTLSCandidate:(id)candidate;
- (BOOL)__matchAndJoinScanResults:(id)results allowPreAssociationScan:(BOOL)scan context:(id)context error:(id *)error;
- (BOOL)__nextRequest;
- (BOOL)__performAutoHotspotWithBrowseTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error;
- (BOOL)__performJoinWithNetwork:(id)network context:(id)context error:(id *)error;
- (BOOL)__preflightMatchKnownNetworksForScanResult:(id)result;
- (BOOL)__shouldAllowPreAssocScan;
- (BOOL)__shouldBypassLockdownModeCheckForTrigger:(int64_t)trigger targetNetworkSSID:(id)d networkSSID:(id)iD;
- (BOOL)__shouldBypassUnusedNetworkPeriodCheckForTrigger:(int64_t)trigger knownNetwork:(id)network;
- (BOOL)__shouldIgnoreRequestWithTrigger:(int64_t)trigger;
- (BOOL)__shouldInvokeImmediatelyForTrigger:(int64_t)trigger;
- (BOOL)__shouldResetRetryIntervalIndexForTrigger:(int64_t)trigger previousTimestamp:(unint64_t)timestamp;
- (BOOL)__shouldThrottleAutoJoinTrigger:(int64_t)trigger;
- (BOOL)isKnownNetworkDisallowed:(id)disallowed;
- (BOOL)maxCompatibilityEnabled;
- (CLLocation)location;
- (CWFAutoJoinManager)init;
- (CWFAutoJoinMetric)metric;
- (CWFAutoJoinStatistics)statistics;
- (CWFJoinStatus)joinStatus;
- (CWFScanResult)associatedNetwork;
- (NSArray)nearbyRecommendedNetworks;
- (NSOrderedSet)hiddenSSIDList;
- (NSOrderedSet)locationBasedHiddenSSIDList;
- (NSOrderedSet)recentLocationBasedHiddenSSIDList;
- (NSSet)knownNetworks;
- (NSSet)recentlyMatchedCandidates;
- (NSSet)supportedChannels;
- (id)__alreadyFoundFollowup6GHzBSSWithSignature:(id)signature;
- (id)__basicChannelRepresentation:(id)representation;
- (id)__browseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error;
- (id)__cachedScanResultsWithChannelList:(id)list context:(id)context;
- (id)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error;
- (id)__calloutToPerformGASQueryWithParameters:(id)parameters GASQueryNetworks:(id *)networks error:(id *)error;
- (id)__calloutToScanForNetworksWithParameters:(id)parameters scanChannels:(id *)channels error:(id *)error;
- (id)__descriptionForError:(id)error;
- (id)__disallowedKnownNetworks;
- (id)__hiddenSSIDListForLocation:(id)location knownNetworks:(id)networks recentOnly:(BOOL)only nearbyOnly:(BOOL)nearbyOnly;
- (id)__knownNetworksList:(id)list containsMatchingKnownNetwork:(id)network;
- (id)__knownNetworksSupportingSeamlessSSIDTransition:(id)transition fromNetwork:(id)network allowSameSSID:(BOOL)d context:(id)context;
- (id)__morePreferredKnownNetworksWithCandidate:(id)candidate knownNetworks:(id)networks context:(id)context;
- (id)__passpointScanResults:(id)results;
- (id)__perform6GHzFollowupDiscoveryWithScanResults:(id)results SSIDList:(id)list dwellTime:(unint64_t)time context:(id)context error:(id *)error;
- (id)__performGASQueryWithScanResults:(id)results ANQPElementIDList:(id)list maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error;
- (id)__performPreAssociationScanWithContext:(id)context network:(id)network;
- (id)__performScanWithChannelList:(id)list SSIDList:(id)dList passive:(BOOL)passive dwellTime:(unint64_t)time maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only isPreAssociationScan:(BOOL)scan checkForKnownNetworks:(BOOL)self0 error:(id *)self1;
- (id)__retryInterval;
- (id)__retryIntervalWithScheduleIndex:(unint64_t)index;
- (id)performAutoJoinWithParameters:(id)parameters reply:(id)reply;
- (int64_t)__allowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error;
- (int64_t)__calloutToAllowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error;
- (int64_t)__retryTriggerForRetrySchedule:(int64_t)schedule;
- (int64_t)retrySchedule;
- (unint64_t)__nextRequestInterval;
- (unsigned)__qosForAutoJoinTrigger:(int64_t)trigger;
- (void)__addDependentThrottleInterval:(unint64_t)interval trigger:(int64_t)trigger dependentTrigger:(int64_t)dependentTrigger;
- (void)__addDisallowedKnownNetwork:(id)network;
- (void)__addMatchingThrottleInterval:(unint64_t)interval triggers:(id)triggers;
- (void)__addRequest:(id)request;
- (void)__addWilcardThrottleInterval:(unint64_t)interval triggers:(id)triggers;
- (void)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only reply:(id)reply;
- (void)__calloutToCheckForBrokenBackhaulAndReply:(id)reply;
- (void)__invalidateAllowedKnownNetworksCacheForTrigger:(int64_t)trigger;
- (void)__performAutoJoin;
- (void)__prepareKnownNetworksContext:(id)context;
- (void)__removeDisallowedKnownNetwork:(id)network;
- (void)__removeRedundantRequests:(id)requests;
- (void)__resetRetryIntervalIndex;
- (void)__scheduleDelayedAutoJoinMetricSubmission;
- (void)__setupRetryIntervals;
- (void)__setupThrottleIntervals;
- (void)__sortAndFilterUserConfiguredNetworks:(id)networks;
- (void)__sortHotspotCandidates:(id)candidates;
- (void)__sortJoinCandidates:(id)candidates context:(id)context;
- (void)__sortKnownNetworks:(id)networks;
- (void)__sortKnownNetworksByJoinTimestamp:(id)timestamp;
- (void)__submitAutoJoinMetric:(id)metric;
- (void)__unscheduleDelayedAutoJoinMetricSubmission;
- (void)__updateAutoJoinMetricAndStatistics:(id)statistics;
- (void)__updateAutoJoinMetricWithJoinStatus;
- (void)__updateAutoJoinState:(int64_t)state;
- (void)__updateDisallowedMatchedKnownNetworks;
- (void)__updateDiscoverTimestampForJoinCandidates:(id)candidates;
- (void)__updateNextRequestTimer;
- (void)__updateRNRChannel:(id)channel has6GHzOnlyBSS:(BOOL)s joinCandidate:(id)candidate;
- (void)__updateRecentlyMatchedCandidates;
- (void)__updateRetrySchedule;
- (void)__updateStatisticsWithPreAssocScanChannels:(id)channels;
- (void)__updateStatisticsWithScanChannels:(id)channels;
- (void)cancelAutoJoinWithUUID:(id)d error:(id)error reply:(id)reply;
- (void)invalidate;
- (void)resetStatistics;
- (void)setAssociatedNetwork:(id)network;
- (void)setJoinStatus:(id)status;
- (void)setKnownNetworks:(id)networks;
- (void)setLocation:(id)location;
- (void)setMaxCompatibilityEnabled:(BOOL)enabled;
- (void)setNearbyRecommendedNetworks:(id)networks;
- (void)setRetrySchedule:(int64_t)schedule;
- (void)setSupportedChannels:(id)channels;
@end

@implementation CWFAutoJoinManager

- (BOOL)__nextRequest
{
  v40 = *MEMORY[0x1E69E9840];
  if (self->_isNextRequestScheduled)
  {
    v3 = CWFGetOSLog();
    if (v3)
    {
      v4 = CWFGetOSLog();
    }

    else
    {
      v4 = MEMORY[0x1E69E9C10];
      v5 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v38) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 2, "[corewifi] AUTO-JOIN: Unscheduling next request timer", &v38, 2);
    }

    self->_isNextRequestScheduled = 0;
    dispatch_source_set_timer(self->_nextRequestTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  p_activeRequest = &self->_activeRequest;
  if (self->_activeRequest || ![(NSMutableArray *)self->_pendingRequests count])
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  if ([(NSMutableArray *)self->_pendingRequests count])
  {
    v10 = 0;
    v11 = 0;
    while (1)
    {
      if (*p_activeRequest)
      {
        goto LABEL_36;
      }

      v12 = [(NSMutableArray *)self->_pendingRequests objectAtIndexedSubscript:v11];
      parameters = [v12 parameters];
      if (!-[CWFAutoJoinManager __shouldThrottleAutoJoinTrigger:](self, "__shouldThrottleAutoJoinTrigger:", [parameters trigger]))
      {
        break;
      }

      parameters2 = [v12 parameters];
      targetNetworkProfile = [parameters2 targetNetworkProfile];

      if (targetNetworkProfile)
      {
        goto LABEL_20;
      }

      if (([v12 throttled] & 1) == 0)
      {
        v16 = CWFGetOSLog();
        if (v16)
        {
          v17 = CWFGetOSLog();
        }

        else
        {
          v17 = MEMORY[0x1E69E9C10];
          v20 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v38 = 138543362;
          *v39 = v12;
          LODWORD(v36) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 0, "[corewifi] AUTO-JOIN: Request exceeds configured throttle interval (%{public}@)", &v38, v36);
        }

        [v12 setThrottled:1];
      }

LABEL_30:

      if (++v11 >= [(NSMutableArray *)self->_pendingRequests count])
      {
        v21 = *p_activeRequest;
        if (!*p_activeRequest && v8)
        {
          objc_storeStrong(&self->_activeRequest, v8);
          goto LABEL_34;
        }

        goto LABEL_35;
      }
    }

LABEL_20:
    parameters3 = [v12 parameters];
    trigger = [parameters3 trigger];
    if (trigger - 44 < 8 || trigger <= 0x3F && ((1 << trigger) & 0xC000000000000010) != 0)
    {

      if (!v8)
      {
        v8 = v12;
        v9 = v11;
      }
    }

    else
    {

      objc_storeStrong(&self->_activeRequest, v12);
      v10 = v11;
    }

    goto LABEL_30;
  }

LABEL_34:
  v21 = *p_activeRequest;
  v10 = v9;
LABEL_35:
  if (v21)
  {
LABEL_36:
    [(NSMutableArray *)self->_pendingRequests removeObjectAtIndex:v10];
    if (self->_isRetryScheduled)
    {
      v22 = CWFGetOSLog();
      if (v22)
      {
        v23 = CWFGetOSLog();
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v25 = sub_1E0BEE2F0(self->_retrySchedule);
        retryScheduleIndex = self->_retryScheduleIndex;
        v38 = 138543618;
        *v39 = v25;
        *&v39[8] = 2048;
        *&v39[10] = retryScheduleIndex;
        LODWORD(v36) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 0, "[corewifi] AUTO-JOIN: Unscheduling auto-join retry (schedule=%{public}@, index=%lu)", &v38, v36);
      }

      self->_isRetryScheduled = 0;
      dispatch_source_set_timer(self->_retryTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    parameters4 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    v28 = -[CWFAutoJoinManager __qosForAutoJoinTrigger:](self, "__qosForAutoJoinTrigger:", [parameters4 trigger]);

    v29 = CWFGetOSLog();
    if (v29)
    {
      v30 = CWFGetOSLog();
    }

    else
    {
      v30 = MEMORY[0x1E69E9C10];
      v31 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *p_activeRequest;
      v38 = 67109378;
      *v39 = v28;
      *&v39[4] = 2114;
      *&v39[6] = v32;
      LODWORD(v36) = 18;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v30, 0, "[corewifi] AUTO-JOIN: Will run request (qos=%d, request=%{public}@", &v38, v36);
    }

    internalQueue = self->_internalQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C72E18;
    block[3] = &unk_1E86E6010;
    block[4] = self;
    v34 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v28, 0, block);
    dispatch_async(internalQueue, v34);

    v7 = 1;
  }

  else
  {
    [(CWFAutoJoinManager *)self __updateNextRequestTimer];
    v7 = 0;
  }

  return v7;
}

- (void)__updateNextRequestTimer
{
  v22 = *MEMORY[0x1E69E9840];
  if (!self->_nextRequestTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_internalQueue);
    nextRequestTimer = self->_nextRequestTimer;
    self->_nextRequestTimer = v3;

    v5 = self->_nextRequestTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0C8AFC4;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    dispatch_source_set_timer(self->_nextRequestTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_nextRequestTimer);
  }

  if ([(CWFAutoJoinManager *)self __nextRequestInterval]> 0x7FFFFFFFFFFFFFFELL)
  {
    __nextRequestInterval = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  __nextRequestInterval = [(CWFAutoJoinManager *)self __nextRequestInterval];
  if (__nextRequestInterval >= 1)
  {
LABEL_9:
    v9 = CWFGetOSLog();
    if (v9)
    {
      v10 = CWFGetOSLog();
    }

    else
    {
      v10 = MEMORY[0x1E69E9C10];
      v11 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (self->_isNextRequestScheduled)
      {
        v12 = @"Re-scheduling";
      }

      else
      {
        v12 = @"Scheduling";
      }

      v18 = 138543618;
      v19 = v12;
      v20 = 2048;
      v21 = __nextRequestInterval / 0xF4240uLL;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 2, "[corewifi] AUTO-JOIN: %{public}@ next request timer in %lldms to re-evaluate throttled requests", &v18, 22);
    }

    self->_isNextRequestScheduled = 1;
    v13 = self->_nextRequestTimer;
    v14 = dispatch_walltime(0, __nextRequestInterval);
    v15 = v13;
    goto LABEL_18;
  }

  if (!self->_isNextRequestScheduled)
  {
    return;
  }

  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v18) = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 2, "[corewifi] AUTO-JOIN: Unscheduling next request timer", &v18, 2);
  }

  self->_isNextRequestScheduled = 0;
  v15 = self->_nextRequestTimer;
  v14 = -1;
LABEL_18:
  dispatch_source_set_timer(v15, v14, 0xFFFFFFFFFFFFFFFFLL, 0);
}

- (unint64_t)__nextRequestInterval
{
  v102 = *MEMORY[0x1E69E9840];
  v72 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = self->_pendingRequests;
  v60 = [(NSMutableArray *)obj countByEnumeratingWithState:&v93 objects:v101 count:16];
  v3 = 0;
  if (v60)
  {
    v59 = *v94;
    selfCopy = self;
    do
    {
      v4 = 0;
      do
      {
        if (*v94 != v59)
        {
          objc_enumerationMutation(obj);
        }

        v61 = v4;
        throttleIntervalMap = self->_throttleIntervalMap;
        v6 = MEMORY[0x1E696AD98];
        parameters = [*(*(&v93 + 1) + 8 * v4) parameters];
        v8 = [v6 numberWithInteger:{objc_msgSend(parameters, "trigger")}];
        v9 = [(NSMutableDictionary *)throttleIntervalMap objectForKeyedSubscript:v8];

        if (!v9)
        {
          v9 = [(NSMutableDictionary *)selfCopy->_throttleIntervalMap objectForKeyedSubscript:&unk_1F5BBC5C8];
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        intervals = [v9 intervals];
        allKeys = [intervals allKeys];

        v62 = allKeys;
        v73 = v9;
        v66 = [allKeys countByEnumeratingWithState:&v89 objects:v100 count:16];
        if (v66)
        {
          v64 = *v90;
          self = selfCopy;
          do
          {
            v12 = 0;
            do
            {
              if (*v90 != v64)
              {
                objc_enumerationMutation(v62);
              }

              v68 = v12;
              v13 = *(*(&v89 + 1) + 8 * v12);
              v85 = 0u;
              v86 = 0u;
              v87 = 0u;
              v88 = 0u;
              allKeys2 = [(NSMutableDictionary *)self->_throttleTimestampMap allKeys];
              v15 = [allKeys2 countByEnumeratingWithState:&v85 objects:v99 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v86;
                do
                {
                  v18 = 0;
                  v75 = v16;
                  do
                  {
                    if (*v86 != v17)
                    {
                      objc_enumerationMutation(allKeys2);
                    }

                    v19 = *(*(&v85 + 1) + 8 * v18);
                    integerValue = [v13 integerValue];
                    if (integerValue == [v19 integerValue])
                    {
                      v21 = [(NSMutableDictionary *)self->_throttleTimestampMap objectForKeyedSubscript:v19];
                      intervals2 = [v9 intervals];
                      v23 = [intervals2 objectForKeyedSubscript:v13];

                      if (v23 && v21)
                      {
                        unsignedLongValue = [v21 unsignedLongValue];
                        v24 = v13;
                        v25 = v17;
                        v26 = allKeys2;
                        unsignedLongValue2 = [v23 unsignedLongValue];
                        v28 = 1000000000 * [v23 unsignedLongValue];
                        unsignedLongValue3 = [v23 unsignedLongValue];
                        v30 = 1000000000 * unsignedLongValue3;
                        v31 = unsignedLongValue2 > v28;
                        allKeys2 = v26;
                        v17 = v25;
                        v13 = v24;
                        v9 = v73;
                        self = selfCopy;
                        if (v31)
                        {
                          v30 = unsignedLongValue3;
                        }

                        v32 = v30 - (v72 - unsignedLongValue);
                        if (v3 >= v32)
                        {
                          v33 = v30 - (v72 - unsignedLongValue);
                        }

                        else
                        {
                          v33 = v3;
                        }

                        if (v3)
                        {
                          v32 = v33;
                        }

                        if (v30 > v72 - unsignedLongValue)
                        {
                          v3 = v32;
                        }
                      }

                      v16 = v75;
                    }

                    ++v18;
                  }

                  while (v16 != v18);
                  v16 = [allKeys2 countByEnumeratingWithState:&v85 objects:v99 count:16];
                }

                while (v16);
              }

              v12 = v68 + 1;
            }

            while (v68 + 1 != v66);
            v66 = [v62 countByEnumeratingWithState:&v89 objects:v100 count:16];
          }

          while (v66);
        }

        else
        {
          self = selfCopy;
        }

        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        intervalsBasedOnTriggerTimestamp = [v9 intervalsBasedOnTriggerTimestamp];
        allKeys3 = [intervalsBasedOnTriggerTimestamp allKeys];

        v63 = allKeys3;
        v67 = [allKeys3 countByEnumeratingWithState:&v81 objects:v98 count:16];
        if (v67)
        {
          v65 = *v82;
          do
          {
            v36 = 0;
            do
            {
              if (*v82 != v65)
              {
                objc_enumerationMutation(v63);
              }

              v69 = v36;
              v37 = *(*(&v81 + 1) + 8 * v36);
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              allKeys4 = [(NSMutableDictionary *)self->_triggerTimestampMap allKeys];
              v39 = [allKeys4 countByEnumeratingWithState:&v77 objects:v97 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v78;
                do
                {
                  v42 = 0;
                  v76 = v40;
                  do
                  {
                    if (*v78 != v41)
                    {
                      objc_enumerationMutation(allKeys4);
                    }

                    v43 = *(*(&v77 + 1) + 8 * v42);
                    integerValue2 = [v37 integerValue];
                    if (integerValue2 == [v43 integerValue])
                    {
                      v45 = [(NSMutableDictionary *)self->_triggerTimestampMap objectForKeyedSubscript:v43];
                      intervalsBasedOnTriggerTimestamp2 = [v9 intervalsBasedOnTriggerTimestamp];
                      v47 = [intervalsBasedOnTriggerTimestamp2 objectForKeyedSubscript:v37];

                      if (v47 && v45)
                      {
                        unsignedLongValue4 = [v45 unsignedLongValue];
                        v48 = v37;
                        v49 = v41;
                        v50 = allKeys4;
                        unsignedLongValue5 = [v47 unsignedLongValue];
                        v52 = 1000000000 * [v47 unsignedLongValue];
                        unsignedLongValue6 = [v47 unsignedLongValue];
                        v54 = 1000000000 * unsignedLongValue6;
                        v31 = unsignedLongValue5 > v52;
                        allKeys4 = v50;
                        v41 = v49;
                        v37 = v48;
                        v9 = v73;
                        self = selfCopy;
                        if (v31)
                        {
                          v54 = unsignedLongValue6;
                        }

                        v55 = v54 - (v72 - unsignedLongValue4);
                        if (v3 >= v55)
                        {
                          v56 = v54 - (v72 - unsignedLongValue4);
                        }

                        else
                        {
                          v56 = v3;
                        }

                        if (v3)
                        {
                          v55 = v56;
                        }

                        if (v54 > v72 - unsignedLongValue4)
                        {
                          v3 = v55;
                        }
                      }

                      v40 = v76;
                    }

                    ++v42;
                  }

                  while (v40 != v42);
                  v40 = [allKeys4 countByEnumeratingWithState:&v77 objects:v97 count:16];
                }

                while (v40);
              }

              v36 = v69 + 1;
            }

            while (v69 + 1 != v67);
            v67 = [v63 countByEnumeratingWithState:&v81 objects:v98 count:16];
          }

          while (v67);
        }

        v4 = v61 + 1;
      }

      while (v61 + 1 != v60);
      v60 = [(NSMutableArray *)obj countByEnumeratingWithState:&v93 objects:v101 count:16];
    }

    while (v60);
  }

  return v3;
}

- (CWFAutoJoinStatistics)statistics
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFAutoJoinStatistics *)selfCopy->_statistics copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (CWFAutoJoinManager)init
{
  v82.receiver = self;
  v82.super_class = CWFAutoJoinManager;
  v2 = [(CWFAutoJoinManager *)&v82 init];
  if (v2
    && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.corewifi.auto-join", v3), v5 = *(v2 + 1), *(v2 + 1) = v4, v5, v3, *(v2 + 1))
    && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v6 = objc_claimAutoreleasedReturnValue(), v7 = dispatch_queue_create("com.apple.corewifi.auto-join.target", v6), v8 = *(v2 + 85), *(v2 + 85) = v7, v8, v6, *(v2 + 85))
    && (v9 = objc_alloc_init(MEMORY[0x1E695DF70]), v10 = *(v2 + 17), *(v2 + 17) = v9, v10, *(v2 + 17))
    && (v11 = objc_alloc_init(MEMORY[0x1E695DFA8]), v12 = *(v2 + 27), *(v2 + 27) = v11, v12, *(v2 + 27))
    && (v13 = objc_alloc_init(MEMORY[0x1E695DF90]), v14 = *(v2 + 34), *(v2 + 34) = v13, v14, *(v2 + 34))
    && (v15 = objc_alloc_init(MEMORY[0x1E695DF90]), v16 = *(v2 + 35), *(v2 + 35) = v15, v16, *(v2 + 35))
    && (v17 = objc_alloc_init(MEMORY[0x1E695DF90]), v18 = *(v2 + 36), *(v2 + 36) = v17, v18, *(v2 + 36))
    && (v19 = objc_alloc_init(MEMORY[0x1E695DF90]), v20 = *(v2 + 16), *(v2 + 16) = v19, v20, *(v2 + 16))
    && (v21 = objc_alloc_init(MEMORY[0x1E695DF90]), v22 = *(v2 + 28), *(v2 + 28) = v21, v22, *(v2 + 28))
    && (v23 = objc_alloc_init(MEMORY[0x1E695DF90]), v24 = *(v2 + 29), *(v2 + 29) = v23, v24, *(v2 + 29))
    && (v25 = objc_alloc_init(MEMORY[0x1E695DF90]), v26 = *(v2 + 30), *(v2 + 30) = v25, v26, *(v2 + 30))
    && (v27 = objc_alloc_init(MEMORY[0x1E695DFA8]), v28 = *(v2 + 31), *(v2 + 31) = v27, v28, *(v2 + 31))
    && (v29 = objc_alloc_init(MEMORY[0x1E695DF90]), v30 = *(v2 + 39), *(v2 + 39) = v29, v30, *(v2 + 39))
    && (v31 = objc_alloc_init(CWFAutoJoinStatistics), v32 = *(v2 + 20), *(v2 + 20) = v31, v32, *(v2 + 20))
    && ([MEMORY[0x1E695DF00] date], v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(*(v2 + 20), "setStartedAt:", v33), v33, v34 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1)), v35 = *(v2 + 21), *(v2 + 21) = v34, v35, (v36 = *(v2 + 21)) != 0)
    && (handler[0] = MEMORY[0x1E69E9820], handler[1] = 3221225472, handler[2] = sub_1E0C6A138, handler[3] = &unk_1E86E6010, v37 = v2, v81 = v37, dispatch_source_set_event_handler(v36, handler), v81, v38 = *(v2 + 21), v39 = dispatch_walltime(0, 86400000000000), dispatch_source_set_timer(v38, v39, 0xFFFFFFFFFFFFFFFFLL, 0), dispatch_resume(*(v2 + 21)), v40 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1)), v41 = v37[22], v37[22] = v40, v41, (v42 = v37[22]) != 0)
    && (v75 = MEMORY[0x1E69E9820], v76 = 3221225472, v77 = sub_1E0C6A474, v78 = &unk_1E86E6010, v43 = v37, v79 = v43, dispatch_source_set_event_handler(v42, &v75), v79, dispatch_source_set_timer(v37[22], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0), dispatch_resume(v37[22]), v44 = objc_alloc_init(MEMORY[0x1E695DFA8]), hiddenNetworkChannels = v43->_hiddenNetworkChannels, v43->_hiddenNetworkChannels = v44, hiddenNetworkChannels, v43->_hiddenNetworkChannels)
    && (v46 = objc_alloc_init(MEMORY[0x1E695DF90]), cachedKnownNetworksContexts = v43->_cachedKnownNetworksContexts, v43->_cachedKnownNetworksContexts = v46, cachedKnownNetworksContexts, v43->_cachedKnownNetworksContexts)
    && (v48 = objc_alloc_init(MEMORY[0x1E695DF90]), knownNetworkSSIDMap = v43->_knownNetworkSSIDMap, v43->_knownNetworkSSIDMap = v48, knownNetworkSSIDMap, v43->_knownNetworkSSIDMap)
    && (v50 = objc_alloc_init(MEMORY[0x1E695DF90]), knownNetworkPasspointDomainMap = v43->_knownNetworkPasspointDomainMap, v43->_knownNetworkPasspointDomainMap = v50, knownNetworkPasspointDomainMap, v43->_knownNetworkPasspointDomainMap)
    && (v52 = objc_alloc_init(MEMORY[0x1E695DFA0]), deferredKnownNetworks = v43->_deferredKnownNetworks, v43->_deferredKnownNetworks = v52, deferredKnownNetworks, v43->_deferredKnownNetworks)
    && (v54 = objc_alloc_init(MEMORY[0x1E695DF90]), knownNetworkAllowCache = v43->_knownNetworkAllowCache, v43->_knownNetworkAllowCache = v54, knownNetworkAllowCache, v43->_knownNetworkAllowCache)
    && (v56 = objc_alloc_init(MEMORY[0x1E695DF90]), knownNetworkAllowErrorCache = v43->_knownNetworkAllowErrorCache, v43->_knownNetworkAllowErrorCache = v56, knownNetworkAllowErrorCache, v43->_knownNetworkAllowErrorCache)
    && (v58 = objc_alloc_init(MEMORY[0x1E695DF90]), knownNetworkDeferCache = v43->_knownNetworkDeferCache, v43->_knownNetworkDeferCache = v58, knownNetworkDeferCache, v43->_knownNetworkDeferCache)
    && (v60 = objc_alloc_init(MEMORY[0x1E695DFA8]), updatedAllowCacheKnownNetworks = v43->_updatedAllowCacheKnownNetworks, v43->_updatedAllowCacheKnownNetworks = v60, updatedAllowCacheKnownNetworks, v43->_updatedAllowCacheKnownNetworks)
    && (v62 = objc_alloc_init(MEMORY[0x1E695DF90]), disallowedKnownNetworksMap = v43->_disallowedKnownNetworksMap, v43->_disallowedKnownNetworksMap = v62, disallowedKnownNetworksMap, v43->_disallowedKnownNetworksMap)
    && (v64 = objc_alloc_init(MEMORY[0x1E695DFA8]), lowRSSICandidates = v43->_lowRSSICandidates, v43->_lowRSSICandidates = v64, lowRSSICandidates, v43->_lowRSSICandidates)
    && (v66 = objc_alloc_init(MEMORY[0x1E695DFA8]), prevLowRSSICandidates = v43->_prevLowRSSICandidates, v43->_prevLowRSSICandidates = v66, prevLowRSSICandidates, v43->_prevLowRSSICandidates)
    && (v68 = objc_alloc_init(MEMORY[0x1E695DFA8]), matchedCandidates = v43->_matchedCandidates, v43->_matchedCandidates = v68, matchedCandidates, v43->_matchedCandidates)
    && (v70 = objc_alloc_init(MEMORY[0x1E695DFA8]), recentlyMatchedCandidates = v43->_recentlyMatchedCandidates, v43->_recentlyMatchedCandidates = v70, recentlyMatchedCandidates, v43->_recentlyMatchedCandidates)
    && (v72 = objc_alloc_init(MEMORY[0x1E695DFA8]), disallowedMatchedCandidates = v43->_disallowedMatchedCandidates, v43->_disallowedMatchedCandidates = v72, disallowedMatchedCandidates, v43->_disallowedMatchedCandidates))
  {
    [(CWFAutoJoinManager *)v43 __setupRetryIntervals:v75];
    [(CWFAutoJoinManager *)v43 __setupThrottleIntervals];
  }

  else
  {

    return 0;
  }

  return v43;
}

- (void)invalidate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_invalidated)
  {
    *&selfCopy->_invalidated = 257;
    underlyingCancelError = selfCopy->_underlyingCancelError;
    selfCopy->_underlyingCancelError = 0;

    internalQueue = selfCopy->_internalQueue;
    v5 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6A6D8;
    block[3] = &unk_1E86E6010;
    block[4] = selfCopy;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v5, 0, block);
    dispatch_async(internalQueue, v6);
  }

  objc_sync_exit(selfCopy);
}

- (NSArray)nearbyRecommendedNetworks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSArray *)selfCopy->_nearbyRecommendedNetworks copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setNearbyRecommendedNetworks:(id)networks
{
  networksCopy = networks;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nearbyRecommendedNetworks = selfCopy->_nearbyRecommendedNetworks;
  if (nearbyRecommendedNetworks != networksCopy && (!networksCopy || !nearbyRecommendedNetworks || ([(NSArray *)networksCopy isEqual:?]& 1) == 0))
  {
    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] AUTO-JOIN: Updated configured nearby recommended networks", v13, 2);
    }

    v11 = [(NSArray *)networksCopy copy];
    v12 = selfCopy->_nearbyRecommendedNetworks;
    selfCopy->_nearbyRecommendedNetworks = v11;

    selfCopy->_didConfigurationChangeSincePreviousAttempt = 1;
    [(CWFAutoJoinManager *)selfCopy __resetRetryIntervalIndex];
  }

  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(v5);
}

- (NSSet)knownNetworks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->_knownNetworks copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)__submitAutoJoinMetric:(id)metric
{
  v23 = *MEMORY[0x1E69E9840];
  metricCopy = metric;
  v4 = CWFGetOSLog();
  if (v4)
  {
    v5 = CWFGetOSLog();
  }

  else
  {
    v5 = MEMORY[0x1E69E9C10];
    v6 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138543362;
    v22 = metricCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v5, 0, "[corewifi] AUTO-JOIN: Auto-join METRIC (%{public}@)", &v21, 12);
  }

  if (objc_opt_class())
  {
    coreAnalyticsEventName = [metricCopy coreAnalyticsEventName];
    autoJoinedNetwork = [metricCopy autoJoinedNetwork];
    if (autoJoinedNetwork || ([metricCopy userJoinedNetwork], (autoJoinedNetwork = objc_claimAutoreleasedReturnValue()) != 0))
    {
      scanErrors = autoJoinedNetwork;
    }

    else
    {
      scanErrors = [metricCopy scanErrors];
      if (![scanErrors count])
      {
        hotspot = [metricCopy hotspot];
        if (!hotspot)
        {
          if ([metricCopy autoHotspotMode] == 3)
          {
            autoHotspotBrowseError = [metricCopy autoHotspotBrowseError];

            if (autoHotspotBrowseError)
            {
              goto LABEL_11;
            }
          }

          else
          {
          }

          v16 = CWFGetOSLog();
          if (v16)
          {
            v13 = CWFGetOSLog();
          }

          else
          {
            v13 = MEMORY[0x1E69E9C10];
            v17 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v21 = 138543362;
            v22 = coreAnalyticsEventName;
            LODWORD(v18) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 0, "[corewifi] AUTO-JOIN: Will not submit '%{public}@' CoreAnalytics metric", &v21, v18);
          }

          goto LABEL_17;
        }
      }
    }

LABEL_11:
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v12 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = coreAnalyticsEventName;
      LODWORD(v18) = 12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] AUTO-JOIN: Sending '%{public}@' CoreAnalytics metric", &v21, v18);
    }

    v19 = coreAnalyticsEventName;
    v20 = metricCopy;
    AnalyticsSendEventLazy();

    v13 = v19;
LABEL_17:
  }
}

- (void)__updateAutoJoinMetricWithJoinStatus
{
  selfCopy = self;
  v122 = *MEMORY[0x1E69E9840];
  scanResult = [(CWFJoinStatus *)self->_joinStatus scanResult];

  if (!scanResult)
  {
    return;
  }

  if (![(CWFJoinStatus *)selfCopy->_joinStatus isAutoJoin])
  {
    goto LABEL_27;
  }

  autoJoinedNetwork = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric autoJoinedNetwork];
  sSID = [autoJoinedNetwork SSID];
  if (!sSID)
  {
    goto LABEL_26;
  }

  v6 = sSID;
  scanResult2 = [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
  sSID2 = [scanResult2 SSID];
  if (!sSID2)
  {

LABEL_26:
LABEL_27:
    if ([(CWFJoinStatus *)selfCopy->_joinStatus isAutoJoin])
    {
      return;
    }

    startedAt = [(CWFJoinStatus *)selfCopy->_joinStatus startedAt];
    [startedAt timeIntervalSinceReferenceDate];
    v46 = v45;
    startedAt2 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric startedAt];
    [startedAt2 timeIntervalSinceReferenceDate];
    v49 = v48;

    if (v46 <= v49)
    {
      return;
    }

    scanResult3 = [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
    knownNetworkProfile = [(CWFJoinStatus *)selfCopy->_joinStatus knownNetworkProfile];
    v52 = [scanResult3 scanResultWithMatchingKnownNetworkProfile:knownNetworkProfile];
    [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setUserJoinedNetwork:v52];

    userJoinedNetwork = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
    LODWORD(knownNetworkProfile) = [(CWFAutoJoinManager *)selfCopy __preflightMatchKnownNetworksForScanResult:userJoinedNetwork];

    if (knownNetworkProfile)
    {
      userJoinedNetwork2 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
      knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
      allObjects = [knownNetworks allObjects];
      v57 = sub_1E0BED85C(userJoinedNetwork2, allObjects);

      cachedMetric = selfCopy->_cachedMetric;
      if (v57)
      {
        [(CWFAutoJoinMetric *)cachedMetric setDidUserJoinKnownNetwork:1];
        scanResult4 = [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
        v60 = [scanResult4 scanResultWithMatchingKnownNetworkProfile:v57];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setUserJoinedNetwork:v60];
      }

      else
      {
        [(CWFAutoJoinMetric *)cachedMetric setDidUserJoinPartiallyMatchedNetwork:1];
      }
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    obja = selfCopy->_lowRSSICandidates;
    v74 = [(NSMutableSet *)obja countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (!v74)
    {
      goto LABEL_56;
    }

    v75 = v74;
    v76 = *v113;
    v103 = *v113;
    v105 = selfCopy;
    while (1)
    {
      for (i = 0; i != v75; ++i)
      {
        if (*v113 != v76)
        {
          objc_enumerationMutation(obja);
        }

        v78 = *(*(&v112 + 1) + 8 * i);
        matchingKnownNetworkProfile = [v78 matchingKnownNetworkProfile];
        userJoinedNetwork3 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
        matchingKnownNetworkProfile2 = [userJoinedNetwork3 matchingKnownNetworkProfile];
        v82 = matchingKnownNetworkProfile2;
        if (matchingKnownNetworkProfile == matchingKnownNetworkProfile2)
        {

LABEL_55:
          [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidUserJoinLowRSSINetwork:1];
LABEL_56:

          allKeys = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allKeys];
          userJoinedNetwork4 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
          matchingKnownNetworkProfile3 = [userJoinedNetwork4 matchingKnownNetworkProfile];
          identifier = [matchingKnownNetworkProfile3 identifier];
          v94 = [allKeys containsObject:identifier];

          if (v94)
          {
            [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidUserJoinDisallowedNetwork:1];
          }

          deferredKnownNetworks = selfCopy->_deferredKnownNetworks;
          userJoinedNetwork5 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
          matchingKnownNetworkProfile4 = [userJoinedNetwork5 matchingKnownNetworkProfile];
          LODWORD(deferredKnownNetworks) = [(NSMutableOrderedSet *)deferredKnownNetworks containsObject:matchingKnownNetworkProfile4];

          if (deferredKnownNetworks)
          {
            [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidUserJoinDeferredNetwork:1];
          }

          [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_cachedMetric];
          return;
        }

        matchingKnownNetworkProfile5 = [v78 matchingKnownNetworkProfile];
        if (!matchingKnownNetworkProfile5)
        {
          goto LABEL_50;
        }

        userJoinedNetwork6 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
        matchingKnownNetworkProfile6 = [userJoinedNetwork6 matchingKnownNetworkProfile];
        if (!matchingKnownNetworkProfile6)
        {

LABEL_50:
          continue;
        }

        v85 = matchingKnownNetworkProfile6;
        matchingKnownNetworkProfile7 = [v78 matchingKnownNetworkProfile];
        userJoinedNetwork7 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric userJoinedNetwork];
        [userJoinedNetwork7 matchingKnownNetworkProfile];
        v89 = v88 = v75;
        v109 = [matchingKnownNetworkProfile7 isEqual:v89];

        v75 = v88;
        v76 = v103;

        selfCopy = v105;
        if (v109)
        {
          goto LABEL_55;
        }
      }

      v75 = [(NSMutableSet *)obja countByEnumeratingWithState:&v112 objects:v120 count:16];
      if (!v75)
      {
        goto LABEL_56;
      }
    }
  }

  v9 = sSID2;
  autoJoinedNetwork2 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric autoJoinedNetwork];
  sSID3 = [autoJoinedNetwork2 SSID];
  [(CWFJoinStatus *)selfCopy->_joinStatus scanResult];
  v13 = v12 = selfCopy;
  sSID4 = [v13 SSID];
  v15 = [sSID3 isEqual:sSID4];

  selfCopy = v12;
  if (!v15)
  {
    goto LABEL_27;
  }

  associationEndedAt = [(CWFJoinStatus *)v12->_joinStatus associationEndedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setJoinEndedAt:associationEndedAt];

  startedAt3 = [(CWFJoinStatus *)v12->_joinStatus startedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setJoinStartedAt:startedAt3];

  iPv4AssignedAt = [(CWFJoinStatus *)v12->_joinStatus IPv4AssignedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setRoutableIPv4AddressAt:iPv4AssignedAt];

  iPv4PrimaryAt = [(CWFJoinStatus *)v12->_joinStatus IPv4PrimaryAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setPrimaryIPv4InterfaceAt:iPv4PrimaryAt];

  iPv6AssignedAt = [(CWFJoinStatus *)v12->_joinStatus IPv6AssignedAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setRoutableIPv6AddressAt:iPv6AssignedAt];

  iPv6PrimaryAt = [(CWFJoinStatus *)v12->_joinStatus IPv6PrimaryAt];
  [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setPrimaryIPv6InterfaceAt:iPv6PrimaryAt];

  wasAlreadyAssociatedToNetwork = [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric wasAlreadyAssociatedToNetwork];
  if (wasAlreadyAssociatedToNetwork)
  {
LABEL_9:

    goto LABEL_10;
  }

  if (v12->_prevAssociatedNetwork)
  {
    wasAlreadyAssociatedToNetwork = [(CWFJoinStatus *)v12->_joinStatus associationEndedAt];
    [wasAlreadyAssociatedToNetwork timeIntervalSinceReferenceDate];
    v24 = v23;
    v25 = CWFGetBootTime();
    v26 = [v25 dateByAddingTimeInterval:v12->_prevAssocBeforeTimestamp / 1000000000.0];
    [v26 timeIntervalSinceReferenceDate];
    [(CWFAutoJoinMetric *)v12->_delayedSubmissionMetric setLinkRecoveryDelay:((v24 - v27) * 1000.0)];

    goto LABEL_9;
  }

LABEL_10:
  v118 = 0u;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  obj = v12->_prevLowRSSICandidates;
  v28 = [(NSMutableSet *)obj countByEnumeratingWithState:&v116 objects:v121 count:16];
  if (!v28)
  {
    goto LABEL_34;
  }

  v29 = v28;
  v30 = *v117;
  v102 = *v117;
  v104 = v12;
  while (2)
  {
    for (j = 0; j != v29; ++j)
    {
      if (*v117 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v116 + 1) + 8 * j);
      matchingKnownNetworkProfile8 = [v32 matchingKnownNetworkProfile];
      userJoinedNetwork8 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric userJoinedNetwork];
      matchingKnownNetworkProfile9 = [userJoinedNetwork8 matchingKnownNetworkProfile];
      v36 = matchingKnownNetworkProfile9;
      if (matchingKnownNetworkProfile8 == matchingKnownNetworkProfile9)
      {

LABEL_33:
        [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric setDidJoinPreviouslyLowRSSINetwork:1];
        goto LABEL_34;
      }

      matchingKnownNetworkProfile10 = [v32 matchingKnownNetworkProfile];
      if (!matchingKnownNetworkProfile10)
      {
        goto LABEL_21;
      }

      userJoinedNetwork9 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric userJoinedNetwork];
      matchingKnownNetworkProfile11 = [userJoinedNetwork9 matchingKnownNetworkProfile];
      if (!matchingKnownNetworkProfile11)
      {

LABEL_21:
        continue;
      }

      v39 = matchingKnownNetworkProfile11;
      matchingKnownNetworkProfile12 = [v32 matchingKnownNetworkProfile];
      userJoinedNetwork10 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric userJoinedNetwork];
      [userJoinedNetwork10 matchingKnownNetworkProfile];
      v43 = v42 = v29;
      v108 = [matchingKnownNetworkProfile12 isEqual:v43];

      v29 = v42;
      v30 = v102;

      selfCopy = v104;
      if (v108)
      {
        goto LABEL_33;
      }
    }

    v29 = [(NSMutableSet *)obj countByEnumeratingWithState:&v116 objects:v121 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_34:

  startedAt4 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric startedAt];
  if (startedAt4)
  {
    v62 = startedAt4;
    startedAt5 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric startedAt];
    if (startedAt5)
    {
      v64 = startedAt5;
      startedAt6 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric startedAt];
      startedAt7 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric startedAt];
      v67 = [startedAt6 isEqual:startedAt7];

      if (v67)
      {
        joinEndedAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric joinEndedAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setJoinEndedAt:joinEndedAt];

        joinStartedAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric joinStartedAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setJoinStartedAt:joinStartedAt];

        routableIPv4AddressAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric routableIPv4AddressAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setRoutableIPv4AddressAt:routableIPv4AddressAt];

        primaryIPv4InterfaceAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv4InterfaceAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setPrimaryIPv4InterfaceAt:primaryIPv4InterfaceAt];

        routableIPv6AddressAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric routableIPv6AddressAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setRoutableIPv6AddressAt:routableIPv6AddressAt];

        primaryIPv6InterfaceAt = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv6InterfaceAt];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setPrimaryIPv6InterfaceAt:primaryIPv6InterfaceAt];

        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setLinkRecoveryDelay:[(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric linkRecoveryDelay]];
        [(CWFAutoJoinMetric *)selfCopy->_cachedMetric setDidJoinPreviouslyLowRSSINetwork:[(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric didJoinPreviouslyLowRSSINetwork]];
      }
    }

    else
    {
    }
  }

  primaryIPv4InterfaceAt2 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv4InterfaceAt];
  if (primaryIPv4InterfaceAt2)
  {
    v99 = primaryIPv4InterfaceAt2;
    primaryIPv6InterfaceAt2 = [(CWFAutoJoinMetric *)selfCopy->_delayedSubmissionMetric primaryIPv6InterfaceAt];

    if (primaryIPv6InterfaceAt2)
    {
      [(CWFAutoJoinManager *)selfCopy __unscheduleDelayedAutoJoinMetricSubmission];
      [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_delayedSubmissionMetric];
      delayedSubmissionMetric = selfCopy->_delayedSubmissionMetric;
      selfCopy->_delayedSubmissionMetric = 0;
    }
  }
}

- (CWFScanResult)associatedNetwork
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_associatedNetwork;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setAssociatedNetwork:(id)network
{
  v51 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  associatedNetwork = selfCopy->_associatedNetwork;
  if (associatedNetwork != networkCopy && (!networkCopy || !associatedNetwork || ![(CWFScanResult *)networkCopy isEqual:?]))
  {
    goto LABEL_13;
  }

  matchingKnownNetworkProfile = [(CWFScanResult *)networkCopy matchingKnownNetworkProfile];
  matchingKnownNetworkProfile2 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  v9 = matchingKnownNetworkProfile2;
  if (matchingKnownNetworkProfile == matchingKnownNetworkProfile2)
  {

    goto LABEL_37;
  }

  matchingKnownNetworkProfile3 = [(CWFScanResult *)networkCopy matchingKnownNetworkProfile];
  if (!matchingKnownNetworkProfile3)
  {
    goto LABEL_12;
  }

  matchingKnownNetworkProfile4 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  if (!matchingKnownNetworkProfile4)
  {

LABEL_12:
    goto LABEL_13;
  }

  matchingKnownNetworkProfile5 = [(CWFScanResult *)networkCopy matchingKnownNetworkProfile];
  matchingKnownNetworkProfile6 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  v14 = [matchingKnownNetworkProfile5 isEqual:matchingKnownNetworkProfile6];

  if (v14)
  {
    goto LABEL_37;
  }

LABEL_13:
  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v49 = 138543362;
    v50 = networkCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 0, "[corewifi] AUTO-JOIN: Updated associated network (%{public}@)", &v49, 12);
  }

  v18 = selfCopy->_associatedNetwork;
  if ((networkCopy == 0) == (v18 != 0))
  {
    v19 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    selfCopy->_linkChangeTimestamp = v19;
    if (v18)
    {
      selfCopy->_prevAssocBeforeTimestamp = v19;
      v20 = [(CWFScanResult *)selfCopy->_associatedNetwork copy];
      prevAssociatedNetwork = selfCopy->_prevAssociatedNetwork;
      selfCopy->_prevAssociatedNetwork = v20;
    }
  }

  v22 = [(CWFScanResult *)networkCopy copy];
  v23 = selfCopy->_associatedNetwork;
  selfCopy->_associatedNetwork = v22;

  matchingKnownNetworkProfile7 = [(CWFScanResult *)selfCopy->_steerToNetwork matchingKnownNetworkProfile];
  identifier = [matchingKnownNetworkProfile7 identifier];
  if (!identifier)
  {
    goto LABEL_26;
  }

  matchingKnownNetworkProfile8 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  identifier2 = [matchingKnownNetworkProfile8 identifier];
  if (!identifier2)
  {

LABEL_26:
    goto LABEL_27;
  }

  matchingKnownNetworkProfile9 = [(CWFScanResult *)selfCopy->_steerToNetwork matchingKnownNetworkProfile];
  identifier3 = [matchingKnownNetworkProfile9 identifier];
  matchingKnownNetworkProfile10 = [(CWFScanResult *)selfCopy->_associatedNetwork matchingKnownNetworkProfile];
  identifier4 = [matchingKnownNetworkProfile10 identifier];
  v48 = [identifier3 isEqual:identifier4];

  if ((v48 & 1) == 0)
  {
LABEL_27:
    steerToNetwork = selfCopy->_steerToNetwork;
    selfCopy->_steerToNetwork = 0;

    steerFromNetwork = selfCopy->_steerFromNetwork;
    selfCopy->_steerFromNetwork = 0;
  }

  v34 = selfCopy->_associatedNetwork;
  if (v34)
  {
    networkProfile = [(CWFScanResult *)v34 networkProfile];
    identifier5 = [networkProfile identifier];
    if (identifier5)
    {
      allKeys = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allKeys];
      identifier6 = [networkProfile identifier];
      v39 = [allKeys containsObject:identifier6];

      if (v39)
      {
        disallowedKnownNetworksMap = selfCopy->_disallowedKnownNetworksMap;
        identifier7 = [networkProfile identifier];
        [(NSMutableDictionary *)disallowedKnownNetworksMap removeObjectForKey:identifier7];
      }
    }

    identifier8 = [networkProfile identifier];
    if (identifier8)
    {
      failedToJoinKnownNetworkIDs = selfCopy->_failedToJoinKnownNetworkIDs;
      identifier9 = [networkProfile identifier];
      LODWORD(failedToJoinKnownNetworkIDs) = [(NSMutableSet *)failedToJoinKnownNetworkIDs containsObject:identifier9];

      if (failedToJoinKnownNetworkIDs)
      {
        v45 = selfCopy->_failedToJoinKnownNetworkIDs;
        identifier10 = [networkProfile identifier];
        [(NSMutableSet *)v45 removeObject:identifier10];
      }
    }
  }

  else
  {
    [(CWFAutoJoinManager *)selfCopy __unscheduleDelayedAutoJoinMetricSubmission];
    [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_delayedSubmissionMetric];
    delayedSubmissionMetric = selfCopy->_delayedSubmissionMetric;
    selfCopy->_delayedSubmissionMetric = 0;
  }

LABEL_37:
  objc_sync_exit(selfCopy);
}

- (CWFJoinStatus)joinStatus
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_joinStatus;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setJoinStatus:(id)status
{
  v14 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  joinStatus = selfCopy->_joinStatus;
  if (joinStatus != statusCopy && (!statusCopy || !joinStatus || ![(CWFJoinStatus *)statusCopy isEqual:?]))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138543362;
      v13 = statusCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] AUTO-JOIN: Updated join status (%{public}@)", &v12, 12);
    }

    v10 = [(CWFJoinStatus *)statusCopy copy];
    v11 = selfCopy->_joinStatus;
    selfCopy->_joinStatus = v10;

    [(CWFAutoJoinManager *)selfCopy __updateAutoJoinMetricWithJoinStatus];
  }

  objc_sync_exit(selfCopy);
}

- (void)__resetRetryIntervalIndex
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = sub_1E0BEE2F0(self->_retrySchedule);
    v7 = 138543362;
    v8 = v6;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] AUTO-JOIN: Resetting retry interval index (schedule=%{public}@)", &v7, 12);
  }

  self->_retryScheduleIndex = 0;
  if (self->_isRetryScheduled)
  {
    [(CWFAutoJoinManager *)self __updateRetrySchedule];
  }
}

- (void)setKnownNetworks:(id)networks
{
  v52 = *MEMORY[0x1E69E9840];
  networksCopy = networks;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  knownNetworks = selfCopy->_knownNetworks;
  v41 = networksCopy;
  if (knownNetworks != networksCopy && (!networksCopy || !knownNetworks || ([(NSSet *)networksCopy isEqual:?]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v50[0] = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] AUTO-JOIN: Updated configured known networks", v50, 2, context);
    }

    v10 = [MEMORY[0x1E695DFA8] set];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    obj = v41;
    v11 = [(NSSet *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
    if (v11)
    {
      v42 = 0;
      v12 = *v47;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v47 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v46 + 1) + 8 * i);
          v15 = [(NSSet *)selfCopy->_knownNetworks member:v14];
          if (v15)
          {
            sSID = [v14 SSID];

            if (sSID)
            {
              sSID2 = [v14 SSID];
              [dictionary setObject:v15 forKeyedSubscript:sSID2];
            }

            if ([v14 isPasspoint])
            {
              domainName = [v14 domainName];
              [dictionary2 setObject:v15 forKeyedSubscript:domainName];
            }

            [v10 addObject:v15];
          }

          else
          {
            v19 = [v14 copy];
            knownNetworkAllowCache = selfCopy->_knownNetworkAllowCache;
            identifier = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkAllowCache setObject:0 forKeyedSubscript:identifier];

            knownNetworkAllowErrorCache = selfCopy->_knownNetworkAllowErrorCache;
            identifier2 = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:identifier2];

            knownNetworkDeferCache = selfCopy->_knownNetworkDeferCache;
            identifier3 = [v14 identifier];
            [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:identifier3];

            sSID3 = [v14 SSID];

            if (sSID3)
            {
              knownNetworkSSIDMap = selfCopy->_knownNetworkSSIDMap;
              sSID4 = [v14 SSID];
              v29 = [(NSMutableDictionary *)knownNetworkSSIDMap objectForKeyedSubscript:sSID4];

              if (!v29 || (v30 = [v29 effectiveSupportedSecurityTypes], v30 != objc_msgSend(v14, "effectiveSupportedSecurityTypes")))
              {
                v42 = 1;
              }

              sSID5 = [v14 SSID];
              [dictionary setObject:v19 forKeyedSubscript:sSID5];
            }

            if ([v14 isPasspoint])
            {
              knownNetworkPasspointDomainMap = selfCopy->_knownNetworkPasspointDomainMap;
              domainName2 = [v14 domainName];
              v34 = [(NSMutableDictionary *)knownNetworkPasspointDomainMap objectForKeyedSubscript:domainName2];

              if (!v34 || (v35 = [v34 effectiveSupportedSecurityTypes], v35 != objc_msgSend(v14, "effectiveSupportedSecurityTypes")))
              {
                v42 = 1;
              }

              domainName3 = [v14 domainName];
              [dictionary2 setObject:v19 forKeyedSubscript:domainName3];
            }

            [v10 addObject:v19];
          }
        }

        v11 = [(NSSet *)obj countByEnumeratingWithState:&v46 objects:v51 count:16];
      }

      while (v11);
    }

    else
    {
      v42 = 0;
    }

    v37 = [v10 copy];
    v38 = selfCopy->_knownNetworks;
    selfCopy->_knownNetworks = v37;

    [(NSMutableDictionary *)selfCopy->_knownNetworkSSIDMap setDictionary:dictionary];
    [(NSMutableDictionary *)selfCopy->_knownNetworkPasspointDomainMap setDictionary:dictionary2];
    allObjects = [(NSSet *)selfCopy->_knownNetworks allObjects];
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setKnownNetworks:allObjects];

    if (v42)
    {
      selfCopy->_didConfigurationChangeSincePreviousAttempt = 1;
      selfCopy->_resetCachedKnownNetworksContext = 1;
      [(CWFAutoJoinManager *)selfCopy __resetRetryIntervalIndex];
    }
  }

  objc_sync_exit(selfCopy);

  objc_autoreleasePoolPop(context);
}

- (NSSet)supportedChannels
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSSet *)selfCopy->_supportedChannels copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setSupportedChannels:(id)channels
{
  channelsCopy = channels;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  supportedChannels = selfCopy->_supportedChannels;
  if (supportedChannels != channelsCopy && (!channelsCopy || !supportedChannels || ([(NSSet *)channelsCopy isEqual:?]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13[0] = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] AUTO-JOIN: Updated supported channels", v13, 2);
    }

    if (selfCopy->_supportedChannels)
    {
      v10 = [(NSSet *)channelsCopy isSubsetOfSet:?];
    }

    else
    {
      v10 = 0;
    }

    v11 = [(NSSet *)channelsCopy copy];
    v12 = selfCopy->_supportedChannels;
    selfCopy->_supportedChannels = v11;

    if (!v10)
    {
      selfCopy->_didConfigurationChangeSincePreviousAttempt = 1;
      selfCopy->_resetCachedKnownNetworksContext = 1;
      [(CWFAutoJoinManager *)selfCopy __resetRetryIntervalIndex];
    }
  }

  objc_sync_exit(selfCopy);
}

- (CLLocation)location
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CLLocation *)selfCopy->_location copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = selfCopy->_location;
  if (location != locationCopy && (!locationCopy || !location || ([(CLLocation *)locationCopy isEqual:?]& 1) == 0))
  {
    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20[0]) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] AUTO-JOIN: Updated location", v20, 2);
    }

    if (!locationCopy || (v10 = selfCopy->_location) == 0 || ([(CLLocation *)v10 distanceFromLocation:locationCopy], v11 > 20.0))
    {
      selfCopy->_resetCachedKnownNetworksContext = 1;
    }

    v12 = [(CLLocation *)locationCopy copy];
    v13 = selfCopy->_location;
    selfCopy->_location = v12;

    loiTypes = selfCopy->_loiTypes;
    selfCopy->_loiTypes = 0;

    if (_os_feature_enabled_impl())
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2050000000;
      v15 = qword_1ED7E39E0;
      v24 = qword_1ED7E39E0;
      if (!qword_1ED7E39E0)
      {
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = sub_1E0C926FC;
        v20[3] = &unk_1E86E5600;
        v20[4] = &v21;
        sub_1E0C926FC(v20);
        v15 = v22[3];
      }

      v16 = v15;
      _Block_object_dispose(&v21, 8);
      defaultManager = [v15 defaultManager];
      v18 = selfCopy->_location;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = sub_1E0C6CE64;
      v19[3] = &unk_1E86E7698;
      v19[4] = selfCopy;
      [defaultManager fetchLocationsOfInterestWithinDistance:v18 ofLocation:v19 withHandler:100.1];
    }
  }

  objc_sync_exit(selfCopy);
}

- (int64_t)retrySchedule
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  retrySchedule = selfCopy->_retrySchedule;
  objc_sync_exit(selfCopy);

  return retrySchedule;
}

- (void)setRetrySchedule:(int64_t)schedule
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_retrySchedule != schedule)
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_1E0BEE2F0(selfCopy->_retrySchedule);
      v9 = sub_1E0BEE2F0(schedule);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v9;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] AUTO-JOIN: Updated retry schedule (%{public}@ --> %{public}@)", &v10, 22);
    }

    selfCopy->_retrySchedule = schedule;
    [(CWFAutoJoinManager *)selfCopy __setupThrottleIntervals];
    if (!selfCopy->_invalidated && (selfCopy->_isRetryScheduled || [(CWFAutoJoinManager *)selfCopy __shouldAlwaysUpdateRetrySchedule:schedule]))
    {
      [(CWFAutoJoinManager *)selfCopy __updateRetrySchedule];
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)setMaxCompatibilityEnabled:(BOOL)enabled
{
  obj = self;
  objc_sync_enter(obj);
  obj->_maxCompatibilityEnabled = enabled;
  objc_sync_exit(obj);
}

- (BOOL)maxCompatibilityEnabled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  maxCompatibilityEnabled = selfCopy->_maxCompatibilityEnabled;
  objc_sync_exit(selfCopy);

  return maxCompatibilityEnabled;
}

- (id)performAutoJoinWithParameters:(id)parameters reply:(id)reply
{
  v40 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  replyCopy = reply;
  v8 = objc_alloc_init(CWFAutoJoinRequest);
  uUID = [MEMORY[0x1E696AFB0] UUID];
  [(CWFAutoJoinRequest *)v8 setUUID:uUID];

  [(CWFAutoJoinRequest *)v8 setParameters:parametersCopy];
  [(CWFAutoJoinRequest *)v8 setReply:replyCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_invalidated)
  {
    v11 = CWFGetOSLog();
    if (v11)
    {
      v12 = CWFGetOSLog();
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
      v13 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      uUID2 = [(CWFAutoJoinRequest *)v8 UUID];
      uUIDString = [uUID2 UUIDString];
      v16 = [uUIDString substringToIndex:5];
      parameters = [(CWFAutoJoinRequest *)v8 parameters];
      v30 = 138543618;
      v31 = v16;
      v32 = 2114;
      v33 = parameters;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 16, "[corewifi] AUTO-JOIN: Auto-join manager is invalidated, unable to add auto-join request with UUID=%{public}@ %{public}@", &v30, 22);
    }

    v18 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v30 = 134219010;
      v31 = v18 / 0x3B9ACA00;
      v32 = 2048;
      v33 = v18 % 0x3B9ACA00 / 0x3E8;
      v34 = 2082;
      v35 = "[CWFAutoJoinManager performAutoJoinWithParameters:reply:]";
      v36 = 2082;
      v37 = "CWFAutoJoinManager.m";
      v38 = 1024;
      v39 = 1080;
      LODWORD(v27) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v30, v27);
    }

    targetQueue = selfCopy->_targetQueue;
    v23 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6D58C;
    block[3] = &unk_1E86E6AF0;
    v29 = replyCopy;
    v24 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v23, 0, block);
    dispatch_async(targetQueue, v24);
  }

  else
  {
    [(CWFAutoJoinManager *)selfCopy __addRequest:v8];
  }

  objc_sync_exit(selfCopy);

  uUID3 = [(CWFAutoJoinRequest *)v8 UUID];

  return uUID3;
}

- (void)cancelAutoJoinWithUUID:(id)d error:(id)error reply:(id)reply
{
  v123 = *MEMORY[0x1E69E9840];
  dCopy = d;
  errorCopy = error;
  replyCopy = reply;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v93 = selfCopy;
  if (selfCopy->_invalidated)
  {
    v10 = CWFGetOSLog();
    if (v10)
    {
      v11 = CWFGetOSLog();
    }

    else
    {
      v11 = MEMORY[0x1E69E9C10];
      v18 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      uUIDString = [dCopy UUIDString];
      v20 = [uUIDString substringToIndex:5];
      v113 = 138543362;
      v114 = v20;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 16, "[corewifi] AUTO-JOIN: Auto-join manager is invalidated, unable to cancel auto-join request with UUID=%{public}@", &v113, 12);
    }

    v21 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v22 = CWFGetOSLog();
    if (v22)
    {
      v23 = CWFGetOSLog();
    }

    else
    {
      v23 = MEMORY[0x1E69E9C10];
      v24 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v113 = 134219010;
      v114 = v21 / 0x3B9ACA00;
      v115 = 2048;
      v116 = v21 % 0x3B9ACA00 / 0x3E8;
      v117 = 2082;
      v118 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
      v119 = 2082;
      v120 = "CWFAutoJoinManager.m";
      v121 = 1024;
      v122 = 1104;
      LODWORD(v89) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v113, v89);
    }

    targetQueue = selfCopy->_targetQueue;
    v26 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C6E6E0;
    block[3] = &unk_1E86E6AF0;
    v111 = replyCopy;
    v27 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v26, 0, block);
    dispatch_async(targetQueue, v27);
  }

  else if (dCopy)
  {
    uUID = [(CWFAutoJoinRequest *)selfCopy->_activeRequest UUID];
    v13 = [dCopy isEqual:uUID];

    if (v13)
    {
      v14 = CWFGetOSLog();
      if (v14)
      {
        v15 = CWFGetOSLog();
      }

      else
      {
        v15 = MEMORY[0x1E69E9C10];
        v55 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        activeRequest = selfCopy->_activeRequest;
        v113 = 138543362;
        v114 = activeRequest;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi] AUTO-JOIN: Cancelled active auto-join request (%{public}@)", &v113, 12);
      }

      selfCopy->_cancelled = 1;
      v57 = [errorCopy copy];
      underlyingCancelError = selfCopy->_underlyingCancelError;
      selfCopy->_underlyingCancelError = v57;

      internalQueue = selfCopy->_internalQueue;
      v60 = qos_class_self();
      v108[0] = MEMORY[0x1E69E9820];
      v108[1] = 3221225472;
      v108[2] = sub_1E0C6E8C4;
      v108[3] = &unk_1E86E64C0;
      v108[4] = selfCopy;
      v109 = replyCopy;
      v61 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v60, 0, v108);
      dispatch_async(internalQueue, v61);
    }

    else
    {
      for (i = 0; i < [(NSMutableArray *)selfCopy->_pendingRequests count]; ++i)
      {
        v29 = [(NSMutableArray *)selfCopy->_pendingRequests objectAtIndexedSubscript:i];
        uUID2 = [v29 UUID];
        v31 = [dCopy isEqual:uUID2];

        if (v31)
        {
          v32 = CWFGetOSLog();
          if (v32)
          {
            v33 = CWFGetOSLog();
          }

          else
          {
            v33 = MEMORY[0x1E69E9C10];
            v62 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v113 = 138543362;
            v114 = v29;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v33, 0, "[corewifi] AUTO-JOIN: Cancelled pending auto-join request (%{public}@)", &v113, 12);
          }

          v63 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v64 = CWFGetOSLog();
          if (v64)
          {
            v65 = CWFGetOSLog();
          }

          else
          {
            v65 = MEMORY[0x1E69E9C10];
            v66 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
          {
            v113 = 134219010;
            v114 = v63 / 0x3B9ACA00;
            v115 = 2048;
            v116 = v63 % 0x3B9ACA00 / 0x3E8;
            v117 = 2082;
            v118 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
            v119 = 2082;
            v120 = "CWFAutoJoinManager.m";
            v121 = 1024;
            v122 = 1140;
            LODWORD(v89) = 48;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v65, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v113, v89);
          }

          v67 = selfCopy->_targetQueue;
          v68 = qos_class_self();
          v104[0] = MEMORY[0x1E69E9820];
          v104[1] = 3221225472;
          v104[2] = sub_1E0C6EC7C;
          v104[3] = &unk_1E86E6CA8;
          v69 = v29;
          v105 = v69;
          v106 = errorCopy;
          v107 = replyCopy;
          v70 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v68, 0, v104);
          dispatch_async(v67, v70);

          [(NSMutableArray *)selfCopy->_pendingRequests removeObjectAtIndex:i];
          goto LABEL_66;
        }
      }

      v77 = CWFGetOSLog();
      if (v77)
      {
        v78 = CWFGetOSLog();
      }

      else
      {
        v78 = MEMORY[0x1E69E9C10];
        v79 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString2 = [dCopy UUIDString];
        v81 = [uUIDString2 substringToIndex:5];
        v113 = 138543362;
        v114 = v81;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v78, 0, "[corewifi] AUTO-JOIN: Could not find matching auto-join request to cancel with UUID=%{public}@", &v113, 12);
      }

      v82 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
      v83 = CWFGetOSLog();
      if (v83)
      {
        v84 = CWFGetOSLog();
      }

      else
      {
        v84 = MEMORY[0x1E69E9C10];
        v85 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
      {
        v113 = 134219010;
        v114 = v82 / 0x3B9ACA00;
        v115 = 2048;
        v116 = v82 % 0x3B9ACA00 / 0x3E8;
        v117 = 2082;
        v118 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
        v119 = 2082;
        v120 = "CWFAutoJoinManager.m";
        v121 = 1024;
        v122 = 1156;
        LODWORD(v89) = 48;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v84, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v113, v89);
      }

      v86 = selfCopy->_targetQueue;
      v87 = qos_class_self();
      v102[0] = MEMORY[0x1E69E9820];
      v102[1] = 3221225472;
      v102[2] = sub_1E0C6EEE0;
      v102[3] = &unk_1E86E6AF0;
      v103 = replyCopy;
      v88 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v87, 0, v102);
      dispatch_async(v86, v88);
    }
  }

  else
  {
    v16 = CWFGetOSLog();
    if (v16)
    {
      v17 = CWFGetOSLog();
    }

    else
    {
      v17 = MEMORY[0x1E69E9C10];
      v34 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v113) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v17, 0, "[corewifi] AUTO-JOIN: Cancelling all auto-join requests", &v113, 2);
    }

    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    obj = selfCopy->_pendingRequests;
    v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v98 objects:v112 count:16];
    if (v35)
    {
      v36 = MEMORY[0x1E69E9C10];
      v37 = *v99;
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v99 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v98 + 1) + 8 * j);
          v40 = CWFGetOSLog();
          if (v40)
          {
            v41 = CWFGetOSLog();
          }

          else
          {
            v42 = v36;
            v41 = v36;
          }

          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v113 = 138543362;
            v114 = v39;
            LODWORD(v89) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v41, 0, "[corewifi] AUTO-JOIN: Cancelled pending auto-join request (%{public}@)", &v113, v89);
          }

          v43 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
          v44 = CWFGetOSLog();
          if (v44)
          {
            v45 = CWFGetOSLog();
          }

          else
          {
            v46 = v36;
            v45 = v36;
          }

          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
          {
            v113 = 134219010;
            v114 = v43 / 0x3B9ACA00;
            v115 = 2048;
            v116 = v43 % 0x3B9ACA00 / 0x3E8;
            v117 = 2082;
            v118 = "[CWFAutoJoinManager cancelAutoJoinWithUUID:error:reply:]";
            v119 = 2082;
            v120 = "CWFAutoJoinManager.m";
            v121 = 1024;
            v122 = 1171;
            LODWORD(v89) = 48;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v45, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v113, v89);
          }

          v47 = v93->_targetQueue;
          v48 = qos_class_self();
          v96[0] = MEMORY[0x1E69E9820];
          v96[1] = 3221225472;
          v96[2] = sub_1E0C6F0C4;
          v96[3] = &unk_1E86E6420;
          v96[4] = v39;
          v97 = errorCopy;
          v49 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v48, 0, v96);
          dispatch_async(v47, v49);
        }

        v35 = [(NSMutableArray *)obj countByEnumeratingWithState:&v98 objects:v112 count:16];
      }

      while (v35);
    }

    v50 = v93;
    [(NSMutableArray *)v93->_pendingRequests removeAllObjects];
    if (v93->_activeRequest)
    {
      v93->_cancelled = 1;
      v51 = [errorCopy copy];
      v52 = v93->_underlyingCancelError;
      v93->_underlyingCancelError = v51;

      v53 = CWFGetOSLog();
      if (v53)
      {
        v54 = CWFGetOSLog();
      }

      else
      {
        v54 = MEMORY[0x1E69E9C10];
        v71 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        v72 = v93->_activeRequest;
        code = [(NSError *)v93->_underlyingCancelError code];
        v113 = 138543618;
        v114 = v72;
        v115 = 2048;
        v116 = code;
        LODWORD(v89) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v54, 0, "[corewifi] AUTO-JOIN: Cancelled active auto-join request (%{public}@) due to underlying code (%ld)", &v113, v89);
      }

      v50 = v93;
    }

    v74 = v50->_internalQueue;
    v75 = qos_class_self();
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = sub_1E0C6F310;
    v94[3] = &unk_1E86E64C0;
    v94[4] = v50;
    v95 = replyCopy;
    v76 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v75, 0, v94);
    dispatch_async(v74, v76);
  }

LABEL_66:
  objc_sync_exit(v93);
}

- (CWFAutoJoinMetric)metric
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFAutoJoinMetric *)selfCopy->_cachedMetric copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)resetStatistics
{
  v14 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = CWFGetOSLog();
  if (v3)
  {
    v4 = CWFGetOSLog();
  }

  else
  {
    v4 = MEMORY[0x1E69E9C10];
    v5 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    statistics = selfCopy->_statistics;
    v12 = 138543362;
    v13 = statistics;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v4, 0, "[corewifi] AUTO-JOIN: Reset auto-join STATS (%{public}@)", &v12, 12);
  }

  v7 = objc_alloc_init(CWFAutoJoinStatistics);
  v8 = selfCopy->_statistics;
  selfCopy->_statistics = v7;

  date = [MEMORY[0x1E695DF00] date];
  [(CWFAutoJoinStatistics *)selfCopy->_statistics setStartedAt:date];

  statisticsSubmissionTimer = selfCopy->_statisticsSubmissionTimer;
  if (statisticsSubmissionTimer)
  {
    v11 = dispatch_walltime(0, 86400000000000);
    dispatch_source_set_timer(statisticsSubmissionTimer, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  }

  objc_sync_exit(selfCopy);
}

- (NSSet)recentlyMatchedCandidates
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)__updateRecentlyMatchedCandidates
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableSet *)self->_matchedCandidates mutableCopy];
  v4 = [(NSMutableSet *)self->_disallowedMatchedCandidates mutableCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates minusSet:v3];
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates minusSet:v4];
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates unionSet:v3];
  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates unionSet:v4];
  v6 = [MEMORY[0x1E695DFA8] set];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = selfCopy->_recentlyMatchedCandidates;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v12 + 1) + 8 * i);
        if ([v11 age] >= 0x493E1)
        {
          [v6 addObject:v11];
        }
      }

      v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  [(NSMutableSet *)selfCopy->_recentlyMatchedCandidates minusSet:v6];
  objc_sync_exit(selfCopy);
}

- (id)__hiddenSSIDListForLocation:(id)location knownNetworks:(id)networks recentOnly:(BOOL)only nearbyOnly:(BOOL)nearbyOnly
{
  onlyCopy = only;
  v75 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  networksCopy = networks;
  v54 = objc_autoreleasePoolPush();
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  if (networksCopy)
  {
    allObjects = [networksCopy allObjects];
    [orderedSet addObjectsFromArray:allObjects];

    [(CWFAutoJoinManager *)self __sortKnownNetworks:orderedSet];
  }

  v55 = networksCopy;
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v13 = v12;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = orderedSet;
  v61 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
  if (v61)
  {
    v60 = *v69;
    do
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v69 != v60)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v68 + 1) + 8 * i);
        bSSList = [v15 BSSList];
        v62 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
        v73 = v62;
        v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v73 count:1];
        v63 = bSSList;
        v18 = [bSSList sortedArrayUsingDescriptors:v17];

        v66 = 0u;
        v67 = 0u;
        v64 = 0u;
        v65 = 0u;
        v19 = v18;
        v20 = [v19 countByEnumeratingWithState:&v64 objects:v72 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = 0;
          v23 = *v65;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v65 != v23)
              {
                objc_enumerationMutation(v19);
              }

              location = [*(*(&v64 + 1) + 8 * j) location];
              v26 = location;
              if (locationCopy)
              {
                if (location)
                {
                  [locationCopy horizontalAccuracy];
                  if (v27 >= 0.0)
                  {
                    [locationCopy horizontalAccuracy];
                    if (v28 <= 100.0)
                    {
                      [v26 horizontalAccuracy];
                      if (v29 >= 0.0)
                      {
                        [v26 horizontalAccuracy];
                        if (v30 <= 100.0)
                        {
                          [v26 distanceFromLocation:locationCopy];
                          if (v31 <= 300.0)
                          {
                            v22 = 1;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v64 objects:v72 count:16];
          }

          while (v21);
        }

        else
        {
          v22 = 0;
        }

        networkName = [v15 networkName];
        if (networkName && ([v15 isPasspoint] & 1) == 0)
        {
          if ([v15 hiddenState] == 2)
          {
            wasHiddenBefore = [v15 wasHiddenBefore];
            if (!wasHiddenBefore)
            {
              goto LABEL_42;
            }

            v34 = wasHiddenBefore;
            wasHiddenBefore2 = [v15 wasHiddenBefore];
            [wasHiddenBefore2 timeIntervalSinceNow];
            v37 = v36;
            wasHiddenBefore3 = [v15 wasHiddenBefore];
            [wasHiddenBefore3 timeIntervalSinceNow];
            v40 = v39;

            if (v37 >= 0.0)
            {
              if (v40 >= 604800.0)
              {
                goto LABEL_42;
              }
            }

            else if (v40 <= -604800.0)
            {
              goto LABEL_42;
            }
          }

          if (onlyCopy)
          {
            lastJoinedAt = [v15 lastJoinedAt];
            [lastJoinedAt timeIntervalSinceReferenceDate];
            if (v13 - v42 <= 2592000.0)
            {
            }

            else
            {
              lastDiscoveredAt = [v15 lastDiscoveredAt];
              [lastDiscoveredAt timeIntervalSinceReferenceDate];
              v45 = v13 - v44;

              if (v45 > 2592000.0)
              {
                goto LABEL_42;
              }
            }
          }

          if (v22)
          {
            v46 = orderedSet3;
          }

          else
          {
            v46 = orderedSet2;
          }

          [v46 addObject:networkName];
        }

LABEL_42:
      }

      v61 = [obj countByEnumeratingWithState:&v68 objects:v74 count:16];
    }

    while (v61);
  }

  if ([orderedSet3 count] || objc_msgSend(orderedSet2, "count"))
  {
    orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
    array = [orderedSet3 array];
    [orderedSet4 addObjectsFromArray:array];

    v50 = v54;
    v49 = v55;
    if (!nearbyOnly)
    {
      array2 = [orderedSet2 array];
      [orderedSet4 addObjectsFromArray:array2];
    }
  }

  else
  {
    orderedSet4 = 0;
    v50 = v54;
    v49 = v55;
  }

  objc_autoreleasePoolPop(v50);

  return orderedSet4;
}

- (NSOrderedSet)recentLocationBasedHiddenSSIDList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = [(CWFAutoJoinManager *)selfCopy location];
  knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
  v5 = [(CWFAutoJoinManager *)selfCopy __hiddenSSIDListForLocation:location knownNetworks:knownNetworks recentOnly:1 nearbyOnly:1];

  objc_sync_exit(selfCopy);

  return v5;
}

- (NSOrderedSet)locationBasedHiddenSSIDList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = [(CWFAutoJoinManager *)selfCopy location];
  knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
  v5 = [(CWFAutoJoinManager *)selfCopy __hiddenSSIDListForLocation:location knownNetworks:knownNetworks recentOnly:0 nearbyOnly:1];

  objc_sync_exit(selfCopy);

  return v5;
}

- (NSOrderedSet)hiddenSSIDList
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  location = [(CWFAutoJoinManager *)selfCopy location];
  knownNetworks = [(CWFAutoJoinManager *)selfCopy knownNetworks];
  v5 = [(CWFAutoJoinManager *)selfCopy __hiddenSSIDListForLocation:location knownNetworks:knownNetworks recentOnly:0 nearbyOnly:0];

  objc_sync_exit(selfCopy);

  return v5;
}

- (void)__updateStatisticsWithScanChannels:(id)channels
{
  v15 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [channelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(channelsCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 is2GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount2GHz:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount2GHz]+ 1];
        }

        else if ([v9 is5GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount5GHz:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount5GHz]+ 1];
        }

        else if ([v9 is6GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount6GHz:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount6GHz]+ 1];
        }

        [(CWFAutoJoinStatistics *)self->_statistics setScanChannelCount:[(CWFAutoJoinStatistics *)self->_statistics scanChannelCount]+ 1];
      }

      v6 = [channelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)__updateStatisticsWithPreAssocScanChannels:(id)channels
{
  v15 = *MEMORY[0x1E69E9840];
  channelsCopy = channels;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [channelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(channelsCopy);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 is2GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount2GHz:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount2GHz]+ 1];
        }

        else if ([v9 is5GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount5GHz:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount5GHz]+ 1];
        }

        else if ([v9 is6GHz])
        {
          [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount6GHz:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount6GHz]+ 1];
        }

        [(CWFAutoJoinStatistics *)self->_statistics setPreAssocScanChannelCount:[(CWFAutoJoinStatistics *)self->_statistics preAssocScanChannelCount]+ 1];
      }

      v6 = [channelsCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)__scheduleDelayedAutoJoinMetricSubmission
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C705A8;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__unscheduleDelayedAutoJoinMetricSubmission
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C7068C;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

- (void)__updateAutoJoinMetricAndStatistics:(id)statistics
{
  statisticsCopy = statistics;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [statisticsCopy copy];
  cachedMetric = selfCopy->_cachedMetric;
  selfCopy->_cachedMetric = v5;

  if ([statisticsCopy result])
  {
    autoJoinedNetwork = [statisticsCopy autoJoinedNetwork];
    if (autoJoinedNetwork)
    {

LABEL_6:
      [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:selfCopy->_delayedSubmissionMetric];
      v9 = [statisticsCopy copy];
      delayedSubmissionMetric = selfCopy->_delayedSubmissionMetric;
      selfCopy->_delayedSubmissionMetric = v9;

      [(CWFAutoJoinManager *)selfCopy __scheduleDelayedAutoJoinMetricSubmission];
      [(CWFAutoJoinManager *)selfCopy __updateAutoJoinMetricWithJoinStatus];
      goto LABEL_8;
    }
  }

  if ([statisticsCopy autoHotspotResult])
  {
    hotspot = [statisticsCopy hotspot];

    if (hotspot)
    {
      goto LABEL_6;
    }
  }

  [(CWFAutoJoinManager *)selfCopy __submitAutoJoinMetric:statisticsCopy];
LABEL_8:
  wasAlreadyAssociatedToNetwork = [statisticsCopy wasAlreadyAssociatedToNetwork];

  if (wasAlreadyAssociatedToNetwork)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinAlreadyAssociatedCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinAlreadyAssociatedCount]+ 1];
  }

  autoJoinTriggerCounts = [(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinTriggerCounts];
  v13 = MEMORY[0x1E696AD98];
  autoJoinParameters = [statisticsCopy autoJoinParameters];
  v15 = [v13 numberWithInteger:{objc_msgSend(autoJoinParameters, "trigger")}];
  v16 = [autoJoinTriggerCounts objectForKeyedSubscript:v15];
  unsignedIntegerValue = [v16 unsignedIntegerValue];

  v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  autoJoinTriggerCounts2 = [(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinTriggerCounts];
  v20 = MEMORY[0x1E696AD98];
  autoJoinParameters2 = [statisticsCopy autoJoinParameters];
  v22 = [v20 numberWithInteger:{objc_msgSend(autoJoinParameters2, "trigger")}];
  [autoJoinTriggerCounts2 setObject:v18 forKeyedSubscript:v22];

  error = [statisticsCopy error];

  if (error)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinAbortedCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinAbortedCount]+ 1];
  }

  scanChannels = [statisticsCopy scanChannels];
  [(CWFAutoJoinManager *)selfCopy __updateStatisticsWithScanChannels:scanChannels];

  preAssociationScanChannels = [statisticsCopy preAssociationScanChannels];
  [(CWFAutoJoinManager *)selfCopy __updateStatisticsWithPreAssocScanChannels:preAssociationScanChannels];

  statistics = selfCopy->_statistics;
  followup6GHzScanChannels = [statisticsCopy followup6GHzScanChannels];
  -[CWFAutoJoinStatistics setFollowup6GHzScanChannelCount:](statistics, "setFollowup6GHzScanChannelCount:", -[CWFAutoJoinStatistics followup6GHzScanChannelCount](statistics, "followup6GHzScanChannelCount") + [followup6GHzScanChannels count]);

  v28 = selfCopy->_statistics;
  gASQueryNetworks = [statisticsCopy GASQueryNetworks];
  -[CWFAutoJoinStatistics setGASQueryCount:](v28, "setGASQueryCount:", -[CWFAutoJoinStatistics GASQueryCount](v28, "GASQueryCount") + [gASQueryNetworks count]);

  autoJoinedNetwork2 = [statisticsCopy autoJoinedNetwork];

  if (autoJoinedNetwork2)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinDidFindCandidateCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinDidFindCandidateCount]+ 1];
    if ([statisticsCopy result])
    {
      [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoJoinDidJoinCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoJoinDidJoinCount]+ 1];
    }
  }

  if ([statisticsCopy autoHotspotWasAttempted] && objc_msgSend(statisticsCopy, "autoHotspotMode") == 3)
  {
    [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotCount]+ 1];
    hotspot2 = [statisticsCopy hotspot];

    if (hotspot2)
    {
      [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotDidFindCandidateCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotDidFindCandidateCount]+ 1];
      if ([statisticsCopy autoHotspotResult])
      {
        [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotDidJoinCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotDidJoinCount]+ 1];
      }
    }

    autoHotspotError = [statisticsCopy autoHotspotError];

    if (autoHotspotError)
    {
      [(CWFAutoJoinStatistics *)selfCopy->_statistics setAutoHotspotAbortedCount:[(CWFAutoJoinStatistics *)selfCopy->_statistics autoHotspotAbortedCount]+ 1];
    }
  }

  objc_sync_exit(selfCopy);
}

- (BOOL)__shouldIgnoreRequestWithTrigger:(int64_t)trigger
{
  v18 = *MEMORY[0x1E69E9840];
  if (trigger != 32)
  {
    if (trigger != 58 && trigger != 34)
    {
      goto LABEL_5;
    }

    associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];

    if (associatedNetwork)
    {
      goto LABEL_5;
    }

    v8 = CWFGetOSLog();
    if (v8)
    {
      v9 = CWFGetOSLog();
    }

    else
    {
      v9 = MEMORY[0x1E69E9C10];
      v10 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
LABEL_22:

      LOBYTE(activeRequest) = 1;
      return activeRequest;
    }

    v11 = sub_1E0BCC05C(trigger);
    LODWORD(v17) = 138543362;
    *(&v17 + 4) = v11;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] AUTO-JOIN: Trigger not allowed when unassociated, ignoring (%{public}@)", &v17, 12, v17);
LABEL_21:

    goto LABEL_22;
  }

  activeRequest = self->_activeRequest;
  if (!activeRequest)
  {
    return activeRequest;
  }

  if (!self->_cancelled)
  {
    parameters = [(CWFAutoJoinRequest *)activeRequest parameters];
    if ([parameters trigger] == 32)
    {

LABEL_16:
      v14 = CWFGetOSLog();
      if (v14)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v15 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v11 = sub_1E0BCC05C(0x20uLL);
      LODWORD(v17) = 138543362;
      *(&v17 + 4) = v11;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] AUTO-JOIN: Trigger not allowed when CarPlay is already scheduled, ignoring (%{public}@)", &v17, 12, v17);
      goto LABEL_21;
    }

    parameters2 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    trigger = [parameters2 trigger];

    if (trigger == 47)
    {
      goto LABEL_16;
    }
  }

LABEL_5:
  LOBYTE(activeRequest) = 0;
  return activeRequest;
}

- (BOOL)__shouldResetRetryIntervalIndexForTrigger:(int64_t)trigger previousTimestamp:(unint64_t)timestamp
{
  result = 0;
  if (trigger <= 0x3B)
  {
    if (((1 << trigger) & 0x90000032010018CLL) != 0)
    {
      return 1;
    }

    else if (trigger == 19)
    {
      return clock_gettime_nsec_np(_CLOCK_MONOTONIC) - timestamp > 0x45D964B800;
    }
  }

  return result;
}

- (BOOL)__shouldInvokeImmediatelyForTrigger:(int64_t)trigger
{
  result = 0;
  if ((trigger - 9) <= 0x3B)
  {
    if (((1 << (trigger - 9)) & 0xE88004001800911) != 0)
    {
      return 1;
    }

    else if (trigger == 61)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      retryScheduleIndex = selfCopy->_retryScheduleIndex;
      objc_sync_exit(selfCopy);

      return retryScheduleIndex != 0;
    }
  }

  return result;
}

- (void)__removeRedundantRequests:(id)requests
{
  v69 = *MEMORY[0x1E69E9840];
  requestsCopy = requests;
  array = [MEMORY[0x1E695DF70] array];
  v48 = requestsCopy;
  if ([(NSMutableArray *)self->_pendingRequests count])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSMutableArray *)self->_pendingRequests objectAtIndexedSubscript:v5];
      parameters = [v6 parameters];
      mode = [parameters mode];
      parameters2 = [requestsCopy parameters];
      if (mode == [parameters2 mode])
      {
        break;
      }

LABEL_24:
      if (++v5 >= [(NSMutableArray *)self->_pendingRequests count])
      {
        goto LABEL_27;
      }
    }

    parameters3 = [v6 parameters];
    obj = [parameters3 targetNetworkProfile];
    identifier = [obj identifier];
    parameters4 = [requestsCopy parameters];
    targetNetworkProfile = [parameters4 targetNetworkProfile];
    identifier2 = [targetNetworkProfile identifier];
    if (identifier == identifier2)
    {
      v49 = parameters3;
    }

    else
    {
      parameters5 = [v6 parameters];
      targetNetworkProfile2 = [parameters5 targetNetworkProfile];
      identifier3 = [targetNetworkProfile2 identifier];
      if (!identifier3)
      {
        identifier3 = 0;
        v15 = 0;
LABEL_20:

LABEL_21:
        if (v15)
        {
          [array addObject:v6];
        }

        requestsCopy = v48;
        goto LABEL_24;
      }

      v49 = parameters3;
      parameters6 = [v48 parameters];
      targetNetworkProfile3 = [parameters6 targetNetworkProfile];
      identifier4 = [targetNetworkProfile3 identifier];
      if (!identifier4)
      {
        identifier4 = 0;
        v15 = 0;
        goto LABEL_19;
      }

      parameters7 = [v6 parameters];
      targetNetworkProfile4 = [parameters7 targetNetworkProfile];
      identifier5 = [targetNetworkProfile4 identifier];
      parameters8 = [v48 parameters];
      targetNetworkProfile5 = [parameters8 targetNetworkProfile];
      [targetNetworkProfile5 identifier];
      v35 = v38 = identifier5;
      if (![identifier5 isEqual:?])
      {
        v15 = 0;
LABEL_16:

LABEL_19:
        goto LABEL_20;
      }
    }

    parameters9 = [v6 parameters];
    trigger = [parameters9 trigger];
    if (trigger - 44 < 8 || trigger <= 0x3F && ((1 << trigger) & 0xC000000000000010) != 0)
    {

      v15 = 0;
    }

    else
    {
      v15 = [v6 allowAutoHotspotFallback] ^ 1;
    }

    parameters3 = v49;
    if (identifier == identifier2)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

LABEL_27:
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  obja = array;
  v18 = [obja countByEnumeratingWithState:&v54 objects:v68 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = MEMORY[0x1E69E9C10];
    v21 = *v55;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v55 != v21)
        {
          objc_enumerationMutation(obja);
        }

        v23 = *(*(&v54 + 1) + 8 * i);
        v24 = CWFGetOSLog();
        if (v24)
        {
          v25 = CWFGetOSLog();
        }

        else
        {
          v26 = v20;
          v25 = v20;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v58 = 138543362;
          v59 = v23;
          LODWORD(v34) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 0, "[corewifi] AUTO-JOIN: Removing redundant auto-join request (%{public}@)", &v58, v34);
        }

        v27 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v28 = CWFGetOSLog();
        if (v28)
        {
          v29 = CWFGetOSLog();
        }

        else
        {
          v30 = v20;
          v29 = v20;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v58 = 134219010;
          v59 = v27 / 0x3B9ACA00;
          v60 = 2048;
          v61 = v27 % 0x3B9ACA00 / 0x3E8;
          v62 = 2082;
          v63 = "[CWFAutoJoinManager __removeRedundantRequests:]";
          v64 = 2082;
          v65 = "CWFAutoJoinManager.m";
          v66 = 1024;
          v67 = 1740;
          LODWORD(v34) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v29, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v58, v34);
        }

        targetQueue = self->_targetQueue;
        v32 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C714A0;
        block[3] = &unk_1E86E6010;
        block[4] = v23;
        v33 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v32, 0, block);
        dispatch_async(targetQueue, v33);

        [(NSMutableArray *)self->_pendingRequests removeObject:v23];
      }

      v19 = [obja countByEnumeratingWithState:&v54 objects:v68 count:16];
    }

    while (v19);
  }

  [obja removeAllObjects];
}

- (void)__invalidateAllowedKnownNetworksCacheForTrigger:(int64_t)trigger
{
  v29 = *MEMORY[0x1E69E9840];
  if (trigger <= 0x28 && ((1 << trigger) & 0x101A03A0100) != 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [(NSSet *)self->_knownNetworks allObjects];
    v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v23)
    {
      v22 = *v25;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v24 + 1) + 8 * i);
          identifier = [v8 identifier];

          if (identifier)
          {
            if ((trigger & 0xFFFFFFFFFFFFFFFELL) == 0x14 && [v8 isEAP] && !objc_msgSend(v8, "isSystemMode"))
            {
              goto LABEL_19;
            }

            v10 = 0;
            if (((1 << trigger) & 0x101A00A0100) != 0)
            {
              knownNetworkAllowCache = self->_knownNetworkAllowCache;
              identifier2 = [v8 identifier];
              v4 = [(NSMutableDictionary *)knownNetworkAllowCache objectForKeyedSubscript:identifier2];
              if (v4)
              {
                v12 = self->_knownNetworkAllowCache;
                identifier3 = [v8 identifier];
                v14 = [(NSMutableDictionary *)v12 objectForKeyedSubscript:identifier3];
                v10 = [v14 BOOLValue] ^ 1;
              }

              else
              {
                v10 = 0;
              }
            }

            if (((1 << trigger) & 0x101A00A0100) != 0)
            {
            }

            if (v10)
            {
LABEL_19:
              v15 = self->_knownNetworkAllowCache;
              identifier4 = [v8 identifier];
              [(NSMutableDictionary *)v15 setObject:0 forKeyedSubscript:identifier4];

              knownNetworkAllowErrorCache = self->_knownNetworkAllowErrorCache;
              identifier5 = [v8 identifier];
              [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:identifier5];

              knownNetworkDeferCache = self->_knownNetworkDeferCache;
              identifier6 = [v8 identifier];
              [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:identifier6];
            }
          }
        }

        v23 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v23);
    }
  }
}

- (unsigned)__qosForAutoJoinTrigger:(int64_t)trigger
{
  if (trigger > 0x3F)
  {
    return 25;
  }

  if (((1 << trigger) & 0xC00FF00000000010) != 0)
  {
    return 21;
  }

  if (((1 << trigger) & 0xC0010020010104) != 0)
  {
    return 33;
  }

  else
  {
    return 25;
  }
}

- (BOOL)__defaultUserConfiguredNetworkPreference
{
  if (qword_1ED7E39D8 != -1)
  {
    dispatch_once(&qword_1ED7E39D8, &unk_1F5B89B90);
  }

  if (_os_feature_enabled_impl())
  {
    return 1;
  }

  if (dword_1ED7E39D0 != 7)
  {
    return 0;
  }

  return _os_feature_enabled_impl();
}

- (void)__addRequest:(id)request
{
  v141 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v5 = CWFGetOSLog();
  if (v5)
  {
    v6 = CWFGetOSLog();
  }

  else
  {
    v6 = MEMORY[0x1E69E9C10];
    v7 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v132 = 138543362;
    *v133 = requestCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v6, 0, "[corewifi] AUTO-JOIN: Auto-join triggered (%{public}@)", &v132, 12);
  }

  parameters = [requestCopy parameters];
  trigger = [parameters trigger];

  triggerTimestampMap = self->_triggerTimestampMap;
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  v12 = [(NSMutableDictionary *)triggerTimestampMap objectForKeyedSubscript:v11];
  unsignedLongValue = [v12 unsignedLongValue];

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_MONOTONIC)];
  v15 = self->_triggerTimestampMap;
  v16 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  [(NSMutableDictionary *)v15 setObject:v14 forKeyedSubscript:v16];

  v95 = trigger;
  if ([(CWFAutoJoinManager *)self __shouldResetRetryIntervalIndexForTrigger:trigger previousTimestamp:unsignedLongValue])
  {
    [(CWFAutoJoinManager *)self __resetRetryIntervalIndex];
  }

  v17 = trigger;
  if (trigger - 44 >= 8 && (trigger > 0x3F || ((1 << trigger) & 0xC000000000000010) == 0))
  {
    [requestCopy setAllowAutoHotspotFallback:{-[CWFAutoJoinManager __shouldAllowAutoHotspotForTrigger:](self, "__shouldAllowAutoHotspotForTrigger:", trigger)}];
  }

  [(CWFAutoJoinManager *)self __invalidateAllowedKnownNetworksCacheForTrigger:trigger];
  if ((trigger & 0xFFFFFFFFFFFFFFDFLL) == 8)
  {
    prevAssociatedNetwork = self->_prevAssociatedNetwork;
    self->_prevAssociatedNetwork = 0;

    self->_prevAssocBeforeTimestamp = 0;
  }

  activeRequest = self->_activeRequest;
  selfCopy = self;
  v113 = requestCopy;
  if (!activeRequest || self->_cancelled)
  {
    v93 = 0;
    goto LABEL_37;
  }

  parameters2 = [(CWFAutoJoinRequest *)activeRequest parameters];
  if ([parameters2 trigger] == trigger)
  {
    parameters3 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    mode = [parameters3 mode];
    parameters4 = [requestCopy parameters];
    if (mode != [parameters4 mode])
    {
      v93 = 0;
LABEL_35:

      v17 = v95;
      goto LABEL_36;
    }

    parameters5 = [(CWFAutoJoinRequest *)self->_activeRequest parameters];
    [parameters5 targetNetworkProfile];
    v25 = requestCopy;
    v27 = v26 = self;
    identifier = [v27 identifier];
    parameters6 = [v25 parameters];
    targetNetworkProfile = [parameters6 targetNetworkProfile];
    identifier2 = [targetNetworkProfile identifier];
    if (identifier != identifier2)
    {
      parameters7 = [(CWFAutoJoinRequest *)v26->_activeRequest parameters];
      targetNetworkProfile2 = [parameters7 targetNetworkProfile];
      identifier3 = [targetNetworkProfile2 identifier];
      if (!identifier3)
      {
        v93 = 0;
LABEL_33:

LABEL_34:
        self = selfCopy;
        requestCopy = v113;
        goto LABEL_35;
      }

      v116 = identifier3;
      v118 = parameters7;
      parameters8 = [v113 parameters];
      targetNetworkProfile3 = [parameters8 targetNetworkProfile];
      identifier4 = [targetNetworkProfile3 identifier];
      if (!identifier4)
      {
        v93 = 0;
LABEL_32:

        parameters7 = v118;
        goto LABEL_33;
      }

      identifier9 = identifier4;
      parameters9 = [(CWFAutoJoinRequest *)selfCopy->_activeRequest parameters];
      targetNetworkProfile4 = [parameters9 targetNetworkProfile];
      identifier5 = [targetNetworkProfile4 identifier];
      parameters10 = [v113 parameters];
      targetNetworkProfile5 = [parameters10 targetNetworkProfile];
      identifier6 = [targetNetworkProfile5 identifier];
      if (![identifier5 isEqual:?])
      {
        v93 = 0;
LABEL_31:

        goto LABEL_32;
      }

      v103Identifier = identifier5;
    }

    allowAutoHotspotFallback = [(CWFAutoJoinRequest *)selfCopy->_activeRequest allowAutoHotspotFallback];
    v93 = allowAutoHotspotFallback ^ [v113 allowAutoHotspotFallback] ^ 1;
    identifier5 = v103Identifier;
    if (identifier == identifier2)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v93 = 0;
LABEL_36:

LABEL_37:
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v37 = self->_pendingRequests;
  v38 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v128 objects:v140 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v129;
    v106 = *v129;
    v108 = v37;
LABEL_39:
    v41 = 0;
    v121 = v39;
    while (1)
    {
      if (*v129 != v40)
      {
        objc_enumerationMutation(v37);
      }

      v42 = *(*(&v128 + 1) + 8 * v41);
      parameters11 = [v42 parameters];
      if ([parameters11 trigger] != v17)
      {
        goto LABEL_50;
      }

      parameters12 = [v42 parameters];
      mode2 = [parameters12 mode];
      parameters13 = [requestCopy parameters];
      if (mode2 != [parameters13 mode])
      {

        v39 = v121;
LABEL_50:

        goto LABEL_61;
      }

      parameters14 = [v42 parameters];
      targetNetworkProfile6 = [parameters14 targetNetworkProfile];
      identifier7 = [targetNetworkProfile6 identifier];
      parameters15 = [requestCopy parameters];
      targetNetworkProfile7 = [parameters15 targetNetworkProfile];
      identifier8 = [targetNetworkProfile7 identifier];
      if (identifier7 == identifier8)
      {
        parameters16 = parameters9;
      }

      else
      {
        parameters16 = [v42 parameters];
        targetNetworkProfile3 = [parameters16 targetNetworkProfile];
        identifier9 = [targetNetworkProfile3 identifier];
        if (!identifier9)
        {
          v53 = 0;
          identifier9 = 0;
          goto LABEL_59;
        }

        targetNetworkProfile5 = [v113 parameters];
        identifier6 = [targetNetworkProfile5 targetNetworkProfile];
        v103Identifier = [identifier6 identifier];
        if (!v103Identifier)
        {
          v103Identifier = 0;
          v53 = 0;
          v17 = v95;
          goto LABEL_58;
        }

        v110 = parameters14;
        parameters17 = [v42 parameters];
        targetNetworkProfile8 = [parameters17 targetNetworkProfile];
        identifier10 = [targetNetworkProfile8 identifier];
        parameters18 = [v113 parameters];
        targetNetworkProfile9 = [parameters18 targetNetworkProfile];
        [targetNetworkProfile9 identifier];
        v96 = v99 = identifier10;
        if (![identifier10 isEqual:?])
        {
          v53 = 0;
          v17 = v95;
          parameters14 = v110;
LABEL_57:

LABEL_58:
LABEL_59:

          goto LABEL_60;
        }

        v17 = v95;
        parameters14 = v110;
      }

      allowAutoHotspotFallback2 = [v42 allowAutoHotspotFallback];
      v53 = allowAutoHotspotFallback2 ^ [v113 allowAutoHotspotFallback] ^ 1;
      if (identifier7 != identifier8)
      {
        goto LABEL_57;
      }

LABEL_60:
      parameters9 = parameters16;

      requestCopy = v113;
      v40 = v106;
      v37 = v108;
      v39 = v121;
      if (v53)
      {

        v54 = selfCopy;
        if (![(CWFAutoJoinManager *)selfCopy __shouldIgnoreRequestWithTrigger:v17])
        {
          goto LABEL_72;
        }

LABEL_70:
        v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v58 = CWFGetOSLog();
        if (v58)
        {
          v59 = CWFGetOSLog();
        }

        else
        {
          v59 = MEMORY[0x1E69E9C10];
          v62 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
        {
          v132 = 134219010;
          *v133 = v57 / 0x3B9ACA00;
          *&v133[8] = 2048;
          *v134 = v57 % 0x3B9ACA00 / 0x3E8;
          *&v134[8] = 2082;
          v135 = "[CWFAutoJoinManager __addRequest:]";
          v136 = 2082;
          v137 = "CWFAutoJoinManager.m";
          v138 = 1024;
          v139 = 1904;
          LODWORD(v92) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v59, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v132, v92);
        }

        targetQueue = v54->_targetQueue;
        v64 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C72990;
        block[3] = &unk_1E86E6010;
        v127 = requestCopy;
        v65 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v64, 0, block);
        dispatch_async(targetQueue, v65);

        v66 = v127;
LABEL_87:

        goto LABEL_88;
      }

LABEL_61:
      if (v39 == ++v41)
      {
        v39 = [(NSMutableArray *)v37 countByEnumeratingWithState:&v128 objects:v140 count:16];
        if (v39)
        {
          goto LABEL_39;
        }

        break;
      }
    }
  }

  v54 = selfCopy;
  if ([(CWFAutoJoinManager *)selfCopy __shouldIgnoreRequestWithTrigger:v17])
  {
    goto LABEL_70;
  }

  if (v93 && !selfCopy->_didConfigurationChangeSincePreviousAttempt)
  {
LABEL_72:
    v60 = CWFGetOSLog();
    if (v60)
    {
      v61 = CWFGetOSLog();
    }

    else
    {
      v61 = MEMORY[0x1E69E9C10];
      v67 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v132) = 0;
      LODWORD(v92) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v61, 0, "[corewifi] AUTO-JOIN: Matching auto-join request is already active/pending, ignoring redundant invocation", &v132, v92);
    }

    v68 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v69 = CWFGetOSLog();
    if (v69)
    {
      v70 = CWFGetOSLog();
    }

    else
    {
      v70 = MEMORY[0x1E69E9C10];
      v71 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
    {
      v132 = 134219010;
      *v133 = v68 / 0x3B9ACA00;
      *&v133[8] = 2048;
      *v134 = v68 % 0x3B9ACA00 / 0x3E8;
      *&v134[8] = 2082;
      v135 = "[CWFAutoJoinManager __addRequest:]";
      v136 = 2082;
      v137 = "CWFAutoJoinManager.m";
      v138 = 1024;
      v139 = 1914;
      LODWORD(v92) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v70, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v132, v92);
    }

    v72 = v54->_targetQueue;
    v73 = qos_class_self();
    v124[0] = MEMORY[0x1E69E9820];
    v124[1] = 3221225472;
    v124[2] = sub_1E0C72B98;
    v124[3] = &unk_1E86E6010;
    v125 = requestCopy;
    v74 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v73, 0, v124);
    dispatch_async(v72, v74);

    v66 = v125;
    goto LABEL_87;
  }

  if ([(CWFAutoJoinManager *)selfCopy __shouldInvokeImmediatelyForTrigger:v17])
  {
    v55 = CWFGetOSLog();
    if (v55)
    {
      v56 = CWFGetOSLog();
    }

    else
    {
      v56 = MEMORY[0x1E69E9C10];
      v76 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v132) = 0;
      LODWORD(v92) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v56, 0, "[corewifi] AUTO-JOIN: New auto-join request should be invoked immediately, adding to top of queue", &v132, v92);
    }

    if (selfCopy->_activeRequest && !selfCopy->_requeued)
    {
      v77 = CWFGetOSLog();
      if (v77)
      {
        v78 = CWFGetOSLog();
      }

      else
      {
        v78 = MEMORY[0x1E69E9C10];
        v79 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v132) = 0;
        LODWORD(v92) = 2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v78, 0, "[corewifi] AUTO-JOIN: Active auto-join request will be requeued to allow new auto-join request to be invoked immediately", &v132, v92);
      }

      pendingRequests = selfCopy->_pendingRequests;
      v81 = [(CWFAutoJoinRequest *)selfCopy->_activeRequest copy];
      [(NSMutableArray *)pendingRequests insertObject:v81 atIndex:0];

      selfCopy->_requeued = 1;
    }

    date = [MEMORY[0x1E695DF00] date];
    [requestCopy setAddedAt:date];

    [(NSMutableArray *)selfCopy->_pendingRequests insertObject:requestCopy atIndex:0];
  }

  else
  {
    date2 = [MEMORY[0x1E695DF00] date];
    [requestCopy setAddedAt:date2];

    [(NSMutableArray *)selfCopy->_pendingRequests addObject:requestCopy];
  }

  if (selfCopy->_activeRequest)
  {
    v83 = [(CWFAutoJoinManager *)selfCopy __qosForAutoJoinTrigger:v17];
    if (v83 > selfCopy->_highestPendingQoS)
    {
      v84 = v83;
      v85 = CWFGetOSLog();
      if (v85)
      {
        v86 = CWFGetOSLog();
      }

      else
      {
        v86 = MEMORY[0x1E69E9C10];
        v87 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT))
      {
        highestPendingQoS = selfCopy->_highestPendingQoS;
        v89 = sub_1E0BCC05C(v95);
        v132 = 67109634;
        *v133 = v84;
        *&v133[4] = 1024;
        *&v133[6] = highestPendingQoS;
        *v134 = 2114;
        *&v134[2] = v89;
        LODWORD(v92) = 24;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v86, 0, "[corewifi] AUTO-JOIN: Queueing block for new auto-join trigger with higher QoS (qos=%d, prev=%d, trigger=%{public}@)", &v132, v92);
      }

      selfCopy->_highestPendingQoS = v84;
      internalQueue = selfCopy->_internalQueue;
      v122[0] = MEMORY[0x1E69E9820];
      v122[1] = 3221225472;
      v122[2] = sub_1E0C72DA0;
      v122[3] = &unk_1E86E6778;
      v122[4] = selfCopy;
      v123 = v84;
      v91 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v84, 0, v122);
      dispatch_async(internalQueue, v91);
    }
  }

LABEL_88:
  if (![(CWFAutoJoinManager *)v54 __nextRequest]&& !v54->_isRetryScheduled)
  {
    [(CWFAutoJoinManager *)v54 __updateRetrySchedule];
  }
}

- (void)__updateAutoJoinState:(int64_t)state
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_state != state)
  {
    self->_state = state;
    v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v13 = 134219010;
      v14 = v5 / 0x3B9ACA00;
      v15 = 2048;
      v16 = v5 % 0x3B9ACA00 / 0x3E8;
      v17 = 2082;
      v18 = "[CWFAutoJoinManager __updateAutoJoinState:]";
      v19 = 2082;
      v20 = "CWFAutoJoinManager.m";
      v21 = 1024;
      v22 = 2071;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v13, 48);
    }

    targetQueue = self->_targetQueue;
    v10 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C73060;
    block[3] = &unk_1E86E76C0;
    block[4] = self;
    block[5] = state;
    v11 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, block);
    dispatch_async(targetQueue, v11);
  }
}

- (BOOL)__isEnabledKnownNetworkNearby
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = self->_cumulativeScanResults;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v9 = objc_autoreleasePoolPush();
        knownNetworks = [(CWFAutoJoinManager *)self knownNetworks];
        allObjects = [knownNetworks allObjects];
        v12 = sub_1E0BED85C(v8, allObjects);

        if (v12 && ([v12 isAutoJoinDisabled] & 1) == 0 && (objc_msgSend(v12, "isPersonalHotspot") & 1) == 0)
        {

          objc_autoreleasePoolPop(v9);
          v14 = CWFGetOSLog();
          if (v14)
          {
            v3 = CWFGetOSLog();
          }

          else
          {
            v3 = MEMORY[0x1E69E9C10];
            v15 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(&v3->super.super, OS_LOG_TYPE_DEFAULT))
          {
            v17[0] = 0;
            v13 = 1;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v3, 0, "[corewifi] AUTO-JOIN: Known network is found nearby but not joined", v17, 2);
          }

          else
          {
            v13 = 1;
          }

          goto LABEL_18;
        }

        objc_autoreleasePoolPop(v9);
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_18:

  return v13;
}

- (id)__descriptionForError:(id)error
{
  errorCopy = error;
  userInfo = [errorCopy userInfo];
  v5 = *MEMORY[0x1E696A578];
  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  userInfo2 = [errorCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E696AA08]];

  userInfo3 = [v8 userInfo];
  v10 = [userInfo3 objectForKeyedSubscript:v5];

  v11 = v8;
  v12 = v10;
  if (v8 || (v11 = errorCopy, v12 = v6, errorCopy))
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%ld '%@'", objc_msgSend(v11, "code"), v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)__performAutoJoin
{
  v526[1] = *MEMORY[0x1E69E9840];
  v497 = 0;
  v498 = &v497;
  v499 = 0x2020000000;
  v500 = 1;
  v493 = 0;
  v494 = &v493;
  v495 = 0x2020000000;
  v496 = 1;
  beginTimestamp = self->_beginTimestamp;
  self->_beginTimestamp = 0;
  v487 = 0;
  v488 = &v487;
  v489 = 0x3032000000;
  v490 = sub_1E0BC2D60;
  v491 = sub_1E0BC61EC;
  v492 = 0;
  v481 = 0;
  v482 = &v481;
  v483 = 0x3032000000;
  v484 = sub_1E0BC2D60;
  v485 = sub_1E0BC61EC;
  v486 = 0;
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  parameters = [(CWFAutoJoinRequest *)selfCopy->_activeRequest parameters];
  v429 = [parameters copy];

  uUID = [(CWFAutoJoinRequest *)obj->_activeRequest UUID];
  v397 = [uUID copy];

  retrySchedule = obj->_retrySchedule;
  retryScheduleIndex = obj->_retryScheduleIndex;
  allowAutoHotspotFallback = [(CWFAutoJoinRequest *)obj->_activeRequest allowAutoHotspotFallback];
  v8 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC520];
  unsignedLongValue = [v8 unsignedLongValue];

  triggerTimestampMap = obj->_triggerTimestampMap;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v429, "trigger")}];
  v11 = [(NSMutableDictionary *)triggerTimestampMap objectForKeyedSubscript:v10];
  unsignedLongValue2 = [v11 unsignedLongValue];

  linkChangeTimestamp = obj->_linkChangeTimestamp;
  v388 = [(CWFScanResult *)obj->_steerFromNetwork copy];
  didConfigurationChangeSincePreviousAttempt = obj->_didConfigurationChangeSincePreviousAttempt;
  obj->_didConfigurationChangeSincePreviousAttempt = 0;
  LODWORD(v11) = obj->_resetCachedKnownNetworksContext;
  obj->_resetCachedKnownNetworksContext = 0;
  v13 = [(NSMutableSet *)obj->_lowRSSICandidates objectsPassingTest:&unk_1F5B8AC60];
  v14 = [v13 mutableCopy];
  lowRSSICandidates = obj->_lowRSSICandidates;
  obj->_lowRSSICandidates = v14;

  [(NSMutableSet *)obj->_prevLowRSSICandidates removeAllObjects];
  [(NSMutableOrderedSet *)obj->_deferredKnownNetworks removeAllObjects];
  [(NSMutableSet *)obj->_recentlyMatchedCandidates removeAllObjects];
  objc_sync_exit(obj);

  if (v11)
  {
    [(NSMutableDictionary *)obj->_cachedKnownNetworksContexts removeAllObjects];
  }

  v480 = 0;
  v16 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](obj, "__allowAutoJoinWithTrigger:error:", [v429 trigger], &v480);
  v425 = v480;
  if (!v16)
  {
    supportedChannels = 0;
    v394 = 0;
    v419 = 0;
    v420 = 0;
    v403 = 0;
    v404 = 0;
    v417 = 0;
    v418 = 0;
    v413 = 0;
    v414 = 0;
    v160 = 0;
    v408 = 0;
    v389 = 0;
    v390 = 0;
    v398 = 0;
    nearbyRecommendedNetworks = 0;
    v412 = 0;
    v432 = 0;
    v422 = 0;
    v396 = 0;
    goto LABEL_473;
  }

  v17 = objc_alloc_init(CWFAutoJoinMetric);
  metric = obj->_metric;
  obj->_metric = v17;

  [(CWFAutoJoinMetric *)obj->_metric setUUID:v397];
  obj->_state = 0;
  if (!associatedNetwork && [(NSMutableSet *)obj->_failedToJoinKnownNetworkIDs count])
  {
    v19 = CWFGetOSLog();
    if (v19)
    {
      v20 = CWFGetOSLog();
    }

    else
    {
      v20 = MEMORY[0x1E69E9C10];
      v21 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v501) = 0;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v20, 0, "[corewifi] AUTO-JOIN: Reset failed join list", &v501, 2);
    }

    [(NSMutableSet *)obj->_failedToJoinKnownNetworkIDs removeAllObjects];
  }

  [(NSMutableDictionary *)obj->_deferredColocatedJoinCandidateMap removeAllObjects];
  [(NSMutableSet *)obj->_hiddenNetworkChannels removeAllObjects];
  *&obj->_didDiscoverBSS = 0;
  [(NSMutableDictionary *)obj->_followup6GHzRNRMap removeAllObjects];
  [(NSMutableDictionary *)obj->_followup6GHzFILSDMap removeAllObjects];
  [(NSMutableDictionary *)obj->_followup6GHzScanResultsMap removeAllObjects];
  [(NSMutableSet *)obj->_cumulativeScanResults removeAllObjects];
  [(NSMutableSet *)obj->_updatedAllowCacheKnownNetworks removeAllObjects];
  [(NSMutableSet *)obj->_matchedCandidates removeAllObjects];
  [(NSMutableSet *)obj->_disallowedMatchedCandidates removeAllObjects];
  waitForConcurrentPHBrowse = obj->_waitForConcurrentPHBrowse;
  obj->_waitForConcurrentPHBrowse = 0;

  waitForConcurrentBrokenBackhaulDetect = obj->_waitForConcurrentBrokenBackhaulDetect;
  obj->_waitForConcurrentBrokenBackhaulDetect = 0;

  v426 = obj;
  objc_sync_enter(v426);
  v24 = CWFGetOSLog();
  if (v24)
  {
    v25 = CWFGetOSLog();
  }

  else
  {
    v25 = MEMORY[0x1E69E9C10];
    v26 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    activeRequest = obj->_activeRequest;
    v501 = 138543362;
    *v502 = activeRequest;
    LODWORD(v381) = 12;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v25, 0, "[corewifi] AUTO-JOIN: Auto-join STARTED (%{public}@)", &v501, v381);
  }

  objc_sync_exit(v426);
  [(CWFAutoJoinMetric *)obj->_metric setAutoJoinParameters:v429];
  [(CWFAutoJoinMetric *)obj->_metric setRetrySchedule:retrySchedule];
  [(CWFAutoJoinMetric *)obj->_metric setRetryScheduleIndex:retryScheduleIndex];
  [(CWFAutoJoinMetric *)obj->_metric setWasAlreadyAssociatedToNetwork:associatedNetwork];
  self->_beginTimestamp = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  v394 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  v28 = CWFGetBootTime();
  v29 = [v28 dateByAddingTimeInterval:v394 / 1000000000.0];
  [(CWFAutoJoinMetric *)obj->_metric setStartedAt:v29];

  v430 = objc_alloc_init(CWFAutoJoinContext);
  [(CWFAutoJoinContext *)v430 setAutoJoinParameters:v429];
  -[CWFAutoJoinContext setCacheOnly:](v430, "setCacheOnly:", [v429 mode] == 3);
  if ([v429 mode] == 3)
  {
    v30 = -1;
  }

  else
  {
    v30 = 9;
  }

  [(CWFAutoJoinContext *)v430 setMaxScanSSIDCount:v30];
  if (associatedNetwork)
  {
    v31 = -70;
  }

  else
  {
    v31 = -80;
  }

  [(CWFAutoJoinContext *)v430 setMinRSSI:v31];
  [(CWFAutoJoinContext *)v430 setMaxBSSChannelAge:2592000];
  [(CWFAutoJoinContext *)v430 setMinBSSLocationAccuracy:100.0];
  [(CWFAutoJoinContext *)v430 setMaxBSSLocationDistance:300.0];
  [(CWFAutoJoinContext *)v430 setMaxBSSChannelCount:3];
  [(CWFAutoJoinContext *)v430 setDwellTime:0];
  autoJoinParameters = [(CWFAutoJoinContext *)v430 autoJoinParameters];
  if ([autoJoinParameters trigger] == 54)
  {

LABEL_26:
    [(CWFAutoJoinContext *)v430 setMaxScanChannelCount:1];
    [(CWFAutoJoinContext *)v430 setMaxScanCacheAge:0];
    [(CWFAutoJoinContext *)v430 setDwellTime:40];
    goto LABEL_33;
  }

  autoJoinParameters2 = [(CWFAutoJoinContext *)v430 autoJoinParameters];
  v34 = [autoJoinParameters2 trigger] == 55;

  if (v34)
  {
    goto LABEL_26;
  }

  autoJoinParameters3 = [(CWFAutoJoinContext *)v430 autoJoinParameters];
  v36 = [autoJoinParameters3 trigger] == 45;

  if (v36)
  {
    v37 = 1;
  }

  else
  {
    autoJoinParameters4 = [(CWFAutoJoinContext *)v430 autoJoinParameters];
    v39 = [autoJoinParameters4 trigger] == 58;

    if (!v39)
    {
      if ([v429 mode] == 1)
      {
        v161 = 3;
      }

      else
      {
        v161 = -1;
      }

      [(CWFAutoJoinContext *)v430 setMaxScanChannelCount:v161];
      trigger = [v429 trigger];
      v40 = 0;
      if (trigger - 44 >= 8 && (trigger > 0x3F || ((1 << trigger) & 0xC000000000000010) == 0))
      {
        v163 = 20000;
        if (didConfigurationChangeSincePreviousAttempt)
        {
          v163 = 0;
        }

        if (associatedNetwork)
        {
          v40 = 0;
        }

        else
        {
          v40 = v163;
        }
      }

      goto LABEL_32;
    }

    v37 = 3;
  }

  [(CWFAutoJoinContext *)v430 setMaxScanChannelCount:v37];
  v40 = 0;
LABEL_32:
  [(CWFAutoJoinContext *)v430 setMaxScanCacheAge:v40];
LABEL_33:
  [(CWFAutoJoinContext *)v430 setMaxANQPCacheAge:3600000];
  [(CWFAutoJoinContext *)v430 setMaxScanCycles:1];
  v41 = didConfigurationChangeSincePreviousAttempt || [v429 mode] == 1;
  [(CWFAutoJoinContext *)v430 setAlwaysIncludeRemainingNon2GHzChannels:v41];
  if ([v429 trigger] == 2 || objc_msgSend(v429, "trigger") == 7 || objc_msgSend(v429, "trigger") == 59 || objc_msgSend(v429, "trigger") == 60)
  {
    [(CWFAutoJoinContext *)v430 setMaxScanChannelCount:2];
  }

  if ([v429 trigger] == 32)
  {
    [(CWFAutoJoinContext *)v430 setBSSChannelsOnly:1];
    [(CWFAutoJoinContext *)v430 setMaxBSSChannelCount:1];
    [(CWFAutoJoinContext *)v430 setMaxScanCacheAge:0];
    [(CWFAutoJoinContext *)v430 setPassiveScan:0];
    [(CWFAutoJoinContext *)v430 setDwellTime:40];
    [(CWFAutoJoinContext *)v430 setMaxBSSChannelAge:0];
    [(CWFAutoJoinContext *)v430 setAlwaysIncludeRemainingNon2GHzChannels:0];
    preferredChannels = [v429 preferredChannels];
    v43 = [preferredChannels copy];
    cachedCarPlayPreferredChannels = v426->_cachedCarPlayPreferredChannels;
    v426->_cachedCarPlayPreferredChannels = v43;

    v45 = CWFGetOSLog();
    if (v45)
    {
      v46 = CWFGetOSLog();
    }

    else
    {
      v46 = MEMORY[0x1E69E9C10];
      v47 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [(NSArray *)v426->_cachedCarPlayPreferredChannels objectAtIndexedSubscript:0];
      v501 = 138543362;
      *v502 = v48;
      LODWORD(v381) = 12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v46, 0, "[corewifi] AUTO-JOIN: Caching CarPlay preferred channel (%{public}@)", &v501, v381);
    }
  }

  trigger2 = [v429 trigger];
  if (trigger2 - 44 < 8 || (v422 = 0, trigger2 <= 0x3F) && ((1 << trigger2) & 0xC000000000000010) != 0)
  {
    __retryInterval = [(CWFAutoJoinManager *)v426 __retryInterval];
    v422 = __retryInterval;
    if (__retryInterval)
    {
      -[CWFAutoJoinContext setBSSChannelsOnly:](v430, "setBSSChannelsOnly:", [__retryInterval BSSChannelsOnly]);
      -[CWFAutoJoinContext setMaxBSSChannelCount:](v430, "setMaxBSSChannelCount:", [v422 maxBSSChannelCount]);
      -[CWFAutoJoinContext setMaxBSSChannelAge:](v430, "setMaxBSSChannelAge:", [v422 maxBSSChannelAge]);
      -[CWFAutoJoinContext setPassiveScan:](v430, "setPassiveScan:", [v422 passiveScan]);
      -[CWFAutoJoinContext setDwellTime:](v430, "setDwellTime:", [v422 dwellTime]);
      -[CWFAutoJoinContext setIncludeAdjacent5GHzChannel:](v430, "setIncludeAdjacent5GHzChannel:", [v422 includeAdjacent5GHzChannel]);
      -[CWFAutoJoinContext setAlwaysIncludeRemainingNon2GHzChannels:](v430, "setAlwaysIncludeRemainingNon2GHzChannels:", [v422 alwaysIncludeRemainingNon2GHzChannels]);
      -[CWFAutoJoinContext setInclude6GHzChannels:](v430, "setInclude6GHzChannels:", [v422 alwaysInclude6GHzPSCChannels]);
    }

    else
    {
      v422 = 0;
    }
  }

  if ([v429 trigger] == 47)
  {
    v51 = v426->_cachedCarPlayPreferredChannels;
    autoJoinParameters5 = [(CWFAutoJoinContext *)v430 autoJoinParameters];
    [autoJoinParameters5 setPreferredChannels:v51];
  }

  if ([v429 mode] == 4 && objc_msgSend(v429, "trigger") != 54 && objc_msgSend(v429, "trigger") != 55)
  {
    [(CWFAutoJoinContext *)v430 setBSSChannelsOnly:1];
    [(CWFAutoJoinContext *)v430 setMaxBSSChannelCount:2];
    [(CWFAutoJoinContext *)v430 setMaxBSSChannelAge:86400];
  }

  if ([v429 trigger] == 66)
  {
    [(CWFAutoJoinContext *)v430 setAlwaysIncludeRemainingNon2GHzChannels:0];
    [(CWFAutoJoinContext *)v430 setSkipRemainingNon2GHzChannelsUnlessKnownNetworkFound:1];
  }

  [(CWFAutoJoinContext *)v430 setPreferUserConfiguredNetworks:[(CWFAutoJoinManager *)v426 __defaultUserConfiguredNetworkPreference]];
  supportedChannels = [(CWFAutoJoinManager *)v426 supportedChannels];
  if (![supportedChannels count])
  {
    v362 = MEMORY[0x1E696ABC0];
    v525 = *MEMORY[0x1E696A578];
    v526[0] = @"No configured channels";
    array5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v526 forKeys:&v525 count:1];
    v158 = [v362 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:array5];

    v423 = 0;
    v403 = 0;
    v404 = 0;
    v417 = 0;
    v418 = 0;
    v413 = 0;
    v414 = 0;
    v160 = 0;
    v408 = 0;
    v389 = 0;
    v398 = 0;
    nearbyRecommendedNetworks = 0;
    v412 = 0;
    v432 = 0;
    knownNetworks = 0;
    v396 = 0;
    v427 = 0;
    goto LABEL_364;
  }

  [(CWFAutoJoinManager *)v426 __updateAutoJoinState:1];
  knownNetworks = [(CWFAutoJoinManager *)v426 knownNetworks];
  nearbyRecommendedNetworks = [(CWFAutoJoinManager *)v426 nearbyRecommendedNetworks];
  if (![knownNetworks count] && !objc_msgSend(nearbyRecommendedNetworks, "count"))
  {
    v365 = CWFGetOSLog();
    if (v365)
    {
      v364 = CWFGetOSLog();
    }

    else
    {
      v364 = MEMORY[0x1E69E9C10];
      v370 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v501) = 0;
      LODWORD(v381) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v364, 0, "[corewifi] AUTO-JOIN: No configured known networks or nearby recommended networks", &v501, v381);
    }

    goto LABEL_497;
  }

  if (([v429 trigger] == 61 || objc_msgSend(v429, "trigger") == 66) && retryScheduleIndex)
  {
    v363 = CWFGetOSLog();
    if (v363)
    {
      v364 = CWFGetOSLog();
    }

    else
    {
      v364 = MEMORY[0x1E69E9C10];
      v368 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v501) = 0;
      LODWORD(v381) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v364, 0, "[corewifi] AUTO-JOIN: Skipping auto-join to attempt auto-hotspot immediately", &v501, v381);
    }

LABEL_497:
    v423 = 0;
    v403 = 0;
    v404 = 0;
    v389 = 0;
    v412 = 0;
    v432 = 0;
    v396 = 0;
    goto LABEL_498;
  }

  if (allowAutoHotspotFallback && (-[CWFAutoJoinManager __calloutToAllowAutoHotspotWithTrigger:error:](v426, "__calloutToAllowAutoHotspotWithTrigger:error:", [v429 trigger], 0) & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    v53 = CWFGetOSLog();
    if (v53)
    {
      v54 = CWFGetOSLog();
    }

    else
    {
      v54 = MEMORY[0x1E69E9C10];
      v55 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v501 = 67109376;
      *v502 = 10;
      *&v502[4] = 1024;
      *&v502[6] = 10;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v54, 0, "[corewifi] AUTO-JOIN: Will begin concurrent hotspot browse (timeout=%d, maxCacheAge=%d)", &v501, 14);
    }

    v56 = dispatch_semaphore_create(0);
    v57 = obj->_waitForConcurrentPHBrowse;
    obj->_waitForConcurrentPHBrowse = v56;

    objc_storeStrong(v488 + 5, obj->_waitForConcurrentPHBrowse);
    v58 = [v429 mode] == 3;
    v479[0] = MEMORY[0x1E69E9820];
    v479[1] = 3221225472;
    v479[2] = sub_1E0C77FFC;
    v479[3] = &unk_1E86E7708;
    v479[4] = &v487;
    [(CWFAutoJoinManager *)v426 __calloutToBrowseForHotspotsWithTimeout:10 maxCacheAge:10 cacheOnly:v58 reply:v479];
    if ([v429 trigger] == 67)
    {
      if (associatedNetwork)
      {
        v59 = CWFGetOSLog();
        if (v59)
        {
          v60 = CWFGetOSLog();
        }

        else
        {
          v60 = MEMORY[0x1E69E9C10];
          v164 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v501) = 0;
          LODWORD(v381) = 2;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v60, 0, "[corewifi] AUTO-JOIN: Will begin concurrent broken backhaul confirmation", &v501, v381);
        }

        v165 = dispatch_semaphore_create(0);
        v166 = obj->_waitForConcurrentBrokenBackhaulDetect;
        obj->_waitForConcurrentBrokenBackhaulDetect = v165;

        objc_storeStrong(v482 + 5, obj->_waitForConcurrentBrokenBackhaulDetect);
        v478[0] = MEMORY[0x1E69E9820];
        v478[1] = 3221225472;
        v478[2] = sub_1E0C780C4;
        v478[3] = &unk_1E86E7730;
        v478[4] = v426;
        v478[5] = &v481;
        [(CWFAutoJoinManager *)v426 __calloutToCheckForBrokenBackhaulAndReply:v478];
        v167 = CWFGetOSLog();
        if (v167)
        {
          v168 = CWFGetOSLog();
        }

        else
        {
          v168 = MEMORY[0x1E69E9C10];
          v169 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v501) = 0;
          LODWORD(v381) = 2;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v168, 0, "[corewifi] AUTO-JOIN: Skipping auto-join to attempt auto-hotspot immediately", &v501, v381);
        }

        v396 = 0;
        v432 = 0;
        v412 = 0;
        v413 = 0;
        v398 = 0;
        v403 = 0;
        v404 = 0;
        v389 = 0;
        v408 = 0;
        v417 = 0;
        v418 = 0;
        v160 = 0;
        v414 = 0;
        v423 = 0;
        v170 = v425;
LABEL_354:
        mode = [v429 mode];
        v272 = v488[5];
        if (mode == 3)
        {
          if (v272)
          {
            v273 = -1;
          }

          else
          {
            v273 = 10;
          }
        }

        else
        {
          if (!v272)
          {
            v274 = 0;
            v273 = 10;
            goto LABEL_362;
          }

          v273 = -1;
        }

        v274 = 1;
LABEL_362:
        v442 = 0;
        v427 = [(CWFAutoJoinManager *)v426 __performAutoHotspotWithBrowseTimeout:10 maxCacheAge:v273 cacheOnly:v274 error:&v442];
        array5 = v442;
LABEL_363:
        v158 = v170;
        goto LABEL_364;
      }
    }
  }

  if (_os_feature_enabled_impl())
  {
    if (![(CWFAutoJoinContext *)v430 include6GHzChannels])
    {
      allObjects = [knownNetworks allObjects];
      [(CWFAutoJoinContext *)v430 setInclude6GHzChannels:[(CWFAutoJoinManager *)v426 __didRecentlyJoinAny6GHzOnlyNetworks:allObjects]];
    }

    v62 = CWFGetOSLog();
    if (v62)
    {
      v63 = CWFGetOSLog();
    }

    else
    {
      v63 = MEMORY[0x1E69E9C10];
      v64 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      include6GHzChannels = [(CWFAutoJoinContext *)v430 include6GHzChannels];
      v66 = "NOT ";
      if (include6GHzChannels)
      {
        v66 = "";
      }

      v501 = 136446210;
      *v502 = v66;
      LODWORD(v381) = 12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v63, 0, "[corewifi] AUTO-JOIN: Will %{public}sinclude supported 6GHz channels", &v501, v381);
    }
  }

  targetNetworkProfile = [v429 targetNetworkProfile];
  if (targetNetworkProfile)
  {
    allObjects2 = [knownNetworks allObjects];
    v396 = [(CWFAutoJoinManager *)v426 __knownNetworksList:allObjects2 containsMatchingKnownNetwork:targetNetworkProfile];

    if (v396)
    {
      v69 = CWFGetOSLog();
      if (v69)
      {
        v70 = CWFGetOSLog();
      }

      else
      {
        v70 = MEMORY[0x1E69E9C10];
        v73 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        v501 = 138543362;
        *v502 = v396;
        LODWORD(v381) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v70, 0, "[corewifi] AUTO-JOIN: Auto-join TARGET NETWORK (%{public}@)", &v501, v381);
      }

      targetQueue = v426->_targetQueue;
      v477 = 0;
      v75 = [(CWFAutoJoinManager *)v426 __allowKnownNetwork:v396 context:v430 allowForSeamlessSSIDTransition:0 defer:0 targetQueue:targetQueue error:&v477];
      array5 = v477;
      if (v75)
      {
        v76 = [(CWFAutoJoinContext *)v430 copy];
        v77 = [MEMORY[0x1E695DFB8] orderedSetWithObject:v396];
        [v76 setKnownNetworks:v77];

        [v76 setAllowDeferredCandidates:1];
        v78 = [(NSMutableDictionary *)v426->_cachedKnownNetworksContexts objectForKeyedSubscript:v76];
        v423 = v78;
        if (v78)
        {
          v79 = v78;

          v403 = 0;
          v76 = v79;
        }

        else
        {
          v403 = [v76 copy];
          [(CWFAutoJoinManager *)v426 __prepareKnownNetworksContext:v76];
          [(NSMutableDictionary *)v426->_cachedKnownNetworksContexts setObject:v76 forKeyedSubscript:v403];
        }

        v476 = v425;
        v157 = [(CWFAutoJoinManager *)v426 __discoverKnownNetworksWithContext:v76 error:&v476];
        v158 = v476;

        if (v157)
        {

          v417 = 0;
          v418 = 0;
          v413 = 0;
          v414 = 0;
          v160 = 0;
          v408 = 0;
          v389 = 0;
          v404 = 0;
          v398 = 0;
          v412 = 0;
          v432 = 0;
          v427 = 1;
          goto LABEL_364;
        }

        v475 = v158;
        v159 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](v426, "__allowAutoJoinWithTrigger:error:", [v429 trigger], &v475);
        v425 = v475;

        if ((v159 & 1) == 0)
        {
          v417 = 0;
          v418 = 0;
          v413 = 0;
          v414 = 0;
          v160 = 0;
          v408 = 0;
          v389 = 0;
          v404 = 0;
          v398 = 0;
          v412 = 0;
          v432 = 0;
          v427 = 0;
LABEL_188:
          v158 = v425;
LABEL_364:

          v419 = v430;
          v420 = v423;
          v390 = knownNetworks;
          v425 = v158;
          goto LABEL_365;
        }

        goto LABEL_107;
      }
    }

    else
    {
      v71 = CWFGetOSLog();
      if (v71)
      {
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v80 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
      {
        v501 = 138543362;
        *v502 = 0;
        LODWORD(v381) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, array5, 0, "[corewifi] AUTO-JOIN: Target network does not exist in the known networks list (%{public}@)", &v501, v381);
      }
    }

    v423 = 0;
    v403 = 0;
LABEL_107:

    goto LABEL_108;
  }

  v423 = 0;
  v403 = 0;
  v396 = 0;
LABEL_108:
  if (didConfigurationChangeSincePreviousAttempt || self->_beginTimestamp - beginTimestamp >= 0x8BEE643A00)
  {
    v81 = CWFGetOSLog();
    if (v81)
    {
      v82 = CWFGetOSLog();
    }

    else
    {
      v82 = MEMORY[0x1E69E9C10];
      v83 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      v84 = [knownNetworks count];
      v501 = 134217984;
      *v502 = v84;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v82, 0, "[corewifi] AUTO-JOIN: Known Networks (%lu)", &v501);
    }

    v473 = 0u;
    v474 = 0u;
    v471 = 0u;
    v472 = 0u;
    v85 = knownNetworks;
    v86 = [v85 countByEnumeratingWithState:&v471 objects:v524 count:16];
    if (v86)
    {
      v87 = *v472;
      v88 = MEMORY[0x1E69E9C10];
      do
      {
        for (i = 0; i != v86; ++i)
        {
          if (*v472 != v87)
          {
            objc_enumerationMutation(v85);
          }

          v90 = *(*(&v471 + 1) + 8 * i);
          v91 = CWFGetOSLog();
          if (v91)
          {
            v92 = CWFGetOSLog();
          }

          else
          {
            v93 = v88;
            v92 = v88;
          }

          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            v501 = 138543362;
            *v502 = v90;
            LODWORD(v381) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v92, 0, "[corewifi] AUTO-JOIN: -- %{public}@", &v501, v381);
          }
        }

        v86 = [v85 countByEnumeratingWithState:&v471 objects:v524 count:16];
      }

      while (v86);
    }

    v94 = CWFGetOSLog();
    if (v94)
    {
      v95 = CWFGetOSLog();
    }

    else
    {
      v95 = MEMORY[0x1E69E9C10];
      v96 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
    {
      v97 = [nearbyRecommendedNetworks count];
      v501 = 134217984;
      *v502 = v97;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v95, 0, "[corewifi] AUTO-JOIN: Nearby Recommended Networks (%lu)", &v501);
    }

    v469 = 0u;
    v470 = 0u;
    v467 = 0u;
    v468 = 0u;
    v98 = nearbyRecommendedNetworks;
    v99 = [v98 countByEnumeratingWithState:&v467 objects:v523 count:16];
    if (v99)
    {
      v100 = *v468;
      v101 = MEMORY[0x1E69E9C10];
      do
      {
        for (j = 0; j != v99; ++j)
        {
          if (*v468 != v100)
          {
            objc_enumerationMutation(v98);
          }

          v103 = *(*(&v467 + 1) + 8 * j);
          v104 = CWFGetOSLog();
          if (v104)
          {
            v105 = CWFGetOSLog();
          }

          else
          {
            v106 = v101;
            v105 = v101;
          }

          if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
          {
            v501 = 138543362;
            *v502 = v103;
            LODWORD(v381) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v105, 0, "[corewifi] AUTO-JOIN: -- %{public}@", &v501, v381);
          }
        }

        v99 = [v98 countByEnumeratingWithState:&v467 objects:v523 count:16];
      }

      while (v99);
    }
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
  v111 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v112 = CWFGetOSLog();
  if (v112)
  {
    v113 = CWFGetOSLog();
  }

  else
  {
    v113 = MEMORY[0x1E69E9C10];
    v114 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
  {
    v501 = 134219010;
    *v502 = v111 / 0x3B9ACA00;
    *&v502[8] = 2048;
    v503 = v111 % 0x3B9ACA00 / 0x3E8;
    v504 = 2082;
    *v505 = "[CWFAutoJoinManager __performAutoJoin]";
    *&v505[8] = 2082;
    *&v505[10] = "CWFAutoJoinManager.m";
    *&v505[18] = 1024;
    *v506 = 2501;
    LODWORD(v381) = 48;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v113, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v501, v381);
  }

  v115 = v426->_targetQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C781E4;
  block[3] = &unk_1E86E7758;
  v390 = knownNetworks;
  v458 = v390;
  v459 = v426;
  v419 = v430;
  v460 = v419;
  v432 = orderedSet;
  v461 = v432;
  v412 = orderedSet2;
  v462 = v412;
  v404 = orderedSet3;
  v463 = v404;
  v465 = &v497;
  v389 = orderedSet4;
  v464 = v389;
  v466 = &v493;
  dispatch_sync(v115, block);

  if (!associatedNetwork || ![v432 count])
  {
    goto LABEL_232;
  }

  matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];
  isCarPlay = [matchingKnownNetworkProfile isCarPlay];

  if (isCarPlay)
  {
    v366 = CWFGetOSLog();
    if (v366)
    {
      array5 = CWFGetOSLog();
    }

    else
    {
      array5 = MEMORY[0x1E69E9C10];
      v371 = MEMORY[0x1E69E9C10];
    }

    if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_515;
    }

    v501 = 138543362;
    *v502 = associatedNetwork;
    LODWORD(v381) = 12;
    v372 = "[corewifi] AUTO-JOIN: Already associated to CarPlay network, transition is not allowed (%{public}@)";
    goto LABEL_502;
  }

  if ([v429 trigger] != 45)
  {
    if ([v429 trigger] == 58)
    {
      array5 = [MEMORY[0x1E695DFA8] set];
      associatedNetwork2 = [(CWFAutoJoinManager *)v426 associatedNetwork];
      channel = [associatedNetwork2 channel];
      if (([channel is6GHz] & 1) == 0)
      {
        channel2 = [v388 channel];
        is6GHz = [channel2 is6GHz];

        if (!is6GHz)
        {
          goto LABEL_170;
        }

        array = [v432 array];
        matchingKnownNetworkProfile2 = [v388 matchingKnownNetworkProfile];
        associatedNetwork2 = [(CWFAutoJoinManager *)v426 __knownNetworksList:array containsMatchingKnownNetwork:matchingKnownNetworkProfile2];

        if (!associatedNetwork2)
        {
LABEL_169:

LABEL_170:
          matchingKnownNetworkProfile3 = [associatedNetwork matchingKnownNetworkProfile];
          array2 = [v432 array];
          v138 = [(CWFAutoJoinManager *)v426 __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile3 knownNetworks:array2 context:v419];
          v139 = [v138 set];
          [array5 unionSet:v139];

          if ([(CWFAutoJoinManager *)v426 __isDeferrableJoinCandidate:associatedNetwork])
          {
            matchingKnownNetworkProfile4 = [associatedNetwork matchingKnownNetworkProfile];
            wasMoreRecentlyJoinedByUser = [matchingKnownNetworkProfile4 wasMoreRecentlyJoinedByUser];

            if ((wasMoreRecentlyJoinedByUser & 1) == 0)
            {
              v142 = [v412 set];
              [array5 unionSet:v142];
            }
          }

          [v432 intersectSet:array5];
          if ([v432 count])
          {
            goto LABEL_231;
          }

          v143 = CWFGetOSLog();
          if (v143)
          {
            v144 = CWFGetOSLog();
          }

          else
          {
            v144 = MEMORY[0x1E69E9C10];
            v376 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
          {
            v501 = 138543362;
            *v502 = associatedNetwork;
            LODWORD(v381) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v144, 0, "[corewifi] AUTO-JOIN: Already associated and network transition is not allowed (%{public}@)", &v501, v381);
          }

          goto LABEL_514;
        }

        [(CWFAutoJoinContext *)v419 setInclude6GHzChannels:1];
        v521 = associatedNetwork2;
        channel = [MEMORY[0x1E695DEC8] arrayWithObjects:&v521 count:1];
        v134 = [(CWFAutoJoinManager *)v426 __knownNetworksSupportingSeamlessSSIDTransition:channel fromNetwork:associatedNetwork allowSameSSID:1 context:v419];
        v135 = [v134 set];
        [array5 unionSet:v135];
      }

      goto LABEL_169;
    }

    if ([v429 trigger] == 54 || objc_msgSend(v429, "trigger") == 55)
    {
      trigger3 = [v429 trigger];
      if (trigger3 != 54 && [v429 trigger] == 55)
      {
        array3 = [v432 array];
        associatedNetwork3 = [(CWFAutoJoinManager *)v426 associatedNetwork];
        v148 = [(CWFAutoJoinManager *)v426 __knownNetworksSupportingSeamlessSSIDTransition:array3 fromNetwork:associatedNetwork3 allowSameSSID:0 context:v419];
        v149 = [v148 count] == 0;

        if (v149)
        {
          [(CWFAutoJoinContext *)v419 setBSSChannelsOnly:1];
        }
      }

      array4 = [v432 array];
      associatedNetwork4 = [(CWFAutoJoinManager *)v426 associatedNetwork];
      v152 = [(CWFAutoJoinManager *)v426 __knownNetworksSupportingSeamlessSSIDTransition:array4 fromNetwork:associatedNetwork4 allowSameSSID:trigger3 != 54 context:v419];
      v153 = [v152 count] == 0;

      if (v153)
      {
        v374 = MEMORY[0x1E696ABC0];
        v519 = *MEMORY[0x1E696A578];
        v520 = @"Already associated and no seamless SSID transition candidates configured";
        array5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v520 forKeys:&v519 count:1];
        v158 = [v374 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:array5];

        v417 = 0;
        v418 = 0;
        v413 = 0;
        v414 = 0;
        v160 = 0;
        v408 = 0;
        v398 = 0;
        v427 = 0;
        goto LABEL_485;
      }

      array5 = [v432 array];
      associatedNetwork5 = [(CWFAutoJoinManager *)v426 associatedNetwork];
      v155 = [(CWFAutoJoinManager *)v426 __knownNetworksSupportingSeamlessSSIDTransition:array5 fromNetwork:associatedNetwork5 allowSameSSID:1 context:v419];
      v156 = [v155 set];
      [v432 intersectSet:v156];

      goto LABEL_231;
    }

    if ([v429 trigger] == 68)
    {
      if ([associatedNetwork isPersonalHotspot])
      {
        goto LABEL_232;
      }

      v180 = CWFGetOSLog();
      if (v180)
      {
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v377 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_515;
      }

      LOWORD(v501) = 0;
      LODWORD(v381) = 2;
      v372 = "[corewifi] AUTO-JOIN: Associated network is not a Personal Hotspot, ignoring 'restored backhaul' trigger";
    }

    else if ([v429 trigger] == 32 || objc_msgSend(v429, "trigger") == 47 || (objc_msgSend(associatedNetwork, "matchingKnownNetworkProfile"), v181 = objc_claimAutoreleasedReturnValue(), v182 = objc_msgSend(v181, "wasMoreRecentlyJoinedByUser"), v181, !v182))
    {
      if (-[CWFAutoJoinManager __allowOpportunisticNetworkTransitionWithTrigger:](v426, "__allowOpportunisticNetworkTransitionWithTrigger:", [v429 trigger]))
      {
        goto LABEL_232;
      }

      v183 = CWFGetOSLog();
      if (v183)
      {
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v378 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_515;
      }

      v501 = 138543362;
      *v502 = associatedNetwork;
      LODWORD(v381) = 12;
      v372 = "[corewifi] AUTO-JOIN: Already associated and opportunistic network transition is not allowed (%{public}@)";
    }

    else
    {
      v379 = CWFGetOSLog();
      if (v379)
      {
        array5 = CWFGetOSLog();
      }

      else
      {
        array5 = MEMORY[0x1E69E9C10];
        v380 = MEMORY[0x1E69E9C10];
      }

      if (!os_log_type_enabled(array5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_515;
      }

      v501 = 138543362;
      *v502 = associatedNetwork;
      LODWORD(v381) = 12;
      v372 = "[corewifi] AUTO-JOIN: Already associated and current association was user-initiated (%{public}@)";
    }

LABEL_502:
    v427 = 1;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, array5, 0, v372, &v501, v381);
    v417 = 0;
    v418 = 0;
    v413 = 0;
    v414 = 0;
    v160 = 0;
    v408 = 0;
    v398 = 0;
LABEL_516:
    knownNetworks = v390;
    goto LABEL_188;
  }

  array5 = [MEMORY[0x1E695DFA8] set];
  associatedNetwork6 = [(CWFAutoJoinManager *)v426 associatedNetwork];
  channel3 = [associatedNetwork6 channel];
  if ([channel3 is6GHz])
  {
LABEL_158:

    goto LABEL_159;
  }

  channel4 = [v388 channel];
  is6GHz2 = [channel4 is6GHz];

  if (!is6GHz2)
  {
    goto LABEL_160;
  }

  array6 = [v432 array];
  matchingKnownNetworkProfile5 = [v388 matchingKnownNetworkProfile];
  associatedNetwork6 = [(CWFAutoJoinManager *)v426 __knownNetworksList:array6 containsMatchingKnownNetwork:matchingKnownNetworkProfile5];

  if (associatedNetwork6)
  {
    [(CWFAutoJoinContext *)v419 setInclude6GHzChannels:1];
    v522 = associatedNetwork6;
    channel3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v522 count:1];
    v124 = [(CWFAutoJoinManager *)v426 __knownNetworksSupportingSeamlessSSIDTransition:channel3 fromNetwork:associatedNetwork allowSameSSID:1 context:v419];
    v125 = [v124 set];
    [array5 unionSet:v125];

    goto LABEL_158;
  }

LABEL_159:

LABEL_160:
  if ([(CWFAutoJoinManager *)v426 displayOff])
  {
    v126 = CWFGetOSLog();
    if (v126)
    {
      v127 = CWFGetOSLog();
    }

    else
    {
      v127 = MEMORY[0x1E69E9C10];
      v171 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v501) = 0;
      LODWORD(v381) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v127, 0, "[corewifi] AUTO-JOIN: Allowing more-preferred known networks while display is OFF", &v501, v381);
    }

    matchingKnownNetworkProfile6 = [associatedNetwork matchingKnownNetworkProfile];
    array7 = [v432 array];
    v174 = [(CWFAutoJoinManager *)v426 __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile6 knownNetworks:array7 context:v419];
    v175 = [v174 set];
    [array5 unionSet:v175];

    if ([(CWFAutoJoinManager *)v426 __isDeferrableJoinCandidate:associatedNetwork])
    {
      matchingKnownNetworkProfile7 = [associatedNetwork matchingKnownNetworkProfile];
      wasMoreRecentlyJoinedByUser2 = [matchingKnownNetworkProfile7 wasMoreRecentlyJoinedByUser];

      if ((wasMoreRecentlyJoinedByUser2 & 1) == 0)
      {
        v178 = CWFGetOSLog();
        if (v178)
        {
          v179 = CWFGetOSLog();
        }

        else
        {
          v179 = MEMORY[0x1E69E9C10];
          v184 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v179, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v501) = 0;
          LODWORD(v381) = 2;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v179, 0, "[corewifi] AUTO-JOIN: Current network is deferrable, allowing non-deferred known networks while display is OFF", &v501, v381);
        }

        v185 = [v412 set];
        [array5 unionSet:v185];
      }
    }
  }

  [v432 intersectSet:array5];
  if (![v432 count])
  {
    v369 = CWFGetOSLog();
    if (v369)
    {
      v144 = CWFGetOSLog();
    }

    else
    {
      v144 = MEMORY[0x1E69E9C10];
      v375 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT))
    {
      v501 = 138543362;
      *v502 = associatedNetwork;
      LODWORD(v381) = 12;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v144, 0, "[corewifi] AUTO-JOIN: Already associated and network transition is not allowed (%{public}@)", &v501, v381);
    }

LABEL_514:

LABEL_515:
    v417 = 0;
    v418 = 0;
    v413 = 0;
    v414 = 0;
    v160 = 0;
    v408 = 0;
    v398 = 0;
    v427 = 1;
    goto LABEL_516;
  }

LABEL_231:

LABEL_232:
  if ([v432 count] || objc_msgSend(nearbyRecommendedNetworks, "count"))
  {
    v186 = [v432 set];
    [v412 intersectSet:v186];

    v187 = v426;
    objc_sync_enter(v187);
    deferredKnownNetworks = obj->_deferredKnownNetworks;
    v189 = [v432 set];
    [(NSMutableOrderedSet *)deferredKnownNetworks intersectSet:v189];

    objc_sync_exit(v187);
    v190 = [v432 set];
    [v404 intersectSet:v190];

    if (*(v494 + 24) == 1)
    {
      v191 = CWFGetOSLog();
      if (v191)
      {
        v192 = CWFGetOSLog();
      }

      else
      {
        v192 = MEMORY[0x1E69E9C10];
        v193 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v192, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v501) = 0;
        LODWORD(v381) = 2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v192, 0, "[corewifi] AUTO-JOIN: All known networks are non-Passpoint, will not deprioritize SSID-based matching for Passpoint networks", &v501, v381);
      }

      [(CWFAutoJoinContext *)v419 setAllowSSIDBasedMatchingForPasspointNetworks:*(v494 + 24)];
    }

    if (*(v498 + 24) == 1)
    {
      v194 = CWFGetOSLog();
      if (v194)
      {
        v195 = CWFGetOSLog();
      }

      else
      {
        v195 = MEMORY[0x1E69E9C10];
        v198 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v195, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v501) = 0;
        LODWORD(v381) = 2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v195, 0, "[corewifi] AUTO-JOIN: All known networks are standalone 6GHz, will not deprioritize standalone 6GHz", &v501, v381);
      }
    }

    else if ([v432 count] == 1)
    {
      v196 = CWFGetOSLog();
      if (v196)
      {
        v197 = CWFGetOSLog();
      }

      else
      {
        v197 = MEMORY[0x1E69E9C10];
        v199 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v501) = 0;
        LODWORD(v381) = 2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v197, 0, "[corewifi] AUTO-JOIN: Only 1 known network, will not deprioritize standalone 6GHz", &v501, v381);
      }

      *(v498 + 24) = 1;
    }

    [(CWFAutoJoinContext *)v419 setAllowStandalone6GHz:*(v498 + 24)];
    [(CWFAutoJoinMetric *)obj->_metric setWas6GHzDeprioritized:(v498[3] & 1) == 0];
    if ([v412 count])
    {
      v200 = CWFGetOSLog();
      if (v200)
      {
        v201 = CWFGetOSLog();
      }

      else
      {
        v201 = MEMORY[0x1E69E9C10];
        v203 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v201, OS_LOG_TYPE_DEFAULT))
      {
        v204 = [v412 count];
        v501 = 134217984;
        *v502 = v204;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v201, 0, "[corewifi] AUTO-JOIN: Auto-join NON-DEFERRED NETWORKS (%lu)", &v501);
      }

      v408 = [(CWFAutoJoinContext *)v419 copy];
      [v408 setKnownNetworks:v412];
      v420 = [v187[44] objectForKeyedSubscript:v408];

      if (v420)
      {
        v205 = v420;

        v408 = v205;
      }

      else
      {
        v206 = [v408 copy];

        [v187 __prepareKnownNetworksContext:v408];
        [v187[44] setObject:v408 forKeyedSubscript:v206];
        v403 = v206;
      }

      v456 = v425;
      v207 = [v187 __discoverKnownNetworksWithContext:v408 error:&v456];
      v208 = v456;

      if (v207)
      {
        v417 = 0;
        v418 = 0;
        v413 = 0;
        v414 = 0;
        v160 = 0;
        v398 = 0;
        goto LABEL_476;
      }

      v455 = v208;
      v209 = [v187 __allowAutoJoinWithTrigger:objc_msgSend(v429 error:{"trigger"), &v455}];
      v425 = v455;

      if (!v209)
      {
        v417 = 0;
        v418 = 0;
        v413 = 0;
        v414 = 0;
        v160 = 0;
        v398 = 0;
        goto LABEL_473;
      }

      v202 = v420;
    }

    else
    {
      v408 = 0;
      v202 = v423;
    }

    v423 = v202;
    v210 = v187;
    objc_sync_enter(v210);
    v398 = [(NSMutableOrderedSet *)obj->_deferredKnownNetworks copy];
    objc_sync_exit(v210);

    if (![v398 count])
    {
      v417 = 0;
      goto LABEL_281;
    }

    v211 = CWFGetOSLog();
    if (v211)
    {
      v212 = CWFGetOSLog();
    }

    else
    {
      v212 = MEMORY[0x1E69E9C10];
      v213 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
    {
      v214 = [v398 count];
      v501 = 134217984;
      *v502 = v214;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v212, 0, "[corewifi] AUTO-JOIN: Auto-join DEFERRED NETWORKS (%lu)", &v501);
    }

    v417 = [(CWFAutoJoinContext *)v419 copy];
    [v417 setKnownNetworks:v398];
    [v417 setAllowDeferredCandidates:1];
    [v417 setUseCacheForPreviouslyScannedChannels:{objc_msgSend(v412, "count") != 0}];
    v420 = [v210[44] objectForKeyedSubscript:v417];

    if (v420)
    {
      v215 = v420;

      v417 = v215;
    }

    else
    {
      v216 = [v417 copy];

      [v210 __prepareKnownNetworksContext:v417];
      [v210[44] setObject:v417 forKeyedSubscript:v216];
      v403 = v216;
    }

    v454 = v425;
    v217 = [v210 __discoverKnownNetworksWithContext:v417 error:&v454];
    v208 = v454;

    if (v217)
    {
      v418 = 0;
      v413 = 0;
      v414 = 0;
      v160 = 0;
      goto LABEL_476;
    }

    v453 = v208;
    v218 = [v210 __allowAutoJoinWithTrigger:objc_msgSend(v429 error:{"trigger"), &v453}];
    v425 = v453;

    if (v218)
    {
      v423 = v420;
LABEL_281:
      if (![v404 count])
      {
        v160 = 0;
        v170 = v425;
LABEL_316:
        if (v498[3])
        {
          v414 = 0;
        }

        else
        {
          v249 = CWFGetOSLog();
          if (v249)
          {
            v250 = CWFGetOSLog();
          }

          else
          {
            v250 = MEMORY[0x1E69E9C10];
            v251 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v250, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v501) = 0;
            LODWORD(v381) = 2;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v250, 0, "[corewifi] AUTO-JOIN: Auto-join STANDALONE 6GHZ NETWORKS", &v501, v381);
          }

          v414 = [(CWFAutoJoinContext *)v419 copy];
          [v414 setKnownNetworks:v432];
          [v414 setAllowStandalone6GHz:1];
          [v414 setUseCacheForPreviouslyScannedChannels:1];
          [v414 setAllowDeferredCandidates:1];
          v420 = [v210[44] objectForKeyedSubscript:v414];

          if (v420)
          {
            v252 = v420;

            v414 = v252;
          }

          else
          {
            v253 = [v414 copy];

            [v210 __prepareKnownNetworksContext:v414];
            [v210[44] setObject:v414 forKeyedSubscript:v253];
            v403 = v253;
          }

          v446 = v170;
          v254 = [v210 __discoverKnownNetworksWithContext:v414 error:&v446];
          v208 = v446;

          if (v254)
          {
            v418 = 0;
            v413 = 0;
            goto LABEL_476;
          }

          v423 = v420;
          v170 = v208;
        }

        if (v494[3])
        {
          v418 = 0;
          goto LABEL_341;
        }

        v255 = CWFGetOSLog();
        if (v255)
        {
          v256 = CWFGetOSLog();
        }

        else
        {
          v256 = MEMORY[0x1E69E9C10];
          v257 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v256, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v501) = 0;
          LODWORD(v381) = 2;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v256, 0, "[corewifi] AUTO-JOIN: Auto-join SSID-MATCHED PASSPOINT", &v501, v381);
        }

        v418 = [(CWFAutoJoinContext *)v419 copy];
        array5 = [MEMORY[0x1E695DFA0] orderedSet];
        v258 = [v432 set];
        [array5 unionSet:v258];

        v259 = [v389 set];
        [array5 unionSet:v259];

        [v418 setKnownNetworks:array5];
        [v418 setAllowStandalone6GHz:1];
        [v418 setUseCacheForPreviouslyScannedChannels:1];
        [v418 setAllowDeferredCandidates:1];
        [v418 setAllowSSIDBasedMatchingForPasspointNetworks:1];
        v260 = [v210[44] objectForKeyedSubscript:v418];

        if (v260)
        {
          v261 = v260;

          v418 = v261;
        }

        else
        {
          v262 = [v418 copy];

          [v210 __prepareKnownNetworksContext:v418];
          [v210[44] setObject:v418 forKeyedSubscript:v262];
          v403 = v262;
        }

        v445 = v170;
        v263 = [v210 __discoverKnownNetworksWithContext:v418 error:&v445];
        v158 = v445;

        if ((v263 & 1) == 0)
        {
          v444 = v158;
          v264 = [v210 __allowAutoJoinWithTrigger:objc_msgSend(v429 error:{"trigger"), &v444}];
          v170 = v444;

          if (!v264)
          {
            v413 = 0;
            v427 = 0;
            v423 = v260;
            knownNetworks = v390;
            goto LABEL_363;
          }

          v423 = v260;
LABEL_341:
          if (associatedNetwork)
          {
            v413 = 0;
            goto LABEL_353;
          }

          v265 = CWFGetOSLog();
          if (v265)
          {
            v266 = CWFGetOSLog();
          }

          else
          {
            v266 = MEMORY[0x1E69E9C10];
            v267 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v501) = 0;
            LODWORD(v381) = 2;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v266, 0, "[corewifi] AUTO-JOIN: Auto-join LOW-RSSI NETWORKS", &v501, v381);
          }

          v413 = [(CWFAutoJoinContext *)v419 copy];
          [v413 setKnownNetworks:v432];
          [v413 setMinRSSI:-90];
          [v413 setAllowStandalone6GHz:1];
          [v413 setUseCacheForPreviouslyScannedChannels:1];
          [v413 setAllowDeferredCandidates:1];
          [v413 setAllowSSIDBasedMatchingForPasspointNetworks:1];
          v420 = [v210[44] objectForKeyedSubscript:v413];

          if (v420)
          {
            v268 = v420;

            v413 = v268;
          }

          else
          {
            v269 = [v413 copy];

            [v210 __prepareKnownNetworksContext:v413];
            [v210[44] setObject:v413 forKeyedSubscript:v269];
            v403 = v269;
          }

          v443 = v170;
          v270 = [v210 __discoverKnownNetworksWithContext:v413 error:&v443];
          v208 = v443;

          if ((v270 & 1) == 0)
          {
            v423 = v420;
            v170 = v208;
            goto LABEL_353;
          }

LABEL_476:
          v427 = 1;
          v425 = v208;
          goto LABEL_365;
        }

        v413 = 0;
        v427 = 1;
        v423 = v260;
LABEL_485:
        knownNetworks = v390;
        goto LABEL_364;
      }

      v219 = CWFGetOSLog();
      if (v219)
      {
        v220 = CWFGetOSLog();
      }

      else
      {
        v220 = MEMORY[0x1E69E9C10];
        v221 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
      {
        v222 = [v404 count];
        v501 = 134217984;
        *v502 = v222;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v220, 0, "[corewifi] AUTO-JOIN: Auto-join (remaining) HIDDEN NETWORKS (%lu)", &v501);
      }

      v160 = [(CWFAutoJoinContext *)v419 copy];
      [v160 setKnownNetworks:v404];
      [v160 setMaxScanCycles:-1];
      [v160 setPassiveScan:0];
      [v160 setDwellTime:0];
      [v160 setAllowDeferredCandidates:1];
      v223 = [v210[44] objectForKeyedSubscript:v160];

      if (v223)
      {
        v224 = v223;

        v160 = v224;
      }

      else
      {
        v225 = [v160 copy];

        [v210 __prepareKnownNetworksContext:v160];
        [v210[44] setObject:v160 forKeyedSubscript:v225];
        v403 = v225;
      }

      array5 = [MEMORY[0x1E695DF70] array];
      recentChannelList = [v160 recentChannelList];
      remainingChannelList = [v160 remainingChannelList];
      v228 = [recentChannelList arrayByAddingObjectsFromArray:remainingChannelList];

      recentChannelList2 = [v160 recentChannelList];
      if ([recentChannelList2 count] >= 2)
      {

        v231 = 2;
      }

      else
      {
        recentChannelList3 = [v160 recentChannelList];
        v231 = [recentChannelList3 count];

        if (!v231)
        {
          goto LABEL_297;
        }
      }

      for (k = 0; k != v231; ++k)
      {
        hiddenNetworkChannels = obj->_hiddenNetworkChannels;
        recentChannelList4 = [v160 recentChannelList];
        v235 = [recentChannelList4 objectAtIndexedSubscript:k];
        [(NSMutableSet *)hiddenNetworkChannels addObject:v235];
      }

LABEL_297:
      v451 = 0u;
      v452 = 0u;
      v449 = 0u;
      v450 = 0u;
      v236 = v228;
      v237 = [v236 countByEnumeratingWithState:&v449 objects:v518 count:16];
      if (v237)
      {
        v238 = *v450;
        do
        {
          for (m = 0; m != v237; ++m)
          {
            if (*v450 != v238)
            {
              objc_enumerationMutation(v236);
            }

            v240 = *(*(&v449 + 1) + 8 * m);
            if ([(NSMutableSet *)obj->_hiddenNetworkChannels containsObject:v240])
            {
              [array5 addObject:v240];
            }
          }

          v237 = [v236 countByEnumeratingWithState:&v449 objects:v518 count:16];
        }

        while (v237);
      }

      array8 = [MEMORY[0x1E695DF70] array];
      [v160 setRecentChannelList:array8];

      [v160 setRemainingChannelList:array5];
      v242 = CWFGetOSLog();
      if (v242)
      {
        v243 = CWFGetOSLog();
      }

      else
      {
        v243 = MEMORY[0x1E69E9C10];
        v244 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v243, OS_LOG_TYPE_DEFAULT))
      {
        v245 = [array5 count];
        v246 = [array5 componentsJoinedByString:@", "];
        v501 = 134218242;
        *v502 = v245;
        *&v502[8] = 2114;
        v503 = v246;
        LODWORD(v381) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v243, 0, "[corewifi] AUTO-JOIN: Hidden Network Channels (%lu) : %{public}@", &v501, v381);
      }

      if ([array5 count])
      {
        v448 = v425;
        v247 = [v210 __discoverKnownNetworksWithContext:v160 error:&v448];
        v158 = v448;

        if (v247)
        {
          v427 = 1;
          goto LABEL_484;
        }

        v425 = v158;
      }

      v447 = v425;
      v248 = [v210 __allowAutoJoinWithTrigger:objc_msgSend(v429 error:{"trigger"), &v447}];
      v158 = v447;

      if (v248)
      {

        v423 = v223;
        v170 = v158;
        goto LABEL_316;
      }

      v427 = 0;
LABEL_484:

      v418 = 0;
      v413 = 0;
      v414 = 0;
      v423 = v223;
      goto LABEL_485;
    }

    v418 = 0;
    v413 = 0;
    v414 = 0;
    v160 = 0;
LABEL_473:
    v427 = 0;
    goto LABEL_365;
  }

  v367 = CWFGetOSLog();
  if (v367)
  {
    v364 = CWFGetOSLog();
  }

  else
  {
    v364 = MEMORY[0x1E69E9C10];
    v373 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v364, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v501) = 0;
    LODWORD(v381) = 2;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v364, 0, "[corewifi] AUTO-JOIN: No allowed known networks or nearby recommended networks", &v501, v381);
  }

LABEL_498:

  v417 = 0;
  v418 = 0;
  v413 = 0;
  v414 = 0;
  v160 = 0;
  v408 = 0;
  v398 = 0;
  v170 = v425;
LABEL_353:
  if (allowAutoHotspotFallback)
  {
    goto LABEL_354;
  }

  v425 = v170;
  v427 = 0;
  v419 = v430;
  v420 = v423;
  v390 = knownNetworks;
LABEL_365:
  autoHotspotBrowseDuration = [(CWFAutoJoinMetric *)obj->_metric scanDuration]|| [(CWFAutoJoinMetric *)obj->_metric autoHotspotBrowseDuration];
  v276 = obj;
  objc_sync_enter(v276);
  v416 = *(v276 + 257);
  v431 = *(v276 + 258);
  v277 = v276[33];
  if (v277)
  {
    code = [v277 code];
  }

  else
  {
    code = 0;
  }

  reply = [(CWFAutoJoinRequest *)obj->_activeRequest reply];
  v424 = [reply copy];

  if ((v425 != 0) | (v416 | v431) & 1)
  {
    v280 = obj->_activeRequest;
    obj->_activeRequest = 0;

    *(v276 + 257) = 0;
    v281 = v276[33];
    v276[33] = 0;

    *(v276 + 258) = 0;
  }

  else
  {
    if (!obj->_didConfigurationChangeSincePreviousAttempt)
    {
      [v276 __removeRedundantRequests:obj->_activeRequest];
    }

    v282 = obj->_activeRequest;
    obj->_activeRequest = 0;

    *(v276 + 257) = 0;
    v283 = v276[33];
    v276[33] = 0;

    *(v276 + 258) = 0;
    trigger4 = [v429 trigger];
    if (trigger4 - 44 < 8 || trigger4 <= 0x3F && ((1 << trigger4) & 0xC000000000000010) != 0)
    {
      ++obj->_retryScheduleIndex;
    }
  }

  if ((v276[32] & 1) == 0 && (([v276 __shouldPrioritizeRetryOverNewRequest:{objc_msgSend(v429, "trigger")}] & 1) != 0 || (objc_msgSend(v276, "__nextRequest") & 1) == 0) && (v276[15] & 1) == 0)
  {
    if (!v425 || (v416 & 1) != 0 || (v285 = [v429 trigger], v285 - 44 >= 8) && (v285 > 0x3F || ((1 << v285) & 0xC000000000000010) == 0))
    {
      if (code == 37)
      {
        v286 = CWFGetOSLog();
        if (v286)
        {
          v287 = CWFGetOSLog();
        }

        else
        {
          v287 = MEMORY[0x1E69E9C10];
          v288 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v287, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v501) = 0;
          LODWORD(v381) = 2;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v287, 0, "[corewifi] AUTO-JOIN: retryschedule not updated due to EALREADY error code", &v501, v381);
        }
      }

      else
      {
        [v276 __updateRetrySchedule];
      }
    }
  }

  v289 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC538];
  unsignedLongValue3 = [v289 unsignedLongValue];

  v291 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC550];
  unsignedLongValue4 = [v291 unsignedLongValue];

  v293 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC568];
  unsignedLongValue5 = [v293 unsignedLongValue];

  v295 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC580];
  unsignedLongValue6 = [v295 unsignedLongValue];

  v297 = [(NSMutableDictionary *)obj->_triggerTimestampMap objectForKeyedSubscript:&unk_1F5BBC598];
  unsignedLongValue7 = [v297 unsignedLongValue];

  if (v427 && ([v429 trigger] == 54 || objc_msgSend(v429, "trigger") == 55))
  {
    [v276[36] setObject:0 forKeyedSubscript:&unk_1F5BBC5B0];
  }

  if (autoHotspotBrowseDuration)
  {
    v299 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v394];
    v300 = v276[36];
    v301 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v429, "trigger")}];
    [v300 setObject:v299 forKeyedSubscript:v301];

    v302 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v394];
    [v276[36] setObject:v302 forKeyedSubscript:&unk_1F5BBC5C8];
  }

  v395 = [v276[5] copy];
  objc_sync_exit(v276);

  if (self->_beginTimestamp)
  {
    clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
    v303 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    v304 = CWFGetBootTime();
    v305 = [v304 dateByAddingTimeInterval:v303 / 1000000000.0];
    [(CWFAutoJoinMetric *)obj->_metric setEndedAt:v305];

    [(CWFAutoJoinMetric *)obj->_metric setResult:v427];
    if (linkChangeTimestamp < unsignedLongValue || unsignedLongValue2 == unsignedLongValue)
    {
      v306 = CWFGetBootTime();
      v307 = [v306 dateByAddingTimeInterval:unsignedLongValue / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByLinkDownAt:v307];
    }

    if (linkChangeTimestamp < unsignedLongValue3 || unsignedLongValue2 == unsignedLongValue3)
    {
      v308 = CWFGetBootTime();
      v309 = [v308 dateByAddingTimeInterval:unsignedLongValue3 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByFirstUnlockAt:v309];
    }

    if (linkChangeTimestamp < unsignedLongValue4 || unsignedLongValue2 == unsignedLongValue4)
    {
      v310 = CWFGetBootTime();
      v311 = [v310 dateByAddingTimeInterval:unsignedLongValue4 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByDeviceWakeAt:v311];
    }

    if (linkChangeTimestamp < unsignedLongValue5 || unsignedLongValue2 == unsignedLongValue5)
    {
      v312 = CWFGetBootTime();
      v313 = [v312 dateByAddingTimeInterval:unsignedLongValue5 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByWiFiOnAt:v313];
    }

    if (linkChangeTimestamp < unsignedLongValue6 || unsignedLongValue2 == unsignedLongValue6)
    {
      v314 = CWFGetBootTime();
      v315 = [v314 dateByAddingTimeInterval:unsignedLongValue6 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByMotionEndedAt:v315];
    }

    if (linkChangeTimestamp < unsignedLongValue7 || unsignedLongValue2 == unsignedLongValue7)
    {
      v316 = CWFGetBootTime();
      v317 = [v316 dateByAddingTimeInterval:unsignedLongValue7 / 1000000000.0];
      [(CWFAutoJoinMetric *)obj->_metric setTriggeredByAutoJoinEnabledAt:v317];
    }

    wasAlreadyAssociatedToNetwork = [(CWFAutoJoinMetric *)obj->_metric wasAlreadyAssociatedToNetwork];
    if (!wasAlreadyAssociatedToNetwork)
    {
      wasAlreadyAssociatedToNetwork = [(CWFAutoJoinMetric *)obj->_metric autoJoinedNetwork];
      matchingKnownNetworkProfile8 = [wasAlreadyAssociatedToNetwork matchingKnownNetworkProfile];
      identifier = [matchingKnownNetworkProfile8 identifier];
      if (identifier)
      {
        matchingKnownNetworkProfile9 = [v395 matchingKnownNetworkProfile];
        identifier2 = [matchingKnownNetworkProfile9 identifier];
        if (identifier2)
        {
          autoJoinedNetwork = [(CWFAutoJoinMetric *)obj->_metric autoJoinedNetwork];
          matchingKnownNetworkProfile10 = [autoJoinedNetwork matchingKnownNetworkProfile];
          identifier3 = [matchingKnownNetworkProfile10 identifier];
          matchingKnownNetworkProfile11 = [v395 matchingKnownNetworkProfile];
          identifier4 = [matchingKnownNetworkProfile11 identifier];
          v401 = [identifier3 isEqual:identifier4];

          if (v401)
          {
            [(CWFAutoJoinMetric *)obj->_metric setDidJoinPreviouslyAssociatedNetwork:1];
          }

          goto LABEL_431;
        }
      }
    }

LABEL_431:
    v326 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v440 = 0u;
    v441 = 0u;
    v438 = 0u;
    v439 = 0u;
    v327 = v276[55];
    v328 = [v327 countByEnumeratingWithState:&v438 objects:v517 count:16];
    if (v328)
    {
      v329 = *v439;
      do
      {
        for (n = 0; n != v328; ++n)
        {
          if (*v439 != v329)
          {
            objc_enumerationMutation(v327);
          }

          matchingKnownNetworkProfile12 = [*(*(&v438 + 1) + 8 * n) matchingKnownNetworkProfile];
          identifier5 = [matchingKnownNetworkProfile12 identifier];
          [v326 addObject:identifier5];
        }

        v328 = [v327 countByEnumeratingWithState:&v438 objects:v517 count:16];
      }

      while (v328);
    }

    -[CWFAutoJoinMetric setCandidateBSSCount:](obj->_metric, "setCandidateBSSCount:", [v276[55] count]);
    -[CWFAutoJoinMetric setCandidateSSIDCount:](obj->_metric, "setCandidateSSIDCount:", [v326 count]);
    v333 = v425;
    if (v425)
    {
      v334 = 1;
    }

    else
    {
      v334 = v427;
    }

    if ((v334 & 1) == 0)
    {
      if ([v429 trigger] == 54 || objc_msgSend(v429, "trigger") == 55)
      {
        v335 = MEMORY[0x1E696ABC0];
        v515 = *MEMORY[0x1E696A578];
        v516 = @"No candidate found";
        v336 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v516 forKeys:&v515 count:1];
        v337 = [v335 errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:v336];

        v333 = v337;
      }

      else
      {
        v333 = 0;
      }
    }

    v425 = v333;
    [(CWFAutoJoinMetric *)obj->_metric setError:?];
    [v276 __updateAutoJoinMetricAndStatistics:obj->_metric];
    v338 = CWFGetOSLog();
    if (v338)
    {
      v339 = CWFGetOSLog();
    }

    else
    {
      v339 = MEMORY[0x1E69E9C10];
      v340 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v339, OS_LOG_TYPE_DEFAULT))
    {
      v392 = v160;
      uUIDString = [v397 UUIDString];
      v428 = [uUIDString substringToIndex:5];
      endedAt = [(CWFAutoJoinMetric *)obj->_metric endedAt];
      [endedAt timeIntervalSinceReferenceDate];
      v344 = v343;
      startedAt = [(CWFAutoJoinMetric *)obj->_metric startedAt];
      [startedAt timeIntervalSinceReferenceDate];
      v347 = v346;
      result = [(CWFAutoJoinMetric *)obj->_metric result];
      error = [(CWFAutoJoinMetric *)obj->_metric error];
      v411 = [v276 __descriptionForError:error];
      scanChannels = [(CWFAutoJoinMetric *)obj->_metric scanChannels];
      v385 = [scanChannels count];
      autoHotspotWasAttempted = [(CWFAutoJoinMetric *)obj->_metric autoHotspotWasAttempted];
      if (autoHotspotWasAttempted)
      {
        autoHotspotEndedAt = [(CWFAutoJoinMetric *)obj->_metric autoHotspotEndedAt];
        [autoHotspotEndedAt timeIntervalSinceReferenceDate];
        v350 = v349;
        autoHotspotStartedAt = [(CWFAutoJoinMetric *)obj->_metric autoHotspotStartedAt];
        [autoHotspotStartedAt timeIntervalSinceReferenceDate];
        v352 = ((v350 - v351) * 1000.0);
      }

      else
      {
        v352 = 0;
      }

      autoHotspotResult = [(CWFAutoJoinMetric *)obj->_metric autoHotspotResult];
      autoHotspotError = [(CWFAutoJoinMetric *)obj->_metric autoHotspotError];
      [v276 __descriptionForError:autoHotspotError];
      obja = startedAt;
      v355 = v384 = uUIDString;
      v501 = 138545666;
      *v502 = v428;
      *&v502[8] = 2048;
      v503 = ((v344 - v347) * 1000.0);
      v504 = 1024;
      *v505 = result;
      *&v505[4] = 2114;
      *&v505[6] = v411;
      *&v505[14] = 1024;
      *&v505[16] = v416;
      *v506 = 1024;
      *&v506[2] = v431;
      v507 = 2048;
      v508 = v385;
      v509 = 2048;
      v510 = v352;
      v511 = 1024;
      v512 = autoHotspotResult;
      v513 = 2114;
      v514 = v355;
      LODWORD(v381) = 86;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v339, 0, "[corewifi] AUTO-JOIN: Auto-join COMPLETED (uuid=%{public}@, duration=%lums, result=%d, error=(%{public}@), wasCancelled=%d, wasRequeued=%d, scanChannelCount=%lu, autoHotspot=[duration=%lums, result=%d, error=(%{public}@)])", &v501, v381);

      v160 = v392;
      if (autoHotspotWasAttempted)
      {
      }
    }

    [v276 __updateDisallowedMatchedKnownNetworks];
    allObjects3 = [v276[56] allObjects];
    [v276 __updateDiscoverTimestampForJoinCandidates:allObjects3];

    [v276 __updateRecentlyMatchedCandidates];
    [v276 __updateAutoJoinState:0];
  }

  if ((v431 & 1) == 0)
  {
    v357 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v358 = CWFGetOSLog();
    if (v358)
    {
      v359 = CWFGetOSLog();
    }

    else
    {
      v359 = MEMORY[0x1E69E9C10];
      v360 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v359, OS_LOG_TYPE_DEBUG))
    {
      v501 = 134219010;
      *v502 = v357 / 0x3B9ACA00;
      *&v502[8] = 2048;
      v503 = v357 % 0x3B9ACA00 / 0x3E8;
      v504 = 2082;
      *v505 = "[CWFAutoJoinManager __performAutoJoin]";
      *&v505[8] = 2082;
      *&v505[10] = "CWFAutoJoinManager.m";
      *&v505[18] = 1024;
      *v506 = 3082;
      LODWORD(v381) = 48;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v359, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v501, v381);
    }

    targetQueue = [v276 targetQueue];
    v435[0] = MEMORY[0x1E69E9820];
    v435[1] = 3221225472;
    v435[2] = sub_1E0C785B8;
    v435[3] = &unk_1E86E6BE0;
    v437 = v424;
    v436 = v425;
    dispatch_sync(targetQueue, v435);
  }

  _Block_object_dispose(&v481, 8);

  _Block_object_dispose(&v487, 8);
  _Block_object_dispose(&v493, 8);

  _Block_object_dispose(&v497, 8);
}

- (void)__sortKnownNetworks:(id)networks
{
  v4 = MEMORY[0x1E695DF70];
  networksCopy = networks;
  array = [v4 array];
  knownNetworkComparator = [(CWFAutoJoinManager *)self knownNetworkComparator];
  if (knownNetworkComparator)
  {
    v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:knownNetworkComparator];
    [array addObject:v7];
  }

  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedAt" ascending:0];
  [array addObject:v8];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedAt" ascending:0];
  [array addObject:v9];
  [networksCopy sortUsingDescriptors:array];
}

- (void)__sortKnownNetworksByJoinTimestamp:(id)timestamp
{
  v3 = MEMORY[0x1E695DF70];
  timestampCopy = timestamp;
  array = [v3 array];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedByUserAt" ascending:0];
  [array addObject:v5];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedBySystemAt" ascending:0];
  [array addObject:v6];
  [timestampCopy sortUsingDescriptors:array];
}

- (void)__sortAndFilterUserConfiguredNetworks:(id)networks
{
  networksCopy = networks;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedByUserAt" ascending:0];
  [array addObject:v6];
  knownNetworkComparator = [(CWFAutoJoinManager *)self knownNetworkComparator];
  if (knownNetworkComparator)
  {
    v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:0 comparator:knownNetworkComparator];
    [array addObject:v8];
  }

  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastJoinedAt" ascending:0];
  [array addObject:v9];
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"addedAt" ascending:0];
  [array addObject:v10];
  [networksCopy sortUsingDescriptors:array];
  firstObject = [networksCopy firstObject];
  lastJoinedByUserAt = [firstObject lastJoinedByUserAt];

  if (lastJoinedByUserAt)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = sub_1E0C78B34;
    v18 = &unk_1E86E7780;
    v19 = lastJoinedByUserAt;
    v20 = array2;
    v14 = array2;
    [networksCopy enumerateObjectsUsingBlock:&v15];
    [networksCopy removeObjectsInArray:{v14, v15, v16, v17, v18}];
  }
}

- (id)__basicChannelRepresentation:(id)representation
{
  if (representation)
  {
    representationCopy = representation;
    channel = [representationCopy channel];
    band = [representationCopy band];

    v7 = [CWFChannel channelWithNumber:channel band:band width:20];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)__knownNetworksList:(id)list containsMatchingKnownNetwork:(id)network
{
  v33 = *MEMORY[0x1E69E9840];
  listCopy = list;
  networkCopy = network;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = listCopy;
  v7 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
LABEL_3:
    v10 = 0;
    v25 = v8;
    while (1)
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v28 + 1) + 8 * v10);
      identifier = [networkCopy identifier];
      identifier2 = [v11 identifier];
      v14 = identifier2;
      if (identifier == identifier2)
      {

LABEL_17:
        v23 = v11;
        goto LABEL_18;
      }

      identifier3 = [networkCopy identifier];
      if (identifier3)
      {
        v16 = identifier3;
        identifier4 = [v11 identifier];
        if (identifier4)
        {
          v18 = identifier4;
          [networkCopy identifier];
          v19 = networkCopy;
          v21 = v20 = v9;
          identifier5 = [v11 identifier];
          v27 = [v21 isEqual:identifier5];

          v9 = v20;
          networkCopy = v19;
          v8 = v25;

          if (v27)
          {
            goto LABEL_17;
          }

          goto LABEL_13;
        }
      }

LABEL_13:
      if (v8 == ++v10)
      {
        v8 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v23 = 0;
LABEL_18:

  return v23;
}

- (BOOL)__didRecentlyJoinAny6GHzOnlyNetworks:(id)networks
{
  v66 = *MEMORY[0x1E69E9840];
  networksCopy = networks;
  location = [(CWFAutoJoinManager *)self location];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v7 = v6;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = networksCopy;
  v9 = [v8 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v57;
    while (2)
    {
      v12 = 0;
      do
      {
        if (*v57 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v56 + 1) + 8 * v12);
        if ([v13 wasRecently6GHzOnlyOnAnyDevice])
        {
          lastJoinedOnAnyDeviceAt = [v13 lastJoinedOnAnyDeviceAt];
          [lastJoinedOnAnyDeviceAt timeIntervalSinceReferenceDate];
          v16 = v7 - v15;

          if (v16 <= 2592000.0)
          {
            if (!location)
            {
              goto LABEL_33;
            }

            v49 = v10;
            v50 = v11;
            v51 = v8;
            v54 = 0u;
            v55 = 0u;
            v52 = 0u;
            v53 = 0u;
            bSSList = [v13 BSSList];
            v18 = [bSSList countByEnumeratingWithState:&v52 objects:v64 count:16];
            if (!v18)
            {
LABEL_32:

              v8 = v51;
LABEL_33:
              v42 = CWFGetOSLog();
              if (v42)
              {
                v43 = CWFGetOSLog();
              }

              else
              {
                v43 = MEMORY[0x1E69E9C10];
                v44 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                identifier = [v13 identifier];
                redactedForWiFi = [identifier redactedForWiFi];
                v60 = 138543362;
                v61 = redactedForWiFi;
                LODWORD(v48) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v43, 0, "[corewifi] AUTO-JOIN: Did recently join 6GHz-only network '%{public}@'", &v60, v48);
              }

              v41 = 1;
              goto LABEL_40;
            }

            v19 = v18;
            v20 = 0;
            v21 = *v53;
            do
            {
              for (i = 0; i != v19; ++i)
              {
                if (*v53 != v21)
                {
                  objc_enumerationMutation(bSSList);
                }

                v23 = *(*(&v52 + 1) + 8 * i);
                lastAssociatedAt = [v23 lastAssociatedAt];
                [lastAssociatedAt timeIntervalSinceReferenceDate];
                v26 = v7 - v25;

                if (v26 <= 2592000.0)
                {
                  location2 = [v23 location];
                  if (!location2)
                  {
                    goto LABEL_32;
                  }

                  v28 = location2;
                  [location2 distanceFromLocation:location];
                  v30 = v29;
                  [v28 horizontalAccuracy];
                  v32 = v30 - v31;
                  [location horizontalAccuracy];
                  v34 = v32 - v33;

                  if (v34 <= 3000.0)
                  {
                    goto LABEL_32;
                  }

                  v20 = 1;
                }
              }

              v19 = [bSSList countByEnumeratingWithState:&v52 objects:v64 count:16];
            }

            while (v19);

            v8 = v51;
            v10 = v49;
            v11 = v50;
            if ((v20 & 1) == 0 || !_os_feature_enabled_impl())
            {
              goto LABEL_33;
            }

            v35 = CWFGetOSLog();
            if (v35)
            {
              v36 = CWFGetOSLog();
            }

            else
            {
              v36 = MEMORY[0x1E69E9C10];
              v37 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v13 identifier];
              redactedForWiFi2 = [identifier2 redactedForWiFi];
              v60 = 138543618;
              v61 = redactedForWiFi2;
              v62 = 1024;
              v63 = 3000;
              LODWORD(v48) = 18;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v36, 0, "[corewifi] AUTO-JOIN: Did recently join 6GHz-only network '%{public}@', but is more than %d meters away", &v60, v48);
            }
          }
        }

        ++v12;
      }

      while (v12 != v10);
      v40 = [v8 countByEnumeratingWithState:&v56 objects:v65 count:16];
      v10 = v40;
      v41 = 0;
      if (v40)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v41 = 0;
  }

LABEL_40:

  return v41;
}

- (void)__prepareKnownNetworksContext:(id)context
{
  v369[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  selfCopy = self;
  [(CWFAutoJoinManager *)self __updateAutoJoinState:1];
  v312 = contextCopy;
  knownNetworks = [contextCopy knownNetworks];
  v6 = [knownNetworks mutableCopy];

  if ([v312 preferUserConfiguredNetworks])
  {
    [(CWFAutoJoinManager *)selfCopy __sortAndFilterUserConfiguredNetworks:v6];
  }

  else
  {
    [(CWFAutoJoinManager *)selfCopy __sortKnownNetworks:v6];
  }

  v270 = v6;
  [v312 setKnownNetworks:v6];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet5 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet6 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet7 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet8 = [MEMORY[0x1E695DFA0] orderedSet];
  v271 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  supportedChannels = [(CWFAutoJoinManager *)selfCopy supportedChannels];
  v369[0] = v271;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v369 count:1];
  v9 = [supportedChannels sortedArrayUsingDescriptors:v8];

  v339 = 0u;
  v340 = 0u;
  v337 = 0u;
  v338 = 0u;
  obj = v9;
  v10 = [obj countByEnumeratingWithState:&v337 objects:v368 count:16];
  if (!v10)
  {
    goto LABEL_30;
  }

  v11 = *v338;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v338 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v337 + 1) + 8 * i);
      autoJoinParameters = [v312 autoJoinParameters];
      if ([autoJoinParameters trigger] == 54)
      {

LABEL_12:
        if (![v13 is5GHz])
        {
          continue;
        }

        goto LABEL_13;
      }

      autoJoinParameters2 = [v312 autoJoinParameters];
      v16 = [autoJoinParameters2 trigger] == 55;

      if (v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v13];
      [orderedSet8 addObject:v17];
      if ([v13 is2GHz])
      {
        channel = [v13 channel];
        v19 = orderedSet;
        if (channel != 1)
        {
          channel2 = [v13 channel];
          v19 = orderedSet;
          if (channel2 != 6)
          {
            if ([v13 channel] == 11)
            {
              v19 = orderedSet;
            }

            else
            {
              v19 = orderedSet2;
            }
          }
        }
      }

      else if ([v13 is5GHz])
      {
        if ([v13 isDFS])
        {
          v19 = orderedSet4;
        }

        else
        {
          v19 = orderedSet3;
        }
      }

      else
      {
        is6GHz = [v13 is6GHz];
        v19 = orderedSet7;
        if (is6GHz)
        {
          if ([v13 is6GHzPSC])
          {
            v19 = orderedSet5;
          }

          else
          {
            v19 = orderedSet6;
          }
        }
      }

      [v19 addObject:v17];
    }

    v10 = [obj countByEnumeratingWithState:&v337 objects:v368 count:16];
  }

  while (v10);
LABEL_30:

  orderedSet9 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet10 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet11 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet12 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet13 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet14 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet15 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet16 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet17 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet18 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet19 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet20 = [MEMORY[0x1E695DFA0] orderedSet];
  v267 = [MEMORY[0x1E695DFA8] set];
  location = [(CWFAutoJoinManager *)selfCopy location];
  v22 = CWFGetOSLog();
  if (v22)
  {
    v23 = CWFGetOSLog();
  }

  else
  {
    v23 = MEMORY[0x1E69E9C10];
    v24 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    maxBSSChannelAge = [v312 maxBSSChannelAge];
    [v312 minBSSLocationAccuracy];
    v27 = v26;
    [v312 maxBSSLocationDistance];
    v29 = v28;
    maxBSSChannelCount = [v312 maxBSSChannelCount];
    maxHiddenKnownNetworkSSIDAge = [v312 maxHiddenKnownNetworkSSIDAge];
    v32 = [location description];
    redactedSensitiveContentForWiFi = [v32 redactedSensitiveContentForWiFi];
    autoJoinParameters3 = [v312 autoJoinParameters];
    preferredChannels = [autoJoinParameters3 preferredChannels];
    v341 = 134219522;
    v342 = maxBSSChannelAge;
    v343 = 2048;
    v344 = v27;
    v345 = 2048;
    v346 = v29;
    v347 = 2048;
    v348 = maxBSSChannelCount;
    v349 = 2048;
    v350 = maxHiddenKnownNetworkSSIDAge;
    v351 = 2114;
    v352 = redactedSensitiveContentForWiFi;
    v353 = 2114;
    v354 = preferredChannels;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 2, "[corewifi] AUTO-JOIN: Preparing optimized channel/SSID list (maxBSSChannelAge=%lu, minBSSLocationAccuracy=%f, maxBSSLocationDistance=%f, maxBSSChannelCount=%lu, maxHiddenKnownNetworkSSIDAge=%lu, location=%{public}@, preferred=%{public}@)", &v341, 72);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v37 = v36;
  v335 = 0u;
  v336 = 0u;
  v333 = 0u;
  v334 = 0u;
  autoJoinParameters4 = [v312 autoJoinParameters];
  preferredChannels2 = [autoJoinParameters4 preferredChannels];

  v40 = [preferredChannels2 countByEnumeratingWithState:&v333 objects:v367 count:16];
  if (v40)
  {
    v41 = *v334;
    v42 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v40; ++j)
      {
        if (*v334 != v41)
        {
          objc_enumerationMutation(preferredChannels2);
        }

        v44 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:*(*(&v333 + 1) + 8 * j)];
        if ([orderedSet8 containsObject:v44])
        {
          [orderedSet9 addObject:v44];
        }

        else
        {
          v45 = CWFGetOSLog();
          if (v45)
          {
            v46 = CWFGetOSLog();
          }

          else
          {
            v47 = v42;
            v46 = v42;
          }

          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v341 = 138543362;
            v342 = v44;
            LODWORD(v259) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v46, 0, "[corewifi] AUTO-JOIN: Preferred channel is not supported, skipping (%{public}@)", &v341, v259);
          }
        }
      }

      v40 = [preferredChannels2 countByEnumeratingWithState:&v333 objects:v367 count:16];
    }

    while (v40);
  }

  array = [orderedSet9 array];
  [orderedSet10 addObjectsFromArray:array];

  array2 = [v270 array];
  v50 = [array2 copy];

  v331 = 0u;
  v332 = 0u;
  v329 = 0u;
  v330 = 0u;
  v272 = v50;
  v275 = [v272 countByEnumeratingWithState:&v329 objects:v366 count:16];
  if (!v275)
  {
    v166 = 0;
    goto LABEL_197;
  }

  v263 = *v330;
  v264 = 0;
  while (2)
  {
    v280 = 0;
    while (2)
    {
      if (*v330 != v263)
      {
        objc_enumerationMutation(v272);
      }

      v309 = *(*(&v329 + 1) + 8 * v280);
      orderedSet21 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet22 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet23 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet24 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet25 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet26 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet27 = [MEMORY[0x1E695DFA0] orderedSet];
      orderedSet28 = [MEMORY[0x1E695DFA0] orderedSet];
      bSSList = [v309 BSSList];
      v279 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
      v365 = v279;
      v51 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v365 count:1];
      v52 = [bSSList sortedArrayUsingDescriptors:v51];

      v327 = 0u;
      v328 = 0u;
      v325 = 0u;
      v326 = 0u;
      v290 = v52;
      v295 = [v290 countByEnumeratingWithState:&v325 objects:v364 count:16];
      if (v295)
      {
        v282 = 0;
        v294 = *v326;
        while (1)
        {
          v305 = 0;
          do
          {
            if (*v326 != v294)
            {
              objc_enumerationMutation(v290);
            }

            v310 = *(*(&v325 + 1) + 8 * v305);
            location2 = [v310 location];
            if (location2)
            {
              v53 = location != 0;
            }

            else
            {
              v53 = 0;
            }

            if (v53 && ([location horizontalAccuracy], v54 >= 0.0) && (objc_msgSend(location, "horizontalAccuracy"), v56 = v55, objc_msgSend(v312, "minBSSLocationAccuracy"), v56 <= v57) && (objc_msgSend(location2, "horizontalAccuracy"), v58 >= 0.0) && (objc_msgSend(location2, "horizontalAccuracy"), v60 = v59, objc_msgSend(v312, "minBSSLocationAccuracy"), v60 <= v61) && (objc_msgSend(location2, "distanceFromLocation:", location), v63 = v62, objc_msgSend(v312, "maxBSSLocationDistance"), v63 <= v64))
            {
              v65 = 1;
              v282 = 1;
            }

            else
            {
              v65 = 0;
            }

            channel3 = [v310 channel];
            v307 = [channel3 copy];

            if (v307)
            {
              array3 = [MEMORY[0x1E695DF70] array];
              v303 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v307];
              if ([v303 is6GHz])
              {
                colocated2GHzRNRChannel = [v310 colocated2GHzRNRChannel];
                if (colocated2GHzRNRChannel)
                {
                  v69 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated2GHzRNRChannel];
                  v70 = CWFGetOSLog();
                  if (v70)
                  {
                    v71 = CWFGetOSLog();
                  }

                  else
                  {
                    v71 = MEMORY[0x1E69E9C10];
                    v72 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
                  {
                    identifier = [v309 identifier];
                    redactedForWiFi = [identifier redactedForWiFi];
                    v341 = 138543874;
                    v342 = v69;
                    v343 = 2114;
                    v344 = v303;
                    v345 = 2114;
                    v346 = redactedForWiFi;
                    LODWORD(v259) = 32;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v71, 2, "[corewifi] AUTO-JOIN: Adding 2GHz RNR channel (%{public}@) instead of operating channel (%{public}@) for 6GHz BSS '%{public}@'", &v341, v259);
                  }

                  [array3 addObject:v69];
                }

                colocated5GHzRNRChannel = [v310 colocated5GHzRNRChannel];
                if (colocated5GHzRNRChannel)
                {
                  v76 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated5GHzRNRChannel];
                  v77 = CWFGetOSLog();
                  if (v77)
                  {
                    v78 = CWFGetOSLog();
                  }

                  else
                  {
                    v78 = MEMORY[0x1E69E9C10];
                    v79 = MEMORY[0x1E69E9C10];
                  }

                  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
                  {
                    identifier2 = [v309 identifier];
                    redactedForWiFi2 = [identifier2 redactedForWiFi];
                    v341 = 138543874;
                    v342 = v76;
                    v343 = 2114;
                    v344 = v303;
                    v345 = 2114;
                    v346 = redactedForWiFi2;
                    LODWORD(v259) = 32;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v78, 2, "[corewifi] AUTO-JOIN: Adding 5GHz RNR channel (%{public}@) instead of operating channel (%{public}@) for 6GHz BSS '%{public}@'", &v341, v259);
                  }

                  [array3 addObject:v76];
                }
              }

              [array3 addObject:v303];
              v323 = 0u;
              v324 = 0u;
              v321 = 0u;
              v322 = 0u;
              v82 = array3;
              v83 = [v82 countByEnumeratingWithState:&v321 objects:v363 count:16];
              if (v83)
              {
                v84 = *v322;
                if (v65)
                {
                  v85 = orderedSet24;
                }

                else
                {
                  v85 = orderedSet28;
                }

                if (v65)
                {
                  v86 = orderedSet21;
                }

                else
                {
                  v86 = orderedSet25;
                }

                do
                {
                  v87 = 0;
                  do
                  {
                    if (*v322 != v84)
                    {
                      objc_enumerationMutation(v82);
                    }

                    v88 = *(*(&v321 + 1) + 8 * v87);
                    if ([orderedSet8 containsObject:v88])
                    {
                      if (![v88 is6GHz])
                      {
                        goto LABEL_103;
                      }

                      if (_os_feature_enabled_impl())
                      {
                        if (_os_feature_enabled_impl() & 1) != 0 || ([v88 is6GHzPSC])
                        {
                          if ([v312 include6GHzChannels])
                          {
LABEL_103:
                            if (![v312 maxBSSChannelAge] || (objc_msgSend(v310, "lastAssociatedAt"), v89 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v89, "timeIntervalSinceReferenceDate"), v91 = v37 - v90 > objc_msgSend(v312, "maxBSSChannelAge"), v89, v92 = v85, !v91))
                            {
                              v92 = v86;
                            }

                            v93 = v92;
                            [v93 addObject:v88];
                            goto LABEL_112;
                          }

                          v99 = CWFGetOSLog();
                          if (v99)
                          {
                            v93 = CWFGetOSLog();
                          }

                          else
                          {
                            v93 = MEMORY[0x1E69E9C10];
                            v104 = MEMORY[0x1E69E9C10];
                          }

                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                          {
                            identifier3 = [v309 identifier];
                            redactedForWiFi3 = [identifier3 redactedForWiFi];
                            v341 = 138543618;
                            v342 = v88;
                            v343 = 2114;
                            v344 = redactedForWiFi3;
                            LODWORD(v259) = 22;
                            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v93, 0, "[corewifi] AUTO-JOIN: Excluding 6GHz channel (%{public}@) for '%{public}@'", &v341, v259);
                          }
                        }

                        else
                        {
                          v100 = CWFGetOSLog();
                          if (v100)
                          {
                            v93 = CWFGetOSLog();
                          }

                          else
                          {
                            v93 = MEMORY[0x1E69E9C10];
                            v107 = MEMORY[0x1E69E9C10];
                          }

                          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                          {
                            identifier4 = [v309 identifier];
                            redactedForWiFi4 = [identifier4 redactedForWiFi];
                            v341 = 138543618;
                            v342 = v88;
                            v343 = 2114;
                            v344 = redactedForWiFi4;
                            LODWORD(v259) = 22;
                            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v93, 0, "[corewifi] AUTO-JOIN: Non-PSC standalone 6GHz discovery is disabled, excluding 6GHz channel (%{public}@) for '%{public}@'", &v341, v259);
                          }
                        }
                      }

                      else
                      {
                        v98 = CWFGetOSLog();
                        if (v98)
                        {
                          v93 = CWFGetOSLog();
                        }

                        else
                        {
                          v93 = MEMORY[0x1E69E9C10];
                          v101 = MEMORY[0x1E69E9C10];
                        }

                        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                        {
                          identifier5 = [v309 identifier];
                          redactedForWiFi5 = [identifier5 redactedForWiFi];
                          v341 = 138543618;
                          v342 = v88;
                          v343 = 2114;
                          v344 = redactedForWiFi5;
                          LODWORD(v259) = 22;
                          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v93, 0, "[corewifi] AUTO-JOIN: Standalone 6GHz discovery is disabled, excluding 6GHz channel (%{public}@) for '%{public}@'", &v341, v259);
                        }
                      }
                    }

                    else
                    {
                      v94 = CWFGetOSLog();
                      if (v94)
                      {
                        v93 = CWFGetOSLog();
                      }

                      else
                      {
                        v93 = MEMORY[0x1E69E9C10];
                        v95 = MEMORY[0x1E69E9C10];
                      }

                      if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
                      {
                        identifier6 = [v309 identifier];
                        redactedForWiFi6 = [identifier6 redactedForWiFi];
                        v341 = 138543618;
                        v342 = redactedForWiFi6;
                        v343 = 2114;
                        v344 = v88;
                        LODWORD(v259) = 22;
                        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v93, 0, "[corewifi] AUTO-JOIN: BSS channel for '%{public}@' is not supported, skipping (%{public}@)", &v341, v259);
                      }
                    }

LABEL_112:

                    ++v87;
                  }

                  while (v83 != v87);
                  v110 = [v82 countByEnumeratingWithState:&v321 objects:v363 count:16];
                  v83 = v110;
                }

                while (v110);
              }
            }

            ++v305;
          }

          while (v305 != v295);
          v111 = [v290 countByEnumeratingWithState:&v325 objects:v364 count:16];
          v295 = v111;
          if (!v111)
          {
            goto LABEL_137;
          }
        }
      }

      v282 = 0;
LABEL_137:

      v319 = 0u;
      v320 = 0u;
      v317 = 0u;
      v318 = 0u;
      v112 = orderedSet21;
      v113 = 0;
      v114 = [v112 countByEnumeratingWithState:&v317 objects:v362 count:16];
      if (v114)
      {
        v115 = *v318;
        do
        {
          v116 = 0;
          v117 = v113;
          do
          {
            if (*v318 != v115)
            {
              objc_enumerationMutation(v112);
            }

            v118 = *(*(&v317 + 1) + 8 * v116);
            if (v117 >= [v312 maxBSSChannelCount])
            {
              v119 = orderedSet23;
            }

            else
            {
              v119 = orderedSet22;
            }

            [v119 addObject:v118];
            ++v117;
            ++v116;
          }

          while (v114 != v116);
          v113 += v114;
          v114 = [v112 countByEnumeratingWithState:&v317 objects:v362 count:16];
        }

        while (v114);
      }

      v315 = 0u;
      v316 = 0u;
      v313 = 0u;
      v314 = 0u;
      v120 = orderedSet25;
      v121 = [v120 countByEnumeratingWithState:&v313 objects:v361 count:16];
      if (v121)
      {
        v122 = *v314;
        do
        {
          v123 = 0;
          v124 = v113;
          do
          {
            if (*v314 != v122)
            {
              objc_enumerationMutation(v120);
            }

            v125 = *(*(&v313 + 1) + 8 * v123);
            if (v124 >= [v312 maxBSSChannelCount])
            {
              v126 = orderedSet27;
            }

            else
            {
              v126 = orderedSet26;
            }

            [v126 addObject:v125];
            ++v124;
            ++v123;
          }

          while (v121 != v123);
          v113 += v121;
          v121 = [v120 countByEnumeratingWithState:&v313 objects:v361 count:16];
        }

        while (v121);
      }

      array4 = [orderedSet22 array];
      [orderedSet15 addObjectsFromArray:array4];

      array5 = [orderedSet23 array];
      [orderedSet16 addObjectsFromArray:array5];

      array6 = [orderedSet24 array];
      [orderedSet17 addObjectsFromArray:array6];

      array7 = [orderedSet26 array];
      [orderedSet12 addObjectsFromArray:array7];

      array8 = [orderedSet27 array];
      [orderedSet13 addObjectsFromArray:array8];

      array9 = [orderedSet28 array];
      [orderedSet14 addObjectsFromArray:array9];

      networkName = [v309 networkName];
      if (networkName && ([v309 isPasspoint] & 1) == 0)
      {
        if ([v309 hiddenState] == 2)
        {
          wasHiddenBefore = [v309 wasHiddenBefore];
          if (!wasHiddenBefore)
          {
            goto LABEL_159;
          }

          wasHiddenBefore2 = [v309 wasHiddenBefore];
          [wasHiddenBefore2 timeIntervalSinceNow];
          v154 = v153 >= 0.0;
          wasHiddenBefore3 = [v309 wasHiddenBefore];
          [wasHiddenBefore3 timeIntervalSinceNow];
          v157 = v156;

          if (v154)
          {
            if (v157 >= 604800.0)
            {
              goto LABEL_159;
            }
          }

          else if (v157 <= -604800.0)
          {
            goto LABEL_159;
          }
        }

        if ([v312 maxHiddenKnownNetworkSSIDAge])
        {
          lastJoinedAt = [v309 lastJoinedAt];
          [lastJoinedAt timeIntervalSinceReferenceDate];
          v160 = v159;
          if (v37 - v159 <= [v312 maxHiddenKnownNetworkSSIDAge])
          {
          }

          else
          {
            lastDiscoveredAt = [v309 lastDiscoveredAt];
            [lastDiscoveredAt timeIntervalSinceReferenceDate];
            v163 = v37 - v162 > [v312 maxHiddenKnownNetworkSSIDAge];

            if (v163)
            {
              goto LABEL_159;
            }
          }
        }

        if (v282)
        {
          v164 = orderedSet20;
        }

        else
        {
          v164 = orderedSet19;
        }

        [v164 addObject:networkName];
        v134 = "yes";
      }

      else
      {
LABEL_159:
        v134 = "no";
      }

      v135 = [MEMORY[0x1E695DFA8] set];
      if ([v309 isPasspoint])
      {
        domainName = [v309 domainName];

        if (domainName)
        {
          [v135 addObject:&unk_1F5BBC5E0];
        }

        nAIRealmNameList = [v309 NAIRealmNameList];
        v138 = [nAIRealmNameList count];

        if (v138)
        {
          [v135 addObject:&unk_1F5BBC5F8];
        }

        roamingConsortiumList = [v309 roamingConsortiumList];
        v140 = [roamingConsortiumList count];

        if (v140)
        {
          [v135 addObject:&unk_1F5BBC610];
        }

        cellularNetworkInfo = [v309 cellularNetworkInfo];
        v142 = [cellularNetworkInfo count];

        if (v142)
        {
          [v135 addObject:&unk_1F5BBC628];
        }

        [v135 addObject:&unk_1F5BBC640];
        allObjects = [v135 allObjects];
        [v267 addObjectsFromArray:allObjects];
      }

      v144 = CWFGetOSLog();
      if (v144)
      {
        v145 = CWFGetOSLog();
      }

      else
      {
        v145 = MEMORY[0x1E69E9C10];
        v146 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEBUG))
      {
        identifier7 = [v309 identifier];
        redactedForWiFi7 = [identifier7 redactedForWiFi];
        v149 = redactedForWiFi7;
        v341 = 138545666;
        v150 = "no";
        if (v282)
        {
          v150 = "yes";
        }

        v342 = redactedForWiFi7;
        v343 = 2082;
        v344 = v150;
        v345 = 2082;
        v346 = v134;
        v347 = 2114;
        v348 = orderedSet22;
        v349 = 2114;
        v350 = orderedSet23;
        v351 = 2114;
        v352 = orderedSet24;
        v353 = 2114;
        v354 = orderedSet26;
        v355 = 2114;
        v356 = orderedSet27;
        v357 = 2114;
        v358 = orderedSet28;
        v359 = 2114;
        v360 = v135;
        LODWORD(v259) = 102;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v145, 2, "[corewifi] AUTO-JOIN: Derived optimized channel/SSID list for '%{public}@' (nearby=%{public}s, directed=%{public}s, MRUChannelsForCurrentLocation=%{public}@, MRUChannelsForCurrentLocationExceedingMaxBSSCount=%{public}@, MRUChannelsForCurrentLocationExceedingMaxBSSAge=%{public}@, MRUChannels=%{public}@, MRUChannelsExceedingMaxBSSCount=%{public}@, MRUChannelsExceedingMaxBSSAge=%{public}@, anqpIDs=%{public}@)", &v341, v259);
      }

      v264 += v282 & 1;
      if (++v280 != v275)
      {
        continue;
      }

      break;
    }

    v165 = [v272 countByEnumeratingWithState:&v329 objects:v366 count:16];
    v275 = v165;
    if (v165)
    {
      continue;
    }

    break;
  }

  v166 = v264 > 1;
LABEL_197:

  if ([orderedSet15 count] || objc_msgSend(orderedSet16, "count") || objc_msgSend(orderedSet17, "count"))
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setDidUseLocationOptimizedChannelList:1];
  }

  v167 = selfCopy;
  objc_sync_enter(v167);
  parameters = [v167[19] parameters];
  mode = [parameters mode];

  objc_sync_exit(v167);
  LODWORD(parameters) = [v312 BSSChannelsOnly];
  array10 = [orderedSet15 array];
  [orderedSet10 addObjectsFromArray:array10];

  if (!parameters)
  {
    array11 = [orderedSet16 array];
    [orderedSet10 addObjectsFromArray:array11];

    array12 = [orderedSet17 array];
    [orderedSet10 addObjectsFromArray:array12];

    array13 = [orderedSet12 array];
    [orderedSet10 addObjectsFromArray:array13];

    array14 = [orderedSet13 array];
    [orderedSet10 addObjectsFromArray:array14];

    array15 = [orderedSet14 array];
    [orderedSet10 addObjectsFromArray:array15];
    goto LABEL_208;
  }

  array16 = [orderedSet12 array];
  [orderedSet10 addObjectsFromArray:array16];

  if (![orderedSet10 count])
  {
    array15 = [MEMORY[0x1E695DFA0] orderedSet];
    array17 = [orderedSet17 array];
    [array15 addObjectsFromArray:array17];

    array18 = [orderedSet14 array];
    [array15 addObjectsFromArray:array18];

    v172Array = [array15 array];
    v176 = [array15 count];
    if (v176 >= [v312 maxBSSChannelCount])
    {
      maxBSSChannelCount2 = [v312 maxBSSChannelCount];
    }

    else
    {
      maxBSSChannelCount2 = [array15 count];
    }

    v182 = [v172Array subarrayWithRange:{0, maxBSSChannelCount2}];
    [orderedSet10 addObjectsFromArray:v182];

LABEL_208:
  }

  if (([v312 BSSChannelsOnly] & 1) == 0)
  {
    array19 = [orderedSet array];
    [orderedSet11 addObjectsFromArray:array19];

    array20 = [orderedSet2 array];
    [orderedSet11 addObjectsFromArray:array20];

    array21 = [orderedSet3 array];
    [orderedSet11 addObjectsFromArray:array21];

    array22 = [orderedSet4 array];
    [orderedSet11 addObjectsFromArray:array22];

    if ([v312 include6GHzChannels])
    {
      if (_os_feature_enabled_impl())
      {
        array23 = [orderedSet5 array];
        [orderedSet11 addObjectsFromArray:array23];

        if (_os_feature_enabled_impl())
        {
          array24 = [orderedSet6 array];
          [orderedSet11 addObjectsFromArray:array24];
        }
      }
    }

    array25 = [orderedSet7 array];
    [orderedSet11 addObjectsFromArray:array25];

    [orderedSet11 minusOrderedSet:orderedSet10];
  }

  array26 = [orderedSet20 array];
  [orderedSet18 addObjectsFromArray:array26];

  array27 = [orderedSet19 array];
  [orderedSet18 addObjectsFromArray:array27];

  if (mode == 1 && v166)
  {
    v192 = CWFGetOSLog();
    if (v192)
    {
      v193 = CWFGetOSLog();
    }

    else
    {
      v193 = MEMORY[0x1E69E9C10];
      v194 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v193, OS_LOG_TYPE_DEFAULT))
    {
      v341 = 67109120;
      LODWORD(v342) = 4;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v193, 0, "[corewifi] AUTO-JOIN: Detected multiple nearby networks, configuring maxScanChannelCount=%d", &v341);
    }

    [v312 setMaxScanChannelCount:4];
    [v167[25] setDidDetectColocatedNetworkEnvironment:1];
  }

  array28 = [orderedSet10 array];
  v196 = [array28 copy];
  [v312 setRecentChannelList:v196];

  array29 = [orderedSet11 array];
  v198 = [array29 copy];
  [v312 setRemainingChannelList:v198];

  autoJoinParameters5 = [v312 autoJoinParameters];
  if ([autoJoinParameters5 trigger] != 32)
  {
    autoJoinParameters6 = [v312 autoJoinParameters];
    if ([autoJoinParameters6 trigger] == 47)
    {
      bSSChannelsOnly = [v312 BSSChannelsOnly];

      if ((bSSChannelsOnly & 1) == 0)
      {
        goto LABEL_265;
      }

      goto LABEL_227;
    }

    goto LABEL_263;
  }

  bSSChannelsOnly2 = [v312 BSSChannelsOnly];

  if (!bSSChannelsOnly2)
  {
    goto LABEL_265;
  }

LABEL_227:
  v203 = [orderedSet9 count];
  v204 = CWFGetOSLog();
  if (v204)
  {
    v205 = CWFGetOSLog();
  }

  else
  {
    v205 = MEMORY[0x1E69E9C10];
    v206 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
  {
    v341 = 134217984;
    v342 = v203;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v205, 0, "[corewifi] AUTO-JOIN: Number of preferred channels for CarPlay %lu", &v341);
  }

  if (v203 == 1)
  {
    autoJoinParameters5 = [orderedSet9 firstObject];
    v207 = CWFGetOSLog();
    if (v207)
    {
      v208 = CWFGetOSLog();
    }

    else
    {
      v208 = MEMORY[0x1E69E9C10];
      v209 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v208, OS_LOG_TYPE_DEFAULT))
    {
      channel4 = [autoJoinParameters5 channel];
      v341 = 134217984;
      v342 = channel4;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v208, 0, "[corewifi] AUTO-JOIN: Preferred channel for CarPlay %lu", &v341);
    }

    if ([autoJoinParameters5 band] == 2)
    {
      if (![v312 includeAdjacent5GHzChannel])
      {
        goto LABEL_262;
      }

      channel5 = [autoJoinParameters5 channel];
      v212 = 4;
      if (channel5 > 148)
      {
        if (channel5 > 156)
        {
          if (channel5 != 157)
          {
            if (channel5 != 161)
            {
              goto LABEL_262;
            }

            goto LABEL_254;
          }

LABEL_255:
          v213 = [autoJoinParameters5 channel] + v212;
          if (v213)
          {
            v214 = [autoJoinParameters5 copy];
            [v214 setChannel:v213];
            [orderedSet9 addObject:v214];
            v215 = CWFGetOSLog();
            if (v215)
            {
              v216 = CWFGetOSLog();
            }

            else
            {
              v216 = MEMORY[0x1E69E9C10];
              v217 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v216, OS_LOG_TYPE_DEFAULT))
            {
              v341 = 138543362;
              v342 = v214;
              LODWORD(v259) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v216, 0, "[corewifi] AUTO-JOIN: Adding adjacent 5GHz channel (%{public}@) for CarPlay network", &v341, v259);
            }
          }
        }

        else
        {
          if (channel5 == 149)
          {
            goto LABEL_255;
          }

          if (channel5 == 153)
          {
            goto LABEL_254;
          }
        }
      }

      else
      {
        if (channel5 <= 43)
        {
          if (channel5 != 36)
          {
            if (channel5 != 40)
            {
              goto LABEL_262;
            }

LABEL_254:
            v212 = -4;
          }

          goto LABEL_255;
        }

        if (channel5 == 44)
        {
          goto LABEL_255;
        }

        if (channel5 == 48)
        {
          goto LABEL_254;
        }
      }

LABEL_262:
      autoJoinParameters6 = [orderedSet9 array];
      v218 = [autoJoinParameters6 copy];
      [v312 setRecentChannelList:v218];

LABEL_263:
    }
  }

LABEL_265:
  if (([v312 passiveScan] & 1) == 0)
  {
    if ([orderedSet18 count])
    {
      array30 = [orderedSet18 array];
      [v312 setSSIDList:array30];
    }

    else
    {
      [v312 setSSIDList:0];
    }
  }

  if ([v267 count])
  {
    allObjects2 = [v267 allObjects];
    [v312 setANQPElementIDList:allObjects2];
  }

  else
  {
    [v312 setANQPElementIDList:0];
  }

  channelList = [v167[25] channelList];
  v222 = channelList == 0;

  if (v222)
  {
    array31 = [orderedSet9 array];
    v225 = v167[25];
    v224 = v167 + 25;
    [v225 setPreferredChannelList:array31];

    recentChannelList = [v312 recentChannelList];
    [*v224 setRecentChannelList:recentChannelList];

    remainingChannelList = [v312 remainingChannelList];
    [*v224 setRemainingChannelList:remainingChannelList];

    recentChannelList2 = [v312 recentChannelList];
    remainingChannelList2 = [v312 remainingChannelList];
    v230 = [recentChannelList2 arrayByAddingObjectsFromArray:remainingChannelList2];
    [*v224 setChannelList:v230];
  }

  v231 = CWFGetOSLog();
  if (v231)
  {
    v232 = CWFGetOSLog();
  }

  else
  {
    v232 = MEMORY[0x1E69E9C10];
    v233 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
  {
    sSIDList = [v312 SSIDList];
    v235 = [sSIDList count];
    sSIDList2 = [v312 SSIDList];
    v237 = [sSIDList2 componentsJoinedByString:{@", "}];
    v341 = 134218242;
    v342 = v235;
    v343 = 2114;
    v344 = v237;
    LODWORD(v259) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v232, 0, "[corewifi] AUTO-JOIN: Hidden SSIDs (%lu) : %{public}@", &v341, v259);
  }

  v238 = CWFGetOSLog();
  if (v238)
  {
    v239 = CWFGetOSLog();
  }

  else
  {
    v239 = MEMORY[0x1E69E9C10];
    v240 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v239, OS_LOG_TYPE_DEFAULT))
  {
    aNQPElementIDList = [v312 ANQPElementIDList];
    v242 = [aNQPElementIDList count];
    aNQPElementIDList2 = [v312 ANQPElementIDList];
    v244 = [aNQPElementIDList2 componentsJoinedByString:{@", "}];
    v341 = 134218242;
    v342 = v242;
    v343 = 2114;
    v344 = v244;
    LODWORD(v259) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v239, 0, "[corewifi] AUTO-JOIN: ANQP Element IDs (%lu) : %{public}@", &v341, v259);
  }

  v245 = CWFGetOSLog();
  if (v245)
  {
    v246 = CWFGetOSLog();
  }

  else
  {
    v246 = MEMORY[0x1E69E9C10];
    v247 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
  {
    recentChannelList3 = [v312 recentChannelList];
    v249 = [recentChannelList3 count];
    recentChannelList4 = [v312 recentChannelList];
    v251 = [recentChannelList4 componentsJoinedByString:{@", "}];
    v341 = 134218242;
    v342 = v249;
    v343 = 2114;
    v344 = v251;
    LODWORD(v259) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v246, 0, "[corewifi] AUTO-JOIN: Recent Channels (%lu) : %{public}@", &v341, v259);
  }

  v252 = CWFGetOSLog();
  if (v252)
  {
    v253 = CWFGetOSLog();
  }

  else
  {
    v253 = MEMORY[0x1E69E9C10];
    v254 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
  {
    remainingChannelList3 = [v312 remainingChannelList];
    v256 = [remainingChannelList3 count];
    remainingChannelList4 = [v312 remainingChannelList];
    v258 = [remainingChannelList4 componentsJoinedByString:{@", "}];
    v341 = 134218242;
    v342 = v256;
    v343 = 2114;
    v344 = v258;
    LODWORD(v259) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v253, 0, "[corewifi] AUTO-JOIN: Remaining Channels (%lu) : %{public}@", &v341, v259);
  }

  objc_autoreleasePoolPop(context);
}

- (id)__cachedScanResultsWithChannelList:(id)list context:(id)context
{
  contextCopy = context;
  listCopy = list;
  LOWORD(v19) = 0;
  v8 = -[CWFAutoJoinManager __performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:](self, "__performScanWithChannelList:SSIDList:passive:dwellTime:maxCacheAge:cacheOnly:isPreAssociationScan:checkForKnownNetworks:error:", listCopy, 0, 0, 0, [contextCopy maxScanCacheAge], 1, v19, 0);

  if ([v8 count])
  {
    v9 = [MEMORY[0x1E695DFA8] set];
    aNQPElementIDList = [contextCopy ANQPElementIDList];
    v11 = [aNQPElementIDList count];

    if (v11)
    {
      v12 = [(CWFAutoJoinManager *)self __passpointScanResults:v8];
      if ([v12 count])
      {
        aNQPElementIDList2 = [contextCopy ANQPElementIDList];
        maxANQPCacheAge = [contextCopy maxANQPCacheAge];
        autoJoinParameters = [contextCopy autoJoinParameters];
        v16 = -[CWFAutoJoinManager __performGASQueryWithScanResults:ANQPElementIDList:maxCacheAge:cacheOnly:error:](self, "__performGASQueryWithScanResults:ANQPElementIDList:maxCacheAge:cacheOnly:error:", v12, aNQPElementIDList2, maxANQPCacheAge, [autoJoinParameters mode] == 3, 0);

        if (v16)
        {
          [v9 addObjectsFromArray:v16];
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    [v9 addObjectsFromArray:v8];
  }

  else
  {
    v9 = 0;
  }

  allObjects = [v9 allObjects];

  return allObjects;
}

- (BOOL)__hasJoinedAnyKnownNetworkSinceBoot
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_hasJoinedAnyKnownNetworkSinceBoot)
  {
    hasJoinedAnyKnownNetworkSinceBoot = 1;
  }

  else
  {
    v4 = CWFGetBootTime();
    knownNetworks = selfCopy->_knownNetworks;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = sub_1E0C7BD14;
    v8[3] = &unk_1E86E77A8;
    v6 = v4;
    v9 = v6;
    v10 = selfCopy;
    [(NSSet *)knownNetworks enumerateObjectsUsingBlock:v8];

    hasJoinedAnyKnownNetworkSinceBoot = selfCopy->_hasJoinedAnyKnownNetworkSinceBoot;
  }

  objc_sync_exit(selfCopy);

  return hasJoinedAnyKnownNetworkSinceBoot & 1;
}

- (id)__performPreAssociationScanWithContext:(id)context network:(id)network
{
  v240[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  networkCopy = network;
  matchingKnownNetworkProfile = [networkCopy matchingKnownNetworkProfile];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  selfCopy = self;
  supportedChannels = [(CWFAutoJoinManager *)self supportedChannels];
  v174 = v8;
  v240[0] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v240 count:1];
  v11 = [supportedChannels sortedArrayUsingDescriptors:v10];

  orderedSet3 = [MEMORY[0x1E695DFA0] orderedSet];
  v212 = 0u;
  v213 = 0u;
  v214 = 0u;
  v215 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v212 objects:v239 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v213;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v213 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v212 + 1) + 8 * i);
        v17 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v16];
        [orderedSet addObject:v17];
        if ([v16 is6GHzPSC])
        {
          [orderedSet3 addObject:v17];
        }

        if (([v16 is6GHz] & 1) == 0)
        {
          [orderedSet2 addObject:v17];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v212 objects:v239 count:16];
    }

    while (v13);
  }

  orderedSet4 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet5 = [MEMORY[0x1E695DFA0] orderedSet];
  orderedSet6 = [MEMORY[0x1E695DFA0] orderedSet];
  v18 = [MEMORY[0x1E695DFA8] set];
  location = [(CWFAutoJoinManager *)selfCopy location];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v21 = v20;
  channel = [networkCopy channel];
  v23 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel];

  scanChannels = [(CWFAutoJoinMetric *)selfCopy->_metric scanChannels];
  [v18 addObjectsFromArray:scanChannels];

  preAssociationScanChannels = [(CWFAutoJoinMetric *)selfCopy->_metric preAssociationScanChannels];
  [v18 addObjectsFromArray:preAssociationScanChannels];

  followup6GHzScanChannels = [(CWFAutoJoinMetric *)selfCopy->_metric followup6GHzScanChannels];
  v177 = v18;
  [v18 addObjectsFromArray:followup6GHzScanChannels];

  v27 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - selfCopy->_beginTimestamp) / 0xF4240;
  v190 = contextCopy;
  v191 = location;
  v175 = v23;
  v171 = v27;
  if (v23 && [networkCopy age] > v27 && (objc_msgSend(v18, "containsObject:", v23) & 1) == 0)
  {
    v102 = MEMORY[0x1E696AEC0];
    shortSSID = [networkCopy shortSSID];
    bSSID = [networkCopy BSSID];
    channel2 = [networkCopy channel];
    v106 = [v102 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel2, "channel")];

    v107 = [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap objectForKeyedSubscript:v106];
    v108 = [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap objectForKeyedSubscript:v106];
    if (!(v107 | v108))
    {
      v109 = CWFGetOSLog();
      if (v109)
      {
        v110 = CWFGetOSLog();
      }

      else
      {
        v110 = MEMORY[0x1E69E9C10];
        v165 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v110, OS_LOG_TYPE_DEFAULT))
      {
        identifier = [matchingKnownNetworkProfile identifier];
        redactedForWiFi = [identifier redactedForWiFi];
        v168 = [networkCopy age];
        v216 = 138544130;
        v217 = v175;
        v218 = 2114;
        v219 = redactedForWiFi;
        v220 = 2048;
        v221 = v168;
        v222 = 2048;
        v223 = v171;
        LODWORD(v170) = 42;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v110, 0, "[corewifi] AUTO-JOIN: Adding channel (%{public}@) for join candidate '%{public}@' discovered using scan cache (cacheAge=%lums, autoJoinDuration=%llums)", &v216, v170);
      }

      [orderedSet4 addObject:v175];
      location = v191;
    }

    v176 = 0;
    contextCopy = v190;
  }

  else
  {
    v176 = [MEMORY[0x1E695DFA0] orderedSetWithObject:networkCopy];
  }

  bSSList = [matchingKnownNetworkProfile BSSList];
  v172 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastAssociatedAt" ascending:0];
  v238 = v172;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v238 count:1];
  v173 = bSSList;
  v30 = [bSSList sortedArrayUsingDescriptors:v29];

  v210 = 0u;
  v211 = 0u;
  v208 = 0u;
  v209 = 0u;
  v186 = v30;
  v193 = [v186 countByEnumeratingWithState:&v208 objects:v237 count:16];
  if (v193)
  {
    v201 = 0;
    v180 = 0;
    v192 = *v209;
    v31 = orderedSet;
    while (1)
    {
      v32 = 0;
      do
      {
        if (*v209 != v192)
        {
          objc_enumerationMutation(v186);
        }

        v33 = *(*(&v208 + 1) + 8 * v32);
        if (![contextCopy maxBSSChannelAge] || (objc_msgSend(v33, "lastAssociatedAt"), v34 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v34, "timeIntervalSinceReferenceDate"), v36 = v21 - v35, v37 = objc_msgSend(contextCopy, "maxBSSChannelAge"), v34, v36 <= v37))
        {
          if ([contextCopy maxBSSChannelCount] && v201 >= objc_msgSend(contextCopy, "maxBSSChannelCount"))
          {
            goto LABEL_94;
          }

          location2 = [v33 location];
          v39 = 0;
          v197 = location2;
          if (location && location2)
          {
            [location horizontalAccuracy];
            if (v40 >= 0.0 && ([location horizontalAccuracy], v42 = v41, objc_msgSend(contextCopy, "minBSSLocationAccuracy"), v42 <= v43) && (objc_msgSend(v197, "horizontalAccuracy"), v44 >= 0.0) && (objc_msgSend(v197, "horizontalAccuracy"), v46 = v45, objc_msgSend(contextCopy, "minBSSLocationAccuracy"), v46 <= v47) && (objc_msgSend(v197, "distanceFromLocation:", location), v49 = v48, objc_msgSend(contextCopy, "maxBSSLocationDistance"), v49 <= v50))
            {
              v39 = 1;
              v180 = 1;
            }

            else
            {
              v39 = 0;
            }
          }

          channel3 = [v33 channel];
          v52 = [channel3 copy];

          v196 = v52;
          if (v52)
          {
            array = [MEMORY[0x1E695DF70] array];
            v54 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v52];
            v55 = v54;
            if ([v54 is6GHz])
            {
              colocated2GHzRNRChannel = [v33 colocated2GHzRNRChannel];
              v194 = colocated2GHzRNRChannel;
              if (colocated2GHzRNRChannel)
              {
                v183 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated2GHzRNRChannel];
                v57 = CWFGetOSLog();
                if (v57)
                {
                  v58 = CWFGetOSLog();
                }

                else
                {
                  v58 = MEMORY[0x1E69E9C10];
                  v59 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
                {
                  identifier2 = [matchingKnownNetworkProfile identifier];
                  redactedForWiFi2 = [identifier2 redactedForWiFi];
                  v216 = 138543874;
                  v217 = v183;
                  v218 = 2114;
                  v219 = v55;
                  v220 = 2114;
                  v221 = redactedForWiFi2;
                  LODWORD(v170) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v58, 0, "[corewifi] AUTO-JOIN: Adding 2GHz RNR channel (%{public}@) instead of operating channel (%{public}@) for 6GHz BSS '%{public}@'", &v216, v170);

                  v54 = v55;
                }

                [array addObject:v183];
                colocated2GHzRNRChannel = v194;
              }

              colocated5GHzRNRChannel = [v33 colocated5GHzRNRChannel];
              if (colocated5GHzRNRChannel)
              {
                v184 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:colocated5GHzRNRChannel];
                v63 = CWFGetOSLog();
                if (v63)
                {
                  v64 = CWFGetOSLog();
                }

                else
                {
                  v64 = MEMORY[0x1E69E9C10];
                  v65 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
                {
                  identifier3 = [matchingKnownNetworkProfile identifier];
                  redactedForWiFi3 = [identifier3 redactedForWiFi];
                  v216 = 138543874;
                  v217 = v184;
                  v218 = 2114;
                  v219 = v55;
                  v220 = 2114;
                  v221 = redactedForWiFi3;
                  LODWORD(v170) = 32;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v64, 0, "[corewifi] AUTO-JOIN: Adding 5GHz RNR channel (%{public}@) instead of operating channel (%{public}@) for 6GHz BSS '%{public}@'", &v216, v170);

                  v54 = v55;
                }

                [array addObject:v184];
                colocated2GHzRNRChannel = v194;
              }
            }

            else
            {
              [array addObject:v54];
            }

            v195 = v32;
            v206 = 0u;
            v207 = 0u;
            v204 = 0u;
            v205 = 0u;
            v68 = array;
            v69 = [v68 countByEnumeratingWithState:&v204 objects:v236 count:16];
            if (v69)
            {
              v70 = v69;
              v71 = *v205;
              v72 = orderedSet5;
              if (v39)
              {
                v72 = orderedSet6;
              }

              v198 = v72;
              do
              {
                v73 = 0;
                do
                {
                  if (*v205 != v71)
                  {
                    objc_enumerationMutation(v68);
                  }

                  v74 = *(*(&v204 + 1) + 8 * v73);
                  if (![v31 containsObject:v74])
                  {
                    v77 = CWFGetOSLog();
                    if (v77)
                    {
                      v78 = CWFGetOSLog();
                    }

                    else
                    {
                      v78 = MEMORY[0x1E69E9C10];
                      v79 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                    {
                      identifier4 = [matchingKnownNetworkProfile identifier];
                      [identifier4 redactedForWiFi];
                      v82 = v81 = matchingKnownNetworkProfile;
                      v216 = 138543618;
                      v217 = v82;
                      v218 = 2114;
                      v219 = v74;
                      LODWORD(v170) = 22;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v78, 0, "[corewifi] AUTO-JOIN: BSS channel for '%{public}@' is not supported, skipping (%{public}@)", &v216, v170);

                      matchingKnownNetworkProfile = v81;
                      v31 = orderedSet;
                    }

                    goto LABEL_71;
                  }

                  if ([v74 is6GHz])
                  {
                    if ((_os_feature_enabled_impl() & 1) == 0)
                    {
                      v83 = CWFGetOSLog();
                      if (v83)
                      {
                        v78 = CWFGetOSLog();
                      }

                      else
                      {
                        v78 = MEMORY[0x1E69E9C10];
                        v85 = MEMORY[0x1E69E9C10];
                      }

                      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_71;
                      }

                      identifier5 = [matchingKnownNetworkProfile identifier];
                      redactedForWiFi4 = [identifier5 redactedForWiFi];
                      v216 = 138543618;
                      v217 = redactedForWiFi4;
                      v218 = 2114;
                      v219 = v74;
                      LODWORD(v170) = 22;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v78, 0, "[corewifi] AUTO-JOIN: Scanning 6GHz channel for '%{public}@' is not enabled, skipping (%{public}@)", &v216, v170);
LABEL_84:

                      goto LABEL_71;
                    }

                    if ((_os_feature_enabled_impl() & 1) == 0 && ([v74 is6GHzPSC] & 1) == 0)
                    {
                      v84 = CWFGetOSLog();
                      if (v84)
                      {
                        v78 = CWFGetOSLog();
                      }

                      else
                      {
                        v78 = MEMORY[0x1E69E9C10];
                        v87 = MEMORY[0x1E69E9C10];
                      }

                      if (!os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                      {
                        goto LABEL_71;
                      }

                      identifier5 = [matchingKnownNetworkProfile identifier];
                      redactedForWiFi4 = [identifier5 redactedForWiFi];
                      v216 = 138543618;
                      v217 = redactedForWiFi4;
                      v218 = 2114;
                      v219 = v74;
                      LODWORD(v170) = 22;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v78, 0, "[corewifi] AUTO-JOIN: Scanning 6GHz non-PSC channel for '%{public}@' is not enabled, skipping (%{public}@)", &v216, v170);
                      goto LABEL_84;
                    }
                  }

                  scanChannels2 = [(CWFAutoJoinMetric *)selfCopy->_metric scanChannels];
                  v76 = [scanChannels2 containsObject:v74];

                  if (v76)
                  {
                    v54 = v55;
                    goto LABEL_72;
                  }

                  v78 = v198;
                  [v78 addObject:v74];
                  ++v201;
LABEL_71:
                  v54 = v55;

LABEL_72:
                  ++v73;
                }

                while (v70 != v73);
                v88 = [v68 countByEnumeratingWithState:&v204 objects:v236 count:16];
                v70 = v88;
              }

              while (v88);
            }

            contextCopy = v190;
            location = v191;
            v32 = v195;
          }
        }

        ++v32;
      }

      while (v32 != v193);
      v89 = [v186 countByEnumeratingWithState:&v208 objects:v237 count:16];
      v193 = v89;
      if (!v89)
      {
        goto LABEL_94;
      }
    }
  }

  v180 = 0;
  v31 = orderedSet;
LABEL_94:

  array2 = [orderedSet6 array];
  [orderedSet4 addObjectsFromArray:array2];

  array3 = [orderedSet5 array];
  [orderedSet4 addObjectsFromArray:array3];

  networkName = [matchingKnownNetworkProfile networkName];
  if (!networkName || ([matchingKnownNetworkProfile isPasspoint] & 1) != 0)
  {
    goto LABEL_96;
  }

  if ([matchingKnownNetworkProfile hiddenState] == 2)
  {
    wasHiddenBefore = [matchingKnownNetworkProfile wasHiddenBefore];
    if (!wasHiddenBefore)
    {
      goto LABEL_96;
    }

    v95 = wasHiddenBefore;
    wasHiddenBefore2 = [matchingKnownNetworkProfile wasHiddenBefore];
    [wasHiddenBefore2 timeIntervalSinceNow];
    v98 = v97;
    wasHiddenBefore3 = [matchingKnownNetworkProfile wasHiddenBefore];
    [wasHiddenBefore3 timeIntervalSinceNow];
    v101 = v100;

    if (v98 < 0.0)
    {
      if (v101 > -604800.0)
      {
        goto LABEL_106;
      }

LABEL_96:
      v93 = 0;
      goto LABEL_107;
    }

    if (v101 >= 604800.0)
    {
      goto LABEL_96;
    }
  }

LABEL_106:
  v93 = [MEMORY[0x1E695DEC8] arrayWithObject:networkName];
LABEL_107:
  v111 = CWFGetOSLog();
  if (v111)
  {
    v112 = CWFGetOSLog();
  }

  else
  {
    v112 = MEMORY[0x1E69E9C10];
    v113 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
  {
    identifier6 = [matchingKnownNetworkProfile identifier];
    redactedForWiFi5 = [identifier6 redactedForWiFi];
    v115 = "no";
    v202 = networkName;
    if (v180)
    {
      v116 = "yes";
    }

    else
    {
      v116 = "no";
    }

    if ([v93 count])
    {
      v115 = "yes";
    }

    v117 = v93;
    maxBSSChannelAge = [contextCopy maxBSSChannelAge];
    [contextCopy minBSSLocationAccuracy];
    v120 = v119;
    [contextCopy maxBSSLocationDistance];
    v122 = v121;
    maxBSSChannelCount = [contextCopy maxBSSChannelCount];
    v124 = [location description];
    [v124 redactedSensitiveContentForWiFi];
    v126 = v125 = matchingKnownNetworkProfile;
    v216 = 138545666;
    v217 = redactedForWiFi5;
    v218 = 2082;
    v219 = v116;
    v31 = orderedSet;
    v220 = 2082;
    v221 = v115;
    v222 = 2114;
    v223 = orderedSet6;
    v224 = 2114;
    v225 = orderedSet5;
    v226 = 2048;
    v227 = maxBSSChannelAge;
    v93 = v117;
    v228 = 2048;
    v229 = v120;
    v230 = 2048;
    v231 = v122;
    v232 = 2048;
    v233 = maxBSSChannelCount;
    contextCopy = v190;
    v234 = 2114;
    v235 = v126;
    LODWORD(v170) = 102;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v112, 0, "[corewifi] AUTO-JOIN: Derived pre-association scan channel list for '%{public}@' (nearby=%{public}s, addedToSSIDList=%{public}s, locationChannels=%{public}@, recentChannels=%{public}@, maxBSSChannelAge=%lu, minBSSLocationAccuracy=%f, maxBSSLocationDistance=%f, maxBSSChannelCount=%lu, location=%{public}@)", &v216, v170);

    matchingKnownNetworkProfile = v125;
    networkName = v202;

    location = v191;
  }

  autoJoinParameters = [contextCopy autoJoinParameters];
  mode = [autoJoinParameters mode];

  if (mode == 2)
  {
    v129 = CWFGetOSLog();
    if (v129)
    {
      v130 = CWFGetOSLog();
    }

    else
    {
      v130 = MEMORY[0x1E69E9C10];
      v131 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v130, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v216) = 0;
      LODWORD(v170) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v130, 0, "[corewifi] AUTO-JOIN: Including remaining 6GHz PSC channels for pre-association scan", &v216, v170);
    }

    array4 = [orderedSet3 array];
    [orderedSet4 addObjectsFromArray:array4];
  }

  v133 = networkCopy;
  matchingKnownNetworkProfile2 = [networkCopy matchingKnownNetworkProfile];
  lastJoinedBySystemAt = [matchingKnownNetworkProfile2 lastJoinedBySystemAt];
  if (lastJoinedBySystemAt)
  {
  }

  else
  {
    matchingKnownNetworkProfile3 = [networkCopy matchingKnownNetworkProfile];
    addReason = [matchingKnownNetworkProfile3 addReason];

    v133 = networkCopy;
    if (addReason != 8)
    {
      goto LABEL_134;
    }

    v138 = CWFGetOSLog();
    if (v138)
    {
      v139 = CWFGetOSLog();
    }

    else
    {
      v139 = MEMORY[0x1E69E9C10];
      v140 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v139, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v216) = 0;
      LODWORD(v170) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v139, 0, "[corewifi] AUTO-JOIN: Including all legacy band channels for pre-association scan", &v216, v170);
    }

    matchingKnownNetworkProfile2 = [orderedSet2 array];
    [orderedSet4 addObjectsFromArray:matchingKnownNetworkProfile2];
    v133 = networkCopy;
  }

LABEL_134:
  channel4 = [v133 channel];
  if ([channel4 is6GHz])
  {
    matchingKnownNetworkProfile4 = [v133 matchingKnownNetworkProfile];
    lastJoinedAt = [matchingKnownNetworkProfile4 lastJoinedAt];

    v133 = networkCopy;
    if (!lastJoinedAt)
    {
      v144 = CWFGetOSLog();
      if (v144)
      {
        v145 = CWFGetOSLog();
      }

      else
      {
        v145 = MEMORY[0x1E69E9C10];
        v146 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v216) = 0;
        LODWORD(v170) = 2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v145, 0, "[corewifi] AUTO-JOIN: Including all channels for pre-association scan because we have never joined this 6GHz candidate before", &v216, v170);
      }

      array5 = [orderedSet2 array];
      [orderedSet4 addObjectsFromArray:array5];

      array6 = [orderedSet3 array];
      [orderedSet4 addObjectsFromArray:array6];

      [contextCopy setDidForceAllRemainingChannels:1];
      v133 = networkCopy;
    }
  }

  else
  {
  }

  v149 = [orderedSet4 count];
  [orderedSet4 minusSet:v177];
  if ([orderedSet4 count])
  {
    v150 = CWFGetOSLog();
    if (v150)
    {
      v151 = CWFGetOSLog();
    }

    else
    {
      v151 = MEMORY[0x1E69E9C10];
      v155 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v216) = 0;
      LODWORD(v170) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v151, 0, "[corewifi] AUTO-JOIN: Performing pre-association scan", &v216, v170);
    }

    array7 = [orderedSet4 array];
    BYTE1(v169) = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
    LOBYTE(v169) = 1;
    v154 = [(CWFAutoJoinManager *)selfCopy __performScanWithChannelList:array7 SSIDList:v93 passive:0 dwellTime:0 maxCacheAge:v171 cacheOnly:0 isPreAssociationScan:v169 checkForKnownNetworks:0 error:?];

    if (v154)
    {
      orderedSet7 = v176;
      if (!v176)
      {
        orderedSet7 = [MEMORY[0x1E695DFA0] orderedSet];
      }

      [orderedSet7 removeObjectsInArray:v154];
      v176 = orderedSet7;
      [orderedSet7 addObjectsFromArray:v154];
      autoJoinParameters2 = [contextCopy autoJoinParameters];
      if ([autoJoinParameters2 trigger] != 54)
      {
        autoJoinParameters3 = [contextCopy autoJoinParameters];
        trigger = [autoJoinParameters3 trigger];

        if (trigger == 55)
        {
          v133 = networkCopy;
          location = v191;
          goto LABEL_170;
        }

        autoJoinParameters2 = [(CWFAutoJoinManager *)selfCopy __perform6GHzFollowupDiscoveryWithScanResults:v154 SSIDList:v93 dwellTime:0 context:contextCopy error:0];
        location = v191;
        if (autoJoinParameters2)
        {
          [orderedSet7 removeObjectsInArray:autoJoinParameters2];
          [orderedSet7 addObjectsFromArray:autoJoinParameters2];
        }
      }
    }

    v133 = networkCopy;
  }

  else
  {
    v152 = CWFGetOSLog();
    v153 = v152;
    if (v149)
    {
      if (v152)
      {
        v154 = CWFGetOSLog();
      }

      else
      {
        v154 = MEMORY[0x1E69E9C10];
        v161 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v216) = 0;
        LODWORD(v170) = 2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v154, 0, "[corewifi] AUTO-JOIN: All pre-association scan channels have already been scanned", &v216, v170);
      }
    }

    else
    {
      if (v152)
      {
        v154 = CWFGetOSLog();
      }

      else
      {
        v154 = MEMORY[0x1E69E9C10];
        v162 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v216) = 0;
        LODWORD(v170) = 2;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v154, 0, "[corewifi] AUTO-JOIN: No pre-association scan channels", &v216, v170);
      }
    }
  }

LABEL_170:

  array8 = [v176 array];

  return array8;
}

- (BOOL)__discoverKnownNetworksWithContext:(id)context error:(id *)error
{
  v148 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v140 = 134218752;
    maxScanCycles = [contextCopy maxScanCycles];
    v142 = 2048;
    maxScanChannelCount = [contextCopy maxScanChannelCount];
    v144 = 2048;
    maxScanSSIDCount = [contextCopy maxScanSSIDCount];
    v146 = 2048;
    minRSSI = [contextCopy minRSSI];
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 2, "[corewifi] AUTO-JOIN: Discovering known networks (maxScanCycles=%lu, maxScanChannelCount=%lu, maxScanSSIDCount=%lu, minRSSI=%ld)", &v140, 42, v107, v108);
  }

  autoJoinParameters = [contextCopy autoJoinParameters];
  v137 = 0;
  v10 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](self, "__allowAutoJoinWithTrigger:error:", [autoJoinParameters trigger], &v137);
  v11 = v137;

  if (!v10)
  {
    array2 = 0;
    array = 0;
    v21 = 0;
    v102 = 0;
    v12 = 0;
    v16 = 0;
    v35 = 0;
    errorCopy2 = error;
    if (error)
    {
      goto LABEL_115;
    }

    goto LABEL_117;
  }

  context = objc_autoreleasePoolPush();
  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"channel" ascending:1];
  supportedChannels = [(CWFAutoJoinManager *)self supportedChannels];
  v139 = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v139 count:1];
  v15 = [supportedChannels sortedArrayUsingDescriptors:v14];

  [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
  v112 = v15;
  if ([contextCopy cacheOnly])
  {
    v16 = [(CWFAutoJoinManager *)self __cachedScanResultsWithChannelList:v15 context:contextCopy];
    if ([v16 count])
    {
      v136 = v11;
      v17 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v16 allowPreAssociationScan:[(CWFAutoJoinManager *)self __shouldAllowPreAssocScan] context:contextCopy error:&v136];
      v18 = v136;

      if (v17)
      {
        array2 = 0;
        array = 0;
        v21 = 0;
        v35 = 1;
        v11 = v18;
        goto LABEL_114;
      }

      v11 = v18;
    }
  }

  else
  {
    v16 = 0;
  }

  [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
  if ([contextCopy cacheOnly])
  {
    array2 = 0;
    array = 0;
    v21 = 0;
    v35 = 0;
    goto LABEL_114;
  }

  v109 = v16;
  v110 = v12;
  v19 = MEMORY[0x1E695DF70];
  recentChannelList = [contextCopy recentChannelList];
  v21 = [v19 arrayWithArray:recentChannelList];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v132 = 0u;
  v133 = 0u;
  v134 = 0u;
  v135 = 0u;
  remainingChannelList = [contextCopy remainingChannelList];
  v23 = [remainingChannelList countByEnumeratingWithState:&v132 objects:v138 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v133;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v133 != v25)
        {
          objc_enumerationMutation(remainingChannelList);
        }

        v27 = *(*(&v132 + 1) + 8 * i);
        if ([v27 is2GHz])
        {
          v28 = array;
        }

        else
        {
          v28 = array2;
        }

        [v28 addObject:v27];
      }

      v24 = [remainingChannelList countByEnumeratingWithState:&v132 objects:v138 count:16];
    }

    while (v24);
  }

  [v21 addObjectsFromArray:array];
  [v21 addObjectsFromArray:array2];
  v29 = 0;
  v116 = v21;
  while (2)
  {
    sSIDList = [contextCopy SSIDList];
    sSIDList2 = [contextCopy SSIDList];
    v32 = [sSIDList2 count] - v29;
    maxScanSSIDCount2 = [contextCopy maxScanSSIDCount];
    if (v32 >= maxScanSSIDCount2)
    {
      maxScanSSIDCount3 = [contextCopy maxScanSSIDCount];
    }

    else
    {
      sSIDList3 = [contextCopy SSIDList];
      maxScanSSIDCount3 = [sSIDList3 count] - v29;
    }

    v117 = [sSIDList subarrayWithRange:{v29, maxScanSSIDCount3}];
    if (v32 < maxScanSSIDCount2)
    {
    }

    v122 = 0;
    v35 = 0;
    v115 = [v117 count] + v29;
    LOBYTE(v36) = 1;
    while (1)
    {
      v37 = v35 | (v122 >= [v21 count]);
      if ((v37 & 1) != 0 || (v36 & 1) == 0)
      {
        LOBYTE(v36) = v36 & v37;
        goto LABEL_107;
      }

      autoJoinParameters2 = [contextCopy autoJoinParameters];
      trigger = [autoJoinParameters2 trigger];
      v131 = v11;
      v36 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger error:&v131];
      v40 = v131;

      if (!v36)
      {
        break;
      }

      [v21 count];
      recentChannelList2 = [contextCopy recentChannelList];
      if (v122 >= [recentChannelList2 count])
      {
      }

      else
      {
        autoJoinParameters3 = [contextCopy autoJoinParameters];
        mode = [autoJoinParameters3 mode];

        if (mode != 2)
        {
          [contextCopy maxScanChannelCount];
          recentChannelList3 = [contextCopy recentChannelList];
          [recentChannelList3 count];

          v119 = 0;
          goto LABEL_53;
        }
      }

      if (([contextCopy alwaysIncludeRemainingNon2GHzChannels] & 1) != 0 || (!objc_msgSend(contextCopy, "skipRemainingNon2GHzChannelsUnlessKnownNetworkFound") || self->_didDiscoverKnownNetworks) && self->_didDiscoverBSS)
      {
        v45 = CWFGetOSLog();
        if (v45)
        {
          v46 = CWFGetOSLog();
        }

        else
        {
          v46 = MEMORY[0x1E69E9C10];
          v49 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v140) = 0;
          LODWORD(v106) = 2;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v46, 0, "[corewifi] AUTO-JOIN: Will scan all remaining channels", &v140, v106);
        }

        [(CWFAutoJoinMetric *)self->_metric setDidIncludeRemainingNon2GHzChannels:1];
        v119 = 0;
      }

      else
      {
        v47 = CWFGetOSLog();
        if (v47)
        {
          v48 = CWFGetOSLog();
        }

        else
        {
          v48 = MEMORY[0x1E69E9C10];
          v50 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v140) = 0;
          LODWORD(v106) = 2;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v48, 0, "[corewifi] AUTO-JOIN: Will only scan remaining non-2GHz channels if we discover at least 1 network", &v140, v106);
        }

        recentChannelList4 = [contextCopy recentChannelList];
        [recentChannelList4 count];
        [array count];

        v119 = 1;
      }

LABEL_53:
      orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
      v53 = [v21 subarrayWithRange:?];
      v54 = [v53 count];
      maxScanCacheAge = [contextCopy maxScanCacheAge];
      if ([contextCopy useCacheForPreviouslyScannedChannels])
      {
        maxScanCacheAge += (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - self->_beginTimestamp) / 0xF4240;
      }

      passiveScan = [contextCopy passiveScan];
      dwellTime = [contextCopy dwellTime];
      skipRemainingNon2GHzChannelsUnlessKnownNetworkFound = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
      v130 = 0;
      BYTE1(v105) = skipRemainingNon2GHzChannelsUnlessKnownNetworkFound;
      LOBYTE(v105) = 0;
      v59 = [(CWFAutoJoinManager *)self __performScanWithChannelList:v53 SSIDList:v117 passive:passiveScan dwellTime:dwellTime maxCacheAge:maxScanCacheAge cacheOnly:0 isPreAssociationScan:v105 checkForKnownNetworks:&v130 error:?];
      v118 = v130;
      if ([v59 count])
      {
        [orderedSet removeObjectsInArray:v59];
        [orderedSet addObjectsFromArray:v59];
      }

      v122 += v54;
      autoJoinParameters4 = [contextCopy autoJoinParameters];
      trigger2 = [autoJoinParameters4 trigger];
      v129 = v40;
      v62 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger2 error:&v129];
      v11 = v129;

      if (!v62)
      {
        LOBYTE(v36) = 0;
        v98 = 1;
        v89 = v53;
        v97 = v59;
        v35 = 0;
        goto LABEL_97;
      }

      if (v119)
      {
        v63 = [v116 subarrayWithRange:{v122, objc_msgSend(v116, "count") - v122}];

        v122 += [v63 count];
        if (self->_didDiscoverKnownNetworks || ([contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound] & 1) == 0 && self->_didDiscoverBSS)
        {
          v64 = CWFGetOSLog();
          if (v64)
          {
            v65 = CWFGetOSLog();
          }

          else
          {
            v65 = MEMORY[0x1E69E9C10];
            v68 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v140) = 0;
            LODWORD(v106) = 2;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v65, 0, "[corewifi] AUTO-JOIN: Will scan remaining non-2GHz channels", &v140, v106);
          }

          passiveScan2 = [contextCopy passiveScan];
          dwellTime2 = [contextCopy dwellTime];
          skipRemainingNon2GHzChannelsUnlessKnownNetworkFound2 = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
          v128 = v118;
          BYTE1(v105) = skipRemainingNon2GHzChannelsUnlessKnownNetworkFound2;
          LOBYTE(v105) = 0;
          v72 = [(CWFAutoJoinManager *)self __performScanWithChannelList:v63 SSIDList:v117 passive:passiveScan2 dwellTime:dwellTime2 maxCacheAge:maxScanCacheAge cacheOnly:0 isPreAssociationScan:v105 checkForKnownNetworks:&v128 error:?];
          v73 = v128;

          v59 = v72;
          if ([v72 count])
          {
            [orderedSet removeObjectsInArray:v72];
            [orderedSet addObjectsFromArray:v72];
          }

          [(CWFAutoJoinMetric *)self->_metric setDidIncludeRemainingNon2GHzChannels:1];
          v118 = v73;
        }

        else
        {
          v66 = CWFGetOSLog();
          if (v66)
          {
            v67 = CWFGetOSLog();
          }

          else
          {
            v67 = MEMORY[0x1E69E9C10];
            v74 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v140) = 0;
            LODWORD(v106) = 2;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v67, 0, "[corewifi] AUTO-JOIN: Will not scan remaining non-2GHz channels", &v140, v106);
          }
        }
      }

      else
      {
        v63 = v53;
      }

      if (![orderedSet count])
      {
        goto LABEL_99;
      }

      autoJoinParameters5 = [contextCopy autoJoinParameters];
      if ([autoJoinParameters5 trigger] != 54)
      {
        autoJoinParameters6 = [contextCopy autoJoinParameters];
        trigger3 = [autoJoinParameters6 trigger];

        if (trigger3 == 55)
        {
          goto LABEL_83;
        }

        array3 = [orderedSet array];
        v127 = 0;
        autoJoinParameters5 = [(CWFAutoJoinManager *)self __perform6GHzFollowupDiscoveryWithScanResults:array3 SSIDList:v117 dwellTime:0 context:contextCopy error:&v127];

        if (autoJoinParameters5)
        {
          [orderedSet removeObjectsInArray:autoJoinParameters5];
          [orderedSet addObjectsFromArray:autoJoinParameters5];
        }
      }

LABEL_83:
      array4 = [orderedSet array];
      __shouldAllowPreAssocScan = [(CWFAutoJoinManager *)self __shouldAllowPreAssocScan];
      v126 = v11;
      v81 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:array4 allowPreAssociationScan:__shouldAllowPreAssocScan context:contextCopy error:&v126];
      v82 = v126;

      if (v81)
      {
        v97 = v59;
        v89 = v63;
        v98 = 0;
        LOBYTE(v36) = 1;
        v11 = v82;
        v35 = 1;
        goto LABEL_97;
      }

      [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
      autoJoinParameters7 = [contextCopy autoJoinParameters];
      trigger4 = [autoJoinParameters7 trigger];
      v125 = v82;
      v36 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger4 error:&v125];
      v11 = v125;

      if (!v36)
      {
        v97 = v59;
        v89 = v63;
        v35 = 0;
        v98 = 1;
        goto LABEL_97;
      }

      if (!v119 || ![contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound] || self->_didDiscoverKnownNetworks)
      {
        aNQPElementIDList = [contextCopy ANQPElementIDList];
        v86 = [aNQPElementIDList count];

        if (v86)
        {
          array5 = [orderedSet array];
          v88 = [(CWFAutoJoinManager *)self __passpointScanResults:array5];

          if ([v88 count])
          {
            v89 = v63;
            aNQPElementIDList2 = [contextCopy ANQPElementIDList];
            maxANQPCacheAge = [contextCopy maxANQPCacheAge];
            v124 = 0;
            v92 = [(CWFAutoJoinManager *)self __performGASQueryWithScanResults:v88 ANQPElementIDList:aNQPElementIDList2 maxCacheAge:maxANQPCacheAge cacheOnly:0 error:&v124];
            v93 = v124;

            if ([v92 count])
            {
              __shouldAllowPreAssocScan2 = [(CWFAutoJoinManager *)self __shouldAllowPreAssocScan];
              v123 = v11;
              v95 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:v92 allowPreAssociationScan:__shouldAllowPreAssocScan2 context:contextCopy error:&v123];
              v96 = v123;

              if (v95)
              {
                v97 = v59;
                v35 = 1;
              }

              else
              {
                v97 = v59;
                [(CWFAutoJoinManager *)self __updateAutoJoinState:2];
                v35 = 0;
              }

              v11 = v96;
            }

            else
            {
              v97 = v59;
              v35 = 0;
            }
          }

          else
          {
            v97 = v59;
            v89 = v63;
            v35 = 0;
            v92 = v88;
          }

          v98 = 0;
          goto LABEL_96;
        }
      }

LABEL_99:
      v97 = v59;
      v89 = v63;
      v98 = 0;
      v35 = 0;
LABEL_96:
      LOBYTE(v36) = 1;
LABEL_97:

      v21 = v116;
      if (v98)
      {
        goto LABEL_107;
      }
    }

    v35 = 0;
    v11 = v40;
LABEL_107:

    sSIDList4 = [contextCopy SSIDList];
    v29 = v115;
    if (v115 < [sSIDList4 count])
    {
      v100 = v115 / [contextCopy maxScanSSIDCount];
      if (!(v35 & 1 | (v100 >= [contextCopy maxScanCycles])))
      {

        if ((v36 & 1) == 0)
        {
          v35 = 0;
          goto LABEL_113;
        }

        continue;
      }
    }

    break;
  }

LABEL_113:
  v16 = v109;
  v12 = v110;
LABEL_114:
  objc_autoreleasePoolPop(context);
  v102 = v112;
  errorCopy2 = error;
  if (error)
  {
LABEL_115:
    if (v11)
    {
      v103 = v11;
      *errorCopy2 = v11;
    }
  }

LABEL_117:

  return v35 & 1;
}

- (void)__updateDiscoverTimestampForJoinCandidates:(id)candidates
{
  v38 = *MEMORY[0x1E69E9840];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = candidates;
  v4 = [obj countByEnumeratingWithState:&v23 objects:v37 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v24;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v24 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 copy];
        v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
        v11 = CWFGetOSLog();
        if (v11)
        {
          v12 = CWFGetOSLog();
        }

        else
        {
          v12 = MEMORY[0x1E69E9C10];
          v13 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v27 = 134219010;
          v28 = v10 / 0x3B9ACA00;
          v29 = 2048;
          v30 = v10 % 0x3B9ACA00 / 0x3E8;
          v31 = 2082;
          v32 = "[CWFAutoJoinManager __updateDiscoverTimestampForJoinCandidates:]";
          v33 = 2082;
          v34 = "CWFAutoJoinManager.m";
          v35 = 1024;
          v36 = 4237;
          LODWORD(v18) = 48;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v27, v18);
        }

        targetQueue = self->_targetQueue;
        v15 = qos_class_self();
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1E0C7E64C;
        block[3] = &unk_1E86E6060;
        block[4] = self;
        v21 = v9;
        v22 = v8;
        v16 = v9;
        v17 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, block);
        dispatch_async(targetQueue, v17);
      }

      v5 = [obj countByEnumeratingWithState:&v23 objects:v37 count:16];
    }

    while (v5);
  }
}

- (void)__updateRNRChannel:(id)channel has6GHzOnlyBSS:(BOOL)s joinCandidate:(id)candidate
{
  v36 = *MEMORY[0x1E69E9840];
  channelCopy = channel;
  candidateCopy = candidate;
  v10 = [candidateCopy copy];
  v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v26 = 134219010;
    v27 = v11 / 0x3B9ACA00;
    v28 = 2048;
    v29 = v11 % 0x3B9ACA00 / 0x3E8;
    v30 = 2082;
    v31 = "[CWFAutoJoinManager __updateRNRChannel:has6GHzOnlyBSS:joinCandidate:]";
    v32 = 2082;
    v33 = "CWFAutoJoinManager.m";
    v34 = 1024;
    v35 = 4265;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v26, 48);
  }

  targetQueue = self->_targetQueue;
  v16 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C7EBE0;
  block[3] = &unk_1E86E7820;
  block[4] = self;
  v22 = v10;
  sCopy = s;
  v23 = candidateCopy;
  v24 = channelCopy;
  v17 = channelCopy;
  v18 = candidateCopy;
  v19 = v10;
  v20 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
  dispatch_async(targetQueue, v20);
}

- (BOOL)__shouldAllowPreAssocScan
{
  autoJoinParameters = [(CWFAutoJoinMetric *)self->_metric autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  return trigger != 32 && trigger != 47;
}

- (BOOL)__preflightMatchKnownNetworksForScanResult:(id)result
{
  resultCopy = result;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  sSID = [resultCopy SSID];
  if (sSID && (knownNetworkSSIDMap = selfCopy->_knownNetworkSSIDMap, [resultCopy SSID], v8 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](knownNetworkSSIDMap, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, sSID, v9))
  {
    v10 = 1;
  }

  else
  {
    v9 = 0;
    if ([resultCopy isPasspoint])
    {
      v10 = [(NSMutableDictionary *)selfCopy->_knownNetworkPasspointDomainMap count]!= 0;
    }

    else
    {
      v10 = 0;
    }
  }

  objc_sync_exit(selfCopy);
  return v10;
}

- (BOOL)__matchAndJoinScanResults:(id)results allowPreAssociationScan:(BOOL)scan context:(id)context error:(id *)error
{
  scanCopy = scan;
  v404 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  contextCopy = context;
  autoJoinParameters = [contextCopy autoJoinParameters];
  v392 = 0;
  v8 = -[CWFAutoJoinManager __allowAutoJoinWithTrigger:error:](self, "__allowAutoJoinWithTrigger:error:", [autoJoinParameters trigger], &v392);
  v302 = v392;

  if (!v8)
  {
    associatedNetwork = 0;
    array2 = 0;
    array = 0;
    obj = 0;
    goto LABEL_366;
  }

  context = objc_autoreleasePoolPush();
  v9 = [resultsCopy mutableCopy];
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  if (associatedNetwork && ([v9 containsObject:associatedNetwork] & 1) == 0)
  {
    [v9 addObject:associatedNetwork];
  }

  v390 = 0u;
  v391 = 0u;
  v388 = 0u;
  v389 = 0u;
  obj = v9;
  sSID12 = [obj countByEnumeratingWithState:&v388 objects:v403 count:16];
  if (sSID12)
  {
    v345 = *v389;
    sSID13 = 138543362;
    do
    {
      v10 = 0;
      do
      {
        if (*v389 != v345)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v388 + 1) + 8 * v10);
        if (sub_1E0BF11B4(v11))
        {
          v12 = MEMORY[0x1E696AEC0];
          shortSSID = [v11 shortSSID];
          bSSID = [v11 BSSID];
          channel = [v11 channel];
          v353 = [v12 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel, "channel")];

          sSID11 = [(NSMutableDictionary *)self->_followup6GHzRNRMap objectForKeyedSubscript:v353];
          channel2 = [v11 channel];
          if (![channel2 is6GHz] || (objc_msgSend(contextCopy, "include6GHzChannels") & 1) != 0)
          {

            goto LABEL_14;
          }

          if (!sSID11)
          {

LABEL_34:
            v38 = CWFGetOSLog();
            if (v38)
            {
              v39 = CWFGetOSLog();
            }

            else
            {
              v39 = MEMORY[0x1E69E9C10];
              v55 = MEMORY[0x1E69E9C10];
            }

            v56 = v39;
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v11;
              LODWORD(v295) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v39, 0, "[corewifi] AUTO-JOIN: Skipping 6GHz network not discovered via RNR 6GHz followup scan (%{public}@)", &v394, v295);
            }

            goto LABEL_118;
          }

          channel3 = [sSID11 channel];
          is6GHz = [channel3 is6GHz];

          if (is6GHz)
          {
            goto LABEL_34;
          }

LABEL_14:
          if ([(CWFAutoJoinManager *)self lockdownModeEnabled])
          {
            autoJoinParameters2 = [contextCopy autoJoinParameters];
            trigger = [autoJoinParameters2 trigger];
            autoJoinParameters3 = [contextCopy autoJoinParameters];
            targetNetworkProfile = [autoJoinParameters3 targetNetworkProfile];
            sSID = [targetNetworkProfile SSID];
            sSID2 = [v11 SSID];
            if ([(CWFAutoJoinManager *)self __shouldBypassLockdownModeCheckForTrigger:trigger targetNetworkSSID:sSID networkSSID:sSID2])
            {

              goto LABEL_21;
            }

            isAllowedInLockdownMode = [v11 isAllowedInLockdownMode];

            if (isAllowedInLockdownMode)
            {
              goto LABEL_21;
            }

            v36 = CWFGetOSLog();
            if (v36)
            {
              v37 = CWFGetOSLog();
            }

            else
            {
              v37 = MEMORY[0x1E69E9C10];
              v79 = MEMORY[0x1E69E9C10];
            }

            v56 = v37;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v11;
              LODWORD(v295) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v37, 0, "[corewifi] AUTO-JOIN: Skipping network that is not allowed in lockdown mode (%{public}@)", &v394, v295);
            }

LABEL_118:

LABEL_119:
            goto LABEL_120;
          }

LABEL_21:
          if (![(CWFAutoJoinManager *)self __preflightMatchKnownNetworksForScanResult:v11])
          {
            goto LABEL_119;
          }

          knownNetworks = [contextCopy knownNetworks];
          array3 = [knownNetworks array];
          v341 = sub_1E0BED85C(v11, array3);

          if (!v341)
          {
            goto LABEL_119;
          }

          isPasspoint = [v11 isPasspoint];
          if (isPasspoint != [v341 isPasspoint])
          {
            if ([contextCopy allowSSIDBasedMatchingForPasspointNetworks])
            {
              __disallowedKnownNetworks = [(CWFAutoJoinManager *)self __disallowedKnownNetworks];
              v30 = sub_1E0BED85C(v11, __disallowedKnownNetworks);

              if (!v30)
              {
                goto LABEL_26;
              }

              v128 = CWFGetOSLog();
              if (v128)
              {
                v129 = CWFGetOSLog();
              }

              else
              {
                v129 = MEMORY[0x1E69E9C10];
                v133 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
              {
                v394 = 138543618;
                *v395 = v11;
                *&v395[8] = 2114;
                *&v395[10] = v30;
                LODWORD(v295) = 22;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v129, 0, "[corewifi] AUTO-JOIN: SSID-matched Passpoint network has matching disallowed known network (network=%{public}@, disallowed=%{public}@)", &v394, v295);
              }
            }

            else
            {
              v126 = CWFGetOSLog();
              if (v126)
              {
                v127 = CWFGetOSLog();
              }

              else
              {
                v127 = MEMORY[0x1E69E9C10];
                v132 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
              {
                v394 = 138543362;
                *v395 = v11;
                LODWORD(v295) = 12;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v127, 0, "[corewifi] AUTO-JOIN: Skipping SSID-matched Passpoint network (%{public}@)", &v394, v295);
              }
            }

LABEL_117:
            v56 = v341;
            goto LABEL_118;
          }

LABEL_26:
          matchedCandidateAt = [(CWFAutoJoinMetric *)self->_metric matchedCandidateAt];
          v32 = matchedCandidateAt == 0;

          if (v32)
          {
            date = [MEMORY[0x1E695DF00] date];
            [(CWFAutoJoinMetric *)self->_metric setMatchedCandidateAt:date];
          }

          if (-[CWFAutoJoinMetric bestCandidateRSSI](self->_metric, "bestCandidateRSSI") && (v34 = -[CWFAutoJoinMetric bestCandidateRSSI](self->_metric, "bestCandidateRSSI"), v34 > [v11 RSSI]))
          {
            bestCandidateRSSI = [(CWFAutoJoinMetric *)self->_metric bestCandidateRSSI];
          }

          else
          {
            bestCandidateRSSI = [v11 RSSI];
          }

          [(CWFAutoJoinMetric *)self->_metric setBestCandidateRSSI:bestCandidateRSSI];
          updatedAllowCacheKnownNetworks = self->_updatedAllowCacheKnownNetworks;
          identifier = [v341 identifier];
          LOBYTE(updatedAllowCacheKnownNetworks) = [(NSMutableSet *)updatedAllowCacheKnownNetworks containsObject:identifier];

          if ((updatedAllowCacheKnownNetworks & 1) == 0)
          {
            knownNetworkAllowCache = self->_knownNetworkAllowCache;
            identifier2 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkAllowCache setObject:0 forKeyedSubscript:identifier2];

            knownNetworkDeferCache = self->_knownNetworkDeferCache;
            identifier3 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkDeferCache setObject:0 forKeyedSubscript:identifier3];

            knownNetworkAllowErrorCache = self->_knownNetworkAllowErrorCache;
            identifier4 = [v341 identifier];
            [(NSMutableDictionary *)knownNetworkAllowErrorCache setObject:0 forKeyedSubscript:identifier4];
          }

          v48 = [v11 scanResultWithMatchingKnownNetworkProfile:v341];
          [(NSMutableSet *)self->_matchedCandidates addObject:v48];
          selfCopy = self;
          objc_sync_enter(selfCopy);
          rSSI = [v48 RSSI];
          lowRSSICandidates = self->_lowRSSICandidates;
          if (rSSI > -81)
          {
            [(NSMutableSet *)lowRSSICandidates removeObject:v48];
            [(NSMutableSet *)self->_prevLowRSSICandidates addObject:v48];
          }

          else
          {
            [(NSMutableSet *)lowRSSICandidates addObject:v48];
            lowRSSICandidateFoundTimestamp = self->_lowRSSICandidateFoundTimestamp;
            v53 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
            if (lowRSSICandidateFoundTimestamp <= v53 - 1000000 * [v48 age])
            {
              v57 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
              v54 = v57 - 1000000 * [v48 age];
            }

            else
            {
              v54 = self->_lowRSSICandidateFoundTimestamp;
            }

            self->_lowRSSICandidateFoundTimestamp = v54;
          }

          objc_sync_exit(selfCopy);

          rSSI2 = [v11 RSSI];
          if (rSSI2 < [contextCopy minRSSI])
          {
            v125 = CWFGetOSLog();
            if (v125)
            {
              v77 = CWFGetOSLog();
            }

            else
            {
              v77 = MEMORY[0x1E69E9C10];
              v130 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              minRSSI = [contextCopy minRSSI];
              v394 = 134218242;
              *v395 = minRSSI;
              *&v395[8] = 2114;
              *&v395[10] = v11;
              LODWORD(v295) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v77, 0, "[corewifi] AUTO-JOIN: Skipping low RSSI (< %lddBm) candidate (%{public}@)", &v394, v295);
            }

            goto LABEL_139;
          }

          autoJoinParameters4 = [contextCopy autoJoinParameters];
          if ([autoJoinParameters4 trigger] == 54)
          {

            goto LABEL_52;
          }

          autoJoinParameters5 = [contextCopy autoJoinParameters];
          v61 = [autoJoinParameters5 trigger] == 55;

          if (!v61)
          {
            associatedNetwork2 = [(CWFAutoJoinManager *)selfCopy associatedNetwork];
            v68 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v48 fromNetwork:associatedNetwork2 context:contextCopy];

            if (!v68)
            {
              goto LABEL_76;
            }

            matchingKnownNetworkProfile = [associatedNetwork matchingKnownNetworkProfile];
            matchingKnownNetworkProfile2 = [v48 matchingKnownNetworkProfile];
            v402 = matchingKnownNetworkProfile2;
            v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v402 count:1];
            v72 = [(CWFAutoJoinManager *)selfCopy __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile knownNetworks:v71 context:contextCopy];
            v73 = v72 == 0;

            if (!v73)
            {
              goto LABEL_76;
            }

            channel4 = [v48 channel];
            is2GHz = [channel4 is2GHz];

            if (!is2GHz)
            {
              goto LABEL_76;
            }

            v76 = CWFGetOSLog();
            if (v76)
            {
              v77 = CWFGetOSLog();
            }

            else
            {
              v77 = MEMORY[0x1E69E9C10];
              v124 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v48;
              LODWORD(v295) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v77, 0, "[corewifi] AUTO-JOIN: Skipping 2GHz seamless SSID transition network (%{public}@)", &v394, v295);
            }

            goto LABEL_139;
          }

LABEL_52:
          sSID3 = [v48 SSID];
          sSID4 = [associatedNetwork SSID];
          v64 = sSID4;
          if (sSID3 == sSID4)
          {

            goto LABEL_76;
          }

          sSID5 = [v48 SSID];
          if (sSID5)
          {
            sSID6 = [associatedNetwork SSID];
            if (sSID6)
            {
              sSID7 = [v48 SSID];
              sSID8 = [associatedNetwork SSID];
              if ([sSID7 isEqual:sSID8])
              {

                v66 = 0;
                goto LABEL_75;
              }

              v78 = 1;
            }

            else
            {
              v78 = 0;
              sSID6 = 0;
            }
          }

          else
          {
            v78 = 0;
          }

          associatedNetwork3 = [(CWFAutoJoinManager *)selfCopy associatedNetwork];
          v81 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v48 fromNetwork:associatedNetwork3 context:contextCopy];

          v66 = !v81;
          if (v78)
          {

            if (!sSID5)
            {
              goto LABEL_71;
            }

LABEL_75:

            if (!v66)
            {
              goto LABEL_76;
            }

LABEL_72:
            v82 = CWFGetOSLog();
            if (v82)
            {
              v77 = CWFGetOSLog();
            }

            else
            {
              v77 = MEMORY[0x1E69E9C10];
              v121 = MEMORY[0x1E69E9C10];
            }

            if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
            {
              v394 = 138543362;
              *v395 = v48;
              LODWORD(v295) = 12;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v77, 0, "[corewifi] AUTO-JOIN: Skipping network not supporting seamless SSID transition (%{public}@)", &v394, v295);
            }

LABEL_139:

            goto LABEL_116;
          }

          if (sSID5)
          {
            goto LABEL_75;
          }

LABEL_71:

          if (!v81)
          {
            goto LABEL_72;
          }

LABEL_76:
          v83 = CWFGetOSLog();
          if (v83)
          {
            v84 = CWFGetOSLog();
          }

          else
          {
            v84 = MEMORY[0x1E69E9C10];
            v85 = MEMORY[0x1E69E9C10];
          }

          if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
          {
            v394 = 138543362;
            *v395 = v48;
            LODWORD(v295) = 12;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v84, 0, "[corewifi] AUTO-JOIN: Found matching network (%{public}@)", &v394, v295);
          }

          channel5 = [v11 channel];
          if ([channel5 is6GHz])
          {
            allowStandalone6GHz = [contextCopy allowStandalone6GHz];

            if ((allowStandalone6GHz & 1) == 0)
            {
              matchingKnownNetworkProfile3 = [v48 matchingKnownNetworkProfile];
              isStandalone6G = [matchingKnownNetworkProfile3 isStandalone6G];

              if (isStandalone6G)
              {
                knownNetworks2 = [(CWFAutoJoinManager *)selfCopy knownNetworks];
                allObjects = [knownNetworks2 allObjects];
                v92 = [(CWFAutoJoinManager *)selfCopy __knownNetworksSupportingSeamlessSSIDTransition:allObjects fromNetwork:v48 allowSameSSID:0 context:contextCopy];

                v386 = 0u;
                v387 = 0u;
                v384 = 0u;
                v385 = 0u;
                v333 = v92;
                v93 = [v333 countByEnumeratingWithState:&v384 objects:v401 count:16];
                if (v93)
                {
                  v326 = 0;
                  v337 = *v385;
LABEL_86:
                  v94 = 0;
                  while (1)
                  {
                    if (*v385 != v337)
                    {
                      objc_enumerationMutation(v333);
                    }

                    v95 = *(*(&v384 + 1) + 8 * v94);
                    if (([v95 isStandalone6G] & 1) == 0)
                    {
                      matchingKnownNetworkProfile4 = [v48 matchingKnownNetworkProfile];
                      lastDiscoveredAt = [matchingKnownNetworkProfile4 lastDiscoveredAt];

                      matchingKnownNetworkProfile5 = [v48 matchingKnownNetworkProfile];
                      lastJoinedAt = [matchingKnownNetworkProfile5 lastJoinedAt];

                      lastDiscoveredAt2 = [v95 lastDiscoveredAt];
                      lastJoinedAt2 = [v95 lastJoinedAt];
                      if (lastDiscoveredAt)
                      {
                        if (lastDiscoveredAt2)
                        {
                          [lastDiscoveredAt timeIntervalSinceReferenceDate];
                          v103 = v102;
                          [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
                          v105 = floor(v103) < floor(v104);
                          [lastDiscoveredAt timeIntervalSinceReferenceDate];
                          v107 = v106;
                          [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
                          v109 = floor(v107) - floor(v108);
                          if (v105)
                          {
                            v109 = -v109;
                          }

                          if (v109 < 86400.0)
                          {
                            goto LABEL_100;
                          }
                        }
                      }

                      if (!lastJoinedAt || !lastJoinedAt2)
                      {
                        goto LABEL_101;
                      }

                      [lastJoinedAt timeIntervalSinceReferenceDate];
                      v111 = v110;
                      [lastJoinedAt2 timeIntervalSinceReferenceDate];
                      v113 = floor(v111) < floor(v112);
                      [lastJoinedAt timeIntervalSinceReferenceDate];
                      v115 = v114;
                      [lastJoinedAt2 timeIntervalSinceReferenceDate];
                      v117 = floor(v115) - floor(v116);
                      if (v113)
                      {
                        v117 = -v117;
                      }

                      if (v117 < 86400.0)
                      {
LABEL_100:
                        v118 = 0;
                        v326 = 1;
                      }

                      else
                      {
LABEL_101:
                        v118 = 1;
                      }

                      if (!v118)
                      {
                        break;
                      }
                    }

                    if (v93 == ++v94)
                    {
                      v93 = [v333 countByEnumeratingWithState:&v384 objects:v401 count:16];
                      if (v93)
                      {
                        goto LABEL_86;
                      }

                      break;
                    }
                  }

                  if (v326)
                  {
                    v119 = CWFGetOSLog();
                    if (v119)
                    {
                      v120 = CWFGetOSLog();
                    }

                    else
                    {
                      v120 = MEMORY[0x1E69E9C10];
                      v122 = MEMORY[0x1E69E9C10];
                    }

                    if (os_log_type_enabled(v120, OS_LOG_TYPE_DEFAULT))
                    {
                      networkName = [v48 networkName];
                      v394 = 138543362;
                      *v395 = networkName;
                      LODWORD(v295) = 12;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v120, 0, "[corewifi] AUTO-JOIN: Including 6GHz BSS supporting seamless SSID transition away from 6GHz (%{public}@)", &v394, v295);
                    }

                    [array addObject:v48];
                    goto LABEL_116;
                  }
                }

                else
                {
                }
              }

              [array2 addObject:v48];
LABEL_116:

              goto LABEL_117;
            }
          }

          else
          {
          }

          [array addObject:v48];
          goto LABEL_116;
        }

LABEL_120:
        v10 = v10 + 1;
      }

      while (v10 != sSID12);
      v134 = [obj countByEnumeratingWithState:&v388 objects:v403 count:16];
      sSID12 = v134;
    }

    while (v134);
  }

  if (![array2 count])
  {
    goto LABEL_200;
  }

  array4 = [MEMORY[0x1E695DF70] array];
  v382 = 0u;
  v383 = 0u;
  v380 = 0u;
  v381 = 0u;
  v304 = array2;
  v308 = [v304 countByEnumeratingWithState:&v380 objects:v400 count:16];
  if (!v308)
  {
    goto LABEL_199;
  }

  v307 = *v381;
  do
  {
    for (i = 0; i != v308; ++i)
    {
      if (*v381 != v307)
      {
        objc_enumerationMutation(v304);
      }

      v354 = *(*(&v380 + 1) + 8 * i);
      autoJoinParameters6 = [contextCopy autoJoinParameters];
      targetNetworkProfile2 = [autoJoinParameters6 targetNetworkProfile];
      identifier5 = [targetNetworkProfile2 identifier];
      matchingKnownNetworkProfile6 = [v354 matchingKnownNetworkProfile];
      identifier6 = [matchingKnownNetworkProfile6 identifier];
      v139 = identifier6;
      if (identifier5 == identifier6)
      {

LABEL_161:
LABEL_162:
        [array4 addObject:v354];
        continue;
      }

      autoJoinParameters7 = [contextCopy autoJoinParameters];
      targetNetworkProfile3 = [autoJoinParameters7 targetNetworkProfile];
      identifier7 = [targetNetworkProfile3 identifier];
      if (identifier7)
      {
        matchingKnownNetworkProfile7 = [v354 matchingKnownNetworkProfile];
        identifier8 = [matchingKnownNetworkProfile7 identifier];
        if (identifier8)
        {
          autoJoinParameters8 = [contextCopy autoJoinParameters];
          targetNetworkProfile4 = [autoJoinParameters8 targetNetworkProfile];
          identifier9 = [targetNetworkProfile4 identifier];
          matchingKnownNetworkProfile8 = [v354 matchingKnownNetworkProfile];
          identifier10 = [matchingKnownNetworkProfile8 identifier];
          v323 = [identifier9 isEqual:identifier10];

          if (v323)
          {
            goto LABEL_162;
          }

          goto LABEL_165;
        }
      }

LABEL_165:
      v378 = 0u;
      v379 = 0u;
      v376 = 0u;
      v377 = 0u;
      autoJoinParameters6 = array;
      v347 = [autoJoinParameters6 countByEnumeratingWithState:&v376 objects:v399 count:16];
      if (!v347)
      {
        goto LABEL_191;
      }

      v343 = *v377;
      do
      {
        for (j = 0; j != v347; ++j)
        {
          if (*v377 != v343)
          {
            objc_enumerationMutation(autoJoinParameters6);
          }

          v147 = *(*(&v376 + 1) + 8 * j);
          sSID9 = [v354 SSID];
          sSID10 = [v147 SSID];
          if (sSID9 != sSID10)
          {
            sSID11 = [v354 SSID];
            if (!sSID11)
            {
              goto LABEL_181;
            }

            sSID12 = [v147 SSID];
            if (!sSID12)
            {
              goto LABEL_180;
            }

            sSID6 = [v354 SSID];
            sSID13 = [v147 SSID];
            if (([sSID6 isEqual:sSID13] & 1) == 0)
            {

LABEL_180:
LABEL_181:

              continue;
            }
          }

          matchingKnownNetworkProfile9 = [v354 matchingKnownNetworkProfile];
          identifier11 = [matchingKnownNetworkProfile9 identifier];
          matchingKnownNetworkProfile10 = [v147 matchingKnownNetworkProfile];
          identifier12 = [matchingKnownNetworkProfile10 identifier];
          if (identifier11 == identifier12)
          {
            v339 = 1;
          }

          else
          {
            matchingKnownNetworkProfile11 = [v354 matchingKnownNetworkProfile];
            identifier13 = [matchingKnownNetworkProfile11 identifier];
            if (identifier13)
            {
              matchingKnownNetworkProfile12 = [v147 matchingKnownNetworkProfile];
              identifier14 = [matchingKnownNetworkProfile12 identifier];
              if (identifier14)
              {
                matchingKnownNetworkProfile13 = [v354 matchingKnownNetworkProfile];
                identifier15 = [matchingKnownNetworkProfile13 identifier];
                matchingKnownNetworkProfile14 = [v147 matchingKnownNetworkProfile];
                identifier16 = [matchingKnownNetworkProfile14 identifier];
                v339 = [identifier15 isEqual:identifier16];
              }

              else
              {
                v339 = 0;
              }
            }

            else
            {
              v339 = 0;
            }
          }

          if (sSID9 != sSID10)
          {
          }

          if (v339)
          {
            goto LABEL_161;
          }
        }

        v347 = [autoJoinParameters6 countByEnumeratingWithState:&v376 objects:v399 count:16];
      }

      while (v347);
LABEL_191:

      v157 = CWFGetOSLog();
      if (v157)
      {
        v158 = CWFGetOSLog();
      }

      else
      {
        v158 = MEMORY[0x1E69E9C10];
        v159 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
      {
        v394 = 138543362;
        *v395 = v354;
        LODWORD(v295) = 12;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v158, 0, "[corewifi] AUTO-JOIN: Excluding 6GHz BSS to deprioritize standalone 6GHz networks (%{public}@)", &v394, v295);
      }

      [(CWFAutoJoinMetric *)self->_metric setDidExcludeStandalone6GHzNetwork:1];
      matchingKnownNetworkProfile15 = [v354 matchingKnownNetworkProfile];
      -[CWFAutoJoinMetric setDidExclude6GHzOnlyNetwork:](self->_metric, "setDidExclude6GHzOnlyNetwork:", [matchingKnownNetworkProfile15 wasRecently6GHzOnlyOnAnyDevice]);
    }

    v308 = [v304 countByEnumeratingWithState:&v380 objects:v400 count:16];
  }

  while (v308);
LABEL_199:

  [array addObjectsFromArray:array4];
LABEL_200:
  if ([array count])
  {
    [(CWFAutoJoinManager *)self __updateAutoJoinState:3];
    [(CWFAutoJoinManager *)self __sortJoinCandidates:array context:contextCopy];
    if (!associatedNetwork)
    {
      goto LABEL_223;
    }

    autoJoinParameters9 = [contextCopy autoJoinParameters];
    if ([autoJoinParameters9 trigger] == 54)
    {

      goto LABEL_207;
    }

    autoJoinParameters10 = [contextCopy autoJoinParameters];
    v165 = [autoJoinParameters10 trigger] == 55;

    if (v165)
    {
LABEL_207:
      v374 = 0u;
      v375 = 0u;
      v372 = 0u;
      v373 = 0u;
      v355 = array;
      v166 = [v355 countByEnumeratingWithState:&v372 objects:v398 count:16];
      if (v166)
      {
        v167 = *v373;
LABEL_209:
        v168 = 0;
        while (1)
        {
          if (*v373 != v167)
          {
            objc_enumerationMutation(v355);
          }

          v169 = *(*(&v372 + 1) + 8 * v168);
          if ([(CWFAutoJoinManager *)self __allowJoinCandidate:v169 context:contextCopy defer:0 error:0])
          {
            sSID14 = [v169 SSID];
            sSID15 = [associatedNetwork SSID];
            v172 = sSID15;
            if (sSID14 == sSID15)
            {

LABEL_229:
              v340 = 1;
              goto LABEL_230;
            }

            sSID16 = [v169 SSID];
            if (sSID16)
            {
              sSID17 = [associatedNetwork SSID];
              if (sSID17)
              {
                sSID18 = [v169 SSID];
                sSID19 = [associatedNetwork SSID];
                v177 = [sSID18 isEqual:sSID19];

                if (v177)
                {
                  goto LABEL_229;
                }

                goto LABEL_220;
              }
            }
          }

LABEL_220:
          if (v166 == ++v168)
          {
            v166 = [v355 countByEnumeratingWithState:&v372 objects:v398 count:16];
            if (v166)
            {
              goto LABEL_209;
            }

            break;
          }
        }
      }

      v340 = 0;
LABEL_230:
    }

    else
    {
LABEL_223:
      v340 = 0;
    }

    v370 = 0u;
    v371 = 0u;
    v368 = 0u;
    v369 = 0u;
    v321 = array;
    v336 = [v321 countByEnumeratingWithState:&v368 objects:v397 count:16];
    if (v336)
    {
      v179 = MEMORY[0x1E69E9C10];
      v332 = *v369;
      do
      {
        v180 = 0;
        do
        {
          if (*v369 != v332)
          {
            v181 = v180;
            objc_enumerationMutation(v321);
            v180 = v181;
          }

          v344 = v180;
          v352 = *(*(&v368 + 1) + 8 * v180);
          autoJoinParameters11 = [contextCopy autoJoinParameters];
          trigger2 = [autoJoinParameters11 trigger];
          v367 = v302;
          v8 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger2 error:&v367];
          v350 = v367;

          if (!v8)
          {
            goto LABEL_363;
          }

          v366 = 0;
          v365 = 0;
          v184 = [(CWFAutoJoinManager *)self __allowJoinCandidate:v352 context:contextCopy defer:&v366 error:&v365];
          v185 = v365;
          if (v184)
          {
            v348 = v185;
            if ([contextCopy allowDeferredCandidates] & 1) == 0 && (v366)
            {
              selfCopy2 = self;
              objc_sync_enter(selfCopy2);
              deferredKnownNetworks = self->_deferredKnownNetworks;
              matchingKnownNetworkProfile16 = [v352 matchingKnownNetworkProfile];
              [(NSMutableOrderedSet *)deferredKnownNetworks addObject:matchingKnownNetworkProfile16];

              objc_sync_exit(selfCopy2);
            }

            else
            {
              if (!v340)
              {
                goto LABEL_247;
              }

              selfCopy2 = [v352 SSID];
              sSID20 = [associatedNetwork SSID];
              v188 = sSID20;
              if (selfCopy2 == sSID20)
              {

                goto LABEL_247;
              }

              sSID21 = [v352 SSID];
              if (sSID21)
              {
                sSID22 = [associatedNetwork SSID];
                if (sSID22)
                {
                  sSID23 = [v352 SSID];
                  sSID24 = [associatedNetwork SSID];
                  v193 = [sSID23 isEqual:sSID24];

                  if (!v193)
                  {
                    goto LABEL_343;
                  }

LABEL_247:
                  allKeys = [(NSMutableDictionary *)self->_deferredColocatedJoinCandidateMap allKeys];
                  matchingKnownNetworkProfile17 = [v352 matchingKnownNetworkProfile];
                  identifier17 = [matchingKnownNetworkProfile17 identifier];
                  v197 = [allKeys containsObject:identifier17];

                  if (v197)
                  {
                    allValues = [(NSMutableDictionary *)self->_deferredColocatedJoinCandidateMap allValues];
                    selfCopy2 = [allValues mutableCopy];

                    [(CWFAutoJoinManager *)self __sortKnownNetworksByJoinTimestamp:selfCopy2];
                    matchingKnownNetworkProfile18 = [v352 matchingKnownNetworkProfile];
                    identifier18 = [matchingKnownNetworkProfile18 identifier];
                    firstObject = [(CWFAutoJoinManager *)selfCopy2 firstObject];
                    identifier19 = [firstObject identifier];
                    if (identifier18 == identifier19)
                    {
                      v330 = 1;
                    }

                    else
                    {
                      matchingKnownNetworkProfile19 = [v352 matchingKnownNetworkProfile];
                      identifier20 = [matchingKnownNetworkProfile19 identifier];
                      if (identifier20)
                      {
                        firstObject2 = [(CWFAutoJoinManager *)selfCopy2 firstObject];
                        identifier21 = [firstObject2 identifier];
                        if (identifier21)
                        {
                          matchingKnownNetworkProfile20 = [v352 matchingKnownNetworkProfile];
                          identifier22 = [matchingKnownNetworkProfile20 identifier];
                          firstObject3 = [(CWFAutoJoinManager *)selfCopy2 firstObject];
                          identifier23 = [firstObject3 identifier];
                          v330 = [identifier22 isEqual:identifier23];
                        }

                        else
                        {
                          v330 = 0;
                        }
                      }

                      else
                      {
                        v330 = 0;
                      }
                    }

                    v230 = CWFGetOSLog();
                    v231 = v230;
                    if (v330)
                    {
                      if (v230)
                      {
                        v226 = CWFGetOSLog();
                      }

                      else
                      {
                        v233 = v179;
                        v226 = v179;
                      }

                      if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                      {
                        v394 = 138543362;
                        *v395 = v352;
                        LODWORD(v295) = 12;
                        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v226, 0, "[corewifi] AUTO-JOIN: Detected circular user-preferred network priority, will join most recently joined candidate (%{public}@)", &v394, v295);
                      }

                      goto LABEL_313;
                    }

                    if (v230)
                    {
                      v232 = CWFGetOSLog();
                    }

                    else
                    {
                      v234 = v179;
                      v232 = v179;
                    }

                    if (os_log_type_enabled(v232, OS_LOG_TYPE_DEFAULT))
                    {
                      v394 = 138543362;
                      *v395 = v352;
                      LODWORD(v295) = 12;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v232, 0, "[corewifi] AUTO-JOIN: Detected circular user-preferred network priority, not most recently joined candidate, skipping (%{public}@)", &v394, v295);
                    }
                  }

                  else
                  {
                    matchingKnownNetworkProfile21 = [v352 matchingKnownNetworkProfile];
                    knownNetworks3 = [(CWFAutoJoinManager *)self knownNetworks];
                    allObjects2 = [knownNetworks3 allObjects];
                    selfCopy2 = [(CWFAutoJoinManager *)self __morePreferredKnownNetworksWithCandidate:matchingKnownNetworkProfile21 knownNetworks:allObjects2 context:contextCopy];

                    if ([(CWFAutoJoinManager *)selfCopy2 count])
                    {
                      v208 = CWFGetOSLog();
                      if (v208)
                      {
                        v209 = CWFGetOSLog();
                      }

                      else
                      {
                        v210 = v179;
                        v209 = v179;
                      }

                      if (os_log_type_enabled(v209, OS_LOG_TYPE_DEFAULT))
                      {
                        v394 = 138543362;
                        *v395 = v352;
                        LODWORD(v295) = 12;
                        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v209, 0, "[corewifi] AUTO-JOIN: Deferring join attempt to discover more-preferred networks (%{public}@)", &v394, v295);
                      }

                      v211 = CWFGetOSLog();
                      if (v211)
                      {
                        v212 = CWFGetOSLog();
                      }

                      else
                      {
                        v213 = v179;
                        v212 = v179;
                      }

                      if (os_log_type_enabled(v212, OS_LOG_TYPE_DEFAULT))
                      {
                        v214 = [(CWFAutoJoinManager *)selfCopy2 count];
                        v394 = 134217984;
                        *v395 = v214;
                        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v212, 0, "[corewifi] AUTO-JOIN: More-Preferred Networks (%lu) -->", &v394);
                      }

                      v363 = 0u;
                      v364 = 0u;
                      v361 = 0u;
                      v362 = 0u;
                      selfCopy2 = selfCopy2;
                      v215 = [(CWFAutoJoinManager *)selfCopy2 countByEnumeratingWithState:&v361 objects:v396 count:16];
                      if (v215)
                      {
                        v216 = *v362;
                        do
                        {
                          for (k = 0; k != v215; ++k)
                          {
                            if (*v362 != v216)
                            {
                              objc_enumerationMutation(selfCopy2);
                            }

                            v218 = *(*(&v361 + 1) + 8 * k);
                            v219 = CWFGetOSLog();
                            if (v219)
                            {
                              v220 = CWFGetOSLog();
                            }

                            else
                            {
                              v221 = v179;
                              v220 = v179;
                            }

                            if (os_log_type_enabled(v220, OS_LOG_TYPE_DEFAULT))
                            {
                              v394 = 138543362;
                              *v395 = v218;
                              LODWORD(v295) = 12;
                              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v220, 0, "[corewifi] AUTO-JOIN: -- %{public}@", &v394, v295);
                            }
                          }

                          v215 = [(CWFAutoJoinManager *)selfCopy2 countByEnumeratingWithState:&v361 objects:v396 count:16];
                        }

                        while (v215);
                      }

                      matchingKnownNetworkProfile22 = [v352 matchingKnownNetworkProfile];
                      deferredColocatedJoinCandidateMap = self->_deferredColocatedJoinCandidateMap;
                      matchingKnownNetworkProfile23 = [v352 matchingKnownNetworkProfile];
                      identifier24 = [matchingKnownNetworkProfile23 identifier];
                      [(NSMutableDictionary *)deferredColocatedJoinCandidateMap setObject:matchingKnownNetworkProfile22 forKeyedSubscript:identifier24];

                      [(CWFAutoJoinMetric *)self->_metric setDidDeferJoinToDiscoverMorePreferredNetwork:1];
                      v226 = [contextCopy copy];
                      [v226 setKnownNetworks:selfCopy2];
                      [v226 setPassiveScan:0];
                      [v226 setUseCacheForPreviouslyScannedChannels:1];
                      [v226 setAllowDeferredCandidates:1];
                      rSSI3 = [v352 RSSI];
                      if (rSSI3 - 3 < [contextCopy minRSSI] && objc_msgSend(v352, "RSSI") >= -87)
                      {
                        -[NSObject setMinRSSI:](v226, "setMinRSSI:", [v352 RSSI] - 3);
                        v228 = CWFGetOSLog();
                        if (v228)
                        {
                          v229 = CWFGetOSLog();
                        }

                        else
                        {
                          v235 = v179;
                          v229 = v179;
                        }

                        if (os_log_type_enabled(v229, OS_LOG_TYPE_DEFAULT))
                        {
                          minRSSI2 = [contextCopy minRSSI];
                          minRSSI3 = [v226 minRSSI];
                          v394 = 67109632;
                          *v395 = 3;
                          *&v395[4] = 2048;
                          *&v395[6] = minRSSI2;
                          *&v395[14] = 2048;
                          *&v395[16] = minRSSI3;
                          LODWORD(v295) = 28;
                          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v229, 0, "[corewifi] AUTO-JOIN: Overriding min RSSI filter to accommodate more-preferred networks within %d dB of less-preferred candidate (%ld --> %ld)", &v394, v295, v296);
                        }
                      }

                      v238 = [(NSMutableDictionary *)self->_cachedKnownNetworksContexts objectForKeyedSubscript:v226];
                      v239 = v238;
                      if (v238)
                      {
                        v240 = v226;
                        v226 = v238;
                      }

                      else
                      {
                        v240 = [v226 copy];
                        [(CWFAutoJoinManager *)self __prepareKnownNetworksContext:v226];
                        [(NSMutableDictionary *)self->_cachedKnownNetworksContexts setObject:v226 forKeyedSubscript:v240];
                      }

                      v360 = v350;
                      LOBYTE(v8) = [(CWFAutoJoinManager *)self __discoverKnownNetworksWithContext:v226 error:&v360];
                      v241 = v360;

                      if (v8)
                      {
                        v350 = v241;
LABEL_371:

                        goto LABEL_362;
                      }

                      autoJoinParameters12 = [contextCopy autoJoinParameters];
                      trigger3 = [autoJoinParameters12 trigger];
                      v359 = v241;
                      v244 = [(CWFAutoJoinManager *)self __allowAutoJoinWithTrigger:trigger3 error:&v359];
                      v350 = v359;

                      if (!v244)
                      {
                        goto LABEL_371;
                      }

                      v245 = CWFGetOSLog();
                      if (v245)
                      {
                        v246 = CWFGetOSLog();
                      }

                      else
                      {
                        v247 = v179;
                        v246 = v179;
                      }

                      if (os_log_type_enabled(v246, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(v394) = 0;
                        LODWORD(v295) = 2;
                        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v246, 0, "[corewifi] AUTO-JOIN: Could not discover/join a more-preferred network, will join less-preferred candidate", &v394, v295);
                      }

                      [(CWFAutoJoinMetric *)self->_metric setDidFallbackToJoinLessPreferredNetwork:1];
                      [(CWFAutoJoinManager *)self __updateAutoJoinState:3];

LABEL_313:
                    }

                    if ((v340 & 1) == 0)
                    {
                      matchingKnownNetworkProfile24 = [associatedNetwork matchingKnownNetworkProfile];
                      identifier25 = [matchingKnownNetworkProfile24 identifier];
                      matchingKnownNetworkProfile25 = [v352 matchingKnownNetworkProfile];
                      identifier26 = [matchingKnownNetworkProfile25 identifier];
                      v252 = [identifier25 isEqual:identifier26];

                      if (v252)
                      {
                        v287 = CWFGetOSLog();
                        if (v287)
                        {
                          selfCopy2 = CWFGetOSLog();
                        }

                        else
                        {
                          selfCopy2 = MEMORY[0x1E69E9C10];
                          v289 = MEMORY[0x1E69E9C10];
                        }

                        if (os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_DEFAULT))
                        {
                          v394 = 138543362;
                          *v395 = associatedNetwork;
                          LODWORD(v295) = 12;
                          v290 = "[corewifi] AUTO-JOIN: Already associated to matching known network (%{public}@)";
                          goto LABEL_360;
                        }

LABEL_361:
                        LOBYTE(v8) = 1;
LABEL_362:

LABEL_363:
                        v302 = v350;
                        goto LABEL_364;
                      }
                    }

                    autoJoinParameters13 = [contextCopy autoJoinParameters];
                    if ([autoJoinParameters13 trigger] == 54)
                    {
                    }

                    else
                    {
                      autoJoinParameters14 = [contextCopy autoJoinParameters];
                      v255 = [autoJoinParameters14 trigger] == 55;

                      if (!v255)
                      {
                        associatedNetwork4 = [(CWFAutoJoinManager *)self associatedNetwork];
                        matchingKnownNetworkProfile26 = [associatedNetwork4 matchingKnownNetworkProfile];
                        matchingKnownNetworkProfile27 = [v352 matchingKnownNetworkProfile];
                        v259 = [matchingKnownNetworkProfile26 compareUserPriority:matchingKnownNetworkProfile27] == 1;

                        if (v259)
                        {
                          v288 = CWFGetOSLog();
                          if (v288)
                          {
                            selfCopy2 = CWFGetOSLog();
                          }

                          else
                          {
                            selfCopy2 = MEMORY[0x1E69E9C10];
                            v291 = MEMORY[0x1E69E9C10];
                          }

                          if (!os_log_type_enabled(&selfCopy2->super, OS_LOG_TYPE_DEFAULT))
                          {
                            goto LABEL_361;
                          }

                          v394 = 138543362;
                          *v395 = associatedNetwork;
                          LODWORD(v295) = 12;
                          v290 = "[corewifi] AUTO-JOIN: Already associated to the more-preferred network (%{public}@)";
LABEL_360:
                          LOBYTE(v8) = 1;
                          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, selfCopy2, 0, v290, &v394, v295);
                          goto LABEL_362;
                        }
                      }
                    }

                    if (scanCopy)
                    {
                      selfCopy2 = [(CWFAutoJoinManager *)self __performPreAssociationScanWithContext:contextCopy network:v352];
                      if ([(CWFAutoJoinManager *)selfCopy2 count])
                      {
                        v358 = v350;
                        v260 = [(CWFAutoJoinManager *)self __matchAndJoinScanResults:selfCopy2 allowPreAssociationScan:0 context:contextCopy error:&v358];
                        v261 = v358;

                        if (v260)
                        {
                          LOBYTE(v8) = 1;
                          v350 = v261;
                          goto LABEL_362;
                        }

                        v350 = v261;
                      }
                    }

                    else
                    {
                      v357 = 0;
                      v262 = [(CWFAutoJoinManager *)self __performJoinWithNetwork:v352 context:contextCopy error:&v357];
                      v263 = v357;
                      selfCopy2 = v263;
                      if (v262)
                      {
                        goto LABEL_361;
                      }

                      if ([(CWFAutoJoinManager *)v263 code]== -3936 || [(CWFAutoJoinManager *)selfCopy2 code]== -3947)
                      {
                        v264 = CWFGetOSLog();
                        if (v264)
                        {
                          v265 = CWFGetOSLog();
                        }

                        else
                        {
                          v266 = v179;
                          v265 = v179;
                        }

                        if (os_log_type_enabled(v265, OS_LOG_TYPE_DEFAULT))
                        {
                          code = [(CWFAutoJoinManager *)selfCopy2 code];
                          v394 = 134217984;
                          *v395 = code;
                          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v265, 0, "[corewifi] AUTO-JOIN: Join failed due to BSS not found (%ld), will perform scan to discover BSS and retry association", &v394);
                        }

                        channel6 = [v352 channel];
                        v393 = channel6;
                        v269 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v393 count:1];
                        sSIDList = [contextCopy SSIDList];
                        dwellTime = [contextCopy dwellTime];
                        BYTE1(v294) = [contextCopy skipRemainingNon2GHzChannelsUnlessKnownNetworkFound];
                        LOBYTE(v294) = 0;
                        v272 = [(CWFAutoJoinManager *)self __performScanWithChannelList:v269 SSIDList:sSIDList passive:0 dwellTime:dwellTime maxCacheAge:0 cacheOnly:0 isPreAssociationScan:v294 checkForKnownNetworks:0 error:?];

                        v356 = selfCopy2;
                        LOBYTE(channel6) = [(CWFAutoJoinManager *)self __performJoinWithNetwork:v352 context:contextCopy error:&v356];
                        v273 = v356;

                        if (channel6)
                        {
                          LOBYTE(v8) = 1;
                          selfCopy2 = v273;
                          goto LABEL_362;
                        }

                        selfCopy2 = v273;
                      }

                      if ([(CWFAutoJoinManager *)selfCopy2 code]!= -3936 && [(CWFAutoJoinManager *)selfCopy2 code]!= -3947)
                      {
                        v274 = CWFGetOSLog();
                        if (v274)
                        {
                          v275 = CWFGetOSLog();
                        }

                        else
                        {
                          v276 = v179;
                          v275 = v179;
                        }

                        if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(v394) = 0;
                          LODWORD(v295) = 2;
                          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v275, 0, "[corewifi] AUTO-JOIN: Adding network to failed join list", &v394, v295);
                        }

                        failedToJoinKnownNetworkIDs = self->_failedToJoinKnownNetworkIDs;
                        matchingKnownNetworkProfile28 = [v352 matchingKnownNetworkProfile];
                        identifier27 = [matchingKnownNetworkProfile28 identifier];
                        [(NSMutableSet *)failedToJoinKnownNetworkIDs addObject:identifier27];

                        v280 = self->_deferredColocatedJoinCandidateMap;
                        matchingKnownNetworkProfile29 = [v352 matchingKnownNetworkProfile];
                        identifier28 = [matchingKnownNetworkProfile29 identifier];
                        [(NSMutableDictionary *)v280 setObject:0 forKeyedSubscript:identifier28];
                      }
                    }
                  }
                }

                else
                {
                }
              }

              else
              {
              }
            }

LABEL_343:
            v185 = v348;
            v283 = v350;
            goto LABEL_344;
          }

          v283 = v350;
LABEL_344:
          v302 = v283;

          v180 = v344 + 1;
        }

        while ((v344 + 1) != v336);
        v286 = [v321 countByEnumeratingWithState:&v368 objects:v397 count:16];
        v336 = v286;
      }

      while (v286);
    }

    LOBYTE(v8) = 0;
LABEL_364:

    [(CWFAutoJoinManager *)self __updateDiscoverTimestampForJoinCandidates:v321];
    [(CWFAutoJoinManager *)self __updateDiscoverTimestampForJoinCandidates:array2];
  }

  else
  {
    v162 = CWFGetOSLog();
    if (v162)
    {
      v163 = CWFGetOSLog();
    }

    else
    {
      v163 = MEMORY[0x1E69E9C10];
      v178 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v394) = 0;
      LODWORD(v295) = 2;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v163, 0, "[corewifi] AUTO-JOIN: No matches found", &v394, v295);
    }

    LOBYTE(v8) = 0;
  }

  objc_autoreleasePoolPop(context);
LABEL_366:
  if (error && v302)
  {
    v292 = v302;
    *error = v302;
  }

  return v8;
}

- (BOOL)__isAutoJoiningAtHome
{
  v15 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  loiTypes = selfCopy->_loiTypes;
  if (loiTypes && [(NSArray *)loiTypes count])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = selfCopy->_loiTypes;
    v5 = 0;
    v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v5 |= [*(*(&v10 + 1) + 8 * i) type] == 0;
        }

        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v5 = 0;
  }

  objc_sync_exit(selfCopy);

  return v5 & 1;
}

- (BOOL)__isAutoJoinCancelled:(id *)cancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cancelled = selfCopy->_cancelled;
  v6 = selfCopy->_underlyingCancelError;
  objc_sync_exit(selfCopy);

  if (cancelled)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Auto-join has been cancelled" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [dictionary setObject:v6 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A798];
    v10 = [dictionary copy];
    v11 = [v8 errorWithDomain:v9 code:89 userInfo:v10];

    [(CWFAutoJoinMetric *)selfCopy->_metric setWasCancelled:1];
    if (cancelled && v11)
    {
      v12 = v11;
      *cancelled = v11;
    }
  }

  else
  {
    v11 = 0;
  }

  return cancelled;
}

- (BOOL)__isAutoJoinRequeued
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requeued = selfCopy->_requeued;
  objc_sync_exit(selfCopy);

  return requeued;
}

- (BOOL)__allowOpportunisticNetworkTransitionWithTrigger:(int64_t)trigger
{
  v4 = _os_feature_enabled_impl();
  v5 = 0x180030C001101uLL >> (trigger - 20);
  if ((trigger - 20) > 0x30)
  {
    LOBYTE(v5) = 0;
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6 & 1;
}

- (BOOL)__allowBrokenBackhaulPersonalHotspotFallback
{
  v21 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = [(CWFAutoJoinManager *)self __calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:&v12];
  v4 = v12;
  if (!v3)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"BBH PH fallback is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v4)
    {
      [dictionary setObject:v4 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

    v7 = CWFGetOSLog();
    if (v7)
    {
      v8 = CWFGetOSLog();
    }

    else
    {
      v8 = MEMORY[0x1E69E9C10];
      v9 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CWFAutoJoinManager *)self __descriptionForError:v6];
      v13 = 136446978;
      v14 = "[CWFAutoJoinManager __allowBrokenBackhaulPersonalHotspotFallback]";
      v15 = 2082;
      v16 = "CWFAutoJoinManager.m";
      v17 = 1024;
      v18 = 4900;
      v19 = 2114;
      v20 = v10;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 0, "[corewifi] %{public}s (%{public}s:%u) AUTO-JOIN: Broken backhaul PH fallback not allowed (error=%{public}@)", &v13, 38);
    }
  }

  return v3;
}

- (BOOL)__allowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  __isAutoJoinRequeued = [(CWFAutoJoinManager *)self __isAutoJoinRequeued];
  if (__isAutoJoinRequeued)
  {
    v9 = 0;
    goto LABEL_23;
  }

  v25 = 0;
  v8 = [(CWFAutoJoinManager *)self __isAutoJoinCancelled:&v25];
  v9 = v25;
  if (v8)
  {
    v17 = 1;
    goto LABEL_13;
  }

  if (trigger == 67 && ![(CWFAutoJoinManager *)self __allowBrokenBackhaulPersonalHotspotFallback])
  {
LABEL_23:
    v17 = 0;
    goto LABEL_13;
  }

  allowAutoJoinHandler = [(CWFAutoJoinManager *)self allowAutoJoinHandler];

  if (!allowAutoJoinHandler)
  {
    goto LABEL_8;
  }

  v24 = 0;
  v11 = [(CWFAutoJoinManager *)self __calloutToAllowAutoJoinWithTrigger:trigger error:&v24];
  v12 = v24;
  v13 = v12;
  if (v11)
  {

LABEL_8:
    v14 = 1;
    if (!error)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Auto-join is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v13)
  {
    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  v16 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

  v17 = 0;
  v9 = v16;
LABEL_13:
  v18 = CWFGetOSLog();
  if (v18)
  {
    v19 = CWFGetOSLog();
  }

  else
  {
    v19 = MEMORY[0x1E69E9C10];
    v20 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(CWFAutoJoinManager *)self __descriptionForError:v9];
    v26[0] = 67109634;
    v26[1] = __isAutoJoinRequeued;
    v27 = 1024;
    v28 = v17;
    v29 = 2114;
    v30 = v21;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 0, "[corewifi] AUTO-JOIN: Auto-join aborted (requeued=%d, cancelled=%d, error=(%{public}@))", v26, 24);
  }

  [(CWFAutoJoinMetric *)self->_metric setWasAborted:1];
  v14 = 0;
  if (error)
  {
LABEL_19:
    if (v9)
    {
      v22 = v9;
      *error = v9;
    }
  }

LABEL_21:

  return v14;
}

- (BOOL)__shouldBypassUnusedNetworkPeriodCheckForTrigger:(int64_t)trigger knownNetwork:(id)network
{
  networkCopy = network;
  v6 = networkCopy;
  if ((trigger - 32) <= 0x21 && ((1 << (trigger - 32)) & 0x200008001) != 0)
  {
    v7 = 1;
  }

  else if ([networkCopy addReason] == 7 || objc_msgSend(v6, "addReason") == 12)
  {
    lastJoinedBySystemAt = [v6 lastJoinedBySystemAt];
    v7 = lastJoinedBySystemAt == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)__shouldBypassLockdownModeCheckForTrigger:(int64_t)trigger targetNetworkSSID:(id)d networkSSID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = iDCopy;
  if (trigger == 7)
  {
    if (dCopy == iDCopy)
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (dCopy && iDCopy)
      {
        v10 = [dCopy isEqual:iDCopy];
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)__isDeferrableKnownNetwork:(id)network
{
  networkCopy = network;
  v5 = ([networkCopy isCarPlay] & 1) == 0 && ((objc_msgSend(networkCopy, "isHotspot") & 1) != 0 || (objc_msgSend(networkCopy, "isPersonalHotspot") & 1) != 0 || objc_msgSend(networkCopy, "addReason") == 10 || (objc_msgSend(networkCopy, "isOpen") & 1) != 0 || (objc_msgSend(networkCopy, "isOWE") & 1) != 0 || (objc_msgSend(networkCopy, "isWAPI") & 1) != 0 || objc_msgSend(networkCopy, "isPSK") && ((objc_msgSend(networkCopy, "isWEP") & 1) != 0 || objc_msgSend(networkCopy, "isWPA")));
  if ([networkCopy networkOfInterestHomeState] == 2 && -[CWFAutoJoinManager __isAutoJoiningAtHome](self, "__isAutoJoiningAtHome"))
  {
    location = [(CWFAutoJoinManager *)self location];
    v7 = [networkCopy wasManuallyJoinedRecentlyInProximityOf:location] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v5 | v7;
}

- (BOOL)__isDeferrableJoinCandidate:(id)candidate
{
  candidateCopy = candidate;
  matchingKnownNetworkProfile = [candidateCopy matchingKnownNetworkProfile];
  if ([matchingKnownNetworkProfile isCarPlay])
  {
    v6 = 0;
  }

  else
  {
    matchingKnownNetworkProfile2 = [candidateCopy matchingKnownNetworkProfile];
    if ([(CWFAutoJoinManager *)self __isDeferrableKnownNetwork:matchingKnownNetworkProfile2])
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1E0BF1240(candidateCopy);
    }
  }

  return v6;
}

- (BOOL)__allowKnownNetwork:(id)network context:(id)context allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer targetQueue:(id)queue error:(id *)error
{
  v117 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  contextCopy = context;
  transitionCopy = transition;
  queueCopy = queue;
  bOOLValue2 = 0;
  autoJoinParameters = [contextCopy autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  knownNetworkAllowCache = selfCopy->_knownNetworkAllowCache;
  identifier = [networkCopy identifier];
  v104 = [(NSMutableDictionary *)knownNetworkAllowCache objectForKeyedSubscript:identifier];

  knownNetworkDeferCache = selfCopy->_knownNetworkDeferCache;
  identifier2 = [networkCopy identifier];
  v102 = [(NSMutableDictionary *)knownNetworkDeferCache objectForKeyedSubscript:identifier2];

  knownNetworkAllowErrorCache = selfCopy->_knownNetworkAllowErrorCache;
  identifier3 = [networkCopy identifier];
  v103 = [(NSMutableDictionary *)knownNetworkAllowErrorCache objectForKeyedSubscript:identifier3];

  objc_sync_exit(selfCopy);
  if ([networkCopy isAutoJoinDisabled])
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Known network profile is disabled" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
LABEL_3:
    v26 = v25;
LABEL_4:
    LOBYTE(v27) = 0;
    goto LABEL_5;
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](selfCopy, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", trigger, networkCopy) && (([networkCopy isCaptive] & 1) != 0 || objc_msgSend(networkCopy, "wasCaptive")) && ((objc_msgSend(networkCopy, "isOpen") & 1) != 0 || objc_msgSend(networkCopy, "isOWE")))
  {
    lastJoinedOnAnyDeviceAt = [networkCopy lastJoinedOnAnyDeviceAt];
    if (lastJoinedOnAnyDeviceAt)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v58 = v57;
      lastJoinedOnAnyDeviceAt2 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt2 timeIntervalSinceReferenceDate];
      v61 = v58 - v60;

      if (v61 > 1209600.0)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v62 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Captive known network profile unused for %d weeks", 2];
        [dictionary setObject:v62 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
        goto LABEL_3;
      }
    }
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](selfCopy, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", trigger, networkCopy) && (([networkCopy isOpen] & 1) != 0 || objc_msgSend(networkCopy, "isOWE")))
  {
    lastJoinedOnAnyDeviceAt3 = [networkCopy lastJoinedOnAnyDeviceAt];
    if (lastJoinedOnAnyDeviceAt3)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v31 = v30;
      lastJoinedOnAnyDeviceAt4 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt4 timeIntervalSinceReferenceDate];
      v34 = v31 - v33;

      if (v34 > 1209600.0)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Open known network profile unused for %d weeks", 2];
        [dictionary setObject:v35 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
        goto LABEL_3;
      }
    }
  }

  if (![(CWFAutoJoinManager *)selfCopy __shouldBypassUnusedNetworkPeriodCheckForTrigger:trigger knownNetwork:networkCopy])
  {
    lastJoinedOnAnyDeviceAt5 = [networkCopy lastJoinedOnAnyDeviceAt];
    if (lastJoinedOnAnyDeviceAt5)
    {
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v38 = v37;
      lastJoinedOnAnyDeviceAt6 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt6 timeIntervalSinceReferenceDate];
      v41 = v38 - v40;

      if (v41 > 43545600.0)
      {
        dictionary = [MEMORY[0x1E695DF90] dictionary];
        v42 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Known network profile unused for %d weeks", 72];
        [dictionary setObject:v42 forKeyedSubscript:*MEMORY[0x1E696A578]];

        v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
        goto LABEL_3;
      }
    }
  }

  if (!-[CWFAutoJoinManager __shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:](selfCopy, "__shouldBypassUnusedNetworkPeriodCheckForTrigger:knownNetwork:", trigger, networkCopy) && (([networkCopy isOpen] & 1) != 0 || objc_msgSend(networkCopy, "isOWE")))
  {
    lastJoinedByUserAt = [networkCopy lastJoinedByUserAt];
    if (!lastJoinedByUserAt)
    {
      lastJoinedOnAnyDeviceAt7 = [networkCopy lastJoinedOnAnyDeviceAt];
      if (!lastJoinedOnAnyDeviceAt7)
      {
        addedAt = [networkCopy addedAt];
        if (!addedAt)
        {
          goto LABEL_63;
        }
      }

      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v48 = v47;
      lastJoinedOnAnyDeviceAt8 = [networkCopy lastJoinedOnAnyDeviceAt];
      [lastJoinedOnAnyDeviceAt8 timeIntervalSinceReferenceDate];
      if (v48 - v50 > 86400.0)
      {
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v52 = v51;
        addedAt2 = [networkCopy addedAt];
        [addedAt2 timeIntervalSinceReferenceDate];
        v55 = v52 - v54;

        if (lastJoinedOnAnyDeviceAt7)
        {
        }

        else
        {
        }

        if (v55 > 86400.0)
        {
          dictionary = [MEMORY[0x1E695DF90] dictionary];
          86400 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Open known network profile never joined by user/UI unused for %d seconds", 86400];
          [dictionary setObject:86400 forKeyedSubscript:*MEMORY[0x1E696A578]];

          v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
          goto LABEL_3;
        }

        goto LABEL_63;
      }

      if (lastJoinedOnAnyDeviceAt7)
      {
        lastJoinedByUserAt = lastJoinedOnAnyDeviceAt7;
      }

      else
      {
        lastJoinedByUserAt = addedAt;
      }
    }
  }

LABEL_63:
  if ([associatedNetwork isPersonalHotspot])
  {
    brokenBackhaulStateUpdatedAt = [networkCopy brokenBackhaulStateUpdatedAt];
    [brokenBackhaulStateUpdatedAt timeIntervalSinceNow];
    v76 = v75;
    v77 = v75 >= 0.0;
    brokenBackhaulStateUpdatedAt2 = [networkCopy brokenBackhaulStateUpdatedAt];
    [brokenBackhaulStateUpdatedAt2 timeIntervalSinceNow];
    if (!v77)
    {
      v79 = -v79;
    }

    v80 = v79 < 3600.0;
    if (v79 < 3600.0 && [networkCopy brokenBackhaulState] != 4)
    {
      v80 = [networkCopy brokenBackhaulState] == 3;
    }

    if (v76 < 0.0)
    {

      if (!v80)
      {
        goto LABEL_71;
      }
    }

    else
    {

      if (!v80)
      {
        goto LABEL_71;
      }
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    3600 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Known network profile with recently (<%ds) broken backhaul not allowed when already associated to PH", 3600];
    [dictionary setObject:3600 forKeyedSubscript:*MEMORY[0x1E696A578]];

    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
    goto LABEL_3;
  }

LABEL_71:
  if (!transitionCopy && v104)
  {
    bOOLValue = [v104 BOOLValue];
    bOOLValue2 = [v102 BOOLValue];
    if ((bOOLValue & 1) == 0)
    {
      userInfo = [v103 userInfo];
      dictionary = [userInfo mutableCopy];

      [dictionary setObject:@"Known network profile is not allowed by daemon (cached)" forKeyedSubscript:*MEMORY[0x1E696A578]];
      v83 = MEMORY[0x1E696ABC0];
      domain = [v103 domain];
      v26 = [v83 errorWithDomain:domain code:objc_msgSend(v103 userInfo:{"code"), dictionary}];

      goto LABEL_4;
    }

    goto LABEL_78;
  }

  allowKnownNetworkHandler = [(CWFAutoJoinManager *)selfCopy allowKnownNetworkHandler];

  if (!allowKnownNetworkHandler)
  {
LABEL_78:
    dictionary = 0;
    v26 = 0;
    LOBYTE(v27) = 1;
    goto LABEL_5;
  }

  v109 = 0;
  v27 = [(CWFAutoJoinManager *)selfCopy __calloutToAllowKnownNetwork:networkCopy trigger:trigger allowForSeamlessSSIDTransition:transitionCopy defer:&bOOLValue2 queue:queueCopy error:&v109];
  v100 = v109;
  if (v27)
  {
    dictionary = 0;
    v26 = 0;
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Known network profile is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
    [dictionary setObject:v100 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    v26 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];
  }

  if (!transitionCopy)
  {
    v87 = selfCopy;
    objc_sync_enter(v87);
    v88 = [MEMORY[0x1E696AD98] numberWithBool:v27];
    v89 = selfCopy->_knownNetworkAllowCache;
    identifier4 = [networkCopy identifier];
    [(NSMutableDictionary *)v89 setObject:v88 forKeyedSubscript:identifier4];

    v91 = selfCopy->_knownNetworkAllowErrorCache;
    identifier5 = [networkCopy identifier];
    [(NSMutableDictionary *)v91 setObject:v26 forKeyedSubscript:identifier5];

    v93 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue2];
    v94 = selfCopy->_knownNetworkDeferCache;
    identifier6 = [networkCopy identifier];
    [(NSMutableDictionary *)v94 setObject:v93 forKeyedSubscript:identifier6];

    updatedAllowCacheKnownNetworks = v87->_updatedAllowCacheKnownNetworks;
    identifier7 = [networkCopy identifier];
    [(NSMutableSet *)updatedAllowCacheKnownNetworks addObject:identifier7];

    objc_sync_exit(v87);
  }

LABEL_5:
  if ([(CWFAutoJoinManager *)selfCopy __isDeferrableKnownNetwork:networkCopy])
  {
    bOOLValue2 = 1;
  }

  lastJoinedByUserAt2 = [networkCopy lastJoinedByUserAt];
  if (lastJoinedByUserAt2)
  {
  }

  else if ([contextCopy preferUserConfiguredNetworks])
  {
    bOOLValue2 = 1;
  }

  if (v27)
  {
    [(CWFAutoJoinManager *)selfCopy __removeDisallowedKnownNetwork:networkCopy];
  }

  else
  {
    v43 = CWFGetOSLog();
    if (v43)
    {
      v44 = CWFGetOSLog();
    }

    else
    {
      v44 = MEMORY[0x1E69E9C10];
      v63 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      identifier8 = [networkCopy identifier];
      redactedForWiFi = [identifier8 redactedForWiFi];
      v66 = [(CWFAutoJoinManager *)selfCopy __descriptionForError:v26];
      v111 = 138543874;
      v112 = redactedForWiFi;
      v113 = 2114;
      v114 = v66;
      v115 = 2114;
      v116 = networkCopy;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v44, 0, "[corewifi] AUTO-JOIN: Known network '%{public}@' is not allowed (error=(%{public}@), network=(%{public}@))", &v111, 32);
    }

    if (!transitionCopy)
    {
      [(CWFAutoJoinManager *)selfCopy __addDisallowedKnownNetwork:networkCopy];
    }
  }

  if (defer && bOOLValue2 == 1)
  {
    v67 = CWFGetOSLog();
    if (v67)
    {
      v68 = CWFGetOSLog();
    }

    else
    {
      v68 = MEMORY[0x1E69E9C10];
      v69 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
    {
      identifier9 = [networkCopy identifier];
      redactedForWiFi2 = [identifier9 redactedForWiFi];
      v111 = 138543618;
      v112 = redactedForWiFi2;
      v113 = 2114;
      v114 = networkCopy;
      LODWORD(v99) = 22;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v68, 0, "[corewifi] AUTO-JOIN: Known network '%{public}@' is deferrable (network=(%{public}@))", &v111, v99);
    }

    *defer = bOOLValue2;
  }

  if (error && v26)
  {
    v72 = v26;
    *error = v26;
  }

  return v27;
}

- (BOOL)isKnownNetworkDisallowed:(id)disallowed
{
  disallowedCopy = disallowed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [disallowedCopy identifier];
  if (identifier)
  {
    allKeys = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allKeys];
    identifier2 = [disallowedCopy identifier];
    v9 = [allKeys containsObject:identifier2];
  }

  else
  {
    v9 = 0;
  }

  objc_sync_exit(selfCopy);
  return v9;
}

- (void)__removeDisallowedKnownNetwork:(id)network
{
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [networkCopy identifier];

  if (identifier)
  {
    disallowedKnownNetworksMap = selfCopy->_disallowedKnownNetworksMap;
    identifier2 = [networkCopy identifier];
    [(NSMutableDictionary *)disallowedKnownNetworksMap removeObjectForKey:identifier2];
  }

  objc_sync_exit(selfCopy);
}

- (void)__addDisallowedKnownNetwork:(id)network
{
  networkCopy = network;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  identifier = [networkCopy identifier];

  if (identifier)
  {
    disallowedKnownNetworksMap = selfCopy->_disallowedKnownNetworksMap;
    identifier2 = [networkCopy identifier];
    [(NSMutableDictionary *)disallowedKnownNetworksMap setObject:networkCopy forKey:identifier2];
  }

  objc_sync_exit(selfCopy);
}

- (id)__disallowedKnownNetworks
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allValues = [(NSMutableDictionary *)selfCopy->_disallowedKnownNetworksMap allValues];
  v4 = [allValues copy];

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)__knownNetworksSupportingSeamlessSSIDTransition:(id)transition fromNetwork:(id)network allowSameSSID:(BOOL)d context:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  transitionCopy = transition;
  networkCopy = network;
  contextCopy = context;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v14 = CWFKnownNetworksSupportingSeamlessSSIDTransitionForScanResult(networkCopy, transitionCopy, d);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        if ([(CWFAutoJoinManager *)self __allowKnownNetwork:v19 context:contextCopy allowForSeamlessSSIDTransition:networkCopy defer:0 targetQueue:self->_targetQueue error:0])
        {
          [orderedSet addObject:v19];
        }
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  v20 = [orderedSet copy];

  return v20;
}

- (BOOL)__candidateSupportsSeamlessSSIDTransition:(id)transition fromNetwork:(id)network context:(id)context
{
  transitionCopy = transition;
  networkCopy = network;
  contextCopy = context;
  if (CWFScanResultSupportsSeamlessSSIDTransition(networkCopy, transitionCopy))
  {
    matchingKnownNetworkProfile = [transitionCopy matchingKnownNetworkProfile];
    v12 = [(CWFAutoJoinManager *)self __allowKnownNetwork:matchingKnownNetworkProfile context:contextCopy allowForSeamlessSSIDTransition:networkCopy defer:0 targetQueue:self->_targetQueue error:0];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)__performGASQueryWithScanResults:(id)results ANQPElementIDList:(id)list maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v111 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  listCopy = list;
  v13 = CWFGetOSLog();
  if (v13)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v100 = 67109376;
    *v101 = onlyCopy;
    *&v101[4] = 2048;
    *&v101[6] = age;
    LODWORD(v79) = 18;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[corewifi] AUTO-JOIN: Performing GAS/ANQP (cacheOnly=%d, maxCacheAge=%lums)", &v100, v79);
  }

  v81 = onlyCopy;
  ageCopy = age;

  array = [MEMORY[0x1E695DF70] array];
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  obj = resultsCopy;
  v16 = [obj countByEnumeratingWithState:&v95 objects:v110 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v96;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v96 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v95 + 1) + 8 * i);
        v21 = MEMORY[0x1E696AEC0];
        networkName = [v20 networkName];
        bSSID = [v20 BSSID];
        v24 = [v21 stringWithFormat:@"'%@'/%@", networkName, bSSID];
        [array addObject:v24];
      }

      v17 = [obj countByEnumeratingWithState:&v95 objects:v110 count:16];
    }

    while (v17);
  }

  v25 = CWFGetOSLog();
  if (v25)
  {
    v26 = CWFGetOSLog();
  }

  else
  {
    v26 = MEMORY[0x1E69E9C10];
    v27 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [obj count];
    v29 = [array componentsJoinedByString:{@", "}];
    v100 = 134218242;
    *v101 = v28;
    *&v101[8] = 2114;
    *&v101[10] = v29;
    LODWORD(v79) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v26, 0, "[corewifi] AUTO-JOIN: GAS/ANQP Networks (%lu) : %{public}@", &v100, v79);
  }

  v30 = CWFGetOSLog();
  if (v30)
  {
    v31 = CWFGetOSLog();
  }

  else
  {
    v31 = MEMORY[0x1E69E9C10];
    v32 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v33 = [listCopy count];
    v34 = [listCopy componentsJoinedByString:{@", "}];
    v100 = 134218242;
    *v101 = v33;
    *&v101[8] = 2114;
    *&v101[10] = v34;
    LODWORD(v79) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v31, 0, "[corewifi] AUTO-JOIN: ANQP Element IDs (%lu) : %{public}@", &v100, v79);
  }

  v35 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  performGASQueryHandler = [(CWFAutoJoinManager *)self performGASQueryHandler];

  v84 = listCopy;
  if (performGASQueryHandler)
  {
    v37 = objc_alloc_init(CWFANQPParameters);
    [(CWFANQPParameters *)v37 setScanResults:obj];
    [(CWFANQPParameters *)v37 setANQPElementIDList:listCopy];
    [(CWFANQPParameters *)v37 setAcceptableCacheAge:ageCopy];
    v93 = 0;
    v94 = 0;
    v38 = [(CWFAutoJoinManager *)self __calloutToPerformGASQueryWithParameters:v37 GASQueryNetworks:&v94 error:&v93];
    v39 = v94;
    v40 = v93;
    if (v38)
    {
      if ([v39 count])
      {
        gASQueryNetworks = [(CWFAutoJoinMetric *)self->_metric GASQueryNetworks];
        metric = self->_metric;
        if (gASQueryNetworks)
        {
          gASQueryNetworks2 = [(CWFAutoJoinMetric *)metric GASQueryNetworks];
          [gASQueryNetworks2 arrayByAddingObjectsFromArray:v39];
          v45 = v44 = v39;
          [(CWFAutoJoinMetric *)self->_metric setGASQueryNetworks:v45];

          v39 = v44;
        }

        else
        {
          [(CWFAutoJoinMetric *)metric setGASQueryNetworks:v39];
        }
      }

      v49 = v38;
      v80 = 0;
      v47 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"Failed to perform GAS/ANQP" forKeyedSubscript:*MEMORY[0x1E696A578]];
      [dictionary setObject:v40 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v80 = dictionary;
      v47 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:dictionary];
    }
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:@"CWFAutoJoinManager.performGASQueryHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v80 = dictionary2;
    v47 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:dictionary2];
    v39 = 0;
    v38 = 0;
  }

  v50 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v35;
  [(CWFAutoJoinMetric *)self->_metric setGASQueryDuration:[(CWFAutoJoinMetric *)self->_metric GASQueryDuration]+ v50 / 0xF4240];
  if (v47)
  {
    gASQueryErrors = [(CWFAutoJoinMetric *)self->_metric GASQueryErrors];
    if (gASQueryErrors)
    {
      gASQueryErrors2 = [(CWFAutoJoinMetric *)self->_metric GASQueryErrors];
      v53 = [gASQueryErrors2 arrayByAddingObject:v47];
      [(CWFAutoJoinMetric *)self->_metric setGASQueryErrors:v53];
    }

    else
    {
      gASQueryErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v47];
      [(CWFAutoJoinMetric *)self->_metric setGASQueryErrors:gASQueryErrors2];
    }
  }

  v54 = CWFGetOSLog();
  if (v54)
  {
    v55 = CWFGetOSLog();
  }

  else
  {
    v55 = MEMORY[0x1E69E9C10];
    v56 = MEMORY[0x1E69E9C10];
  }

  v85 = v47;

  v57 = v38 == 0;
  v58 = (16 * v57);
  if (os_log_type_enabled(v55, (16 * v57)))
  {
    if (v38)
    {
      v59 = "SUCCEEDED";
    }

    else
    {
      v59 = "FAILED";
    }

    v60 = [(CWFAutoJoinManager *)self __descriptionForError:v47];
    v61 = [v39 count];
    v100 = 136447490;
    *v101 = v59;
    *&v101[8] = 2048;
    *&v101[10] = v50 / 0xF4240;
    v102 = 2114;
    v103 = v60;
    v104 = 2048;
    v105 = v61;
    v106 = 1024;
    v107 = v81;
    v108 = 2048;
    v109 = ageCopy;
    LODWORD(v79) = 58;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v55, v58, "[corewifi] AUTO-JOIN: GAS/ANQP %{public}s (duration=%lums, error=(%{public}@), liveCount=%lu, cacheOnly=%d, maxCacheAge=%lu)", &v100, v79);
  }

  v62 = CWFGetOSLog();
  if (v62)
  {
    v63 = CWFGetOSLog();
  }

  else
  {
    v63 = MEMORY[0x1E69E9C10];
    v64 = MEMORY[0x1E69E9C10];
  }

  v82 = v39;

  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v65 = [v38 count];
    v100 = 134217984;
    *v101 = v65;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v63, 0, "[corewifi] AUTO-JOIN: GAS/ANQP Responses (%lu) -->", &v100);
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v66 = v38;
  v67 = [v66 countByEnumeratingWithState:&v89 objects:v99 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v90;
    v70 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v68; ++j)
      {
        if (*v90 != v69)
        {
          objc_enumerationMutation(v66);
        }

        v72 = *(*(&v89 + 1) + 8 * j);
        v73 = CWFGetOSLog();
        if (v73)
        {
          v74 = CWFGetOSLog();
        }

        else
        {
          v75 = v70;
          v74 = v70;
        }

        if (os_log_type_enabled(v74, OS_LOG_TYPE_DEFAULT))
        {
          v100 = 138543362;
          *v101 = v72;
          LODWORD(v79) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v74, 0, "[corewifi] AUTO-JOIN: -- %{public}@", &v100, v79);
        }
      }

      v68 = [v66 countByEnumeratingWithState:&v89 objects:v99 count:16];
    }

    while (v68);
  }

  if (error && v85)
  {
    v76 = v85;
    *error = v85;
  }

  v77 = v66;

  return v66;
}

- (id)__performScanWithChannelList:(id)list SSIDList:(id)dList passive:(BOOL)passive dwellTime:(unint64_t)time maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only isPreAssociationScan:(BOOL)scan checkForKnownNetworks:(BOOL)self0 error:(id *)self1
{
  onlyCopy = only;
  passiveCopy = passive;
  scanCopy4 = scan;
  v127 = *MEMORY[0x1E69E9840];
  listCopy = list;
  dListCopy = dList;
  v20 = CWFGetOSLog();
  if (v20)
  {
    v21 = CWFGetOSLog();
  }

  else
  {
    v21 = MEMORY[0x1E69E9C10];
    v22 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v114 = 134218496;
    timeCopy = time;
    v116 = 1024;
    *v117 = onlyCopy;
    *&v117[4] = 2048;
    *&v117[6] = age;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 0, "[corewifi] AUTO-JOIN: Scanning (dwellTime=%lums, cacheOnly=%d, maxCacheAge=%lums)", &v114, 28, v93);
  }

  v23 = CWFGetOSLog();
  if (v23)
  {
    v24 = CWFGetOSLog();
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v25 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v26 = [listCopy count];
    v27 = [listCopy componentsJoinedByString:{@", "}];
    v114 = 134218242;
    timeCopy = v26;
    v116 = 2114;
    *v117 = v27;
    LODWORD(v92) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, 0, "[corewifi] AUTO-JOIN: Scan Channels (%lu) : %{public}@", &v114, v92);

    scanCopy4 = scan;
  }

  v28 = CWFGetOSLog();
  if (v28)
  {
    v29 = CWFGetOSLog();
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [dListCopy count];
    v32 = [dListCopy componentsJoinedByString:{@", "}];
    v114 = 134218242;
    timeCopy = v31;
    v116 = 2114;
    *v117 = v32;
    LODWORD(v92) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v29, 0, "[corewifi] AUTO-JOIN: Scan Hidden SSIDs (%lu) : %{public}@", &v114, v92);

    scanCopy4 = scan;
  }

  v33 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  scanForNetworksHandler = [(CWFAutoJoinManager *)self scanForNetworksHandler];

  v99 = dListCopy;
  v100 = listCopy;
  ageCopy = age;
  if (scanForNetworksHandler)
  {
    v35 = objc_alloc_init(CWFScanParameters);
    [(CWFScanParameters *)v35 setBSSType:3];
    [(CWFScanParameters *)v35 setPHYMode:1];
    [(CWFScanParameters *)v35 setNumberOfScans:1];
    [(CWFScanParameters *)v35 setIncludeHiddenNetworks:1];
    [(CWFScanParameters *)v35 setAddScanDurationToMaxAge:1];
    [(CWFScanParameters *)v35 setChannels:listCopy];
    [(CWFScanParameters *)v35 setSSIDList:dListCopy];
    [(CWFScanParameters *)v35 setDwellTime:time];
    [(CWFScanParameters *)v35 setScanFlags:2592];
    v95 = v33;
    if (onlyCopy)
    {
      [(CWFScanParameters *)v35 setScanType:3];
    }

    else
    {
      if (passiveCopy)
      {
        v40 = 2;
      }

      else
      {
        v40 = 1;
      }

      [(CWFScanParameters *)v35 setScanType:v40];
      [(CWFScanParameters *)v35 setAcceptableCacheAge:age];
    }

    [(CWFScanParameters *)v35 setMaximumAge:age];
    v111 = 0;
    v112 = 0;
    v39 = [(CWFAutoJoinManager *)self __calloutToScanForNetworksWithParameters:v35 scanChannels:&v112 error:&v111];
    v38 = v112;
    v41 = v111;
    if (v39)
    {
      if ([v38 count])
      {
        metric = self->_metric;
        if (scanCopy4)
        {
          [(CWFAutoJoinMetric *)metric preAssociationScanChannels];
        }

        else
        {
          [(CWFAutoJoinMetric *)metric scanChannels];
        }
        v43 = ;
        v101 = v38;
        HIDWORD(v92) = onlyCopy;
        v98 = v43;
        if (v43)
        {
          array = [v43 mutableCopy];
        }

        else
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        v46 = array;
        v109 = 0u;
        v110 = 0u;
        v107 = 0u;
        v108 = 0u;
        v47 = v101;
        v48 = [v47 countByEnumeratingWithState:&v107 objects:v126 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v108;
          do
          {
            for (i = 0; i != v49; ++i)
            {
              if (*v108 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:*(*(&v107 + 1) + 8 * i)];
              [v46 addObject:v52];
            }

            v49 = [v47 countByEnumeratingWithState:&v107 objects:v126 count:16];
          }

          while (v49);
        }

        v53 = self->_metric;
        scanCopy4 = scan;
        if (scan)
        {
          [(CWFAutoJoinMetric *)v53 setPreAssociationScanChannels:v46];
        }

        else
        {
          [(CWFAutoJoinMetric *)v53 setScanChannels:v46];
        }

        onlyCopy = HIDWORD(v92);

        v38 = v101;
      }

      v54 = v39;
      v97 = 0;
      v37 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"Failed to perform scan" forKeyedSubscript:*MEMORY[0x1E696A578]];
      [dictionary setObject:v41 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v97 = dictionary;
      v37 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:dictionary];
    }

    v33 = v95;
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:@"CWFAutoJoinManager.scanForNetworksHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v97 = dictionary2;
    v37 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:dictionary2];
    v38 = 0;
    v39 = 0;
  }

  v55 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v33) / 0xF4240;
  v56 = self->_metric;
  if (scanCopy4)
  {
    [(CWFAutoJoinMetric *)self->_metric setPreAssociationScanDuration:[(CWFAutoJoinMetric *)v56 preAssociationScanDuration]+ v55];
    if (!v37)
    {
      goto LABEL_54;
    }
  }

  else
  {
    [(CWFAutoJoinMetric *)self->_metric setScanDuration:[(CWFAutoJoinMetric *)v56 scanDuration]+ v55];
    if (!v37)
    {
      goto LABEL_54;
    }
  }

  scanErrors = [(CWFAutoJoinMetric *)self->_metric scanErrors];
  if (scanErrors)
  {
    scanErrors2 = [(CWFAutoJoinMetric *)self->_metric scanErrors];
    v59 = [scanErrors2 arrayByAddingObject:v37];
    [(CWFAutoJoinMetric *)self->_metric setScanErrors:v59];
  }

  else
  {
    scanErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v37];
    [(CWFAutoJoinMetric *)self->_metric setScanErrors:scanErrors2];
  }

LABEL_54:
  v60 = CWFGetOSLog();
  if (v60)
  {
    v61 = CWFGetOSLog();
  }

  else
  {
    v61 = MEMORY[0x1E69E9C10];
    v62 = MEMORY[0x1E69E9C10];
  }

  v63 = v39 == 0;
  v64 = (16 * v63);
  v96 = v37;
  if (os_log_type_enabled(v61, (16 * v63)))
  {
    if (v39)
    {
      v65 = "SUCCEEDED";
    }

    else
    {
      v65 = "FAILED";
    }

    v66 = [v39 count];
    v67 = [(CWFAutoJoinManager *)self __descriptionForError:v37];
    v68 = [v38 count];
    v114 = 136447746;
    timeCopy = v65;
    v116 = 2048;
    *v117 = v55;
    *&v117[8] = 2048;
    *&v117[10] = v66;
    v118 = 2114;
    v119 = v67;
    v120 = 2048;
    v121 = v68;
    v122 = 1024;
    v123 = onlyCopy;
    v124 = 2048;
    v125 = ageCopy;
    LODWORD(v92) = 68;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v61, v64, "[corewifi] AUTO-JOIN: Scan %{public}s (duration=%lums, results=%lu, error=(%{public}@), liveCount=%lu, cacheOnly=%d, maxCacheAge=%lu)", &v114, v92);
  }

  v69 = CWFGetOSLog();
  if (v69)
  {
    v70 = CWFGetOSLog();
  }

  else
  {
    v70 = MEMORY[0x1E69E9C10];
    v71 = MEMORY[0x1E69E9C10];
  }

  v102 = v38;

  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
  {
    if (onlyCopy)
    {
      v72 = " Cache";
    }

    else
    {
      v72 = "";
    }

    v73 = [v39 count];
    v114 = 136446466;
    timeCopy = v72;
    v116 = 2048;
    *v117 = v73;
    LODWORD(v92) = 22;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v70, 0, "[corewifi] AUTO-JOIN: Scan%{public}s Results (%lu) -->", &v114, v92);
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v74 = v39;
  v75 = [v74 countByEnumeratingWithState:&v103 objects:v113 count:16];
  if (v75)
  {
    v76 = v75;
    v77 = *v104;
    v78 = MEMORY[0x1E69E9C10];
    do
    {
      for (j = 0; j != v76; ++j)
      {
        if (*v104 != v77)
        {
          objc_enumerationMutation(v74);
        }

        v80 = *(*(&v103 + 1) + 8 * j);
        v81 = CWFGetOSLog();
        if (v81)
        {
          v82 = CWFGetOSLog();
        }

        else
        {
          v83 = v78;
          v82 = v78;
        }

        if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
        {
          v114 = 138543362;
          timeCopy = v80;
          LODWORD(v92) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v82, 0, "[corewifi] AUTO-JOIN: -- %{public}@", &v114, v92);
        }

        channel = [v80 channel];
        v85 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:channel];

        scanChannels = [(CWFAutoJoinMetric *)self->_metric scanChannels];
        v87 = [scanChannels containsObject:v85];

        if (v87)
        {
          self->_didDiscoverBSS = 1;
          sSID = [v80 SSID];
          v89 = [sSID length];

          if (!v89)
          {
            [(NSMutableSet *)self->_hiddenNetworkChannels addObject:v85];
          }
        }
      }

      v76 = [v74 countByEnumeratingWithState:&v103 objects:v113 count:16];
    }

    while (v76);
  }

  if (networks)
  {
    self->_didDiscoverKnownNetworks = [(CWFAutoJoinManager *)self __isEnabledKnownNetworkNearby];
  }

  if (error && v96)
  {
    v90 = v96;
    *error = v96;
  }

  return v74;
}

- (id)__alreadyFoundFollowup6GHzBSSWithSignature:(id)signature
{
  v34 = *MEMORY[0x1E69E9840];
  signatureCopy = signature;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(NSMutableDictionary *)self->_followup6GHzScanResultsMap allValues];
  v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v22)
  {
    v21 = *v29;
    do
    {
      v5 = 0;
      do
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = v5;
        v6 = *(*(&v28 + 1) + 8 * v5);
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
LABEL_8:
          v11 = 0;
          while (1)
          {
            if (*v25 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v24 + 1) + 8 * v11);
            v13 = MEMORY[0x1E696AEC0];
            shortSSID = [v12 shortSSID];
            bSSID = [v12 BSSID];
            channel = [v12 channel];
            v17 = [v13 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel, "channel")];

            if (signatureCopy)
            {
              if (v17 && ([v17 isEqual:signatureCopy] & 1) != 0)
              {
                break;
              }
            }

            if (v9 == ++v11)
            {
              v9 = [v7 countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v9)
              {
                goto LABEL_8;
              }

              goto LABEL_16;
            }
          }

          v18 = v12;

          if (v18)
          {
            goto LABEL_21;
          }
        }

        else
        {
LABEL_16:
        }

        v5 = v23 + 1;
      }

      while (v23 + 1 != v22);
      v22 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v22);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

- (id)__perform6GHzFollowupDiscoveryWithScanResults:(id)results SSIDList:(id)list dwellTime:(unint64_t)time context:(id)context error:(id *)error
{
  v251 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  listCopy = list;
  contextCopy = context;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v197 = [MEMORY[0x1E695DFA8] set];
  [(CWFAutoJoinManager *)self supportedChannels];
  v230 = 0u;
  v231 = 0u;
  v232 = 0u;
  obj = v233 = 0u;
  v10 = [obj countByEnumeratingWithState:&v230 objects:v250 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v231;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v231 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:*(*(&v230 + 1) + 8 * i)];
        [v197 addObject:v14];
      }

      v11 = [obj countByEnumeratingWithState:&v230 objects:v250 count:16];
    }

    while (v11);
  }

  [resultsCopy sortedArrayUsingComparator:&unk_1F5B891D0];
  v226 = 0u;
  v227 = 0u;
  v228 = 0u;
  v167 = v229 = 0u;
  selfCopy = self;
  v171 = [v167 countByEnumeratingWithState:&v226 objects:v249 count:16];
  if (!v171)
  {
    v203 = 0;
    goto LABEL_121;
  }

  v203 = 0;
  v169 = *v227;
  do
  {
    v15 = 0;
    do
    {
      if (*v227 != v169)
      {
        v16 = v15;
        objc_enumerationMutation(v167);
        v15 = v16;
      }

      v173 = v15;
      v17 = *(*(&v226 + 1) + 8 * v15);
      context = objc_autoreleasePoolPush();
      if ([v17 isFILSDiscoveryFrame] && (objc_msgSend(v17, "channel"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "is6GHz"), v18, v19))
      {
        channel = [v17 channel];
        v21 = [(CWFAutoJoinManager *)self __basicChannelRepresentation:channel];

        if ([v197 containsObject:v21])
        {
          v191 = v21;
          sSID = [v17 SSID];
          shortSSID = [v17 shortSSID];
          v222 = 0u;
          v223 = 0u;
          v224 = 0u;
          v225 = 0u;
          knownNetworks = [contextCopy knownNetworks];
          v201 = [knownNetworks countByEnumeratingWithState:&v222 objects:v248 count:16];
          if (!v201)
          {
            goto LABEL_57;
          }

          v198 = *v223;
          while (1)
          {
            for (j = 0; j != v201; ++j)
            {
              if (*v223 != v198)
              {
                objc_enumerationMutation(knownNetworks);
              }

              v25 = *(*(&v222 + 1) + 8 * j);
              v26 = objc_autoreleasePoolPush();
              sSID2 = [v25 SSID];
              shortSSID2 = [v25 shortSSID];
              v29 = shortSSID2;
              if (sSID2)
              {
                v30 = sSID == 0;
              }

              else
              {
                v30 = 1;
              }

              if (v30)
              {
                if (!shortSSID || shortSSID != shortSSID2)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v31 = [sSID2 isEqual:sSID];
                if (shortSSID)
                {
                  v32 = shortSSID == v29;
                }

                else
                {
                  v32 = 0;
                }

                v33 = !v32;
                if (!v31 && (v33 & 1) != 0)
                {
                  goto LABEL_55;
                }
              }

              v34 = MEMORY[0x1E696AEC0];
              bSSID = [v17 BSSID];
              v36 = v17;
              channel2 = [v17 channel];
              v38 = [v34 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel2, "channel")];

              v39 = CWFGetOSLog();
              if (v39)
              {
                v40 = CWFGetOSLog();
              }

              else
              {
                v40 = MEMORY[0x1E69E9C10];
                v41 = MEMORY[0x1E69E9C10];
              }

              if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
              {
                v235 = 138543618;
                v236 = v36;
                v237 = 2114;
                v238 = v25;
                LODWORD(v161) = 22;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v40, 0, "[corewifi] AUTO-JOIN: Found followup 6GHz BSS target from FILSD (scanResult=%{public}@, knownNetwork=%{public}@)", &v235, v161);
              }

              v42 = [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap objectForKeyedSubscript:v38];

              if (!v42)
              {
                [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap setObject:v36 forKeyedSubscript:v38];
              }

              v43 = [(CWFAutoJoinManager *)selfCopy __alreadyFoundFollowup6GHzBSSWithSignature:v38];
              if (v43)
              {
                v44 = CWFGetOSLog();
                if (v44)
                {
                  v45 = CWFGetOSLog();
                }

                else
                {
                  v45 = MEMORY[0x1E69E9C10];
                  v50 = MEMORY[0x1E69E9C10];
                }

                if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(v235) = 0;
                  LODWORD(v161) = 2;
                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v45, 0, "[corewifi] AUTO-JOIN: Already found followup 6GHz BSS target, using cached result", &v235, v161);
                }

                array = v203;
                if (!v203)
                {
                  array = [MEMORY[0x1E695DF70] array];
                }

                v203 = array;
                [array addObject:v43];
              }

              else
              {
                v46 = objc_alloc_init(CWFScanParameters);
                networkName = [v25 networkName];
                [(CWFScanParameters *)v46 setSSID:networkName];

                bSSID2 = [v36 BSSID];
                [(CWFScanParameters *)v46 setBSSID:bSSID2];

                v247 = v191;
                v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v247 count:1];
                [(CWFScanParameters *)v46 setChannels:v49];

                [(CWFScanParameters *)v46 setBSSType:3];
                [(CWFScanParameters *)v46 setPHYMode:1];
                [(CWFScanParameters *)v46 setNumberOfScans:1];
                [(CWFScanParameters *)v46 setIncludeHiddenNetworks:1];
                [(CWFScanParameters *)v46 setAcceptableCacheAge:0];
                [(CWFScanParameters *)v46 setDwellTime:time];
                [(CWFScanParameters *)v46 setScanFlags:1056];
                [(CWFScanParameters *)v46 setScanType:1];
                [dictionary setObject:v46 forKeyedSubscript:v38];
              }

              self = selfCopy;

              v17 = v36;
LABEL_55:

              objc_autoreleasePoolPop(v26);
            }

            v201 = [knownNetworks countByEnumeratingWithState:&v222 objects:v248 count:16];
            if (!v201)
            {
LABEL_57:

              goto LABEL_58;
            }
          }
        }

        v82 = CWFGetOSLog();
        if (v82)
        {
          v83 = CWFGetOSLog();
        }

        else
        {
          v83 = MEMORY[0x1E69E9C10];
          v84 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          v235 = 138543362;
          v236 = v21;
          LODWORD(v161) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v83, 0, "[corewifi] AUTO-JOIN: Followup 6GHz channel is not supported, skipping (%{public}@)", &v235, v161);
        }

        v53 = v83;
      }

      else
      {
LABEL_58:
        rNRBSSList = [v17 RNRBSSList];
        v218 = 0u;
        v219 = 0u;
        v220 = 0u;
        v221 = 0u;
        v53 = rNRBSSList;
        v181 = [v53 countByEnumeratingWithState:&v218 objects:v246 count:16];
        if (v181)
        {
          v177 = v53;
          v192 = v17;
          v179 = *v219;
          do
          {
            for (k = 0; k != v181; ++k)
            {
              if (*v219 != v179)
              {
                objc_enumerationMutation(v177);
              }

              v55 = *(*(&v218 + 1) + 8 * k);
              channel3 = [v55 channel];
              if ([channel3 is6GHz])
              {
                shortSSID3 = [v55 shortSSID];
                if (shortSSID3 || [v55 isSameSSID] && (shortSSID3 = objc_msgSend(v192, "shortSSID")) != 0)
                {
                  v58 = shortSSID3;
                  bSSID3 = [v55 BSSID];
                  if (bSSID3)
                  {
                    v184 = k;
                    v216 = 0u;
                    v217 = 0u;
                    v214 = 0u;
                    v215 = 0u;
                    knownNetworks2 = [contextCopy knownNetworks];
                    v202 = [knownNetworks2 countByEnumeratingWithState:&v214 objects:v245 count:16];
                    if (v202)
                    {
                      v195 = v55;
                      v199 = *v215;
                      do
                      {
                        v60 = 0;
                        do
                        {
                          if (*v215 != v199)
                          {
                            objc_enumerationMutation(knownNetworks2);
                          }

                          v61 = *(*(&v214 + 1) + 8 * v60);
                          v62 = objc_autoreleasePoolPush();
                          if (v58 == [v61 shortSSID])
                          {
                            v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu/%@/%lu", v58, bSSID3, objc_msgSend(channel3, "channel")];
                            v64 = CWFGetOSLog();
                            if (v64)
                            {
                              v65 = CWFGetOSLog();
                            }

                            else
                            {
                              v65 = MEMORY[0x1E69E9C10];
                              v66 = MEMORY[0x1E69E9C10];
                            }

                            if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                            {
                              v235 = 138543874;
                              v236 = v192;
                              v237 = 2114;
                              v238 = v195;
                              v239 = 2114;
                              v240 = v61;
                              LODWORD(v161) = 32;
                              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v65, 0, "[corewifi] AUTO-JOIN: Found followup 6GHz BSS target from RNR (scanResult=%{public}@, RNRBSS=%{public}@, knownNetwork=%{public}@)", &v235, v161);
                            }

                            v67 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel3];
                            if ([v197 containsObject:v67])
                            {
                              v68 = [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap objectForKeyedSubscript:v63];

                              if (!v68)
                              {
                                [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap setObject:v192 forKeyedSubscript:v63];
                              }

                              v69 = [(CWFAutoJoinManager *)selfCopy __alreadyFoundFollowup6GHzBSSWithSignature:v63];
                              if (v69)
                              {
                                v70 = v69;
                                v71 = CWFGetOSLog();
                                if (v71)
                                {
                                  v72 = CWFGetOSLog();
                                }

                                else
                                {
                                  v72 = MEMORY[0x1E69E9C10];
                                  v77 = MEMORY[0x1E69E9C10];
                                }

                                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                                {
                                  LOWORD(v235) = 0;
                                  LODWORD(v161) = 2;
                                  _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v72, 0, "[corewifi] AUTO-JOIN: Already found followup 6GHz BSS target, using cached result", &v235, v161);
                                }

                                array2 = v203;
                                if (!v203)
                                {
                                  array2 = [MEMORY[0x1E695DF70] array];
                                }

                                v203 = array2;
                                [array2 addObject:v70];
                              }

                              else
                              {
                                v73 = objc_alloc_init(CWFScanParameters);
                                networkName2 = [v61 networkName];
                                [(CWFScanParameters *)v73 setSSID:networkName2];

                                [(CWFScanParameters *)v73 setBSSID:bSSID3];
                                v244 = v67;
                                v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v244 count:1];
                                [(CWFScanParameters *)v73 setChannels:v75];

                                [(CWFScanParameters *)v73 setBSSType:3];
                                [(CWFScanParameters *)v73 setPHYMode:1];
                                [(CWFScanParameters *)v73 setNumberOfScans:1];
                                [(CWFScanParameters *)v73 setIncludeHiddenNetworks:1];
                                [(CWFScanParameters *)v73 setAcceptableCacheAge:0];
                                [(CWFScanParameters *)v73 setDwellTime:time];
                                if ([v195 isUPRActive])
                                {
                                  v76 = 32;
                                }

                                else
                                {
                                  v76 = 1056;
                                }

                                [(CWFScanParameters *)v73 setScanFlags:v76];
                                [(CWFScanParameters *)v73 setScanType:1];
                                [dictionary setObject:v73 forKeyedSubscript:v63];

                                v70 = 0;
                              }
                            }

                            else
                            {
                              v79 = CWFGetOSLog();
                              if (v79)
                              {
                                v70 = CWFGetOSLog();
                              }

                              else
                              {
                                v70 = MEMORY[0x1E69E9C10];
                                v80 = MEMORY[0x1E69E9C10];
                              }

                              if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                              {
                                v235 = 138543362;
                                v236 = v67;
                                LODWORD(v161) = 12;
                                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v70, 0, "[corewifi] AUTO-JOIN: Followup 6GHz channel is not supported, skipping (%{public}@)", &v235, v161);
                              }
                            }

                            self = selfCopy;
                          }

                          objc_autoreleasePoolPop(v62);
                          ++v60;
                        }

                        while (v202 != v60);
                        v81 = [knownNetworks2 countByEnumeratingWithState:&v214 objects:v245 count:16];
                        v202 = v81;
                      }

                      while (v81);
                    }

                    k = v184;
                  }
                }
              }
            }

            v181 = [v177 countByEnumeratingWithState:&v218 objects:v246 count:16];
          }

          while (v181);
          v53 = v177;
        }

        v21 = v53;
      }

      objc_autoreleasePoolPop(context);
      v15 = v173 + 1;
    }

    while (v173 + 1 != v171);
    v85 = [v167 countByEnumeratingWithState:&v226 objects:v249 count:16];
    v171 = v85;
  }

  while (v85);
LABEL_121:

  if ([dictionary count])
  {
    followup6GHzScanChannels = [(CWFAutoJoinMetric *)self->_metric followup6GHzScanChannels];
    v162 = followup6GHzScanChannels;
    if (followup6GHzScanChannels)
    {
      array3 = [followup6GHzScanChannels mutableCopy];
    }

    else
    {
      array3 = [MEMORY[0x1E695DF70] array];
    }

    v170 = array3;

    v212 = 0u;
    v213 = 0u;
    v210 = 0u;
    v211 = 0u;
    allKeys = [dictionary allKeys];
    v90 = [allKeys countByEnumeratingWithState:&v210 objects:v243 count:16];
    if (v90)
    {
      v91 = v90;
      v176 = 0;
      v187 = 0;
      v92 = MEMORY[0x1E69E9C10];
      v190 = *v211;
      v175 = *MEMORY[0x1E696A578];
      v166 = *MEMORY[0x1E696AA08];
      v174 = *MEMORY[0x1E696A798];
      v180 = allKeys;
      do
      {
        v93 = 0;
        v185 = v91;
        do
        {
          if (*v211 != v190)
          {
            objc_enumerationMutation(allKeys);
          }

          v196 = v93;
          v94 = *(*(&v210 + 1) + 8 * v93);
          v193 = objc_autoreleasePoolPush();
          v95 = [dictionary objectForKeyedSubscript:v94];
          v96 = [(CWFAutoJoinManager *)self __alreadyFoundFollowup6GHzBSSWithSignature:v94];
          v200 = v95;
          if (v96)
          {
            v97 = CWFGetOSLog();
            if (v97)
            {
              v98 = CWFGetOSLog();
            }

            else
            {
              v103 = v92;
              v98 = v92;
            }

            if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v235) = 0;
              LODWORD(v161) = 2;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v98, 0, "[corewifi] AUTO-JOIN: Already found followup 6GHz BSS target, using cached result", &v235, v161);
            }

            array4 = v203;
            v106 = v193;
            v105 = v196;
            if (!v203)
            {
              array4 = [MEMORY[0x1E695DF70] array];
            }

            v203 = array4;
            [array4 addObject:v96];
          }

          else
          {
            v99 = [(NSMutableDictionary *)self->_followup6GHzScanResultsMap objectForKeyedSubscript:v95];
            v100 = CWFGetOSLog();
            v101 = v100;
            if (v99)
            {
              if (v100)
              {
                v102 = CWFGetOSLog();
              }

              else
              {
                v108 = v92;
                v102 = v92;
              }

              if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
              {
                sSID3 = [v200 SSID];
                shortSSID4 = [v200 shortSSID];
                bSSID4 = [v200 BSSID];
                redactedForWiFi = [bSSID4 redactedForWiFi];
                channels = [v200 channels];
                firstObject = [channels firstObject];
                v235 = 138544130;
                v236 = sSID3;
                v237 = 2048;
                v238 = shortSSID4;
                v239 = 2114;
                v240 = redactedForWiFi;
                v241 = 2114;
                v242 = firstObject;
                LODWORD(v161) = 42;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v102, 0, "[corewifi] AUTO-JOIN: Already completed 6GHz followup scan, using cached results (SSID=%{public}@, shortSSID=%lu, BSSID=%{public}@, channel=(%{public}@))", &v235, v161);

                v91 = v185;
                allKeys = v180;
              }

              array5 = v203;
              if (!v203)
              {
                array5 = [MEMORY[0x1E695DF70] array];
              }

              v203 = array5;
              [array5 addObjectsFromArray:v99];
              self = selfCopy;
            }

            else
            {
              if (v100)
              {
                v107 = CWFGetOSLog();
              }

              else
              {
                v115 = v92;
                v107 = v92;
              }

              v116 = v200;

              if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
              {
                sSID4 = [v200 SSID];
                shortSSID5 = [v200 shortSSID];
                bSSID5 = [v200 BSSID];
                redactedForWiFi2 = [bSSID5 redactedForWiFi];
                channels2 = [v200 channels];
                firstObject2 = [channels2 firstObject];
                v235 = 138544130;
                v236 = sSID4;
                v237 = 2048;
                v238 = shortSSID5;
                v239 = 2114;
                v240 = redactedForWiFi2;
                v241 = 2114;
                v242 = firstObject2;
                LODWORD(v161) = 42;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v107, 0, "[corewifi] AUTO-JOIN: Performing 6GHz followup scan (SSID=%{public}@, shortSSID=%lu, BSSID=%{public}@, channel=(%{public}@))", &v235, v161);

                v116 = v200;
              }

              v123 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
              v124 = selfCopy;
              scanForNetworksHandler = [(CWFAutoJoinManager *)selfCopy scanForNetworksHandler];

              if (scanForNetworksHandler)
              {
                v209 = 0;
                [(CWFAutoJoinManager *)selfCopy __calloutToScanForNetworksWithParameters:v116 scanChannels:0 error:&v209];
                v127 = v126 = v116;
                v128 = v209;
                v183 = v128;
                if (v127)
                {
                  channels3 = [v126 channels];
                  firstObject3 = [channels3 firstObject];

                  [v170 addObject:firstObject3];
                  array6 = v203;
                  if (!v203)
                  {
                    array6 = [MEMORY[0x1E695DF70] array];
                  }

                  v203 = array6;
                  [array6 addObjectsFromArray:v127];
                  v124 = selfCopy;
                  [(NSMutableDictionary *)selfCopy->_followup6GHzScanResultsMap setObject:v127 forKeyedSubscript:v126];
                }

                else
                {
                  v133 = v128;
                  dictionary2 = [MEMORY[0x1E695DF90] dictionary];

                  [dictionary2 setObject:@"Failed to perform 6GHz followup scan" forKeyedSubscript:v175];
                  [dictionary2 setObject:v133 forKeyedSubscript:v166];
                  [MEMORY[0x1E696ABC0] errorWithDomain:v174 code:2 userInfo:dictionary2];
                  firstObject3 = v187;
                  v187 = v176 = dictionary2;
                  v124 = selfCopy;
                }
              }

              else
              {
                dictionary3 = [MEMORY[0x1E695DF90] dictionary];

                [dictionary3 setObject:@"CWFAutoJoinManager.scanForNetworksHandler() not configured" forKeyedSubscript:v175];
                [MEMORY[0x1E696ABC0] errorWithDomain:v174 code:6 userInfo:dictionary3];
                v127 = 0;
                v183 = 0;
                firstObject3 = v187;
                v187 = v176 = dictionary3;
              }

              v135 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v123;
              [(CWFAutoJoinMetric *)v124->_metric setFollowup6GHzScanDuration:[(CWFAutoJoinMetric *)v124->_metric followup6GHzScanDuration]+ v135 / 0xF4240];
              if (v187)
              {
                scanErrors = [(CWFAutoJoinMetric *)v124->_metric scanErrors];
                if (scanErrors)
                {
                  scanErrors2 = [(CWFAutoJoinMetric *)v124->_metric scanErrors];
                  v138 = [scanErrors2 arrayByAddingObject:v187];
                  [(CWFAutoJoinMetric *)v124->_metric setScanErrors:v138];
                }

                else
                {
                  scanErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v187];
                  [(CWFAutoJoinMetric *)v124->_metric setScanErrors:scanErrors2];
                }
              }

              v139 = CWFGetOSLog();
              if (v139)
              {
                v140 = CWFGetOSLog();
              }

              else
              {
                v141 = v92;
                v140 = v92;
              }

              v142 = v127 == 0;
              v143 = (16 * v142);
              if (os_log_type_enabled(v140, (16 * v142)))
              {
                if (v203)
                {
                  v144 = "SUCCEEDED";
                }

                else
                {
                  v144 = "FAILED";
                }

                v145 = [v127 count];
                v146 = [(CWFAutoJoinManager *)selfCopy __descriptionForError:v187];
                v235 = 136446978;
                v236 = v144;
                v237 = 2048;
                v238 = v135 / 0xF4240;
                v239 = 2048;
                v240 = v145;
                v241 = 2114;
                v242 = v146;
                LODWORD(v161) = 42;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v140, v143, "[corewifi] AUTO-JOIN: 6GHz followup scan %{public}s (duration=%lums, results=%lu, error=(%{public}@))", &v235, v161);
              }

              v147 = CWFGetOSLog();
              if (v147)
              {
                v148 = CWFGetOSLog();
              }

              else
              {
                v149 = v92;
                v148 = v92;
              }

              if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
              {
                v150 = [v127 count];
                v235 = 134217984;
                v236 = v150;
                _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v148, 0, "[corewifi] AUTO-JOIN: 6GHz Followup Scan Results (%lu) -->", &v235);
              }

              v207 = 0u;
              v208 = 0u;
              v205 = 0u;
              v206 = 0u;
              v99 = v127;
              v151 = [v99 countByEnumeratingWithState:&v205 objects:v234 count:16];
              if (v151)
              {
                v152 = v151;
                v153 = *v206;
                do
                {
                  for (m = 0; m != v152; ++m)
                  {
                    if (*v206 != v153)
                    {
                      objc_enumerationMutation(v99);
                    }

                    v155 = *(*(&v205 + 1) + 8 * m);
                    v156 = CWFGetOSLog();
                    if (v156)
                    {
                      v157 = CWFGetOSLog();
                    }

                    else
                    {
                      v158 = v92;
                      v157 = v92;
                    }

                    if (os_log_type_enabled(v157, OS_LOG_TYPE_DEFAULT))
                    {
                      v235 = 138543362;
                      v236 = v155;
                      LODWORD(v161) = 12;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v157, 0, "[corewifi] AUTO-JOIN: -- %{public}@", &v235, v161);
                    }
                  }

                  v152 = [v99 countByEnumeratingWithState:&v205 objects:v234 count:16];
                }

                while (v152);
              }

              self = selfCopy;
              allKeys = v180;
              v91 = v185;
            }

            v106 = v193;
            v105 = v196;
            v96 = 0;
          }

          objc_autoreleasePoolPop(v106);
          v93 = v105 + 1;
        }

        while (v93 != v91);
        v91 = [allKeys countByEnumeratingWithState:&v210 objects:v243 count:16];
      }

      while (v91);
    }

    else
    {
      v176 = 0;
      v187 = 0;
    }

    [(CWFAutoJoinMetric *)self->_metric setFollowup6GHzScanChannels:v170];
    if (error)
    {
      v88 = v176;
      if (v187)
      {
        *error = v187;
      }
    }

    else
    {
      v88 = v176;
    }
  }

  else
  {
    v187 = 0;
    v88 = 0;
  }

  v159 = v203;

  return v203;
}

- (id)__passpointScanResults:(id)results
{
  v17 = *MEMORY[0x1E69E9840];
  resultsCopy = results;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [resultsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    array = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(resultsCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isPasspoint])
        {
          if (!array)
          {
            array = [MEMORY[0x1E695DF70] array];
          }

          [array addObject:v9];
        }
      }

      v5 = [resultsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  else
  {
    array = 0;
  }

  v10 = [array copy];

  return v10;
}

- (BOOL)__isNonPinnedEAPTLSCandidate:(id)candidate
{
  matchingKnownNetworkProfile = [candidate matchingKnownNetworkProfile];
  if (![matchingKnownNetworkProfile isEAP])
  {
    goto LABEL_9;
  }

  acceptedEAPTypes = [matchingKnownNetworkProfile acceptedEAPTypes];
  v5 = [acceptedEAPTypes containsObject:&unk_1F5BBC658];

  acceptedEAPTypes2 = [matchingKnownNetworkProfile acceptedEAPTypes];
  v7 = [acceptedEAPTypes2 containsObject:&unk_1F5BBC670];

  if (v5 && v7)
  {
    acceptedEAPTypes3 = [matchingKnownNetworkProfile acceptedEAPTypes];
    v9 = [acceptedEAPTypes3 count];

    if (v9 != 2)
    {
LABEL_9:
      v13 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if (((v5 | v7) & 1) == 0)
    {
      goto LABEL_9;
    }

    acceptedEAPTypes4 = [matchingKnownNetworkProfile acceptedEAPTypes];
    v11 = [acceptedEAPTypes4 count];

    if (v11 != 1)
    {
      goto LABEL_9;
    }
  }

  tLSTrustedServerNames = [matchingKnownNetworkProfile TLSTrustedServerNames];
  v13 = [tLSTrustedServerNames count] == 0;

LABEL_10:
  return v13;
}

- (BOOL)__allowJoinCandidate:(id)candidate context:(id)context defer:(BOOL *)defer error:(id *)error
{
  v75 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  contextCopy = context;
  v68 = 0;
  autoJoinParameters = [contextCopy autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  failedToJoinKnownNetworkIDs = self->_failedToJoinKnownNetworkIDs;
  matchingKnownNetworkProfile = [candidateCopy matchingKnownNetworkProfile];
  identifier = [matchingKnownNetworkProfile identifier];
  LODWORD(failedToJoinKnownNetworkIDs) = [(NSMutableSet *)failedToJoinKnownNetworkIDs containsObject:identifier];

  if (failedToJoinKnownNetworkIDs)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = dictionary;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Already failed to auto-join known network profile";
LABEL_18:
    [dictionary setObject:v20 forKeyedSubscript:v19];
    v30 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary2];
    v31 = 0;
LABEL_19:

    goto LABEL_20;
  }

  channel = [candidateCopy channel];
  if ([channel is6GHz] && !-[CWFAutoJoinManager maxCompatibilityEnabled](self, "maxCompatibilityEnabled"))
  {
    matchingKnownNetworkProfile2 = [candidateCopy matchingKnownNetworkProfile];
    isStandalone6G = [matchingKnownNetworkProfile2 isStandalone6G];

    if (isStandalone6G)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  channel2 = [candidateCopy channel];
  if ([channel2 is6GHz])
  {

    if ((trigger & 0xFFFFFFFFFFFFFFFELL) == 0x36)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      dictionary2 = dictionary;
      v19 = *MEMORY[0x1E696A578];
      v20 = @"6G is not allowed with current trigger";
      goto LABEL_18;
    }
  }

  else
  {
  }

  channel3 = [candidateCopy channel];
  is6GHz = [channel3 is6GHz];

  if ((is6GHz & 1) == 0 && trigger == 45)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = dictionary;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"non-6G is not allowed with current trigger";
    goto LABEL_18;
  }

  channel4 = [candidateCopy channel];
  if (([channel4 is6GHz] & 1) == 0)
  {

    goto LABEL_48;
  }

  matchingKnownNetworkProfile3 = [candidateCopy matchingKnownNetworkProfile];
  disable6EMode = [matchingKnownNetworkProfile3 disable6EMode];

  if (disable6EMode == 2)
  {
LABEL_17:
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    dictionary2 = dictionary;
    v19 = *MEMORY[0x1E696A578];
    v20 = @"6G is not allowed with this network";
    goto LABEL_18;
  }

LABEL_48:
  matchingKnownNetworkProfile4 = [candidateCopy matchingKnownNetworkProfile];
  targetQueue = self->_targetQueue;
  v67 = 0;
  v54 = [(CWFAutoJoinManager *)self __allowKnownNetwork:matchingKnownNetworkProfile4 context:contextCopy allowForSeamlessSSIDTransition:0 defer:&v68 targetQueue:targetQueue error:&v67];
  v30 = v67;

  if (v54)
  {
    deferCopy = defer;
    matchingKnownNetworkProfile5 = [candidateCopy matchingKnownNetworkProfile];
    if ([matchingKnownNetworkProfile5 addReason] == 10 && ((objc_msgSend(candidateCopy, "isOpen") & 1) != 0 || (objc_msgSend(candidateCopy, "isOWE") & 1) != 0 || (objc_msgSend(candidateCopy, "isWAPI") & 1) != 0 || objc_msgSend(candidateCopy, "isPSK") && ((objc_msgSend(candidateCopy, "isWEP") & 1) != 0 || (objc_msgSend(candidateCopy, "isWPA") & 1) != 0) || (objc_msgSend(candidateCopy, "hasWEP104Cipher") & 1) != 0 || (objc_msgSend(candidateCopy, "hasWEP40Cipher") & 1) != 0 || (objc_msgSend(candidateCopy, "hasTKIPCipher") & 1) != 0))
    {
      matchingKnownNetworkProfile6 = [candidateCopy matchingKnownNetworkProfile];
      lastJoinedByUserAt = [matchingKnownNetworkProfile6 lastJoinedByUserAt];

      if (!lastJoinedByUserAt)
      {
        dictionary2 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary2 setObject:@"Carrier-based known network profile with weak security never joined by user" forKeyedSubscript:*MEMORY[0x1E696A578]];
        v59 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary2];

        v31 = 0;
        v30 = v59;
        defer = deferCopy;
        goto LABEL_19;
      }
    }

    else
    {
    }

    allowJoinCandidateHandler = [(CWFAutoJoinManager *)self allowJoinCandidateHandler];

    if (allowJoinCandidateHandler)
    {
      v66 = 0;
      v61 = [(CWFAutoJoinManager *)self __calloutToAllowJoinCandidate:candidateCopy trigger:trigger defer:&v68 error:&v66];
      dictionary2 = v66;
      defer = deferCopy;
      if (v61)
      {
        v31 = 1;
      }

      else
      {
        dictionary3 = [MEMORY[0x1E695DF90] dictionary];
        [dictionary3 setObject:@"Join candidate is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
        [dictionary3 setObject:dictionary2 forKeyedSubscript:*MEMORY[0x1E696AA08]];
        v63 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary3];

        v31 = 0;
        v30 = v63;
      }

      goto LABEL_19;
    }

    v31 = 1;
    defer = deferCopy;
  }

  else
  {
    v31 = 0;
  }

LABEL_20:
  if ([(CWFAutoJoinManager *)self __isDeferrableJoinCandidate:candidateCopy])
  {
    v68 = 1;
  }

  matchingKnownNetworkProfile7 = [candidateCopy matchingKnownNetworkProfile];
  lastJoinedByUserAt2 = [matchingKnownNetworkProfile7 lastJoinedByUserAt];
  if (!lastJoinedByUserAt2)
  {
    preferUserConfiguredNetworks = [contextCopy preferUserConfiguredNetworks];

    if (preferUserConfiguredNetworks)
    {
      v68 = 1;
      if (!v31)
      {
        goto LABEL_30;
      }
    }

    else if (!v31)
    {
      goto LABEL_30;
    }

LABEL_27:
    if (!defer)
    {
      goto LABEL_43;
    }

    goto LABEL_36;
  }

  if (v31)
  {
    goto LABEL_27;
  }

LABEL_30:
  v35 = CWFGetOSLog();
  if (v35)
  {
    v36 = CWFGetOSLog();
  }

  else
  {
    v36 = MEMORY[0x1E69E9C10];
    v37 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    matchingKnownNetworkProfile8 = [candidateCopy matchingKnownNetworkProfile];
    [matchingKnownNetworkProfile8 identifier];
    v65 = contextCopy;
    errorCopy = error;
    v41 = v40 = defer;
    redactedForWiFi = [v41 redactedForWiFi];
    v43 = [(CWFAutoJoinManager *)self __descriptionForError:v30];
    v69 = 138543874;
    v70 = redactedForWiFi;
    v71 = 2114;
    v72 = v43;
    v73 = 2114;
    v74 = candidateCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v36, 0, "[corewifi] AUTO-JOIN: Join candidate '%{public}@' is not allowed (error=(%{public}@), network=(%{public}@))", &v69, 32);

    defer = v40;
    error = errorCopy;
    contextCopy = v65;
  }

  if (defer)
  {
LABEL_36:
    if (v68)
    {
      v44 = CWFGetOSLog();
      if (v44)
      {
        v45 = CWFGetOSLog();
      }

      else
      {
        v45 = MEMORY[0x1E69E9C10];
        v46 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        matchingKnownNetworkProfile9 = [candidateCopy matchingKnownNetworkProfile];
        identifier2 = [matchingKnownNetworkProfile9 identifier];
        redactedForWiFi2 = [identifier2 redactedForWiFi];
        v69 = 138543618;
        v70 = redactedForWiFi2;
        v71 = 2114;
        v72 = candidateCopy;
        LODWORD(v64) = 22;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v45, 0, "[corewifi] AUTO-JOIN: Join candidate '%{public}@' is deferrable (network=(%{public}@))", &v69, v64);
      }

      *defer = v68;
    }
  }

LABEL_43:
  if (error && v30)
  {
    v50 = v30;
    *error = v30;
  }

  return v31;
}

- (BOOL)__performJoinWithNetwork:(id)network context:(id)context error:(id *)error
{
  v125 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  contextCopy = context;
  selfCopy = self;
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  v105 = networkCopy;
  v8 = CWFGetOSLog();
  if (v8)
  {
    v9 = CWFGetOSLog();
  }

  else
  {
    v9 = MEMORY[0x1E69E9C10];
    v10 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v112 = 138543362;
    v113 = v105;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] AUTO-JOIN: Joining network (%{public}@)", &v112, 12);
  }

  v92 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  associateToNetworkHandler = [(CWFAutoJoinManager *)self associateToNetworkHandler];

  if (!associateToNetworkHandler)
  {
    v120 = *MEMORY[0x1E696A578];
    v121 = @"CWFAutoJoinManager.associateToNetworkHandler() not configured";
    userInfo = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v121 forKeys:&v120 count:1];
    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:userInfo];
    v21 = 0;
    v97 = 0;
    v103 = 0;
    associatedNetwork2 = v105;
    goto LABEL_58;
  }

  v97 = objc_alloc_init(CWFAssocParameters);
  [(CWFAssocParameters *)v97 setScanResult:v105];
  sSID = [v105 SSID];
  sSID2 = [associatedNetwork SSID];
  v14 = sSID2;
  if (sSID == sSID2)
  {
  }

  else
  {
    sSID3 = [v105 SSID];
    if (sSID3)
    {
      sSID4 = [associatedNetwork SSID];
      if (sSID4)
      {
        sSID5 = [v105 SSID];
        sSID6 = [associatedNetwork SSID];
        v19 = ([sSID5 isEqual:sSID6] & 1) != 0 || -[CWFAutoJoinManager __candidateSupportsSeamlessSSIDTransition:fromNetwork:context:](selfCopy, "__candidateSupportsSeamlessSSIDTransition:fromNetwork:context:", v105, associatedNetwork, contextCopy);
      }

      else
      {
        v19 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v105 fromNetwork:associatedNetwork context:contextCopy];
      }

      if (v19)
      {
        goto LABEL_20;
      }

LABEL_15:
      v24 = 0;
      goto LABEL_41;
    }

    v23 = [(CWFAutoJoinManager *)selfCopy __candidateSupportsSeamlessSSIDTransition:v105 fromNetwork:associatedNetwork context:contextCopy];

    if (!v23)
    {
      goto LABEL_15;
    }
  }

LABEL_20:
  colocatedScopeID = [(CWFAutoJoinManager *)selfCopy colocatedScopeID];
  [(CWFAssocParameters *)v97 setColocatedScopeID:colocatedScopeID];

  autoJoinParameters = [contextCopy autoJoinParameters];
  if ([autoJoinParameters trigger] == 54)
  {
  }

  else
  {
    autoJoinParameters2 = [contextCopy autoJoinParameters];
    v24 = [autoJoinParameters2 trigger] == 55;

    if (!v24)
    {
      goto LABEL_41;
    }
  }

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  autoJoinParameters3 = [contextCopy autoJoinParameters];
  obj = [autoJoinParameters3 preferredChannels];

  v102 = [obj countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v102)
  {
    v98 = *v109;
LABEL_25:
    v29 = 0;
    while (1)
    {
      if (*v109 != v98)
      {
        objc_enumerationMutation(obj);
      }

      v30 = *(*(&v108 + 1) + 8 * v29);
      v104 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v30];
      channel = [v105 channel];
      v32 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel];
      v33 = v32;
      if (v104 == v32)
      {

LABEL_39:
        [(CWFAssocParameters *)v97 setForceBSSID:1];
        goto LABEL_40;
      }

      v34 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v30];
      if (v34)
      {
        channel2 = [v105 channel];
        v36 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel2];
        if (v36)
        {
          v37 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:v30];
          channel3 = [v105 channel];
          v39 = [(CWFAutoJoinManager *)selfCopy __basicChannelRepresentation:channel3];
          v40 = [v37 isEqual:v39];

          if (v40)
          {
            goto LABEL_39;
          }

          goto LABEL_35;
        }
      }

LABEL_35:
      if (v102 == ++v29)
      {
        v102 = [obj countByEnumeratingWithState:&v108 objects:v124 count:16];
        if (v102)
        {
          goto LABEL_25;
        }

        break;
      }
    }
  }

  [(CWFAssocParameters *)v97 setBandPreference:4];
LABEL_40:
  v24 = 1;
LABEL_41:
  autoJoinParameters4 = [contextCopy autoJoinParameters];
  if ([autoJoinParameters4 mode] == 2 && !objc_msgSend(contextCopy, "BSSChannelsOnly"))
  {
  }

  else
  {
    didForceAllRemainingChannels = [contextCopy didForceAllRemainingChannels];

    if ((didForceAllRemainingChannels & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  allObjects = [(NSMutableSet *)selfCopy->_cumulativeScanResults allObjects];
  v44 = CWFScanResultHas6GHzOnlyBSS(v105, allObjects, &unk_1F5B8AC80);

  if (v44)
  {
    v21 = 1;
LABEL_49:
    [(CWFAssocParameters *)v97 setHas6GHzOnlyBSS:1];
    goto LABEL_50;
  }

LABEL_48:
  matchingKnownNetworkProfile = [v105 matchingKnownNetworkProfile];
  wasRecently6GHzOnlyOnAnyDevice = [matchingKnownNetworkProfile wasRecently6GHzOnlyOnAnyDevice];

  v21 = 0;
  if (wasRecently6GHzOnlyOnAnyDevice)
  {
    goto LABEL_49;
  }

LABEL_50:
  v107 = 0;
  v103 = [(CWFAutoJoinManager *)selfCopy __calloutToAssociateWithParameters:v97 error:&v107];
  v47 = v107;
  v48 = v47;
  if (v103)
  {
    associatedNetwork2 = [(CWFAutoJoinManager *)selfCopy associatedNetwork];

    if (v24)
    {
      v49 = selfCopy;
      objc_sync_enter(v49);
      v50 = [associatedNetwork copy];
      steerFromNetwork = v49->_steerFromNetwork;
      v49->_steerFromNetwork = v50;

      v52 = [associatedNetwork2 copy];
      steerToNetwork = v49->_steerToNetwork;
      v49->_steerToNetwork = v52;

      objc_sync_exit(v49);
    }

    userInfo = 0;
    v20 = 0;
  }

  else
  {
    userInfo = [v47 userInfo];
    if (!userInfo)
    {
      v122 = *MEMORY[0x1E696A578];
      v123 = @"Failed to join to network";
      userInfo = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
    }

    v54 = MEMORY[0x1E696ABC0];
    code = [v48 code];
    v20 = [v54 errorWithDomain:*MEMORY[0x1E696A798] code:code userInfo:userInfo];
    associatedNetwork2 = v105;
  }

LABEL_58:
  v91 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  if (v20)
  {
    joinErrors = [(CWFAutoJoinMetric *)selfCopy->_metric joinErrors];
    if (joinErrors)
    {
      joinErrors2 = [(CWFAutoJoinMetric *)selfCopy->_metric joinErrors];
      v58 = [joinErrors2 arrayByAddingObject:v20];
      [(CWFAutoJoinMetric *)selfCopy->_metric setJoinErrors:v58];
    }

    else
    {
      joinErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v20];
      [(CWFAutoJoinMetric *)selfCopy->_metric setJoinErrors:joinErrors2];
    }
  }

  v59 = MEMORY[0x1E696AEC0];
  shortSSID = [associatedNetwork2 shortSSID];
  bSSID = [associatedNetwork2 BSSID];
  channel4 = [associatedNetwork2 channel];
  v63 = [v59 stringWithFormat:@"%lu/%@/%lu", shortSSID, bSSID, objc_msgSend(channel4, "channel")];

  v64 = [(NSMutableDictionary *)selfCopy->_followup6GHzRNRMap objectForKeyedSubscript:v63];
  obja = [(NSMutableDictionary *)selfCopy->_followup6GHzFILSDMap objectForKeyedSubscript:v63];
  [(CWFAutoJoinMetric *)selfCopy->_metric setWas6EPreferOn:[(CWFAutoJoinManager *)selfCopy maxCompatibilityEnabled]];
  matchingKnownNetworkProfile2 = [associatedNetwork2 matchingKnownNetworkProfile];
  -[CWFAutoJoinMetric setWas6EDisabled:](selfCopy->_metric, "setWas6EDisabled:", [matchingKnownNetworkProfile2 disable6EMode] == 2);
  if (v103)
  {
    channel5 = [v64 channel];
    v66 = [associatedNetwork2 copy];
    [(CWFAutoJoinManager *)selfCopy __updateRNRChannel:channel5 has6GHzOnlyBSS:v21 joinCandidate:v66];

    channel6 = [associatedNetwork2 channel];
    if ([channel6 is6GHz])
    {
      allowStandalone6GHz = [contextCopy allowStandalone6GHz];

      if ((allowStandalone6GHz & 1) == 0)
      {
        [(CWFAutoJoinMetric *)selfCopy->_metric setWas6GHzDeprioritized:0];
      }
    }

    else
    {
    }

    sSID7 = [associatedNetwork SSID];
    sSID8 = [associatedNetwork2 SSID];
    if (sSID7 == sSID8)
    {
      [(CWFAutoJoinMetric *)selfCopy->_metric setDidTriggerReassoc:1];
    }

    else
    {
      sSID9 = [associatedNetwork SSID];
      if (sSID9)
      {
        sSID10 = [associatedNetwork2 SSID];
        if (sSID10)
        {
          sSID11 = [associatedNetwork SSID];
          sSID12 = [associatedNetwork2 SSID];
          -[CWFAutoJoinMetric setDidTriggerReassoc:](selfCopy->_metric, "setDidTriggerReassoc:", [sSID11 isEqual:sSID12]);
        }

        else
        {
          [(CWFAutoJoinMetric *)selfCopy->_metric setDidTriggerReassoc:0];
        }
      }

      else
      {
        [(CWFAutoJoinMetric *)selfCopy->_metric setDidTriggerReassoc:0];
      }
    }

    if (![(CWFAutoJoinMetric *)selfCopy->_metric didTriggerReassoc])
    {
      colocatedScopeID2 = [(CWFAssocParameters *)v97 colocatedScopeID];
      [(CWFAutoJoinMetric *)selfCopy->_metric setDidPerformSeamlessSSIDTransition:colocatedScopeID2 != 0];
    }

    v76 = selfCopy;
    objc_sync_enter(v76);
    deferredKnownNetworks = v76->_deferredKnownNetworks;
    matchingKnownNetworkProfile3 = [associatedNetwork2 matchingKnownNetworkProfile];
    LODWORD(deferredKnownNetworks) = [(NSMutableOrderedSet *)deferredKnownNetworks containsObject:matchingKnownNetworkProfile3];

    if (deferredKnownNetworks)
    {
      [(CWFAutoJoinMetric *)selfCopy->_metric setDidJoinDeferredNetwork:1];
    }

    objc_sync_exit(v76);
  }

  if (v64)
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setWasDiscoveredViaRNR:1];
  }

  else if (obja)
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setWasDiscoveredViaFILSD:1];
  }

  v79 = [(CWFAutoJoinManager *)selfCopy __alreadyFoundFollowup6GHzBSSWithSignature:v63];

  if (v79)
  {
    [(CWFAutoJoinMetric *)selfCopy->_metric setWasDiscoveredVia6GHzFollowup:1];
  }

  [(CWFAutoJoinMetric *)selfCopy->_metric setAutoJoinedNetwork:associatedNetwork2];
  v80 = CWFGetOSLog();
  if (v80)
  {
    v81 = CWFGetOSLog();
  }

  else
  {
    v81 = MEMORY[0x1E69E9C10];
    v82 = MEMORY[0x1E69E9C10];
  }

  if (v103)
  {
    v83 = 0;
  }

  else
  {
    v83 = 16;
  }

  if (os_log_type_enabled(v81, v83))
  {
    if (v103)
    {
      v84 = "SUCCEEDED";
    }

    else
    {
      v84 = "FAILED";
    }

    v85 = [(CWFAutoJoinManager *)selfCopy __descriptionForError:v20];
    autoJoinedNetwork = [(CWFAutoJoinMetric *)selfCopy->_metric autoJoinedNetwork];
    v112 = 136446978;
    v113 = v84;
    v114 = 2048;
    v115 = (v91 - v92) / 0xF4240;
    v116 = 2114;
    v117 = v85;
    v118 = 2114;
    v119 = autoJoinedNetwork;
    LODWORD(v90) = 42;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v81, v83, "[corewifi] AUTO-JOIN: Join %{public}s (duration=%lums, error=(%{public}@), network=(%{public}@))", &v112, v90);
  }

  v87 = v20 == 0;
  if (!error)
  {
    v87 = 1;
  }

  if (!v87)
  {
    v88 = v20;
    *error = v20;
  }

  return v103;
}

- (void)__sortJoinCandidates:(id)candidates context:(id)context
{
  contextCopy = context;
  candidatesCopy = candidates;
  preferUserConfiguredNetworks = [contextCopy preferUserConfiguredNetworks];
  autoJoinParameters = [contextCopy autoJoinParameters];

  trigger = [autoJoinParameters trigger];
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  joinCandidateComparator = [(CWFAutoJoinManager *)self joinCandidateComparator];
  v12 = sub_1E0BEFAA0(1, preferUserConfiguredNetworks, trigger, associatedNetwork, joinCandidateComparator);
  [candidatesCopy sortUsingDescriptors:v12];
}

- (void)__updateDisallowedMatchedKnownNetworks
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_cumulativeScanResults;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([(CWFAutoJoinManager *)self __preflightMatchKnownNetworksForScanResult:v8, v12])
        {
          allValues = [(NSMutableDictionary *)self->_disallowedKnownNetworksMap allValues];
          v10 = sub_1E0BED85C(v8, allValues);

          if (v10)
          {
            v11 = [v8 scanResultWithMatchingKnownNetworkProfile:v10];
            [(NSMutableSet *)self->_disallowedMatchedCandidates addObject:v11];
          }
        }
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)__morePreferredKnownNetworksWithCandidate:(id)candidate knownNetworks:(id)networks context:(id)context
{
  v74 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  networksCopy = networks;
  contextCopy = context;
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v62 = contextCopy;
  autoJoinParameters = [contextCopy autoJoinParameters];
  trigger = [autoJoinParameters trigger];

  lastJoinedAt = [candidateCopy lastJoinedAt];
  lastDiscoveredAt = [candidateCopy lastDiscoveredAt];
  networkGroupID = [candidateCopy networkGroupID];
  networkGroupPriority = [candidateCopy networkGroupPriority];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v14 = v13;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  obj = networksCopy;
  v15 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
  if (!v15)
  {
    v17 = contextCopy;
    goto LABEL_47;
  }

  v16 = v15;
  v68 = *v70;
  v64 = trigger & 0xFFFFFFFFFFFFFFFCLL;
  v17 = contextCopy;
  do
  {
    v18 = 0;
    do
    {
      if (*v70 != v68)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v69 + 1) + 8 * v18);
      identifier = [candidateCopy identifier];
      identifier2 = [v19 identifier];
      v22 = [identifier isEqual:identifier2];

      if (v22 & 1) != 0 || !-[CWFAutoJoinManager __allowKnownNetwork:context:allowForSeamlessSSIDTransition:defer:targetQueue:error:](self, "__allowKnownNetwork:context:allowForSeamlessSSIDTransition:defer:targetQueue:error:", v19, v17, 0, 0, self->_targetQueue, 0) || ([v19 isPersonalHotspot])
      {
        goto LABEL_31;
      }

      if ([candidateCopy compareUserPriority:v19] == -1)
      {
        addedAt = [v19 addedAt];
        lastJoinedAt2 = [v19 lastJoinedAt];
        lastDiscoveredAt2 = [v19 lastDiscoveredAt];
        [lastJoinedAt2 timeIntervalSinceReferenceDate];
        if (v14 - v28 < 1209600.0)
        {
          goto LABEL_18;
        }

        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        if (v14 - v29 < 1209600.0)
        {
          goto LABEL_18;
        }

        [addedAt timeIntervalSinceReferenceDate];
        if (v14 - v30 < 1209600.0)
        {
          goto LABEL_18;
        }

        [lastJoinedAt2 timeIntervalSinceReferenceDate];
        v32 = v31;
        [lastJoinedAt timeIntervalSinceReferenceDate];
        if (v32 > v33)
        {
          goto LABEL_18;
        }

        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        v35 = v34;
        [lastDiscoveredAt timeIntervalSinceReferenceDate];
        if (v35 > v36)
        {
          goto LABEL_18;
        }

        if (lastJoinedAt2 && lastJoinedAt)
        {
          [lastJoinedAt2 timeIntervalSinceReferenceDate];
          v42 = floor(v41);
          [lastJoinedAt timeIntervalSinceReferenceDate];
          v44 = floor(v43);
          [lastJoinedAt2 timeIntervalSinceReferenceDate];
          v46 = floor(v45);
          [lastJoinedAt timeIntervalSinceReferenceDate];
          v48 = v46 - floor(v47);
          if (v42 < v44)
          {
            v48 = -v48;
          }

          if (v48 < 1209600.0)
          {
            goto LABEL_18;
          }
        }

        v37 = 1;
        if (!lastDiscoveredAt2 || !lastDiscoveredAt)
        {
          goto LABEL_19;
        }

        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        v50 = floor(v49);
        [lastDiscoveredAt timeIntervalSinceReferenceDate];
        v52 = floor(v51);
        [lastDiscoveredAt2 timeIntervalSinceReferenceDate];
        v54 = floor(v53);
        [lastDiscoveredAt timeIntervalSinceReferenceDate];
        v56 = v54 - floor(v55);
        if (v50 < v52)
        {
          v56 = -v56;
        }

        if (v56 < 1209600.0)
        {
LABEL_18:
          v37 = 0;
        }

        else
        {
          v37 = 1;
        }

LABEL_19:
        if (([candidateCopy networkOfInterestHomeState] == 1 || objc_msgSend(candidateCopy, "networkOfInterestHomeState") == 3) && objc_msgSend(v19, "networkOfInterestHomeState") == 2 && -[CWFAutoJoinManager __isAutoJoiningAtHome](self, "__isAutoJoiningAtHome"))
        {
          location = [(CWFAutoJoinManager *)self location];
          v39 = [v19 wasManuallyJoinedRecentlyInProximityOf:location];

          v17 = v62;
          v37 = v39 ^ 1;
        }

        if (v64 != 52 && (v37 & 1) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_31;
      }

      networkGroupID2 = [v19 networkGroupID];
      if (([networkGroupID isEqualToString:networkGroupID2] & 1) == 0)
      {

        goto LABEL_31;
      }

      networkGroupPriority2 = [v19 networkGroupPriority];

      if (networkGroupPriority < networkGroupPriority2)
      {
LABEL_26:
        if ([(CWFAutoJoinManager *)self __allowKnownNetwork:v19 context:v17 allowForSeamlessSSIDTransition:0 defer:0 targetQueue:self->_targetQueue error:0])
        {
          orderedSet2 = orderedSet;
          if (!orderedSet)
          {
            orderedSet2 = [MEMORY[0x1E695DFA0] orderedSet];
          }

          orderedSet = orderedSet2;
          [orderedSet2 addObject:v19];
        }
      }

LABEL_31:
      ++v18;
    }

    while (v16 != v18);
    v57 = [obj countByEnumeratingWithState:&v69 objects:v73 count:16];
    v16 = v57;
  }

  while (v57);
LABEL_47:

  v58 = [orderedSet copy];

  return v58;
}

- (BOOL)__connectToHotspot:(id)hotspot error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
  associatedNetwork = [(CWFAutoJoinManager *)self associatedNetwork];
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v47 = 138543362;
    v48 = hotspotCopy;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] AUTO-JOIN: Connecting to hotspot (%{public}@)", &v47, 12);
  }

  v9 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  connectToHotspotHandler = [(CWFAutoJoinManager *)self connectToHotspotHandler];

  if (connectToHotspotHandler)
  {
    v11 = CWFGetBootTime();
    v12 = [v11 dateByAddingTimeInterval:v9 / 1000000000.0];
    [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinStartedAt:v12];

    v46 = 0;
    v13 = [(CWFAutoJoinManager *)self __calloutToConnectToHotspot:hotspotCopy error:&v46];
    v14 = v46;
    if (v13)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v16 = [associatedNetwork copy];
      brokenBackhaulNetwork = selfCopy->_brokenBackhaulNetwork;
      selfCopy->_brokenBackhaulNetwork = v16;

      objc_sync_exit(selfCopy);
      dictionary = 0;
      v19 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"Failed to connect to hotspot" forKeyedSubscript:*MEMORY[0x1E696A578]];
      v20 = MEMORY[0x1E696ABC0];
      code = [v14 code];
      v19 = [v20 errorWithDomain:*MEMORY[0x1E696A798] code:code userInfo:dictionary];
    }
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"CWFAutoJoinManager.connectToHotspotHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:dictionary];
    v13 = 0;
  }

  v22 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  if (v19)
  {
    autoHotspotJoinErrors = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinErrors];
    if (autoHotspotJoinErrors)
    {
      autoHotspotJoinErrors2 = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinErrors];
      v25 = [autoHotspotJoinErrors2 arrayByAddingObject:v19];
      [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinErrors:v25];
    }

    else
    {
      autoHotspotJoinErrors2 = [MEMORY[0x1E695DEC8] arrayWithObject:v19];
      [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinErrors:autoHotspotJoinErrors2];
    }
  }

  [(CWFAutoJoinMetric *)self->_metric setHotspot:hotspotCopy];
  v26 = CWFGetBootTime();
  v27 = [v26 dateByAddingTimeInterval:v22 / 1000000000.0];
  [(CWFAutoJoinMetric *)self->_metric setAutoHotspotJoinEndedAt:v27];

  v28 = CWFGetOSLog();
  if (v28)
  {
    v29 = CWFGetOSLog();
  }

  else
  {
    v29 = MEMORY[0x1E69E9C10];
    v30 = MEMORY[0x1E69E9C10];
  }

  if (v13)
  {
    v31 = 0;
  }

  else
  {
    v31 = 16;
  }

  if (os_log_type_enabled(v29, v31))
  {
    if (v13)
    {
      v32 = "SUCCEEDED";
    }

    else
    {
      v32 = "FAILED";
    }

    autoHotspotJoinEndedAt = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinEndedAt];
    [autoHotspotJoinEndedAt timeIntervalSinceReferenceDate];
    v35 = v34;
    autoHotspotJoinStartedAt = [(CWFAutoJoinMetric *)self->_metric autoHotspotJoinStartedAt];
    [autoHotspotJoinStartedAt timeIntervalSinceReferenceDate];
    v38 = v37;
    v39 = [(CWFAutoJoinManager *)self __descriptionForError:v19];
    v47 = 136446978;
    v48 = v32;
    v49 = 2048;
    v50 = ((v35 - v38) * 1000.0);
    v51 = 2114;
    v52 = v39;
    v53 = 2114;
    v54 = hotspotCopy;
    LODWORD(v43) = 42;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v29, v31, "[corewifi] AUTO-JOIN: Hotspot connection %{public}s (duration=%lums, error=(%{public}@), hotspot=(%{public}@))", &v47, v43);
  }

  v40 = v19 == 0;
  if (!error)
  {
    v40 = 1;
  }

  if (!v40)
  {
    v41 = v19;
    *error = v19;
  }

  return v13;
}

- (id)__browseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v72 = *MEMORY[0x1E69E9840];
  v10 = CWFGetOSLog();
  if (v10)
  {
    v11 = CWFGetOSLog();
  }

  else
  {
    v11 = MEMORY[0x1E69E9C10];
    v12 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "";
    v58 = 136446722;
    if (onlyCopy)
    {
      v13 = " [cache-only]";
    }

    v59 = v13;
    v60 = 2048;
    timeoutCopy = timeout;
    v62 = 2048;
    ageCopy = age;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v11, 0, "[corewifi] AUTO-JOIN: Browsing for hotspots%{public}s (timeout=%lu, maxCacheAge=%lu)", &v58, 32);
  }

  v14 = clock_gettime_nsec_np(_CLOCK_UPTIME_RAW);
  browseForHotspotsHandler = [(CWFAutoJoinManager *)self browseForHotspotsHandler];

  if (browseForHotspotsHandler)
  {
    v56 = 0;
    v16 = [(CWFAutoJoinManager *)self __calloutToBrowseForHotspotsWithTimeout:timeout maxCacheAge:age cacheOnly:onlyCopy error:&v56];
    v17 = v56;
    if (v16)
    {
      v18 = v16;
      v49 = 0;
      v19 = 0;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      [dictionary setObject:@"Failed to browse for hotspots" forKeyedSubscript:*MEMORY[0x1E696A578]];
      [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x1E696AA08]];
      v49 = dictionary;
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:2 userInfo:dictionary];
    }
  }

  else
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary2 setObject:@"CWFAutoJoinManager.browseForHotspotsHandler() not configured" forKeyedSubscript:*MEMORY[0x1E696A578]];
    v49 = dictionary2;
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:dictionary2];
    v16 = 0;
  }

  v22 = (clock_gettime_nsec_np(_CLOCK_UPTIME_RAW) - v14) / 0xF4240;
  [(CWFAutoJoinMetric *)self->_metric setAutoHotspotBrowseDuration:v22];
  [(CWFAutoJoinMetric *)self->_metric setAutoHotspotBrowseError:v19];
  v23 = CWFGetOSLog();
  if (v23)
  {
    v24 = CWFGetOSLog();
  }

  else
  {
    v24 = MEMORY[0x1E69E9C10];
    v25 = MEMORY[0x1E69E9C10];
  }

  v51 = v19;

  v26 = v16 == 0;
  v27 = (16 * v26);
  if (os_log_type_enabled(v24, (16 * v26)))
  {
    if (onlyCopy)
    {
      v28 = " [cache-only]";
    }

    else
    {
      v28 = "";
    }

    if (v16)
    {
      v29 = "SUCCEEDED";
    }

    else
    {
      v29 = "FAILED";
    }

    v30 = [v16 count];
    v31 = [(CWFAutoJoinManager *)self __descriptionForError:v51];
    v58 = 136447746;
    v59 = v28;
    v60 = 2082;
    timeoutCopy = v29;
    v62 = 2048;
    ageCopy = v22;
    v64 = 2048;
    v65 = v30;
    v66 = 2114;
    v67 = v31;
    v68 = 2048;
    timeoutCopy2 = timeout;
    v70 = 2048;
    ageCopy2 = age;
    LODWORD(v48) = 72;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v24, v27, "[corewifi] AUTO-JOIN: Hotspot browse%{public}s %{public}s (duration=%lums, results=%lu, error=(%{public}@), timeout=%lu, maxCacheAge=%lu)", &v58, v48);
  }

  v32 = CWFGetOSLog();
  if (v32)
  {
    v33 = CWFGetOSLog();
  }

  else
  {
    v33 = MEMORY[0x1E69E9C10];
    v34 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v35 = [v16 count];
    v58 = 134217984;
    v59 = v35;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v33, 0, "[corewifi] AUTO-JOIN: Hotspots (%lu) -->", &v58);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v36 = v16;
  v37 = [v36 countByEnumeratingWithState:&v52 objects:v57 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v53;
    v40 = MEMORY[0x1E69E9C10];
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v53 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v42 = *(*(&v52 + 1) + 8 * i);
        v43 = CWFGetOSLog();
        if (v43)
        {
          v44 = CWFGetOSLog();
        }

        else
        {
          v45 = v40;
          v44 = v40;
        }

        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v58 = 138543362;
          v59 = v42;
          LODWORD(v48) = 12;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v44, 0, "[corewifi] AUTO-JOIN: -- %{public}@", &v58, v48);
        }
      }

      v38 = [v36 countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v38);
  }

  if (error && v51)
  {
    v46 = v51;
    *error = v51;
  }

  return v36;
}

- (void)__sortHotspotCandidates:(id)candidates
{
  v11[5] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AEB0];
  candidatesCopy = candidates;
  v5 = [v3 sortDescriptorWithKey:0 ascending:1 comparator:&unk_1F5B8ACA0];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:0 ascending:1 comparator:&unk_1F5B89130];
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"networkType" ascending:0];
  v8 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"signalStrength" ascending:0];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"batteryLife" ascending:0];
  v11[0] = v5;
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:5];
  [candidatesCopy sortUsingDescriptors:v10];
}

- (int64_t)__allowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v7 = [(CWFAutoJoinManager *)self __isAutoJoinCancelled:&v22];
  v8 = v22;
  if (v7 || ([(CWFAutoJoinManager *)self allowAutoHotspotHandler], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v10 = 0;
  }

  else
  {
    v21 = 0;
    v10 = [(CWFAutoJoinManager *)self __calloutToAllowAutoHotspotWithTrigger:trigger error:&v21];
    v11 = v21;
    v12 = v11;
    if ((v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
    {

      if (!error)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:@"Auto-hotspot is not allowed" forKeyedSubscript:*MEMORY[0x1E696A578]];
    if (v12)
    {
      [dictionary setObject:v12 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }

    v20 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

    v8 = v20;
  }

  v13 = CWFGetOSLog();
  if (v13)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [(CWFAutoJoinManager *)self __descriptionForError:v8];
    v23 = 138543362;
    v24 = v16;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 0, "[corewifi] AUTO-JOIN: Auto-hotspot is not allowed (error=(%{public}@))", &v23, 12);
  }

  [(CWFAutoJoinMetric *)self->_metric setAutoHotspotWasAborted:1];
  if (error)
  {
LABEL_13:
    if (v8)
    {
      v17 = v8;
      *error = v8;
    }
  }

LABEL_15:

  return v10;
}

- (BOOL)__allowHotspot:(id)hotspot error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
  allowHotspotHandler = [(CWFAutoJoinManager *)self allowHotspotHandler];

  if (!allowHotspotHandler)
  {
    goto LABEL_4;
  }

  v19 = 0;
  v8 = [(CWFAutoJoinManager *)self __calloutToAllowHotspot:hotspotCopy error:&v19];
  v9 = v19;
  v10 = v9;
  if (v8)
  {

    allowHotspotHandler = 0;
LABEL_4:
    v11 = 1;
    goto LABEL_5;
  }

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:@"Hotspot is not allowed by daemon" forKeyedSubscript:*MEMORY[0x1E696A578]];
  if (v10)
  {
    [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  }

  allowHotspotHandler = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:dictionary];

  v14 = CWFGetOSLog();
  if (v14)
  {
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CWFAutoJoinManager *)self __descriptionForError:allowHotspotHandler];
    v20 = 138543618;
    v21 = hotspotCopy;
    v22 = 2114;
    v23 = v17;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 0, "[corewifi] AUTO-JOIN: Hotspot is not allowed (device=%{public}@, error=(%{public}@))", &v20, 22);
  }

  v11 = 0;
  if (error && allowHotspotHandler)
  {
    v18 = allowHotspotHandler;
    v11 = 0;
    *error = allowHotspotHandler;
  }

LABEL_5:

  return v11;
}

- (BOOL)__performAutoHotspotWithBrowseTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v86[1] = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  uUID = [(CWFAutoJoinRequest *)selfCopy->_activeRequest UUID];
  v62 = [uUID copy];

  parameters = [(CWFAutoJoinRequest *)selfCopy->_activeRequest parameters];
  trigger = [parameters trigger];

  objc_sync_exit(selfCopy);
  if ([(CWFAutoJoinManager *)selfCopy __isEnabledKnownNetworkNearby])
  {
    v55 = MEMORY[0x1E696ABC0];
    v85 = *MEMORY[0x1E696A578];
    v86[0] = @"Known network is nearby";
    v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v86 forKeys:&v85 count:1];
    v64 = [v55 errorWithDomain:*MEMORY[0x1E696A798] code:1 userInfo:v56];

    v14 = 0;
    goto LABEL_41;
  }

  v13 = onlyCopy;
  v73 = 0;
  v63 = trigger;
  v14 = [(CWFAutoJoinManager *)selfCopy __allowAutoHotspotWithTrigger:trigger error:&v73];
  v64 = v73;
  if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
LABEL_41:
    [(CWFAutoJoinMetric *)selfCopy->_metric setAutoHotspotMode:v14];
    LOBYTE(v34) = 0;
    v35 = 0;
    v59 = 0;
    array = 0;
    v25 = 0;
    goto LABEL_36;
  }

  v15 = CWFGetOSLog();
  if (v15)
  {
    v16 = CWFGetOSLog();
  }

  else
  {
    v16 = MEMORY[0x1E69E9C10];
    v17 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = sub_1E0BEE210(v14);
    uUIDString = [v62 UUIDString];
    v20 = [uUIDString substringToIndex:5];
    v74 = 138543618;
    v75 = v18;
    v76 = 2114;
    v77 = v20;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v16, 0, "[corewifi] AUTO-JOIN: Auto-hotspot STARTED (mode=%{public}@, uuid=%{public}@)", &v74, 22);
  }

  v61 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  [(CWFAutoJoinManager *)selfCopy __updateAutoJoinState:4];
  if (trigger == 67)
  {
    waitForConcurrentBrokenBackhaulDetect = selfCopy->_waitForConcurrentBrokenBackhaulDetect;
    if (waitForConcurrentBrokenBackhaulDetect)
    {
      dispatch_semaphore_wait(waitForConcurrentBrokenBackhaulDetect, 0xFFFFFFFFFFFFFFFFLL);
    }

    if ([(CWFAutoJoinManager *)selfCopy brokenBackhaulState]!= 4 && [(CWFAutoJoinManager *)selfCopy brokenBackhaulState]!= 3)
    {
      v57 = MEMORY[0x1E696ABC0];
      v83 = *MEMORY[0x1E696A578];
      v84 = @"Triggered by broken backhaul detection, but backhaul was not actually broken";
      firstObject = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v84 forKeys:&v83 count:1];
      v32 = [v57 errorWithDomain:*MEMORY[0x1E696A798] code:45 userInfo:firstObject];

      v25 = 0;
      array = 0;
      v59 = 0;
      v35 = 0;
      v34 = 0;
      goto LABEL_27;
    }
  }

  waitForConcurrentPHBrowse = selfCopy->_waitForConcurrentPHBrowse;
  if (waitForConcurrentPHBrowse)
  {
    dispatch_semaphore_wait(waitForConcurrentPHBrowse, 0xFFFFFFFFFFFFFFFFLL);
  }

  array = [MEMORY[0x1E695DF70] array];
  v72 = 0;
  v24 = [(CWFAutoJoinManager *)selfCopy __browseForHotspotsWithTimeout:timeout maxCacheAge:age cacheOnly:v13 error:&v72];
  v59 = v72;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v25 = v24;
  v26 = [v25 countByEnumeratingWithState:&v68 objects:v82 count:16];
  if (v26)
  {
    v27 = *v69;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v69 != v27)
        {
          objc_enumerationMutation(v25);
        }

        v29 = *(*(&v68 + 1) + 8 * i);
        v67 = 0;
        v30 = [(CWFAutoJoinManager *)selfCopy __allowHotspot:v29 error:&v67];
        v31 = v67;
        if (v30)
        {
          [array addObject:v29];
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v68 objects:v82 count:16];
    }

    while (v26);
  }

  if ([array count])
  {
    v66 = v64;
    v14 = [(CWFAutoJoinManager *)selfCopy __allowAutoHotspotWithTrigger:v63 error:&v66];
    v32 = v66;

    if ((v14 & 0xFFFFFFFFFFFFFFFELL) != 2)
    {
      v35 = 0;
      v34 = 0;
      goto LABEL_28;
    }

    [(CWFAutoJoinManager *)selfCopy __sortHotspotCandidates:array];
    [(CWFAutoJoinManager *)selfCopy __updateAutoJoinState:5];
    firstObject = [array firstObject];
    v65 = 0;
    v34 = [(CWFAutoJoinManager *)selfCopy __connectToHotspot:firstObject error:&v65];
    v35 = v65;
LABEL_27:

LABEL_28:
    v64 = v32;
    goto LABEL_29;
  }

  v35 = 0;
  v34 = 0;
LABEL_29:
  [(CWFAutoJoinMetric *)selfCopy->_metric setAutoHotspotMode:v14];
  if (v61)
  {
    v36 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
    [(CWFAutoJoinMetric *)selfCopy->_metric setAutoHotspotWasAttempted:1];
    v37 = CWFGetBootTime();
    v38 = [v37 dateByAddingTimeInterval:v61 / 1000000000.0];
    [(CWFAutoJoinMetric *)selfCopy->_metric setAutoHotspotStartedAt:v38];

    v39 = CWFGetBootTime();
    v40 = [v39 dateByAddingTimeInterval:v36 / 1000000000.0];
    [(CWFAutoJoinMetric *)selfCopy->_metric setAutoHotspotEndedAt:v40];

    [(CWFAutoJoinMetric *)selfCopy->_metric setAutoHotspotResult:v34];
    [(CWFAutoJoinMetric *)selfCopy->_metric setAutoHotspotError:v64];
    v41 = CWFGetOSLog();
    if (v41)
    {
      v42 = CWFGetOSLog();
    }

    else
    {
      v42 = MEMORY[0x1E69E9C10];
      v43 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      autoHotspotEndedAt = [(CWFAutoJoinMetric *)selfCopy->_metric autoHotspotEndedAt];
      [autoHotspotEndedAt timeIntervalSinceReferenceDate];
      v46 = v45;
      autoHotspotStartedAt = [(CWFAutoJoinMetric *)selfCopy->_metric autoHotspotStartedAt];
      [autoHotspotStartedAt timeIntervalSinceReferenceDate];
      v49 = v48;
      uUIDString2 = [v62 UUIDString];
      v51 = [uUIDString2 substringToIndex:5];
      v52 = [(CWFAutoJoinManager *)selfCopy __descriptionForError:v64];
      v74 = 134218754;
      v75 = ((v46 - v49) * 1000.0);
      v76 = 2114;
      v77 = v51;
      v78 = 1024;
      v79 = v34;
      v80 = 2114;
      v81 = v52;
      LODWORD(v58) = 38;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v42, 0, "[corewifi] AUTO-JOIN: Auto-hotspot COMPLETED (duration=%lums, uuid=%{public}@, result=%d, error=(%{public}@))", &v74, v58);
    }
  }

LABEL_36:
  if (error && v64)
  {
    v53 = v64;
    *error = v64;
  }

  return v34;
}

- (void)__addDependentThrottleInterval:(unint64_t)interval trigger:(int64_t)trigger dependentTrigger:(int64_t)dependentTrigger
{
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = objc_alloc_init(CWFAutoJoinThrottle);
  [(CWFAutoJoinThrottle *)v9 setTrigger:trigger];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:dependentTrigger];
  v15 = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:interval];
  v16[0] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [(CWFAutoJoinThrottle *)v9 setIntervalsBasedOnTriggerTimestamp:v12];

  throttleIntervalMap = self->_throttleIntervalMap;
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  [(NSMutableDictionary *)throttleIntervalMap setObject:v9 forKeyedSubscript:v14];
}

- (void)__addMatchingThrottleInterval:(unint64_t)interval triggers:(id)triggers
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = triggers;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        integerValue = [v10 integerValue];
        v20 = v10;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:interval];
        v21 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v14 = [CWFAutoJoinThrottle autoJoinThrottleWithTrigger:integerValue intervals:v13];
        [(NSMutableDictionary *)self->_throttleIntervalMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)__addWilcardThrottleInterval:(unint64_t)interval triggers:(id)triggers
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = triggers;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        integerValue = [v10 integerValue];
        v20 = &unk_1F5BBC5C8;
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:interval];
        v21 = v12;
        v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
        v14 = [CWFAutoJoinThrottle autoJoinThrottleWithTrigger:integerValue intervals:v13];
        [(NSMutableDictionary *)self->_throttleIntervalMap setObject:v14 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }
}

- (void)__setupThrottleIntervals
{
  v16 = *MEMORY[0x1E69E9840];
  [(NSMutableDictionary *)self->_throttleIntervalMap removeAllObjects];
  retrySchedule = self->_retrySchedule;
  if (retrySchedule > 7)
  {
    if (retrySchedule == 8)
    {
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9C10];
      v4 = &unk_1F5BB9C28;
      goto LABEL_17;
    }

    if (retrySchedule == 9)
    {
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9BC8];
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:0 triggers:&unk_1F5BB9BE0];
      selfCopy2 = self;
LABEL_9:

      MEMORY[0x1EEE66B58](selfCopy2, sel___addMatchingThrottleInterval_triggers_);
      return;
    }

LABEL_8:
    selfCopy2 = self;
    goto LABEL_9;
  }

  if (retrySchedule != 3)
  {
    if (retrySchedule == 5)
    {
      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9C40];
      v4 = &unk_1F5BB9C58;
LABEL_17:

      [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:0 triggers:v4];
      return;
    }

    goto LABEL_8;
  }

  [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:-1 triggers:&unk_1F5BB9C70];
  [(CWFAutoJoinManager *)self __addWilcardThrottleInterval:0 triggers:&unk_1F5BB9C88];
  if (os_variant_has_internal_content())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [standardUserDefaults objectForKey:@"assoc_retry_awdl_rt_throttle_interval"];

    if (v7)
    {
      v8 = CWFGetOSLog();
      if (v8)
      {
        v9 = CWFGetOSLog();
      }

      else
      {
        v9 = MEMORY[0x1E69E9C10];
        v11 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 134218240;
        v13 = 900;
        v14 = 2048;
        unsignedIntegerValue = [v7 unsignedIntegerValue];
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v9, 0, "[corewifi] AUTO-JOIN: [internal] Applying defaults override for [CWFAutoJoinTriggerAssociatedToNetworkRetry : CWFAutoJoinTriggerAWDLRealTimeModeEnded] throttle interval (default=%lus, override=%lus)", &v12, 22);
      }

      unsignedIntegerValue2 = [v7 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 900;
    }
  }

  else
  {
    unsignedIntegerValue2 = 900;
  }

  [(CWFAutoJoinManager *)self __addDependentThrottleInterval:unsignedIntegerValue2 trigger:45 dependentTrigger:57];
}

- (BOOL)__shouldThrottleAutoJoinTrigger:(int64_t)trigger
{
  v92 = *MEMORY[0x1E69E9840];
  v64 = clock_gettime_nsec_np(_CLOCK_MONOTONIC);
  throttleIntervalMap = self->_throttleIntervalMap;
  triggerCopy = trigger;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:trigger];
  v7 = [(NSMutableDictionary *)throttleIntervalMap objectForKeyedSubscript:v6];

  if (!v7)
  {
    v7 = [(NSMutableDictionary *)self->_throttleIntervalMap objectForKeyedSubscript:&unk_1F5BBC5C8];
  }

  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  intervals = [v7 intervals];
  allKeys = [intervals allKeys];

  selfCopy = self;
  v66 = v7;
  v58 = [allKeys countByEnumeratingWithState:&v80 objects:v91 count:16];
  if (v58)
  {
    v10 = *v81;
    v62 = allKeys;
    v55 = *v81;
    do
    {
      v11 = 0;
      do
      {
        if (*v81 != v10)
        {
          objc_enumerationMutation(allKeys);
        }

        v60 = v11;
        v12 = *(*(&v80 + 1) + 8 * v11);
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        v79 = 0u;
        obj = [(NSMutableDictionary *)self->_throttleTimestampMap allKeys];
        v13 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v77;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v77 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v76 + 1) + 8 * i);
              integerValue = [v12 integerValue];
              if (integerValue == [v17 integerValue])
              {
                v19 = [(NSMutableDictionary *)self->_throttleTimestampMap objectForKeyedSubscript:v17];
                intervals2 = [v7 intervals];
                v21 = [intervals2 objectForKeyedSubscript:v12];

                if (v19)
                {
                  v22 = v21 == 0;
                }

                else
                {
                  v22 = 1;
                }

                if (!v22)
                {
                  unsignedLongLongValue = [v19 unsignedLongLongValue];
                  unsignedLongValue = [v21 unsignedLongValue];
                  v25 = 1000000000 * [v21 unsignedLongValue];
                  unsignedLongValue2 = [v21 unsignedLongValue];
                  v27 = 1000000000 * unsignedLongValue2;
                  v28 = unsignedLongValue > v25;
                  self = selfCopy;
                  v7 = v66;
                  if (v28)
                  {
                    v27 = unsignedLongValue2;
                  }

                  if (v64 - unsignedLongLongValue < v27)
                  {
                    v48 = CWFGetOSLog();
                    if (v48)
                    {
                      v49 = CWFGetOSLog();
                    }

                    else
                    {
                      v49 = MEMORY[0x1E69E9C10];
                      v51 = MEMORY[0x1E69E9C10];
                    }

                    allKeys2 = v62;

                    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                    {
                      v52 = sub_1E0BCC05C(triggerCopy);
                      v86 = 138543618;
                      v87 = v66;
                      v88 = 2114;
                      v89 = v52;
                      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v49, 2, "[corewifi] AUTO-JOIN: Applying throttle (%{public}@) for trigger (%{public}@) based on when auto-join was started", &v86, 22);
LABEL_60:
                    }

LABEL_61:

                    v47 = 1;
                    goto LABEL_62;
                  }
                }
              }
            }

            v14 = [obj countByEnumeratingWithState:&v76 objects:v90 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v11 = v60 + 1;
        allKeys = v62;
        v10 = v55;
      }

      while (v60 + 1 != v58);
      v58 = [v62 countByEnumeratingWithState:&v80 objects:v91 count:16];
    }

    while (v58);
  }

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  intervalsBasedOnTriggerTimestamp = [v7 intervalsBasedOnTriggerTimestamp];
  allKeys2 = [intervalsBasedOnTriggerTimestamp allKeys];

  v59 = [allKeys2 countByEnumeratingWithState:&v72 objects:v85 count:16];
  if (v59)
  {
    v31 = *v73;
    v63 = allKeys2;
    v56 = *v73;
    do
    {
      v32 = 0;
      do
      {
        if (*v73 != v31)
        {
          objc_enumerationMutation(allKeys2);
        }

        v61 = v32;
        v33 = *(*(&v72 + 1) + 8 * v32);
        v68 = 0u;
        v69 = 0u;
        v70 = 0u;
        v71 = 0u;
        obj = [(NSMutableDictionary *)self->_triggerTimestampMap allKeys];
        v34 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v69;
LABEL_33:
          v37 = 0;
          while (1)
          {
            if (*v69 != v36)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(*(&v68 + 1) + 8 * v37);
            integerValue2 = [v33 integerValue];
            if (integerValue2 == [v38 integerValue])
            {
              v19 = [(NSMutableDictionary *)self->_triggerTimestampMap objectForKeyedSubscript:v38];
              intervalsBasedOnTriggerTimestamp2 = [v7 intervalsBasedOnTriggerTimestamp];
              v21 = [intervalsBasedOnTriggerTimestamp2 objectForKeyedSubscript:v33];

              if (v19)
              {
                v41 = v21 == 0;
              }

              else
              {
                v41 = 1;
              }

              if (!v41)
              {
                unsignedLongLongValue2 = [v19 unsignedLongLongValue];
                unsignedLongValue3 = [v21 unsignedLongValue];
                v44 = 1000000000 * [v21 unsignedLongValue];
                unsignedLongValue4 = [v21 unsignedLongValue];
                v46 = 1000000000 * unsignedLongValue4;
                v28 = unsignedLongValue3 > v44;
                self = selfCopy;
                v7 = v66;
                if (v28)
                {
                  v46 = unsignedLongValue4;
                }

                if (v64 - unsignedLongLongValue2 < v46)
                {
                  v50 = CWFGetOSLog();
                  if (v50)
                  {
                    v49 = CWFGetOSLog();
                  }

                  else
                  {
                    v49 = MEMORY[0x1E69E9C10];
                    v53 = MEMORY[0x1E69E9C10];
                  }

                  allKeys2 = v63;

                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v52 = sub_1E0BCC05C(triggerCopy);
                    v86 = 138543618;
                    v87 = v66;
                    v88 = 2114;
                    v89 = v52;
                    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v49, 2, "[corewifi] AUTO-JOIN: Applying throttle (%{public}@) for trigger (%{public}@) based on when auto-join was triggered", &v86, 22);
                    goto LABEL_60;
                  }

                  goto LABEL_61;
                }
              }
            }

            if (v35 == ++v37)
            {
              v35 = [obj countByEnumeratingWithState:&v68 objects:v84 count:16];
              if (v35)
              {
                goto LABEL_33;
              }

              break;
            }
          }
        }

        v32 = v61 + 1;
        allKeys2 = v63;
        v31 = v56;
      }

      while (v61 + 1 != v59);
      v59 = [v63 countByEnumeratingWithState:&v72 objects:v85 count:16];
    }

    while (v59);
  }

  v47 = 0;
LABEL_62:

  return v47;
}

- (void)__setupRetryIntervals
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v4 setBSSChannelsOnly:0];
  [(CWFAutoJoinRetryInterval *)v4 setMaxBSSChannelAge:2592000];
  [(CWFAutoJoinRetryInterval *)v4 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v4 setPassiveScan:1];
  [(CWFAutoJoinRetryInterval *)v4 setDwellTime:110];
  v5 = [(CWFAutoJoinRetryInterval *)v4 copy];
  [v5 setAllowAutoHotspotFallback:1];
  v6 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v6 setBSSChannelsOnly:1];
  [(CWFAutoJoinRetryInterval *)v6 setMaxBSSChannelAge:0];
  [(CWFAutoJoinRetryInterval *)v6 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v6 setDwellTime:110];
  v73 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v73 setBSSChannelsOnly:1];
  [(CWFAutoJoinRetryInterval *)v73 setMaxBSSChannelAge:604800];
  [(CWFAutoJoinRetryInterval *)v73 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v73 setDwellTime:110];
  [(CWFAutoJoinRetryInterval *)v73 setPassiveScan:1];
  v7 = objc_alloc_init(CWFAutoJoinRetryInterval);
  [(CWFAutoJoinRetryInterval *)v7 setBSSChannelsOnly:1];
  [(CWFAutoJoinRetryInterval *)v7 setMaxBSSChannelAge:0];
  [(CWFAutoJoinRetryInterval *)v7 setMaxBSSChannelCount:3];
  [(CWFAutoJoinRetryInterval *)v7 setPassiveScan:0];
  [(CWFAutoJoinRetryInterval *)v7 setDwellTime:40];
  [(CWFAutoJoinRetryInterval *)v7 setAlwaysIncludeRemainingNon2GHzChannels:0];
  [(CWFAutoJoinRetryInterval *)v7 setIncludeAdjacent5GHzChannel:0];
  v8 = [(CWFAutoJoinRetryInterval *)v7 copy];
  [v8 setIncludeAdjacent5GHzChannel:1];
  v72 = [(CWFAutoJoinRetryInterval *)v6 copy];
  [v72 setAlwaysIncludeRemainingNon2GHzChannels:1];
  [v72 setAlwaysInclude6GHzPSCChannels:1];
  v9 = [(CWFAutoJoinRetryInterval *)v4 copy];
  [v9 setAlwaysIncludeRemainingNon2GHzChannels:1];
  [v9 setAlwaysInclude6GHzPSCChannels:1];
  v71 = [v9 copy];
  [v71 setAllowAutoHotspotFallback:1];
  v10 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [array addObject:v10];

  v11 = [v5 autoJoinRetryInterval:20 count:1];
  [array addObject:v11];

  v12 = [v5 autoJoinRetryInterval:120 count:1];
  [array addObject:v12];

  v13 = [v5 autoJoinRetryInterval:240 count:1];
  [array addObject:v13];

  v14 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v14];

  v15 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v15 forKeyedSubscript:&unk_1F5BBC8E0];

  [array removeAllObjects];
  v16 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [array addObject:v16];

  v17 = 5;
  v18 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:5 count:2];
  [array addObject:v18];

  v19 = [v5 autoJoinRetryInterval:10 count:1];
  [array addObject:v19];

  v20 = [v5 autoJoinRetryInterval:120 count:1];
  [array addObject:v20];

  v21 = [v5 autoJoinRetryInterval:240 count:1];
  [array addObject:v21];

  v22 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v22];

  v23 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v23 forKeyedSubscript:&unk_1F5BBC8F8];

  [array removeAllObjects];
  v24 = [v72 autoJoinRetryInterval:0 count:1];
  [array addObject:v24];

  v25 = [v9 autoJoinRetryInterval:5 count:2];
  [array addObject:v25];

  v26 = [v71 autoJoinRetryInterval:10 count:12];
  [array addObject:v26];

  v27 = [v71 autoJoinRetryInterval:20 count:-1];
  [array addObject:v27];

  v28 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v28 forKeyedSubscript:&unk_1F5BBC520];

  [array removeAllObjects];
  v29 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:120 count:1];
  [array addObject:v29];

  v30 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:240 count:1];
  [array addObject:v30];

  v31 = [(CWFAutoJoinRetryInterval *)v73 autoJoinRetryInterval:480 count:-1];
  [array addObject:v31];

  v32 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v32 forKeyedSubscript:&unk_1F5BBC6B8];

  [array removeAllObjects];
  v33 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:20 count:1];
  [array addObject:v33];

  v34 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:60 count:4];
  [array addObject:v34];

  v35 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:120 count:1];
  [array addObject:v35];

  v36 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:240 count:1];
  [array addObject:v36];

  v37 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:480 count:-1];
  [array addObject:v37];

  v38 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v38 forKeyedSubscript:&unk_1F5BBC910];

  [array removeAllObjects];
  v39 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:20 count:1];
  [array addObject:v39];

  v40 = [v5 autoJoinRetryInterval:20 count:1];
  [array addObject:v40];

  v41 = [v5 autoJoinRetryInterval:120 count:1];
  [array addObject:v41];

  v42 = [v5 autoJoinRetryInterval:240 count:1];
  [array addObject:v42];

  v43 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v43];

  v44 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v44 forKeyedSubscript:&unk_1F5BBC730];

  [array removeAllObjects];
  do
  {
    v45 = [(CWFAutoJoinRetryInterval *)v7 autoJoinRetryInterval:0 count:2];
    [array addObject:v45];

    v46 = [v8 autoJoinRetryInterval:0 count:2];
    [array addObject:v46];

    v47 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:0 count:1];
    [array addObject:v47];

    --v17;
  }

  while (v17);
  v48 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v48 forKeyedSubscript:&unk_1F5BBC6A0];

  [array removeAllObjects];
  v49 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:360 count:1];
  [array addObject:v49];

  v50 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:900 count:-1];
  [array addObject:v50];

  v51 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v51 forKeyedSubscript:&unk_1F5BBC568];

  [array removeAllObjects];
  v52 = [(CWFAutoJoinRetryInterval *)v4 autoJoinRetryInterval:900 count:-1];
  [array addObject:v52];

  v53 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v53 forKeyedSubscript:&unk_1F5BBC7C0];

  [array removeAllObjects];
  v54 = [v9 autoJoinRetryInterval:0 count:1];
  [array addObject:v54];

  v55 = [v9 autoJoinRetryInterval:5 count:2];
  [array addObject:v55];

  v56 = [v9 autoJoinRetryInterval:10 count:2];
  [array addObject:v56];

  v57 = [v9 autoJoinRetryInterval:20 count:16];
  [array addObject:v57];

  v58 = [v9 autoJoinRetryInterval:120 count:1];
  [array addObject:v58];

  v59 = [v9 autoJoinRetryInterval:240 count:1];
  [array addObject:v59];

  v60 = [v9 autoJoinRetryInterval:480 count:-1];
  [array addObject:v60];

  v61 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v61 forKeyedSubscript:&unk_1F5BBC928];

  [array removeAllObjects];
  v62 = [(CWFAutoJoinRetryInterval *)v6 autoJoinRetryInterval:0 count:1];
  [array addObject:v62];

  v63 = [v5 autoJoinRetryInterval:5 count:2];
  [array addObject:v63];

  v64 = [v5 autoJoinRetryInterval:30 count:5];
  [array addObject:v64];

  v65 = [v5 autoJoinRetryInterval:60 count:5];
  [array addObject:v65];

  v66 = [v5 autoJoinRetryInterval:480 count:-1];
  [array addObject:v66];

  v67 = [array copy];
  [(NSMutableDictionary *)self->_retryIntervalMap setObject:v67 forKeyedSubscript:&unk_1F5BBC940];

  [array removeAllObjects];
  v68 = CWFGetOSLog();
  if (v68)
  {
    v69 = CWFGetOSLog();
  }

  else
  {
    v69 = MEMORY[0x1E69E9C10];
    v70 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
  {
    v74[0] = 0;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v69, 0, "[corewifi] AUTO-JOIN: Setup retry intervals -->", v74, 2);
  }

  [(NSMutableDictionary *)self->_retryIntervalMap enumerateKeysAndObjectsUsingBlock:&unk_1F5B8ACC0];
}

- (id)__retryIntervalWithScheduleIndex:(unint64_t)index
{
  v29 = *MEMORY[0x1E69E9840];
  retrySchedule = self->_retrySchedule;
  if ([(CWFAutoJoinManager *)self __forceNearbyNetworkRetrySchedule])
  {
    v6 = CWFGetOSLog();
    if (v6)
    {
      v7 = CWFGetOSLog();
    }

    else
    {
      v7 = MEMORY[0x1E69E9C10];
      v8 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v26[0] = 67109376;
      v26[1] = 300;
      v27 = 1024;
      v28 = -80;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 0, "[corewifi] AUTO-JOIN: Forcing nearby network retry schedule because we recently (< %ds) found a low RSSI (< %ddBm) join candidate", v26, 14);
    }

    retrySchedule = 10;
  }

  retryIntervalMap = self->_retryIntervalMap;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:retrySchedule];
  v11 = [(NSMutableDictionary *)retryIntervalMap objectForKeyedSubscript:v10];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = 0;
    v16 = *v22;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        if (__CFADD__(v15, [v18 count]))
        {
          v15 = -1;
        }

        else
        {
          v15 += [v18 count];
        }

        if (v15 > index)
        {
          v19 = v18;
          goto LABEL_21;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  v19 = 0;
LABEL_21:

  return v19;
}

- (id)__retryInterval
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(CWFAutoJoinManager *)selfCopy __retryIntervalWithScheduleIndex:selfCopy->_retryScheduleIndex];
  objc_sync_exit(selfCopy);

  return v3;
}

- (int64_t)__retryTriggerForRetrySchedule:(int64_t)schedule
{
  if ((schedule - 2) > 9)
  {
    return 4;
  }

  else
  {
    return qword_1E0D81B18[schedule - 2];
  }
}

- (void)__updateRetrySchedule
{
  v49 = *MEMORY[0x1E69E9840];
  if (!self->_retryTimer)
  {
    v3 = dispatch_get_global_queue(0, 0);
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v3);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v4;

    v6 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0C8C570;
    handler[3] = &unk_1E86E6010;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_source_set_timer(self->_retryTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_retryTimer);
  }

  if (!self->_activeRequest)
  {
    v7 = [(CWFAutoJoinManager *)self __retryIntervalWithScheduleIndex:self->_retryScheduleIndex];
    v8 = v7;
    if (v7)
    {
      interval = [v7 interval];
      v10 = 1000000000 * [v8 interval];
      interval2 = [v8 interval];
      if (interval <= v10)
      {
        v12 = 1000000000 * interval2;
      }

      else
      {
        v12 = interval2;
      }

      if ([(CWFAutoJoinManager *)self __applyRetryIntervalSkew:v12]> 0x7FFFFFFFFFFFFFFELL)
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        interval3 = [v8 interval];
        v14 = 1000000000 * [v8 interval];
        interval4 = [v8 interval];
        if (interval3 <= v14)
        {
          v16 = 1000000000 * interval4;
        }

        else
        {
          v16 = interval4;
        }

        v17 = [(CWFAutoJoinManager *)self __applyRetryIntervalSkew:v16];
      }

      v22 = CWFGetOSLog();
      if (v22)
      {
        v23 = CWFGetOSLog();
      }

      else
      {
        v23 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        if (self->_isRetryScheduled)
        {
          v25 = @"Re-scheduling";
        }

        else
        {
          v25 = @"Scheduling";
        }

        v26 = sub_1E0BEE2F0(self->_retrySchedule);
        retryScheduleIndex = self->_retryScheduleIndex;
        v39 = 138544386;
        v40 = v25;
        v41 = 2048;
        v42 = v17 / 0xF4240;
        v43 = 2114;
        v44 = v26;
        v45 = 2048;
        v46 = retryScheduleIndex;
        v47 = 2114;
        v48 = v8;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v23, 0, "[corewifi] AUTO-JOIN: %{public}@ auto-join retry attempt in %lldms (schedule=%{public}@, index=%lu interval=(%{public}@))", &v39, 52);
      }

      self->_isRetryScheduled = 1;
      v28 = self->_retryTimer;
      v29 = dispatch_walltime(0, v17);
      v30 = v28;
    }

    else
    {
      isRetryScheduled = self->_isRetryScheduled;
      v19 = CWFGetOSLog();
      v20 = v19;
      if (!isRetryScheduled)
      {
        if (v19)
        {
          v31 = CWFGetOSLog();
        }

        else
        {
          v31 = MEMORY[0x1E69E9C10];
          v35 = MEMORY[0x1E69E9C10];
        }

        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v36 = sub_1E0BEE2F0(self->_retrySchedule);
          v37 = self->_retryScheduleIndex;
          v39 = 138543618;
          v40 = v36;
          v41 = 2048;
          v42 = v37;
          _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v31, 0, "[corewifi] AUTO-JOIN: No auto-join retry will be scheduled (schedule=%{public}@, index=%lu)", &v39, 22);
        }

        goto LABEL_33;
      }

      if (v19)
      {
        v21 = CWFGetOSLog();
      }

      else
      {
        v21 = MEMORY[0x1E69E9C10];
        v32 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v33 = sub_1E0BEE2F0(self->_retrySchedule);
        v34 = self->_retryScheduleIndex;
        v39 = 138543618;
        v40 = v33;
        v41 = 2048;
        v42 = v34;
        _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v21, 0, "[corewifi] AUTO-JOIN: Unscheduling auto-join retry (schedule=%{public}@, index=%lu)", &v39, 22);
      }

      self->_isRetryScheduled = 0;
      v30 = self->_retryTimer;
      v29 = -1;
    }

    dispatch_source_set_timer(v30, v29, 0xFFFFFFFFFFFFFFFFLL, 0);
LABEL_33:
  }
}

- (BOOL)__calloutToAllowAutoJoinWithTrigger:(int64_t)trigger error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1E0BC2D60;
  v31 = sub_1E0BC61EC;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B894F0);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v37 = 134219010;
    v38 = v8 / 0x3B9ACA00;
    v39 = 2048;
    v40 = v8 % 0x3B9ACA00 / 0x3E8;
    v41 = 2082;
    v42 = "[CWFAutoJoinManager __calloutToAllowAutoJoinWithTrigger:error:]";
    v43 = 2082;
    v44 = "CWFAutoJoinManager.m";
    v45 = 1024;
    v46 = 7439;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v37, 48);
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8C9EC;
  block[3] = &unk_1E86E78D0;
  block[4] = self;
  v21 = &v33;
  v22 = &v27;
  v23 = v25;
  triggerCopy = trigger;
  v14 = v7;
  v20 = v14;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v15);

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v16 = v28[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = *(v34 + 24);

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v17 & 1;
}

- (BOOL)__calloutToAllowKnownNetwork:(id)network trigger:(int64_t)trigger allowForSeamlessSSIDTransition:(id)transition defer:(BOOL *)defer queue:(id)queue error:(id *)error
{
  v73 = *MEMORY[0x1E69E9840];
  networkCopy = network;
  transitionCopy = transition;
  queueCopy = queue;
  v57 = 0;
  v58 = &v57;
  v59 = 0x2020000000;
  v60 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = sub_1E0BC2D60;
  v51 = sub_1E0BC61EC;
  v52 = 0;
  v15 = [networkCopy copy];
  if (queueCopy)
  {
    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x2020000000;
    v46 = 0;
    v16 = dispatch_block_create(0, &unk_1F5B894D0);
    v17 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    v18 = CWFGetOSLog();
    if (v18)
    {
      v19 = CWFGetOSLog();
    }

    else
    {
      v19 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v63 = 134219010;
      v64 = v17 / 0x3B9ACA00;
      v65 = 2048;
      v66 = v17 % 0x3B9ACA00 / 0x3E8;
      v67 = 2082;
      v68 = "[CWFAutoJoinManager __calloutToAllowKnownNetwork:trigger:allowForSeamlessSSIDTransition:defer:queue:error:]";
      v69 = 2082;
      v70 = "CWFAutoJoinManager.m";
      v71 = 1024;
      v72 = 7482;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v19, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v63, 48);
    }

    v23 = qos_class_self();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1E0C8D2A8;
    block[3] = &unk_1E86E7920;
    block[4] = self;
    v37 = v15;
    triggerCopy = trigger;
    v40 = &v57;
    v41 = &v53;
    v42 = &v47;
    v43 = v45;
    v38 = transitionCopy;
    v39 = v16;
    v24 = v16;
    v25 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v23, 0, block);
    dispatch_async(queueCopy, v25);

    dispatch_block_wait(v24, 0xFFFFFFFFFFFFFFFFLL);
    _Block_object_dispose(v45, 8);
  }

  else
  {
    allowKnownNetworkHandler = [(CWFAutoJoinManager *)self allowKnownNetworkHandler];

    if (allowKnownNetworkHandler)
    {
      allowKnownNetworkHandler2 = [(CWFAutoJoinManager *)self allowKnownNetworkHandler];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = sub_1E0C8D660;
      v35[3] = &unk_1E86E7948;
      v35[4] = &v57;
      v35[5] = &v53;
      v35[6] = &v47;
      (allowKnownNetworkHandler2)[2](allowKnownNetworkHandler2, v15, trigger, transitionCopy, v35);
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v61 = *MEMORY[0x1E696A578];
      v62 = @"CWFAutoJoinManager.allowKnownNetworkHandler() not configured";
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
      v31 = [v29 errorWithDomain:*MEMORY[0x1E696A798] code:6 userInfo:v30];
      v32 = v48[5];
      v48[5] = v31;
    }
  }

  if (defer && (v54[3] & 1) != 0)
  {
    *defer = 1;
  }

  if (error)
  {
    v26 = v48[5];
    if (v26)
    {
      *error = v26;
    }
  }

  v27 = *(v58 + 24);

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);

  return v27 & 1;
}

- (id)__calloutToScanForNetworksWithParameters:(id)parameters scanChannels:(id *)channels error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1E0BC2D60;
  v48 = sub_1E0BC61EC;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1E0BC2D60;
  v42 = sub_1E0BC61EC;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1E0BC2D60;
  v36 = sub_1E0BC61EC;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v9 = dispatch_block_create(0, &unk_1F5B894B0);
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v50 = 134219010;
    v51 = v10 / 0x3B9ACA00;
    v52 = 2048;
    v53 = v10 % 0x3B9ACA00 / 0x3E8;
    v54 = 2082;
    v55 = "[CWFAutoJoinManager __calloutToScanForNetworksWithParameters:scanChannels:error:]";
    v56 = 2082;
    v57 = "CWFAutoJoinManager.m";
    v58 = 1024;
    v59 = 7541;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v50, 48);
  }

  targetQueue = self->_targetQueue;
  v15 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8DAD8;
  block[3] = &unk_1E86E7998;
  block[4] = self;
  v16 = parametersCopy;
  v24 = v16;
  v26 = &v44;
  v27 = &v38;
  v28 = &v32;
  v29 = v30;
  v17 = v9;
  v25 = v17;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, block);
  dispatch_async(targetQueue, v18);

  dispatch_block_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (channels)
  {
    v19 = v39[5];
    if (v19)
    {
      *channels = v19;
    }
  }

  if (error)
  {
    v20 = v33[5];
    if (v20)
    {
      *error = v20;
    }
  }

  if ([v45[5] count])
  {
    [(NSMutableSet *)self->_cumulativeScanResults addObjectsFromArray:v45[5]];
  }

  v21 = v45[5];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v21;
}

- (id)__calloutToPerformGASQueryWithParameters:(id)parameters GASQueryNetworks:(id *)networks error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = sub_1E0BC2D60;
  v48 = sub_1E0BC61EC;
  v49 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = sub_1E0BC2D60;
  v42 = sub_1E0BC61EC;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_1E0BC2D60;
  v36 = sub_1E0BC61EC;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x2020000000;
  v31 = 0;
  v9 = dispatch_block_create(0, &unk_1F5B8ACE0);
  v10 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v11 = CWFGetOSLog();
  if (v11)
  {
    v12 = CWFGetOSLog();
  }

  else
  {
    v12 = MEMORY[0x1E69E9C10];
    v13 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v50 = 134219010;
    v51 = v10 / 0x3B9ACA00;
    v52 = 2048;
    v53 = v10 % 0x3B9ACA00 / 0x3E8;
    v54 = 2082;
    v55 = "[CWFAutoJoinManager __calloutToPerformGASQueryWithParameters:GASQueryNetworks:error:]";
    v56 = 2082;
    v57 = "CWFAutoJoinManager.m";
    v58 = 1024;
    v59 = 7592;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v12, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v50, 48);
  }

  targetQueue = self->_targetQueue;
  v15 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8E2E0;
  block[3] = &unk_1E86E7998;
  block[4] = self;
  v16 = parametersCopy;
  v24 = v16;
  v26 = &v44;
  v27 = &v38;
  v28 = &v32;
  v29 = v30;
  v17 = v9;
  v25 = v17;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v15, 0, block);
  dispatch_async(targetQueue, v18);

  dispatch_block_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if (networks)
  {
    v19 = v39[5];
    if (v19)
    {
      *networks = v19;
    }
  }

  if (error)
  {
    v20 = v33[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = v45[5];

  _Block_object_dispose(v30, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v44, 8);

  return v21;
}

- (BOOL)__calloutToAllowJoinCandidate:(id)candidate trigger:(int64_t)trigger defer:(BOOL *)defer error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  v45 = 0;
  v46 = &v45;
  v47 = 0x2020000000;
  v48 = 0;
  v41 = 0;
  v42 = &v41;
  v43 = 0x2020000000;
  v44 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1E0BC2D60;
  v39 = sub_1E0BC61EC;
  v40 = 0;
  v11 = [candidateCopy copy];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x2020000000;
  v34 = 0;
  v12 = dispatch_block_create(0, &unk_1F5B8AD00);
  v13 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v14 = CWFGetOSLog();
  if (v14)
  {
    v15 = CWFGetOSLog();
  }

  else
  {
    v15 = MEMORY[0x1E69E9C10];
    v16 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v49 = 134219010;
    v50 = v13 / 0x3B9ACA00;
    v51 = 2048;
    v52 = v13 % 0x3B9ACA00 / 0x3E8;
    v53 = 2082;
    v54 = "[CWFAutoJoinManager __calloutToAllowJoinCandidate:trigger:defer:error:]";
    v55 = 2082;
    v56 = "CWFAutoJoinManager.m";
    v57 = 1024;
    v58 = 7641;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v15, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v49, 48);
  }

  targetQueue = self->_targetQueue;
  v18 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8EA98;
  block[3] = &unk_1E86E79C0;
  block[4] = self;
  v19 = v11;
  v26 = v19;
  v28 = &v45;
  v29 = &v41;
  v30 = &v35;
  v31 = v33;
  triggerCopy = trigger;
  v20 = v12;
  v27 = v20;
  v21 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v18, 0, block);
  dispatch_async(targetQueue, v21);

  dispatch_block_wait(v20, 0xFFFFFFFFFFFFFFFFLL);
  if (defer && (v42[3] & 1) != 0)
  {
    *defer = 1;
  }

  if (error)
  {
    v22 = v36[5];
    if (v22)
    {
      *error = v22;
    }
  }

  v23 = *(v46 + 24);

  _Block_object_dispose(v33, 8);
  _Block_object_dispose(&v35, 8);

  _Block_object_dispose(&v41, 8);
  _Block_object_dispose(&v45, 8);

  return v23 & 1;
}

- (BOOL)__calloutToAssociateWithParameters:(id)parameters error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1E0BC2D60;
  v31 = sub_1E0BC61EC;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B89470);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v33 = 134219010;
    v34 = v8 / 0x3B9ACA00;
    v35 = 2048;
    v36 = v8 % 0x3B9ACA00 / 0x3E8;
    v37 = 2082;
    v38 = "[CWFAutoJoinManager __calloutToAssociateWithParameters:error:]";
    v39 = 2082;
    v40 = "CWFAutoJoinManager.m";
    v41 = 1024;
    v42 = 7684;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v33, 48);
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8F18C;
  block[3] = &unk_1E86E7A10;
  block[4] = self;
  v14 = parametersCopy;
  v21 = v14;
  v23 = &v27;
  v24 = v25;
  v15 = v7;
  v22 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v28[5];
  if (error && v17)
  {
    *error = v17;
    v17 = v28[5];
  }

  v18 = v17 == 0;

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  return v18;
}

- (int64_t)__calloutToAllowAutoHotspotWithTrigger:(int64_t)trigger error:(id *)error
{
  v47 = *MEMORY[0x1E69E9840];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1E0BC2D60;
  v31 = sub_1E0BC61EC;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8AD20);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v37 = 134219010;
    v38 = v8 / 0x3B9ACA00;
    v39 = 2048;
    v40 = v8 % 0x3B9ACA00 / 0x3E8;
    v41 = 2082;
    v42 = "[CWFAutoJoinManager __calloutToAllowAutoHotspotWithTrigger:error:]";
    v43 = 2082;
    v44 = "CWFAutoJoinManager.m";
    v45 = 1024;
    v46 = 7721;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v37, 48);
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8F854;
  block[3] = &unk_1E86E78D0;
  block[4] = self;
  v21 = &v33;
  v22 = &v27;
  v23 = v25;
  triggerCopy = trigger;
  v14 = v7;
  v20 = v14;
  v15 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v15);

  dispatch_block_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v16 = v28[5];
    if (v16)
    {
      *error = v16;
    }
  }

  v17 = v34[3];

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  _Block_object_dispose(&v33, 8);
  return v17;
}

- (BOOL)__calloutToAllowHotspot:(id)hotspot error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = sub_1E0BC2D60;
  v32 = sub_1E0BC61EC;
  v33 = 0;
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v27 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8AD40);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v38 = 134219010;
    v39 = v8 / 0x3B9ACA00;
    v40 = 2048;
    v41 = v8 % 0x3B9ACA00 / 0x3E8;
    v42 = 2082;
    v43 = "[CWFAutoJoinManager __calloutToAllowHotspot:error:]";
    v44 = 2082;
    v45 = "CWFAutoJoinManager.m";
    v46 = 1024;
    v47 = 7759;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v38, 48);
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C8FF4C;
  block[3] = &unk_1E86E7A60;
  block[4] = self;
  v14 = hotspotCopy;
  v21 = v14;
  v23 = &v34;
  v24 = &v28;
  v25 = v26;
  v15 = v7;
  v22 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v17 = v29[5];
    if (v17)
    {
      *error = v17;
    }
  }

  v18 = *(v35 + 24);

  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v34, 8);
  return v18 & 1;
}

- (void)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only reply:(id)reply
{
  v34 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v12 = CWFGetOSLog();
  if (v12)
  {
    v13 = CWFGetOSLog();
  }

  else
  {
    v13 = MEMORY[0x1E69E9C10];
    v14 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v24 = 134219010;
    v25 = v11 / 0x3B9ACA00;
    v26 = 2048;
    v27 = v11 % 0x3B9ACA00 / 0x3E8;
    v28 = 2082;
    v29 = "[CWFAutoJoinManager __calloutToBrowseForHotspotsWithTimeout:maxCacheAge:cacheOnly:reply:]";
    v30 = 2082;
    v31 = "CWFAutoJoinManager.m";
    v32 = 1024;
    v33 = 7792;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v13, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v24, 48);
  }

  targetQueue = self->_targetQueue;
  v16 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C90504;
  block[3] = &unk_1E86E7AB0;
  timeoutCopy = timeout;
  ageCopy = age;
  onlyCopy = only;
  block[4] = self;
  v20 = replyCopy;
  v17 = replyCopy;
  v18 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v16, 0, block);
  dispatch_async(targetQueue, v18);
}

- (BOOL)__calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:(id *)error
{
  v44 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_1E0BC2D60;
  v28 = sub_1E0BC61EC;
  v29 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v5 = dispatch_block_create(0, &unk_1F5B8AD60);
  v6 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v7 = CWFGetOSLog();
  if (v7)
  {
    v8 = CWFGetOSLog();
  }

  else
  {
    v8 = MEMORY[0x1E69E9C10];
    v9 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v34 = 134219010;
    v35 = v6 / 0x3B9ACA00;
    v36 = 2048;
    v37 = v6 % 0x3B9ACA00 / 0x3E8;
    v38 = 2082;
    v39 = "[CWFAutoJoinManager __calloutToAllowBrokenBackhaulPersonalHotspotFallbackAndReturnError:]";
    v40 = 2082;
    v41 = "CWFAutoJoinManager.m";
    v42 = 1024;
    v43 = 7816;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v8, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v34, 48);
  }

  targetQueue = self->_targetQueue;
  v11 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C90B28;
  block[3] = &unk_1E86E7B00;
  block[4] = self;
  v19 = &v30;
  v20 = &v24;
  v21 = v22;
  v12 = v5;
  v18 = v12;
  v13 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v11, 0, block);
  dispatch_async(targetQueue, v13);

  dispatch_block_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v14 = v25[5];
    if (v14)
    {
      *error = v14;
    }
  }

  v15 = *(v31 + 24);

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(&v24, 8);

  _Block_object_dispose(&v30, 8);
  return v15 & 1;
}

- (void)__calloutToCheckForBrokenBackhaulAndReply:(id)reply
{
  v25 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v5 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v6 = CWFGetOSLog();
  if (v6)
  {
    v7 = CWFGetOSLog();
  }

  else
  {
    v7 = MEMORY[0x1E69E9C10];
    v8 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134219010;
    v16 = v5 / 0x3B9ACA00;
    v17 = 2048;
    v18 = v5 % 0x3B9ACA00 / 0x3E8;
    v19 = 2082;
    v20 = "[CWFAutoJoinManager __calloutToCheckForBrokenBackhaulAndReply:]";
    v21 = 2082;
    v22 = "CWFAutoJoinManager.m";
    v23 = 1024;
    v24 = 7849;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v7, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v15, 48);
  }

  targetQueue = self->_targetQueue;
  v10 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C910D8;
  block[3] = &unk_1E86E64C0;
  block[4] = self;
  v14 = replyCopy;
  v11 = replyCopy;
  v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v10, 0, block);
  dispatch_async(targetQueue, v12);
}

- (id)__calloutToBrowseForHotspotsWithTimeout:(unint64_t)timeout maxCacheAge:(unint64_t)age cacheOnly:(BOOL)only error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = sub_1E0BC2D60;
  v43 = sub_1E0BC61EC;
  v44 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = sub_1E0BC2D60;
  v37 = sub_1E0BC61EC;
  v38 = 0;
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v11 = dispatch_block_create(0, &unk_1F5B8AD80);
  v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v13 = CWFGetOSLog();
  if (v13)
  {
    v14 = CWFGetOSLog();
  }

  else
  {
    v14 = MEMORY[0x1E69E9C10];
    v15 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v45 = 134219010;
    v46 = v12 / 0x3B9ACA00;
    v47 = 2048;
    v48 = v12 % 0x3B9ACA00 / 0x3E8;
    v49 = 2082;
    v50 = "[CWFAutoJoinManager __calloutToBrowseForHotspotsWithTimeout:maxCacheAge:cacheOnly:error:]";
    v51 = 2082;
    v52 = "CWFAutoJoinManager.m";
    v53 = 1024;
    v54 = 7872;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v14, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v45, 48);
  }

  targetQueue = self->_targetQueue;
  v17 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C91770;
  block[3] = &unk_1E86E7B78;
  timeoutCopy = timeout;
  ageCopy = age;
  onlyCopy = only;
  block[4] = self;
  v25 = &v39;
  v26 = &v33;
  v27 = v31;
  v18 = v11;
  v24 = v18;
  v19 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v17, 0, block);
  dispatch_async(targetQueue, v19);

  dispatch_block_wait(v18, 0xFFFFFFFFFFFFFFFFLL);
  if (error)
  {
    v20 = v34[5];
    if (v20)
    {
      *error = v20;
    }
  }

  v21 = v40[5];

  _Block_object_dispose(v31, 8);
  _Block_object_dispose(&v33, 8);

  _Block_object_dispose(&v39, 8);

  return v21;
}

- (BOOL)__calloutToConnectToHotspot:(id)hotspot error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  hotspotCopy = hotspot;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = sub_1E0BC2D60;
  v31 = sub_1E0BC61EC;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v7 = dispatch_block_create(0, &unk_1F5B8ADA0);
  v8 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v9 = CWFGetOSLog();
  if (v9)
  {
    v10 = CWFGetOSLog();
  }

  else
  {
    v10 = MEMORY[0x1E69E9C10];
    v11 = MEMORY[0x1E69E9C10];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v33 = 134219010;
    v34 = v8 / 0x3B9ACA00;
    v35 = 2048;
    v36 = v8 % 0x3B9ACA00 / 0x3E8;
    v37 = 2082;
    v38 = "[CWFAutoJoinManager __calloutToConnectToHotspot:error:]";
    v39 = 2082;
    v40 = "CWFAutoJoinManager.m";
    v41 = 1024;
    v42 = 7909;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &dword_1E0BBF000, v10, 2, "[corewifi] >>> @[%llu.%06llu] %{public}s (%{public}s:%u) ", &v33, 48);
  }

  targetQueue = self->_targetQueue;
  v13 = qos_class_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0C91E64;
  block[3] = &unk_1E86E7A10;
  block[4] = self;
  v14 = hotspotCopy;
  v21 = v14;
  v23 = &v27;
  v24 = v25;
  v15 = v7;
  v22 = v15;
  v16 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, v13, 0, block);
  dispatch_async(targetQueue, v16);

  dispatch_block_wait(v15, 0xFFFFFFFFFFFFFFFFLL);
  v17 = v28[5];
  if (error && v17)
  {
    *error = v17;
    v17 = v28[5];
  }

  v18 = v17 == 0;

  _Block_object_dispose(v25, 8);
  _Block_object_dispose(&v27, 8);

  return v18;
}

@end