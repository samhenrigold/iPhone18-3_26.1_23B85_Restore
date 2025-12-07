@interface ATXCoreAnalyticsModeDNDDimensions
- (ATXCoreAnalyticsModeDNDDimensions)initWithMode:(id)mode isDND:(BOOL)d;
- (ATXCoreAnalyticsModeDNDDimensions)initWithMode:(id)mode nullableIsDND:(id)d;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coreAnalyticsDictionary;
- (id)powerset;
@end

@implementation ATXCoreAnalyticsModeDNDDimensions

- (ATXCoreAnalyticsModeDNDDimensions)initWithMode:(id)mode nullableIsDND:(id)d
{
  modeCopy = mode;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = ATXCoreAnalyticsModeDNDDimensions;
  v9 = [(ATXCoreAnalyticsModeDNDDimensions *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mode, mode);
    objc_storeStrong(&v10->_isDND, d);
  }

  return v10;
}

- (ATXCoreAnalyticsModeDNDDimensions)initWithMode:(id)mode isDND:(BOOL)d
{
  dCopy = d;
  v6 = MEMORY[0x277CCABB0];
  modeCopy = mode;
  v8 = [v6 numberWithBool:dCopy];
  v9 = [(ATXCoreAnalyticsModeDNDDimensions *)self initWithMode:modeCopy nullableIsDND:v8];

  return v9;
}

- (id)powerset
{
  v3 = objc_opt_new();
  [v3 addObject:self];
  v4 = [[ATXCoreAnalyticsModeDNDDimensions alloc] initWithMode:0 nullableIsDND:0];
  [v3 addObject:v4];
  v5 = [[ATXCoreAnalyticsModeDNDDimensions alloc] initWithMode:0 nullableIsDND:self->_isDND];
  [v3 addObject:v5];
  v6 = [[ATXCoreAnalyticsModeDNDDimensions alloc] initWithMode:self->_mode nullableIsDND:0];
  [v3 addObject:v6];
  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)coreAnalyticsDictionary
{
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"mode";
  mode = self->_mode;
  null = mode;
  if (!mode)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v9[1] = @"isDND";
  v10[0] = null;
  isDND = self->_isDND;
  null2 = isDND;
  if (!isDND)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v10[1] = null2;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  if (isDND)
  {
    if (mode)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (mode)
    {
      goto LABEL_7;
    }
  }

LABEL_7:

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXCoreAnalyticsModeDNDDimensions allocWithZone:zone];
  mode = self->_mode;
  isDND = self->_isDND;

  return [(ATXCoreAnalyticsModeDNDDimensions *)v4 initWithMode:mode nullableIsDND:isDND];
}

@end