@interface WDInsulinDeliveryListDataProvider
- (id)sampleTypes;
- (id)textForObject:(id)object;
- (id)titleForSection:(unint64_t)section;
@end

@implementation WDInsulinDeliveryListDataProvider

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
  v23[5] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  displayType = [(WDSampleListDataProvider *)self displayType];
  unitController = [(WDSampleListDataProvider *)self unitController];
  v22 = displayType;
  v7 = [unitController unitForDisplayType:displayType];
  v8 = MEMORY[0x277CCABB0];
  quantity = [objectCopy quantity];
  [quantity doubleValueForUnit:v7];
  v10 = [v8 numberWithDouble:?];

  v11 = HKFormattedStringFromValue();
  v12 = [unitController localizedDisplayNameForUnit:v7 value:v10];
  metadata = [objectCopy metadata];

  v14 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCC4C8]];
  integerValue = [v14 integerValue];

  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"INSULIN_DELIVERY_REASON_%zd", integerValue];
  v23[0] = v11;
  v23[1] = @" ";
  v23[2] = v12;
  v23[3] = @" ";
  v17 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.HealthUI"];
  v18 = [v17 localizedStringForKey:v16 value:&stru_28641D9B8 table:@"HealthUI-Localizable"];
  v23[4] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:5];
  v20 = HKUIJoinStringsForLocale();

  return v20;
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