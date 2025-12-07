@interface MAGraph
+ (BOOL)populateGraph:(id)graph withDefinitions:(id)definitions constraints:(id)constraints error:(id *)error;
+ (BOOL)scanGraphElementOptionsString:(id)string minimum:(unint64_t *)minimum maximum:(unint64_t *)maximum error:(id *)error;
+ (BOOL)scanGraphElementString:(id)string type:(unint64_t *)type optionalName:(id *)name label:(id *)label optionalDomains:(id *)domains optionalProperties:(id *)properties error:(id *)error;
+ (BOOL)scanMatchString:(id)string definitions:(id *)definitions constraints:(id *)constraints forCreation:(BOOL)creation error:(id *)error;
+ (MAGraph)graphWithDefinitions:(id)definitions constraints:(id)constraints error:(id *)error;
+ (MAGraph)graphWithMergedGraphs:(id)graphs strictNodes:(BOOL)nodes strictEdges:(BOOL)edges;
+ (MAGraph)graphWithVisualString:(id)string error:(id *)error;
+ (id)defaultSpecification;
+ (id)graph;
+ (id)graphJSONURLWithPath:(id)path andName:(id)name;
+ (id)graphMLURLWithPath:(id)path andName:(id)name;
+ (id)persistentStoreURLWithPath:(id)path andName:(id)name;
+ (id)scanGraphConstraintString:(id)string error:(id *)error;
+ (id)visualStringWithFormat:(id)format elements:(id)elements;
+ (void)initialize;
- (BOOL)_matchNode:(id)node usingAbstractNode:(id)abstractNode fromEdge:(id)edge atIteration:(unint64_t)iteration withDefinitions:(id)definitions constraints:(id)constraints unusedConstraints:(id)unusedConstraints andSubGraph:(id)self0 matchingNodeQueue:(id)self1;
- (BOOL)_shouldFail;
- (BOOL)conformsToGraphSchema:(id)schema;
- (BOOL)copyPersistentStoreToURL:(id)l error:(id *)error;
- (BOOL)findAndResolveUniqueEdge:(id)edge;
- (BOOL)findAndResolveUniqueNode:(id)node;
- (BOOL)isEqual:(id)equal;
- (BOOL)isReadOnly;
- (BOOL)migratePersistentStoreToURL:(id)l error:(id *)error;
- (BOOL)noFatalError;
- (BOOL)updateGraphWithVisualString:(id)string;
- (BOOL)usesClassADataProtection;
- (BOOL)usesClassBDataProtection;
- (BOOL)usesClassCDataProtection;
- (BOOL)writeDataToURL:(id)l error:(id *)error;
- (BOOL)writeGraphJSONToURL:(id)l error:(id *)error;
- (MAGraph)initWithGraphJSONURL:(id)l error:(id *)error;
- (MAGraph)initWithGraphMLURL:(id)l error:(id *)error;
- (MAGraph)initWithPersistenceOptions:(int64_t)options;
- (MAGraph)initWithPersistentStoreURL:(id)l options:(int64_t)options error:(id *)error;
- (MAGraph)initWithSpecification:(id)specification;
- (MAGraph)initWithSpecification:(id)specification dataURL:(id)l error:(id *)error;
- (MAGraph)initWithSpecification:(id)specification persistenceStoreURL:(id)l error:(id *)error;
- (NSUUID)identifier;
- (id)_addEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)_addNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)_anyEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)_constraintAbstractEdgesFromAbstractNode:(id)node inConstraints:(id *)constraints;
- (id)_edgeIdentifiersWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)_graphDictionary;
- (id)_graphJSONDictionary;
- (id)_instantiateGraphWithStoreAtURL:(id)l error:(id *)error;
- (id)_nodeIdentifiersWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)abstractEdges;
- (id)addEdgeFromBase:(id)base sourceNode:(id)node targetNode:(id)targetNode;
- (id)addEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)addNodeFromBase:(id)base;
- (id)addNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)addUniqueEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties;
- (id)addUniqueNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties didCreate:(BOOL *)create;
- (id)addUniquelyIdentifiedNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties didCreate:(BOOL *)create;
- (id)adjacencyWithEndNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeType:(unint64_t)type;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeType:(unint64_t)type;
- (id)anyEdgeMatchingFilter:(id)filter;
- (id)anyNodeForLabel:(id)label domain:(unsigned __int16)domain;
- (id)anyNodeForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)anyNodeMatchingFilter:(id)filter;
- (id)databaseURL;
- (id)edgeFromFetchedRowWithIdentifier:(int)identifier domain:(signed __int16)domain label:(id)label weight:(float)weight properties:(id)properties sourceNodeIdentifier:(int)nodeIdentifier targetNodeIdentifier:(int)targetNodeIdentifier;
- (id)edgeIdentifiersMatchingFilter:(id)filter;
- (id)edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers;
- (id)edgeIdentifiersOfType:(unint64_t)type betweenNodesForIdentifiers:(id)identifiers andNodesForIdentifiers:(id)forIdentifiers matchingFilter:(id)filter;
- (id)edgeIdentifiersOfType:(unint64_t)type onNodesForIdentifiers:(id)identifiers matchingFilter:(id)filter;
- (id)edgeIdentifiersOfType:(unint64_t)type sourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier;
- (id)edgeSchemeWithLabel:(id)label domain:(unsigned __int16)domain sourceNode:(id)node targetNode:(id)targetNode;
- (id)edgesDomains;
- (id)edgesForIdentifiers:(id)identifiers;
- (id)edgesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)edgesLabels;
- (id)graphNode;
- (id)labelsForLabel:(id)label domain:(unsigned __int16)domain;
- (id)matchWithDefinitions:(id)definitions constraints:(id)constraints error:(id *)error;
- (id)matchWithVisualFormat:(id)format elements:(id)elements error:(id *)error;
- (id)mergeWithGraph:(id)graph strictNodes:(BOOL)nodes strictEdges:(BOOL)edges saveToDatabase:(BOOL)database;
- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeType:(unint64_t)type edgeFilter:(id)filter;
- (id)nodeFromFetchedRowWithIdentifier:(int)identifier domain:(signed __int16)domain label:(id)label weight:(float)weight properties:(id)properties;
- (id)nodeIdentifiersMatchingFilter:(id)filter;
- (id)nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers;
- (id)nodeIdentifiersRelatedToSourceNodeIdentifiers:(id)identifiers relation:(id)relation;
- (id)nodeSchemeWithLabel:(id)label domain:(unsigned __int16)domain;
- (id)nodesDomains;
- (id)nodesForIdentifiers:(id)identifiers;
- (id)nodesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (id)nodesLabels;
- (id)orphanNodes;
- (id)schema:(id)schema;
- (id)selectBestRootNodeForPath:(id)path withDefinitions:(id)definitions;
- (id)shortestPathFromNode:(id)node toNode:(id)toNode directed:(BOOL)directed;
- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeType:(unint64_t)type edgeFilter:(id)filter;
- (unint64_t)edgesCountForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (unint64_t)hash;
- (unint64_t)nodesCountForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties;
- (unint64_t)numberOfEdgesMatchingFilter:(id)filter;
- (unint64_t)numberOfNodesMatchingFilter:(id)filter;
- (unint64_t)version;
- (void)_loadWithGraphDictionary:(id)dictionary;
- (void)addUniqueNode:(id)node didInsert:(BOOL *)insert;
- (void)breadthFirstSearchFromNode:(id)node directed:(BOOL)directed usingBlock:(id)block;
- (void)closePersistentStore;
- (void)dealloc;
- (void)depthFirstSearchFromNode:(id)node directed:(BOOL)directed usingBlock:(id)block;
- (void)enterBatch;
- (void)enumerateDoublePropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateDoublePropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateEdgesMatchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateEdgesWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties usingBlock:(id)block;
- (void)enumerateIntegerPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateIntegerPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateNodeIdentifiers:(id)identifiers sortedByDoublePropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block;
- (void)enumerateNodeIdentifiers:(id)identifiers sortedByIntegerPropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block;
- (void)enumerateNodeIdentifiers:(id)identifiers sortedByStringPropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block;
- (void)enumerateNodeIdentifiers:(id)identifiers sortedByUnsignedIntegerPropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block;
- (void)enumerateNodesMatchingFilter:(id)filter usingBlock:(id)block;
- (void)enumerateNodesWithIdentifiers:(id)identifiers sortedByFloatPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesWithIdentifiers:(id)identifiers sortedByIntegerPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesWithIdentifiers:(id)identifiers sortedByStringPropertyForName:(id)name usingBlock:(id)block;
- (void)enumerateNodesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateNodesWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties usingBlock:(id)block;
- (void)enumeratePropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumeratePropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateStringPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateStringPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block;
- (void)executeGraphChangeRequest:(id)request;
- (void)labelAndDomainFromLabels:(id)labels outLabel:(id *)label outDomain:(unsigned __int16 *)domain;
- (void)labelsAndDomainsOfEdgesForIdentifiers:(id)identifiers labels:(id *)labels domains:(id *)domains;
- (void)labelsAndDomainsOfNodesForIdentifiers:(id)identifiers labels:(id *)labels domains:(id *)domains;
- (void)leaveBatch;
- (void)legacyRemoveEdges:(id)edges;
- (void)legacyRemoveNodes:(id)nodes;
- (void)loadDomains:(id)domains;
- (void)mergeWithGraph:(id)graph strictNodes:(BOOL)nodes strictEdges:(BOOL)edges saveToDatabase:(BOOL)database createdNodes:(id *)createdNodes createdEdges:(id *)createdEdges;
- (void)persistModelProperties:(id)properties forEdgeWithIdentifier:(unint64_t)identifier clobberExisting:(BOOL)existing;
- (void)persistModelProperties:(id)properties forNodeWithIdentifier:(unint64_t)identifier clobberExisting:(BOOL)existing;
- (void)persistModelProperty:(id)property forKey:(id)key forEdgeWithIdentifier:(unint64_t)identifier;
- (void)persistModelProperty:(id)property forKey:(id)key forNodeWithIdentifier:(unint64_t)identifier;
- (void)persistWeight:(float)weight forEdgeWithIdentifier:(unint64_t)identifier;
- (void)persistWeight:(float)weight forNodeWithIdentifier:(unint64_t)identifier;
- (void)removeModelPropertiesForEdgeWithIdentifier:(unint64_t)identifier;
- (void)removeModelPropertiesForNodeWithIdentifier:(unint64_t)identifier;
- (void)removeModelPropertyForKey:(id)key forEdgeWithIdentifier:(unint64_t)identifier;
- (void)removeModelPropertyForKey:(id)key forNodeWithIdentifier:(unint64_t)identifier;
- (void)rollbackBatch;
- (void)setVersion:(unint64_t)version;
- (void)unloadDomains:(id)domains;
- (void)unloadEdge:(id)edge;
@end

@implementation MAGraph

- (unint64_t)hash
{
  identifier = [(MAGraph *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class())
    {
      v7 = equalCopy;
      identifier = [(MAGraph *)self identifier];
      identifier2 = [(MAGraph *)v7 identifier];

      v6 = [identifier isEqual:identifier2];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)edgeIdentifiersOfType:(unint64_t)type betweenNodesForIdentifiers:(id)identifiers andNodesForIdentifiers:(id)forIdentifiers matchingFilter:(id)filter
{
  identifiersCopy = identifiers;
  forIdentifiersCopy = forIdentifiers;
  filterCopy = filter;
  v13 = objc_autoreleasePoolPush();
  if (([identifiersCopy isEmpty] & 1) != 0 || objc_msgSend(forIdentifiersCopy, "isEmpty"))
  {
    v14 = objc_alloc_init(KGElementIdentifierSet);
  }

  else
  {
    graph = self->_graph;
    kgEdgeFilter = [filterCopy kgEdgeFilter];
    v14 = [(KGGraph *)graph edgeIdentifiersBetweenStartNodeIdentifiers:identifiersCopy endNodeIdentifiers:forIdentifiersCopy edgeFilter:kgEdgeFilter edgeDirection:type];
  }

  objc_autoreleasePoolPop(v13);

  return v14;
}

- (id)edgeIdentifiersOfType:(unint64_t)type onNodesForIdentifiers:(id)identifiers matchingFilter:(id)filter
{
  graph = self->_graph;
  filterCopy = filter;
  v10 = [(KGGraph *)graph edgeIdentifiersWithStartNodeIdentifiers:identifiers edgeDirection:type];
  v11 = self->_graph;
  kgEdgeFilter = [filterCopy kgEdgeFilter];

  v13 = [(KGGraph *)v11 edgeIdentifiersMatchingFilter:kgEdgeFilter intersectingIdentifiers:v10];

  return v13;
}

- (id)nodeIdentifiersRelatedToSourceNodeIdentifiers:(id)identifiers relation:(id)relation
{
  relationCopy = relation;
  identifiersCopy = identifiers;
  v8 = objc_alloc_init(KGMutableElementIdentifierSet);
  [relationCopy unionAdjacencySetFromSourceNodeIdentifiers:identifiersCopy toTargetNodeIdentifiers:v8 graph:self];

  return v8;
}

- (id)anyEdgeMatchingFilter:(id)filter
{
  filterCopy = filter;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__MAGraph_anyEdgeMatchingFilter___block_invoke;
  v7[3] = &unk_2797FFB10;
  v7[4] = &v8;
  [(MAGraph *)self enumerateEdgesMatchingFilter:filterCopy usingBlock:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)edgeIdentifiersOfType:(unint64_t)type sourceNodeIdentifier:(unint64_t)identifier targetNodeIdentifier:(unint64_t)nodeIdentifier
{
  v9 = objc_autoreleasePoolPush();
  if (type - 1 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = qword_255972F78[type - 1];
  }

  v11 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:identifier];
  v12 = [(KGGraph *)self->_graph edgeIdentifiersWithStartNodeIdentifiers:v11 edgeDirection:type];
  if ([v12 isEmpty])
  {
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = objc_alloc_init(KGElementIdentifierSet);
    }

    v19 = v13;
  }

  else
  {
    v14 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:nodeIdentifier];
    v15 = [(KGGraph *)self->_graph edgeIdentifiersWithStartNodeIdentifiers:v14 edgeDirection:v10];
    v16 = [v15 identifierSetByIntersectingIdentifierSet:v12];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = objc_alloc_init(KGElementIdentifierSet);
    }

    v19 = v18;
  }

  objc_autoreleasePoolPop(v9);

  return v19;
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofEdgesWithIdentifiers:identifiers usingBlock:v10];
}

void __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedLongLongValue], a4);
  }
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofEdgesWithIdentifiers:identifiers usingBlock:v10];
}

void __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedIntValue], a4);
  }
}

- (void)enumerateDoublePropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateDoublePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofEdgesWithIdentifiers:identifiers usingBlock:v10];
}

void __81__MAGraph_enumerateDoublePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if ([v8 kgPropertyType] == 2)
  {
    v7 = *(a1 + 32);
    [v8 doubleValue];
    (*(v7 + 16))(v7, a2, a4);
  }
}

- (void)enumerateStringPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateStringPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofEdgesWithIdentifiers:identifiers usingBlock:v10];
}

void __81__MAGraph_enumerateStringPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 kgPropertyType] == 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateIntegerPropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofEdgesWithIdentifiers:identifiers usingBlock:v10];
}

void __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 integerValue], a4);
  }
}

- (void)enumeratePropertyValuesForKey:(id)key ofEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  identifiersCopy = identifiers;
  keyCopy = key;
  v11 = [(KGElementCollection *)[KGEdgeCollection alloc] initWithIdentifiers:identifiersCopy graph:self->_graph];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__MAGraph_enumeratePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke;
  v13[3] = &unk_2797FDB88;
  v14 = blockCopy;
  v12 = blockCopy;
  [(KGEdgeCollection *)v11 enumeratePropertyValuesForKey:keyCopy withBlock:v13];
}

uint64_t __75__MAGraph_enumeratePropertyValuesForKey_ofEdgesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 kgPropertyValue];
  if (v4)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F9730](v4);
}

- (void)enumerateUnsignedLongLongPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofNodesWithIdentifiers:identifiers usingBlock:v10];
}

void __91__MAGraph_enumerateUnsignedLongLongPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedLongLongValue], a4);
  }
}

- (void)enumerateUnsignedIntegerPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofNodesWithIdentifiers:identifiers usingBlock:v10];
}

void __90__MAGraph_enumerateUnsignedIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 4 || objc_msgSend(v7, "kgPropertyType") == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 unsignedIntValue], a4);
  }
}

- (void)enumerateDoublePropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateDoublePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofNodesWithIdentifiers:identifiers usingBlock:v10];
}

void __81__MAGraph_enumerateDoublePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if ([v8 kgPropertyType] == 2)
  {
    v7 = *(a1 + 32);
    [v8 doubleValue];
    (*(v7 + 16))(v7, a2, a4);
  }
}

- (void)enumerateStringPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__MAGraph_enumerateStringPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofNodesWithIdentifiers:identifiers usingBlock:v10];
}

void __81__MAGraph_enumerateStringPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 kgPropertyType] == 3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)enumerateIntegerPropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v10[3] = &unk_2797FDBB0;
  v11 = blockCopy;
  v9 = blockCopy;
  [(MAGraph *)self enumeratePropertyValuesForKey:key ofNodesWithIdentifiers:identifiers usingBlock:v10];
}

void __82__MAGraph_enumerateIntegerPropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  if ([v7 kgPropertyType] == 1)
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), a2, [v7 integerValue], a4);
  }
}

- (void)enumeratePropertyValuesForKey:(id)key ofNodesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  blockCopy = block;
  identifiersCopy = identifiers;
  keyCopy = key;
  v11 = [(KGElementCollection *)[KGNodeCollection alloc] initWithIdentifiers:identifiersCopy graph:self->_graph];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __75__MAGraph_enumeratePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke;
  v13[3] = &unk_2797FDB88;
  v14 = blockCopy;
  v12 = blockCopy;
  [(KGNodeCollection *)v11 enumeratePropertyValuesForKey:keyCopy withBlock:v13];
}

uint64_t __75__MAGraph_enumeratePropertyValuesForKey_ofNodesWithIdentifiers_usingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 kgPropertyValue];
  if (v4)
  {
    v4 = (*(*(a1 + 32) + 16))();
  }

  return MEMORY[0x2821F9730](v4);
}

- (id)abstractEdges
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __24__MAGraph_abstractEdges__block_invoke;
  v6[3] = &unk_2797FFB60;
  v4 = v3;
  v7 = v4;
  [(MAGraph *)selfCopy enumerateEdgesWithBlock:v6];

  objc_sync_exit(selfCopy);

  return v4;
}

void __24__MAGraph_abstractEdges__block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = @"*";
  v4 = @"*";
  v5 = [v12 label];

  if (v5)
  {
    v3 = [v12 label];
  }

  v6 = [MAAbstractEdge alloc];
  v7 = [v12 domain];
  LODWORD(v8) = 1.0;
  v9 = [(MAAbstractEdge *)v6 initWithLabel:v3 domain:v7 weight:MEMORY[0x277CBEC10] properties:v8];
  v10 = [*(a1 + 32) objectForKeyedSubscript:v9];
  if (v10)
  {
    v11 = v10;
    [v10 addObject:v12];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB58] setWithObject:v12];
    [*(a1 + 32) setObject:v11 forKeyedSubscript:v9];
  }
}

- (void)enumerateEdgesWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties usingBlock:(id)block
{
  domainCopy = domain;
  blockCopy = block;
  propertiesCopy = properties;
  labelCopy = label;
  v13 = [(MAElementFilter *)[MAEdgeFilter alloc] initWithLabel:labelCopy domain:domainCopy properties:propertiesCopy];

  [(MAGraph *)self enumerateEdgesMatchingFilter:v13 usingBlock:blockCopy];
}

- (void)enumerateEdgesMatchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v7 = [(MAGraph *)self edgeIdentifiersMatchingFilter:filter];
  [(MAGraph *)self enumerateEdgesWithIdentifiers:v7 usingBlock:blockCopy];
}

- (void)enumerateEdgesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [(KGGraph *)self->_graph edgesForIdentifiers:identifiersCopy];
  [v8 enumerateEdgesUsingBlock:blockCopy];

  objc_autoreleasePoolPop(v7);
}

- (unint64_t)edgesCountForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v5 = [(MAGraph *)self _edgeIdentifiersWithLabel:label domain:domain properties:properties];
  v6 = [v5 count];

  return v6;
}

- (id)edgesDomains
{
  v18 = *MEMORY[0x277D85DE8];
  edgeLabels = [(KGGraph *)self->_graph edgeLabels];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF beginswith 'domain'"];
  v4 = [edgeLabels filteredSetUsingPredicate:v3];
  v5 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * i) substringFromIndex:{7, v13}];
        [v5 addIndex:{objc_msgSend(v11, "integerValue")}];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)edgesLabels
{
  edgeLabels = [(KGGraph *)self->_graph edgeLabels];
  v3 = [MEMORY[0x277CCAC30] predicateWithFormat:@"NOT (SELF beginswith 'domain')"];
  v4 = [edgeLabels filteredSetUsingPredicate:v3];

  return v4;
}

