@interface WFScanPerformanceEvent
- (WFScanPerformanceEvent)initWithScanReason:(unint64_t)reason timeElasped:(unint64_t)elasped firstScan:(BOOL)scan results:(unint64_t)results errorCode:(int64_t)code lowPriority:(BOOL)priority rssiFilter:(BOOL)filter;
- (id)_scanReasonToString:(unint64_t)string;
@end

@implementation WFScanPerformanceEvent

- (id)_scanReasonToString:(unint64_t)string
{
  if (string > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_279EBDC20[string];
  }
}

- (WFScanPerformanceEvent)initWithScanReason:(unint64_t)reason timeElasped:(unint64_t)elasped firstScan:(BOOL)scan results:(unint64_t)results errorCode:(int64_t)code lowPriority:(BOOL)priority rssiFilter:(BOOL)filter
{
  priorityCopy = priority;
  scanCopy = scan;
  v31[8] = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = WFScanPerformanceEvent;
  v15 = [(WFScanPerformanceEvent *)&v29 init];
  v16 = v15;
  if (v15)
  {
    v30[0] = @"reason";
    v17 = [(WFScanPerformanceEvent *)v15 _scanReasonToString:reason];
    v31[0] = v17;
    v30[1] = @"duration";
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:elasped];
    v31[1] = v18;
    v30[2] = @"results";
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:results];
    v31[2] = v19;
    v30[3] = @"firstScan";
    v20 = [MEMORY[0x277CCABB0] numberWithBool:scanCopy];
    v31[3] = v20;
    v30[4] = @"errorCode";
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:code];
    v31[4] = v21;
    v30[5] = @"lowPriority";
    v22 = [MEMORY[0x277CCABB0] numberWithBool:priorityCopy];
    v31[5] = v22;
    v30[6] = @"rssiFilter";
    v23 = [MEMORY[0x277CCABB0] numberWithBool:filter];
    v31[6] = v23;
    v30[7] = @"process";
    v24 = +[WFMetricsManager sharedManager];
    processName = [v24 processName];
    v31[7] = processName;
    v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:8];
    eventDictionary = v16->_eventDictionary;
    v16->_eventDictionary = v26;
  }

  return v16;
}

@end