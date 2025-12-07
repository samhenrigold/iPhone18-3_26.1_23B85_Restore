@interface HMDMediaDestinationManagerFailureEvent
- (HMDMediaDestinationManagerFailureEvent)initWithFailureCode:(unint64_t)code error:(id)error;
- (NSDictionary)coreAnalyticsEventDictionary;
- (id)attributeDescriptions;
@end

@implementation HMDMediaDestinationManagerFailureEvent

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  failureCode = [(HMDMediaDestinationManagerFailureEvent *)self failureCode];
  v5 = HMDMediaDestinationManagerFailureCodeAsString([failureCode integerValue]);
  v6 = [v3 initWithName:@"failureCode" value:v5];
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  errorDomain = [(HMDMediaDestinationManagerFailureEvent *)self errorDomain];
  v9 = [v7 initWithName:@"errorDomain" value:errorDomain];
  v15[1] = v9;
  v10 = objc_alloc(MEMORY[0x277D0F778]);
  errorCode = [(HMDMediaDestinationManagerFailureEvent *)self errorCode];
  v12 = [v10 initWithName:@"errorCode" value:errorCode];
  v15[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  return v13;
}

- (NSDictionary)coreAnalyticsEventDictionary
{
  v9[3] = *MEMORY[0x277D85DE8];
  v8[0] = @"errorDomain";
  errorDomain = [(HMDMediaDestinationManagerFailureEvent *)self errorDomain];
  v9[0] = errorDomain;
  v8[1] = @"errorCode";
  errorCode = [(HMDMediaDestinationManagerFailureEvent *)self errorCode];
  v9[1] = errorCode;
  v8[2] = @"failureCode";
  failureCode = [(HMDMediaDestinationManagerFailureEvent *)self failureCode];
  v9[2] = failureCode;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];

  return v6;
}

- (HMDMediaDestinationManagerFailureEvent)initWithFailureCode:(unint64_t)code error:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v7 = errorCopy;
    v18.receiver = self;
    v18.super_class = HMDMediaDestinationManagerFailureEvent;
    v8 = [(HMMLogEvent *)&v18 init];
    if (v8)
    {
      domain = [v7 domain];
      errorDomain = v8->_errorDomain;
      v8->_errorDomain = domain;

      v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "code")}];
      errorCode = v8->_errorCode;
      v8->_errorCode = v11;

      v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:code];
      failureCode = v8->_failureCode;
      v8->_failureCode = v13;
    }

    return v8;
  }

  else
  {
    v16 = _HMFPreconditionFailure();
    [(HMDCameraSnapshotRequestHandler *)v16 .cxx_destruct];
  }

  return result;
}

@end