- (id)addUniqueEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  v18 = objc_autoreleasePoolPush();
  *&v19 = weight;
  v20 = [(MAGraph *)self _anyEdgeWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy weight:propertiesCopy properties:v19];
  if (!v20)
  {
    if (propertiesCopy)
    {
      v22 = propertiesCopy;
    }

    else
    {
      v22 = MEMORY[0x277CBEC10];
    }

    *&v21 = weight;
    v20 = [(MAGraph *)self _addEdgeWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy weight:v22 properties:v21];
  }

  objc_autoreleasePoolPop(v18);

  return v20;
}

- (id)_anyEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  nodeCopy = node;
  v17 = [KGElementIdentifierSet alloc];
  identifier = [nodeCopy identifier];

  v19 = [(KGElementIdentifierSet *)v17 initWithElementIdentifier:identifier];
  v20 = [(KGGraph *)self->_graph edgeIdentifiersWithStartNodeIdentifiers:v19 edgeDirection:2];
  if ([(KGElementIdentifierSet *)v19 isEmpty])
  {
    v21 = 0;
  }

  else
  {
    v22 = -[KGElementIdentifierSet initWithElementIdentifier:]([KGElementIdentifierSet alloc], "initWithElementIdentifier:", [targetNodeCopy identifier]);
    v23 = [(KGGraph *)self->_graph edgeIdentifiersWithStartNodeIdentifiers:v22 edgeDirection:1];
    if ([(KGElementIdentifierSet *)v22 isEmpty])
    {
      v21 = 0;
    }

    else
    {
      v24 = [v23 identifierSetByIntersectingIdentifierSet:v20];
      if ([v24 isEmpty])
      {
        v21 = 0;
      }

      else
      {
        v27 = [(MAElementFilter *)[MAEdgeFilter alloc] initWithLabel:labelCopy domain:domainCopy properties:propertiesCopy];
        v25 = [(MAGraph *)self edgeIdentifiersMatchingFilter:v27 intersectingIdentifiers:v24];
        v21 = -[KGGraph edgeForIdentifier:](self->_graph, "edgeForIdentifier:", [v25 firstElement]);
      }
    }
  }

  return v21;
}

- (id)edgesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6 = [(MAGraph *)self _edgeIdentifiersWithLabel:label domain:domain properties:properties];
  v7 = [(KGGraph *)self->_graph edgesForIdentifiers:v6];
  v8 = [v7 set];

  return v8;
}

- (id)_edgeIdentifiersWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  domainCopy = domain;
  propertiesCopy = properties;
  labelCopy = label;
  v10 = [MAEdgeFilter alloc];
  if (propertiesCopy)
  {
    v11 = propertiesCopy;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = [(MAElementFilter *)v10 initWithLabel:labelCopy domain:domainCopy properties:v11];

  v13 = [(MAGraph *)self edgeIdentifiersMatchingFilter:v12];

  return v13;
}

- (unint64_t)numberOfEdgesMatchingFilter:(id)filter
{
  v3 = [(MAGraph *)self edgeIdentifiersMatchingFilter:filter];
  v4 = [v3 count];

  return v4;
}

- (id)edgeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers
{
  graph = self->_graph;
  identifiersCopy = identifiers;
  kgEdgeFilter = [filter kgEdgeFilter];
  v8 = [(KGGraph *)graph edgeIdentifiersMatchingFilter:kgEdgeFilter intersectingIdentifiers:identifiersCopy];

  return v8;
}

- (id)edgeIdentifiersMatchingFilter:(id)filter
{
  graph = self->_graph;
  kgEdgeFilter = [filter kgEdgeFilter];
  v5 = [(KGGraph *)graph edgeIdentifiersMatchingFilter:kgEdgeFilter];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = v7;

  return v8;
}

- (id)edgesForIdentifiers:(id)identifiers
{
  v3 = [(KGGraph *)self->_graph edgesForIdentifiers:identifiers];
  v4 = [v3 set];

  return v4;
}

- (void)legacyRemoveEdges:(id)edges
{
  edgesCopy = edges;
  v6 = [(MAElementCollection *)[MAEdgeCollection alloc] initWithSet:edgesCopy graph:self];

  v5 = objc_alloc_init(MAGraphChangeRequest);
  [(MAGraphChangeRequest *)v5 removeEdges:v6];
  [(MAGraph *)self executeGraphChangeRequest:v5];
}

- (id)addEdgeFromBase:(id)base sourceNode:(id)node targetNode:(id)targetNode
{
  targetNodeCopy = targetNode;
  nodeCopy = node;
  baseCopy = base;
  label = [baseCopy label];
  domain = [baseCopy domain];
  [baseCopy weight];
  v14 = v13;
  propertyDictionary = [baseCopy propertyDictionary];

  LODWORD(v16) = v14;
  v17 = [(MAGraph *)self addEdgeWithLabel:label sourceNode:nodeCopy targetNode:targetNodeCopy domain:domain weight:propertyDictionary properties:v16];

  return v17;
}

- (id)addEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  labelCopy = label;
  nodeCopy = node;
  targetNodeCopy = targetNode;
  propertiesCopy = properties;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (propertiesCopy)
  {
    v20 = propertiesCopy;
  }

  else
  {
    v20 = MEMORY[0x277CBEC10];
  }

  *&v19 = weight;
  v21 = [(MAGraph *)selfCopy _addEdgeWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy weight:v20 properties:v19];
  objc_sync_exit(selfCopy);

  return v21;
}

- (id)_addEdgeWithLabel:(id)label sourceNode:(id)node targetNode:(id)targetNode domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  v32 = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  targetNodeCopy = targetNode;
  nodeCopy = node;
  labelCopy = label;
  specification = [(MAGraph *)self specification];
  v19 = [specification edgeClassWithLabel:labelCopy domain:domainCopy];

  v20 = [v19 alloc];
  *&v21 = weight;
  v22 = [v20 initWithLabel:labelCopy sourceNode:nodeCopy targetNode:targetNodeCopy domain:domainCopy weight:propertiesCopy properties:v21];

  graphReference = [(MAGraph *)self graphReference];
  [v22 setGraphReference:graphReference];

  v24 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v24 insertEdge:v22];
  graph = self->_graph;
  v29 = 0;
  LOBYTE(labelCopy) = [(KGMutableGraph *)graph performChangesAndWait:v24 error:&v29];
  v26 = v29;
  if (labelCopy)
  {
    v27 = v22;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v26;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error adding edge: %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
    v27 = 0;
  }

  return v27;
}

- (id)graphNode
{
  v3 = [MAAbstractNode alloc];
  identifier = [(MAGraph *)self identifier];
  uUIDString = [identifier UUIDString];
  LODWORD(v6) = 1.0;
  v7 = [(MAAbstractNode *)v3 initWithLabel:uUIDString domain:1 weight:MEMORY[0x277CBEC10] properties:v6];

  return v7;
}

- (id)orphanNodes
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x277CBEB58] set];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__MAGraph_orphanNodes__block_invoke;
  v8[3] = &unk_2797FF670;
  v9 = v4;
  v5 = v4;
  [(MAGraph *)self enumerateNodesWithBlock:v8];
  v6 = [MEMORY[0x277CBEB98] setWithSet:v5];

  objc_autoreleasePoolPop(v3);

  return v6;
}

void __22__MAGraph_orphanNodes__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 isOrphan])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeType:(unint64_t)type edgeFilter:(id)filter
{
  graph = self->_graph;
  identifiersCopy = identifiers;
  kgEdgeFilter = [filter kgEdgeFilter];
  v10 = [(KGGraph *)graph transitiveClosureNeighborNodeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:type edgeFilter:kgEdgeFilter];

  return v10;
}

- (id)neighborNodeIdentifiersWithStartNodeIdentifiers:(id)identifiers edgeType:(unint64_t)type edgeFilter:(id)filter
{
  graph = self->_graph;
  identifiersCopy = identifiers;
  kgEdgeFilter = [filter kgEdgeFilter];
  v10 = [(KGGraph *)graph neighborNodeIdentifiersWithStartNodeIdentifiers:identifiersCopy edgeDirection:type edgeFilter:kgEdgeFilter];

  return v10;
}

- (void)enumerateNodesWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties usingBlock:(id)block
{
  domainCopy = domain;
  blockCopy = block;
  propertiesCopy = properties;
  labelCopy = label;
  v13 = [(MAElementFilter *)[MANodeFilter alloc] initWithLabel:labelCopy domain:domainCopy properties:propertiesCopy];

  [(MAGraph *)self enumerateNodesMatchingFilter:v13 usingBlock:blockCopy];
}

- (void)enumerateNodesMatchingFilter:(id)filter usingBlock:(id)block
{
  blockCopy = block;
  v7 = [(MAGraph *)self nodeIdentifiersMatchingFilter:filter];
  [(MAGraph *)self enumerateNodesWithIdentifiers:v7 usingBlock:blockCopy];
}

- (void)enumerateNodeIdentifiers:(id)identifiers sortedByUnsignedIntegerPropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block
{
  ascendingCopy = ascending;
  identifiersCopy = identifiers;
  nameCopy = name;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v13 enumerateIdentifiersSortedByUnsignedIntegerPropertyForName:nameCopy ascending:ascendingCopy usingBlock:blockCopy];

  objc_autoreleasePoolPop(v12);
}

- (void)enumerateNodeIdentifiers:(id)identifiers sortedByDoublePropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block
{
  ascendingCopy = ascending;
  identifiersCopy = identifiers;
  nameCopy = name;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v13 enumerateIdentifiersSortedByDoublePropertyForName:nameCopy ascending:ascendingCopy usingBlock:blockCopy];

  objc_autoreleasePoolPop(v12);
}

- (void)enumerateNodeIdentifiers:(id)identifiers sortedByIntegerPropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block
{
  ascendingCopy = ascending;
  identifiersCopy = identifiers;
  nameCopy = name;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v13 enumerateIdentifiersSortedByIntegerPropertyForName:nameCopy ascending:ascendingCopy usingBlock:blockCopy];

  objc_autoreleasePoolPop(v12);
}

- (void)enumerateNodeIdentifiers:(id)identifiers sortedByStringPropertyForName:(id)name ascending:(BOOL)ascending usingBlock:(id)block
{
  ascendingCopy = ascending;
  identifiersCopy = identifiers;
  nameCopy = name;
  blockCopy = block;
  v12 = objc_autoreleasePoolPush();
  v13 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v13 enumerateIdentifiersSortedByStringPropertyForName:nameCopy ascending:ascendingCopy usingBlock:blockCopy];

  objc_autoreleasePoolPop(v12);
}

- (void)enumerateNodesWithIdentifiers:(id)identifiers sortedByFloatPropertyForName:(id)name usingBlock:(id)block
{
  identifiersCopy = identifiers;
  nameCopy = name;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v11 enumerateNodesSortedByFloatPropertyForName:nameCopy usingBlock:blockCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)enumerateNodesWithIdentifiers:(id)identifiers sortedByIntegerPropertyForName:(id)name usingBlock:(id)block
{
  identifiersCopy = identifiers;
  nameCopy = name;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v11 enumerateNodesSortedByIntegerPropertyForName:nameCopy usingBlock:blockCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)enumerateNodesWithIdentifiers:(id)identifiers sortedByStringPropertyForName:(id)name usingBlock:(id)block
{
  identifiersCopy = identifiers;
  nameCopy = name;
  blockCopy = block;
  v10 = objc_autoreleasePoolPush();
  v11 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v11 enumerateNodesSortedByStringPropertyForName:nameCopy usingBlock:blockCopy];

  objc_autoreleasePoolPop(v10);
}

- (void)enumerateNodesWithIdentifiers:(id)identifiers usingBlock:(id)block
{
  identifiersCopy = identifiers;
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiersCopy];
  [v8 enumerateNodesUsingBlock:blockCopy];

  objc_autoreleasePoolPop(v7);
}

- (id)adjacencyWithEndNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeType:(unint64_t)type
{
  typeCopy = type;
  identifiersCopy = identifiers;
  filterCopy = filter;
  v10 = objc_alloc_init(KGDirectedBinaryAdjacency);
  v11 = objc_alloc_init(KGDirectedBinaryAdjacency);
  if ((typeCopy & 2) != 0)
  {
    v12 = [(MAGraph *)self edgeIdentifiersOfType:1 onNodesForIdentifiers:identifiersCopy matchingFilter:filterCopy];
    v13 = [(MAGraph *)self targetsBySourceWithEdgeIdentifiers:v12];

    v10 = v13;
  }

  if (typeCopy)
  {
    v14 = [(MAGraph *)self edgeIdentifiersOfType:2 onNodesForIdentifiers:identifiersCopy matchingFilter:filterCopy];
    v15 = [(MAGraph *)self sourcesByTargetWithEdgeIdentifiers:v14];

    v11 = v15;
  }

  v16 = [(KGDirectedBinaryAdjacency *)v10 unionWith:v11];

  return v16;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers edgeFilter:(id)filter edgeType:(unint64_t)type
{
  typeCopy = type;
  identifiersCopy = identifiers;
  filterCopy = filter;
  v10 = objc_alloc_init(KGDirectedBinaryAdjacency);
  v11 = objc_alloc_init(KGDirectedBinaryAdjacency);
  if ((typeCopy & 2) != 0)
  {
    v12 = [(MAGraph *)self edgeIdentifiersOfType:2 onNodesForIdentifiers:identifiersCopy matchingFilter:filterCopy];
    v13 = [(MAGraph *)self targetsBySourceWithEdgeIdentifiers:v12];

    v10 = v13;
  }

  if (typeCopy)
  {
    v14 = [(MAGraph *)self edgeIdentifiersOfType:1 onNodesForIdentifiers:identifiersCopy matchingFilter:filterCopy];
    v15 = [(MAGraph *)self sourcesByTargetWithEdgeIdentifiers:v14];

    v11 = v15;
  }

  v16 = [(KGDirectedBinaryAdjacency *)v10 unionWith:v11];

  return v16;
}

- (void)labelsAndDomainsOfEdgesForIdentifiers:(id)identifiers labels:(id *)labels domains:(id *)domains
{
  v7 = [(KGGraph *)self->_graph labelsOfEdgesForIdentifiers:identifiers];
  MALabelsAndDomainsFromKGLabels(v7, labels, domains);
}

- (void)labelsAndDomainsOfNodesForIdentifiers:(id)identifiers labels:(id *)labels domains:(id *)domains
{
  v7 = [(KGGraph *)self->_graph labelsOfNodesForIdentifiers:identifiers];
  MALabelsAndDomainsFromKGLabels(v7, labels, domains);
}

- (id)nodesDomains
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nodeLabels = [(KGGraph *)self->_graph nodeLabels];
  v5 = [nodeLabels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(nodeLabels);
        }

        v9 = [MAKGDomainConversion maDomainForKGLabel:*(*(&v11 + 1) + 8 * i)];
        if (v9 != 0xFFFF)
        {
          [v3 addIndex:v9];
        }
      }

      v6 = [nodeLabels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)nodesLabels
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  nodeLabels = [(KGGraph *)self->_graph nodeLabels];
  v5 = [nodeLabels countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(nodeLabels);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([MAKGDomainConversion maDomainForKGLabel:v9]== 0xFFFF)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [nodeLabels countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (unint64_t)nodesCountForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v5 = [(MAGraph *)self _nodeIdentifiersWithLabel:label domain:domain properties:properties];
  v6 = [v5 count];

  return v6;
}

- (unint64_t)numberOfNodesMatchingFilter:(id)filter
{
  v3 = [(MAGraph *)self nodeIdentifiersMatchingFilter:filter];
  v4 = [v3 count];

  return v4;
}

- (id)nodesForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  v6 = [(MAGraph *)self _nodeIdentifiersWithLabel:label domain:domain properties:properties];
  v7 = [(KGGraph *)self->_graph nodesForIdentifiers:v6];
  v8 = [v7 set];

  return v8;
}

- (id)anyNodeForLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  domainCopy = domain;
  propertiesCopy = properties;
  labelCopy = label;
  v10 = [(MAElementFilter *)[MANodeFilter alloc] initWithLabel:labelCopy domain:domainCopy properties:propertiesCopy];

  v11 = [(MAGraph *)self anyNodeMatchingFilter:v10];

  return v11;
}

- (id)anyNodeMatchingFilter:(id)filter
{
  v4 = [(MAGraph *)self nodeIdentifiersMatchingFilter:filter];
  v5 = -[KGGraph nodeForIdentifier:](self->_graph, "nodeForIdentifier:", [v4 firstElement]);

  return v5;
}

- (id)_nodeIdentifiersWithLabel:(id)label domain:(unsigned __int16)domain properties:(id)properties
{
  domainCopy = domain;
  propertiesCopy = properties;
  labelCopy = label;
  v10 = [MANodeFilter alloc];
  if (propertiesCopy)
  {
    v11 = propertiesCopy;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  v12 = [(MAElementFilter *)v10 initWithLabel:labelCopy domain:domainCopy properties:v11];

  v13 = [(MAGraph *)self nodeIdentifiersMatchingFilter:v12];

  return v13;
}

- (id)anyNodeForLabel:(id)label domain:(unsigned __int16)domain
{
  v4 = [(MAGraph *)self nodesForLabel:label domain:domain];
  anyObject = [v4 anyObject];

  return anyObject;
}

- (id)nodeIdentifiersMatchingFilter:(id)filter intersectingIdentifiers:(id)identifiers
{
  graph = self->_graph;
  identifiersCopy = identifiers;
  kgNodeFilter = [filter kgNodeFilter];
  v8 = [(KGGraph *)graph nodeIdentifiersMatchingFilter:kgNodeFilter intersectingIdentifiers:identifiersCopy];

  return v8;
}

- (id)nodeIdentifiersMatchingFilter:(id)filter
{
  graph = self->_graph;
  kgNodeFilter = [filter kgNodeFilter];
  v5 = [(KGGraph *)graph nodeIdentifiersMatchingFilter:kgNodeFilter];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = objc_alloc_init(KGElementIdentifierSet);
  }

  v8 = v7;

  return v8;
}

- (id)nodesForIdentifiers:(id)identifiers
{
  v3 = [(KGGraph *)self->_graph nodesForIdentifiers:identifiers];
  v4 = [v3 set];

  return v4;
}

- (void)legacyRemoveNodes:(id)nodes
{
  nodesCopy = nodes;
  v6 = [(MAElementCollection *)[MANodeCollection alloc] initWithSet:nodesCopy graph:self];

  v5 = objc_alloc_init(MAGraphChangeRequest);
  [(MAGraphChangeRequest *)v5 removeNodes:v6];
  [(MAGraph *)self executeGraphChangeRequest:v5];
}

- (id)addUniquelyIdentifiedNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties didCreate:(BOOL *)create
{
  domainCopy = domain;
  labelCopy = label;
  propertiesCopy = properties;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy_;
  v38 = __Block_byref_object_dispose_;
  v39 = 0;
  v14 = objc_autoreleasePoolPush();
  v15 = [(MAGraph *)self nodesForLabel:labelCopy domain:domainCopy properties:MEMORY[0x277CBEC10]];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __81__MAGraph_addUniquelyIdentifiedNodeWithLabel_domain_weight_properties_didCreate___block_invoke;
  v31[3] = &unk_2797FDB60;
  v16 = propertiesCopy;
  v32 = v16;
  v33 = &v34;
  [v15 enumerateObjectsUsingBlock:v31];
  v18 = v35[5];
  if (v18)
  {
    v19 = [v35[5] changingPropertiesWithProperties:v16];
    if ([v19 count])
    {
      identifier = [v35[5] identifier];
      [(MAGraph *)self persistModelProperties:v19 forNodeWithIdentifier:identifier clobberExisting:0];
      v29 = v14;
      graphReference = [v35[5] graphReference];
      propertyDictionary = [v35[5] propertyDictionary];
      v22 = [propertyDictionary mutableCopy];

      [v22 addEntriesFromDictionary:v19];
      v23 = objc_alloc(objc_opt_class());
      label = [v35[5] label];
      *&v25 = weight;
      v26 = [v23 initWithLabel:label domain:domainCopy weight:v22 properties:v25];
      v27 = v35[5];
      v35[5] = v26;

      [v35[5] setIdentifier:identifier];
      [v35[5] setGraphReference:graphReference];

      v14 = v29;
    }
  }

  else
  {
    if (create)
    {
      *create = 1;
    }

    *&v17 = weight;
    domainCopy = [(MAGraph *)self _addNodeWithLabel:labelCopy domain:domainCopy weight:v16 properties:v17];
  }

  objc_autoreleasePoolPop(v14);
  if (v18)
  {
    domainCopy = v35[5];
  }

  _Block_object_dispose(&v34, 8);

  return domainCopy;
}

void __81__MAGraph_addUniquelyIdentifiedNodeWithLabel_domain_weight_properties_didCreate___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  if ([v6 isIdentifiedByProperties:*(a1 + 32)])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a3 = 1;
  }
}

