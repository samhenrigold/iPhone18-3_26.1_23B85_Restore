@interface ATXUserEducationSuggestionExploreFacesServer
- (ATXUserEducationSuggestionExploreFacesServer)initWithConnector:(id)connector;
- (BOOL)shouldNeverShowSuggestionAgain;
- (id)backlightEventSink;
- (id)suggestion;
- (int64_t)gracePeriod;
- (int64_t)maxHour;
- (int64_t)minHour;
- (int64_t)numBacklightOffEventsBeforeDismissSuggestion;
- (int64_t)tryAgainIntervalSeconds;
- (void)backlightEventHandler:(id)handler;
- (void)cancelBacklightEventSubscription;
- (void)scheduleNextTry;
- (void)sendSuggestionWithEventType:(unint64_t)type;
- (void)startUpSubscriberToBacklightBiomeStreamForTheFirstTime;
- (void)startUpSubscriberToBacklightBiomeStreamIfSubscribed;
- (void)tryToSendSuggestion;
@end

@implementation ATXUserEducationSuggestionExploreFacesServer

- (ATXUserEducationSuggestionExploreFacesServer)initWithConnector:(id)connector
{
  v18 = *MEMORY[0x277D85DE8];
  connectorCopy = connector;
  v15.receiver = self;
  v15.super_class = ATXUserEducationSuggestionExploreFacesServer;
  v6 = [(ATXUserEducationSuggestionBaseServer *)&v15 init];
  v7 = v6;
  if (v6)
  {
    v8 = __atxlog_handle_context_user_education_suggestions(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[ATXUserEducationSuggestionExploreFacesServer initWithConnector:]";
      _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    objc_storeStrong(&v7->_connector, connector);
    v9 = objc_alloc(MEMORY[0x277CBEBD0]);
    v10 = [v9 initWithSuiteName:*MEMORY[0x277CEBD00]];
    defaults = v7->_defaults;
    v7->_defaults = v10;

    mEMORY[0x277CEB710] = [MEMORY[0x277CEB710] sharedInstance];
    constants = v7->_constants;
    v7->_constants = mEMORY[0x277CEB710];

    [(ATXUserEducationSuggestionExploreFacesServer *)v7 scheduleNextTry];
    [(ATXUserEducationSuggestionExploreFacesServer *)v7 startUpSubscriberToBacklightBiomeStreamIfSubscribed];
  }

  return v7;
}

- (BOOL)shouldNeverShowSuggestionAgain
{
  v12 = *MEMORY[0x277D85DE8];
  suggestion = [(ATXUserEducationSuggestionExploreFacesServer *)self suggestion];
  suggestionWasAlreadyShown = [suggestion suggestionWasAlreadyShown];

  if (suggestionWasAlreadyShown)
  {
    v6 = __atxlog_handle_context_user_education_suggestions(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[ATXUserEducationSuggestionExploreFacesServer shouldNeverShowSuggestionAgain]";
      v7 = "%s: Will never show suggestion again because it was already shown";
LABEL_7:
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v8 = [(NSUserDefaults *)self->_defaults BOOLForKey:*MEMORY[0x277CEBDB0]];
  if (v8)
  {
    v6 = __atxlog_handle_context_user_education_suggestions(v8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = "[ATXUserEducationSuggestionExploreFacesServer shouldNeverShowSuggestionAgain]";
      v7 = "%s: Will never show suggestion again because user has already seen gallery";
      goto LABEL_7;
    }

LABEL_8:

    LOBYTE(v8) = 1;
  }

  return v8;
}

- (id)suggestion
{
  suggestion = self->_suggestion;
  if (!suggestion)
  {
    initWithRandomUUID = [objc_alloc(MEMORY[0x277CEB940]) initWithRandomUUID];
    v5 = self->_suggestion;
    self->_suggestion = initWithRandomUUID;

    suggestion = self->_suggestion;
  }

  v6 = suggestion;

  return v6;
}

- (void)scheduleNextTry
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) shouldNeverShowSuggestionAgain];
  if (v2)
  {
    v3 = __atxlog_handle_context_user_education_suggestions(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v24 = "[ATXUserEducationSuggestionExploreFacesServer scheduleNextTry]_block_invoke";
      v4 = "%s: Not scheduling attempt to show suggestion because it should never be shown again.";
      v5 = v3;
      v6 = 12;
LABEL_13:
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    }
  }

  else
  {
    v7 = [*(a1 + 32) minHour];
    v8 = [*(a1 + 32) maxHour];
    v9 = v8;
    if (v7 >= v8)
    {
      v3 = __atxlog_handle_context_user_education_suggestions(v8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v24 = "[ATXUserEducationSuggestionExploreFacesServer scheduleNextTry]_block_invoke";
        v25 = 2048;
        v26 = v7;
        v27 = 2048;
        v28 = v9;
        v4 = "%s: Not scheduling attempt to show suggestion because minHour (%ld) >= maxHour (%ld)";
        v5 = v3;
        v6 = 32;
        goto LABEL_13;
      }
    }

    else
    {
      v3 = [MEMORY[0x277CBEA80] currentCalendar];
      v10 = objc_opt_new();
      v11 = -[NSObject dateByAddingUnit:value:toDate:options:](v3, "dateByAddingUnit:value:toDate:options:", 128, [*(a1 + 32) tryAgainIntervalSeconds], v10, 0);
      v12 = [v3 component:32 fromDate:v11];
      if (v12 < v7 || v12 > v9)
      {
        v14 = v12;
        v15 = [v3 dateBySettingHour:v7 minute:0 second:0 ofDate:v11 options:0];

        if (v14 <= v9)
        {
          v11 = v15;
        }

        else
        {
          v11 = [v3 dateByAddingUnit:16 value:1 toDate:v15 options:0];
        }
      }

      [v11 timeIntervalSinceDate:v10];
      v17 = v16;
      v18 = [*(a1 + 32) gracePeriod];
      v19 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_BOOL(v19, *MEMORY[0x277D86380], 1);
      xpc_dictionary_set_BOOL(v19, *MEMORY[0x277D86360], 0);
      xpc_dictionary_set_BOOL(v19, *MEMORY[0x277D86230], 1);
      xpc_dictionary_set_int64(v19, *MEMORY[0x277D86250], v17);
      xpc_dictionary_set_int64(v19, *MEMORY[0x277D86270], v18);
      xpc_dictionary_set_string(v19, *MEMORY[0x277D86340], *MEMORY[0x277D86350]);
      v21 = __atxlog_handle_context_user_education_suggestions(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v24 = "[ATXUserEducationSuggestionExploreFacesServer scheduleNextTry]_block_invoke";
        v25 = 2048;
        v26 = v17;
        v27 = 2048;
        v28 = v18;
        v29 = 2114;
        v30 = v11;
        _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "%s: Registering XPC activity with delay: %llds and gracePeriod: %llds. Expecting the next attempt to send the suggestion to occur at %{public}@", buf, 0x2Au);
      }

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke_29;
      handler[3] = &unk_278598500;
      handler[4] = *(a1 + 32);
      xpc_activity_register("com.apple.duetexpertd.ATXUserEducationSuggestionExploreFacesServer", v19, handler);
    }
  }
}

