@interface AFMyriadMetrics
+ (id)sharedInstance;
- (BOOL)isMyriadMetricsMessage:(id)message;
- (double)getSessionId:(MyriadMetricsDataV1 *)id;
- (id)_createEndAnalyticContexFromIntermediateContext:(id)context forVersion:(unsigned int)version sessionId:(double)id;
- (id)_getRequestType:(unint64_t)type;
- (id)getCDASessionId:(MyriadMetricsDataV1 *)id;
- (int)_getCDASchemaCDATriggerType:(unint64_t)type;
- (unsigned)getVersion:(MyriadMetricsDataV1 *)version;
- (void)_decisionMadeContext:(MyriadMetricsDataV1 *)context additionalContext:(id)additionalContext instrumentation:(id)instrumentation completion:(id)completion;
- (void)_submitMyriadMetrics:(MyriadMetricsDataV1 *)metrics additionalContext:(id)context toStream:(id)stream instrumentation:(id)instrumentation completion:(id)completion;
- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)stream payload:(id)payload additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion;
- (void)submitMyriadMetricsToAnalyticsStream:(id)stream context:(id)context forEvent:(int64_t)event contextNoCopy:(BOOL)copy;
@end

@implementation AFMyriadMetrics

- (void)submitMyriadMetricsToAnalyticsStream:(id)stream context:(id)context forEvent:(int64_t)event contextNoCopy:(BOOL)copy
{
  copyCopy = copy;
  streamCopy = stream;
  contextCopy = context;
  v10 = +[AFFeatureFlags isMyriadSelfMetricsEnabled];
  if (streamCopy && !v10)
  {
    [streamCopy logEventWithType:event context:contextCopy contextNoCopy:copyCopy];
  }
}

- (void)submitAccessoryMyriadMetricsToAnalyticsStream:(id)stream payload:(id)payload additionalContext:(id)context instrumentation:(id)instrumentation completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  payloadCopy = payload;
  contextCopy = context;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  if (streamCopy)
  {
    v17 = [[AFMyriadAccessoryMetricMessage alloc] initWithMetricData:payloadCopy];
    if (v17)
    {
      v18 = v17;
      v19 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
      {
        v20 = v19;
        *v24 = 136315906;
        *&v24[4] = "[AFMyriadMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        *&v24[12] = 1024;
        *&v24[14] = [v18 version];
        v25 = 2048;
        v26 = streamCopy;
        v27 = 2112;
        *&v28 = contextCopy;
        _os_log_impl(&dword_1912FE000, v20, OS_LOG_TYPE_INFO, "%s version = %u analytics stream = %p additional = [%@]", v24, 0x26u);
      }

      objc_msgSend_messageAsStruct(v18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v29);
      [(AFMyriadMetrics *)self _submitMyriadMetrics:v24 additionalContext:contextCopy toStream:streamCopy instrumentation:instrumentationCopy completion:completionCopy];
    }

    else
    {
      v22 = [AFError errorWithCode:2202];
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v22, 0);
      }

      v23 = AFSiriLogContextConnection;
      if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
      {
        *v24 = 136315138;
        *&v24[4] = "[AFMyriadMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
        _os_log_error_impl(&dword_1912FE000, v23, OS_LOG_TYPE_ERROR, "%s Invalid analytics data received", v24, 0xCu);
      }

      v18 = 0;
    }
  }

  else
  {
    v21 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
    {
      *v24 = 136315138;
      *&v24[4] = "[AFMyriadMetrics submitAccessoryMyriadMetricsToAnalyticsStream:payload:additionalContext:instrumentation:completion:]";
      _os_log_error_impl(&dword_1912FE000, v21, OS_LOG_TYPE_ERROR, "%s Invalid analytics stream.", v24, 0xCu);
    }

    v18 = [AFError errorWithCode:2202];
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v18, 0);
    }
  }
}

