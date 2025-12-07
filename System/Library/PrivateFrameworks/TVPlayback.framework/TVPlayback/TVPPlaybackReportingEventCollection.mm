@interface TVPPlaybackReportingEventCollection
+ (double)_totalTimeSpentDoingFPSFetchesFromEndEvents:(id)events;
+ (void)initialize;
- (BOOL)containsEventWithName:(id)name;
- (NSDictionary)rtcReportingEventDict;
- (NSDictionary)startupEventsDict;
- (TVPPlaybackReportingEventCollection)init;
- (void)_addEventWithName:(id)name type:(int64_t)type identifier:(id)identifier value:(id)value timestamp:(id)timestamp forceAdd:(BOOL)add isUIInteraction:(BOOL)interaction;
- (void)_addStartupEventWithName:(id)name timestamp:(double)timestamp durationMS:(id)s toDictionary:(id)dictionary;
- (void)_closeOpenEvents;
- (void)_setError:(id)error inEventDict:(id)dict errorCodeKey:(id)key errorDomainKey:(id)domainKey;
- (void)addOrReplaceStartEventWithName:(id)name date:(id)date;
- (void)setComplete:(BOOL)complete;
@end

@implementation TVPPlaybackReportingEventCollection

+ (void)initialize
{
  if (initialize_onceToken_0 != -1)
  {
    +[TVPPlaybackReportingEventCollection initialize];
  }
}

uint64_t __49__TVPPlaybackReportingEventCollection_initialize__block_invoke()
{
  v0 = os_log_create("com.apple.AppleTV.playback", "TVPPlaybackReportingEventCollection");
  v1 = sLogObject_0;
  sLogObject_0 = v0;

  v2 = [MEMORY[0x277CBEB98] setWithObjects:{TVPPlaybackReportingEventTotalStartupSequence, TVPPlaybackReportingEventPrepareForLoading, TVPPlaybackReportingEventEnsureSufficientDiskSpace, TVPPlaybackReportingEventLoadAVAssetKeysPrimary, TVPPlaybackReportingEventLoadAVAssetKeysSecondary, TVPPlaybackReportingEventLoadAVAssetKeysTotal, TVPPlaybackReportingEventPrepareForPlaybackInitiation, TVPPlaybackReportingEventBookmarkSync, TVPPlaybackReportingEventBuyProduct, TVPPlaybackReportingEventBuyProductServerProcessingTimeMS, TVPPlaybackReportingEventBuyProductBlockedPlaybackStartup, TVPPlaybackReportingEventFetchRental, TVPPlaybackReportingEventLoadBumperConfig, TVPPlaybackReportingEventRentalCheckout, TVPPlaybackReportingEventRentalCheckoutServerProcessingTimeMS, TVPPlaybackReportingEventCRABSLease, TVPPlaybackReportingEventCRABSLeaseServerProcessingTimeMS, TVPPlaybackReportingEventPlaybackStartupResult, TVPPlaybackReportingEventError, TVPPlaybackReportingEventErrorEvent, TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction, @"fpsLongestCertFetchTime", @"fpsLongestRequestDataGenerationTime", @"fpsLongestServerFetchAsMeasuredByAppTime", @"fpsLongestServerProcessingTime", @"fpsLongestFetchTime", @"fpsFetchCount", TVPPlaybackReportingEventRentalCheckoutDoneInParallelWithFPSKeyFetch, TVPPlaybackReportingEventBookmarkSyncPerformed, TVPPlaybackReportingEventSyncedBookmarkMatchesPreviousBookmark, TVPPlaybackReportingEventFPSURLBagFetch, TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp, TVPPlaybackReportingEventWaitingForTimeControlStatus, TVPPlaybackReportingEventUserPlayToLoadingInitiation, @"reportingKeysWereOmittedDueToReportingError", TVPPlaybackReportingEventOpenURLTime, TVPPlaybackReportingEventPlaybackInitiationAction, TVPPlaybackReportingEventLinearTokenFetch, TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus, TVPPlaybackReportingEventHLSPlaylistPreloadState, 0}];
  v3 = sReportableEvents;
  sReportableEvents = v2;

  sFPSIndividualEvents = [MEMORY[0x277CBEB98] setWithObjects:{TVPPlaybackReportingEventFPSCertFetch, TVPPlaybackReportingEventFPSRequestDataGeneration, TVPPlaybackReportingEventFPSServerKeyFetch, TVPPlaybackReportingEventFPSServerProcessingTimeMS, TVPPlaybackReportingEventFPSOverallFetch, TVPPlaybackReportingEventFPSUsingCachedCertData, TVPPlaybackReportingEventLinearTokenFetch, TVPPlaybackReportingEventFetchLocationAuthorizationStatus, 0}];

  return MEMORY[0x2821F96F8]();
}

