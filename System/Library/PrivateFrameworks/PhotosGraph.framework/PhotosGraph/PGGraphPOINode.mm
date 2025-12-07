@interface PGGraphPOINode
+ (id)_localizationKeyForPOINode:(id)node;
+ (id)filter;
+ (id)filterWithLabel:(id)label;
+ (id)filterWithLabels:(id)labels;
+ (id)momentOfPOI;
+ (id)validPOILabels;
- (NSArray)localizedSynonyms;
- (NSString)featureIdentifier;
- (NSString)localizedName;
- (NSString)pg_topic;
- (PGGraphPOINode)initWithLabel:(id)label;
- (PGGraphPOINodeCollection)collection;
@end

@implementation PGGraphPOINode

- (NSString)pg_topic
{
  label = [(PGGraphPOINode *)self label];
  v3 = +[PGGraphPOINode validPOILabels];
  v4 = [v3 containsObject:label];

  if (v4)
  {
    v5 = label;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)featureIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  label = [(PGGraphPOINode *)self label];
  v7 = [v3 stringWithFormat:@"%@|%@", v5, label];

  return v7;
}

- (NSArray)localizedSynonyms
{
  v2 = [objc_opt_class() _localizationKeyForPOINode:self];
  v3 = [PGGraphSynonymSupportHelper localizedSynonymsForLocalizationKey:v2];

  return v3;
}

- (NSString)localizedName
{
  v2 = [objc_opt_class() _localizationKeyForPOINode:self];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:v2 value:v2 table:@"Localizable"];

  return v4;
}

- (PGGraphPOINodeCollection)collection
{
  v2 = [(MANodeCollection *)[PGGraphPOINodeCollection alloc] initWithNode:self];

  return v2;
}

- (PGGraphPOINode)initWithLabel:(id)label
{
  labelCopy = label;
  v9.receiver = self;
  v9.super_class = PGGraphPOINode;
  v5 = [(PGGraphNode *)&v9 init];
  if (v5)
  {
    v6 = [labelCopy copy];
    label = v5->_label;
    v5->_label = v6;
  }

  return v5;
}

+ (id)momentOfPOI
{
  v2 = +[PGGraphPOIEdge filter];
  inRelation = [v2 inRelation];

  return inRelation;
}

+ (id)filterWithLabels:(id)labels
{
  v3 = MEMORY[0x277D22C78];
  labelsCopy = labels;
  v5 = [v3 alloc];
  v6 = [v5 initWithLabels:labelsCopy domain:501 properties:MEMORY[0x277CBEC10]];

  return v6;
}

+ (id)filterWithLabel:(id)label
{
  v3 = MEMORY[0x277D22C78];
  labelCopy = label;
  v5 = [[v3 alloc] initWithLabel:labelCopy domain:501];

  return v5;
}

+ (id)_localizationKeyForPOINode:(id)node
{
  v11 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  label = [nodeCopy label];
  v5 = localizationKeyForPOILabel(label);
  if (!v5)
  {
    v6 = +[PGLogging sharedLogging];
    loggingConnection = [v6 loggingConnection];

    if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
    {
      v9 = 138412290;
      v10 = nodeCopy;
      _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "Trying to localize node with unsupported label/domain: %@", &v9, 0xCu);
    }
  }

  return v5;
}

+ (id)validPOILabels
{
  v5[14] = *MEMORY[0x277D85DE8];
  v5[0] = @"Restaurant";
  v5[1] = @"Nightlife";
  v5[2] = @"Travel";
  v5[3] = @"Culture";
  v5[4] = @"Museum";
  v5[5] = @"Entertainment";
  v5[6] = @"AmusementPark";
  v5[7] = @"Park";
  v5[8] = @"Performance";
  v5[9] = @"Stadium";
  v5[10] = @"Activity";
  v5[11] = @"Diving";
  v5[12] = @"Hiking";
  v5[13] = @"Hospital";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:14];
  v3 = [MEMORY[0x277CBEB98] setWithArray:v2];

  return v3;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C78]) initWithLabel:0 domain:501];

  return v2;
}

@end