- (id)addUniqueNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties didCreate:(BOOL *)create
{
  domainCopy = domain;
  labelCopy = label;
  propertiesCopy = properties;
  v14 = [(MAGraph *)self nodesForLabel:labelCopy domain:domainCopy properties:propertiesCopy];
  anyObject = [v14 anyObject];

  if (anyObject)
  {
    v17 = anyObject;
  }

  else
  {
    if (create)
    {
      *create = 1;
    }

    if (propertiesCopy)
    {
      v18 = propertiesCopy;
    }

    else
    {
      v18 = MEMORY[0x277CBEC10];
    }

    *&v16 = weight;
    v17 = [(MAGraph *)self _addNodeWithLabel:labelCopy domain:domainCopy weight:v18 properties:v16];
  }

  v19 = v17;

  return v19;
}

- (BOOL)findAndResolveUniqueEdge:(id)edge
{
  v24 = *MEMORY[0x277D85DE8];
  edgeCopy = edge;
  v5 = objc_autoreleasePoolPush();
  sourceNode = [edgeCopy sourceNode];
  identifier = [sourceNode identifier];

  targetNode = [edgeCopy targetNode];
  identifier2 = [targetNode identifier];

  v10 = 0;
  if (identifier && identifier2)
  {
    v11 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:identifier];
    v12 = [[KGElementIdentifierSet alloc] initWithElementIdentifier:identifier2];
    uniquelyIdentifyingFilter = [edgeCopy uniquelyIdentifyingFilter];
    v14 = [(MAGraph *)self edgeIdentifiersOfType:2 betweenNodesForIdentifiers:v11 andNodesForIdentifiers:v12 matchingFilter:uniquelyIdentifyingFilter];
    v15 = [v14 count];
    v10 = v15 != 0;
    if (v15)
    {
      v16 = v15;
      if (v15 != 1)
      {
        v17 = KGLoggingConnection();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
        {
          v20 = 134218242;
          v21 = v16;
          v22 = 2112;
          v23 = uniquelyIdentifyingFilter;
          _os_log_fault_impl(&dword_255870000, v17, OS_LOG_TYPE_FAULT, "(%lu) edges found for unique insert with filter %@", &v20, 0x16u);
        }
      }

      graphReference = [(MAGraph *)self graphReference];
      [edgeCopy setGraphReference:graphReference];

      [edgeCopy resolveIdentifier:{objc_msgSend(v14, "firstElement")}];
    }
  }

  objc_autoreleasePoolPop(v5);

  return v10;
}

- (void)addUniqueNode:(id)node didInsert:(BOOL *)insert
{
  nodeCopy = node;
  v6 = [(MAGraph *)self findAndResolveUniqueNode:?];
  if (insert)
  {
    *insert = !v6;
  }

  if (!v6)
  {
    v7 = objc_alloc_init(MAGraphChangeRequest);
    [(MAGraphChangeRequest *)v7 addNode:nodeCopy];
    [(MAGraph *)self executeGraphChangeRequest:v7];
  }
}

- (BOOL)findAndResolveUniqueNode:(id)node
{
  v16 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  uniquelyIdentifyingFilter = [nodeCopy uniquelyIdentifyingFilter];
  v6 = [(MAGraph *)self nodeIdentifiersMatchingFilter:uniquelyIdentifyingFilter];
  v7 = [v6 count];
  v8 = v7;
  if (v7)
  {
    if (v7 != 1)
    {
      v9 = KGLoggingConnection();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        v12 = 134218242;
        v13 = v8;
        v14 = 2112;
        v15 = uniquelyIdentifyingFilter;
        _os_log_fault_impl(&dword_255870000, v9, OS_LOG_TYPE_FAULT, "(%lu) nodes found for unique insert with filter %@", &v12, 0x16u);
      }
    }

    graphReference = [(MAGraph *)self graphReference];
    [nodeCopy setGraphReference:graphReference];

    [nodeCopy resolveIdentifier:{objc_msgSend(v6, "firstElement")}];
  }

  return v8 != 0;
}

- (id)addNodeFromBase:(id)base
{
  baseCopy = base;
  label = [baseCopy label];
  domain = [baseCopy domain];
  [baseCopy weight];
  v8 = v7;
  propertyDictionary = [baseCopy propertyDictionary];

  LODWORD(v10) = v8;
  v11 = [(MAGraph *)self _addNodeWithLabel:label domain:domain weight:propertyDictionary properties:v10];

  return v11;
}

- (id)addNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  if (!properties)
  {
    properties = MEMORY[0x277CBEC10];
  }

  return [(MAGraph *)self _addNodeWithLabel:label domain:domain weight:properties properties:?];
}

- (id)_addNodeWithLabel:(id)label domain:(unsigned __int16)domain weight:(float)weight properties:(id)properties
{
  domainCopy = domain;
  propertiesCopy = properties;
  labelCopy = label;
  specification = [(MAGraph *)self specification];
  v13 = [specification nodeClassWithLabel:labelCopy domain:domainCopy];

  v14 = [v13 alloc];
  *&v15 = weight;
  v16 = [v14 initWithLabel:labelCopy domain:domainCopy weight:propertiesCopy properties:v15];

  graphReference = [(MAGraph *)self graphReference];
  [v16 setGraphReference:graphReference];

  v18 = objc_alloc_init(MAGraphChangeRequest);
  [(MAGraphChangeRequest *)v18 addNode:v16];
  [(MAGraph *)self executeGraphChangeRequest:v18];

  return v16;
}

- (void)executeGraphChangeRequest:(id)request
{
  v40 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = objc_alloc_init(KGGraphChangeRequest);
  if ([requestCopy numberOfChanges])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    nodesToInsert = [requestCopy nodesToInsert];
    v7 = [nodesToInsert countByEnumeratingWithState:&v32 objects:v39 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(nodesToInsert);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          [(KGGraphChangeRequest *)v5 insertNode:v11];
          specification = [(MAGraph *)self specification];
          rootGraphReference = [specification rootGraphReference];
          [v11 setGraphReference:rootGraphReference];
        }

        v8 = [nodesToInsert countByEnumeratingWithState:&v32 objects:v39 count:16];
      }

      while (v8);
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    edgesToInsert = [requestCopy edgesToInsert];
    v15 = [edgesToInsert countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(edgesToInsert);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          [(KGGraphChangeRequest *)v5 insertEdge:v19];
          specification2 = [(MAGraph *)self specification];
          rootGraphReference2 = [specification2 rootGraphReference];
          [v19 setGraphReference:rootGraphReference2];
        }

        v16 = [edgesToInsert countByEnumeratingWithState:&v28 objects:v38 count:16];
      }

      while (v16);
    }

    nodeIdentifiersToRemove = [requestCopy nodeIdentifiersToRemove];
    if ([nodeIdentifiersToRemove count])
    {
      [(KGGraphChangeRequest *)v5 removeNodesForIdentifiers:nodeIdentifiersToRemove];
    }

    edgeIdentifiersToRemove = [requestCopy edgeIdentifiersToRemove];
    if ([edgeIdentifiersToRemove count])
    {
      [(KGGraphChangeRequest *)v5 removeEdgesForIdentifiers:edgeIdentifiersToRemove];
    }

    graph = self->_graph;
    v27 = 0;
    v25 = [(KGMutableGraph *)graph performChangesAndWait:v5 error:&v27];
    v26 = v27;
    if (!v25)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v26;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error executing request: %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }
}

- (BOOL)usesClassCDataProtection
{
  specification = [(MAGraph *)self specification];
  v3 = ([specification persistenceOptions] >> 5) & 1;

  return v3;
}

- (BOOL)usesClassBDataProtection
{
  specification = [(MAGraph *)self specification];
  v3 = ([specification persistenceOptions] >> 4) & 1;

  return v3;
}

- (BOOL)usesClassADataProtection
{
  specification = [(MAGraph *)self specification];
  v3 = ([specification persistenceOptions] >> 3) & 1;

  return v3;
}

- (BOOL)isReadOnly
{
  specification = [(MAGraph *)self specification];
  v3 = ([specification persistenceOptions] >> 2) & 1;

  return v3;
}

- (void)rollbackBatch
{
  v9 = *MEMORY[0x277D85DE8];
  store = [(KGStoredGraph *)self->_graph store];
  v6 = 0;
  v4 = [store rollbackTransactionWithError:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [(MAGraph *)self setHadFatalError];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error rolling back transaction: %@", buf, 0xCu);
    }
  }
}

- (void)leaveBatch
{
  v12 = *MEMORY[0x277D85DE8];
  noFatalError = [(MAGraph *)self noFatalError];
  store = [(KGStoredGraph *)self->_graph store];
  v5 = store;
  if (noFatalError)
  {
    v9 = 0;
    v6 = [store commitTransactionWithError:&v9];
    v7 = v9;

    if ((v6 & 1) == 0)
    {
      [(MAGraph *)self setHadFatalError];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v11 = v7;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error committing transaction: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v8 = 0;
    [store rollbackTransactionWithError:&v8];
    v7 = v8;
  }
}

- (void)enterBatch
{
  v9 = *MEMORY[0x277D85DE8];
  store = [(KGStoredGraph *)self->_graph store];
  v6 = 0;
  v4 = [store beginTransactionWithError:&v6];
  v5 = v6;

  if ((v4 & 1) == 0)
  {
    [(MAGraph *)self setHadFatalError];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v5;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error beginning transaction: %@", buf, 0xCu);
    }
  }
}

- (NSUUID)identifier
{
  store = [(KGStoredGraph *)self->_graph store];
  graphIdentifier = [store graphIdentifier];

  return graphIdentifier;
}

- (void)setVersion:(unint64_t)version
{
  store = [(KGStoredGraph *)self->_graph store];
  [store setGraphVersion:version];
}

- (unint64_t)version
{
  store = [(KGStoredGraph *)self->_graph store];
  graphVersion = [store graphVersion];

  return graphVersion;
}

- (void)labelAndDomainFromLabels:(id)labels outLabel:(id *)label outDomain:(unsigned __int16 *)domain
{
  labelCopy = label;
  v26 = *MEMORY[0x277D85DE8];
  labelsCopy = labels;
  os_unfair_lock_lock(&self->_labelMapLock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = labelsCopy;
  v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        labelCopy = [(NSMutableDictionary *)self->_domainByLabel objectForKeyedSubscript:v13, labelCopy];
        if (labelCopy)
        {
          v15 = labelCopy;
          unsignedShortValue = [labelCopy unsignedShortValue];
        }

        else
        {
          v17 = [MAKGDomainConversion maDomainForKGLabel:v13];
          if (v17 == 0xFFFF)
          {
            v15 = v10;
            unsignedShortValue = -1;
            v10 = v13;
          }

          else
          {
            unsignedShortValue = v17;
            v15 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v17];
            [(NSMutableDictionary *)self->_domainByLabel setObject:v15 forKeyedSubscript:v13];
            [(NSMutableDictionary *)self->_labelByDomain setObject:v13 forKeyedSubscript:v15];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
    unsignedShortValue = -1;
  }

  os_unfair_lock_unlock(&self->_labelMapLock);
  if (labelCopy)
  {
    v18 = v10;
    *labelCopy = v10;
  }

  if (domain)
  {
    *domain = unsignedShortValue;
  }
}

- (id)labelsForLabel:(id)label domain:(unsigned __int16)domain
{
  domainCopy = domain;
  labelCopy = label;
  v7 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  if (domainCopy >= 2)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:domainCopy];
    os_unfair_lock_lock(&self->_labelMapLock);
    v9 = [(NSMutableDictionary *)self->_labelByDomain objectForKeyedSubscript:v8];
    if (!v9)
    {
      v9 = [MAKGDomainConversion kgLabelForMADomain:domainCopy];
      [(NSMutableDictionary *)self->_labelByDomain setObject:v9 forKeyedSubscript:v8];
      [(NSMutableDictionary *)self->_domainByLabel setObject:v8 forKeyedSubscript:v9];
    }

    os_unfair_lock_unlock(&self->_labelMapLock);
    [v7 addObject:v9];
  }

  if ([labelCopy length])
  {
    [v7 addObject:labelCopy];
  }

  return v7;
}

- (BOOL)noFatalError
{
  if (self->_databaseStatus == 1)
  {
    noFatalError = [(KGGraph *)self->_graph noFatalError];
    if (noFatalError)
    {
      LOBYTE(noFatalError) = self->_databaseStatus == 1;
    }

    else
    {
      self->_databaseStatus = 0;
    }
  }

  else
  {
    LOBYTE(noFatalError) = 0;
  }

  return noFatalError;
}

- (void)dealloc
{
  [(MAGraph *)self closePersistentStore];
  v3.receiver = self;
  v3.super_class = MAGraph;
  [(MAGraph *)&v3 dealloc];
}

- (MAGraph)initWithPersistenceOptions:(int64_t)options
{
  v4 = [(MAGraph *)self init];
  v5 = v4;
  if (v4)
  {
    [(MAGraphSpecification *)v4->_specification setPersistenceOptions:options];
  }

  return v5;
}

- (MAGraph)initWithSpecification:(id)specification
{
  specificationCopy = specification;
  v20.receiver = self;
  v20.super_class = MAGraph;
  v5 = [(MAGraph *)&v20 init];
  if (v5)
  {
    if (specificationCopy)
    {
      defaultSpecification = [specificationCopy copy];
    }

    else
    {
      defaultSpecification = [objc_opt_class() defaultSpecification];
    }

    specification = v5->_specification;
    v5->_specification = defaultSpecification;

    v8 = [[MAGraphReference alloc] initWithGraph:v5];
    [(MAGraphSpecification *)v5->_specification setRootGraphReference:v8];

    v9 = [MAKGEntityFactory alloc];
    specification = [(MAGraph *)v5 specification];
    v11 = [(MAKGEntityFactory *)v9 initWithSpecification:specification];

    v12 = objc_alloc_init(KGMemoryGraphStore);
    v13 = [[KGStoredGraph alloc] initGraphWithStore:v12 entityFactory:v11];
    graph = v5->_graph;
    v5->_graph = v13;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    labelByDomain = v5->_labelByDomain;
    v5->_labelByDomain = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    domainByLabel = v5->_domainByLabel;
    v5->_domainByLabel = dictionary2;

    v5->_labelMapLock._os_unfair_lock_opaque = 0;
    v5->_databaseStatus = 1;
  }

  return v5;
}

+ (id)defaultSpecification
{
  v2 = objc_alloc_init(MAGraphSpecification);

  return v2;
}

+ (id)graph
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    dispatch_once(&initialize_onceToken, &__block_literal_global_468);
  }
}

- (void)mergeWithGraph:(id)graph strictNodes:(BOOL)nodes strictEdges:(BOOL)edges saveToDatabase:(BOOL)database createdNodes:(id *)createdNodes createdEdges:(id *)createdEdges
{
  v13 = MEMORY[0x277CBEB58];
  graphCopy = graph;
  v15 = [v13 set];
  v16 = [MEMORY[0x277CBEB58] set];
  strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke;
  v29[3] = &unk_2797FED38;
  nodesCopy = nodes;
  v29[4] = self;
  v18 = strongToStrongObjectsMapTable;
  v30 = v18;
  v19 = v15;
  v31 = v19;
  [graphCopy enumerateNodesWithBlock:v29];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2;
  v24[3] = &unk_2797FED90;
  edgesCopy = edges;
  v25 = v18;
  selfCopy = self;
  v20 = v16;
  v27 = v20;
  v21 = v18;
  [graphCopy enumerateEdgesWithBlock:v24];

  if (createdNodes)
  {
    v22 = v19;
    *createdNodes = v19;
  }

  if (createdEdges)
  {
    v23 = v20;
    *createdEdges = v20;
  }
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 56) & 1) == 0)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__2876;
    v23 = __Block_byref_object_dispose__2877;
    v24 = [*(a1 + 32) nodeForIdentifier:{objc_msgSend(v3, "identifier")}];
    v6 = v20;
    v7 = v20[5];
    if (v7)
    {
      v8 = [v7 isEqualToNode:v4];
      v6 = v20;
      if (v8)
      {
        [*(a1 + 40) setObject:v20[5] forKey:v4];
        _Block_object_dispose(&v19, 8);

        goto LABEL_3;
      }

      v9 = v20[5];
    }

    else
    {
      v9 = 0;
    }

    v6[5] = 0;

    v10 = *(a1 + 32);
    v11 = [v4 label];
    v12 = [v4 domain];
    v13 = [v4 propertyDictionary];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2;
    v15[3] = &unk_2797FED10;
    v16 = *(a1 + 40);
    v17 = v4;
    v18 = &v19;
    [v10 enumerateNodesWithLabel:v11 domain:v12 properties:v13 usingBlock:v15];

    v14 = v20[5];
    _Block_object_dispose(&v19, 8);

    if (v14)
    {
      goto LABEL_3;
    }
  }

  v5 = [*(a1 + 32) addNodeFromBase:v4];
  [*(a1 + 48) addObject:v5];
  [*(a1 + 40) setObject:v5 forKey:v4];

LABEL_3:
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 sourceNode];
  v6 = [v4 objectForKey:v5];

  v7 = *(a1 + 32);
  v8 = [v3 targetNode];
  v9 = [v7 objectForKey:v8];

  if (!v6 || !v9)
  {
    [MEMORY[0x277CBEAD8] raise:@"MAGraphInvalidGraph" format:{@"Graph invalid for edge %@", v3}];
    goto LABEL_7;
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v11 = [*(a1 + 40) edgeForIdentifier:{objc_msgSend(v3, "identifier")}];
    v10 = v11;
    if (v11 && ([v11 isEqualToEdge:v3] & 1) != 0)
    {
      goto LABEL_5;
    }

    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__2876;
    v23 = __Block_byref_object_dispose__2877;
    v24 = 0;
    v12 = [v3 label];
    v13 = [v3 domain];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_3;
    v15[3] = &unk_2797FED68;
    v16 = v9;
    v17 = v3;
    v18 = &v19;
    [v6 enumerateEdgesWithLabel:v12 domain:v13 usingBlock:v15];

    v14 = v20[5];
    _Block_object_dispose(&v19, 8);

    if (v14)
    {
      goto LABEL_7;
    }
  }

  v10 = [*(a1 + 40) addEdgeFromBase:v3 sourceNode:v6 targetNode:v9];
  [*(a1 + 48) addObject:v10];
LABEL_5:

LABEL_7:
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_3(void *a1, void *a2, _BYTE *a3)
{
  v8 = a2;
  v6 = [v8 targetNode];
  v7 = [v6 isEqualToNode:a1[4]];

  if (v7 && [v8 isEqualToEdge:a1[5]])
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a3 = 1;
  }
}

void __106__MAGraph_Merge_Private__mergeWithGraph_strictNodes_strictEdges_saveToDatabase_createdNodes_createdEdges___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  [*(a1 + 32) setObject:v5 forKey:*(a1 + 40)];
  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  *a3 = 1;
}

- (id)mergeWithGraph:(id)graph strictNodes:(BOOL)nodes strictEdges:(BOOL)edges saveToDatabase:(BOOL)database
{
  v8 = 0;
  [(MAGraph *)self mergeWithGraph:graph strictNodes:nodes strictEdges:edges saveToDatabase:database createdNodes:&v8 createdEdges:0];
  v6 = v8;

  return v6;
}

+ (MAGraph)graphWithMergedGraphs:(id)graphs strictNodes:(BOOL)nodes strictEdges:(BOOL)edges
{
  edgesCopy = edges;
  nodesCopy = nodes;
  v22 = *MEMORY[0x277D85DE8];
  graphsCopy = graphs;
  graph = [self graph];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = graphsCopy;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [graph mergeWithGraph:*(*(&v17 + 1) + 8 * i) strictNodes:nodesCopy strictEdges:{edgesCopy, v17}];
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return graph;
}

- (void)persistWeight:(float)weight forEdgeWithIdentifier:(unint64_t)identifier
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = [(KGGraph *)self->_graph edgeForIdentifier:identifier];
  [v6 weight];
  v8 = v7;
  v9 = objc_alloc_init(KGGraphChangeRequest);
  v27 = @"__weight";
  weightCopy = weight;
  v11 = [[KGDoublePropertyValue alloc] initWithValue:weightCopy];
  v28[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  [(KGGraphChangeRequest *)v9 updateEdge:v6 newProperties:v12];

  graph = self->_graph;
  v16 = 0;
  LOBYTE(v12) = [(KGMutableGraph *)graph performChangesAndWait:v9 error:&v16];
  v14 = v16;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      identifier = [v6 identifier];
      *buf = 138413314;
      v18 = v6;
      v19 = 2048;
      v20 = identifier;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = weightCopy;
      v25 = 2112;
      v26 = v14;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting weight for edge(%@) identifier(%lu) old weight(%f) new weight(%f) error(%@)", buf, 0x34u);
    }

    [(MAGraph *)self setHadFatalError];
  }
}

