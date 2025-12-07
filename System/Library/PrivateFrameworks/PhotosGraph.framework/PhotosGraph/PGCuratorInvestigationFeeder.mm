@interface PGCuratorInvestigationFeeder
- (PGCuratorInvestigationFeeder)initWithItems:(id)items;
- (id)approximateLocation;
- (id)localEndDateComponents;
- (id)localStartDateComponents;
- (id)privateItems;
- (id)sharedItems;
- (id)universalEndDate;
- (id)universalStartDate;
@end

@implementation PGCuratorInvestigationFeeder

- (id)sharedItems
{
  items = self->_items;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == YES"];
  v4 = [(NSArray *)items filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)privateItems
{
  items = self->_items;
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"clsIsInSharedLibrary == NO"];
  v4 = [(NSArray *)items filteredArrayUsingPredicate:v3];

  return v4;
}

- (id)approximateLocation
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_items;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        clsLocation = [*(*(&v10 + 1) + 8 * i) clsLocation];
        if (clsLocation)
        {
          v8 = clsLocation;
          goto LABEL_11;
        }
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)localEndDateComponents
{
  lastObject = [(NSArray *)self->_items lastObject];
  cls_localDateComponents = [lastObject cls_localDateComponents];

  return cls_localDateComponents;
}

- (id)localStartDateComponents
{
  firstObject = [(NSArray *)self->_items firstObject];
  cls_localDateComponents = [firstObject cls_localDateComponents];

  return cls_localDateComponents;
}

- (id)universalEndDate
{
  lastObject = [(NSArray *)self->_items lastObject];
  cls_universalDate = [lastObject cls_universalDate];

  return cls_universalDate;
}

- (id)universalStartDate
{
  firstObject = [(NSArray *)self->_items firstObject];
  cls_universalDate = [firstObject cls_universalDate];

  return cls_universalDate;
}

- (PGCuratorInvestigationFeeder)initWithItems:(id)items
{
  v13[2] = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = PGCuratorInvestigationFeeder;
  v5 = [(CLSInvestigationFeeder *)&v12 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"cls_universalDate" ascending:1];
    v13[0] = v6;
    v7 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"clsIdentifier" ascending:1];
    v13[1] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
    v9 = [itemsCopy sortedArrayUsingDescriptors:v8];
    items = v5->_items;
    v5->_items = v9;
  }

  return v5;
}

@end