@interface CADNonRecurringEventsPredicate
- (CADNonRecurringEventsPredicate)initWithStartDate:(id)date endDate:(id)endDate calendarIDs:(id)ds;
- (id)defaultPropertiesToLoad;
- (id)relatedObjectPropertiesToLoad;
@end

@implementation CADNonRecurringEventsPredicate

- (CADNonRecurringEventsPredicate)initWithStartDate:(id)date endDate:(id)endDate calendarIDs:(id)ds
{
  v19[4] = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  endDateCopy = endDate;
  dateCopy = date;
  v11 = [[CADPropertyFilter alloc] initWithProperty:5 comparison:5 dateValue:dateCopy];

  v12 = [[CADPropertyFilter alloc] initWithProperty:6 comparison:2 dateValue:endDateCopy];
  v13 = [[CADPropertyFilter alloc] initWithProperty:10 comparison:0 integerValue:0];
  v14 = [[CADPropertyFilter alloc] initWithProperty:11 comparison:0 integerValue:0];
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;
  v19[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:4];
  v18.receiver = self;
  v18.super_class = CADNonRecurringEventsPredicate;
  v16 = [(CADPropertySearchPredicate *)&v18 initWithEntityType:2 filters:v15 calendars:dsCopy];

  return v16;
}

- (id)defaultPropertiesToLoad
{
  v8[3] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = CADNonRecurringEventsPredicate;
  defaultPropertiesToLoad = [(CADPropertySearchPredicate *)&v7 defaultPropertiesToLoad];
  v3 = *MEMORY[0x277CF7268];
  v8[0] = *MEMORY[0x277CF71F8];
  v8[1] = v3;
  v8[2] = *MEMORY[0x277CF7368];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:3];
  v5 = [defaultPropertiesToLoad arrayByAddingObjectsFromArray:v4];

  return v5;
}

- (id)relatedObjectPropertiesToLoad
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16[0] = &unk_2837C73C0;
  v2 = *MEMORY[0x277CF73A8];
  v15[0] = *MEMORY[0x277CF73A0];
  v15[1] = v2;
  v15[2] = *MEMORY[0x277CF73B0];
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
  v17[0] = v3;
  v16[1] = &unk_2837C73D8;
  v4 = *MEMORY[0x277CF73F0];
  v14[0] = *MEMORY[0x277CF73C8];
  v14[1] = v4;
  v5 = *MEMORY[0x277CF7400];
  v14[2] = *MEMORY[0x277CF71E8];
  v14[3] = v5;
  v6 = *MEMORY[0x277CF73F8];
  v14[4] = *MEMORY[0x277CF7418];
  v14[5] = v6;
  v7 = *MEMORY[0x277CF7410];
  v14[6] = *MEMORY[0x277CF7408];
  v14[7] = v7;
  v8 = *MEMORY[0x277CF71E0];
  v14[8] = *MEMORY[0x277CF71D0];
  v14[9] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:10];
  v17[1] = v9;
  v16[2] = &unk_2837C73F0;
  v13 = *MEMORY[0x277CF73E8];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v17[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];

  return v11;
}

@end