- (void)persistWeight:(float)weight forNodeWithIdentifier:(unint64_t)identifier
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = [(KGGraph *)self->_graph nodeForIdentifier:identifier];
  [v6 weight];
  v8 = v7;
  v9 = objc_alloc_init(KGGraphChangeRequest);
  v27 = @"__weight";
  weightCopy = weight;
  v11 = [[KGDoublePropertyValue alloc] initWithValue:weightCopy];
  v28[0] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
  [(KGGraphChangeRequest *)v9 updateNode:v6 newProperties:v12];

  graph = self->_graph;
  v16 = 0;
  LOBYTE(v12) = [(KGMutableGraph *)graph performChangesAndWait:v9 error:&v16];
  v14 = v16;
  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      identifier = [v6 identifier];
      *buf = 138413314;
      v18 = v6;
      v19 = 2048;
      v20 = identifier;
      v21 = 2048;
      v22 = v8;
      v23 = 2048;
      v24 = weightCopy;
      v25 = 2112;
      v26 = v14;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting weight for node(%@) identifier(%lu) old weight(%f) new weight(%f) error(%@)", buf, 0x34u);
    }

    [(MAGraph *)self setHadFatalError];
  }
}

- (void)removeModelPropertiesForEdgeWithIdentifier:(unint64_t)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(KGGraph *)self->_graph edgeForIdentifier:identifier];
  v5 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v5 updateEdge:v4 newProperties:MEMORY[0x277CBEC10]];
  graph = self->_graph;
  v9 = 0;
  v7 = [(KGMutableGraph *)graph performChangesAndWait:v5 error:&v9];
  v8 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node properties for edge %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }
}

- (void)removeModelPropertyForKey:(id)key forEdgeWithIdentifier:(unint64_t)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  graph = self->_graph;
  keyCopy = key;
  v8 = [(KGGraph *)graph edgeForIdentifier:identifier];
  properties = [v8 properties];
  v10 = [properties mutableCopy];

  [v10 removeObjectForKey:keyCopy];
  v11 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v11 updateEdge:v8 newProperties:v10];
  v12 = self->_graph;
  v15 = 0;
  v13 = [(KGMutableGraph *)v12 performChangesAndWait:v11 error:&v15];
  v14 = v15;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge properties for node %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }
}

- (void)persistModelProperties:(id)properties forEdgeWithIdentifier:(unint64_t)identifier clobberExisting:(BOOL)existing
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = [KGPropertyValue kgPropertiesWithMAProperties:properties];
  if (v8)
  {
    v9 = v8;
    v10 = [(KGGraph *)self->_graph edgeForIdentifier:identifier];
    v11 = v10;
    if (!existing)
    {
      properties = [v10 properties];
      v13 = [properties mutableCopy];

      [v13 addEntriesFromDictionary:v9];
      v9 = v13;
    }

    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateEdge:v11 newProperties:v9];
    graph = self->_graph;
    v18 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v18];
    v17 = v18;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge properties for edge %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
    *buf = 138412546;
    v20 = 0;
    v21 = 2112;
    v22 = v9;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge properties %@ for edge with identifier %@", buf, 0x16u);
LABEL_9:
  }
}

- (void)persistModelProperty:(id)property forKey:(id)key forEdgeWithIdentifier:(unint64_t)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  keyCopy = key;
  v10 = [KGPropertyValue kgPropertyValueWithMAPropertyValue:propertyCopy];
  if (v10)
  {
    v11 = [(KGGraph *)self->_graph edgeForIdentifier:identifier];
    properties = [v11 properties];
    v13 = [properties mutableCopy];

    [v13 setObject:v10 forKeyedSubscript:keyCopy];
    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateEdge:v11 newProperties:v13];
    graph = self->_graph;
    v19 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v19];
    v17 = v19;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge property for edge %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
    *buf = 138412546;
    v21 = propertyCopy;
    v22 = 2112;
    v23 = v18;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting edge property %@ for edge with identifier %@", buf, 0x16u);
  }
}

- (void)removeModelPropertiesForNodeWithIdentifier:(unint64_t)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = [(KGGraph *)self->_graph nodeForIdentifier:identifier];
  v5 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v5 updateNode:v4 newProperties:MEMORY[0x277CBEC10]];
  graph = self->_graph;
  v9 = 0;
  v7 = [(KGMutableGraph *)graph performChangesAndWait:v5 error:&v9];
  v8 = v9;
  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error removing node properties for node %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }
}

- (void)removeModelPropertyForKey:(id)key forNodeWithIdentifier:(unint64_t)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  graph = self->_graph;
  keyCopy = key;
  v8 = [(KGGraph *)graph nodeForIdentifier:identifier];
  properties = [v8 properties];
  v10 = [properties mutableCopy];

  [v10 removeObjectForKey:keyCopy];
  v11 = objc_alloc_init(KGGraphChangeRequest);
  [(KGGraphChangeRequest *)v11 updateNode:v8 newProperties:v10];
  v12 = self->_graph;
  v15 = 0;
  v13 = [(KGMutableGraph *)v12 performChangesAndWait:v11 error:&v15];
  v14 = v15;
  if (!v13)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v8;
      _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error removing node property for node %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
  }
}

- (void)persistModelProperties:(id)properties forNodeWithIdentifier:(unint64_t)identifier clobberExisting:(BOOL)existing
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = [KGPropertyValue kgPropertiesWithMAProperties:properties];
  if (v8)
  {
    v9 = v8;
    v10 = [(KGGraph *)self->_graph nodeForIdentifier:identifier];
    v11 = v10;
    if (!existing)
    {
      properties = [v10 properties];
      v13 = [properties mutableCopy];

      [v13 addEntriesFromDictionary:v9];
      v9 = v13;
    }

    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateNode:v11 newProperties:v9];
    graph = self->_graph;
    v18 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v18];
    v17 = v18;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v20 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node properties for node %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }

    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
    *buf = 138412546;
    v20 = 0;
    v21 = 2112;
    v22 = v9;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node properties %@ for node with identifier %@", buf, 0x16u);
LABEL_9:
  }
}

- (void)persistModelProperty:(id)property forKey:(id)key forNodeWithIdentifier:(unint64_t)identifier
{
  v24 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  keyCopy = key;
  v10 = [KGPropertyValue kgPropertyValueWithMAPropertyValue:propertyCopy];
  if (v10)
  {
    v11 = [(KGGraph *)self->_graph nodeForIdentifier:identifier];
    properties = [v11 properties];
    v13 = [properties mutableCopy];

    [v13 setObject:v10 forKeyedSubscript:keyCopy];
    v14 = objc_alloc_init(KGGraphChangeRequest);
    [(KGGraphChangeRequest *)v14 updateNode:v11 newProperties:v13];
    graph = self->_graph;
    v19 = 0;
    v16 = [(KGMutableGraph *)graph performChangesAndWait:v14 error:&v19];
    v17 = v19;
    if (!v16)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v21 = v11;
        _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node property for node %@", buf, 0xCu);
      }

      [(MAGraph *)self setHadFatalError];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:identifier];
    *buf = 138412546;
    v21 = propertyCopy;
    v22 = 2112;
    v23 = v18;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error persisting node property %@ for node with identifier %@", buf, 0x16u);
  }
}

- (BOOL)copyPersistentStoreToURL:(id)l error:(id *)error
{
  graph = self->_graph;
  lCopy = l;
  store = [(KGStoredGraph *)graph store];
  LOBYTE(error) = [store copyToURL:lCopy error:error];

  return error;
}

- (void)closePersistentStore
{
  store = [(KGStoredGraph *)self->_graph store];
  [store close];

  graph = self->_graph;
  self->_graph = 0;
}

- (BOOL)migratePersistentStoreToURL:(id)l error:(id *)error
{
  lCopy = l;
  store = [(KGStoredGraph *)self->_graph store];
  v8 = [store url];

  store2 = [(KGStoredGraph *)self->_graph store];
  [store2 close];

  graph = self->_graph;
  self->_graph = 0;

  if ([objc_opt_class() migratePersistentStoreFromURL:v8 toURL:lCopy error:error])
  {
    v11 = [(MAGraph *)self _instantiateGraphWithStoreAtURL:lCopy error:error];
    v12 = self->_graph;
    self->_graph = v11;

    v13 = self->_graph != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)unloadDomains:(id)domains
{
  domainsCopy = domains;
  v6 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v6);
}

- (void)unloadEdge:(id)edge
{
  edgeCopy = edge;
  v6 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v6);
}

- (void)loadDomains:(id)domains
{
  domainsCopy = domains;
  v6 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v6);
}

- (id)databaseURL
{
  store = [(KGStoredGraph *)self->_graph store];
  v3 = [store url];

  return v3;
}

- (MAGraph)initWithSpecification:(id)specification persistenceStoreURL:(id)l error:(id *)error
{
  lCopy = l;
  v9 = [(MAGraph *)self initWithSpecification:specification];
  v10 = v9;
  if (v9)
  {
    v11 = [(MAGraph *)v9 _instantiateGraphWithStoreAtURL:lCopy error:error];
    graph = v10->_graph;
    v10->_graph = v11;

    if (!v10->_graph)
    {

      v10 = 0;
    }
  }

  return v10;
}

- (MAGraph)initWithPersistentStoreURL:(id)l options:(int64_t)options error:(id *)error
{
  lCopy = l;
  defaultSpecification = [objc_opt_class() defaultSpecification];
  [defaultSpecification setPersistenceOptions:options];
  v10 = [(MAGraph *)self initWithSpecification:defaultSpecification persistenceStoreURL:lCopy error:error];

  return v10;
}

- (id)_instantiateGraphWithStoreAtURL:(id)l error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v7 = [MAKGEntityFactory alloc];
  specification = [(MAGraph *)self specification];
  v9 = [(MAKGEntityFactory *)v7 initWithSpecification:specification];

  v10 = [[KGDegasGraphStore alloc] initWithURL:lCopy];
  if ([(MAGraph *)self isReadOnly])
  {
    v11 = 1;
  }

  else
  {
    v11 = 6;
  }

  if ([(MAGraph *)self usesClassCDataProtection])
  {
    v11 |= 0x10uLL;
  }

  else if ([(MAGraph *)self usesClassBDataProtection])
  {
    v11 |= 0x20uLL;
  }

  else if ([(MAGraph *)self usesClassADataProtection])
  {
    v11 |= 0x40uLL;
  }

  if ([(MAGraph *)self _shouldFail])
  {
    v12 = v11 | 0x10000;
  }

  else
  {
    v12 = v11;
  }

  v19 = 0;
  v13 = [(KGDegasGraphStore *)v10 openWithMode:v12 error:&v19];
  v14 = v19;
  if (v13)
  {
    v15 = [[KGStoredGraph alloc] initGraphWithStore:v10 entityFactory:v9];
  }

  else
  {
    v16 = KGLoggingConnection();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v21 = v14;
      _os_log_error_impl(&dword_255870000, v16, OS_LOG_TYPE_ERROR, "Opening graph store failed: %@", buf, 0xCu);
    }

    [(MAGraph *)self setHadFatalError];
    if (error)
    {
      v17 = v14;
      v15 = 0;
      *error = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (BOOL)_shouldFail
{
  specification = [(MAGraph *)self specification];
  v3 = ([specification persistenceOptions] >> 8) & 1;

  return v3;
}

- (id)edgeFromFetchedRowWithIdentifier:(int)identifier domain:(signed __int16)domain label:(id)label weight:(float)weight properties:(id)properties sourceNodeIdentifier:(int)nodeIdentifier targetNodeIdentifier:(int)targetNodeIdentifier
{
  labelCopy = label;
  propertiesCopy = properties;
  v14 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v14);
}

- (id)nodeFromFetchedRowWithIdentifier:(int)identifier domain:(signed __int16)domain label:(id)label weight:(float)weight properties:(id)properties
{
  labelCopy = label;
  propertiesCopy = properties;
  v12 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v12);
}

+ (id)persistentStoreURLWithPath:(id)path andName:(id)name
{
  nameCopy = name;
  pathCopy = path;
  persistentStoreFileExtension = [self persistentStoreFileExtension];
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy];

  v10 = [v9 URLByAppendingPathComponent:nameCopy];

  v11 = [v10 URLByAppendingPathExtension:persistentStoreFileExtension];

  return v11;
}

- (BOOL)writeGraphJSONToURL:(id)l error:(id *)error
{
  lCopy = l;
  _graphJSONDictionary = [(MAGraph *)self _graphJSONDictionary];
  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v11 = [v8 fileExistsAtPath:path];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v18 = 0;
    [v8 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v18];
    v12 = v18;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB78]) initWithURL:lCopy append:0];
  v14 = v13;
  if (v12 || !v13)
  {
    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot write data to URL %@", lCopy];
      *error = [v15 errorWithDescription:lCopy];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    [v13 open];
    error = [MEMORY[0x277CCAAA0] writeJSONObject:_graphJSONDictionary toStream:v14 options:0 error:error];
    [v14 close];
    if (error)
    {
      LOBYTE(error) = 1;
    }

    else
    {
      [v8 removeItemAtURL:lCopy error:0];
    }
  }

  return error;
}

- (id)_graphJSONDictionary
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(MAGraph *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKey:@"id"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MAGraph version](self, "version")}];
  [v3 setObject:v6 forKey:@"version"];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__MAGraph_File_Private___graphJSONDictionary__block_invoke;
  v17[3] = &unk_2797FF670;
  v18 = v7;
  v8 = v7;
  [(MAGraph *)self enumerateNodesWithBlock:v17];
  [v3 setObject:v8 forKey:@"nodes"];
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __45__MAGraph_File_Private___graphJSONDictionary__block_invoke_2;
  v15 = &unk_2797FFB60;
  v16 = v9;
  v10 = v9;
  [(MAGraph *)self enumerateEdgesWithBlock:&v12];
  [v3 setObject:v10 forKey:{@"edges", v12, v13, v14, v15}];

  return v3;
}

void __45__MAGraph_File_Private___graphJSONDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v14 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v14 setObject:v5 forKey:@"id"];

  v6 = [v4 label];
  [v14 setObject:v6 forKey:@"name"];

  v7 = [v4 propertyDictionary];
  [v14 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v14 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v10 = [v9 numberWithFloat:?];
  [v14 setObject:v10 forKey:@"weight"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 domain];

  v13 = [v11 numberWithUnsignedShort:v12];
  [v14 setObject:v13 forKey:@"cluster"];

  [*(a1 + 32) addObject:v14];
}

void __45__MAGraph_File_Private___graphJSONDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v17 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v17 setObject:v5 forKey:@"id"];

  v6 = [v4 label];
  [v17 setObject:v6 forKey:@"name"];

  v7 = [v4 propertyDictionary];
  [v17 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v17 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v10 = [v9 numberWithFloat:?];
  [v17 setObject:v10 forKey:@"weight"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 sourceNode];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
  [v17 setObject:v13 forKey:@"source"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v4 targetNode];

  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "identifier")}];
  [v17 setObject:v16 forKey:@"target"];

  [*(a1 + 32) addObject:v17];
}

- (MAGraph)initWithGraphJSONURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v7);
}

- (MAGraph)initWithGraphMLURL:(id)l error:(id *)error
{
  lCopy = l;
  v7 = KGMethodNotImplentedException(self, a2);
  objc_exception_throw(v7);
}

- (MAGraph)initWithSpecification:(id)specification dataURL:(id)l error:(id *)error
{
  lCopy = l;
  v9 = [(MAGraph *)self initWithSpecification:specification];
  if (!v9)
  {
LABEL_5:
    v11 = v9;
    goto LABEL_10;
  }

  v10 = [objc_alloc(MEMORY[0x277CBEAE0]) initWithURL:lCopy];
  [v10 open];
  if (v10)
  {
    v11 = [MEMORY[0x277CCAC58] propertyListWithStream:v10 options:0 format:0 error:error];
    [v10 close];
    if (!v11)
    {

      goto LABEL_10;
    }

    [(MAGraph *)v9 _loadWithGraphDictionary:v11];

    goto LABEL_5;
  }

  v12 = +[MALogging sharedLogging];
  loggingConnection = [v12 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *v15 = 0;
    _os_log_error_impl(&dword_255870000, loggingConnection, OS_LOG_TYPE_ERROR, "Bad data URL", v15, 2u);
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)_loadWithGraphDictionary:(id)dictionary
{
  v57 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v43 = dictionaryCopy;
  obj = [dictionaryCopy objectForKey:@"nodes"];
  v6 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v52;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v52 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = [v10 objectForKey:@"label"];
        v12 = [v10 objectForKey:@"domain"];
        unsignedIntegerValue = [v12 unsignedIntegerValue];

        v14 = [v10 objectForKey:@"weight"];
        [v14 floatValue];
        v16 = v15;

        v17 = [v10 objectForKey:@"properties"];
        LODWORD(v18) = v16;
        v19 = [(MAGraph *)self addNodeWithLabel:v11 domain:unsignedIntegerValue weight:v17 properties:v18];
        v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v19, "identifier")}];
        v21 = [v10 objectForKeyedSubscript:@"identifier"];
        [v5 setObject:v20 forKeyedSubscript:v21];
      }

      v7 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v7);
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v44 = [v43 objectForKey:@"edges"];
  v22 = [v44 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    obja = *v48;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v48 != obja)
        {
          objc_enumerationMutation(v44);
        }

        v25 = *(*(&v47 + 1) + 8 * j);
        v26 = [v25 objectForKey:@"sourceNodeIdentifier"];
        v27 = [v5 objectForKeyedSubscript:v26];
        unsignedIntegerValue2 = [v27 unsignedIntegerValue];

        v29 = [v25 objectForKey:@"targetNodeIdentifier"];
        v30 = [v5 objectForKeyedSubscript:v29];
        unsignedIntegerValue3 = [v30 unsignedIntegerValue];

        v32 = [v25 objectForKey:@"label"];
        v33 = [v25 objectForKey:@"domain"];
        unsignedIntegerValue4 = [v33 unsignedIntegerValue];

        v35 = [v25 objectForKey:@"weight"];
        [v35 floatValue];
        v37 = v36;

        v38 = [v25 objectForKey:@"properties"];
        v39 = [(MAGraph *)self nodeForIdentifier:unsignedIntegerValue2];
        v40 = [(MAGraph *)self nodeForIdentifier:unsignedIntegerValue3];
        LODWORD(v41) = v37;
        v42 = [(MAGraph *)self addEdgeWithLabel:v32 sourceNode:v39 targetNode:v40 domain:unsignedIntegerValue4 weight:v38 properties:v41];
      }

      v23 = [v44 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v23);
  }
}

- (BOOL)writeDataToURL:(id)l error:(id *)error
{
  lCopy = l;
  _graphDictionary = [(MAGraph *)self _graphDictionary];
  v8 = objc_alloc_init(MEMORY[0x277CCAA00]);
  uRLByDeletingLastPathComponent = [lCopy URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];
  v11 = [v8 fileExistsAtPath:path];

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v18 = 0;
    [v8 createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v18];
    v12 = v18;
  }

  v13 = [objc_alloc(MEMORY[0x277CBEB78]) initWithURL:lCopy append:0];
  v14 = v13;
  if (v12 || !v13)
  {
    if (error)
    {
      v15 = MEMORY[0x277CCA9B8];
      lCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Cannot write data to URL %@", lCopy];
      *error = [v15 errorWithDescription:lCopy];

      LOBYTE(error) = 0;
    }
  }

  else
  {
    [v13 open];
    error = [MEMORY[0x277CCAC58] writePropertyList:_graphDictionary toStream:v14 format:200 options:0 error:error];
    [v14 close];
    if (error)
    {
      LOBYTE(error) = 1;
    }

    else
    {
      [v8 removeItemAtURL:lCopy error:0];
    }
  }

  return error;
}

- (id)_graphDictionary
{
  v23[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  identifier = [(MAGraph *)self identifier];
  uUIDString = [identifier UUIDString];
  [v3 setObject:uUIDString forKey:@"identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[MAGraph version](self, "version")}];
  [v3 setObject:v6 forKey:@"version"];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __41__MAGraph_File_Private___graphDictionary__block_invoke;
  v21[3] = &unk_2797FF670;
  v22 = v7;
  v8 = v7;
  [(MAGraph *)self enumerateNodesWithBlock:v21];
  v9 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"identifier" ascending:1];
  v23[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];

  v11 = [v8 sortedArrayUsingDescriptors:v10];
  [v3 setObject:v11 forKey:@"nodes"];
  v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16 = MEMORY[0x277D85DD0];
  v17 = 3221225472;
  v18 = __41__MAGraph_File_Private___graphDictionary__block_invoke_2;
  v19 = &unk_2797FFB60;
  v20 = v12;
  v13 = v12;
  [(MAGraph *)self enumerateEdgesWithBlock:&v16];
  v14 = [v13 sortedArrayUsingDescriptors:{v10, v16, v17, v18, v19}];
  [v3 setObject:v14 forKey:@"edges"];

  return v3;
}

void __41__MAGraph_File_Private___graphDictionary__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v14 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v14 setObject:v5 forKey:@"identifier"];

  v6 = [v4 label];
  [v14 setObject:v6 forKey:@"label"];

  v7 = [v4 propertyDictionary];
  [v14 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v14 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v11 = v10;

  LODWORD(v12) = v11;
  v13 = [v9 numberWithFloat:v12];
  [v14 setObject:v13 forKey:@"weight"];

  [*(a1 + 32) addObject:v14];
}

