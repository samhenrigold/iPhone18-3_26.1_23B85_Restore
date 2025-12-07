@interface PGCityMeaningAggregationMemoryGenerator
+ (id)supportedMeaningLabels;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
@end

@implementation PGCityMeaningAggregationMemoryGenerator

+ (id)supportedMeaningLabels
{
  v4[6] = *MEMORY[0x277D85DE8];
  v4[0] = @"Entertainment";
  v4[1] = @"Performance";
  v4[2] = @"SportEvent";
  v4[3] = @"NightOut";
  v4[4] = @"Lunch";
  v4[5] = @"Dinner";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:6];

  return v2;
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 11008;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 11009;
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