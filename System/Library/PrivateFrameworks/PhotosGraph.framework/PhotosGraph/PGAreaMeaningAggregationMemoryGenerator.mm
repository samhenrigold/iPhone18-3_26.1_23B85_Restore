@interface PGAreaMeaningAggregationMemoryGenerator
+ (id)requiredFeatureRelation;
+ (id)supportedMeaningLabels;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
@end

@implementation PGAreaMeaningAggregationMemoryGenerator

+ (id)requiredFeatureRelation
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D22C90];
  v3 = +[PGGraphMomentNode addressOfMoment];
  v8[0] = v3;
  v4 = +[PGGraphAddressNode areaOfAddress];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
  v6 = [v2 chain:v5];

  return v6;
}

+ (id)supportedMeaningLabels
{
  v4[11] = *MEMORY[0x277D85DE8];
  v4[0] = @"Hiking";
  v4[1] = @"Climbing";
  v4[2] = @"Beaching";
  v4[3] = @"Diving";
  v4[4] = @"WinterSport";
  v4[5] = @"Entertainment";
  v4[6] = @"Performance";
  v4[7] = @"SportEvent";
  v4[8] = @"NightOut";
  v4[9] = @"Lunch";
  v4[10] = @"Dinner";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:11];

  return v2;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 11006;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 11007;
  }

  loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 1024;
    v11 = typeCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v8, 0x12u);
  }

  return 0;
}

@end