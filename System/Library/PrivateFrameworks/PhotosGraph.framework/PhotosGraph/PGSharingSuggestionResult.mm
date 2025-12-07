@interface PGSharingSuggestionResult
- (NSDictionary)dictionaryRepresentation;
- (PGSharingSuggestionResult)initWithPerson:(id)person weight:(double)weight sourceWeight:(double)sourceWeight sourceName:(id)name;
- (id)description;
- (void)mergeWithSuggestionResult:(id)result;
@end

@implementation PGSharingSuggestionResult

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGSharingSuggestionResult;
  v4 = [(PGSharingSuggestionResult *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@ - person:%@ weight:%.2f sourceWeight:%.2f sources:%@", v4, self->_person, *&self->_weight, *&self->_sourceWeight, self->_sourceNames];

  return v5;
}

- (NSDictionary)dictionaryRepresentation
{
  v24[7] = *MEMORY[0x277D85DE8];
  person = [(PGSharingSuggestionResult *)self person];
  contactIdentifier = [person contactIdentifier];

  if (![(__CFString *)contactIdentifier length]&& [(PGSharingSuggestionResult *)self useContactSuggestion])
  {
    person2 = [(PGSharingSuggestionResult *)self person];
    suggestedContactIdentifier = [person2 suggestedContactIdentifier];

    contactIdentifier = suggestedContactIdentifier;
  }

  v23[0] = @"localIdentifier";
  person3 = [(PGSharingSuggestionResult *)self person];
  localIdentifier = [person3 localIdentifier];
  v9 = localIdentifier;
  if (localIdentifier)
  {
    v10 = localIdentifier;
  }

  else
  {
    v10 = &stru_2843F5C58;
  }

  if (contactIdentifier)
  {
    v11 = contactIdentifier;
  }

  else
  {
    v11 = &stru_2843F5C58;
  }

  v24[0] = v10;
  v24[1] = v11;
  v23[1] = @"contactIdentifier";
  v23[2] = @"displayName";
  person4 = [(PGSharingSuggestionResult *)self person];
  fullName = [person4 fullName];
  v14 = fullName;
  if (fullName)
  {
    v15 = fullName;
  }

  else
  {
    v15 = &stru_2843F5C58;
  }

  v24[2] = v15;
  v23[3] = @"score";
  v16 = MEMORY[0x277CCABB0];
  [(PGSharingSuggestionResult *)self score];
  v17 = [v16 numberWithDouble:?];
  v24[3] = v17;
  v23[4] = @"weight";
  v18 = [MEMORY[0x277CCABB0] numberWithDouble:self->_weight];
  v24[4] = v18;
  v23[5] = @"sourceWeight";
  v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_sourceWeight];
  v24[5] = v19;
  v23[6] = @"sourceNames";
  sourceNames = [(PGSharingSuggestionResult *)self sourceNames];
  v24[6] = sourceNames;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:7];

  return v21;
}

- (void)mergeWithSuggestionResult:(id)result
{
  resultCopy = result;
  [resultCopy weight];
  sourceWeight = self->_sourceWeight;
  self->_weight = v5 + self->_weight;
  if (sourceWeight > 0.25 || ([resultCopy sourceWeight], v6 > 0.25))
  {
    [resultCopy sourceWeight];
    self->_sourceWeight = v7 + self->_sourceWeight;
  }

  sourceNames = self->_sourceNames;
  sourceNames = [resultCopy sourceNames];
  v10 = [(NSArray *)sourceNames arrayByAddingObjectsFromArray:sourceNames];
  v11 = self->_sourceNames;
  self->_sourceNames = v10;
}

- (PGSharingSuggestionResult)initWithPerson:(id)person weight:(double)weight sourceWeight:(double)sourceWeight sourceName:(id)name
{
  v19[1] = *MEMORY[0x277D85DE8];
  personCopy = person;
  nameCopy = name;
  v18.receiver = self;
  v18.super_class = PGSharingSuggestionResult;
  v13 = [(PGSharingSuggestionResult *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_person, person);
    v14->_weight = weight;
    v14->_sourceWeight = sourceWeight;
    v19[0] = nameCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    sourceNames = v14->_sourceNames;
    v14->_sourceNames = v15;

    v14->_useContactSuggestion = 0;
  }

  return v14;
}

@end