@interface SCDAMetrics
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)isMyriadMetricsMessage:(id)message;
- (double)getSessionId:(MyriadMetricsDataV2 *)id;
- (id)_createEndAnalyticContextFromIntermediateContext:(id)context forVersion:(unsigned int)version sessionId:(double)id;
- (id)_getElectionParticipantIdWithLowBits:(unint64_t)bits withHighBits:(unint64_t)highBits;
- (id)_getRequestType:(unint64_t)type;
- (id)getCDASessionId:(MyriadMetricsDataV2 *)id;
- (int)_getCDASchemaCDATriggerType:(unint64_t)type;
- (unsigned)getVersion:(MyriadMetricsDataV2 *)version;
- (void)_decisionMadeContext:(MyriadMetricsDataV2 *)context additionalContext:(id)additionalContext instrumentation:(id)instrumentation completion:(id)completion;
- (void)_submitMyriadMetrics:(MyriadMetricsDataV2 *)metrics additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion;
- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)stream payload:(id)payload additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion;
@end

@implementation SCDAMetrics

- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)stream payload:(id)payload additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  payloadCopy = payload;
  contextCopy = context;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  if (streamCopy)
  {
    v17 = [[SCDAAccessoryMetricMessage alloc] initWithMetricData:payloadCopy];
    if (v17)
    {
      v18 = v17;
      v19 = SCDALogContextAnalytics;
      if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        *v24 = 136315906;
        *&v24[4] = "[SCDAMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        *&v24[12] = 1024;
        *&v24[14] = [v18 version];
        v25 = 2048;
        v26 = streamCopy;
        v27 = 2112;
        *&v28 = contextCopy;
        _os_log_impl(&dword_1DA758000, v20, OS_LOG_TYPE_INFO, "%s version = %u analytics stream = %p additional = [%@]", v24, 0x26u);
      }

      v29 = 0u;
      objc_msgSend_messageAsStruct(v18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
      [(SCDAMetrics *)self _submitMyriadMetrics:v24 additionalContext:contextCopy instrumentation:instrumentationCopy completion:completionCopy];
    }

    else
    {
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:2202 userInfo:0];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v22, 0);
      }

      v23 = SCDALogContextAnalytics;
      if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315138;
        *&v24[4] = "[SCDAMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        _os_log_error_impl(&dword_1DA758000, v23, OS_LOG_TYPE_ERROR, "%s Invalid analytics data received", v24, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v21 = SCDALogContextAnalytics;
    if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315138;
      *&v24[4] = "[SCDAMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
      _os_log_error_impl(&dword_1DA758000, v21, OS_LOG_TYPE_ERROR, "%s Invalid analytics stream.", v24, 0xCu);
    }

    v18 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:2202 userInfo:0];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18, 0);
    }
  }
}

