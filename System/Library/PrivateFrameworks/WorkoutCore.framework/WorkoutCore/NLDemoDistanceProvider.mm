@interface NLDemoDistanceProvider
- (NLDemoDistanceProvider)initWithDistanceProvider:(id)provider;
- (id)adjustedStatisticsForStatistics:(id)statistics;
@end

@implementation NLDemoDistanceProvider

- (NLDemoDistanceProvider)initWithDistanceProvider:(id)provider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, provider);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = NLDemoDistanceProvider;
  selfCopy = [(NLDemoDistanceProvider *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_distanceProvider, location[0]);
    selfCopy->_adjustedDistanceInMeters = 0.0;
  }

  v5 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (id)adjustedStatisticsForStatistics:(id)statistics
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  v9 = objc_alloc(MEMORY[0x277CCDA50]);
  quantityType = [location[0] quantityType];
  startDate = [location[0] startDate];
  endDate = [location[0] endDate];
  v23 = [v9 initWithDataType:quantityType startDate:startDate endDate:?];
  MEMORY[0x277D82BD8](endDate);
  MEMORY[0x277D82BD8](startDate);
  *&v3 = MEMORY[0x277D82BD8](quantityType).n128_u64[0];
  [(NLDemoDistanceProvider *)selfCopy adjustedDistanceInMeters];
  v14 = v4;
  sumQuantity = [location[0] sumQuantity];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  [sumQuantity doubleValueForUnit:?];
  v16 = v14 + v5;
  MEMORY[0x277D82BD8](meterUnit);
  MEMORY[0x277D82BD8](sumQuantity);
  v17 = MEMORY[0x277CCD7E8];
  meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
  v18 = [v17 quantityWithUnit:v16 doubleValue:?];
  [v23 setSumQuantity:?];
  MEMORY[0x277D82BD8](v18);
  *&v6 = MEMORY[0x277D82BD8](meterUnit2).n128_u64[0];
  mostRecentQuantity = [location[0] mostRecentQuantity];
  [v23 setMostRecentQuantity:?];
  *&v7 = MEMORY[0x277D82BD8](mostRecentQuantity).n128_u64[0];
  mostRecentQuantityDateInterval = [location[0] mostRecentQuantityDateInterval];
  [v23 setMostRecentQuantityDateInterval:?];
  MEMORY[0x277D82BD8](mostRecentQuantityDateInterval);
  v22 = MEMORY[0x277D82BE0](v23);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);

  return v22;
}

@end