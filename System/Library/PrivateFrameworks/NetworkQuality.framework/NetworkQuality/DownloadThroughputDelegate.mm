@interface DownloadThroughputDelegate
- (BOOL)checkLimits;
- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data;
- (void)updateResultsWithByteCount;
- (void)updateResultsWithFlowCount;
- (void)updateResultsWithThroughput:(int64_t)throughput confidence:(int64_t)confidence;
@end

@implementation DownloadThroughputDelegate

- (void)URLSession:(id)session dataTask:(id)task didReceiveData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  if (!self->super._canceled && !self->super._exitCriteriaMet)
  {
    if ([(NSMutableArray *)self->super._probeSessions indexOfObject:sessionCopy]== 0x7FFFFFFFFFFFFFFFLL)
    {
      [(NSMutableArray *)self->super._probeSessions addObject:sessionCopy];
    }

    -[ThroughputDelegate addNewThroughputMeasurement:](self, "addNewThroughputMeasurement:", [dataCopy length]);
  }
}

- (void)updateResultsWithFlowCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSMutableArray count](self->super._tasks, "count")}];
    [(NetworkQualityResult *)self->super._results setDownlinkFlows:v4];
  }
}

- (void)updateResultsWithByteCount
{
  if (!self->super._canceled)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInteger:self->super._currentBytesTransferred];
    [(NetworkQualityResult *)self->super._results setDownlinkBytesTransferred:v4];
  }
}

- (void)updateResultsWithThroughput:(int64_t)throughput confidence:(int64_t)confidence
{
  if (!self->super._canceled)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:throughput];
    downlinkCapacity = [(NetworkQualityResult *)self->super._results downlinkCapacity];
    [downlinkCapacity setValue:v7];

    downlinkCapacity2 = [(NetworkQualityResult *)self->super._results downlinkCapacity];
    [downlinkCapacity2 updateConfidence:confidence];

    v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->super._currentBytesTransferred];
    [(NetworkQualityResult *)self->super._results setDownlinkBytesTransferred:v10];
  }
}

- (BOOL)checkLimits
{
  v35 = *MEMORY[0x277D85DE8];
  if ([(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkData])
  {
    currentBytesTransferred = self->super._currentBytesTransferred;
    maxDownlinkData = [(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkData];
    if (currentBytesTransferred > maxDownlinkData)
    {
      netqual_log_init(maxDownlinkData, v5);
      v6 = os_log_netqual;
      if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
      {
        v7 = self->super._currentBytesTransferred;
        nqConfig = self->super._nqConfig;
        v9 = v6;
        *buf = 136315906;
        v28 = "[DownloadThroughputDelegate checkLimits]";
        v29 = 1024;
        v30 = 551;
        v31 = 2048;
        v32 = *&v7;
        v33 = 2048;
        maxDownlinkData2 = [(NetworkQualityConfiguration *)nqConfig maxDownlinkData];
        _os_log_impl(&dword_25B962000, v9, OS_LOG_TYPE_DEFAULT, "%s:%u - Downloaded too many bytes: %ld max: %ld", buf, 0x26u);
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
  if (![(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkThroughput])
  {
    return 0;
  }

  maxDownlinkThroughput = [(NetworkQualityConfiguration *)self->super._nqConfig maxDownlinkThroughput];
  if (maxDownlinkThroughput >= v12)
  {
    return 0;
  }

  netqual_log_init(maxDownlinkThroughput, v14);
  v15 = os_log_netqual;
  if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->super._nqConfig;
    v17 = v15;
    *buf = 136315906;
    v28 = "[DownloadThroughputDelegate checkLimits]";
    v29 = 1024;
    v30 = 569;
    v31 = 2048;
    v32 = vcvtd_n_f64_s64(v12, 0x14uLL);
    v33 = 2048;
    maxDownlinkData2 = vcvtd_n_f64_s64([(NetworkQualityConfiguration *)v16 maxDownlinkThroughput], 0x14uLL);
    _os_log_impl(&dword_25B962000, v17, OS_LOG_TYPE_DEFAULT, "%s:%u - Downlink throughput exceeded: %.3f Mbps max: %.3f Mbps", buf, 0x26u);
  }

  [(SaturationDetection *)self->super._saturation getAverage];
  [(DownloadThroughputDelegate *)self updateResultsWithThroughput:v18 confidence:2];
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

@end