- (TVPPlaybackReportingEventCollection)init
{
  v8.receiver = self;
  v8.super_class = TVPPlaybackReportingEventCollection;
  v2 = [(TVPPlaybackReportingEventCollection *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    eventArray = v2->_eventArray;
    v2->_eventArray = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    openEvents = v2->_openEvents;
    v2->_openEvents = v5;

    v2->_videoType = 0;
  }

  return v2;
}

- (void)addOrReplaceStartEventWithName:(id)name date:(id)date
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dateCopy = date;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0x7FFFFFFFFFFFFFFFLL;
  if (nameCopy)
  {
    eventArray = [(TVPPlaybackReportingEventCollection *)self eventArray];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __75__TVPPlaybackReportingEventCollection_addOrReplaceStartEventWithName_date___block_invoke;
    v16[3] = &unk_279D7BAA8;
    v9 = nameCopy;
    v17 = v9;
    v18 = &v19;
    [eventArray enumerateObjectsUsingBlock:v16];

    if (v20[3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v10 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v24 = v9;
        _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, "Replacing start event with name %@", buf, 0xCu);
      }

      eventArray2 = [(TVPPlaybackReportingEventCollection *)self eventArray];
      [eventArray2 removeObjectAtIndex:v20[3]];

      openEvents = [(TVPPlaybackReportingEventCollection *)self openEvents];
      [openEvents removeObjectForKey:v9];
    }
  }

  if (dateCopy)
  {
    v13 = MEMORY[0x277CCABB0];
    [dateCopy timeIntervalSinceReferenceDate];
    v14 = [v13 numberWithDouble:?];
  }

  else
  {
    v14 = 0;
  }

  LOBYTE(v15) = 0;
  [(TVPPlaybackReportingEventCollection *)self _addEventWithName:nameCopy type:0 identifier:0 value:0 timestamp:v14 forceAdd:0 isUIInteraction:v15];

  _Block_object_dispose(&v19, 8);
}

void __75__TVPPlaybackReportingEventCollection_addOrReplaceStartEventWithName_date___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 name];
  if ([v7 isEqualToString:*(a1 + 32)])
  {
    v8 = [v9 type];

    if (!v8)
    {
      *(*(*(a1 + 40) + 8) + 24) = a3;
      *a4 = 1;
    }
  }

  else
  {
  }
}

- (BOOL)containsEventWithName:(id)name
{
  nameCopy = name;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  eventArray = [(TVPPlaybackReportingEventCollection *)self eventArray];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __61__TVPPlaybackReportingEventCollection_containsEventWithName___block_invoke;
  v8[3] = &unk_279D7BAA8;
  v6 = nameCopy;
  v9 = v6;
  v10 = &v11;
  [eventArray enumerateObjectsUsingBlock:v8];

  LOBYTE(eventArray) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);

  return eventArray;
}

void __61__TVPPlaybackReportingEventCollection_containsEventWithName___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 name];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

- (void)setComplete:(BOOL)complete
{
  if (self->_complete != complete)
  {
    self->_complete = complete;
    [(TVPPlaybackReportingEventCollection *)self _closeOpenEvents];
  }
}

