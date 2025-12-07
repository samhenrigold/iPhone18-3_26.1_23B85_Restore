@interface HMDHouseholdNetworkStabilityLogEvent
- (HMDHouseholdNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters WifiAssociations:(unint64_t)associations wifiDisassociations:(unint64_t)disassociations apChanges:(unint64_t)changes gatewayChanges:(unint64_t)gatewayChanges numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)self0 numWriteErrors:(unint64_t)self1 numSessionErrors:(unint64_t)self2 numNetworkSignatures:(unint64_t)self3;
- (NSDictionary)coreAnalyticsEventDictionary;
@end

@implementation HMDHouseholdNetworkStabilityLogEvent

- (NSDictionary)coreAnalyticsEventDictionary
{
  v16[10] = *MEMORY[0x277D85DE8];
  v15[0] = @"numStabilityReporters";
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numStabilityReporters](self, "numStabilityReporters")}];
  v16[0] = v14;
  v15[1] = @"numWifiAssociations";
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numWifiAssociations](self, "numWifiAssociations")}];
  v16[1] = v3;
  v15[2] = @"numWifiDisassociations";
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numWifiDisassociations](self, "numWifiDisassociations")}];
  v16[2] = v4;
  v15[3] = @"numWifiAPChanges";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numAPChanges](self, "numAPChanges")}];
  v16[3] = v5;
  v15[4] = @"numGatewayChanges";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numGatewayChanges](self, "numGatewayChanges")}];
  v16[4] = v6;
  v15[5] = @"numReadWrites";
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numReadWrites](self, "numReadWrites")}];
  v16[5] = v7;
  v15[6] = @"numReadErrors";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numReadErrors](self, "numReadErrors")}];
  v16[6] = v8;
  v15[7] = @"numWriteErrors";
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numWriteErrors](self, "numWriteErrors")}];
  v16[7] = v9;
  v15[8] = @"numSessionErrors";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numSessionErrors](self, "numSessionErrors")}];
  v16[8] = v10;
  v15[9] = @"numNetworkSignatures";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HMDHouseholdNetworkStabilityLogEvent numNetworkSignatures](self, "numNetworkSignatures")}];
  v16[9] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:10];

  return v12;
}

- (HMDHouseholdNetworkStabilityLogEvent)initWithHomeUUID:(id)d numStabilityReporters:(unint64_t)reporters WifiAssociations:(unint64_t)associations wifiDisassociations:(unint64_t)disassociations apChanges:(unint64_t)changes gatewayChanges:(unint64_t)gatewayChanges numReadWrites:(unint64_t)writes numReadErrors:(unint64_t)self0 numWriteErrors:(unint64_t)self1 numSessionErrors:(unint64_t)self2 numNetworkSignatures:(unint64_t)self3
{
  v19.receiver = self;
  v19.super_class = HMDHouseholdNetworkStabilityLogEvent;
  result = [(HMMHomeLogEvent *)&v19 initWithHomeUUID:d];
  if (result)
  {
    result->_numStabilityReporters = reporters;
    result->_numWifiAssociations = associations;
    result->_numWifiDisassociations = disassociations;
    result->_numAPChanges = changes;
    result->_numGatewayChanges = gatewayChanges;
    result->_numReadWrites = writes;
    result->_numReadErrors = errors;
    result->_numWriteErrors = writeErrors;
    result->_numSessionErrors = sessionErrors;
    result->_numNetworkSignatures = signatures;
  }

  return result;
}

@end