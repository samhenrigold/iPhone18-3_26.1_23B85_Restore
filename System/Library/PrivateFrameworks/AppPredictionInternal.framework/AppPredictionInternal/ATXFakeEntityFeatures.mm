@interface ATXFakeEntityFeatures
- (ATXFakeEntityFeatures)init;
- (id)initFromJSON:(id)n;
- (id)jsonRepresentation;
@end

@implementation ATXFakeEntityFeatures

- (ATXFakeEntityFeatures)init
{
  v6.receiver = self;
  v6.super_class = ATXFakeEntityFeatures;
  v2 = [(ATXFakeEntityFeatures *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    identifiersAndDates = v2->_identifiersAndDates;
    v2->_identifiersAndDates = v3;
  }

  return v2;
}

- (id)initFromJSON:(id)n
{
  nCopy = n;
  v9.receiver = self;
  v9.super_class = ATXFakeEntityFeatures;
  v5 = [(ATXFakeEntityFeatures *)&v9 init];
  if (v5)
  {
    v6 = [nCopy objectForKeyedSubscript:@"identifiersAndDates"];
    identifiersAndDates = v5->_identifiersAndDates;
    v5->_identifiersAndDates = v6;
  }

  return v5;
}

- (id)jsonRepresentation
{
  v6[1] = *MEMORY[0x277D85DE8];
  identifiersAndDates = self->_identifiersAndDates;
  v5 = @"identifiersAndDates";
  v6[0] = identifiersAndDates;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end