- (NSDictionary)rtcReportingEventDict
{
  v170 = *MEMORY[0x277D85DE8];
  v153 = objc_alloc_init(MEMORY[0x277CBEB38]);
  p_cache = TVPPlaybackState.cache;
  v3 = sLogObject_0;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Playback startup events:", buf, 2u);
  }

  v151 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  obj = [(TVPPlaybackReportingEventCollection *)self eventArray];
  v4 = [obj countByEnumeratingWithState:&v161 objects:v169 count:16];
  v5 = 0x277CCA000uLL;
  v6 = 0x2804D5000uLL;
  v7 = 0x2804D5000uLL;
  if (!v4)
  {
    v152 = 0;
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v12 = 0.0;
    v13 = 0.0;
    v155 = 0.0;
    v156 = 0.0;
    v154 = 0.0;
    v14 = 0.0;
    v15 = 0.0;
    v16 = 0.0;
    goto LABEL_103;
  }

  v8 = v4;
  v152 = 0;
  v159 = *v162;
  v147 = *MEMORY[0x277CCA7E8];
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v12 = 0.0;
  v13 = 0.0;
  v155 = 0.0;
  v156 = 0.0;
  v154 = 0.0;
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  do
  {
    v17 = 0;
    v157 = v8;
    do
    {
      if (*v162 != v159)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v161 + 1) + 8 * v17);
      v19 = sReportableEvents;
      name = [v18 name];
      LODWORD(v19) = [v19 containsObject:name];

      if (v19)
      {
        if ([v18 type] == 3)
        {
          name2 = [v18 name];
          if (name2)
          {
            v22 = name2;
            value = [v18 value];

            if (value)
            {
              name3 = [v18 name];
              v25 = [name3 isEqualToString:TVPPlaybackReportingEventError];

              value2 = [v18 value];
              if (!v25)
              {
                goto LABEL_21;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                name5 = value2;
                userInfo = [name5 userInfo];
                v29 = [userInfo objectForKey:v147];

                [(TVPPlaybackReportingEventCollection *)self _setError:name5 inEventDict:v153 errorCodeKey:@"errorCode" errorDomainKey:@"errorDomain"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(TVPPlaybackReportingEventCollection *)self _setError:v29 inEventDict:v153 errorCodeKey:@"underlyingErrorCode" errorDomainKey:@"underlyingErrorDomain"];
                }

                value2 = name5;
                goto LABEL_22;
              }

              goto LABEL_23;
            }
          }
        }

        else if ([v18 type] == 1 || objc_msgSend(v18, "type") == 2)
        {
          name4 = [v18 name];

          if (name4)
          {
            value2 = [*(v5 + 2992) numberWithInteger:{objc_msgSend(v18, "durationMS")}];
LABEL_21:
            name5 = [v18 name];
            [(NSDictionary *)v153 setObject:value2 forKey:name5];
LABEL_22:

LABEL_23:
            v8 = v157;
          }
        }
      }

      if ([v18 type])
      {
        if ([v18 type] == 3)
        {
          name6 = [v18 name];
          v32 = [name6 isEqualToString:TVPPlaybackReportingEventFPSServerProcessingTimeMS];

          if (v32)
          {
            value3 = [v18 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              integerValue = [value3 integerValue];
              v35 = p_cache[133];
              if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
              {
                v149 = v16;
                v36 = v15;
                v37 = v12;
                v38 = v14;
                v39 = v13;
                v40 = v10;
                v41 = v11;
                v42 = v9;
                v43 = integerValue / 1000.0;
                v44 = v35;
                name7 = [v18 name];
                *buf = 138412546;
                v166 = name7;
                v167 = 2048;
                v168 = v43;
                v9 = v42;
                v11 = v41;
                v10 = v40;
                v13 = v39;
                v14 = v38;
                v12 = v37;
                v15 = v36;
                v16 = v149;
                _os_log_impl(&dword_26CEDD000, v44, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
              }
            }
          }

          else
          {
            v96 = p_cache[133];
            if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
            {
              v97 = v96;
              name8 = [v18 name];
              [v18 value];
              v99 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
              *buf = 138412546;
              v166 = name8;
              v167 = 2112;
              v168 = v99;
              _os_log_impl(&dword_26CEDD000, v97, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
            }
          }

          name9 = [v18 name];
          v101 = [name9 isEqualToString:*(v6 + 2760)];

          if (v101)
          {
            value4 = [v18 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [value4 doubleValue];
              v11 = v103;
            }
          }

          name10 = [v18 name];
          v105 = [name10 isEqualToString:TVPPlaybackReportingEventFPSServerProcessingTimeMS];

          if (v105)
          {
            value5 = [v18 value];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              integerValue2 = [value5 integerValue];
              v108 = v152;
              if (integerValue2 > v152)
              {
                v108 = integerValue2;
              }

              v152 = v108;
            }
          }

          goto LABEL_96;
        }

        if ([v18 type] != 1 && objc_msgSend(v18, "type") != 2)
        {
          goto LABEL_96;
        }

        if ([v18 type] == 2)
        {
          v49 = p_cache[133];
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            name11 = [v18 name];
            *buf = 138412290;
            v166 = name11;
            _os_log_impl(&dword_26CEDD000, v49, OS_LOG_TYPE_DEFAULT, "Aborted event: %@", buf, 0xCu);
          }
        }

        v51 = p_cache[133];
        if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
        {
          name12 = [v18 name];
          objc_msgSend_duration(v18);
          *buf = 138412546;
          v166 = name12;
          v167 = 2048;
          v168 = v53;
          _os_log_impl(&dword_26CEDD000, v51, OS_LOG_TYPE_DEFAULT, "%@Duration: %f", buf, 0x16u);
        }

        name13 = [v18 name];
        v55 = [name13 isEqualToString:TVPPlaybackReportingEventFPSCertFetch];

        if (v55)
        {
          objc_msgSend_duration(v18);
          v57 = v154;
          if (v56 >= v154)
          {
            v57 = v56;
          }

          v154 = v57;
        }

        name14 = [v18 name];
        v59 = [name14 isEqualToString:TVPPlaybackReportingEventFPSOverallFetch];

        if (v59)
        {
          [v151 addObject:v18];
          [v18 timestamp];
          objc_msgSend_duration(v18);
          if (v60 >= v14)
          {
            v14 = v60;
          }
        }

        name15 = [v18 name];
        v62 = [name15 isEqualToString:TVPPlaybackReportingEventFPSRequestDataGeneration];

        if (v62)
        {
          objc_msgSend_duration(v18);
          v64 = v155;
          if (v63 >= v155)
          {
            v64 = v63;
          }

          v155 = v64;
        }

        name16 = [v18 name];
        v66 = [name16 isEqualToString:TVPPlaybackReportingEventFPSServerKeyFetch];

        if (v66)
        {
          objc_msgSend_duration(v18);
          v68 = v156;
          if (v67 >= v156)
          {
            v68 = v67;
          }

          v156 = v68;
        }

        name17 = [v18 name];
        v70 = [name17 isEqualToString:TVPPlaybackReportingEventLinearTokenFetch];

        if (v70)
        {
          objc_msgSend_duration(v18);
          if (v71 >= v13)
          {
            v13 = v71;
          }
        }

        name18 = [v18 name];
        v73 = [name18 isEqualToString:TVPPlaybackReportingEventFetchLocationAuthorizationStatus];

        if (v73)
        {
          objc_msgSend_duration(v18);
          if (v74 >= v9)
          {
            v9 = v74;
          }
        }

        name19 = [v18 name];
        v76 = [name19 isEqualToString:TVPPlaybackReportingEventTotalStartupSequence];

        if (v76)
        {
          objc_msgSend_duration(v18);
          objc_msgSend_duration(v18);
          v16 = v16 + v77;
        }

        name20 = [v18 name];
        v79 = [name20 isEqualToString:*(v7 + 2792)];

        if (v79)
        {
          objc_msgSend_duration(v18);
          v15 = v15 + v80;
        }

        name21 = [v18 name];
        if (([name21 isEqualToString:TVPPlaybackReportingEventRestrictionsPasscodeDisplay] & 1) == 0)
        {
          v82 = v7;
          v83 = v6;
          v84 = p_cache;
          v85 = v5;
          name22 = [v18 name];
          if (([name22 isEqualToString:TVPPlaybackReportingEventResumeMenuDisplay] & 1) == 0)
          {
            name23 = [v18 name];
            if (([name23 isEqualToString:TVPPlaybackReportingEventPressPlayToStartDisplay] & 1) == 0)
            {
              name24 = [v18 name];
              if (([name24 isEqualToString:TVPPlaybackReportingEventBumperVideoDisplay] & 1) == 0)
              {
                name25 = [v18 name];
                if (([name25 isEqualToString:TVPPlaybackReportingEventBumperTextDisplay] & 1) == 0)
                {
                  startEvent = [v18 startEvent];
                  isUIInteraction = [startEvent isUIInteraction];

                  v5 = v85;
                  p_cache = v84;
                  v6 = v83;
                  v7 = v82;
                  v8 = v157;
                  if ((isUIInteraction & 1) == 0)
                  {
LABEL_78:
                    name26 = [v18 name];
                    v92 = [name26 isEqualToString:TVPPlaybackReportingEventRentalCheckout];

                    if (v92)
                    {
                      objc_msgSend_duration(v18);
                      [v18 timestamp];
                    }

                    goto LABEL_96;
                  }

LABEL_77:
                  objc_msgSend_duration(v18);
                  v16 = v16 - v89;
                  objc_msgSend_duration(v18);
                  v15 = v15 - v90;
                  goto LABEL_78;
                }
              }
            }

            v8 = v157;
          }

          v5 = v85;
          p_cache = v84;
          v6 = v83;
          v7 = v82;
        }

        goto LABEL_77;
      }

      name27 = [v18 name];
      v47 = [name27 isEqualToString:TVPPlaybackReportingEventFPSOverallFetch];

      if (v47)
      {
        [v18 timestamp];
        if (v12 == 0.0)
        {
          v12 = v48;
        }

        else if (v48 < v12)
        {
          v12 = v48;
        }
      }

      else
      {
        name28 = [v18 name];
        v94 = [name28 isEqualToString:TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp];

        if (v94)
        {
          [v18 timestamp];
          v10 = v95;
        }
      }

