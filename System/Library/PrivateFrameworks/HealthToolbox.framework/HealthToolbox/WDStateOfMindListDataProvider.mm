@interface WDStateOfMindListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)object;
@end

@implementation WDStateOfMindListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  displayType = [(WDSampleListDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v6[0] = sampleType;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)textForObject:(id)object
{
  valenceClassification = [object valenceClassification];

  return MEMORY[0x28216C818](valenceClassification);
}

@end