- (void)_decisionMadeContext:(MyriadMetricsDataV2 *)context additionalContext:(id)additionalContext instrumentation:(id)instrumentation completion:(id)completion
{
  v100[3] = *MEMORY[0x1E69E9840];
  additionalContextCopy = additionalContext;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (context->version)
    {
      v89 = completionCopy;
      v91 = instrumentationCopy;
      v92 = additionalContextCopy;
      electionParticipantCount = context->electionParticipantCount;
      electionParticipantCount = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", electionParticipantCount];
      v90 = v13;
      [v13 setObject:electionParticipantCount forKey:@"device_count"];

      v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:electionParticipantCount];
      v17 = v16;
      if (electionParticipantCount >= 0x32)
      {
        v18 = 50;
      }

      else
      {
        v18 = electionParticipantCount;
      }

      selfCopy = self;
      v95 = v18;
      v96 = v16;
      v93 = electionParticipantCount;
      if (electionParticipantCount)
      {
        v20 = 0;
        do
        {
          v21 = objc_alloc(MEMORY[0x1E695DF90]);
          v99[0] = @"dc";
          v22 = &context->version + v20;
          [MEMORY[0x1E696AD98] numberWithUnsignedChar:context->electionParticipantDeviceType[v20]];
          contextCopy = context;
          v25 = v24 = selfCopy;
          v100[0] = v25;
          v99[1] = @"pt";
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v22[175]];
          v100[1] = v26;
          v99[2] = @"goodness";
          v27 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v22[75]];
          v100[2] = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:3];
          v29 = [v21 initWithDictionary:v28];

          selfCopy = v24;
          context = contextCopy;
          v30 = [(SCDAMetrics *)selfCopy getElectionParticipantId:contextCopy forParticipant:v20];
          uUIDString = [v30 UUIDString];
          [v29 setValue:uUIDString forKey:@"id"];

          v17 = v96;
          [v96 addObject:v29];

          ++v20;
        }

        while (v95 != v20);
      }

      v32 = selfCopy;
      v13 = v90;
      [v90 setObject:v17 forKey:@"goodness_scores"];
      if (context->previousDecision)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      [v90 setObject:v33 forKey:@"previous_decision"];
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", context->previousDecisionTime];
      [v90 setObject:v34 forKey:@"previous_decision_time"];

      if (context->decision)
      {
        v35 = @"YES";
      }

      else
      {
        v35 = @"NO";
      }

      [v90 setObject:v35 forKey:@"decision"];
      if (v93)
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", context->electionParticipantGoodnessScore[0]];
        [v90 setObject:v36 forKey:@"winner_goodness"];

        v37 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", context->electionParticipantDeviceType[0]];
        [v90 setObject:v37 forKey:@"winner_device_class"];

        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", context->electionParticipantProductType[0]];
        [v90 setObject:v38 forKey:@"winner_product_type"];

        v39 = [(SCDAMetrics *)selfCopy getElectionParticipantId:context forParticipant:0];
        uUIDString2 = [v39 UUIDString];
        [v90 setValue:uUIDString2 forKey:@"winner_election_participant_id"];
      }

      if (context->homepodInvolved)
      {
        v41 = @"YES";
      }

      else
      {
        v41 = @"NO";
      }

      [v90 setObject:v41 forKey:@"homepod_involved"];
      additionalContextCopy = v92;
      if (v93 && !context->decision)
      {
        if (context->electionParticipantGoodnessScore[0] == 255)
        {
          v42 = @"YES";
        }

        else
        {
          v42 = @"NO";
        }

        [v90 setObject:v42 forKey:@"winner_sent_suppression"];
      }

      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:context->version];
      [v90 setObject:v43 forKey:@"version"];

      if (context->lateToElection)
      {
        v44 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
        [v90 setObject:v44 forKey:@"late_for_device_arbitration"];

        v45 = [MEMORY[0x1E696AD98] numberWithDouble:context->advInterval];
        [v90 setObject:v45 forKey:@"device_arbitration_delay"];
      }

      contextCopy2 = context;
      instrumentationCopy = v91;
      if (v92)
      {
        v46 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(v92, "rawGoodnessScore")];
        [v90 setObject:v46 forKey:@"raw_goodness_score"];

        v47 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(v92, "goodnessScore")];
        [v90 setObject:v47 forKey:@"my_goodness"];

        v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v92, "deviceClass")];
        [v90 setObject:v48 forKey:@"my_device_class"];

        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(v92, "deviceProductType")];
        [v90 setObject:v49 forKey:@"my_product_type"];
      }

      if (v91)
      {
        v50 = objc_alloc_init(MEMORY[0x1E69CE940]);
        [v50 setDeviceClass:context->electionParticipantDeviceType[0]];
        [v50 setProductType:context->electionParticipantProductType[0]];
        [v50 setGoodnessScore:context->electionParticipantGoodnessScore[0]];
        v51 = v32;
        v52 = [(SCDAMetrics *)v32 getElectionParticipantId:context forParticipant:0];
        v53 = SCDAToSISchemaUUID(v52);
        v88 = v50;
        [v50 setElectionParticipantId:v53];

        v54 = objc_alloc_init(MEMORY[0x1E69CE940]);
        [v54 setDeviceClass:{objc_msgSend(v92, "deviceClass")}];
        [v54 setProductType:{objc_msgSend(v92, "deviceProductType")}];
        contextCopy4 = context;
        [v54 setGoodnessScore:{objc_msgSend(v92, "goodnessScore")}];
        v56 = [(SCDAMetrics *)v32 getDeviceElectionParticipantId:context];
        v57 = SCDAToSISchemaUUID(v56);
        [v54 setElectionParticipantId:v57];

        v58 = [(SCDAMetrics *)v32 getDeviceRotatedElectionParticipantId:context];
        v59 = SCDAToSISchemaUUID(v58);
        v87 = v54;
        [v54 setRotatedElectionParticipantId:v59];

        v60 = v95;
        v61 = 0x1E695D000uLL;
        v62 = @"pt";
        if (v93)
        {
          v63 = 0;
          do
          {
            v64 = objc_alloc(*(v61 + 3984));
            v97[0] = @"dc";
            v65 = v51;
            v66 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:contextCopy4->electionParticipantDeviceType[v63]];
            v98[0] = v66;
            v97[1] = v62;
            [MEMORY[0x1E696AD98] numberWithUnsignedChar:contextCopy4->electionParticipantProductType[v63]];
            v68 = v67 = v62;
            v98[1] = v68;
            v97[2] = @"goodness";
            v69 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:contextCopy4->electionParticipantGoodnessScore[v63]];
            v98[2] = v69;
            v70 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v98 forKeys:v97 count:3];
            v71 = [v64 initWithDictionary:v70];

            contextCopy4 = context;
            v51 = v65;

            v72 = [(SCDAMetrics *)v65 getElectionParticipantId:context forParticipant:v63];
            uUIDString3 = [v72 UUIDString];
            [v71 setValue:uUIDString3 forKey:@"id"];

            v62 = v67;
            v60 = v95;
            [v96 addObject:v71];

            v61 = 0x1E695D000;
            ++v63;
          }

          while (v95 != v63);
        }

        v74 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v93];
        v75 = v51;
        if (v93)
        {
          v76 = 0;
          do
          {
            v77 = objc_alloc_init(MEMORY[0x1E69CE940]);
            [v77 setDeviceClass:contextCopy4->electionParticipantDeviceType[v76]];
            [v77 setProductType:contextCopy4->electionParticipantProductType[v76]];
            [v77 setGoodnessScore:contextCopy4->electionParticipantGoodnessScore[v76]];
            v78 = [(SCDAMetrics *)v75 getElectionParticipantId:contextCopy4 forParticipant:v76];
            v79 = SCDAToSISchemaUUID(v78);
            [v77 setElectionParticipantId:v79];

            [v74 addObject:v77];
            ++v76;
          }

          while (v60 != v76);
        }

        if (contextCopy4->decision)
        {
          v80 = 1;
        }

        else
        {
          v80 = 2;
        }

        if (contextCopy4->previousDecision)
        {
          v81 = 1;
        }

        else
        {
          v81 = 2;
        }

        v82 = mach_absolute_time();
        if (_SCDAMachAbsoluteTimeRate_onceToken != -1)
        {
          dispatch_once(&_SCDAMachAbsoluteTimeRate_onceToken, &__block_literal_global_42);
        }

        additionalContextCopy = v92;
        v83 = (((*&_SCDAMachAbsoluteTimeRate_rate * v82) - contextCopy2->previousDecisionTime) / 1000000.0);
        rawGoodnessScore = [v92 rawGoodnessScore];
        v85 = [(SCDAMetrics *)v75 getCDASessionId:contextCopy2];
        LODWORD(v86) = rawGoodnessScore;
        instrumentationCopy = v91;
        [v91 logCDAElectionDecisionMade:11 withDecision:v80 withPreviousDecision:v81 timeSincePreviousDecision:v83 withWinningDevice:v88 withThisDevice:v87 withParticipants:v74 withRawScore:v86 withBoost:0 withCdaId:v85 currentRequestId:0 withTimestamp:mach_absolute_time()];

        v13 = v90;
      }

      completionCopy = v89;
    }

    completionCopy[2](completionCopy, v13);
  }
}

