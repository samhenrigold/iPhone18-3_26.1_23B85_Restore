@interface CADRespondedEventsPredicate
+ (id)predicate;
- (id)defaultPropertiesToLoad;
- (id)predicateFormat;
@end

@implementation CADRespondedEventsPredicate

+ (id)predicate
{
  objc_opt_class();
  v2 = objc_opt_new();

  return v2;
}

- (id)defaultPropertiesToLoad
{
  v8[5] = *MEMORY[0x277D85DE8];
  v2 = CADEKPersistentEventDefaultPropertiesToLoad();
  v3 = *MEMORY[0x277CF73C8];
  v8[0] = *MEMORY[0x277CF72B0];
  v8[1] = v3;
  v4 = *MEMORY[0x277CF7340];
  v8[2] = *MEMORY[0x277CF7328];
  v8[3] = v4;
  v8[4] = *MEMORY[0x277CF7320];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:5];
  v6 = [v2 arrayByAddingObjectsFromArray:v5];

  return v6;
}

- (id)predicateFormat
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end