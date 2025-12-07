@interface SKGEdges
+ (MAEdgeFilter)filter;
+ (id)edgesInGraph:(id)graph;
+ (id)edgesWithEdge:(id)edge inGraph:(id)graph;
+ (id)labels;
- (void)enumerateEdgesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation SKGEdges

+ (id)labels
{
  v7[13] = *MEMORY[0x277D85DE8];
  p_name = &OBJC_PROTOCOL___SKDEventInfo.name;
  {
    v5 = MEMORY[0x277CBEB98];
    v7[0] = SKGPeoplePersonUser;
    v7[1] = SKGPeoplePersonIdentifier;
    v7[2] = SKGPeopleContactIdentifier;
    v7[3] = SKGPeoplePhotoPersonIdentifier;
    v7[4] = SKGPeopleEntityIdentifier;
    v7[5] = SKGPeopleDisplayName;
    v7[6] = SKGPeopleName;
    v7[7] = SKGPeopleNameKey;
    v7[8] = SKGPeopleEmailAddress;
    v7[9] = SKGPeoplePhoneNumber;
    v7[10] = SKGContentReferenceIdentifier;
    v7[11] = SKGContentPersonaIdentifier;
    v7[12] = SKGContentDomainIdentifier;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:13];
    +[SKGEdges labels]::sEdgeLabels = [v5 setWithArray:v6];

    p_name = (&OBJC_PROTOCOL___SKDEventInfo + 8);
  }

  v3 = p_name[441];

  return v3;
}

+ (MAEdgeFilter)filter
{
  edgeClass = [self edgeClass];

  return [edgeClass filter];
}

+ (id)edgesWithEdge:(id)edge inGraph:(id)graph
{
  edgeCopy = edge;
  graphCopy = graph;
  sourceNode = [edgeCopy sourceNode];
  v8 = [SKGNodes nodesWithNode:sourceNode inGraph:graphCopy];

  targetNode = [edgeCopy targetNode];
  v10 = [SKGNodes nodesWithNode:targetNode inGraph:graphCopy];

  v11 = objc_alloc(MEMORY[0x277D22C20]);
  label = [edgeCopy label];
  domain = [edgeCopy domain];
  propertyDictionary = [edgeCopy propertyDictionary];
  v15 = [v11 initWithLabel:label domain:domain properties:propertyDictionary];

  v16 = [(MAEdgeCollection *)SKGInteractionEdges edgesFromNodes:v8 toNodes:v10 matchingFilter:v15];

  return v16;
}

+ (id)edgesInGraph:(id)graph
{
  graphCopy = graph;
  filter = [self filter];
  graph = [graphCopy graph];
  v7 = [self edgesMatchingFilter:filter inGraph:graph];

  return v7;
}

- (void)enumerateEdgesInGraph:(id)graph usingBlock:(id)block
{
  blockCopy = block;
  v6 = objc_autoreleasePoolPush();
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__SKGEdges_enumerateEdgesInGraph_usingBlock___block_invoke;
  v8[3] = &unk_27893DB70;
  v7 = blockCopy;
  v9 = v7;
  [(MAElementCollection *)self enumerateIdentifiersAsCollectionsWithBlock:v8];

  objc_autoreleasePoolPop(v6);
}

void __45__SKGEdges_enumerateEdgesInGraph_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  [v5 setEdgeIdentifier:a2];
  (*(*(a1 + 32) + 16))();
}

@end