uint64_t __63__ATXUserEducationSuggestionExploreFacesServer_scheduleNextTry__block_invoke_29(uint64_t a1, xpc_activity_t activity)
{
  xpc_activity_set_state(activity, 5);
  v3 = *(a1 + 32);

  return [v3 tryToSendSuggestion];
}

- (void)tryToSendSuggestion
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_user_education_suggestions([*(a1 + 32) scheduleNextTry]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Attempting to send suggestion", buf, 0xCu);
  }

  if (![*(a1 + 32) shouldNeverShowSuggestionAgain])
  {
    v4 = [MEMORY[0x277CBEA80] currentCalendar];
    v5 = objc_opt_new();
    v6 = [v4 component:32 fromDate:v5];
    v7 = [*(a1 + 32) minHour];
    if (v6 < v7 || (v7 = [*(a1 + 32) maxHour], v6 > v7))
    {
      v8 = __atxlog_handle_context_user_education_suggestions(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [*(a1 + 32) minHour];
        v10 = [*(a1 + 32) maxHour];
        *buf = 136315906;
        *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
        *&buf[12] = 2048;
        *&buf[14] = v6;
        *&buf[22] = 2048;
        v66 = *&v9;
        v67 = 2048;
        v68 = v10;
        _os_log_impl(&dword_2263AA000, v8, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion because the current hour, %ld, is not between %ld to %ld.", buf, 0x2Au);
      }

      goto LABEL_42;
    }

    [*(*(a1 + 32) + 40) doubleForKey:*MEMORY[0x277CEBD40]];
    v8 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v11];
    v12 = [MEMORY[0x277CBEAA8] now];
    [v12 timeIntervalSinceDate:v8];
    v14 = v13;

    if (v14 < 172800.0)
    {
      v16 = __atxlog_handle_context_user_education_suggestions(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
        *&buf[12] = 2114;
        *&buf[14] = v8;
        *&buf[22] = 2048;
        v66 = v14;
        _os_log_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion since user likely upgraded less than 48 hours ago. Will be eligbile after 48 hours. Approximate date of last upgrade was %{public}@ (%f seconds ago)", buf, 0x20u);
      }

      goto LABEL_42;
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v66) = 1;
    v58 = 0;
    v59 = &v58;
    v60 = 0x2020000000;
    v61 = 0;
    v17 = BiomeLibrary();
    v18 = [v17 UserFocus];
    v19 = [v18 ComputedMode];
    v20 = [v19 atx_publisherWithStartTime:0 endTime:0 maxEvents:&unk_283A55820 lastN:&unk_283A55820 reversed:0];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33;
    v57[3] = &unk_278597540;
    v57[4] = &v58;
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35;
    v56[3] = &unk_278599858;
    v56[4] = &v58;
    v56[5] = buf;
    v21 = [v20 sinkWithCompletion:v57 receiveInput:v56];

    if (*(v59 + 24) == 1)
    {
      v23 = __atxlog_handle_context_user_education_suggestions(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v31 = v23;
        __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_2(v23, v24, v25, v26, v27, v28, v29, v30);
LABEL_20:
        v23 = v31;
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (*(*&buf[8] + 24) == 1)
    {
      v23 = __atxlog_handle_context_user_education_suggestions(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v31 = v23;
        __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_1(v23, v32, v33, v34, v35, v36, v37, v38);
        goto LABEL_20;
      }

LABEL_41:

      _Block_object_dispose(&v58, 8);
      _Block_object_dispose(buf, 8);
LABEL_42:

      goto LABEL_43;
    }

    v39 = +[ATXPosterDescriptorCache sharedInstance];
    v51 = [v39 descriptors];

    if (!v51)
    {
      v41 = __atxlog_handle_context_user_education_suggestions(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *v63 = 136315138;
        v64 = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
        _os_log_impl(&dword_2263AA000, v41, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion. Unable to get all descriptors from ATXPosterDescriptorCache.", v63, 0xCu);
      }

      goto LABEL_40;
    }

    v40 = [v51 objectForKeyedSubscript:@"com.apple.PhotosUIPrivate.PhotosPosterProvider"];
    v50 = v40;
    if (v40)
    {
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v41 = v40;
      v42 = [v41 countByEnumeratingWithState:&v52 objects:v62 count:16];
      if (v42)
      {
        v43 = *v53;
        while (2)
        {
          for (i = 0; i != v42; ++i)
          {
            if (*v53 != v43)
            {
              objc_enumerationMutation(v41);
            }

            v45 = [*(*(&v52 + 1) + 8 * i) galleryOptions];
            v46 = [v45 isHero];

            if ((v46 & 1) == 0)
            {

              [*(a1 + 32) sendSuggestionWithEventType:0];
              goto LABEL_40;
            }
          }

          v42 = [v41 countByEnumeratingWithState:&v52 objects:v62 count:16];
          if (v42)
          {
            continue;
          }

          break;
        }
      }

      v48 = __atxlog_handle_context_user_education_suggestions(v47);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_39;
      }

      *v63 = 136315138;
      v64 = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
      v49 = "%s: Not sending suggestion. Found 0 non-hero row ATXPosterDescriptors, possibly indicating that photos hasn't finished donating their posters to us.";
    }

    else
    {
      v48 = __atxlog_handle_context_user_education_suggestions(0);
      if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
LABEL_39:

        v41 = v50;
LABEL_40:

        v23 = v51;
        goto LABEL_41;
      }

      *v63 = 136315138;
      v64 = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
      v49 = "%s: Not sending suggestion. Unable to get list of photos descriptors from ATXPosterDescriptorCache.";
    }

    _os_log_impl(&dword_2263AA000, v48, OS_LOG_TYPE_DEFAULT, v49, v63, 0xCu);
    goto LABEL_39;
  }

  xpc_activity_unregister("com.apple.duetexpertd.ATXUserEducationSuggestionExploreFacesServer");
  v4 = __atxlog_handle_context_user_education_suggestions(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
    _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: Not sending suggestion because we should never show it again. See logs above. Unregistered all future XPC activities to try and show the suggestion again.", buf, 0xCu);
  }

LABEL_43:
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 state];
  if (v4)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v5 = __atxlog_handle_context_user_education_suggestions(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33_cold_1(v3);
    }
  }
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];

  if (v4)
  {
    v6 = [v3 eventBody];
    *(*(*(a1 + 40) + 8) + 24) = [v6 starting];
  }

  else
  {
    v7 = __atxlog_handle_context_user_education_suggestions(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (void)sendSuggestionWithEventType:(unint64_t)type
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc(MEMORY[0x277CEB938]);
  suggestion = [(ATXUserEducationSuggestionExploreFacesServer *)self suggestion];
  v7 = [v5 initWithUserEducationSuggestion:suggestion userEducationSuggestionEventType:type];

  v9 = __atxlog_handle_context_user_education_suggestions(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[ATXUserEducationSuggestionExploreFacesServer sendSuggestionWithEventType:]";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_2263AA000, v9, OS_LOG_TYPE_DEFAULT, "%s: Sending suggestion event: %{public}@", &v11, 0x16u);
  }

  remoteObjectProxy = [(ATXUserEducationSuggestionConnector *)self->_connector remoteObjectProxy];
  [remoteObjectProxy didReceiveUserEducationSuggestionEvent:v7];
}

- (void)startUpSubscriberToBacklightBiomeStreamForTheFirstTime
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = [*(a1 + 32) isSubscribedForBacklightEvents];
  if (v2)
  {
    v3 = __atxlog_handle_context_user_education_suggestions(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_2(v3);
    }
  }

  else
  {
    v4 = *v1;
    if (*(*v1 + 7) || v4[6])
    {
      v5 = __atxlog_handle_context_user_education_suggestions(v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_1(v1, 56, v5);
      }
    }

    else
    {
      v6 = v4[5];
      v7 = [MEMORY[0x277CBEAA8] now];
      [v7 timeIntervalSinceReferenceDate];
      [v6 setDouble:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_TimestampFirstSubscribedToBackLightStream" forKey:?];

      [*v1 setIsSubscribedForBacklightEvents:1];
      v8 = *v1;

      [v8 startUpSubscriberToBacklightBiomeStreamIfSubscribed];
    }
  }
}

- (void)startUpSubscriberToBacklightBiomeStreamIfSubscribed
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __99__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamIfSubscribed__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __99__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamIfSubscribed__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) isSubscribedForBacklightEvents];
  if (v2)
  {
    v3 = [*(a1 + 32) suggestion];
    v4 = [v3 suggestionWasAlreadyDismissed];

    if (v4)
    {
      v6 = __atxlog_handle_context_user_education_suggestions(v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamIfSubscribed]_block_invoke";
        _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_DEFAULT, "%s: Suggestion has already been dismissed, no need to start the backlight subscriber.", &v9, 0xCu);
      }

      [*(a1 + 32) setIsSubscribedForBacklightEvents:0];
    }

    else
    {
      v8 = [*(a1 + 32) backlightEventSink];
    }
  }

  else
  {
    v7 = __atxlog_handle_context_user_education_suggestions(v2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamIfSubscribed]_block_invoke";
      _os_log_impl(&dword_2263AA000, v7, OS_LOG_TYPE_DEFAULT, "%s: Not subscribed to the backlight stream so don't set it up.", &v9, 0xCu);
    }
  }
}