- (void)_decisionMadeContext:(MyriadMetricsDataV1 *)context additionalContext:(id)additionalContext instrumentation:(id)instrumentation completion:(id)completion
{
  v77[3] = *MEMORY[0x1E69E9840];
  additionalContextCopy = additionalContext;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  if (completionCopy)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (context->version)
    {
      selfCopy = self;
      v67 = completionCopy;
      v70 = instrumentationCopy;
      v71 = additionalContextCopy;
      electionParticipantCount = context->electionParticipantCount;
      electionParticipantCount = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", electionParticipantCount];
      v69 = v13;
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

      v68 = v18;
      v72 = electionParticipantCount;
      v73 = v16;
      if (electionParticipantCount)
      {
        electionParticipantDeviceType = context->electionParticipantDeviceType;
        v20 = v18;
        do
        {
          v21 = objc_alloc(MEMORY[0x1E695DF90]);
          v76[0] = @"dc";
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*electionParticipantDeviceType];
          v77[0] = v22;
          v76[1] = @"pt";
          v23 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:electionParticipantDeviceType[50]];
          v77[1] = v23;
          v76[2] = @"goodness";
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(electionParticipantDeviceType - 50)];
          v77[2] = v24;
          v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];
          v26 = [v21 initWithDictionary:v25];

          v17 = v73;
          [v73 addObject:v26];

          ++electionParticipantDeviceType;
          --v20;
        }

        while (v20);
      }

      v13 = v69;
      [v69 setObject:v17 forKey:@"goodness_scores"];
      if (context->previousDecision)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      [v69 setObject:v27 forKey:@"previous_decision"];
      v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", context->previousDecisionTime];
      [v69 setObject:v28 forKey:@"previous_decision_time"];

      if (context->decision)
      {
        v29 = @"YES";
      }

      else
      {
        v29 = @"NO";
      }

      [v69 setObject:v29 forKey:@"decision"];
      if (v72)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", context->electionParticipantGoodnessScore[0]];
        [v69 setObject:v30 forKey:@"winner_goodness"];

        v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", context->electionParticipantDeviceType[0]];
        [v69 setObject:v31 forKey:@"winner_device_class"];

        v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", context->electionParticipantProductType[0]];
        [v69 setObject:v32 forKey:@"winner_product_type"];
      }

      if (context->homepodInvolved)
      {
        v33 = @"YES";
      }

      else
      {
        v33 = @"NO";
      }

      [v69 setObject:v33 forKey:@"homepod_involved"];
      instrumentationCopy = v70;
      if (v72 && !context->decision)
      {
        if (context->electionParticipantGoodnessScore[0] == 255)
        {
          v34 = @"YES";
        }

        else
        {
          v34 = @"NO";
        }

        [v69 setObject:v34 forKey:@"winner_sent_suppresssion"];
      }

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:context->version];
      [v69 setObject:v35 forKey:@"version"];

      if (context->lateToElection)
      {
        v36 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:?];
        [v69 setObject:v36 forKey:@"late_for_device_arbitration"];

        v37 = [MEMORY[0x1E696AD98] numberWithDouble:context->advInterval];
        [v69 setObject:v37 forKey:@"device_arbitration_delay"];
      }

      if (additionalContextCopy)
      {
        v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(additionalContextCopy, "rawGoodnessScore")];
        [v69 setObject:v38 forKey:@"raw_goodness_score"];

        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", objc_msgSend(additionalContextCopy, "goodnessScore")];
        [v69 setObject:v39 forKey:@"my_goodness"];

        v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(additionalContextCopy, "deviceClass")];
        [v69 setObject:v40 forKey:@"my_device_class"];

        v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(additionalContextCopy, "deviceProductType")];
        [v69 setObject:v41 forKey:@"my_product_type"];
      }

      v42 = +[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (v70 && v42)
      {
        v43 = objc_alloc_init(MEMORY[0x1E69CE940]);
        v44 = context->electionParticipantDeviceType;
        [v43 setDeviceClass:context->electionParticipantDeviceType[0]];
        [v43 setProductType:context->electionParticipantProductType[0]];
        v65 = v43;
        [v43 setGoodnessScore:context->electionParticipantGoodnessScore[0]];
        v45 = objc_alloc_init(MEMORY[0x1E69CE940]);
        [v45 setDeviceClass:{objc_msgSend(additionalContextCopy, "deviceClass")}];
        [v45 setProductType:{objc_msgSend(additionalContextCopy, "deviceProductType")}];
        v64 = v45;
        [v45 setGoodnessScore:{objc_msgSend(additionalContextCopy, "goodnessScore")}];
        if (v72)
        {
          v46 = context->electionParticipantDeviceType;
          v47 = v68;
          do
          {
            v48 = objc_alloc(MEMORY[0x1E695DF90]);
            v74[0] = @"dc";
            v49 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*v46];
            v75[0] = v49;
            v74[1] = @"pt";
            v50 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:v46[50]];
            v75[1] = v50;
            v74[2] = @"goodness";
            v51 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:*(v46 - 50)];
            v75[2] = v51;
            v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:3];
            v53 = [v48 initWithDictionary:v52];

            [v73 addObject:v53];
            ++v46;
            --v47;
          }

          while (v47);
        }

        v54 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v72];
        v55 = v68;
        if (v72)
        {
          do
          {
            v56 = objc_alloc_init(MEMORY[0x1E69CE940]);
            [v56 setDeviceClass:*v44];
            [v56 setProductType:v44[50]];
            [v56 setGoodnessScore:*(v44 - 50)];
            [v54 addObject:v56];

            ++v44;
            --v55;
          }

          while (v55);
        }

        if (context->decision)
        {
          v57 = 1;
        }

        else
        {
          v57 = 2;
        }

        if (context->previousDecision)
        {
          v58 = 1;
        }

        else
        {
          v58 = 2;
        }

        v59 = mach_absolute_time();
        instrumentationCopy = v70;
        if (_AFMachAbsoluteTimeRate_onceToken != -1)
        {
          dispatch_once(&_AFMachAbsoluteTimeRate_onceToken, &__block_literal_global_1033);
        }

        additionalContextCopy = v71;
        v13 = v69;
        v60 = (((*&_AFMachAbsoluteTimeRate_rate * v59) - context->previousDecisionTime) / 1000000.0);
        rawGoodnessScore = [v71 rawGoodnessScore];
        v62 = [(AFMyriadMetrics *)selfCopy getCDASessionId:context];
        LODWORD(v63) = rawGoodnessScore;
        [v70 logCDAElectionDecisionMade:11 withDecision:v57 withPreviousDecision:v58 timeSincePreviousDecision:v60 withWinningDevice:v65 withThisDevice:v64 withParticipants:v54 withRawScore:v63 withBoost:0 withCdaId:v62 currentRequestId:0 withTimestamp:mach_absolute_time()];

        v17 = v73;
      }

      completionCopy = v67;
    }

    completionCopy[2](completionCopy, v13);
  }
}

