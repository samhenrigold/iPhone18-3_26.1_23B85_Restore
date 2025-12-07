@interface ICASEnabledFiltersArrayData
- (ICASEnabledFiltersArrayData)initWithFilterType:(id)type filterValue:(id)value;
- (id)toDict;
@end

@implementation ICASEnabledFiltersArrayData

- (ICASEnabledFiltersArrayData)initWithFilterType:(id)type filterValue:(id)value
{
  typeCopy = type;
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = ICASEnabledFiltersArrayData;
  v9 = [(ICASEnabledFiltersArrayData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_filterType, type);
    objc_storeStrong(&v10->_filterValue, value);
  }

  return v10;
}

- (id)toDict
{
  v12[2] = *MEMORY[0x277D85DE8];
  v11[0] = @"filterType";
  filterType = [(ICASEnabledFiltersArrayData *)self filterType];
  if (filterType)
  {
    filterType2 = [(ICASEnabledFiltersArrayData *)self filterType];
  }

  else
  {
    filterType2 = objc_opt_new();
  }

  v5 = filterType2;
  v11[1] = @"filterValue";
  v12[0] = filterType2;
  filterValue = [(ICASEnabledFiltersArrayData *)self filterValue];
  if (filterValue)
  {
    filterValue2 = [(ICASEnabledFiltersArrayData *)self filterValue];
  }

  else
  {
    filterValue2 = objc_opt_new();
  }

  v8 = filterValue2;
  v12[1] = filterValue2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v9;
}

@end