void __41__MAGraph_File_Private___graphDictionary__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CBEB38];
  v4 = a2;
  v17 = objc_alloc_init(v3);
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v4, "identifier")}];
  [v17 setObject:v5 forKey:@"identifier"];

  v6 = [v4 label];
  [v17 setObject:v6 forKey:@"label"];

  v7 = [v4 propertyDictionary];
  [v17 setObject:v7 forKey:@"properties"];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v4, "domain")}];
  [v17 setObject:v8 forKey:@"domain"];

  v9 = MEMORY[0x277CCABB0];
  [v4 weight];
  v10 = [v9 numberWithFloat:?];
  [v17 setObject:v10 forKey:@"weight"];

  v11 = MEMORY[0x277CCABB0];
  v12 = [v4 sourceNode];
  v13 = [v11 numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
  [v17 setObject:v13 forKey:@"sourceNodeIdentifier"];

  v14 = MEMORY[0x277CCABB0];
  v15 = [v4 targetNode];

  v16 = [v14 numberWithUnsignedInteger:{objc_msgSend(v15, "identifier")}];
  [v17 setObject:v16 forKey:@"targetNodeIdentifier"];

  [*(a1 + 32) addObject:v17];
}

+ (id)graphJSONURLWithPath:(id)path andName:(id)name
{
  v5 = MEMORY[0x277CBEBC0];
  nameCopy = name;
  v7 = [v5 fileURLWithPath:path];
  v8 = [v7 URLByAppendingPathComponent:nameCopy];

  v9 = [v8 URLByAppendingPathExtension:@"json"];

  return v9;
}

+ (id)graphMLURLWithPath:(id)path andName:(id)name
{
  v5 = MEMORY[0x277CBEBC0];
  nameCopy = name;
  v7 = [v5 fileURLWithPath:path];
  v8 = [v7 URLByAppendingPathComponent:nameCopy];

  v9 = [v8 URLByAppendingPathExtension:@"graphml"];

  return v9;
}

- (id)schema:(id)schema
{
  schemaCopy = schema;
  v5 = +[MAGraph graph];
  edgesLabels = [(MAGraph *)self edgesLabels];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __34__MAGraph_Schema_Private__schema___block_invoke;
  v14[3] = &unk_2797FF9A8;
  v14[4] = self;
  v15 = schemaCopy;
  v16 = dictionary;
  v8 = v5;
  v17 = v8;
  v9 = dictionary;
  v10 = schemaCopy;
  [edgesLabels enumerateObjectsUsingBlock:v14];
  v11 = v17;
  v12 = v8;

  return v8;
}

void __34__MAGraph_Schema_Private__schema___block_invoke(uint64_t a1, void *a2)
{
  v110 = *MEMORY[0x277D85DE8];
  v77 = a2;
  v70 = [*(a1 + 32) edgesForLabel:?];
  [v70 valueForKeyPath:@"domain"];
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v97 = 0u;
  v71 = [obj countByEnumeratingWithState:&v94 objects:v109 count:16];
  if (v71)
  {
    v69 = *v95;
    do
    {
      v3 = 0;
      do
      {
        if (*v95 != v69)
        {
          objc_enumerationMutation(obj);
        }

        v72 = v3;
        v4 = *(*(&v94 + 1) + 8 * v3);
        v93[0] = MEMORY[0x277D85DD0];
        v93[1] = 3221225472;
        v93[2] = __34__MAGraph_Schema_Private__schema___block_invoke_2;
        v93[3] = &unk_2797FF980;
        v79 = v4;
        v93[4] = v4;
        v5 = [MEMORY[0x277CCAC30] predicateWithBlock:v93];
        v6 = [v70 filteredSetUsingPredicate:v5];

        v83 = [MEMORY[0x277CBEB58] set];
        v89 = 0u;
        v90 = 0u;
        v91 = 0u;
        v92 = 0u;
        v75 = v6;
        v7 = [v75 countByEnumeratingWithState:&v89 objects:v108 count:16];
        if (v7)
        {
          v8 = v7;
          v81 = *v90;
          do
          {
            for (i = 0; i != v8; ++i)
            {
              if (*v90 != v81)
              {
                objc_enumerationMutation(v75);
              }

              v10 = *(*(&v89 + 1) + 8 * i);
              v11 = [v10 sourceNode];
              v12 = [v10 targetNode];
              v13 = [v11 label];
              v107[0] = v13;
              v14 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v11, "domain")}];
              v107[1] = v14;
              v15 = [v12 label];
              v107[2] = v15;
              v16 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(v12, "domain")}];
              v107[3] = v16;
              v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v107 count:4];
              [v83 addObject:v17];
            }

            v8 = [v75 countByEnumeratingWithState:&v89 objects:v108 count:16];
          }

          while (v8);
        }

        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v74 = v83;
        v80 = [v74 countByEnumeratingWithState:&v85 objects:v106 count:16];
        if (v80)
        {
          v78 = *v86;
          do
          {
            for (j = 0; j != v80; ++j)
            {
              if (*v86 != v78)
              {
                objc_enumerationMutation(v74);
              }

              v19 = *(*(&v85 + 1) + 8 * j);
              v20 = [v19 objectAtIndexedSubscript:0];
              v21 = [v19 objectAtIndexedSubscript:1];
              v22 = [v21 unsignedShortValue];

              v84 = [v19 objectAtIndexedSubscript:2];
              v23 = [v19 objectAtIndexedSubscript:3];
              v24 = [v23 unsignedShortValue];

              v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %@ %u", v20, v22];
              v26 = *(a1 + 40);
              if (v26 && ([v26 containsIndex:v22] & 1) != 0)
              {
                v27 = 0;
              }

              else
              {
                v28 = [*(a1 + 32) nodesForDomain:v22];
                v29 = [v28 valueForKeyPath:@"label"];

                v30 = [v29 count];
                v27 = v30 > 1;
                if (v30 >= 2)
                {
                  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %u", v22];

                  v25 = v31;
                }
              }

              v32 = [*(a1 + 48) objectForKey:v25];
              if (!v32)
              {
                v33 = *(a1 + 56);
                if (v27)
                {
                  v34 = [v33 nodesCountForLabel:0 domain:v22 properties:MEMORY[0x277CBEC10]];
                  v35 = *(a1 + 56);
                  v104 = @"cid";
                  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v34];
                  v105 = v36;
                  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
                  LODWORD(v38) = 1.0;
                  [v35 addUniqueNodeWithLabel:0 domain:v22 weight:v37 properties:0 didCreate:v38];
                }

                else
                {
                  v39 = [v33 nodesCountForLabel:v20 domain:v22 properties:MEMORY[0x277CBEC10]];
                  v40 = *(a1 + 56);
                  v102 = @"cid";
                  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v39];
                  v103 = v36;
                  v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
                  LODWORD(v41) = 1.0;
                  [v40 addNodeWithLabel:v20 domain:v22 weight:v37 properties:v41];
                }
                v32 = ;

                [*(a1 + 48) setObject:v32 forKey:v25];
              }

              v82 = v25;
              v42 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %@ %u", v84, v24];
              v43 = *(a1 + 40);
              if (v43 && ([v43 containsIndex:v24] & 1) != 0)
              {
                v44 = 1;
              }

              else
              {
                v45 = v20;
                v46 = [*(a1 + 32) nodesForDomain:v24];
                v47 = [v46 valueForKeyPath:@"label"];

                v48 = [v47 count];
                v44 = v48 < 2;
                if (v48 >= 2)
                {
                  v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"NODE %u", v24];

                  v42 = v49;
                }

                v20 = v45;
              }

              v50 = v22;
              v51 = [*(a1 + 48) objectForKey:v42];
              v52 = [v20 isEqualToString:v84];
              if (v50 == v24)
              {
                v53 = v52;
              }

              else
              {
                v53 = 0;
              }

              if (!v51 || v53)
              {
                v76 = v20;
                v56 = *(a1 + 56);
                if ((v44 | v53))
                {
                  v57 = [v56 nodesCountForLabel:v84 domain:v24 properties:MEMORY[0x277CBEC10]];
                  v73 = *(a1 + 56);
                  v98 = @"cid";
                  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v57];
                  v99 = v58;
                  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
                  LODWORD(v60) = 1.0;
                  [v73 addNodeWithLabel:v84 domain:v24 weight:v59 properties:v60];
                }

                else
                {
                  v61 = [v56 nodesCountForLabel:0 domain:v24 properties:MEMORY[0x277CBEC10]];
                  v62 = *(a1 + 56);
                  v100 = @"cid";
                  v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v61];
                  v101 = v58;
                  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
                  LODWORD(v63) = 1.0;
                  [v62 addUniqueNodeWithLabel:0 domain:v24 weight:v59 properties:0 didCreate:v63];
                }
                v54 = ;

                v55 = v82;
                if ((v53 & 1) == 0)
                {
                  [*(a1 + 48) setObject:v54 forKey:v42];
                }

                v20 = v76;
              }

              else
              {
                v54 = v51;
                v55 = v82;
              }

              v64 = *(a1 + 56);
              v65 = [v79 intValue];
              LODWORD(v66) = 1.0;
              v67 = [v64 addUniqueEdgeWithLabel:v77 sourceNode:v32 targetNode:v54 domain:v65 weight:MEMORY[0x277CBEC10] properties:v66];
            }

            v80 = [v74 countByEnumeratingWithState:&v85 objects:v106 count:16];
          }

          while (v80);
        }

        v3 = v72 + 1;
      }

      while (v72 + 1 != v71);
      v71 = [obj countByEnumeratingWithState:&v94 objects:v109 count:16];
    }

    while (v71);
  }
}

- (BOOL)conformsToGraphSchema:(id)schema
{
  v30 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  array = [MEMORY[0x277CBEB18] array];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __49__MAGraph_Schema_Private__conformsToGraphSchema___block_invoke;
  v15 = &unk_2797FF958;
  v6 = schemaCopy;
  v16 = v6;
  v18 = &v20;
  v19 = &v24;
  v7 = array;
  v17 = v7;
  [(MAGraph *)self enumerateNodesWithBlock:&v12];
  v8 = [v7 count];
  if (v8 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Not verified nodes:%@\n", buf, 0xCu);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
  {
    v9 = v25[3];
    *buf = 134217984;
    v29 = v9;
    _os_log_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "Verified %lu nodes", buf, 0xCu);
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v21 + 24);
  }

  *(v21 + 24) = v10;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  return v10;
}

void __49__MAGraph_Schema_Private__conformsToGraphSchema___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = *(a1 + 32);
  v7 = [v5 label];
  v8 = [v6 nodesForLabel:v7 domain:{objc_msgSend(v5, "domain")}];
  v9 = [v8 anyObject];

  if (!v9)
  {
    v12 = [*(a1 + 32) nodesForDomain:{objc_msgSend(v5, "domain")}];
    v9 = [v12 anyObject];

    v13 = [v9 label];
    v14 = [v13 isEqualToString:@"*"];

    if (v14)
    {
      if (v9)
      {
        goto LABEL_2;
      }
    }

    else
    {
    }

    [*(a1 + 40) addObject:v5];
    v9 = 0;
    goto LABEL_10;
  }

LABEL_2:
  *(*(*(a1 + 48) + 8) + 24) = [v5 conformsToNodeSchema:v9];
  ++*(*(*(a1 + 56) + 8) + 24);
  *a3 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v10 = nodePrintableSchema(v5, @"REAL_NODE");
    v11 = nodePrintableSchema(v9, @"DEFINITION_NODE");
    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    _os_log_error_impl(&dword_255870000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Failed to verify:\n%@\n%@\n", &v15, 0x16u);
  }

LABEL_10:
}

- (id)edgeSchemeWithLabel:(id)label domain:(unsigned __int16)domain sourceNode:(id)node targetNode:(id)targetNode
{
  domainCopy = domain;
  labelCopy = label;
  if (!labelCopy)
  {
    labelCopy = @"*";
    v12 = @"*";
  }

  LODWORD(v11) = 1.0;
  v13 = [(MAGraph *)self addUniqueEdgeWithLabel:labelCopy sourceNode:node targetNode:targetNode domain:domainCopy weight:MEMORY[0x277CBEC10] properties:v11];

  return v13;
}

- (id)nodeSchemeWithLabel:(id)label domain:(unsigned __int16)domain
{
  domainCopy = domain;
  labelCopy = label;
  if (!labelCopy)
  {
    labelCopy = @"*";
    v8 = @"*";
  }

  LODWORD(v7) = 1.0;
  v9 = [(MAGraph *)self addUniqueNodeWithLabel:labelCopy domain:domainCopy weight:MEMORY[0x277CBEC10] properties:0 didCreate:v7];

  return v9;
}

- (id)matchWithDefinitions:(id)definitions constraints:(id)constraints error:(id *)error
{
  v69 = *MEMORY[0x277D85DE8];
  definitionsCopy = definitions;
  constraintsCopy = constraints;
  if ([definitionsCopy count])
  {
    if (constraintsCopy && [constraintsCopy count])
    {
      v8 = [MEMORY[0x277CBEB40] orderedSetWithArray:constraintsCopy];
      v9 = [MASubGraph subGraphWithGraph:self];
      if ([v8 count])
      {
        v51 = v8;
        v52 = definitionsCopy;
        v46 = constraintsCopy;
        v53 = v9;
        while (1)
        {
          firstObject = [v8 firstObject];
          if (!firstObject)
          {
            break;
          }

          v11 = firstObject;
          v12 = [(MAGraph *)self selectBestRootNodeForPath:firstObject withDefinitions:definitionsCopy];
          if (!v12)
          {
            goto LABEL_39;
          }

          v13 = v12;
          label = [v12 label];
          v15 = [definitionsCopy objectForKey:label];

          if (![v15 count])
          {

LABEL_39:
            break;
          }

          v47 = v11;
          v16 = [MEMORY[0x277CBEB58] set];
          v59 = 0u;
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          obj = v15;
          v17 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v60;
            do
            {
              for (i = 0; i != v18; ++i)
              {
                if (*v60 != v19)
                {
                  objc_enumerationMutation(obj);
                }

                v21 = *(*(&v59 + 1) + 8 * i);
                v22 = -[MAGraph nodeForIdentifier:](self, "nodeForIdentifier:", [v21 identifier]);
                if ([v22 isEqualToNode:v21] && (v23 = objc_msgSend(v22, "edgesCount"), v23 == objc_msgSend(v21, "edgesCount")))
                {
                  v24 = [MEMORY[0x277CBEB98] setWithObject:v21];
                }

                else
                {
                  label2 = [v21 label];
                  if ([label2 isEqualToString:@"*"])
                  {

                    label2 = 0;
                  }

                  domain = [v21 domain];
                  propertyDictionary = [v21 propertyDictionary];
                  v24 = [(MAGraph *)self nodesForLabel:label2 domain:domain properties:propertyDictionary];
                }

                [v16 unionSet:v24];
              }

              v18 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
            }

            while (v18);
          }

          v28 = [MEMORY[0x277CBEB58] set];
          v55 = 0u;
          v56 = 0u;
          v57 = 0u;
          v58 = 0u;
          v48 = v16;
          v29 = [v48 countByEnumeratingWithState:&v55 objects:v67 count:16];
          if (v29)
          {
            v30 = v29;
            v50 = *v56;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v56 != v50)
                {
                  objc_enumerationMutation(v48);
                }

                v32 = *(*(&v55 + 1) + 8 * j);
                v33 = objc_autoreleasePoolPush();
                v34 = [MEMORY[0x277CBEB58] set];
                v35 = MEMORY[0x277CBEB18];
                v65[0] = @"node";
                v65[1] = @"label";
                v66[0] = v32;
                label3 = [v13 label];
                v66[1] = label3;
                v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
                v38 = [v35 arrayWithObject:v37];

                array = [v51 array];
                LODWORD(v37) = [(MAGraph *)self _matchNode:v32 usingAbstractNode:v13 fromEdge:0 atIteration:0 withDefinitions:v52 constraints:array unusedConstraints:v34 andSubGraph:v53 matchingNodeQueue:v38];

                if (v37)
                {
                  label4 = [v13 label];
                  [v53 _addNode:v32 withName:label4];
                }

                if ([v28 count])
                {
                  [v28 intersectSet:v34];
                }

                else
                {
                  [v28 unionSet:v34];
                }

                objc_autoreleasePoolPop(v33);
              }

              v30 = [v48 countByEnumeratingWithState:&v55 objects:v67 count:16];
            }

            while (v30);
          }

          v8 = v51;
          [v51 intersectSet:v28];

          definitionsCopy = v52;
          v9 = v53;
          constraintsCopy = v46;
          if (![v51 count])
          {
            goto LABEL_35;
          }
        }

        v41 = 0;
      }

      else
      {
LABEL_35:
        v41 = v9;
      }
    }

    else
    {
      v42 = [MASubGraph subGraphWithGraph:self];
      v63[0] = MEMORY[0x277D85DD0];
      v63[1] = 3221225472;
      v63[2] = __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke;
      v63[3] = &unk_2797FFAC0;
      v63[4] = self;
      v43 = v42;
      v64 = v43;
      [definitionsCopy enumerateKeysAndObjectsUsingBlock:v63];
      v44 = v64;
      v8 = v43;

      v41 = v8;
    }
  }

  else
  {
    v41 = 0;
  }

  return v41;
}

void __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = a3;
  v6 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        objc_opt_class();
        v12 = objc_opt_isKindOfClass();
        if (isKindOfClass)
        {
          v13 = v10;
          v14 = [v13 label];
          if ([v14 isEqualToString:@"*"])
          {

            v14 = 0;
          }

          v15 = *(a1 + 32);
          v16 = [v13 domain];
          v17 = [v13 propertyDictionary];
          v27[0] = MEMORY[0x277D85DD0];
          v27[1] = 3221225472;
          v27[2] = __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke_2;
          v27[3] = &unk_2797FFA70;
          v28 = *(a1 + 40);
          v29 = v5;
          [v15 enumerateNodesWithLabel:v14 domain:v16 properties:v17 usingBlock:v27];
          v19 = &v29;
          v18 = &v28;
        }

        else
        {
          if ((v12 & 1) == 0)
          {
            continue;
          }

          v20 = v10;
          v14 = [v20 label];
          if ([v14 isEqualToString:@"*"])
          {

            v14 = 0;
          }

          v21 = *(a1 + 32);
          v22 = [v20 domain];
          v17 = [v20 propertyDictionary];
          v24[0] = MEMORY[0x277D85DD0];
          v24[1] = 3221225472;
          v24[2] = __65__MAGraph_QueryInternal__matchWithDefinitions_constraints_error___block_invoke_3;
          v24[3] = &unk_2797FFA98;
          v25 = *(a1 + 40);
          v26 = v5;
          [v21 enumerateEdgesWithLabel:v14 domain:v22 properties:v17 usingBlock:v24];
          v19 = &v26;
          v18 = &v25;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }
}

- (id)matchWithVisualFormat:(id)format elements:(id)elements error:(id *)error
{
  selfCopy = self;
  v39 = *MEMORY[0x277D85DE8];
  formatCopy = format;
  elementsCopy = elements;
  v26 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(elementsCopy, "count")}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  allKeys = [elementsCopy allKeys];
  v9 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(allKeys);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [elementsCopy objectForKeyedSubscript:{v13, selfCopy}];
        v37 = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v37 count:1];
        [v7 setObject:v15 forKey:v13];
      }

      v10 = [allKeys countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v10);
  }

  v31 = 0;
  v32 = v7;
  v30 = 0;
  v16 = [objc_opt_class() scanMatchString:formatCopy definitions:&v32 constraints:&v31 forCreation:0 error:&v30];
  v17 = v32;

  v18 = v31;
  v19 = v30;
  v20 = v19;
  if (v16)
  {
    v29 = v19;
    v21 = [(MAGraph *)selfCopy matchWithDefinitions:v17 constraints:v18 error:&v29];
    v22 = v29;

    v20 = v22;
  }

  else
  {
    v21 = 0;
  }

  objc_autoreleasePoolPop(v26);
  if (error)
  {
    v23 = v20;
    *error = v20;
  }

  return v21;
}

- (id)selectBestRootNodeForPath:(id)path withDefinitions:(id)definitions
{
  v62 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  definitionsCopy = definitions;
  sourceNode = [pathCopy sourceNode];
  label = [sourceNode label];
  v10 = [definitionsCopy objectForKey:label];

  v45 = pathCopy;
  targetNode = [pathCopy targetNode];
  label2 = [targetNode label];
  v44 = definitionsCopy;
  v49 = [definitionsCopy objectForKey:label2];

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v10;
  v13 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  if (!v13)
  {
    v15 = 0;
    v51 = 0;
    goto LABEL_20;
  }

  v14 = v13;
  v15 = 0;
  v51 = 0;
  v16 = *v57;
  do
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v57 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v56 + 1) + 8 * i);
      edgesCount = [v18 edgesCount];
      graphReference = [v18 graphReference];

      if (!graphReference)
      {
        goto LABEL_13;
      }

      v21 = -[MAGraph nodeForIdentifier:](self, "nodeForIdentifier:", [v18 identifier]);
      if (([v21 isEqualToNode:v18] & 1) == 0)
      {

LABEL_13:
        label3 = [v18 label];
        if ([label3 isEqualToString:@"*"])
        {

          label3 = 0;
        }

        domain = [v18 domain];
        propertyDictionary = [v18 propertyDictionary];
        v51 += [(MAGraph *)self nodesCountForLabel:label3 domain:domain properties:propertyDictionary];

        goto LABEL_16;
      }

      edgesCount2 = [v21 edgesCount];
      edgesCount3 = [v18 edgesCount];

      v24 = v51;
      if (edgesCount2 == edgesCount3)
      {
        v24 = v51 + 1;
      }

      v51 = v24;
      if (edgesCount2 != edgesCount3)
      {
        goto LABEL_13;
      }

