@interface UploadThroughputDelegate
- (BOOL)checkLimits;
- (id)amendRequest:(id)request;
- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler;
- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)updateResultsWithByteCount;
- (void)updateResultsWithFlowCount;
- (void)updateResultsWithThroughput:(int64_t)throughput confidence:(int64_t)confidence;
@end

@implementation UploadThroughputDelegate

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  streamCopy = stream;
  v7 = [[UploadDataStream alloc] initWithLength:0x400000000 andThroughputDelegate:self];
  [(NSMutableArray *)self->super._uploadStream addObject:v7];
  streamCopy[2](streamCopy, v7);
}

- (void)URLSession:(id)session dataTask:(id)task didReceiveResponse:(id)response completionHandler:(id)handler
{
  v28[3] = *MEMORY[0x277D85DE8];
  responseCopy = response;
  handlerCopy = handler;
  v10 = responseCopy;
  if ([v10 statusCode] == 200)
  {
    if (self->super._currentBytesTransferred)
    {
      handlerCopy[2](handlerCopy, 1);
      goto LABEL_13;
    }

    v24 = handlerCopy;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Request got 200, but transferred no bytes on throughput measurement connection. Is the server configured correctly?"];
    netqual_log_init(v11, v21);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [UploadThroughputDelegate URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 1012;
    v25[0] = @"statusCode";
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "statusCode")}];
    stringValue = [v15 stringValue];
    v26[0] = stringValue;
    v25[1] = @"URL";
    v17 = [(NSURLRequest *)self->super._request URL];
    v25[2] = *MEMORY[0x277CCA450];
    v26[1] = v17;
    v26[2] = v11;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v26;
    v20 = v25;
  }

  else
  {
    v24 = handlerCopy;
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected HTTP status code 200, got %lu", objc_msgSend(v10, "statusCode")];
    netqual_log_init(v11, v12);
    if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
    {
      [UploadThroughputDelegate URLSession:dataTask:didReceiveResponse:completionHandler:];
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = 1003;
    v27[0] = @"statusCode";
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "statusCode")}];
    stringValue = [v15 stringValue];
    v28[0] = stringValue;
    v27[1] = @"URL";
    v17 = [(NSURLRequest *)self->super._request URL];
    v27[2] = *MEMORY[0x277CCA450];
    v28[1] = v17;
    v28[2] = v11;
    v18 = MEMORY[0x277CBEAC0];
    v19 = v28;
    v20 = v27;
  }

  v22 = [v18 dictionaryWithObjects:v19 forKeys:v20 count:3];
  v23 = [v13 errorWithDomain:@"NetworkQualityErrorDomain" code:v14 userInfo:v22];

  if (!self->super._canceled)
  {
    objc_storeStrong(&self->super._error, v23);
    (*(self->super._completionHandler + 2))();
  }

  handlerCopy = v24;
  v24[2](v24, 0);

LABEL_13:
}

- (void)URLSession:(id)session task:(id)task didSendBodyData:(int64_t)data totalBytesSent:(int64_t)sent totalBytesExpectedToSend:(int64_t)send
{
  v22 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  if (!self->super._canceled && !self->super._exitCriteriaMet)
  {
    if ([(NSMutableArray *)self->super._probeSessions indexOfObject:sessionCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->super._probeSessions addObject:sessionCopy];
    }

    v10 = [MEMORY[0x277CBEAA8] now];
    lastUpdate = self->super._lastUpdate;
    self->super._lastUpdate = v10;

    [(ThroughputDelegate *)self addNewThroughputMeasurement:data];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = self->super._uploadStream;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v18;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v18 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v17 + 1) + 8 * i) signalProgress];
        }

        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v14);
    }
  }
}

- (id)amendRequest:(id)request
{
  requestCopy = request;
  [requestCopy setHTTPMethod:@"POST"];
  0x400000000 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lld", 0x400000000];
  [requestCopy setValue:0x400000000 forHTTPHeaderField:@"Content-Length"];

  return requestCopy;
}

