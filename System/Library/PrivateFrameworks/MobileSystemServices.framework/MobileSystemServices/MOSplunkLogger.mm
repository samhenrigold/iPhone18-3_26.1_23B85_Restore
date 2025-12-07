@interface MOSplunkLogger
- (MOSplunkLogger)initWithName:(id)name configurationURL:(id)l splunkTopic:(id)topic version:(id)version allowInvalidCert:(BOOL)cert;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)_onQueue_loadConfiguration;
- (void)logEventNamed:(id)named value:(id)value;
- (void)uploadEventsWithCompletion:(id)completion;
@end

@implementation MOSplunkLogger

- (MOSplunkLogger)initWithName:(id)name configurationURL:(id)l splunkTopic:(id)topic version:(id)version allowInvalidCert:(BOOL)cert
{
  certCopy = cert;
  nameCopy = name;
  lCopy = l;
  topicCopy = topic;
  versionCopy = version;
  v25.receiver = self;
  v25.super_class = MOSplunkLogger;
  v16 = [(MOSplunkLogger *)&v25 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_configurationURL, l);
    objc_storeStrong(&v17->_splunkTopic, topic);
    objc_storeStrong(&v17->_version, version);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(MOSplunkLogger *)v17 setEvents:v18];

    [(MOSplunkLogger *)v17 setAllowInvalidCert:certCopy];
    nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.SplunkLoggerQueue", nameCopy];
    uTF8String = [nameCopy UTF8String];
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(uTF8String, v21);
    [(MOSplunkLogger *)v17 setQueue:v22];

    v23 = v17;
  }

  return v17;
}

- (void)_onQueue_loadConfiguration
{
  queue = [(MOSplunkLogger *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = dispatch_semaphore_create(0);
  ephemeralSessionConfiguration = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
  v6 = [MEMORY[0x277CCAD30] sessionWithConfiguration:ephemeralSessionConfiguration delegate:self delegateQueue:0];
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __44__MOSplunkLogger__onQueue_loadConfiguration__block_invoke;
  v18 = &unk_279917168;
  selfCopy = self;
  v20 = v4;
  v7 = v4;
  v8 = _Block_copy(&v15);
  v9 = [(MOSplunkLogger *)self configurationURL:v15];
  v10 = [v6 dataTaskWithURL:v9 completionHandler:v8];

  MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]", @"Loading configuration", v11, v12, v13, v14);
  [v10 resume];
  dispatch_semaphore_wait(v7, 0xFFFFFFFFFFFFFFFFLL);
}

void __44__MOSplunkLogger__onQueue_loadConfiguration__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v9)
  {
    v15 = v9;
    v16 = 0;
LABEL_5:
    MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Unable to load configuration. Error: %@", v11, v12, v13, v14, v15);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_6;
  }

  v50 = 0;
  v16 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v7 options:0 error:&v50];
  v17 = v50;
  if (v17)
  {
    v15 = v17;
    goto LABEL_5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v16;
    v19 = [v16 objectForKeyedSubscript:@"metricsUrl"];
    if (v19)
    {
      v49 = [MEMORY[0x277CBEBC0] URLWithString:v19];
      v29 = [*(a1 + 32) version];
      v30 = [v49 URLByAppendingPathComponent:v29];
      v31 = [*(a1 + 32) splunkTopic];
      v32 = [v30 URLByAppendingPathComponent:v31];
      [*(a1 + 32) setSplunkUploadURL:v32];

      v33 = [*(a1 + 32) splunkUploadURL];
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Splunk upload URL set to %@", v34, v35, v36, v37, v33);
    }

    else
    {
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Could not find metrics URL in configuration", v25, v26, v27, v28);
    }

    v38 = [v16 objectForKeyedSubscript:@"performance"];
    v18 = [v38 objectForKeyedSubscript:@"samplingPercentage"];

    if (v18)
    {
      [*(a1 + 32) setSamplingPercentage:v18];
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Sampling percentage set to %@", v43, v44, v45, v46, v18);
    }

    else
    {
      MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Could not find sampling percentage in configuration", v39, v40, v41, v42, v48);
    }

    v15 = [*(a1 + 32) samplingPercentage];
    if (v15)
    {
      v47 = [*(a1 + 32) splunkUploadURL];

      if (v47)
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [*(a1 + 32) setLastSuccessfulConfigurationLoad:?];
      }

      v15 = 0;
    }

    v20 = v16;
  }

  else
  {
    MOLogWrite(0, 3, "[MOSplunkLogger _onQueue_loadConfiguration]_block_invoke", @"Configuration does not have the expected format", v21, v22, v23, v24);
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v15 = 0;
  }