LABEL_16:
      v15 += edgesCount;
    }

    v14 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
  }

  while (v14);
LABEL_20:

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v46 = v49;
  v50 = [v46 countByEnumeratingWithState:&v52 objects:v60 count:16];
  v28 = 0;
  v29 = 0;
  if (v50)
  {
    v48 = *v53;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v53 != v48)
        {
          objc_enumerationMutation(v46);
        }

        v31 = *(*(&v52 + 1) + 8 * j);
        edgesCount4 = [v31 edgesCount];
        graphReference2 = [v31 graphReference];

        if (graphReference2)
        {
          v34 = -[MAGraph nodeForIdentifier:](self, "nodeForIdentifier:", [v31 identifier]);
          if ([v34 isEqualToNode:v31])
          {
            edgesCount5 = [v34 edgesCount];
            edgesCount6 = [v31 edgesCount];

            if (edgesCount5 == edgesCount6)
            {
              ++v28;
              goto LABEL_33;
            }
          }

          else
          {
          }
        }

        label4 = [v31 label];
        if ([label4 isEqualToString:@"*"])
        {

          label4 = 0;
        }

        domain2 = [v31 domain];
        propertyDictionary2 = [v31 propertyDictionary];
        v28 += [(MAGraph *)self nodesCountForLabel:label4 domain:domain2 properties:propertyDictionary2];

LABEL_33:
        v29 += edgesCount4;
      }

      v50 = [v46 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v50);
  }

  if (v51 > v28 || v51 >= v28 && v15 >= v29)
  {
    v40 = v45;
    targetNode2 = [v45 targetNode];
  }

  else
  {
    v40 = v45;
    targetNode2 = [v45 sourceNode];
  }

  v42 = targetNode2;

  return v42;
}

- (BOOL)_matchNode:(id)node usingAbstractNode:(id)abstractNode fromEdge:(id)edge atIteration:(unint64_t)iteration withDefinitions:(id)definitions constraints:(id)constraints unusedConstraints:(id)unusedConstraints andSubGraph:(id)self0 matchingNodeQueue:(id)self1
{
  v257 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  abstractNodeCopy = abstractNode;
  edgeCopy = edge;
  definitionsCopy = definitions;
  constraintsCopy = constraints;
  unusedConstraintsCopy = unusedConstraints;
  graphCopy = graph;
  queueCopy = queue;
  v242 = constraintsCopy;
  v21 = constraintsCopy;
  selfCopy = self;
  v22 = [(MAGraph *)self _constraintAbstractEdgesFromAbstractNode:abstractNodeCopy inConstraints:&v242];
  v152 = v242;

  v166 = abstractNodeCopy;
  v125 = v21;
  if (![v22 count])
  {
    [unusedConstraintsCopy addObjectsFromArray:v21];
    label = [abstractNodeCopy label];
    v115 = [definitionsCopy objectForKey:label];

    hasProperties = [abstractNodeCopy hasProperties];
    v238 = 0u;
    v239 = 0u;
    v240 = 0u;
    v241 = 0u;
    v113 = v115;
    v117 = [v113 countByEnumeratingWithState:&v238 objects:v256 count:16];
    if (v117)
    {
      v118 = v117;
      v119 = *v239;
      while (2)
      {
        for (i = 0; i != v118; ++i)
        {
          if (*v239 != v119)
          {
            objc_enumerationMutation(v113);
          }

          if ([nodeCopy matchesNode:*(*(&v238 + 1) + 8 * i) includingProperties:hasProperties])
          {
            LOBYTE(v62) = 1;
            goto LABEL_148;
          }
        }

        v118 = [v113 countByEnumeratingWithState:&v238 objects:v256 count:16];
        if (v118)
        {
          continue;
        }

        break;
      }

      LOBYTE(v62) = 0;
LABEL_148:
      v131 = v113;
      abstractNodeCopy = v166;
    }

    else
    {
      LOBYTE(v62) = 0;
      v131 = v113;
    }

    goto LABEL_153;
  }

  v131 = objc_opt_new();
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  obj = v22;
  v130 = [obj countByEnumeratingWithState:&v234 objects:v255 count:16];
  if (v130)
  {
    v127 = 0;
    v135 = iteration + 1;
    v129 = *v235;
    v123 = v208;
    v157 = definitionsCopy;
    v158 = unusedConstraintsCopy;
    v151 = v22;
LABEL_4:
    v23 = 0;
    while (1)
    {
      if (*v235 != v129)
      {
        objc_enumerationMutation(obj);
      }

      v132 = v23;
      v24 = *(*(&v234 + 1) + 8 * v23);
      v133 = objc_autoreleasePoolPush();
      v160 = [MASubGraph subGraphWithGraph:selfCopy];
      [v131 addObject:?];
      v25 = [v24 oppositeNode:abstractNodeCopy];
      v172 = v24;
      label2 = [v24 label];
      v27 = [definitionsCopy objectForKey:label2];

      v134 = v27;
      if (![v27 count])
      {
        v62 = 0;
        goto LABEL_127;
      }

      label3 = [v25 label];
      v29 = [definitionsCopy objectForKey:label3];

      v147 = v29;
      if ([v29 count])
      {
        break;
      }

      v62 = 0;
LABEL_126:

LABEL_127:
      objc_autoreleasePoolPop(v133);
      if (!v62)
      {
        v113 = obj;
        goto LABEL_153;
      }

      v23 = v132 + 1;
      if (v132 + 1 == v130)
      {
        v112 = [obj countByEnumeratingWithState:&v234 objects:v255 count:16];
        v130 = v112;
        if (!v112)
        {
          goto LABEL_144;
        }

        goto LABEL_4;
      }
    }

    minimum = [v172 minimum];
    maximum = [v172 maximum];
    isDirected = [v172 isDirected];
    v32 = [MEMORY[0x277CBEB58] set];
    v33 = v135;
    v136 = maximum;
    v161 = v25;
    v165 = v32;
    if (v135 >= maximum)
    {
      v63 = 0;
    }

    else
    {
      v126 = minimum;
      v233 = 0u;
      v232 = 0u;
      v231 = 0u;
      v230 = 0u;
      v168 = v134;
      v34 = [v168 countByEnumeratingWithState:&v230 objects:v254 count:16];
      if (v34)
      {
        v35 = v34;
        v36 = *v231;
        do
        {
          for (j = 0; j != v35; ++j)
          {
            if (*v231 != v36)
            {
              objc_enumerationMutation(v168);
            }

            v38 = *(*(&v230 + 1) + 8 * j);
            v39 = objc_autoreleasePoolPush();
            label4 = [v38 label];
            if ([label4 isEqualToString:@"*"])
            {

              label4 = 0;
            }

            v229 = 0;
            propertyDictionary = [v38 propertyDictionary];
            if ([v166 hasEdge:v172 isIn:&v229])
            {
              aBlock[0] = MEMORY[0x277D85DD0];
              aBlock[1] = 3221225472;
              aBlock[2] = __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke;
              aBlock[3] = &unk_2797FF9F8;
              v223 = edgeCopy;
              v224 = propertyDictionary;
              v42 = nodeCopy;
              v225 = v42;
              v227 = isDirected;
              v228 = v229;
              v226 = v165;
              v43 = _Block_copy(aBlock);
              [v42 enumerateEdgesWithLabel:label4 domain:objc_msgSend(v38 usingBlock:{"domain"), v43}];
            }

            objc_autoreleasePoolPop(v39);
          }

          v35 = [v168 countByEnumeratingWithState:&v230 objects:v254 count:16];
        }

        while (v35);
      }

      if (![v165 count])
      {
        v62 = 0;
        v32 = v165;
        abstractNodeCopy = v166;
        definitionsCopy = v157;
        unusedConstraintsCopy = v158;
        v25 = v161;
LABEL_125:

        goto LABEL_126;
      }

      context = [MEMORY[0x277CBEB18] array];
      v218 = 0u;
      v219 = 0u;
      v220 = 0u;
      v221 = 0u;
      v44 = v125;
      v45 = [v44 countByEnumeratingWithState:&v218 objects:v253 count:16];
      definitionsCopy = v157;
      unusedConstraintsCopy = v158;
      v25 = v161;
      if (v45)
      {
        v46 = v45;
        v47 = *v219;
        do
        {
          for (k = 0; k != v46; ++k)
          {
            if (*v219 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v218 + 1) + 8 * k);
            if ([v49 containsEdge:v172])
            {
              [context addObject:v49];
            }
          }

          v46 = [v44 countByEnumeratingWithState:&v218 objects:v253 count:16];
        }

        while (v46);
      }

      array = [MEMORY[0x277CBEB18] array];
      v214 = 0u;
      v215 = 0u;
      v216 = 0u;
      v217 = 0u;
      v141 = v165;
      v169 = [v141 countByEnumeratingWithState:&v214 objects:v252 count:16];
      if (v169)
      {
        v139 = 0;
        v154 = *v215;
        do
        {
          for (m = 0; m != v169; m = m + 1)
          {
            if (*v215 != v154)
            {
              objc_enumerationMutation(v141);
            }

            v51 = *(*(&v214 + 1) + 8 * m);
            v52 = objc_autoreleasePoolPush();
            v53 = [v51 oppositeNode:nodeCopy];
            v210 = 0u;
            v211 = 0u;
            v212 = 0u;
            v213 = 0u;
            v54 = queueCopy;
            v55 = [v54 countByEnumeratingWithState:&v210 objects:v251 count:16];
            if (v55)
            {
              v56 = v55;
              v57 = *v211;
              while (2)
              {
                for (n = 0; n != v56; ++n)
                {
                  if (*v211 != v57)
                  {
                    objc_enumerationMutation(v54);
                  }

                  v59 = [*(*(&v210 + 1) + 8 * n) objectForKeyedSubscript:@"node"];
                  v60 = [v59 isEqual:v53];

                  if (v60)
                  {

                    definitionsCopy = v157;
                    unusedConstraintsCopy = v158;
                    goto LABEL_47;
                  }
                }

                v56 = [v54 countByEnumeratingWithState:&v210 objects:v251 count:16];
                if (v56)
                {
                  continue;
                }

                break;
              }
            }

            v122 = v54;
            definitionsCopy = v157;
            unusedConstraintsCopy = v158;
            if ([(MAGraph *)selfCopy _matchNode:v53 usingAbstractNode:v166 fromEdge:v51 atIteration:v135 withDefinitions:v157 constraints:context unusedConstraints:v158 andSubGraph:v160 matchingNodeQueue:v122, v123])
            {
              ++v139;
              label5 = [v172 label];
              [v160 _addEdge:v51 withName:label5];
            }

            else
            {
LABEL_47:
              [array addObject:v51];
            }

            v22 = v151;
            v25 = v161;

            objc_autoreleasePoolPop(v52);
          }

          v169 = [v141 countByEnumeratingWithState:&v214 objects:v252 count:16];
        }

        while (v169);
      }

      else
      {
        v139 = 0;
      }

      v207[0] = MEMORY[0x277D85DD0];
      v207[1] = 3221225472;
      v208[0] = __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke_2;
      v208[1] = &unk_2797FFA20;
      v209 = v141;
      [array enumerateObjectsUsingBlock:v207];

      v32 = v165;
      abstractNodeCopy = v166;
      v33 = v135;
      v63 = v139;
      minimum = v126;
    }

    if (v33 < minimum || v33 > v136)
    {
LABEL_122:
      v62 = v63 != 0;
      v111 = v127;
      if (v63)
      {
        v111 = v127 + 1;
      }

      v127 = v111;
    }

    else
    {
      v140 = v63;
      v205 = 0u;
      v206 = 0u;
      v203 = 0u;
      v204 = 0u;
      v137 = v134;
      v145 = [v137 countByEnumeratingWithState:&v203 objects:v250 count:16];
      if (v145)
      {
        v142 = *v204;
        do
        {
          v64 = 0;
          do
          {
            if (*v204 != v142)
            {
              objc_enumerationMutation(v137);
            }

            v65 = *(*(&v203 + 1) + 8 * v64);
            v66 = objc_autoreleasePoolPush();
            label6 = [v65 label];
            v155 = v64;
            contexta = v66;
            if ([label6 isEqualToString:@"*"])
            {

              label6 = 0;
            }

            v201 = 0u;
            v202 = 0u;
            v199 = 0u;
            v200 = 0u;
            v170 = v147;
            v68 = [v170 countByEnumeratingWithState:&v199 objects:v249 count:16];
            if (v68)
            {
              v69 = v68;
              v70 = *v200;
              do
              {
                for (ii = 0; ii != v69; ++ii)
                {
                  if (*v200 != v70)
                  {
                    objc_enumerationMutation(v170);
                  }

                  v72 = *(*(&v199 + 1) + 8 * ii);
                  v229 = 0;
                  if ([abstractNodeCopy hasEdge:v172 isIn:&v229])
                  {
                    v73 = label6;
                    propertyDictionary2 = [v65 propertyDictionary];
                    graphReference = [v72 graphReference];
                    v76 = graphReference == 0;

                    if (graphReference)
                    {
                      LOBYTE(hasProperties2) = 0;
                    }

                    else
                    {
                      hasProperties2 = [v72 hasProperties];
                    }

                    v189[0] = MEMORY[0x277D85DD0];
                    v189[1] = 3221225472;
                    v189[2] = __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke_3;
                    v189[3] = &unk_2797FFA48;
                    v190 = edgeCopy;
                    v191 = propertyDictionary2;
                    v78 = nodeCopy;
                    v195 = isDirected;
                    v196 = v229;
                    v197 = v76;
                    v192 = v78;
                    v193 = v72;
                    v198 = hasProperties2;
                    v194 = v165;
                    v79 = propertyDictionary2;
                    v80 = _Block_copy(v189);
                    label6 = v73;
                    [v78 enumerateEdgesWithLabel:v73 domain:objc_msgSend(v65 usingBlock:{"domain"), v80}];

                    abstractNodeCopy = v166;
                  }
                }

                v69 = [v170 countByEnumeratingWithState:&v199 objects:v249 count:16];
              }

              while (v69);
            }

            objc_autoreleasePoolPop(contexta);
            v64 = v155 + 1;
            unusedConstraintsCopy = v158;
            v22 = v151;
          }

          while (v155 + 1 != v145);
          v145 = [v137 countByEnumeratingWithState:&v203 objects:v250 count:16];
        }

        while (v145);
      }

      if ([v165 count])
      {
        v187 = 0u;
        v188 = 0u;
        v185 = 0u;
        v186 = 0u;
        v138 = v165;
        definitionsCopy = v157;
        v25 = v161;
        v146 = [v138 countByEnumeratingWithState:&v185 objects:v248 count:16];
        if (!v146)
        {
          goto LABEL_121;
        }

        v143 = *v186;
        while (1)
        {
          for (jj = 0; jj != v146; jj = jj + 1)
          {
            if (*v186 != v143)
            {
              objc_enumerationMutation(v138);
            }

            v156 = *(*(&v185 + 1) + 8 * jj);
            v82 = [v156 oppositeNode:nodeCopy];
            v181 = 0u;
            v182 = 0u;
            v183 = 0u;
            v184 = 0u;
            v164 = v147;
            v83 = [v164 countByEnumeratingWithState:&v181 objects:v247 count:16];
            if (!v83)
            {
              definitionsCopy = v157;
              v25 = v161;
              goto LABEL_119;
            }

            v84 = v83;
            contextb = jj;
            v85 = *v182;
            while (2)
            {
              for (kk = 0; kk != v84; ++kk)
              {
                if (*v182 != v85)
                {
                  objc_enumerationMutation(v164);
                }

                v87 = *(*(&v181 + 1) + 8 * kk);
                v88 = objc_autoreleasePoolPush();
                graphReference2 = [v87 graphReference];

                if (graphReference2)
                {
                  if (![v82 isSameNodeAsNode:v87])
                  {
                    goto LABEL_106;
                  }
                }

                else if (([v82 matchesNode:v87 includingProperties:{objc_msgSend(v87, "hasProperties")}] & 1) == 0)
                {
                  goto LABEL_106;
                }

                v171 = v88;
                v90 = v84;
                v179 = 0u;
                v180 = 0u;
                v177 = 0u;
                v178 = 0u;
                v91 = queueCopy;
                v92 = [v91 countByEnumeratingWithState:&v177 objects:v246 count:16];
                if (v92)
                {
                  v93 = v92;
                  v94 = *v178;
                  while (2)
                  {
                    for (mm = 0; mm != v93; ++mm)
                    {
                      if (*v178 != v94)
                      {
                        objc_enumerationMutation(v91);
                      }

                      v96 = [*(*(&v177 + 1) + 8 * mm) objectForKeyedSubscript:@"node"];
                      v97 = [v96 isEqual:v82];

                      if (v97)
                      {

                        v84 = v90;
                        v88 = v171;
                        goto LABEL_106;
                      }
                    }

                    v93 = [v91 countByEnumeratingWithState:&v177 objects:v246 count:16];
                    if (v93)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v245[0] = v82;
                v244[0] = @"node";
                v244[1] = @"label";
                label7 = [v161 label];
                v245[1] = label7;
                v99 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v245 forKeys:v244 count:2];
                [v91 addObject:v99];

                LODWORD(label7) = [(MAGraph *)selfCopy _matchNode:v82 usingAbstractNode:v161 fromEdge:v156 atIteration:0 withDefinitions:v157 constraints:v152 unusedConstraints:v158 andSubGraph:v160 matchingNodeQueue:v91];
                [v91 removeLastObject];
                v84 = v90;
                v88 = v171;
                if (label7)
                {
                  v175 = 0u;
                  v176 = 0u;
                  v173 = 0u;
                  v174 = 0u;
                  v100 = v91;
                  v101 = [v100 countByEnumeratingWithState:&v173 objects:v243 count:16];
                  if (v101)
                  {
                    v102 = v101;
                    v103 = *v174;
                    do
                    {
                      for (nn = 0; nn != v102; ++nn)
                      {
                        if (*v174 != v103)
                        {
                          objc_enumerationMutation(v100);
                        }

                        v105 = *(*(&v173 + 1) + 8 * nn);
                        v106 = [v105 objectForKeyedSubscript:@"node"];
                        v107 = [v105 objectForKeyedSubscript:@"label"];
                        [v160 _addNode:v106 withName:v107 forKeyNode:v82];
                        label8 = [v161 label];
                        [v160 _addNode:v82 withName:label8 forKeyNode:v106];
                      }

                      v102 = [v100 countByEnumeratingWithState:&v173 objects:v243 count:16];
                    }

                    while (v102);
                  }

                  ++v140;

                  v25 = v161;
                  label9 = [v161 label];
                  [v160 _addNode:v82 withName:label9];

                  label10 = [v172 label];
                  [v160 _addEdge:v156 withName:label10];

                  objc_autoreleasePoolPop(v171);
                  abstractNodeCopy = v166;
                  v22 = v151;
                  definitionsCopy = v157;
                  goto LABEL_117;
                }

LABEL_106:
                objc_autoreleasePoolPop(v88);
              }

              v84 = [v164 countByEnumeratingWithState:&v181 objects:v247 count:16];
              if (v84)
              {
                continue;
              }

              break;
            }

            abstractNodeCopy = v166;
            definitionsCopy = v157;
            v22 = v151;
            v25 = v161;
LABEL_117:
            jj = contextb;
LABEL_119:
          }

          v146 = [v138 countByEnumeratingWithState:&v185 objects:v248 count:16];
          if (!v146)
          {
LABEL_121:

            unusedConstraintsCopy = v158;
            v32 = v165;
            v63 = v140;
            goto LABEL_122;
          }
        }
      }

      v62 = 0;
      definitionsCopy = v157;
      v25 = v161;
      v32 = v165;
    }

    goto LABEL_125;
  }

  v127 = 0;
LABEL_144:

  if (v127 == [obj count])
  {
    if ([v131 count] == 1)
    {
      [v131 firstObject];
    }

    else
    {
      [MASubGraph subGraphIntersectionsWithSubGraphs:v131];
    }
    v113 = ;
    [graphCopy mergeWithSubGraph:v113];
    LOBYTE(v62) = 1;
LABEL_153:

    goto LABEL_154;
  }

  LOBYTE(v62) = 0;
LABEL_154:

  return v62;
}

void __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (([v5 isEqual:*(a1 + 32)] & 1) == 0)
  {
    if ([v5 hasProperties:*(a1 + 40)])
    {
      v3 = [v5 targetNode];
      v4 = [v3 isSameNodeAsNode:*(a1 + 48)];

      if (!*(a1 + 64) || *(a1 + 65) == v4)
      {
        [*(a1 + 56) addObject:v5];
      }
    }
  }
}

