@interface WDHeartbeatSequenceListDataProvider
- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler;
- (id)sampleTypes;
- (id)textForObject:(id)object;
- (id)viewControllerForItemAtIndexPath:(id)path;
@end

@implementation WDHeartbeatSequenceListDataProvider

- (id)createQueryForSampleType:(id)type predicate:(id)predicate limit:(int64_t)limit sortDescriptors:(id)descriptors resultsHandler:(id)handler
{
  v11 = MEMORY[0x277CCD8D0];
  handlerCopy = handler;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  typeCopy = type;
  v16 = [[v11 alloc] initWithSampleType:typeCopy predicate:predicateCopy limit:limit sortDescriptors:descriptorsCopy resultsHandler:handlerCopy];

  return v16;
}

- (id)sampleTypes
{
  v5[1] = *MEMORY[0x277D85DE8];
  heartbeatSeriesType = [MEMORY[0x277CCD920] heartbeatSeriesType];
  v5[0] = heartbeatSeriesType;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

- (id)textForObject:(id)object
{
  endDate = [object endDate];
  v4 = HKFormattedStringForDate();

  return v4;
}

- (id)viewControllerForItemAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  section = [pathCopy section];

  v7 = [(WDSampleListDataProvider *)self objectAtIndex:v5 forSection:section];
  v8 = [objc_alloc(MEMORY[0x277D12818]) initWithSample:v7 usingInsetStyling:1 profileName:0 delegate:self];

  return v8;
}

@end