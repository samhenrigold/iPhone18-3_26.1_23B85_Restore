@interface OspreyGRPCChannel
- (OspreyGRPCChannel)initWithURL:(id)l configuration:(id)configuration queue:(id)queue;
- (id)bidirectionalStreamingRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion;
- (id)clientStreamingContextForRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion;
- (id)clientStreamingRequest:(id)request responseHandler:(id)handler streamingContext:(id)context;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)bidirectionalStreamingRequest:(id)request streamingContext:(id)context;
- (void)cancel;
- (void)close;
- (void)dealloc;
- (void)preconnect;
- (void)serverStreamingRequest:(id)request requestData:(id)data streamingResponseHandler:(id)handler completion:(id)completion;
- (void)setAbsintheTimestampForKey:(id)key;
- (void)unaryRequest:(id)request requestData:(id)data responseHandler:(id)handler;
@end

@implementation OspreyGRPCChannel

- (OspreyGRPCChannel)initWithURL:(id)l configuration:(id)configuration queue:(id)queue
{
  lCopy = l;
  configurationCopy = configuration;
  queueCopy = queue;
  v31.receiver = self;
  v31.super_class = OspreyGRPCChannel;
  v11 = [(OspreyGRPCChannel *)&v31 init];
  v13 = v11;
  if (v11)
  {
    OspreyLoggingInit(v11, v12);
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      [OspreyGRPCChannel initWithURL:configuration:queue:];
    }

    v14 = [lCopy copy];
    baseURL = v13->_baseURL;
    v13->_baseURL = v14;

    objc_storeStrong(&v13->_queue, queue);
    v16 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v17 = [v16 setUnderlyingQueue:v13->_queue];
    if (OspreyIsEntitledForMPTCP(v17, v18))
    {
      [configurationCopy set_allowsMultipathTCP:1];
      v19 = [configurationCopy set_multipathAlternatePort:5228];
      OspreyLoggingInit(v19, v20);
      v21 = OspreyLogContextGRPC;
      if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
      {
        [OspreyGRPCChannel initWithURL:configurationCopy configuration:v21 queue:?];
      }
    }

    if ([configurationCopy TLSMinimumSupportedProtocolVersion] <= 0x302)
    {
      [configurationCopy setTLSMinimumSupportedProtocolVersion:771];
    }

    [configurationCopy set_allowsTLSFalseStart:1];
    v22 = [MEMORY[0x277CCAD30] sessionWithConfiguration:configurationCopy delegate:v13 delegateQueue:v16];
    session = v13->_session;
    v13->_session = v22;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    taskToContext = v13->_taskToContext;
    v13->_taskToContext = strongToStrongObjectsMapTable;

    v26 = objc_alloc_init(OspreyMessageWriter);
    messageWriter = v13->_messageWriter;
    v13->_messageWriter = v26;

    v28 = objc_alloc_init(AbsintheAuthenticationDurations);
    absintheDurations = v13->_absintheDurations;
    v13->_absintheDurations = v28;
  }

  return v13;
}

- (void)dealloc
{
  [(OspreyGRPCChannel *)self close];
  v3.receiver = self;
  v3.super_class = OspreyGRPCChannel;
  [(OspreyGRPCChannel *)&v3 dealloc];
}

- (void)close
{
  v6 = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_25DDE6000, v0, v1, "%s session: %@", v2, v3, v4, v5, v6);
}

- (void)cancel
{
  v6 = 136315394;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_5(&dword_25DDE6000, v0, v1, "%s session: %@", v2, v3, v4, v5, v6);
}

- (void)setAbsintheTimestampForKey:(id)key
{
  keyCopy = key;
  absintheDurations = [(OspreyGRPCChannel *)self absintheDurations];
  [absintheDurations setAbsintheAuthenticationTimestampForKey:keyCopy];
}

- (id)clientStreamingContextForRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion
{
  completionCopy = completion;
  handlerCopy = handler;
  requestCopy = request;
  v11 = [[OspreyGRPCStreamingContext alloc] initWithQueue:self->_queue responseHandler:handlerCopy completion:completionCopy];

  useCompression = [requestCopy useCompression];
  [(OspreyGRPCStreamingContext *)v11 setCompressionEnabled:useCompression];

  return v11;
}