LABEL_96:
      ++v17;
    }

    while (v8 != v17);
    v109 = [obj countByEnumeratingWithState:&v161 objects:v169 count:16];
    v8 = v109;
  }

  while (v109);
LABEL_103:

  [objc_opt_class() _totalTimeSpentDoingFPSFetchesFromEndEvents:v151];
  v160 = v110;
  v111 = [v151 count];
  if (v111)
  {
    v112 = *&v111;
    v113 = p_cache[133];
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = @"fpsFetchCount";
      v167 = 2048;
      v168 = v112;
      _os_log_impl(&dword_26CEDD000, v113, OS_LOG_TYPE_DEFAULT, "%@: %lu", buf, 0x16u);
    }

    v114 = [*(v5 + 2992) numberWithUnsignedInteger:*&v112];
    [(NSDictionary *)v153 setObject:v114 forKey:@"fpsFetchCount"];
  }

  if (v154 > 0.0)
  {
    v115 = p_cache[133];
    if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = @"fpsLongestCertFetchTime";
      v167 = 2048;
      v168 = v154;
      _os_log_impl(&dword_26CEDD000, v115, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v116 = [*(v5 + 2992) numberWithInteger:llround(v154 * 1000.0)];
    [(NSDictionary *)v153 setObject:v116 forKey:@"fpsLongestCertFetchTime"];
  }

  if (v155 > 0.0)
  {
    v117 = p_cache[133];
    if (os_log_type_enabled(v117, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = @"fpsLongestRequestDataGenerationTime";
      v167 = 2048;
      v168 = v155;
      _os_log_impl(&dword_26CEDD000, v117, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v118 = [*(v5 + 2992) numberWithInteger:llround(v155 * 1000.0)];
    [(NSDictionary *)v153 setObject:v118 forKey:@"fpsLongestRequestDataGenerationTime"];
  }

  if (v156 > 0.0)
  {
    v119 = p_cache[133];
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = @"fpsLongestServerFetchAsMeasuredByAppTime";
      v167 = 2048;
      v168 = v156;
      _os_log_impl(&dword_26CEDD000, v119, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v120 = [*(v5 + 2992) numberWithInteger:llround(v156 * 1000.0)];
    [(NSDictionary *)v153 setObject:v120 forKey:@"fpsLongestServerFetchAsMeasuredByAppTime"];
  }

  if (v152 >= 1)
  {
    v121 = p_cache[133];
    if (os_log_type_enabled(v121, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = @"fpsLongestServerProcessingTime";
      v167 = 2048;
      v168 = v152 / 1000.0;
      _os_log_impl(&dword_26CEDD000, v121, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v122 = [*(v5 + 2992) numberWithInteger:v152];
    [(NSDictionary *)v153 setObject:v122 forKey:@"fpsLongestServerProcessingTime"];
  }

  if (v14 > 0.0)
  {
    v123 = p_cache[133];
    if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = @"fpsLongestFetchTime";
      v167 = 2048;
      v168 = v14;
      _os_log_impl(&dword_26CEDD000, v123, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v124 = [*(v5 + 2992) numberWithInteger:llround(v14 * 1000.0)];
    [(NSDictionary *)v153 setObject:v124 forKey:@"fpsLongestFetchTime"];
  }

  if (v13 > 0.0)
  {
    v125 = p_cache[133];
    if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = TVPPlaybackReportingEventLinearTokenFetch;
      v167 = 2048;
      v168 = v13;
      _os_log_impl(&dword_26CEDD000, v125, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v126 = [*(v5 + 2992) numberWithInteger:llround(v13 * 1000.0)];
    [(NSDictionary *)v153 setObject:v126 forKey:TVPPlaybackReportingEventLinearTokenFetch];
  }

  if (v160 > 0.0)
  {
    v127 = p_cache[133];
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = TVPPlaybackReportingEventTotalTimeSpendDoingFPSFetches;
      v167 = 2048;
      v168 = v160;
      _os_log_impl(&dword_26CEDD000, v127, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v128 = [*(v5 + 2992) numberWithInteger:llround(v160 * 1000.0)];
    [(NSDictionary *)v153 setObject:v128 forKey:TVPPlaybackReportingEventTotalTimeSpendDoingFPSFetches];
  }

  if (v16 > 0.0)
  {
    v129 = p_cache[133];
    if (os_log_type_enabled(v129, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction;
      v167 = 2048;
      v168 = v16;
      _os_log_impl(&dword_26CEDD000, v129, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v130 = [*(v5 + 2992) numberWithInteger:llround(v16 * 1000.0)];
    [(NSDictionary *)v153 setObject:v130 forKey:TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction];
  }

  if (v15 > 0.0)
  {
    v131 = p_cache[133];
    if (os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT))
    {
      v132 = *(v7 + 2792);
      *buf = 138412546;
      v166 = v132;
      v167 = 2048;
      v168 = v15;
      _os_log_impl(&dword_26CEDD000, v131, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v133 = [*(v5 + 2992) numberWithInteger:llround(v15 * 1000.0)];
    [(NSDictionary *)v153 setObject:v133 forKey:*(v7 + 2792)];
  }

  if (v10 > 0.0 && v12 > 0.0)
  {
    v134 = v12 - v10;
    v135 = p_cache[133];
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = @"createAVPlayerItemToFirstFPSFetchTime";
      v167 = 2048;
      v168 = v134;
      _os_log_impl(&dword_26CEDD000, v135, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    if (v134 > 0.0)
    {
      v136 = [*(v5 + 2992) numberWithInteger:llround(v134 * 1000.0)];
      [(NSDictionary *)v153 setObject:v136 forKey:@"createAVPlayerItemToFirstFPSFetchTime"];
    }
  }

  if (v11 > 0.0)
  {
    v137 = [*(v5 + 2992) numberWithInteger:llround(v11 * 1000.0)];
    [(NSDictionary *)v153 setObject:v137 forKey:*(v6 + 2760)];
  }

  if (v9 > 0.0)
  {
    v138 = p_cache[133];
    if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v166 = TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus;
      v167 = 2048;
      v168 = v9;
      _os_log_impl(&dword_26CEDD000, v138, OS_LOG_TYPE_DEFAULT, "%@: %f", buf, 0x16u);
    }

    v139 = [*(v5 + 2992) numberWithInteger:llround(v9 * 1000.0)];
    [(NSDictionary *)v153 setObject:v139 forKey:TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus];
  }

  v140 = [*(v5 + 2992) numberWithBool:{-[TVPPlaybackReportingEventCollection isDownloaded](self, "isDownloaded")}];
  [(NSDictionary *)v153 setObject:v140 forKey:@"isDownloaded"];

  v141 = [*(v5 + 2992) numberWithBool:{-[TVPPlaybackReportingEventCollection isGroupActivity](self, "isGroupActivity")}];
  [(NSDictionary *)v153 setObject:v141 forKey:@"isGroupActivity"];

  v142 = [*(v5 + 2992) numberWithBool:{-[TVPPlaybackReportingEventCollection isGroupActivityOriginator](self, "isGroupActivityOriginator")}];
  [(NSDictionary *)v153 setObject:v142 forKey:@"isGroupActivityOriginator"];

  v143 = v153;
  return v153;
}

- (NSDictionary)startupEventsDict
{
  v47[6] = *MEMORY[0x277D85DE8];
  rtcReportingEventDict = [(TVPPlaybackReportingEventCollection *)self rtcReportingEventDict];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v38 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v47[0] = TVPPlaybackReportingEventUserPlayToLoadingInitiation;
  v47[1] = TVPPlaybackReportingEventPrepareForLoading;
  v47[2] = TVPPlaybackReportingEventPrepareForPlaybackInitiation;
  v47[3] = TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp;
  v47[4] = TVPPlaybackReportingEventWaitingForTimeControlStatus;
  v47[5] = TVPPlaybackReportingEventLoadAVAssetKeysTotal;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:6];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  selfCopy = self;
  obj = [(TVPPlaybackReportingEventCollection *)self eventArray];
  v6 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (!v6)
  {
    v9 = 0.0;
    v10 = 0.0;
    goto LABEL_29;
  }

  v7 = v6;
  v8 = *v43;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      v12 = v9;
      if (*v43 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v42 + 1) + 8 * i);
      name = [v13 name];
      if ([v4 containsObject:name])
      {
        type = [v13 type];

        if (type != 1)
        {
          goto LABEL_10;
        }

        name = [v13 name];
        startEvent = [v13 startEvent];
        [startEvent timestamp];
        v18 = v17;

        v19 = [rtcReportingEventDict objectForKey:name];
        [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:name timestamp:v19 durationMS:v3 toDictionary:v18];
      }

LABEL_10:
      name2 = [v13 name];
      v21 = [name2 isEqualToString:TVPPlaybackReportingEventTotalStartupSequence];

      if (v21)
      {
        v22 = TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction;
        v23 = [rtcReportingEventDict objectForKey:v22];
        startEvent2 = [v13 startEvent];
        [startEvent2 timestamp];
        [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:v22 timestamp:v23 durationMS:v3 toDictionary:?];
      }

      name3 = [v13 name];
      v26 = [name3 isEqualToString:TVPPlaybackReportingEventFPSOverallFetch];

      if (v26)
      {
        [v39 addObject:v13];
        [v13 timestamp];
        if (v27 >= v10)
        {
          v28 = v10;
        }

        else
        {
          v28 = v27;
        }

        if (v10 == 0.0)
        {
          v10 = v27;
        }

        else
        {
          v10 = v28;
        }
      }

      name4 = [v13 name];
      v30 = [name4 isEqualToString:TVPPlaybackReportingEventFetchLocationAuthorizationStatus];

      if (v30)
      {
        [v38 addObject:v13];
        [v13 timestamp];
        v9 = v31;
        if (v12 != 0.0 && v31 >= v12)
        {
          v9 = v12;
        }
      }

      else
      {
        v9 = v12;
      }
    }

    v7 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  }

  while (v7);
LABEL_29:

  [objc_opt_class() _totalTimeSpentDoingFPSFetchesFromEndEvents:v39];
  v32 = TVPPlaybackReportingEventTotalTimeSpendDoingFPSFetches;
  v34 = [MEMORY[0x277CCABB0] numberWithInteger:llround(v33 * 1000.0)];
  [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:v32 timestamp:v34 durationMS:v3 toDictionary:v10];

  v35 = TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus;
  v36 = [rtcReportingEventDict objectForKey:TVPPlaybackReportingEventLongestFetchLocationAuthorizationStatus];
  [(TVPPlaybackReportingEventCollection *)selfCopy _addStartupEventWithName:v35 timestamp:v36 durationMS:v3 toDictionary:v9];

  return v3;
}

- (void)_addStartupEventWithName:(id)name timestamp:(double)timestamp durationMS:(id)s toDictionary:(id)dictionary
{
  nameCopy = name;
  dictionaryCopy = dictionary;
  sCopy = s;
  v11 = [[TVPPlaybackStartupEvent alloc] initWithName:nameCopy timestamp:sCopy durationMS:timestamp];

  if (nameCopy)
  {
    [dictionaryCopy setObject:v11 forKey:nameCopy];
  }
}

- (void)_addEventWithName:(id)name type:(int64_t)type identifier:(id)identifier value:(id)value timestamp:(id)timestamp forceAdd:(BOOL)add isUIInteraction:(BOOL)interaction
{
  nameCopy = name;
  identifierCopy = identifier;
  valueCopy = value;
  timestampCopy = timestamp;
  if (add || ![(TVPPlaybackReportingEventCollection *)self complete])
  {
    if ([sFPSIndividualEvents containsObject:nameCopy] && -[TVPPlaybackReportingEventCollection initialFPSRequestsComplete](self, "initialFPSRequestsComplete"))
    {
      v19 = sLogObject_0;
      if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Ignoring FPS event since initial FPS requests are already complete.", v32, 2u);
      }
    }

    else
    {
      v20 = objc_alloc_init(TVPPlaybackReportingEvent);
      if (!identifierCopy)
      {
        identifierCopy = nameCopy;
      }

      [(TVPPlaybackReportingEvent *)v20 setName:nameCopy];
      if (timestampCopy)
      {
        [timestampCopy doubleValue];
      }

      else
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      }

      [(TVPPlaybackReportingEvent *)v20 setTimestamp:?];
      [(TVPPlaybackReportingEvent *)v20 setType:type];
      [(TVPPlaybackReportingEvent *)v20 setValue:valueCopy];
      [(TVPPlaybackReportingEvent *)v20 setIsUIInteraction:interaction];
      eventArray = [(TVPPlaybackReportingEventCollection *)self eventArray];
      [eventArray addObject:v20];

      if (type)
      {
        if (type <= 2)
        {
          openEvents = [(TVPPlaybackReportingEventCollection *)self openEvents];
          v23 = [openEvents objectForKey:identifierCopy];

          [(TVPPlaybackReportingEvent *)v20 setStartEvent:v23];
          openEvents2 = [(TVPPlaybackReportingEventCollection *)self openEvents];
          [openEvents2 removeObjectForKey:identifierCopy];

          if (!v23)
          {
            v25 = sLogObject_0;
            if (os_log_type_enabled(sLogObject_0, OS_LOG_TYPE_ERROR))
            {
              [TVPPlaybackReportingEventCollection _addEventWithName:nameCopy type:v25 identifier:? value:? timestamp:? forceAdd:? isUIInteraction:?];
            }

            eventArray2 = [(TVPPlaybackReportingEventCollection *)self eventArray];
            [eventArray2 removeObject:v20];

            if (![(TVPPlaybackReportingEventCollection *)self containsEventWithName:@"reportingKeysWereOmittedDueToReportingError"])
            {
              v27 = objc_alloc_init(TVPPlaybackReportingEvent);
              [(TVPPlaybackReportingEvent *)v27 setName:@"reportingKeysWereOmittedDueToReportingError"];
              [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
              [(TVPPlaybackReportingEvent *)v27 setTimestamp:?];
              [(TVPPlaybackReportingEvent *)v27 setType:3];
              [(TVPPlaybackReportingEvent *)v27 setValue:MEMORY[0x277CBEC38]];
              eventArray3 = [(TVPPlaybackReportingEventCollection *)self eventArray];
              [eventArray3 addObject:v27];
            }
          }
        }
      }

      else
      {
        openEvents3 = [(TVPPlaybackReportingEventCollection *)self openEvents];
        v30 = [openEvents3 objectForKey:identifierCopy];

        if (!v30)
        {
          openEvents4 = [(TVPPlaybackReportingEventCollection *)self openEvents];
          [openEvents4 setObject:v20 forKey:identifierCopy];
        }
      }
    }
  }
}

- (void)_closeOpenEvents
{
  openEvents = [(TVPPlaybackReportingEventCollection *)self openEvents];
  v4 = [openEvents copy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__TVPPlaybackReportingEventCollection__closeOpenEvents__block_invoke;
  v5[3] = &unk_279D7BAD0;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __55__TVPPlaybackReportingEventCollection__closeOpenEvents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v7 = [a3 name];
  LOBYTE(v6) = 0;
  [v4 _addEventWithName:v7 type:2 identifier:v5 value:0 timestamp:0 forceAdd:1 isUIInteraction:v6];
}

- (void)_setError:(id)error inEventDict:(id)dict errorCodeKey:(id)key errorDomainKey:(id)domainKey
{
  dictCopy = dict;
  domainKeyCopy = domainKey;
  keyCopy = key;
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:code];
  [dictCopy setObject:v14 forKey:keyCopy];

  if (domain)
  {
    [dictCopy setObject:domain forKey:domainKeyCopy];
  }
}

+ (double)_totalTimeSpentDoingFPSFetchesFromEndEvents:(id)events
{
  v38 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = eventsCopy;
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v6)
  {
    v7 = *v34;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v34 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        startEvent = [v9 startEvent];
        v11 = startEvent == 0;

        if (!v11)
        {
          v12 = [TVPTimeRange alloc];
          startEvent2 = [v9 startEvent];
          [startEvent2 timestamp];
          v15 = v14;
          [v9 timestamp];
          v17 = [(TVPTimeRange *)v12 initWithStartTime:v15 endTime:v16];
          [v4 addObject:v17];
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v6);
  }

  [v4 sortUsingComparator:&__block_literal_global_307];
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83__TVPPlaybackReportingEventCollection__totalTimeSpentDoingFPSFetchesFromEndEvents___block_invoke_308;
  v22[3] = &unk_279D7BB18;
  v22[4] = &v27;
  v22[5] = &v23;
  [v4 enumerateObjectsUsingBlock:v22];
  v18 = v28[5];
  if (v18)
  {
    objc_msgSend_duration(v18);
    v20 = v19 + v24[3];
    v24[3] = v20;
  }

  else
  {
    v20 = v24[3];
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);

  return v20;
}

uint64_t __83__TVPPlaybackReportingEventCollection__totalTimeSpentDoingFPSFetchesFromEndEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  objc_msgSend_startTime(a2);
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  objc_msgSend_startTime(v5);
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

void __83__TVPPlaybackReportingEventCollection__totalTimeSpentDoingFPSFetchesFromEndEvents___block_invoke_308(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(*(a1 + 32) + 8);
  v22 = v5;
  if (a3)
  {
    v7 = *(v6 + 40);
    objc_msgSend_startTime(v5);
    if ([v7 containsTime:?])
    {
      v8 = [TVPTimeRange alloc];
      objc_msgSend_startTime(*(*(*(a1 + 32) + 8) + 40));
      v10 = v9;
      [*(*(*(a1 + 32) + 8) + 40) endTime];
      v12 = v11;
      [v22 endTime];
      if (v12 >= v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = v13;
      }

      v15 = [(TVPTimeRange *)v8 initWithStartTime:v10 endTime:v14];
      v16 = *(*(a1 + 32) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      objc_msgSend_duration(*(*(*(a1 + 32) + 8) + 40));
      *(*(*(a1 + 40) + 8) + 24) = v19 + *(*(*(a1 + 40) + 8) + 24);
      v20 = *(*(a1 + 32) + 8);
      v21 = v22;
      v17 = *(v20 + 40);
      *(v20 + 40) = v21;
    }
  }

  else
  {
    v18 = v5;
    v17 = *(v6 + 40);
    *(v6 + 40) = v18;
  }
}

- (void)_addEventWithName:(uint64_t)a1 type:(NSObject *)a2 identifier:value:timestamp:forceAdd:isUIInteraction:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_26CEDD000, a2, OS_LOG_TYPE_ERROR, "Event %@ has no corresponding start event.  Removing from event array", &v2, 0xCu);
}

@end