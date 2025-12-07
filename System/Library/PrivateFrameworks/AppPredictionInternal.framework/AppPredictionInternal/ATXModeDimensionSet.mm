@interface ATXModeDimensionSet
- (ATXModeDimensionSet)initWithMode:(id)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)coreAnalyticsDictionary;
- (id)powerset;
@end

@implementation ATXModeDimensionSet

- (ATXModeDimensionSet)initWithMode:(id)mode
{
  modeCopy = mode;
  v9.receiver = self;
  v9.super_class = ATXModeDimensionSet;
  v6 = [(ATXModeDimensionSet *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_mode, mode);
  }

  return v7;
}

- (id)powerset
{
  v3 = objc_opt_new();
  [v3 addObject:self];
  v4 = [[ATXModeDimensionSet alloc] initWithMode:self->_mode];
  [v3 addObject:v4];

  allObjects = [v3 allObjects];

  return allObjects;
}

- (id)coreAnalyticsDictionary
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"mode";
  mode = self->_mode;
  null = mode;
  if (!mode)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v7[0] = null;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  if (!mode)
  {
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [ATXModeDimensionSet allocWithZone:zone];
  mode = self->_mode;

  return [(ATXModeDimensionSet *)v4 initWithMode:mode];
}

@end