- (id)backlightEventSink
{
  v23 = *MEMORY[0x277D85DE8];
  backlightEventSink = self->_backlightEventSink;
  if (backlightEventSink)
  {
    v3 = backlightEventSink;
  }

  else
  {
    v5 = __atxlog_handle_context_user_education_suggestions(self);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventSink]";
      _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Setting up the backlight subscriber", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v6 = objc_alloc(MEMORY[0x277CF1918]);
    serialQueue = [(ATXUserEducationSuggestionBaseServer *)self serialQueue];
    v8 = [v6 initWithIdentifier:@"ATXUserEducationSuggestionExploreFacesServer.Backlight" targetQueue:serialQueue];
    backlightEventScheduler = self->_backlightEventScheduler;
    self->_backlightEventScheduler = v8;

    v10 = BiomeLibrary();
    device = [v10 Device];
    screenLocked = [device ScreenLocked];
    atx_DSLPublisher = [screenLocked atx_DSLPublisher];
    v14 = [atx_DSLPublisher filterWithKeyPath:@"eventBody.starting" value:MEMORY[0x277CBEC28]];
    v15 = [v14 subscribeOn:self->_backlightEventScheduler];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_49;
    v19[3] = &unk_2785977D8;
    objc_copyWeak(&v20, buf);
    v16 = [v15 sinkWithCompletion:&__block_literal_global_54 receiveInput:v19];
    v17 = self->_backlightEventSink;
    self->_backlightEventSink = v16;

    v3 = self->_backlightEventSink;
    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }

  return v3;
}