- (void)_submitMyriadMetrics:(MyriadMetricsDataV1 *)metrics additionalContext:(id)context toStream:(id)stream instrumentation:(id)instrumentation completion:(id)completion
{
  v110[2] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  streamCopy = stream;
  instrumentationCopy = instrumentation;
  completionCopy = completion;
  v89 = 0;
  v90 = &v89;
  v91 = 0x3032000000;
  v92 = __Block_byref_object_copy__23453;
  v93 = __Block_byref_object_dispose__23454;
  v94 = 0;
  if (!metrics)
  {
    v16 = 2202;
    goto LABEL_13;
  }

  eventType = metrics->eventType;
  v16 = 2201;
  if (eventType <= 2)
  {
    if (!metrics->eventType)
    {
      requestType = metrics->requestType;
      state = metrics->state;
      v109[0] = @"state";
      state = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", state];
      v109[1] = @"trigger";
      v110[0] = state;
      v46 = [(AFMyriadMetrics *)self _getRequestType:requestType];
      v110[1] = v46;
      v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v110 forKeys:v109 count:2];
      v48 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v49 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v47 forVersion:v48 sessionId:?];
      v50 = v90[5];
      v90[5] = v49;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2011 context:v90[5]];
      }

      v51 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v51) = 1;
      }

      if ((v51 & 1) == 0)
      {
        v52 = [(AFMyriadMetrics *)self _getCDASchemaCDATriggerType:requestType];
        v53 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDADeviceStateActivityStartedOrChanged:(state + 1) withTrigger:v52 withCdaId:v53 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 1)
    {
      v70 = metrics->state;
      v107 = @"state";
      v71 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v70];
      v108 = v71;
      v72 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v108 forKeys:&v107 count:1];
      v73 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v74 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v72 forVersion:v73 sessionId:?];
      v75 = v90[5];
      v90[5] = v74;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2012 context:v90[5]];
      }

      v76 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v76) = 1;
      }

      if ((v76 & 1) == 0)
      {
        v77 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDADeviceStateActivityEnded:(v70 + 1) withCdaId:v77 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 2)
    {
      v29 = metrics->state;
      advDelay = metrics->advDelay;
      advInterval = metrics->advInterval;
      v105[0] = @"state";
      v82 = v29;
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v29];
      v106[0] = v32;
      v105[1] = @"adv-delay";
      v33 = [MEMORY[0x1E696AD98] numberWithDouble:advDelay];
      v106[1] = v33;
      v105[2] = @"adv-interval";
      v34 = [MEMORY[0x1E696AD98] numberWithDouble:advInterval];
      v106[2] = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v106 forKeys:v105 count:3];
      v36 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v37 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v35 forVersion:v36 sessionId:?];
      v38 = v90[5];
      v90[5] = v37;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2002 context:v90[5]];
      }

      v39 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v39) = 1;
      }

      if ((v39 & 1) == 0)
      {
        v40 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        v41 = mach_absolute_time();
        *&v42 = advDelay;
        *&v43 = advInterval;
        [instrumentationCopy logCDAElectionAdvertisingStarting:(v82 + 1) withDelay:v40 withInterval:v41 withCdaId:v42 withTimestamp:v43];
      }

      goto LABEL_50;
    }

    goto LABEL_13;
  }

  if (metrics->eventType <= 4u)
  {
    if (eventType == 3)
    {
      v54 = metrics->state;
      v103 = @"state";
      v55 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v54];
      v104 = v55;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v104 forKeys:&v103 count:1];
      v57 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v58 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v56 forVersion:v57 sessionId:?];
      v59 = v90[5];
      v90[5] = v58;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2003 context:v90[5]];
      }

      v60 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v60) = 1;
      }

      if ((v60 & 1) == 0)
      {
        v61 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDAElectionAdvertisingStarted:(v54 + 1) withCdaId:v61 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

    if (eventType == 4)
    {
      v17 = metrics->state;
      v101[0] = @"state";
      v81 = v17;
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v17];
      v101[1] = @"unixTime";
      v102[0] = v18;
      v19 = MEMORY[0x1E696AD98];
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      v21 = [v19 numberWithDouble:?];
      v102[1] = v21;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:2];
      v23 = [(AFMyriadMetrics *)self getVersion:metrics];
      [(AFMyriadMetrics *)self getSessionId:metrics];
      v24 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v22 forVersion:v23 sessionId:?];
      v25 = v90[5];
      v90[5] = v24;

      if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
      {
        [streamCopy logEventWithType:2010 context:v90[5]];
      }

      v26 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
      if (!instrumentationCopy)
      {
        LOBYTE(v26) = 1;
      }

      if ((v26 & 1) == 0)
      {
        v27 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
        [instrumentationCopy logCDAElectionTimerEnded:(v81 + 1) withCdaId:v27 withTimestamp:mach_absolute_time()];
      }

      goto LABEL_50;
    }