void __144__MAGraph_Query___matchNode_usingAbstractNode_fromEdge_atIteration_withDefinitions_constraints_unusedConstraints_andSubGraph_matchingNodeQueue___block_invoke_3(uint64_t a1, void *a2)
{
  v12 = a2;
  if (([v12 isEqual:*(a1 + 32)] & 1) == 0 && objc_msgSend(v12, "hasProperties:", *(a1 + 40)))
  {
    v3 = [v12 sourceNode];
    v4 = [v12 targetNode];
    v5 = [v4 isSameNodeAsNode:*(a1 + 48)];
    v6 = v5;
    if (*(a1 + 72))
    {
      v7 = *(a1 + 73);
      if (v5)
      {
        v8 = v3;
      }

      else
      {
        v8 = v4;
      }

      v9 = v8;
      if (v7 != v6)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5)
      {
        v10 = v3;
      }

      else
      {
        v10 = v4;
      }

      v9 = v10;
    }

    v11 = *(a1 + 74);
    if (v11 == 1)
    {
      if ([v9 matchesNode:*(a1 + 56) includingProperties:*(a1 + 75)])
      {
LABEL_18:
        [*(a1 + 64) addObject:v12];
LABEL_19:

        goto LABEL_20;
      }

      v11 = *(a1 + 74);
    }

    if (v11 || ![v9 isSameNodeAsNode:*(a1 + 56)])
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_20:
}

- (id)_constraintAbstractEdgesFromAbstractNode:(id)node inConstraints:(id *)constraints
{
  v35 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  array = [MEMORY[0x277CBEB18] array];
  [MEMORY[0x277CBEB58] set];
  v25 = v24 = constraints;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = *constraints;
  v29 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v29)
  {
    v28 = *v31;
    do
    {
      v6 = 0;
      do
      {
        if (*v31 != v28)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * v6);
        hasProperties = [nodeCopy hasProperties];
        nodesCount = [v7 nodesCount];
        if (!nodesCount)
        {
          v12 = 0;
LABEL_19:
          [array addObject:v7];
          goto LABEL_20;
        }

        v10 = nodesCount;
        v11 = 0;
        v12 = 0;
        v13 = 1;
        v14 = nodesCount;
        while (1)
        {
          v15 = v12;
          v12 = [v7 nodeAtIndex:v11];

          if ([v12 matchesNode:nodeCopy includingProperties:hasProperties])
          {
            break;
          }

          ++v11;
          --v14;
          ++v13;
          if (v10 == v11)
          {
            goto LABEL_19;
          }
        }

        if (!v12)
        {
          goto LABEL_19;
        }

        if (v11)
        {
          v16 = [v7 edgeAtIndex:v11 - 1];
          [v25 addObject:v16];

          v17 = [v7 copy];
          if (v11 < v10)
          {
            do
            {
              [v17 removeLastEdge];
              --v14;
            }

            while (v14);
          }

          if ([v17 edgesCount])
          {
            [array addObject:v17];
          }

          v18 = v11;
        }

        else
        {
          v18 = 0;
        }

        if (v11 < v10 - 1)
        {
          v19 = [v7 edgeAtIndex:v18];
          [v25 addObject:v19];

          v20 = [v7 copy];
          do
          {
            [v20 removeFirstEdge];
            --v13;
          }

          while (v13);
          if ([v20 edgesCount])
          {
            [array addObject:v20];
          }
        }

LABEL_20:

        ++v6;
      }

      while (v6 != v29);
      v21 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
      v29 = v21;
    }

    while (v21);
  }

  v22 = array;
  *v24 = v22;

  return v25;
}

- (BOOL)updateGraphWithVisualString:(id)string
{
  stringCopy = string;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v5 = [objc_opt_class() scanMatchString:stringCopy definitions:&v15 constraints:&v14 forCreation:1 error:&v13];

  v6 = v15;
  v7 = v14;
  v8 = v13;
  if (v5)
  {
    v12 = v8;
    v9 = [objc_opt_class() populateGraph:self withDefinitions:v6 constraints:v7 error:&v12];
    v10 = v12;

    v8 = v10;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)scanGraphElementOptionsString:(id)string minimum:(unint64_t *)minimum maximum:(unint64_t *)maximum error:(id *)error
{
  v33 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v31 = 0;
  v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[\\w\\d\\ options:\\-\\ \\:\\{\\'\\\\}\\#\\%\\+\\$\\^\\/\\(\\)\\?\\=]+\\](?:\\*(\\d+)\\.\\.(\\d+))?" error:{0, &v31}];;
  v10 = v31;
  v11 = v10;
  *minimum = 1;
  *maximum = 1;
  if (v9)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v14 = [v9 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    v15 = v14;
    if (v14)
    {
      memset(v30, 0, sizeof(v30));
      v17 = [v14 countByEnumeratingWithState:v30 objects:v32 count:16];
      if (v17)
      {
        v18 = **(&v30[0] + 1);
        if ([**(&v30[0] + 1) numberOfRanges] == 3)
        {
          v19 = [v18 rangeAtIndex:1];
          v21 = v20;
          v22 = [v18 rangeAtIndex:2];
          v16 = 0;
          if (v19 != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v21)
            {
              v24 = v22;
              if (v22 != 0x7FFFFFFFFFFFFFFFLL)
              {
                if (v23)
                {
                  v25 = v21;
                  v26 = v23;
                  v27 = [stringCopy substringWithRange:{v19, v25}];
                  v28 = [stringCopy substringWithRange:{v24, v26}];
                  *minimum = [v27 integerValue];
                  *maximum = [v28 integerValue];

                  v16 = 1;
                }
              }
            }
          }
        }

        else
        {
          v16 = 0;
        }
      }

      v13 = (v17 != 0) & v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)scanGraphConstraintString:(id)string error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if ([stringCopy hasPrefix:{@"(", "hasSuffix:", @")"}])
  {
    v5 = objc_opt_new();
    v29 = 0;
    v6 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\(|<?-\\[)([\\w\\d\\ options:\\-\\ \\:\\{\\'\\\\}\\#\\%\\+\\$\\^\\/\\(\\)\\?\\=]+)(\\)|\\](?:\\*\\d+\\.\\.\\d+)?->?)" error:{0, &v29}];;
    v7 = v29;
    v8 = v7;
    v9 = 0;
    if (v6 && !v7)
    {
      v10 = [v6 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
      v11 = v10;
      if (v10)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = v10;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          v24 = v11;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v25 + 1) + 8 * i);
              if ([v17 numberOfRanges] != 4 || ((v18 = objc_msgSend(v17, "rangeAtIndex:", 0), v18 != 0x7FFFFFFFFFFFFFFFLL) ? (v20 = v19 == 0) : (v20 = 1), v20))
              {

                v9 = 0;
                v11 = v24;
                goto LABEL_25;
              }

              v21 = [stringCopy substringWithRange:{v18, v19}];
              [v5 addObject:v21];
            }

            v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
            v11 = v24;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        if ([v5 count])
        {
          v22 = v5;
        }

        else
        {
          v22 = 0;
        }

        v9 = v22;
      }

      else
      {
        v9 = 0;
      }

LABEL_25:
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)scanGraphElementString:(id)string type:(unint64_t *)type optionalName:(id *)name label:(id *)label optionalDomains:(id *)domains optionalProperties:(id *)properties error:(id *)error
{
  v76[2] = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v14 = [MEMORY[0x277CCAC80] scannerWithString:stringCopy];
  alphanumericCharacterSet = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  [alphanumericCharacterSet addCharactersInString:@"_"];
  [alphanumericCharacterSet removeCharactersInString:@"([:{';}])"];
  alphanumericCharacterSet2 = [MEMORY[0x277CCAB50] alphanumericCharacterSet];
  [alphanumericCharacterSet2 addCharactersInString:@"_ -%:/+*.$^(?)><="];
  [alphanumericCharacterSet2 removeCharactersInString:@"[{';}]"];
  if ([v14 scanString:@"(" intoString:{0) && objc_msgSend(v14, "scanLocation") == 1}]
  {
    v63 = 0;
    v17 = 1;
    v18 = 1;
  }

  else
  {
    if (![v14 scanString:@"[" intoString:0])
    {
      v68 = 0;
      dictionary = 0;
      v66 = 0;
      v19 = 0;
      v23 = 0;
      v17 = 0;
      goto LABEL_79;
    }

    v17 = 0;
    if ([v14 scanLocation] != 1)
    {
      v68 = 0;
      dictionary = 0;
      v66 = 0;
      v19 = 0;
      v23 = 0;
      goto LABEL_79;
    }

    v63 = 1;
    v18 = 2;
  }

  v65 = v18;
  v74 = 0;
  [v14 scanCharactersFromSet:alphanumericCharacterSet intoString:&v74];
  v19 = v74;
  if ([v14 scanString:@":" intoString:0])
  {
    v73 = 0;
    [v14 scanCharactersFromSet:alphanumericCharacterSet intoString:&v73];
    v20 = v73;
    v21 = @"*";
    if (v20)
    {
      v21 = v20;
    }

    v68 = v21;
    nameCopy = name;
    v62 = v19;
    if (![v14 scanString:@":" intoString:0])
    {
      v66 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
LABEL_26:
      dictionary = 0;
      if ([v14 scanString:@"{" intoString:0])
      {
        labelCopy = label;
        domainsCopy = domains;
        propertiesCopy = properties;
        v60 = stringCopy;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v25 = 0;
        v26 = 0;
        while (1)
        {
          v27 = v25;
          v71 = v25;
          v28 = [v14 scanCharactersFromSet:alphanumericCharacterSet intoString:&v71];
          v25 = v71;

          if (!v28 || ([v14 scanString:@":" intoString:0] & 1) == 0 && !objc_msgSend(v14, "scanUpToString:intoString:", @":", 0) || (objc_msgSend(v14, "scanString:intoString:", @"'", 0) & 1) == 0 && !objc_msgSend(v14, "scanUpToString:intoString:", @"'", 0))
          {
            goto LABEL_59;
          }

          v29 = alphanumericCharacterSet;
          v70 = v26;
          v30 = alphanumericCharacterSet2;
          v31 = [v14 scanCharactersFromSet:alphanumericCharacterSet2 intoString:&v70];
          v32 = v70;

          if (!v31 || ![v14 scanString:@"'" intoString:0])
          {
            v26 = v32;
            alphanumericCharacterSet2 = v30;
            alphanumericCharacterSet = v29;
LABEL_59:
            v19 = v62;
            goto LABEL_60;
          }

          v33 = @">";
          if (([v32 hasPrefix:@">"] & 1) == 0 && !objc_msgSend(v32, "hasPrefix:", @"<"))
          {
            v36 = objc_alloc_init(MEMORY[0x277CCABB8]);
            v40 = [v36 numberFromString:v32];
            v38 = v40;
            if (v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = v32;
            }

            [dictionary setObject:v41 forKey:v25];
            v26 = v32;
            alphanumericCharacterSet2 = v30;
            goto LABEL_49;
          }

          v34 = @">=";
          if ([v32 hasPrefix:@">="] & 1) != 0 || (v34 = @"<=", (objc_msgSend(v32, "hasPrefix:", @"<=")))
          {
            v35 = 2;
            v64 = v34;
          }

          else
          {
            if ([v32 hasPrefix:@">"])
            {
              v35 = 1;
            }

            else
            {
              v33 = @"<";
              v35 = 1;
              if (![v32 hasPrefix:@"<"])
              {
                v64 = 0;
                v26 = v32;
                goto LABEL_41;
              }
            }

            v64 = v33;
          }

          v26 = [v32 substringFromIndex:v35];

          LOBYTE(v35) = 0;
LABEL_41:
          v36 = objc_alloc_init(MEMORY[0x277CCABB8]);
          v37 = [v36 numberFromString:v26];
          v38 = v37;
          alphanumericCharacterSet2 = v30;
          if ((v35 & 1) != 0 || !v37)
          {
            [dictionary setObject:v26 forKey:v25];
          }

          else
          {
            v75[0] = @"operator";
            v75[1] = @"value";
            v76[0] = v64;
            v76[1] = v37;
            v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
            [dictionary setObject:v39 forKey:v25];
          }

LABEL_49:
          alphanumericCharacterSet = v29;

          if (([v14 scanString:@";" intoString:0] & 1) == 0)
          {
            v43 = [v14 scanString:@"}" intoString:0];
            v19 = v62;
            if (v43)
            {

              properties = propertiesCopy;
              stringCopy = v60;
              label = labelCopy;
              domains = domainsCopy;
              name = nameCopy;
              break;
            }

LABEL_60:

            v17 = 0;
            properties = propertiesCopy;
            stringCopy = v60;
            label = labelCopy;
            domains = domainsCopy;
            name = nameCopy;
            goto LABEL_74;
          }
        }
      }

      if (!v17 || [v14 scanString:@"" intoString:?], 0))
      {
        if (!v63 || [v14 scanString:@"]" intoString:0])
        {
          v44 = v19;
          scanLocation = [v14 scanLocation];
          v46 = scanLocation == [stringCopy length];
          v19 = v44;
          v17 = v46;
          goto LABEL_74;
        }

        goto LABEL_78;
      }

LABEL_77:
      v17 = 0;
      v23 = 1;
      goto LABEL_79;
    }

    v72 = 0;
    [v14 scanInteger:&v72];
    v22 = [MEMORY[0x277CCAB58] indexSetWithIndex:v72];
    if ([v14 scanString:@" intoString:{", 0}])
    {
      do
      {
        [v14 scanInteger:&v72];
        [v22 addIndex:v72];
      }

      while (([v14 scanString:@" intoString:{", 0}] & 1) != 0);
    }

    if ([v22 count] < 2 || -[__CFString isEqualToString:](v68, "isEqualToString:", @"*"))
    {
      v66 = [v22 copy];

      v19 = v62;
      goto LABEL_26;
    }

    dictionary = 0;
    v66 = 0;
    v17 = 0;
LABEL_63:
    typeCopy3 = type;
    v19 = v62;
    goto LABEL_75;
  }

  if (!v19)
  {
    v68 = 0;
    dictionary = 0;
    v66 = 0;
    v17 = 0;
LABEL_74:
    typeCopy3 = type;
LABEL_75:
    v23 = v65;
    if (!typeCopy3)
    {
      goto LABEL_83;
    }

    goto LABEL_80;
  }

  if (v17 && ([v14 scanString:@"" intoString:?], 0) & 1) != 0)
  {
    goto LABEL_22;
  }

  if (!v63)
  {
    v68 = 0;
    dictionary = 0;
    v66 = 0;
    goto LABEL_77;
  }

  if ([v14 scanString:@"]" intoString:0])
  {
LABEL_22:
    v62 = v19;
    scanLocation2 = [v14 scanLocation];
    if (scanLocation2 == [stringCopy length])
    {
      v66 = [MEMORY[0x277CCAA78] indexSetWithIndex:0];
      v68 = 0;
      dictionary = 0;
      v17 = 1;
    }

    else
    {
      v68 = 0;
      dictionary = 0;
      v66 = 0;
      v17 = 0;
    }

    goto LABEL_63;
  }

  v68 = 0;
  dictionary = 0;
  v66 = 0;
LABEL_78:
  v17 = 0;
  v23 = 2;
LABEL_79:
  typeCopy3 = type;
  if (!type)
  {
    goto LABEL_83;
  }

LABEL_80:
  if (!v17)
  {
    v23 = 0;
  }

  *typeCopy3 = v23;
LABEL_83:
  if (name)
  {
    if (v17)
    {
      v47 = v19;
    }

    else
    {
      v47 = 0;
    }

    *name = v47;
  }

  if (label)
  {
    if (v17)
    {
      v48 = v68;
    }

    else
    {
      v48 = 0;
    }

    *label = v48;
  }

  if (domains)
  {
    if (v17)
    {
      v49 = v66;
    }

    else
    {
      v49 = 0;
    }

    *domains = v49;
  }

  if (properties)
  {
    if (v17)
    {
      if ([dictionary count])
      {
        v50 = dictionary;
      }

      else
      {
        v50 = 0;
      }
    }

    else
    {
      v50 = 0;
    }

    *properties = v50;
  }

  if (error)
  {
    v51 = v17;
  }

  else
  {
    v51 = 1;
  }

  if ((v51 & 1) == 0)
  {
    v52 = v19;
    v53 = MEMORY[0x277CCA9B8];
    stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"'%@' do not match element requirement.", stringCopy];
    v55 = v53;
    v19 = v52;
    *error = [v55 errorWithDescription:stringCopy];
  }

  return v17;
}

+ (BOOL)scanMatchString:(id)string definitions:(id *)definitions constraints:(id *)constraints forCreation:(BOOL)creation error:(id *)error
{
  v108 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  if (definitions && *definitions)
  {
    dictionary = [*definitions mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v11 = dictionary;
  array = [MEMORY[0x277CBEB18] array];
  v12 = objc_alloc_init(MAAbstractGraph);
  array2 = [MEMORY[0x277CBEB18] array];
  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([\\(|\\[](?:[\\w\\|\\*\\ \\.\\'\\{\\}\\:\\(\\)\\-\\>\\<\\[\\]\\%\\+\\$\\^\\/\\?\\=]|\\d options:)+[\\)|\\]])" error:{0, error}];;
  if (v14)
  {
    v15 = [v14 matchesInString:stringCopy options:0 range:{0, objc_msgSend(stringCopy, "length")}];
    v16 = v15;
    if (v15)
    {
      definitionsCopy = definitions;
      constraintsCopy = constraints;
      v69 = v14;
      v70 = array2;
      v74 = v12;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v68 = v15;
      obj = v15;
      v72 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
      if (v72)
      {
        v17 = 0x2797FD000uLL;
        v73 = *v103;
        v18 = 1;
        v77 = stringCopy;
        v79 = v11;
        do
        {
          v19 = 0;
          errorCopy4 = error;
          do
          {
            if (*v103 != v73)
            {
              v21 = v19;
              objc_enumerationMutation(obj);
              v19 = v21;
            }

            v75 = v19;
            v22 = *(*(&v102 + 1) + 8 * v19);
            if ([v22 numberOfRanges] >= 2)
            {
              v23 = 1;
              v80 = v22;
              while (2)
              {
                if ([v22 rangeAtIndex:v23] == 0x7FFFFFFFFFFFFFFFLL || !v24)
                {
                  goto LABEL_71;
                }

                v25 = [v22 rangeAtIndex:v23];
                v27 = [stringCopy substringWithRange:{v25, v26}];
                v100 = 0;
                v101 = 0;
                v98 = 0;
                v99 = 0;
                v97 = 0;
                v81 = v27;
                v28 = [self scanGraphElementString:0 type:? optionalName:? label:? optionalDomains:? optionalProperties:? error:?];
                v93 = v100;
                v29 = v99;
                v91 = v98;
                v88 = v97;
                v89 = v29;
                if (v28 && v29)
                {
                  if (v101 != 2)
                  {
                    if (v101 == 1)
                    {
                      v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v91, "count")}];
                      firstIndex = [v91 firstIndex];
                      while (firstIndex != 0xFFFF)
                      {
                        v32 = v30;
                        v33 = [MAAbstractNode alloc];
                        LODWORD(v34) = 1.0;
                        v35 = [(MAAbstractNode *)v33 initWithLabel:v89 domain:firstIndex weight:v88 properties:v34];
                        [(MANode *)v35 setIdentifier:v18];
                        v36 = v93;
                        if (!v93)
                        {
                          v36 = [MEMORY[0x277CCACA8] stringWithFormat:@"#NodeID%ld", -[MANode identifier](v35, "identifier")];
                        }

                        ++v18;
                        v93 = v36;
                        v37 = [v11 objectForKey:v36];

                        if (v37)
                        {
                          if (!errorCopy4)
                          {
                            goto LABEL_67;
                          }

                          v61 = MEMORY[0x277CCA9B8];
                          [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, node named '%@' has no matching definition.", v93];
                          goto LABEL_66;
                        }

                        v30 = v32;
                        [v32 addObject:v35];
                        firstIndex = [v91 indexGreaterThanIndex:firstIndex];
                      }

                      goto LABEL_48;
                    }

                    if (errorCopy4)
                    {
                      v60 = MEMORY[0x277CCA9B8];
                      v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, element '%@' doesn't match any type.", v81];
                      [v60 errorWithDescription:v30];
                      *errorCopy4 = v54 = 0;
                      goto LABEL_69;
                    }

                    v54 = 0;
LABEL_70:

                    if (!v54)
                    {

                      v12 = v74;
                      array2 = v70;
                      goto LABEL_87;
                    }

LABEL_71:
                    ++v23;
                    v22 = v80;
                    if (v23 >= [v80 numberOfRanges])
                    {
                      goto LABEL_72;
                    }

                    continue;
                  }

                  v30 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v91, "count")}];
                  firstIndex2 = [v91 firstIndex];
                  while (firstIndex2 != 0xFFFF)
                  {
                    v32 = v30;
                    v56 = objc_alloc(*(v17 + 432));
                    LODWORD(v57) = 1.0;
                    v35 = [v56 initWithLabel:v89 domain:firstIndex2 weight:v88 properties:v57];
                    [(MANode *)v35 setIdentifier:v18];
                    v58 = v93;
                    if (!v93)
                    {
                      v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"#EdgeID%ld", -[MANode identifier](v35, "identifier")];
                    }

                    ++v18;
                    v93 = v58;
                    v59 = [v11 objectForKey:v58];

                    if (v59)
                    {
                      if (errorCopy4)
                      {
                        v61 = MEMORY[0x277CCA9B8];
                        [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, edge named '%@' has no matching definition.", v93];
                        v62 = LABEL_66:;
                        *errorCopy4 = [v61 errorWithDescription:v62];
                      }

LABEL_67:

                      v54 = 0;
                      v30 = v32;
                      goto LABEL_68;
                    }

                    v30 = v32;
                    [v32 addObject:v35];
                    firstIndex2 = [v91 indexGreaterThanIndex:firstIndex2];
                  }

LABEL_48:
                  [v11 setObject:v30 forKey:v93];
                  v54 = 1;
LABEL_68:
                  stringCopy = v77;
LABEL_69:

                  goto LABEL_70;
                }

                break;
              }

              v38 = [self scanGraphConstraintString:v81 error:errorCopy4];
              v78 = objc_opt_new();
              v39 = +[MAPath path];
              v95 = 1;
              v96 = 1;
              memset(v94, 0, sizeof(v94));
              v30 = v38;
              if ([v30 countByEnumeratingWithState:v94 objects:v106 count:16])
              {
                v83 = v30;
                v84 = v23;
                v82 = v39;
                v40 = **(&v94[0] + 1);
                v41 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(\\(|\\[)([\\w\\d\\ options:\\-\\ \\:\\{\\'\\\\}\\#\\%\\+\\$\\^\\/\\(\\)\\?\\=]+)(\\)|\\])" error:{0, errorCopy4}];;
                if (v41)
                {
                  v42 = v41;
                  v43 = [v41 matchesInString:v40 options:0 range:{0, objc_msgSend(v40, "length")}];
                  if ([v43 count] == 1)
                  {
                    firstObject = [v43 firstObject];
                    if ([firstObject numberOfRanges] == 4)
                    {
                      v45 = [firstObject rangeAtIndex:0];
                      v87 = [v40 substringWithRange:{v45, v46}];
                      v47 = [self scanGraphElementString:errorCopy4 type:? optionalName:? label:? optionalDomains:? optionalProperties:? error:?];
                      v48 = 0;
                      v49 = 0;
                      v92 = 0;
                      v50 = 0;
                      v90 = v49;
                      if (v47)
                      {
                        if (v49 | v48)
                        {
                          errorCopy4 = error;
                          if (error)
                          {
                            v51 = MEMORY[0x277CCA9B8];
                            v52 = v50;
                            v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"Query string malformed, element '%@' has no matching type.", v87];
                            *error = [v51 errorWithDescription:v53];

                            v50 = v52;
                            errorCopy4 = error;
                          }

                          v23 = v84;
LABEL_35:

                          v11 = v79;
                          v30 = v83;
                          v39 = v82;
LABEL_59:

                          v54 = 0;
LABEL_60:
                          v17 = 0x2797FD000;
                          goto LABEL_69;
                        }

                        v48 = 0;
                      }

                      v23 = v84;
                      errorCopy4 = error;
                      goto LABEL_35;
                    }

                    if (errorCopy4)
                    {
                      *errorCopy4 = [MEMORY[0x277CCA9B8] errorWithDescription:{@"Query string malformed, constraint result has wrong number of ranges."}];
                    }

                    v11 = v79;
                    v23 = v84;
                    v39 = v82;
                  }

                  else
                  {
                    v11 = v79;
                    v23 = v84;
                    if (errorCopy4)
                    {
                      *errorCopy4 = [MEMORY[0x277CCA9B8] errorWithDescription:{@"Query string malformed, constraintString should match exactly once."}];
                    }
                  }
                }

                else
                {
                  v11 = v79;
                  v23 = v84;
                }

                v30 = v83;
                goto LABEL_59;
              }

              [array addObject:v78];
              if (([v39 isEmpty] & 1) == 0)
              {
                [v70 addObject:v39];
              }

              v54 = 1;
              v11 = v79;
              goto LABEL_60;
            }

LABEL_72:
            v19 = v75 + 1;
          }

          while (v75 + 1 != v72);
          v72 = [obj countByEnumeratingWithState:&v102 objects:v107 count:16];
        }

        while (v72);
      }

      if (definitionsCopy)
      {
        if ([v11 count])
        {
          v63 = v11;
        }

        else
        {
          v63 = 0;
        }

        *definitionsCopy = v63;
      }

      v12 = v74;
      array2 = v70;
      if (constraintsCopy)
      {
        if ([v70 count])
        {
          v64 = v70;
        }

        else
        {
          v64 = 0;
        }

        *constraintsCopy = v64;
      }

      LOBYTE(v54) = 1;
LABEL_87:
      v16 = v68;
      v14 = v69;
    }

    else if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDescription:{@"Query string malformed, not matching any expression."}];
      *error = LOBYTE(v54) = 0;
    }

    else
    {
      LOBYTE(v54) = 0;
    }
  }

  else
  {
    LOBYTE(v54) = 0;
  }

  return v54;
}

+ (id)visualStringWithFormat:(id)format elements:(id)elements
{
  v23 = *MEMORY[0x277D85DE8];
  elementsCopy = elements;
  v6 = [MEMORY[0x277CCAB68] stringWithString:format];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [elementsCopy allKeys];
  v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [elementsCopy objectForKeyedSubscript:v11];
        visualString = [v12 visualString];
        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v14 = [v12 visualStringWithName:v11];

          visualString = v14;
        }

        v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@)", v11];
        [v6 replaceOccurrencesOfString:v15 withString:visualString options:0 range:{0, objc_msgSend(v6, "length")}];
      }

      v8 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  return v6;
}

+ (MAGraph)graphWithDefinitions:(id)definitions constraints:(id)constraints error:(id *)error
{
  constraintsCopy = constraints;
  definitionsCopy = definitions;
  graph = [objc_opt_class() graph];
  LODWORD(error) = [self populateGraph:graph withDefinitions:definitionsCopy constraints:constraintsCopy error:error];

  if (error)
  {
    v11 = graph;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (BOOL)populateGraph:(id)graph withDefinitions:(id)definitions constraints:(id)constraints error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  graphCopy = graph;
  definitionsCopy = definitions;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 1;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = constraints;
  v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v8)
  {
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v24[2] = __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke;
        v24[3] = &unk_2797FF9D0;
        v12 = definitionsCopy;
        v25 = v12;
        v27 = &v32;
        v13 = graphCopy;
        v26 = v13;
        [v11 enumerateWithBlock:v24];
        if (!*(v33 + 24))
        {

          goto LABEL_12;
        }

        v20[0] = MEMORY[0x277D85DD0];
        v20[1] = 3221225472;
        v20[2] = __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke_2;
        v20[3] = &unk_2797FF9D0;
        v21 = v12;
        v23 = &v32;
        v22 = v13;
        [v11 enumerateWithBlock:v20];
        v14 = *(v33 + 24) == 0;

        if (v14)
        {
          goto LABEL_12;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *(v33 + 24);
  _Block_object_dispose(&v32, 8);

  return v15 & 1;
}

void __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  if (v7)
  {
    v9 = a1[4];
    v10 = [v7 label];
    v11 = [v9 objectForKey:v10];

    if ([v11 count])
    {
      v24 = a4;
      v25 = v8;
      v26 = v7;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v12 = v11;
      v13 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v28;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v28 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v27 + 1) + 8 * i);
            v18 = a1[5];
            v19 = [v17 label];
            v20 = [v17 domain];
            v21 = [v17 propertyDictionary];
            LODWORD(v22) = 1.0;
            v23 = [v18 addUniqueNodeWithLabel:v19 domain:v20 weight:v21 properties:0 didCreate:v22];

            if (!v23)
            {
              *(*(a1[6] + 8) + 24) = 0;
              *v24 = 1;
              goto LABEL_13;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v27 objects:v31 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      v8 = v25;
      v7 = v26;
    }

    else
    {
      *(*(a1[6] + 8) + 24) = 0;
      *a4 = 1;
    }
  }
}

void __66__MAGraph_Query__populateGraph_withDefinitions_constraints_error___block_invoke_2(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v87 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v10 = a1[4];
    v11 = [v8 label];
    v12 = [v10 objectForKey:v11];

    v13 = [v9 sourceNode];
    v14 = [v9 targetNode];
    if ([v12 count])
    {
      v68 = a4;
      v71 = a1;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v15 = v12;
      v16 = [v15 countByEnumeratingWithState:&v80 objects:v86 count:16];
      if (!v16)
      {
        goto LABEL_36;
      }

      v17 = v16;
      v18 = *v81;
      while (1)
      {
        v19 = 0;
        do
        {
          if (*v81 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v63 = v19;
          v20 = *(*(&v80 + 1) + 8 * v19);
          v21 = v71[4];
          v22 = [v13 label];
          v23 = [v21 objectForKey:v22];

          if (![v23 count])
          {
            *(*(v71[6] + 8) + 24) = 0;
            *v68 = 1;
            goto LABEL_35;
          }

          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          v24 = v23;
          v25 = [v24 countByEnumeratingWithState:&v76 objects:v85 count:16];
          if (!v25)
          {
            goto LABEL_27;
          }

          v26 = *v77;
          v64 = v14;
          v65 = v13;
          v66 = v24;
          v67 = v15;
          v57 = v17;
          v58 = v18;
          v56 = *v77;
          do
          {
            v27 = 0;
            v59 = v25;
            do
            {
              if (*v77 != v26)
              {
                v28 = v27;
                objc_enumerationMutation(v24);
                v27 = v28;
              }

              v60 = v27;
              v29 = *(*(&v76 + 1) + 8 * v27);
              v30 = v71[5];
              v31 = [v29 label];
              v32 = [v29 domain];
              v33 = [v29 propertyDictionary];
              v34 = [v30 nodesForLabel:v31 domain:v32 properties:v33];

              if ([v34 count] != 1)
              {
                *(*(v71[6] + 8) + 24) = 0;
                *v68 = 1;
                goto LABEL_34;
              }

              v70 = [v34 anyObject];
              v35 = v71[4];
              v36 = [v14 label];
              v37 = [v35 objectForKey:v36];

              if (![v37 count])
              {
                *(*(v71[6] + 8) + 24) = 0;
                *v68 = 1;

LABEL_34:
                v23 = v66;
                v15 = v67;

LABEL_35:
                goto LABEL_36;
              }

              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              obj = v37;
              v38 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
              if (!v38)
              {
                goto LABEL_25;
              }

              v39 = v38;
              v40 = *v73;
              v41 = v71;
              v61 = v9;
              v62 = v7;
              while (2)
              {
                v42 = 0;
                v43 = v34;
                do
                {
                  if (*v73 != v40)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v44 = *(*(&v72 + 1) + 8 * v42);
                  v45 = v41[5];
                  v46 = [v44 label];
                  v47 = [v44 domain];
                  v48 = [v44 propertyDictionary];
                  v34 = [v45 nodesForLabel:v46 domain:v47 properties:v48];

                  if ([v34 count] != 1)
                  {
                    *(*(v41[6] + 8) + 24) = 0;
                    *v68 = 1;
LABEL_33:

                    v9 = v61;
                    v7 = v62;
                    v14 = v64;
                    v13 = v65;
                    goto LABEL_34;
                  }

                  v49 = [v34 anyObject];
                  v50 = v41[5];
                  v51 = [v20 label];
                  v52 = [v20 domain];
                  v53 = [v20 propertyDictionary];
                  LODWORD(v54) = 1.0;
                  v55 = [v50 addUniqueEdgeWithLabel:v51 sourceNode:v70 targetNode:v49 domain:v52 weight:v53 properties:v54];

                  if (!v55)
                  {
                    *(*(v71[6] + 8) + 24) = 0;
                    *v68 = 1;

                    goto LABEL_33;
                  }

                  ++v42;
                  v43 = v34;
                  v41 = v71;
                }

                while (v39 != v42);
                v39 = [obj countByEnumeratingWithState:&v72 objects:v84 count:16];
                v9 = v61;
                v7 = v62;
                if (v39)
                {
                  continue;
                }

                break;
              }

LABEL_25:

              v27 = v60 + 1;
              v14 = v64;
              v13 = v65;
              v24 = v66;
              v15 = v67;
              v17 = v57;
              v18 = v58;
              v26 = v56;
            }

            while (v60 + 1 != v59);
            v25 = [v66 countByEnumeratingWithState:&v76 objects:v85 count:16];
          }

          while (v25);
LABEL_27:

          v19 = v63 + 1;
        }

        while (v63 + 1 != v17);
        v17 = [v15 countByEnumeratingWithState:&v80 objects:v86 count:16];
        if (!v17)
        {
LABEL_36:

          goto LABEL_37;
        }
      }
    }

    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }

LABEL_37:
}

+ (MAGraph)graphWithVisualString:(id)string error:(id *)error
{
  stringCopy = string;
  v12 = 0;
  v13 = 0;
  v7 = [objc_opt_class() scanMatchString:stringCopy definitions:&v13 constraints:&v12 forCreation:1 error:error];

  v8 = v13;
  v9 = v12;
  v10 = 0;
  if (v7)
  {
    v10 = [self graphWithDefinitions:v8 constraints:v9 error:error];
  }

  return v10;
}

- (void)breadthFirstSearchFromNode:(id)node directed:(BOOL)directed usingBlock:(id)block
{
  nodeCopy = node;
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB58] set];
  v19 = 0;
  [array addObject:nodeCopy];
  if ([array count])
  {
    while (1)
    {
      firstObject = [array firstObject];
      if ([v10 containsObject:firstObject])
      {
        goto LABEL_8;
      }

      v12 = blockCopy[2](blockCopy, firstObject, &v19);
      if (v19 == 1)
      {

        goto LABEL_12;
      }

      v13 = v12;
      [v10 addObject:firstObject];
      if (v13)
      {
        break;
      }

LABEL_9:

      if (![array count])
      {
        goto LABEL_12;
      }
    }

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke;
    v17[3] = &unk_2797FFB60;
    v14 = array;
    v18 = v14;
    [firstObject enumerateOutEdgesUsingBlock:v17];
    if (!directed)
    {
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke_2;
      v15[3] = &unk_2797FFB60;
      v16 = v14;
      [firstObject enumerateInEdgesUsingBlock:v15];
    }

LABEL_8:
    [array removeObject:firstObject];
    goto LABEL_9;
  }

LABEL_12:
}

