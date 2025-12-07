@interface HDHRAFibBurdenHistogramQueryServer
+ (id)requiredEntitlements;
- (HDHRAFibBurdenHistogramQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)_makeEmptyHistogramResult;
- (id)objectTypes;
- (void)_queue_start;
@end

@implementation HDHRAFibBurdenHistogramQueryServer

- (HDHRAFibBurdenHistogramQueryServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  clientCopy = client;
  v18.receiver = self;
  v18.super_class = HDHRAFibBurdenHistogramQueryServer;
  v11 = [(HDQueryServer *)&v18 initWithUUID:d configuration:configuration client:clientCopy delegate:delegate];
  if (v11)
  {
    profile = [clientCopy profile];
    v13 = [profile profileExtensionWithIdentifier:*MEMORY[0x277D12F10]];

    aFibBurdenComponents = [v13 aFibBurdenComponents];
    analyzer = [aFibBurdenComponents analyzer];
    analyzer = v11->_analyzer;
    v11->_analyzer = analyzer;
  }

  return v11;
}

+ (id)requiredEntitlements
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = *MEMORY[0x277CCC8B0];
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

- (id)objectTypes
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v3 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC950]];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [v2 setWithArray:v4];

  return v5;
}

- (void)_queue_start
{
  v36 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HDHRAFibBurdenHistogramQueryServer;
  [(HDQueryServer *)&v30 _queue_start];
  clientProxy = [(HDQueryServer *)self clientProxy];
  remoteObjectProxy = [clientProxy remoteObjectProxy];

  client = [(HDQueryServer *)self client];
  authorizationOracle = [client authorizationOracle];
  objectTypes = [(HDHRAFibBurdenHistogramQueryServer *)self objectTypes];
  v29 = 0;
  v8 = [authorizationOracle authorizationStatusRecordsForTypes:objectTypes error:&v29];
  v9 = v29;

  if (!v8)
  {
    queryUUID = [(HDQueryServer *)self queryUUID];
    [remoteObjectProxy client_deliverError:v9 forQuery:queryUUID];
    goto LABEL_22;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  allValues = [v8 allValues];
  v11 = [allValues countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (!v11)
  {

LABEL_18:
    analyzer = self->_analyzer;
    v24 = v9;
    queryUUID = [(HKHRAFibBurdenAnalyzer *)analyzer generateSixWeekBurdenHistogramsWithError:&v24];
    v22 = v24;

    queryUUID2 = [(HDQueryServer *)self queryUUID];
    if (queryUUID)
    {
      [remoteObjectProxy client_deliverHistogramResult:queryUUID queryUUID:queryUUID2];
    }

    else
    {
      [remoteObjectProxy client_deliverError:v22 forQuery:queryUUID2];
    }

    v9 = v22;
    goto LABEL_22;
  }

  v12 = v11;
  v13 = *v26;
  canRead = 1;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v26 != v13)
      {
        objc_enumerationMutation(allValues);
      }

      if (canRead)
      {
        canRead = [*(*(&v25 + 1) + 8 * i) canRead];
      }

      else
      {
        canRead = 0;
      }
    }

    v12 = [allValues countByEnumeratingWithState:&v25 objects:v35 count:16];
  }

  while (v12);

  if (canRead)
  {
    goto LABEL_18;
  }

  _HKInitializeLogging();
  v16 = HKHRAFibBurdenLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    *buf = 138412546;
    v32 = v17;
    v33 = 2112;
    v34 = v8;
    v18 = v17;
    _os_log_impl(&dword_229486000, v16, OS_LOG_TYPE_DEFAULT, "[%@] Avoiding exposing health data due to missing authorization: %@", buf, 0x16u);
  }

  queryUUID = [(HDHRAFibBurdenHistogramQueryServer *)self _makeEmptyHistogramResult];
  queryUUID3 = [(HDQueryServer *)self queryUUID];
  [remoteObjectProxy client_deliverHistogramResult:queryUUID queryUUID:queryUUID3];

LABEL_22:
}

- (id)_makeEmptyHistogramResult
{
  v2 = [objc_alloc(MEMORY[0x277D12F28]) initWithBurdenPercentage:0 burdenPercentageWasClampedToLowerBound:0 unavailabilityReason:0];
  v3 = [objc_alloc(MEMORY[0x277D12F30]) initWithSundayBurden:v2 mondayBurden:v2 tuesdayBurden:v2 wednesdayBurden:v2 thursdayBurden:v2 fridayBurden:v2 saturdayBurden:v2];
  v4 = [objc_alloc(MEMORY[0x277D12F68]) initWithMidnightToFourAMBurden:v2 fourAMtoEightAMBurden:v2 eightAMToNoonBurden:v2 noonToFourPMBurden:v2 fourPMToEightPMBurden:v2 eightPMToMidnightBurden:v2];
  v5 = [objc_alloc(MEMORY[0x277D12F48]) initWithDayOfWeekHistogram:v3 timeOfDayHistogram:v4];

  return v5;
}

@end