void __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = [v2 state];
  v4 = __atxlog_handle_context_user_education_suggestions(v3);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_cold_1(v2);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventSink]_block_invoke";
    _os_log_impl(&dword_2263AA000, v5, OS_LOG_TYPE_DEFAULT, "%s: Done listening to backlight events", &v6, 0xCu);
  }
}

void __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained backlightEventHandler:v3];
}

- (void)backlightEventHandler:(id)handler
{
  *&v37[13] = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  isSubscribedForBacklightEvents = [(ATXUserEducationSuggestionExploreFacesServer *)self isSubscribedForBacklightEvents];
  if (isSubscribedForBacklightEvents)
  {
    eventBody = [handlerCopy eventBody];
    v7 = eventBody;
    if (eventBody)
    {
      hasStarting = [eventBody hasStarting];
      if (hasStarting)
      {
        [(NSUserDefaults *)self->_defaults doubleForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_TimestampFirstSubscribedToBackLightStream"];
        v10 = v9;
        timestamp = [handlerCopy timestamp];
        if (v12 >= v10)
        {
          v28 = MEMORY[0x277CBEAA8];
          [handlerCopy timestamp];
          v13 = [v28 dateWithTimeIntervalSinceReferenceDate:?];
          v29 = __atxlog_handle_context_user_education_suggestions(v13);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v34 = 136315650;
            v35 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
            v36 = 1024;
            *v37 = [v7 starting];
            v37[2] = 2114;
            *&v37[3] = v13;
            _os_log_impl(&dword_2263AA000, v29, OS_LOG_TYPE_DEFAULT, "%s: Backlight on: %{BOOL}d Date: %{public}@", &v34, 0x1Cu);
          }

          v30 = [(NSUserDefaults *)self->_defaults integerForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_BacklightOffCount"]+ 1;
          [(NSUserDefaults *)self->_defaults setInteger:v30 forKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_BacklightOffCount"];
          numBacklightOffEventsBeforeDismissSuggestion = [(ATXUserEducationSuggestionExploreFacesServer *)self numBacklightOffEventsBeforeDismissSuggestion];
          v32 = numBacklightOffEventsBeforeDismissSuggestion - v30;
          if (numBacklightOffEventsBeforeDismissSuggestion <= v30)
          {
            [(ATXUserEducationSuggestionExploreFacesServer *)self cancelBacklightEventSubscription];
            [(ATXUserEducationSuggestionExploreFacesServer *)self setIsSubscribedForBacklightEvents:0];
            [(ATXUserEducationSuggestionExploreFacesServer *)self sendSuggestionWithEventType:1];
          }

          else
          {
            v33 = __atxlog_handle_context_user_education_suggestions(numBacklightOffEventsBeforeDismissSuggestion);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
            {
              v34 = 136315394;
              v35 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
              v36 = 2048;
              *v37 = v32;
              _os_log_impl(&dword_2263AA000, v33, OS_LOG_TYPE_DEFAULT, "%s: %ld more backlight off events required before dismissing the suggestion.", &v34, 0x16u);
            }
          }
        }

        else
        {
          v13 = __atxlog_handle_context_user_education_suggestions(timestamp);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            [ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:v13];
          }
        }
      }

      else
      {
        v13 = __atxlog_handle_context_user_education_suggestions(hasStarting);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [(ATXUserEducationSuggestionExploreFacesServer *)v13 backlightEventHandler:v21, v22, v23, v24, v25, v26, v27];
        }
      }
    }

    else
    {
      v13 = __atxlog_handle_context_user_education_suggestions(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(ATXUserEducationSuggestionExploreFacesServer *)v13 backlightEventHandler:v14, v15, v16, v17, v18, v19, v20];
      }
    }
  }

  else
  {
    v7 = __atxlog_handle_context_user_education_suggestions(isSubscribedForBacklightEvents);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:v7];
    }
  }
}

