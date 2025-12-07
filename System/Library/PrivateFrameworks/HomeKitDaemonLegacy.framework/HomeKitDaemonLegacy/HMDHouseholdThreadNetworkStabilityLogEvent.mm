@interface HMDHouseholdThreadNetworkStabilityLogEvent
- (HMDHouseholdThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters threadNetworkStatusReport:(id)report threadNetworkUptime:(unint64_t)uptime threadNetworkDowntime:(unint64_t)downtime numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)self0 numSessionErrors:(unint64_t)self1;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHouseholdThreadNetworkStabilityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v46[18] = *MEMORY[0x277D85DE8];
  v45[0] = @"numStabilityReporters";
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numStabilityReporters](self, "numStabilityReporters")}];
  v46[0] = v44;
  v45[1] = @"numAdvertisedBRs";
  v3 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v42 = [v3 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport, "numAdvertisedBRs")}];
  v46[1] = v42;
  v45[2] = @"numAppleBRs";
  v4 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport2 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v40 = [v4 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport2, "numAppleBRs")}];
  v46[2] = v40;
  v45[3] = @"numThirdPartyBRs";
  v5 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport3 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v38 = [v5 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport3, "numThirdPartyBRs")}];
  v46[3] = v38;
  v45[4] = @"numThreadNetworks";
  v6 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport4 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v36 = [v6 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport4, "numThreadNetworks")}];
  v46[4] = v36;
  v45[5] = @"maxSimuIPPrefixesDetected";
  v7 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport5 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v34 = [v7 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport5, "maxSimuIPPrefixesDetected")}];
  v46[5] = v34;
  v45[6] = @"txTotal";
  v8 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport6 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v32 = [v8 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport6, "txTotal")}];
  v46[6] = v32;
  v45[7] = @"txSuccess";
  v9 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport7 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v30 = [v9 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport7, "txSuccess")}];
  v46[7] = v30;
  v45[8] = @"txDelayAvg";
  v10 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport8 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v28 = [v10 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport8, "txDelayAvg")}];
  v46[8] = v28;
  v45[9] = @"rxTotal";
  v11 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport9 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v26 = [v11 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport9, "rxTotal")}];
  v46[9] = v26;
  v45[10] = @"rxSuccess";
  v12 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport10 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v13 = [v12 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport10, "rxSuccess")}];
  v46[10] = v13;
  v45[11] = @"reportDuration";
  v14 = MEMORY[0x277CCABB0];
  threadNetworkStatusReport11 = [(HMDHouseholdThreadNetworkStabilityLogEvent *)self threadNetworkStatusReport];
  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(threadNetworkStatusReport11, "reportDuration")}];
  v46[11] = v16;
  v45[12] = @"threadNetworkUptime";
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent threadNetworkUptime](self, "threadNetworkUptime")}];
  v46[12] = v17;
  v45[13] = @"threadNetworkDowntime";
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent threadNetworkDowntime](self, "threadNetworkDowntime")}];
  v46[13] = v18;
  v45[14] = @"numReadWrites";
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  v46[14] = v19;
  v45[15] = @"numReadErrors";
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  v46[15] = v20;
  v45[16] = @"numWriteErrors";
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  v46[16] = v21;
  v45[17] = @"numSessionErrors";
  v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdThreadNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v46[17] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:18];

  return v23;
}

- (HMDHouseholdThreadNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters threadNetworkStatusReport:(id)report threadNetworkUptime:(unint64_t)uptime threadNetworkDowntime:(unint64_t)downtime numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)errors numWriteErrors:(unint64_t)self0 numSessionErrors:(unint64_t)self1
{
  reportCopy = report;
  v22.receiver = self;
  v22.super_class = HMDHouseholdThreadNetworkStabilityLogEvent;
  v19 = [(HMMHomeLogEvent *)&v22 initWithHomeUUID:d];
  v20 = v19;
  if (v19)
  {
    v19->_numStabilityReporters = reporters;
    objc_storeStrong(&v19->_threadNetworkStatusReport, report);
    v20->_threadNetworkUptime = uptime;
    v20->_threadNetworkDowntime = downtime;
    v20->_numReadWrites = writes;
    v20->_numReadErrors = errors;
    v20->_numWriteErrors = writeErrors;
    v20->_numSessionErrors = sessionErrors;
  }

  return v20;
}

@end