- (void)unaryRequest:(id)request requestData:(id)data responseHandler:(id)handler
{
  requestCopy = request;
  dataCopy = data;
  handlerCopy = handler;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  v25 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v23 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke;
  v21[3] = &unk_2799F2138;
  v21[4] = v22;
  v21[5] = v24;
  v11 = MEMORY[0x25F8A5BA0](v21);
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke_2;
  v18 = &unk_2799F20C0;
  v12 = handlerCopy;
  v19 = v12;
  v20 = v24;
  v13 = MEMORY[0x25F8A5BA0](&v15);
  v14 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:requestCopy streamingResponseHandler:v11 completion:v13, v15, v16, v17, v18];
  [v14 writeFrame:dataCopy];
  [v14 finishWriting];

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v24, 8);
}

void __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t __62__OspreyGRPCChannel_unaryRequest_requestData_responseHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), a2);
  }

  return result;
}

- (void)serverStreamingRequest:(id)request requestData:(id)data streamingResponseHandler:(id)handler completion:(id)completion
{
  dataCopy = data;
  v11 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:request streamingResponseHandler:handler completion:completion];
  [v11 writeFrame:dataCopy];

  [v11 finishWriting];
}

- (id)clientStreamingRequest:(id)request responseHandler:(id)handler streamingContext:(id)context
{
  requestCopy = request;
  handlerCopy = handler;
  contextCopy = context;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__2;
  v25[4] = __Block_byref_object_dispose__2;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 0;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke;
  v22[3] = &unk_2799F2138;
  v22[4] = v23;
  v22[5] = v25;
  v11 = MEMORY[0x25F8A5BA0](v22);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke_2;
  v19 = &unk_2799F20C0;
  v12 = handlerCopy;
  v20 = v12;
  v21 = v25;
  v13 = MEMORY[0x25F8A5BA0](&v16);
  v14 = [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:requestCopy streamingResponseHandler:v11 completion:v13, v16, v17, v18, v19];

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);

  return v14;
}

void __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if ((*(*(*(a1 + 32) + 8) + 24) & 1) == 0)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v4 = v5;
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t __77__OspreyGRPCChannel_clientStreamingRequest_responseHandler_streamingContext___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40), a2);
  }

  return result;
}

- (id)bidirectionalStreamingRequest:(id)request streamingResponseHandler:(id)handler completion:(id)completion
{
  requestCopy = request;
  v9 = [(OspreyGRPCChannel *)self clientStreamingContextForRequest:requestCopy streamingResponseHandler:handler completion:completion];
  [(OspreyGRPCChannel *)self bidirectionalStreamingRequest:requestCopy streamingContext:v9];

  return v9;
}

- (void)bidirectionalStreamingRequest:(id)request streamingContext:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  contextCopy = context;
  OspreyLoggingInit(contextCopy, v8);
  v9 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_INFO))
  {
    baseURL = self->_baseURL;
    v11 = v9;
    methodName = [requestCopy methodName];
    v15 = 136315650;
    v16 = "[OspreyGRPCChannel bidirectionalStreamingRequest:streamingContext:]";
    v17 = 2112;
    v18 = baseURL;
    v19 = 2112;
    v20 = methodName;
    _os_log_impl(&dword_25DDE6000, v11, OS_LOG_TYPE_INFO, "%s baseURL: %@, method: %@", &v15, 0x20u);
  }

  v13 = [requestCopy grpcRequestWithBaseURL:self->_baseURL];
  [contextCopy bindToUrlRequest:v13];
  v14 = [(NSURLSession *)self->_session dataTaskWithRequest:v13];
  [(NSMapTable *)self->_taskToContext setObject:contextCopy forKey:v14];

  [(OspreyGRPCChannel *)self _startTask:v14];
}

- (void)preconnect
{
  v3 = [(NSURLSession *)self->_session dataTaskWithURL:self->_baseURL completionHandler:&__block_literal_global_6];
  [v3 set_preconnect:1];
  [(OspreyGRPCChannel *)self _startTask:v3];
}

