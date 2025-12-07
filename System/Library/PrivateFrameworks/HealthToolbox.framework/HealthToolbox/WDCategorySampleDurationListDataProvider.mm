@interface WDCategorySampleDurationListDataProvider
- (id)sampleTypes;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDCategorySampleDurationListDataProvider

- (id)sampleTypes
{
  v6[1] = *MEMORY[0x277D85DE8];
  displayType = [(WDSampleListDataProvider *)self displayType];
  sampleType = [displayType sampleType];
  v6[0] = sampleType;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];

  return v4;
}

- (id)titleForSection:(unint64_t)section
{
  if ([(WDSampleListDataProvider *)self numberOfObjectsForSection:section])
  {
    displayType = [(WDSampleListDataProvider *)self displayType];
    localization = [displayType localization];
    displayName = [localization displayName];
  }

  else
  {
    displayName = 0;
  }

  return displayName;
}

@end