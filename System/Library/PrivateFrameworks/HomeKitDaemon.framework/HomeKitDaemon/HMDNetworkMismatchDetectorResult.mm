@interface HMDNetworkMismatchDetectorResult
- (HMDNetworkMismatchDetectorResult)initWithAccessoriesNotOnWiFi:(id)fi accessoriesNotOnWiFiAndNotConnectingToPrimaryResident:(id)resident accessoriesReportingDiagnostic:(id)diagnostic;
- (id)description;
@end

@implementation HMDNetworkMismatchDetectorResult

- (id)description
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"<Accessories not on WiFi: %@", self->_accessoriesNotOnWiFi];
  v4 = [v3 stringByAppendingFormat:@", Accessories not connect to primary: %@", self->_accessoriesNotOnWiFiAndNotConnectingToPrimaryResident];

  v5 = [v4 stringByAppendingFormat:@", Accessories not report diagnostic: %@", self->_accessoriesReportingDiagnostic];

  v6 = [v5 stringByAppendingString:@">"];

  return v6;
}

- (HMDNetworkMismatchDetectorResult)initWithAccessoriesNotOnWiFi:(id)fi accessoriesNotOnWiFiAndNotConnectingToPrimaryResident:(id)resident accessoriesReportingDiagnostic:(id)diagnostic
{
  fiCopy = fi;
  residentCopy = resident;
  diagnosticCopy = diagnostic;
  v19.receiver = self;
  v19.super_class = HMDNetworkMismatchDetectorResult;
  v11 = [(HMDNetworkMismatchDetectorResult *)&v19 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(fiCopy);
    accessoriesNotOnWiFi = v11->_accessoriesNotOnWiFi;
    v11->_accessoriesNotOnWiFi = v12;

    v14 = objc_msgSend_copy(residentCopy);
    accessoriesNotOnWiFiAndNotConnectingToPrimaryResident = v11->_accessoriesNotOnWiFiAndNotConnectingToPrimaryResident;
    v11->_accessoriesNotOnWiFiAndNotConnectingToPrimaryResident = v14;

    v16 = objc_msgSend_copy(diagnosticCopy);
    accessoriesReportingDiagnostic = v11->_accessoriesReportingDiagnostic;
    v11->_accessoriesReportingDiagnostic = v16;
  }

  return v11;
}

@end