- (void)updateResultsWithFlowCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSMutableArray count](self->super._tasks, "count")}];
    [(NetworkQualityResult *)self->super._results setUplinkFlows:v4];
  }
}

- (void)updateResultsWithByteCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->super._currentBytesTransferred];
    [(NetworkQualityResult *)self->super._results setUplinkBytesTransferred:v4];
  }
}

- (void)updateResultsWithThroughput:(int64_t)throughput confidence:(int64_t)confidence
{
  if (!self->super._canceled)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:throughput];
    uplinkCapacity = [(NetworkQualityResult *)self->super._results uplinkCapacity];
    [uplinkCapacity setValue:v7];

    uplinkCapacity2 = [(NetworkQualityResult *)self->super._results uplinkCapacity];
    [uplinkCapacity2 updateConfidence:confidence];
  }
}

- (BOOL)checkLimits
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkData])
  {
    currentBytesTransferred = self->super._currentBytesTransferred;
    maxUplinkData = [(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkData];
    if (currentBytesTransferred > maxUplinkData)
    {
      netqual_log_init(maxUplinkData, v5);
      v6 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->super._currentBytesTransferred;
        nqConfig = self->super._nqConfig;
        v9 = v6;
        *buf = 136315906;
        v28 = "[UploadThroughputDelegate checkLimits]";
        v29 = 1024;
        v30 = 727;
        v31 = 2048;
        v32 = *&v7;
        v33 = 2048;
        maxUplinkData2 = [(NetworkQualityConfiguration *)nqConfig maxUplinkData];
        _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - Uploaded too many bytes: %ld max: %ld", buf, 0x26u);
      }

      if (!self->super._canceled)
      {
        v21 = objc_alloc(MEMORY[0x277CCA9B8]);
        v25 = *MEMORY[0x277CCA450];
        v26 = @"Datalimit exceeded";
        v10 = 1;
        v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
        v23 = [v21 initWithDomain:@"NetworkQualityErrorDomain" code:1005 userInfo:v22];
        error = self->super._error;
        self->super._error = v23;

        (*(self->super._completionHandler + 2))();
        return v10;
      }

      return 1;
    }
  }

  [(SaturationDetection *)self->super._saturation getAverage];
  if (self->super._exitCriteriaMet)
  {
    return 0;
  }

  v12 = v11;
  if (![(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkThroughput])
  {
    return 0;
  }

  maxUplinkThroughput = [(NetworkQualityConfiguration *)self->super._nqConfig maxUplinkThroughput];
  if (maxUplinkThroughput >= v12)
  {
    return 0;
  }

  netqual_log_init(maxUplinkThroughput, v14);
  v15 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->super._nqConfig;
    v17 = v15;
    *buf = 136315906;
    v28 = "[UploadThroughputDelegate checkLimits]";
    v29 = 1024;
    v30 = 745;
    v31 = 2048;
    v32 = vcvtd_n_f64_s64(v12, 0x14uLL);
    v33 = 2048;
    maxUplinkData2 = vcvtd_n_f64_s64([(NetworkQualityConfiguration *)v16 maxUplinkThroughput], 0x14uLL);
    _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - Uplink throughput exceeded: %.3f Mbps max: %.3f Mbps", buf, 0x26u);
  }

  [(SaturationDetection *)self->super._saturation getAverage];
  [(UploadThroughputDelegate *)self updateResultsWithThroughput:v18 confidence:2];
  v10 = 1;
  self->super._exitCriteriaMet = 1;
  if (!self->super._saturationReached)
  {
    saturationHandler = self->super._saturationHandler;
    if (saturationHandler)
    {
      saturationHandler[2]();
    }

    return 1;
  }

  return v10;
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.1()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, v6);
}

- (void)URLSession:dataTask:didReceiveResponse:completionHandler:.cold.2()
{
  v6 = 136315650;
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(&dword_25B962000, v0, v1, "%s:%u - %@", v2, v3, v4, v5, v6);
}

@end