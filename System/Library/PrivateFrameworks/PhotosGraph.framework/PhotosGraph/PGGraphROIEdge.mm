@interface PGGraphROIEdge
+ (id)filter;
+ (id)filterAboveConfidence:(double)confidence;
+ (id)filterAboveConfidence:(double)confidence hasLegacyWeights:(BOOL)weights;
- (BOOL)hasProperties:(id)properties;
- (PGGraphROIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphROIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)edgeDescription;
- (id)initFromMomentNode:(id)node toROINode:(id)iNode confidence:(double)confidence;
- (id)propertyDictionary;
@end

@implementation PGGraphROIEdge

- (id)edgeDescription
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = PGGraphROIEdge;
  edgeDescription = [(PGGraphOptimizedEdge *)&v7 edgeDescription];
  v5 = [v3 stringWithFormat:@"%@ (%.2f)", edgeDescription, *&self->_confidence];

  return v5;
}

- (id)propertyDictionary
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"confidence";
  v2 = [MEMORY[0x277CCABB0] numberWithDouble:self->_confidence];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (BOOL)hasProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if (propertiesCopy && [propertiesCopy count])
  {
    v6 = [v5 objectForKeyedSubscript:@"confidence"];
    v7 = v6;
    v9 = 1;
    if (v6)
    {
      [v6 doubleValue];
      if (v8 != self->_confidence)
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (PGGraphROIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
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

  v22 = [(PGGraphROIEdge *)self initWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy properties:propertiesCopy];

  return v22;
}

- (PGGraphROIEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  v12 = [properties objectForKeyedSubscript:@"confidence"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [(PGGraphROIEdge *)self initFromMomentNode:nodeCopy toROINode:targetNodeCopy confidence:v14];
  return v15;
}

- (id)initFromMomentNode:(id)node toROINode:(id)iNode confidence:(double)confidence
{
  v7.receiver = self;
  v7.super_class = PGGraphROIEdge;
  result = [(PGGraphEdge *)&v7 initWithSourceNode:node targetNode:iNode];
  if (result)
  {
    *(result + 5) = confidence;
  }

  return result;
}

+ (id)filterAboveConfidence:(double)confidence hasLegacyWeights:(BOOL)weights
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (weights)
  {
    filter = [self filter];
    v12 = @"__weight";
    v6 = objc_alloc(MEMORY[0x277D22B98]);
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
    v8 = [v6 initWithComparator:5 value:v7];
    v13[0] = v8;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v10 = [filter filterBySettingProperties:v9];
  }

  else
  {
    v10 = [self filterAboveConfidence:confidence];
  }

  return v10;
}

+ (id)filterAboveConfidence:(double)confidence
{
  v12[1] = *MEMORY[0x277D85DE8];
  filter = [self filter];
  v11 = @"confidence";
  v5 = objc_alloc(MEMORY[0x277D22B98]);
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:confidence];
  v7 = [v5 initWithComparator:5 value:v6];
  v12[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v9 = [filter filterBySettingProperties:v8];

  return v9;
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"ROI" domain:502];

  return v2;
}

@end