- (void)cancelBacklightEventSubscription
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __80__ATXUserEducationSuggestionExploreFacesServer_cancelBacklightEventSubscription__block_invoke;
  v2[3] = &unk_278596BB8;
  v2[4] = self;
  [(ATXUserEducationSuggestionBaseServer *)self performBlockOnInternalSerialQueue:v2];
}

void __80__ATXUserEducationSuggestionExploreFacesServer_cancelBacklightEventSubscription__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = __atxlog_handle_context_user_education_suggestions(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "[ATXUserEducationSuggestionExploreFacesServer cancelBacklightEventSubscription]_block_invoke";
    _os_log_impl(&dword_2263AA000, v2, OS_LOG_TYPE_DEFAULT, "%s: Cancelling backlight biome subscription", &v4, 0xCu);
  }

  v3 = [*(a1 + 32) backlightEventSink];
  [v3 cancel];
}

- (int64_t)minHour
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_minHour"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_minHour];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)maxHour
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_maxHour"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_maxHour];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)tryAgainIntervalSeconds
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_tryAgainIntervalSeconds"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_tryAgainIntervalSeconds];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)gracePeriod
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_gracePeriod"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_gracePeriod];
  }

  v6 = integerValue;

  return v6;
}

- (int64_t)numBacklightOffEventsBeforeDismissSuggestion
{
  v3 = [(NSUserDefaults *)self->_defaults objectForKey:@"DiscoverySuggestions.ATXUserEducationSuggestionExploreFacesServer_numBacklightOffEventsBeforeDismissSuggestion"];
  v4 = v3;
  if (v3)
  {
    integerValue = [v3 integerValue];
  }

  else
  {
    integerValue = [(ATXNotificationManagementMAConstants *)self->_constants ATXUserEducationSuggestionExploreFacesServer_numBacklightOffEventsBeforeDismissSuggestion];
  }

  v6 = integerValue;

  return v6;
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Not sending suggestion because user is in a mode.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_cold_2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Not sending suggestion because there was an error while fetching the mode. See logs above.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_33_cold_1(void *a1)
{
  v1 = [a1 error];
  *v8 = 136315394;
  *&v8[4] = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
  *&v8[12] = 2112;
  *&v8[14] = v1;
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%s: error fetching latest mode change event from biome %@", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

void __67__ATXUserEducationSuggestionExploreFacesServer_tryToSendSuggestion__block_invoke_35_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXUserEducationSuggestionExploreFacesServer tryToSendSuggestion]_block_invoke";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: Missing eventBody on biome event. Unable to determine if user is in a mode.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + a2);
  v4 = *(*a1 + 48);
  v5 = 136315650;
  v6 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamForTheFirstTime]_block_invoke";
  v7 = 2112;
  v8 = v3;
  v9 = 2112;
  v10 = v4;
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%s: Trying to start up the backlight subscriber for the first time, but found that the internal biome objects have already been allocated and initialized. This shouldn't happen. Returning early. %@ %@", &v5, 0x20u);
}

