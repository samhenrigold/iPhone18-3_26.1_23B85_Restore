@interface PGGraphRelationshipEdgeCollection
+ (id)confirmedRelationshipEdgesInGraph:(id)graph;
+ (id)inferredRelationshipEdgesInGraph:(id)graph;
+ (id)relationshipEdgesWithInferenceSource:(id)source source:(unsigned __int8)a4;
@end

@implementation PGGraphRelationshipEdgeCollection

+ (id)relationshipEdgesWithInferenceSource:(id)source source:(unsigned __int8)a4
{
  v4 = a4;
  sourceCopy = source;
  v6 = [PGGraphRelationshipEdge filterWithSource:v4];
  v7 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesMatchingFilter:v6 inGraph:sourceCopy];

  return v7;
}

+ (id)confirmedRelationshipEdgesInGraph:(id)graph
{
  graphCopy = graph;
  v4 = +[PGGraphRelationshipEdge confirmedRelationshipFilter];
  v5 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesMatchingFilter:v4 inGraph:graphCopy];

  return v5;
}

+ (id)inferredRelationshipEdgesInGraph:(id)graph
{
  graphCopy = graph;
  v4 = +[PGGraphRelationshipEdge inferredRelationshipFilter];
  v5 = [(MAEdgeCollection *)PGGraphRelationshipEdgeCollection edgesMatchingFilter:v4 inGraph:graphCopy];

  return v5;
}

@end