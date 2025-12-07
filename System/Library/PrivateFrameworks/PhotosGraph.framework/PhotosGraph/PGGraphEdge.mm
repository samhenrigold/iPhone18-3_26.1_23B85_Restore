@interface PGGraphEdge
- (BOOL)isEqualToEdge:(id)edge;
- (PGGraphEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties;
- (PGGraphEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (PGGraphEdge)initWithSourceNode:(id)node targetNode:(id)targetNode;
- (id)keywordDescription;
- (id)propertyForKey:(id)key;
- (unint64_t)propertiesCount;
- (void)setWeight:(float)weight;
@end

@implementation PGGraphEdge

- (unint64_t)propertiesCount
{
  v2 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v2);
}

- (id)propertyForKey:(id)key
{
  v12 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v5 = +[PGLogging sharedLogging];
  loggingConnection = [v5 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = objc_opt_class();
  }

  v9.receiver = self;
  v9.super_class = PGGraphEdge;
  v7 = [(MAEdge *)&v9 propertyForKey:keyCopy];

  return v7;
}

- (BOOL)isEqualToEdge:(id)edge
{
  edgeCopy = edge;
  if (edgeCopy && (v5 = -[PGGraphEdge domain](self, "domain"), v5 == [edgeCopy domain]))
  {
    label = [(PGGraphEdge *)self label];
    label2 = [edgeCopy label];
    if ((label == label2 || [label isEqualToString:label2]) && -[MAEdge hasEqualPropertiesToEdge:](self, "hasEqualPropertiesToEdge:", edgeCopy))
    {
      sourceNode = [(MAEdge *)self sourceNode];
      targetNode = [(MAEdge *)self targetNode];
      sourceNode2 = [edgeCopy sourceNode];
      targetNode2 = [edgeCopy targetNode];
      v12 = (sourceNode == sourceNode2 || [sourceNode isEqualToNode:sourceNode2]) && (targetNode == targetNode2 || (objc_msgSend(targetNode, "isEqualToNode:", targetNode2) & 1) != 0);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setWeight:(float)weight
{
  v3 = PGMethodNotImplentedException(self, a2);
  objc_exception_throw(v3);
}

- (id)keywordDescription
{
  v3 = MEMORY[0x277CCACA8];
  label = [(PGGraphEdge *)self label];
  v5 = [(PGGraphEdge *)self propertyForKey:@"name"];
  v6 = [v3 stringWithFormat:@"[%@] %@", label, v5];

  return v6;
}

- (PGGraphEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  if (*MEMORY[0x277D22CA8] != weight)
  {
    __assert_rtn("[PGGraphEdge initWithLabel:sourceNode:targetNode:domain:weight:properties:]", "PGGraphEdge.m", 155, "weight == kMAElementDefaultWeight");
  }

  v19 = propertiesCopy;
  LODWORD(v18) = *MEMORY[0x277D22CA8];
  v20 = [(PGGraphEdge *)self initWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy properties:propertiesCopy, v18];

  return v20;
}

- (PGGraphEdge)initWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  LODWORD(v17) = *MEMORY[0x277D22CA8];
  v20.receiver = self;
  v20.super_class = PGGraphEdge;
  v18 = [(MAEdge *)&v20 initWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy weight:propertiesCopy properties:v17];
  v19 = PGMethodNotImplentedException(v18, a2);
  objc_exception_throw(v19);
}

- (PGGraphEdge)initWithSourceNode:(id)node targetNode:(id)targetNode
{
  v5.receiver = self;
  v5.super_class = PGGraphEdge;
  return [(MAEdge *)&v5 initWithSourceNode:node targetNode:targetNode];
}

@end