void __31__OspreyGRPCChannel_preconnect__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = a4;
  v10 = v8;
  if (v8)
  {
    OspreyLoggingInit(v8, v9);
    v11 = OspreyLogContextGRPC;
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
    {
      __31__OspreyGRPCChannel_preconnect__block_invoke_cold_1(v11, v10);
    }
  }

  else
  {
    OspreyLoggingInit(0, v9);
    v12 = OspreyLogContextGRPC;
    v13 = os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      if (v13)
      {
        __31__OspreyGRPCChannel_preconnect__block_invoke_cold_2(v12);
      }
    }

    else if (v13)
    {
      __31__OspreyGRPCChannel_preconnect__block_invoke_cold_3(v12);
    }
  }
}

- (void)URLSession:(id)session task:(id)task didFinishCollectingMetrics:(id)metrics
{
  v18 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  OspreyLoggingInit(metricsCopy, v7);
  v8 = OspreyLogContextGRPC;
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_INFO))
  {
    v14 = 136315394;
    v15 = "[OspreyGRPCChannel URLSession:task:didFinishCollectingMetrics:]";
    v16 = 2112;
    v17 = metricsCopy;
    _os_log_impl(&dword_25DDE6000, v8, OS_LOG_TYPE_INFO, "%s Successfully collected metrics %@", &v14, 0x16u);
  }

  if (metricsCopy)
  {
    v9 = [[OspreyConnectionMetrics alloc] initWithMetrics:metricsCopy];
    absintheDurations = [(OspreyGRPCChannel *)self absintheDurations];
    connectionMethod = [(OspreyConnectionMetrics *)v9 connectionMethod];
    [absintheDurations setAbsintheConnectionMethodWith:connectionMethod];

    v12 = +[OspreyAnalytics reporter];
    [v12 reportConnectionMetrics:v9];

    connectionMetricsHandler = self->_connectionMetricsHandler;
    if (connectionMetricsHandler)
    {
      connectionMetricsHandler[2](connectionMetricsHandler, v9);
    }
  }
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  queue = self->_queue;
  streamCopy = stream;
  dispatch_assert_queue_V2(queue);
  streamCopy[2](streamCopy, 0);
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_queue);
  originalRequest = [taskCopy originalRequest];
  v10 = [originalRequest URL];

  v11 = [(NSMapTable *)self->_taskToContext objectForKey:taskCopy];
  OspreyLoggingInit(v11, v12);
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:task:didCompleteWithError:];
    if (!errorCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (errorCopy)
  {
LABEL_3:
    v13 = +[OspreyAnalytics reporter];
    [v13 reportError:errorCopy forURL:v10];
  }

LABEL_4:
  [v11 completeWithError:errorCopy];
  [(NSMapTable *)self->_taskToContext removeObjectForKey:taskCopy];
}

- (void)URLSession:(id)session didReceiveChallenge:(id)challenge completionHandler:(id)handler
{
  challengeCopy = challenge;
  queue = self->_queue;
  handlerCopy = handler;
  dispatch_assert_queue_V2(queue);
  protectionSpace = [challengeCopy protectionSpace];
  authenticationMethod = [protectionSpace authenticationMethod];
  v12 = [authenticationMethod isEqualToString:*MEMORY[0x277CCA720]];

  OspreyLoggingInit(v13, v14);
  v15 = OspreyLogContextGRPC;
  v16 = os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v16)
    {
      [OspreyGRPCChannel URLSession:didReceiveChallenge:completionHandler:];
    }

    v17 = 0;
  }

  else
  {
    if (v16)
    {
      [OspreyGRPCChannel URLSession:challengeCopy didReceiveChallenge:v15 completionHandler:protectionSpace];
    }

    v17 = 1;
  }

  handlerCopy[2](handlerCopy, v17, 0);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  taskCopy = task;
  responseCopy = response;
  handlerCopy = handler;
  OspreyLoggingInit(handlerCopy, v12);
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
  }

  dispatch_assert_queue_V2(self->_queue);
  v13 = responseCopy;
  statusCode = [v13 statusCode];
  allHeaderFields = [v13 allHeaderFields];
  v16 = [allHeaderFields objectForKey:@"grpc-status"];
  longLongValue = [v16 longLongValue];

  v18 = +[OspreyAnalytics reporter];
  v19 = [v13 URL];
  [v18 reportHttpStatus:statusCode grpcStatus:longLongValue forURL:v19];

  if (statusCode != 200)
  {
    v23 = [MEMORY[0x277CCAA40] localizedStringForStatusCode:statusCode];
    OspreyLoggingInit(v23, v26);
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    goto LABEL_10;
  }

  if (longLongValue)
  {
    allHeaderFields2 = [v13 allHeaderFields];
    v23 = [allHeaderFields2 objectForKey:@"grpc-message"];

    OspreyLoggingInit(v24, v25);
    if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_ERROR))
    {
      [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    statusCode = -1011;
LABEL_10:
    v27 = MEMORY[0x277CCA9B8];
    v28 = *MEMORY[0x277CCA738];
    allHeaderFields3 = [v13 allHeaderFields];
    v30 = [v27 errorWithDomain:v28 code:statusCode userInfo:allHeaderFields3];

    v31 = [(NSMapTable *)self->_taskToContext objectForKey:taskCopy];
    [v31 completeWithError:v30];
    [(NSMapTable *)self->_taskToContext removeObjectForKey:taskCopy];
    handlerCopy[2](handlerCopy, 0);

    goto LABEL_11;
  }

  OspreyLoggingInit(v20, v21);
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveResponse:completionHandler:];
  }

  handlerCopy[2](handlerCopy, 1);
