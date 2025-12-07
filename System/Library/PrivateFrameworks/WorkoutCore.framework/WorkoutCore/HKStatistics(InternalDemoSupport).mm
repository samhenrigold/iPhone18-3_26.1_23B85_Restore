@interface HKStatistics(InternalDemoSupport)
+ (id)_nlActiveEnergyStatisticsForQuantity:()InternalDemoSupport startDate:endDate:;
+ (id)_nlDistanceStatisticsForQuantityIdentifier:()InternalDemoSupport distanceInMeters:startDate:endDate:;
- (double)set_nlIsWorkoutDemoData:()InternalDemoSupport;
- (uint64_t)_nlIsWorkoutDemoData;
@end

@implementation HKStatistics(InternalDemoSupport)

- (uint64_t)_nlIsWorkoutDemoData
{
  location[2] = self;
  location[1] = a2;
  location[0] = objc_getAssociatedObject(self, sel__nlIsWorkoutDemoData);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 0;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (double)set_nlIsWorkoutDemoData:()InternalDemoSupport
{
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a3 & 1];
  objc_setAssociatedObject(self, sel__nlIsWorkoutDemoData, v5, 1);
  *&result = MEMORY[0x277D82BD8](v5).n128_u64[0];
  return result;
}

+ (id)_nlDistanceStatisticsForQuantityIdentifier:()InternalDemoSupport distanceInMeters:startDate:endDate:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v26 = a6;
  v25 = 0;
  objc_storeStrong(&v25, a4);
  v24 = 0;
  objc_storeStrong(&v24, a5);
  v23 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:location[0]];
  v6 = objc_alloc(MEMORY[0x277CCDA50]);
  v22 = [v6 initWithDataType:v23 startDate:v25 endDate:v24];
  v14 = MEMORY[0x277CCD7E8];
  meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
  v15 = [v14 quantityWithUnit:v26 doubleValue:?];
  [v22 setSumQuantity:?];
  MEMORY[0x277D82BD8](v15);
  *&v7 = MEMORY[0x277D82BD8](meterUnit).n128_u64[0];
  v17 = MEMORY[0x277CCD7E8];
  meterUnit2 = [MEMORY[0x277CCDAB0] meterUnit];
  v18 = [v17 quantityWithUnit:v26 doubleValue:?];
  [v22 setMostRecentQuantity:?];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](meterUnit2);
  v8 = objc_alloc(MEMORY[0x277CCA970]);
  v20 = [v8 initWithStartDate:v25 endDate:v24];
  [v22 setMostRecentQuantityDateInterval:?];
  *&v9 = MEMORY[0x277D82BD8](v20).n128_u64[0];
  [v22 set_nlIsWorkoutDemoData:{1, v9}];
  v21 = MEMORY[0x277D82BE0](v22);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v25, 0);
  objc_storeStrong(location, 0);

  return v21;
}

+ (id)_nlActiveEnergyStatisticsForQuantity:()InternalDemoSupport startDate:endDate:
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, obj);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v14 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCC918]];
  v5 = objc_alloc(MEMORY[0x277CCDA50]);
  v13 = [v5 initWithDataType:v14 startDate:v16 endDate:v15];
  [v13 setSumQuantity:location[0]];
  [v13 setMostRecentQuantity:location[0]];
  v6 = objc_alloc(MEMORY[0x277CCA970]);
  v11 = [v6 initWithStartDate:v16 endDate:v15];
  [v13 setMostRecentQuantityDateInterval:?];
  *&v7 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  [v13 set_nlIsWorkoutDemoData:{1, v7}];
  v12 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);

  return v12;
}

@end