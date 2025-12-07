@interface PGGraphMeaningEdge
+ (MAEdgeFilter)highPrecisionFilter;
+ (id)filter;
+ (id)propertyDictionaryWithConfidence:(double)confidence isHighPrecision:(BOOL)precision;
- (BOOL)hasProperties:(id)properties;
- (NSString)meaningLabel;
- (PGGraphMeaningEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphMeaningEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toMeaningNode:(id)meaningNode confidence:(double)confidence isHighPrecision:(BOOL)precision;
- (id)label;
- (id)propertyDictionary;
- (unsigned)domain;
@end

@implementation PGGraphMeaningEdge

- (id)propertyDictionary
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"confidence";
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v7[1] = @"isHighPrecision";
  v8[0] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:*(self + 40) & 1];
  v8[1] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    v10 = 0;
    if (!v6 || ([v6 doubleValue], v8 == self->_confidence))
    {

      v9 = [v5 objectForKeyedSubscript:@"isHighPrecision"];
      v7 = v9;
      if (!v9 || [v9 BOOLValue] == (*(self + 40) & 1))
      {
        v10 = 1;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  return v10;
}

- (NSString)meaningLabel
{
  targetNode = [(MAEdge *)self targetNode];
  label = [targetNode label];

  return label;
}

- (unsigned)domain
{
  v2 = objc_opt_class();

  return [v2 domain];
}

- (id)label
{
  v2 = objc_opt_class();

  return [v2 label];
}

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = PGGraphMeaningEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v11 edgeDescription];
  meaningLabel = [(PGGraphMeaningEdge *)self meaningLabel];
  if ([(PGGraphMeaningEdge *)self isReliable])
  {
    v6 = @"Reliable";
  }

  else
  {
    v6 = @"Unreliable";
  }

  if ([(PGGraphMeaningEdge *)self isHighPrecision])
  {
    v7 = @"High Precision";
  }

  else
  {
    v7 = @"Not High Precision";
  }

  [(PGGraphMeaningEdge *)self confidence];
  v9 = [v3 stringWithFormat:@"%@ (%@, %@, %@, %f)", edgeDescription, meaningLabel, v6, v7, v8];

  return v9;
}

- (PGGraphMeaningEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v18 = [propertiesCopy objectForKeyedSubscript:@"confidence"];

  if (!v18)
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:propertiesCopy];
    *&v20 = weight;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    [v19 setObject:v21 forKeyedSubscript:@"confidence"];

    propertiesCopy = v19;
  }

  v22 = [(PGGraphMeaningEdge *)self initWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy properties:propertiesCopy];

  return v22;
}

- (PGGraphMeaningEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v13 = [propertiesCopy objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [propertiesCopy objectForKeyedSubscript:@"isHighPrecision"];

  bOOLValue = [v16 BOOLValue];
  v18 = [(PGGraphMeaningEdge *)self initFromMomentNode:nodeCopy toMeaningNode:targetNodeCopy confidence:bOOLValue isHighPrecision:v15];

  return v18;
}

- (id)initFromMomentNode:(id)node toMeaningNode:(id)meaningNode confidence:(double)confidence isHighPrecision:(BOOL)precision
{
  v9.receiver = self;
  v9.super_class = PGGraphMeaningEdge;
  result = [(PGGraphEdge *)&v9 initWithSourceNode:node targetNode:meaningNode];
  if (result)
  {
    *(result + 6) = confidence;
    *(result + 40) = *(result + 40) & 0xFE | precision;
  }

  return result;
}

+ (id)propertyDictionaryWithConfidence:(double)confidence isHighPrecision:(BOOL)precision
{
  precisionCopy = precision;
  v10[2] = *MEMORY[0x277D85DE8];
  v9[0] = @"confidence";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
  v9[1] = @"isHighPrecision";
  v10[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:precisionCopy];
  v10[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];

  return v7;
}

+ (MAEdgeFilter)highPrecisionFilter
{
  v7[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v6 = @"isHighPrecision";
  v7[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  v4 = [filter filterBySettingProperties:v3];

  return v4;
}

+ (id)filter
{
  label = [objc_opt_class() label];
  v3 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:label domain:{objc_msgSend(objc_opt_class(), "domain")}];

  return v3;
}

@end