void __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 targetNode];
  [v2 addObject:v3];
}

void __69__MAGraph_Traversal__breadthFirstSearchFromNode_directed_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceNode];
  [v2 addObject:v3];
}

- (void)depthFirstSearchFromNode:(id)node directed:(BOOL)directed usingBlock:(id)block
{
  nodeCopy = node;
  blockCopy = block;
  array = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CBEB58] set];
  v20 = 0;
  [array addObject:nodeCopy];
  if ([array count])
  {
    while (1)
    {
      lastObject = [array lastObject];
      v12 = [array count];
      if ([v10 containsObject:lastObject])
      {
        goto LABEL_8;
      }

      v13 = blockCopy[2](blockCopy, lastObject, &v20);
      if (v20 == 1)
      {

        goto LABEL_12;
      }

      v14 = v13;
      [v10 addObject:lastObject];
      if (v14)
      {
        break;
      }

LABEL_9:

      if (![array count])
      {
        goto LABEL_12;
      }
    }

    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke;
    v18[3] = &unk_2797FFB60;
    v15 = array;
    v19 = v15;
    [lastObject enumerateOutEdgesUsingBlock:v18];
    if (!directed)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke_2;
      v16[3] = &unk_2797FFB60;
      v17 = v15;
      [lastObject enumerateInEdgesUsingBlock:v16];
    }

LABEL_8:
    [array removeObjectAtIndex:v12 - 1];
    goto LABEL_9;
  }

LABEL_12:
}

void __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 targetNode];
  [v2 addObject:v3];
}

void __67__MAGraph_Traversal__depthFirstSearchFromNode_directed_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 sourceNode];
  [v2 addObject:v3];
}

- (id)shortestPathFromNode:(id)node toNode:(id)toNode directed:(BOOL)directed
{
  directedCopy = directed;
  nodeCopy = node;
  toNodeCopy = toNode;
  v21 = +[MAPath path];
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v8 = objc_opt_new();
  orderedSet2 = [MEMORY[0x277CBEB40] orderedSet];
  firstObject = nodeCopy;
  [v8 setObject:&unk_2867B4ED0 forKey:firstObject];
  if (directedCopy)
  {
    v10 = 2;
  }

  else
  {
    v10 = 3;
  }

  v19 = firstObject;
  while (([firstObject isEqual:{toNodeCopy, v19}] & 1) == 0)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke;
    aBlock[3] = &unk_2797FFAE8;
    v11 = orderedSet;
    v50 = directedCopy;
    v46 = v11;
    v47 = firstObject;
    v12 = orderedSet2;
    v48 = v12;
    v49 = v8;
    v13 = firstObject;
    v14 = _Block_copy(aBlock);
    [v13 enumerateEdgesOfType:v10 usingBlock:v14];
    firstObject = [v12 firstObject];

    if (firstObject)
    {
      [v12 removeObject:firstObject];
    }

    else
    {
      v20 = v21;
    }

    if (!firstObject)
    {
      goto LABEL_17;
    }
  }

  v15 = toNodeCopy;

  do
  {
    if (!v15)
    {
      break;
    }

    v44[0] = 0;
    v44[1] = v44;
    v44[2] = 0x2020000000;
    v44[3] = 0;
    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy__6272;
    v42 = __Block_byref_object_dispose__6273;
    v43 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__6272;
    v36 = __Block_byref_object_dispose__6273;
    v37 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_5;
    v25[3] = &unk_2797FFB38;
    v16 = v15;
    v26 = v16;
    v27 = v8;
    v28 = v44;
    v29 = &v38;
    v30 = &v32;
    v31 = directedCopy;
    [v16 enumerateNeighborNodesUsingBlock:v25];
    if (v33[5])
    {
      [v21 addFirstEdge:?];
    }

    v15 = v39[5];

    v17 = [v15 isEqual:v19];
    _Block_object_dispose(&v32, 8);

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(v44, 8);
  }

  while (!v17);
  v20 = v21;

LABEL_17:

  return v20;
}

uint64_t __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke(uint64_t a1, void *a2)
{
  v18 = a2;
  if (([*(a1 + 32) containsObject:v18] & 1) == 0)
  {
    [*(a1 + 32) addObject:v18];
    v3 = [v18 targetNode];
    v4 = v3;
    if ((*(a1 + 64) & 1) == 0 && [v3 isEqual:*(a1 + 40)])
    {
      v5 = [v18 sourceNode];

      v4 = v5;
    }

    if (([*(a1 + 48) containsObject:v4] & 1) == 0)
    {
      [*(a1 + 48) addObject:v4];
    }

    v6 = [*(a1 + 56) objectForKey:*(a1 + 40)];
    [v6 doubleValue];
    v8 = v7;
    [v18 weight];
    v10 = v8 + v9;

    v11 = [*(a1 + 56) objectForKey:v4];
    [v11 doubleValue];
    v13 = v12;

    if (v10 < v13 || ([*(a1 + 56) objectForKey:v4], v14 = objc_claimAutoreleasedReturnValue(), v14, !v14))
    {
      v15 = *(a1 + 56);
      v16 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
      [v15 setObject:v16 forKey:v4];
    }
  }

  return MEMORY[0x2821F96F8]();
}

void __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_5(uint64_t a1, void *a2)
{
  v4 = a2;
  if (*(a1 + 32) != v4)
  {
    v5 = [*(a1 + 40) objectForKey:v4];

    if (v5)
    {
      v6 = [*(a1 + 40) objectForKey:v4];
      [v6 doubleValue];
      v8 = v7;

      if (v8 < *(*(*(a1 + 48) + 8) + 24) || !*(*(*(a1 + 56) + 8) + 40))
      {
        v9 = *(*(a1 + 64) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = 0;

        *(*(*(a1 + 48) + 8) + 24) = v8;
        objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
        v11 = MEMORY[0x277CBEB58];
        v12 = [*(a1 + 32) edgesFromNode:*(*(*(a1 + 56) + 8) + 40)];
        v13 = [v11 setWithSet:v12];

        if ((*(a1 + 72) & 1) == 0)
        {
          v14 = [*(a1 + 32) edgesTowardNode:*(*(*(a1 + 56) + 8) + 40)];
          [v13 unionSet:v14];
        }

        v15[0] = MEMORY[0x277D85DD0];
        v15[1] = 3221225472;
        v15[2] = __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_2;
        v15[3] = &unk_2797FFB10;
        v15[4] = *(a1 + 64);
        [v13 enumerateObjectsUsingBlock:v15];
      }
    }
  }
}

void __59__MAGraph_Traversal__shortestPathFromNode_toNode_directed___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  v14 = v3;
  if (v6)
  {
    [v3 weight];
    v8 = v7;
    [*(*(*(a1 + 32) + 8) + 40) weight];
    v9 = *(*(a1 + 32) + 8);
    v10 = v14;
    if (v8 >= v11)
    {
      v10 = *(v9 + 40);
    }

    v5 = (v9 + 40);
  }

  else
  {
    v10 = v3;
  }

  v12 = v10;
  v13 = *v5;
  *v5 = v12;
}

@end