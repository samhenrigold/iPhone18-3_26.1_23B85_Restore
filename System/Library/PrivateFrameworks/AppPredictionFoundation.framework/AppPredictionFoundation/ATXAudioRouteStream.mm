@interface ATXAudioRouteStream
+ (int)atxAudioRouteTypeFromBMAudioRouteType:(int)type;
- (id)_publisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse;
- (void)_enumerateAudioOutputEventsConnected:(BOOL)connected startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9;
@end

@implementation ATXAudioRouteStream

- (id)_publisherWithStartDate:(id)date endDate:(id)endDate limit:(unint64_t)limit shouldReverse:(BOOL)reverse
{
  reverseCopy = reverse;
  if (reverse)
  {
    dateCopy = endDate;
  }

  else
  {
    dateCopy = date;
  }

  if (reverse)
  {
    endDateCopy2 = date;
  }

  else
  {
    endDateCopy2 = endDate;
  }

  v12 = endDateCopy2;
  v13 = dateCopy;
  endDateCopy3 = endDate;
  dateCopy3 = date;
  v16 = BiomeLibrary();
  audio = [v16 Audio];
  route = [audio Route];
  v19 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:v13 endDate:v12 maxEvents:limit lastN:limit reversed:reverseCopy];

  v20 = [route publisherWithUseCase:@"ProactiveAppPrediction" options:v19];

  return v20;
}

+ (int)atxAudioRouteTypeFromBMAudioRouteType:(int)type
{
  if (type == 2)
  {
    return 2;
  }

  else
  {
    return type == 1;
  }
}

- (void)_enumerateAudioOutputEventsConnected:(BOOL)connected startDate:(id)date endDate:(id)endDate filterBlock:(id)block limit:(unint64_t)limit ascending:(BOOL)ascending block:(id)a9
{
  ascendingCopy = ascending;
  blockCopy = block;
  v16 = a9;
  endDateCopy = endDate;
  dateCopy = date;
  v19 = objc_opt_new();
  v20 = !ascendingCopy;
  v21 = [(ATXAudioRouteStream *)self _publisherWithStartDate:dateCopy endDate:endDateCopy limit:limit shouldReverse:!ascendingCopy];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2;
  v26[3] = &unk_2785904D0;
  v31 = v20;
  connectedCopy = connected;
  v27 = v19;
  selfCopy = self;
  v29 = blockCopy;
  v30 = v16;
  v22 = v16;
  v23 = blockCopy;
  v24 = v19;
  v25 = [v21 sinkWithCompletion:&__block_literal_global_8 shouldContinue:v26];
}

void __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 state];
  if (v3)
  {
    v4 = __atxlog_handle_default(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(v2, v4);
    }
  }
}

uint64_t __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 identifier];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  v7 = [v3 eventBody];
  v8 = [v7 portName];
  if (!v8)
  {

    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v3 eventBody];
  v11 = [v10 portType];

  if (v11)
  {
    v12 = [v3 eventBody];
    v13 = [v12 routeChangeReason];

    if ((v13 - 3) >= 0xFFFFFFFE)
    {
      v14 = *(a1 + 64);
      v15 = *(a1 + 65);
      if (v15 != v14 && v13 == 1)
      {
        v16 = *(a1 + 32);
        v4 = [v3 eventBody];
        v6 = [v4 identifier];
        [v16 setObject:v3 forKeyedSubscript:v6];
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }

      v18 = *(a1 + 32);
      v19 = [v3 eventBody];
      v20 = [v19 identifier];
      if (v15 != v14 || v13 == 1)
      {
        v21 = [v18 objectForKeyedSubscript:v20];

        if (v3 && v21)
        {
          v23 = objc_alloc(MEMORY[0x277CBEAA8]);
          v53 = v21;
          [v21 timestamp];
          v24 = [v23 initWithTimeIntervalSinceReferenceDate:?];
          v25 = objc_alloc(MEMORY[0x277CBEAA8]);
          [v3 timestamp];
          v26 = [v25 initWithTimeIntervalSinceReferenceDate:?];
          v27 = [ATXAudioRouteEvent alloc];
          if (*(a1 + 64))
          {
            v28 = v26;
          }

          else
          {
            v28 = v24;
          }

          v51 = v26;
          v52 = v24;
          if (*(a1 + 64))
          {
            v29 = v24;
          }

          else
          {
            v29 = v26;
          }

          v47 = v29;
          v48 = v28;
          v46 = *(a1 + 65);
          v50 = [v3 eventBody];
          v45 = [v50 identifier];
          v49 = [v3 eventBody];
          v30 = [v49 portType];
          v31 = [v3 eventBody];
          v32 = [v31 portName];
          v33 = MEMORY[0x277CCABB0];
          v34 = [v3 eventBody];
          v35 = [v33 numberWithInt:{objc_msgSend(v34, "routeChangeReason")}];
          v36 = objc_opt_class();
          v37 = [v3 eventBody];
          LODWORD(v44) = [v36 atxAudioRouteTypeFromBMAudioRouteType:{objc_msgSend(v37, "type")}];
          v38 = [(ATXAudioRouteEvent *)v27 initWithStartTime:v48 endTime:v47 connected:v46 identifier:v45 portType:v30 portName:v32 routeChangeReason:v35 type:v44];

          v39 = *(a1 + 32);
          v40 = [v3 eventBody];
          v41 = [v40 identifier];
          [v39 setObject:0 forKeyedSubscript:v41];

          v42 = *(a1 + 48);
          if (!v42 || (*(v42 + 16))(v42, v38))
          {
            (*(*(a1 + 56) + 16))();
          }

          v21 = v53;
        }

        else
        {
          v43 = __atxlog_handle_default(v22);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_1(v21, v3, v43);
          }
        }
      }

      else
      {
        [v18 setObject:v3 forKeyedSubscript:v20];
      }
    }
  }

LABEL_11:

  return 1;
}

void __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 error];
  v4 = 136315394;
  v5 = "[ATXAudioRouteStream _enumerateAudioOutputEventsConnected:startDate:endDate:filterBlock:limit:ascending:block:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_226368000, a2, OS_LOG_TYPE_ERROR, "%s: error fetching latest Audio.Route event from biome %@", &v4, 0x16u);
}

void __112__ATXAudioRouteStream__enumerateAudioOutputEventsConnected_startDate_endDate_filterBlock_limit_ascending_block___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_226368000, log, OS_LOG_TYPE_ERROR, "Skipping event: %@ %@", &v3, 0x16u);
}

@end