LABEL_13:
    v28 = [AFError errorWithCode:v16];
    goto LABEL_51;
  }

  if (eventType == 5)
  {
    v62 = metrics->state;
    v99 = @"state";
    v63 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v62];
    v100 = v63;
    v64 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
    v65 = [(AFMyriadMetrics *)self getVersion:metrics];
    [(AFMyriadMetrics *)self getSessionId:metrics];
    v66 = [(AFMyriadMetrics *)self _createEndAnalyticContexFromIntermediateContext:v64 forVersion:v65 sessionId:?];
    v67 = v90[5];
    v90[5] = v66;

    if (!+[AFFeatureFlags isMyriadSelfMetricsEnabled])
    {
      [streamCopy logEventWithType:2005 context:v90[5]];
    }

    v68 = !+[AFFeatureFlags isMyriadSelfMetricsEnabled];
    if (!instrumentationCopy)
    {
      LOBYTE(v68) = 1;
    }

    if ((v68 & 1) == 0)
    {
      v69 = [(AFMyriadMetrics *)self getCDASessionId:metrics];
      [instrumentationCopy logCDAElectionAdvertisingEnded:(v62 + 1) withCdaId:v69 withTimestamp:mach_absolute_time()];
    }

    goto LABEL_50;
  }

  if (eventType != 6)
  {
    goto LABEL_13;
  }

  v85[0] = MEMORY[0x1E69E9820];
  v85[1] = 3221225472;
  v85[2] = __94__AFMyriadMetrics__submitMyriadMetrics_additionalContext_toStream_instrumentation_completion___block_invoke;
  v85[3] = &unk_1E73458A8;
  v87 = &v89;
  metricsCopy = metrics;
  v85[4] = self;
  v86 = streamCopy;
  [(AFMyriadMetrics *)self _decisionMadeContext:metrics additionalContext:contextCopy instrumentation:instrumentationCopy completion:v85];