void __102__ATXUserEducationSuggestionExploreFacesServer_startUpSubscriberToBacklightBiomeStreamForTheFirstTime__block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXUserEducationSuggestionExploreFacesServer startUpSubscriberToBacklightBiomeStreamForTheFirstTime]_block_invoke";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%s: Trying to start up the backlight subscriber for the first time, but found that it's already subscribed. This shouldn't happen. Returning early.", &v1, 0xCu);
}

void __66__ATXUserEducationSuggestionExploreFacesServer_backlightEventSink__block_invoke_cold_1(void *a1)
{
  v1 = [a1 error];
  *v8 = 136315394;
  *&v8[4] = "[ATXUserEducationSuggestionExploreFacesServer backlightEventSink]_block_invoke";
  *&v8[12] = 2114;
  *&v8[14] = v1;
  OUTLINED_FUNCTION_1_0(&dword_2263AA000, v2, v3, "%s: Error listening to backlight events: %{public}@", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

- (void)backlightEventHandler:(os_log_t)log .cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
  _os_log_fault_impl(&dword_2263AA000, log, OS_LOG_TYPE_FAULT, "%s: Not responding to backlight event. Handler called even though we're no longer subscribed to the biome stream.", &v1, 0xCu);
}

- (void)backlightEventHandler:(uint64_t)a3 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
}

- (void)backlightEventHandler:(os_log_t)log .cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
  _os_log_debug_impl(&dword_2263AA000, log, OS_LOG_TYPE_DEBUG, "%s: Ignoring backlight event that happened before the time that we first subscribed to the biome stream.", &v1, 0xCu);
}

- (void)backlightEventHandler:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[ATXUserEducationSuggestionExploreFacesServer backlightEventHandler:]";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%s: eventBody missing from event. Returning early.", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end