LABEL_11:
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  taskCopy = task;
  dataCopy = data;
  dispatch_assert_queue_V2(self->_queue);
  OspreyLoggingInit(v9, v10);
  if (os_log_type_enabled(OspreyLogContextGRPC, OS_LOG_TYPE_DEBUG))
  {
    [OspreyGRPCChannel URLSession:dataTask:didReceiveData:];
  }

  v11 = [(NSMapTable *)self->_taskToContext objectForKey:taskCopy];
  [v11 handleResponseData:dataCopy];
}

- (void)initWithURL:configuration:queue:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_25DDE6000, v0, v1, "%s Initializing Osprey GRPC channel and NSURLSession -- %@", v2, v3, v4, v5, v6);
}

- (void)initWithURL:(void *)a1 configuration:(void *)a2 queue:.cold.2(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = 136315906;
  v5 = "[OspreyGRPCChannel initWithURL:configuration:queue:]";
  v6 = 2112;
  v7 = a1;
  v8 = 1024;
  v9 = [a1 _allowsMultipathTCP];
  v10 = 2048;
  v11 = [a1 _multipathAlternatePort];
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s %@ mptcp: %d port: %lu", &v4, 0x26u);
}

void __31__OspreyGRPCChannel_preconnect__block_invoke_cold_1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 localizedDescription];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_25DDE6000, v3, OS_LOG_TYPE_DEBUG, "%s Preconnection error: %@", v5, 0x16u);
}

void __31__OspreyGRPCChannel_preconnect__block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyGRPCChannel preconnect]_block_invoke";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Perconnection error: response should be nil.", &v1, 0xCu);
}

void __31__OspreyGRPCChannel_preconnect__block_invoke_cold_3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[OspreyGRPCChannel preconnect]_block_invoke";
  _os_log_debug_impl(&dword_25DDE6000, log, OS_LOG_TYPE_DEBUG, "%s Preconnection successful!", &v1, 0xCu);
}

- (void)URLSession:task:didCompleteWithError:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_25DDE6000, v0, v1, "%s Completed with error: %@", v2, v3, v4, v5, v6);
}

- (void)URLSession:(uint64_t)a1 didReceiveChallenge:(void *)a2 completionHandler:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 authenticationMethod];
  v7 = 136315650;
  v8 = "[OspreyGRPCChannel URLSession:didReceiveChallenge:completionHandler:]";
  v9 = 2112;
  v10 = a1;
  v11 = 2112;
  v12 = v6;
  _os_log_debug_impl(&dword_25DDE6000, v5, OS_LOG_TYPE_DEBUG, "%s Using default handling for challenge %@ with authenticationMethod %@", &v7, 0x20u);
}

- (void)URLSession:didReceiveChallenge:completionHandler:.cold.2()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_25DDE6000, v0, v1, "%s Got challenge %@", v2, v3, v4, v5, v6);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_5(&dword_25DDE6000, v0, v1, "%s %@", v2, v3, v4, v5, v6);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.3()
{
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 0x20u);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

- (void)URLSession:dataTask:didReceiveData:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x20u);
}

@end