LABEL_50:
  v28 = 0;
LABEL_51:
  v78 = AFSiriLogContextMyriad;
  if (os_log_type_enabled(AFSiriLogContextMyriad, OS_LOG_TYPE_DEBUG))
  {
    v80 = v90[5];
    *buf = 136315394;
    v96 = "[AFMyriadMetrics _submitMyriadMetrics:additionalContext:toStream:instrumentation:completion:]";
    v97 = 2112;
    v98 = v80;
    _os_log_debug_impl(&dword_1912FE000, v78, OS_LOG_TYPE_DEBUG, "%s Myriad endpoint metrics context: %@", buf, 0x16u);
    if (!completionCopy)
    {
      goto LABEL_54;
    }

    goto LABEL_53;
  }

  if (completionCopy)
  {
LABEL_53:
    v79 = [v90[5] copy];
    completionCopy[2](completionCopy, v28, v79);
  }

LABEL_54:

  _Block_object_dispose(&v89, 8);
}

uint64_t __94__AFMyriadMetrics__submitMyriadMetrics_additionalContext_toStream_instrumentation_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v5 = a2;
  v6 = [v3 getVersion:v4];
  [*(a1 + 32) getSessionId:*(a1 + 56)];
  v7 = [v3 _createEndAnalyticContexFromIntermediateContext:v5 forVersion:v6 sessionId:?];

  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  result = +[AFFeatureFlags isMyriadSelfMetricsEnabled];
  if ((result & 1) == 0)
  {
    v11 = *(a1 + 40);
    v12 = *(*(*(a1 + 48) + 8) + 40);

    return [v11 logEventWithType:2006 context:v12];
  }

  return result;
}

- (id)_createEndAnalyticContexFromIntermediateContext:(id)context forVersion:(unsigned int)version sessionId:(double)id
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

- (id)getCDASessionId:(MyriadMetricsDataV1 *)id
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
    v4 = [messageCopy objectForKeyedSubscript:@"accessoryMetrics"];
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

- (double)getSessionId:(MyriadMetricsDataV1 *)id
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

- (unsigned)getVersion:(MyriadMetricsDataV1 *)version
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
    return dword_1914CFE28[type - 2];
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
    return off_1E73458C8[type - 2];
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23503 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_23503, &__block_literal_global_23504);
  }

  v3 = sharedInstance_metrics;

  return v3;
}

void __33__AFMyriadMetrics_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AFMyriadMetrics);
  v1 = sharedInstance_metrics;
  sharedInstance_metrics = v0;
}

@end