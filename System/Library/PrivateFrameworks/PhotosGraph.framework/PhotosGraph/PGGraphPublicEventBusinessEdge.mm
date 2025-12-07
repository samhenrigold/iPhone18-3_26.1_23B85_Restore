@interface PGGraphPublicEventBusinessEdge
+ (id)filter;
- (PGGraphPublicEventBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (id)initFromPublicEventNode:(id)node toBusinessNode:(id)businessNode confidence:(double)confidence hasRoutineInfo:(BOOL)info universalStartDate:(id)date universalEndDate:(id)endDate;
@end

@implementation PGGraphPublicEventBusinessEdge

- (PGGraphPublicEventBusinessEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v13 = [propertiesCopy objectForKeyedSubscript:@"confidence"];
  [v13 doubleValue];
  v15 = v14;

  v16 = [propertiesCopy objectForKeyedSubscript:@"routine"];
  bOOLValue = [v16 BOOLValue];

  v18 = [propertiesCopy objectForKeyedSubscript:@"universalStartDate"];
  if (v18)
  {
    v19 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v18 doubleValue];
    v20 = [v19 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v20 = 0;
  }

  v21 = [propertiesCopy objectForKeyedSubscript:@"universalEndDate"];

  if (v21)
  {
    v22 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v21 doubleValue];
    v23 = [v22 initWithTimeIntervalSince1970:?];
  }

  else
  {
    v23 = 0;
  }

  v24 = [(PGGraphPublicEventBusinessEdge *)self initFromPublicEventNode:nodeCopy toBusinessNode:targetNodeCopy confidence:bOOLValue hasRoutineInfo:v20 universalStartDate:v23 universalEndDate:v15];

  return v24;
}

- (id)initFromPublicEventNode:(id)node toBusinessNode:(id)businessNode confidence:(double)confidence hasRoutineInfo:(BOOL)info universalStartDate:(id)date universalEndDate:(id)endDate
{
  v9.receiver = self;
  v9.super_class = PGGraphPublicEventBusinessEdge;
  return [(PGGraphBusinessEdge *)&v9 initFromSourceNode:node toBusinessNode:businessNode confidence:info hasRoutineInfo:date universalStartDate:endDate universalEndDate:confidence];
}

+ (id)filter
{
  v2 = [objc_alloc(MEMORY[0x277D22C20]) initWithLabel:@"PUBLIC_EVENT_BUSINESS" domain:900];

  return v2;
}

@end