- (void)_submitMyriadMetrics:(MyriadMetricsDataV2 *)metrics additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion
{
  v99[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__1114;
  v82 = __Block_byref_object_dispose__1115;
  v83 = 0;
  if (!metrics)
  {
    v14 = 2202;
    goto LABEL_9;
  }

  eventType = metrics->eventType;
  v14 = 2201;
  if (eventType <= 2)
  {
    if (!metrics->eventType)
    {
      requestType = metrics->requestType;
      state = metrics->state;
      v98[0] = @"state";
      v76 = state;
      state = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, state];
      v98[1] = @"trigger";
      v99[0] = state;
      v43 = [(SCDAMetrics *)self _getRequestType:requestType];
      v99[1] = v43;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v99 forKeys:v98 count:2];
      v45 = [(SCDAMetrics *)self getVersion:metrics];
      [(SCDAMetrics *)self getSessionId:metrics];
      v46 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v44 forVersion:v45 sessionId:?];
      v47 = v79[5];
      v79[5] = v46;

      if (instrumentationCopy)
      {
        v48 = [(SCDAMetrics *)self _getCDASchemaCDATriggerType:requestType];
        v49 = [(SCDAMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDADeviceStateActivityStartedOrChanged:(v76 + 1) withTrigger:v48 withCdaId:v49 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

    if (eventType == 1)
    {
      v64 = metrics->state;
      v96 = @"state";
      v65 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v64];
      v97 = v65;
      v66 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v97 forKeys:&v96 count:1];
      v67 = [(SCDAMetrics *)self getVersion:metrics];
      [(SCDAMetrics *)self getSessionId:metrics];
      v68 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v66 forVersion:v67 sessionId:?];
      v69 = v79[5];
      v79[5] = v68;

      if (instrumentationCopy)
      {
        v70 = [(SCDAMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDADeviceStateActivityEnded:(v64 + 1) withCdaId:v70 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

    if (eventType == 2)
    {
      v26 = metrics->state;
      advDelay = metrics->advDelay;
      advInterval = metrics->advInterval;
      v94[0] = @"state";
      v75 = v26;
      v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v26];
      v95[0] = v29;
      v94[1] = @"adv-delay";
      v30 = [MEMORY[0x1E696AD98] numberWithDouble:advDelay];
      v95[1] = v30;
      v94[2] = @"adv-interval";
      v31 = [MEMORY[0x1E696AD98] numberWithDouble:advInterval];
      v95[2] = v31;
      v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v95 forKeys:v94 count:3];
      v33 = [(SCDAMetrics *)self getVersion:metrics];
      [(SCDAMetrics *)self getSessionId:metrics];
      v34 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v32 forVersion:v33 sessionId:?];
      v35 = v79[5];
      v79[5] = v34;

      if (instrumentationCopy)
      {
        v36 = [(SCDAMetrics *)self getCDASessionId:metrics];
        v37 = mach_absolute_time();
        *&v38 = advDelay;
        *&v39 = advInterval;
        [instrumentationCopy logCDAElectionAdvertisingStarting:(v75 + 1) withDelay:v36 withInterval:v37 withVoiceTriggerLatency:v38 withCdaId:v39 withTimestamp:0.0];
      }

      goto LABEL_26;
    }

    goto LABEL_9;
  }

  if (metrics->eventType <= 4u)
  {
    if (eventType == 3)
    {
      v50 = metrics->state;
      v92 = @"state";
      v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v50];
      v93 = v51;
      v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v93 forKeys:&v92 count:1];
      v53 = [(SCDAMetrics *)self getVersion:metrics];
      [(SCDAMetrics *)self getSessionId:metrics];
      v54 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v52 forVersion:v53 sessionId:?];
      v55 = v79[5];
      v79[5] = v54;

      if (instrumentationCopy)
      {
        v56 = [(SCDAMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDAElectionAdvertisingStarted:(v50 + 1) withCdaId:v56 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

    if (eventType == 4)
    {
      v15 = metrics->state;
      v90[0] = @"state";
      v74 = v15;
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v15];
      v90[1] = @"unixTime";
      v91[0] = v16;
      v17 = MEMORY[0x1E696AD98];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v19 = [v17 numberWithDouble:?];
      v91[1] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v91 forKeys:v90 count:2];
      v21 = [(SCDAMetrics *)self getVersion:metrics];
      [(SCDAMetrics *)self getSessionId:metrics];
      v22 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v20 forVersion:v21 sessionId:?];
      v23 = v79[5];
      v79[5] = v22;

      if (instrumentationCopy)
      {
        v24 = [(SCDAMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDAElectionTimerEnded:(v74 + 1) withCdaId:v24 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_26;
    }

LABEL_9:
    v25 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kSCDAErrorDomain" code:v14 userInfo:0];
    goto LABEL_27;
  }

  if (eventType == 5)
  {
    v57 = metrics->state;
    v88 = @"state";
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", 2201, v57];
    v89 = v58;
    v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v89 forKeys:&v88 count:1];
    v60 = [(SCDAMetrics *)self getVersion:metrics];
    [(SCDAMetrics *)self getSessionId:metrics];
    v61 = [(SCDAMetrics *)self _createEndAnalyticContextFromIntermediateContext:v59 forVersion:v60 sessionId:?];
    v62 = v79[5];
    v79[5] = v61;

    if (instrumentationCopy)
    {
      v63 = [(SCDAMetrics *)self getCDASessionId:metrics];
      [instrumentationCopy logCDAElectionAdvertisingEnded:(v57 + 1) withCdaId:v63 withTimestamp:mach_absolute_time()];
    }

    goto LABEL_26;
  }

  if (eventType != 6)
  {
    goto LABEL_9;
  }

  v77[0] = MEMORY[0x1E69E9820];
  v77[1] = 3221225472;
  v77[2] = __81__SCDAMetrics__submitMyriadMetrics_additionalContext_instrumentation_completion___block_invoke;
  v77[3] = &unk_1E85D2EF0;
  v77[4] = self;
  v77[5] = &v78;
  v77[6] = metrics;
  [(SCDAMetrics *)self _decisionMadeContext:metrics additionalContext:contextCopy instrumentation:instrumentationCopy completion:v77];
LABEL_26:
  v25 = 0;
LABEL_27:
  v71 = SCDALogContextAnalytics;
  if (os_log_type_enabled(SCDALogContextAnalytics, OS_LOG_TYPE_DEBUG))
  {
    v73 = v79[5];
    *buf = 136315394;
    v85 = "[SCDAMetrics _submitMyriadMetrics:additionalContext:instrumentation:completion:]";
    v86 = 2112;
    v87 = v73;
    _os_log_debug_impl(&dword_1DA758000, v71, OS_LOG_TYPE_DEBUG, "%s Myriad endpoint metrics context: %@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (completionCopy)
  {
LABEL_29:
    v72 = [v79[5] copy];
    completionCopy[2](completionCopy, v25, v72);
  }

LABEL_30:

  _Block_object_dispose(&v78, 8);
}

void __81__SCDAMetrics__submitMyriadMetrics_additionalContext_instrumentation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = a2;
  v6 = [v3 getVersion:v4];
  [*(a1 + 32) getSessionId:*(a1 + 48)];
  v7 = [v3 _createEndAnalyticContextFromIntermediateContext:v5 forVersion:v6 sessionId:?];

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

- (id)_createEndAnalyticContextFromIntermediateContext:(id)context forVersion:(unsigned int)version sessionId:(double)id
{
  v6 = *&version;
  v7 = MEMORY[0x1E695DF90];
  contextCopy = context;
  v9 = objc_alloc_init(v7);
  [v9 addEntriesFromDictionary:contextCopy];

  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v6];
  [v9 setObject:v10 forKey:@"version"];

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:id];
  [v9 setObject:v11 forKey:@"session_id"];

  return v9;
}

