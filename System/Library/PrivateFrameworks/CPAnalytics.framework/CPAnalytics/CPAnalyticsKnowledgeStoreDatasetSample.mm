@interface CPAnalyticsKnowledgeStoreDatasetSample
- (CPAnalyticsKnowledgeStoreDatasetSample)initWithIdentifier:(id)identifier andDate:(id)date forSubset:(id)subset;
- (id)metadata;
@end

@implementation CPAnalyticsKnowledgeStoreDatasetSample

- (id)metadata
{
  v11[2] = *MEMORY[0x277D85DE8];
  subset = [(CPAnalyticsKnowledgeStoreDatasetSample *)self subset];

  if (subset)
  {
    v10[0] = @"_DKPhotosMetadataKey.identifier";
    identifier = [(CPAnalyticsKnowledgeStoreDatasetSample *)self identifier];
    v10[1] = @"_DKPhotosMetadataKey.subset";
    v11[0] = identifier;
    subset2 = [(CPAnalyticsKnowledgeStoreDatasetSample *)self subset];
    v11[1] = subset2;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  else
  {
    v8 = @"_DKPhotosMetadataKey.identifier";
    identifier = [(CPAnalyticsKnowledgeStoreDatasetSample *)self identifier];
    v9 = identifier;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  }

  return v6;
}

- (CPAnalyticsKnowledgeStoreDatasetSample)initWithIdentifier:(id)identifier andDate:(id)date forSubset:(id)subset
{
  identifierCopy = identifier;
  dateCopy = date;
  subsetCopy = subset;
  v17.receiver = self;
  v17.super_class = CPAnalyticsKnowledgeStoreDatasetSample;
  v12 = [(CPAnalyticsKnowledgeStoreDatasetSample *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_identifier, identifier);
    objc_storeStrong(&v13->_date, date);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      subsetCopy = subsetCopy;
LABEL_6:
      subset = v13->_subset;
      v13->_subset = subsetCopy;

      goto LABEL_7;
    }

    if (subsetCopy)
    {
      subsetCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", subsetCopy];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v13;
}

@end