LABEL_6:
  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)uploadEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = [(MOSplunkLogger *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke;
  block[3] = &unk_279917190;
  block[4] = self;
  dispatch_async(queue, block);

  queue2 = [(MOSplunkLogger *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_2;
  v8[3] = &unk_2799171E0;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue2, v8);
}

void *__45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke(uint64_t a1)
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v3 = v2;
  result = [*(a1 + 32) lastSuccessfulConfigurationLoad];
  if (v3 - v5 > 86400.0)
  {
    v6 = *(a1 + 32);

    return [v6 _onQueue_loadConfiguration];
  }

  return result;
}

void __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_2(uint64_t a1)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v2 = arc4random_uniform(0x64u);
  v3 = [*(a1 + 32) samplingPercentage];
  [v3 floatValue];
  v5 = v4 * 100.0;

  if (v5 >= v2)
  {
    v7 = [MEMORY[0x277CCAD38] ephemeralSessionConfiguration];
    v8 = [MEMORY[0x277CCAD30] sessionWithConfiguration:v7 delegate:*(a1 + 32) delegateQueue:0];
    v9 = objc_alloc_init(MEMORY[0x277CCAB70]);
    v10 = [*(a1 + 32) splunkUploadURL];
    [v9 setURL:v10];

    [v9 setHTTPMethod:@"POST"];
    v34[0] = @"postTime";
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_REALTIME) / 0xF4240];
    v34[1] = @"events";
    v35[0] = v11;
    v12 = [*(a1 + 32) events];
    v35[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];

    v33 = 0;
    v14 = [MEMORY[0x277CCAAA0] dataWithJSONObject:v13 options:0 error:&v33];
    v15 = v33;
    v20 = v15;
    if (!v14 || v15)
    {
      MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_2", @"Failed to serialize Splunk payload: %@", v16, v17, v18, v19, v15);
    }

    else
    {
      [v9 setHTTPBody:v14];
      v21 = dispatch_semaphore_create(0);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_3;
      aBlock[3] = &unk_2799171B8;
      v22 = *(a1 + 40);
      aBlock[4] = *(a1 + 32);
      v31 = v21;
      v32 = v22;
      v23 = v21;
      v24 = _Block_copy(aBlock);
      v25 = [v8 dataTaskWithRequest:v9 completionHandler:v24];
      MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_2", @"Splunk upload start", v26, v27, v28, v29);
      [v25 resume];
      dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    v6 = *(*(a1 + 40) + 16);

    v6();
  }
}

void __45__MOSplunkLogger_uploadEventsWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = a2;
  v7 = a3;
  v8 = a4;
  v13 = v8;
  if (v8)
  {
    MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Error in uploading the events to splunk: %@", v9, v10, v11, v12, v8);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v7;
      if ([v14 statusCode] < 200 || objc_msgSend(v14, "statusCode") > 299)
      {
        v30 = [v14 statusCode];
        MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Splunk upload unexpected status: %d", v25, v26, v27, v28, v30);
      }

      else
      {
        MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Splunk upload successful", v15, v16, v17, v18);
        v19 = [*(a1 + 32) events];
        [v19 removeAllObjects];
      }
    }

    else
    {
      v20 = objc_opt_class();
      v14 = NSStringFromClass(v20);
      MOLogWrite(0, 3, "[MOSplunkLogger uploadEventsWithCompletion:]_block_invoke_3", @"Received the wrong kind of response: %@", v21, v22, v23, v24, v14);
    }
  }

  v29 = *(a1 + 48);
  if (v29)
  {
    (*(v29 + 16))(v29, v13);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

- (void)logEventNamed:(id)named value:(id)value
{
  namedCopy = named;
  v7 = [value mutableCopy];
  0xF4240 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:clock_gettime_nsec_np(_CLOCK_REALTIME) / 0xF4240];
  [v7 setObject:0xF4240 forKeyedSubscript:@"eventTime"];

  splunkTopic = [(MOSplunkLogger *)self splunkTopic];
  [v7 setObject:splunkTopic forKeyedSubscript:@"topic"];

  [v7 setObject:namedCopy forKeyedSubscript:@"eventType"];
  queue = [(MOSplunkLogger *)self queue];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __38__MOSplunkLogger_logEventNamed_value___block_invoke;
  v12[3] = &unk_279917208;
  v12[4] = self;
  v13 = v7;
  v11 = v7;
  dispatch_async(queue, v12);
}

void __38__MOSplunkLogger_logEventNamed_value___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) events];
  [v2 addObject:*(a1 + 40)];

  v3 = [*(a1 + 32) events];
  v4 = [v3 count];

  if (v4 >= 0x3E9)
  {
    MOLogWrite(0, 3, "[MOSplunkLogger logEventNamed:value:]_block_invoke", @"Maximum number of events exceeded. Discarding oldest event.", v5, v6, v7, v8);
    v9 = [*(a1 + 32) events];
    [v9 removeObjectAtIndex:0];
  }
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  handlerCopy = handler;
  MOLogWrite(0, 3, "[MOSplunkLogger URLSession:didReceiveChallenge:completionHandler:]", @"Splunk upload challenge", v9, v10, v11, v12);
  v28 = 0;
  if ([challengeCopy previousFailureCount] >= 1)
  {
    goto LABEL_2;
  }

  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v15 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  if (!v15)
  {
    handlerCopy[2](handlerCopy, 1, 0);
    goto LABEL_11;
  }

  protectionSpace2 = [challengeCopy protectionSpace];
  MEMORY[0x25F84B1B0]([protectionSpace2 serverTrust], &v28);

  if (![(MOSplunkLogger *)self allowInvalidCert]&& v28 != 4 && v28 != 1)
  {
    MOLogWrite(0, 3, "[MOSplunkLogger URLSession:didReceiveChallenge:completionHandler:]", @"Error evaluating trust. SecTrustResultType=%d", v17, v18, v19, v20, v28);
LABEL_2:
    handlerCopy[2](handlerCopy, 2, 0);
    goto LABEL_11;
  }

  if ([(MOSplunkLogger *)self allowInvalidCert])
  {
    MOLogWrite(0, 3, "[MOSplunkLogger URLSession:didReceiveChallenge:completionHandler:]", @"Force Accepting Credential", v21, v22, v23, v24);
  }

  v25 = MEMORY[0x277CCACF0];
  protectionSpace3 = [challengeCopy protectionSpace];
  v27 = [v25 credentialForTrust:{objc_msgSend(protectionSpace3, "serverTrust")}];

  (handlerCopy)[2](handlerCopy, 0, v27);
LABEL_11:
}

@end