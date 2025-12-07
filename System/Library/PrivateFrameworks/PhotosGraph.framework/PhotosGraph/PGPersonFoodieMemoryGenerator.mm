@interface PGPersonFoodieMemoryGenerator
- (PGPersonFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context;
- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type;
- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block;
@end

@implementation PGPersonFoodieMemoryGenerator

- (void)enumerateMomentNodesAndFeatureNodesInGraph:(id)graph usingBlock:(id)block
{
  v33[3] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  graphCopy = graph;
  v6 = [PGGraphSceneFeatureNodeCollection sceneFeatureNodesForSceneName:@"Food" inGraph:graphCopy];
  momentNodes = [v6 momentNodes];
  v7 = MEMORY[0x277D22C90];
  v8 = +[PGGraphMomentFeaturesEdge filter];
  outRelation = [v8 outRelation];
  v33[0] = outRelation;
  v10 = +[PGGraphPersonNode filterExcludingMe];
  relation = [v10 relation];
  v33[1] = relation;
  v12 = +[PGGraphPersonNode filterNameNotEmpty];
  relation2 = [v12 relation];
  v33[2] = relation2;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:3];
  v15 = [v7 chain:v14];

  v16 = [MEMORY[0x277D22BF8] adjacencyWithSources:momentNodes relation:v15 targetsClass:objc_opt_class()];
  v17 = [PGFoodieMemoryGenerator incompatibleMomentNodesInGraph:graphCopy];

  v18 = [v16 subtractingSourcesWith:v17];

  sources = [v18 sources];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke;
  v31[3] = &unk_278888AE0;
  v32 = v18;
  v20 = v18;
  v21 = [sources filteredCollectionUsingBlock:v31];

  v22 = [v20 intersectingSourcesWith:v21];

  transposed = [v22 transposed];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2;
  v28[3] = &unk_278887368;
  v29 = v6;
  v30 = blockCopy;
  v24 = blockCopy;
  v25 = v6;
  [transposed enumerateTargetsBySourceWithBlock:v28];
}

BOOL __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) targetsForSources:a2];
  v3 = [v2 count] < 6;

  return v3;
}

void __87__PGPersonFoodieMemoryGenerator_enumerateMomentNodesAndFeatureNodesInGraph_usingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 featureNodeCollection];
  v9 = [v7 featureNodeCollection];

  v10 = [v8 collectionByFormingUnionWith:v9];

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)memoryCategorySubcategoryForOverTimeType:(unint64_t)type
{
  v12 = *MEMORY[0x277D85DE8];
  if (type == 1)
  {
    return 6003;
  }

  typeCopy = type;
  if (type == 3)
  {
    return 6004;
  }

  loggingConnection = [(PGMemoryGenerator *)self loggingConnection];
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138412546;
    v9 = v7;
    v10 = 1024;
    v11 = typeCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[%@] Returning PHMemoryCategorySubcategoryNone for PGOverTimeMemoryType %d, this should never happen", &v8, 0x12u);
  }

  return 0;
}

- (PGPersonFoodieMemoryGenerator)initWithMemoryGenerationContext:(id)context
{
  v4.receiver = self;
  v4.super_class = PGPersonFoodieMemoryGenerator;
  result = [(PGFoodieMemoryGenerator *)&v4 initWithMemoryGenerationContext:context];
  if (result)
  {
    result->_requireFaceProcessingMeetsThresholdOverTime = 1;
  }

  return result;
}

@end