- (id)_getElectionParticipantIdWithLowBits:(unint64_t)bits withHighBits:(unint64_t)highBits
{
  v6[2] = *MEMORY[0x1E69E9840];
  if (highBits | bits)
  {
    v6[0] = veor_s8(vdup_n_s8(highBits >> 2), 0x8101820283038);
    v6[1] = veor_s8(vdup_n_s8(bits >> 2), 0x8101820283038);
    v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)getCDASessionId:(MyriadMetricsDataV2 *)id
{
  v4 = objc_alloc(MEMORY[0x1E696AFB0]);
  v5 = v4;
  if (id)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"00000000-0000-0000-0000-%012u", id->sessionId];
    v7 = [v5 initWithUUIDString:v6];
  }

  else
  {
    v7 = [v4 initWithUUIDString:@"00000000-0000-0000-0000-000000000000"];
  }

  return v7;
}

- (BOOL)isMyriadMetricsMessage:(id)message
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [messageCopy objectForKeyedSubscript:scdaAccessoryMetricsMessageKey];
    if (v4)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (double)getSessionId:(MyriadMetricsDataV2 *)id
{
  if (id)
  {
    return id->sessionId;
  }

  else
  {
    return 0.0;
  }
}

- (unsigned)getVersion:(MyriadMetricsDataV2 *)version
{
  if (version)
  {
    return version->version;
  }

  else
  {
    return 0;
  }
}

- (int)_getCDASchemaCDATriggerType:(unint64_t)type
{
  if (type - 2 > 6)
  {
    return 0;
  }

  else
  {
    return dword_1DA78D2B0[type - 2];
  }
}

- (id)_getRequestType:(unint64_t)type
{
  if (type - 2 > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E85D2F10[type - 2];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, &__block_literal_global_1129);
  }

  v3 = sharedInstance_metrics;

  return v3;
}

uint64_t __29__SCDAMetrics_sharedInstance__block_invoke()
{
  sharedInstance_metrics = objc_alloc_init(SCDAMetrics);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)initialize
{
  if (SCDALogInitIfNeeded_once != -1)
  {
    dispatch_once(&SCDALogInitIfNeeded_once, &__block_literal_global_498);
  }
}

@end