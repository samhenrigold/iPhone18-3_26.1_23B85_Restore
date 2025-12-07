@interface AVTAvatarMemoryOptimizer
+ (void)optimizeMemoji:(uint64_t)memoji;
- (AVTAvatarMemoryOptimizer)initWithMemoji:(id)memoji;
- (id)flattenTarget0:(id)target0 weight0:(float)weight0 target1:(id)target1 weight1:(float)weight1 inMorphTarget:(id)target originalMorphTarget:(id)morphTarget;
- (void)applyMorphTarget:(id)target weight:(float)weight toBaseGeometryBuffer:(void *)buffer vertexCount:(unint64_t)count;
- (void)applyMorphTarget:(id)target weight:(float)weight toMorphTargetBuffer:(id *)buffer vertexCount:(unint64_t)count;
- (void)classifyTargetsOfMorpher:(id)morpher node:(id)node;
- (void)flattenCorrectiveAtIndex:(unint64_t)index inBaseGeometryUsingWeight:(float)weight;
- (void)flattenCorrectiveAtIndex:(unint64_t)index inCorrectiveAtIndex:(unint64_t)atIndex weight:(float)weight;
- (void)flattenCorrectiveAtIndex:(unint64_t)index inTargetAtIndex:(unint64_t)atIndex weight:(float)weight;
- (void)flattenCorrectivesAtIndices:(id)indices inCorrective:(id)corrective weight:(float)weight morpher:(id)morpher;
- (void)flattenCorrectivesAtIndices:(id)indices inCorrectiveAtIndex:(unint64_t)index morpher:(id)morpher;
- (void)flattenRelevantTargetsInOtherTargetsOfMorpher:(id)morpher;
- (void)flattenRelevantTargetsOfMorpher:(id)morpher inBaseGeometryOfNode:(id)node;
- (void)flattenTargetAtIndex:(unint64_t)index inBaseGeometryUsingWeight:(float)weight;
- (void)flattenTargetAtIndex:(unint64_t)index inTargetAtIndex:(unint64_t)atIndex weight:(float)weight;
- (void)flattenTargetsAtIndices:(id)indices correctivesAtIndices:(id)atIndices inTarget:(id)target weight:(float)weight morpher:(id)morpher;
- (void)flattenTargetsAtIndices:(id)indices correctivesAtIndices:(id)atIndices inTargetAtIndex:(unint64_t)index morpher:(id)morpher;
- (void)flattenTargetsOfMorpher:(id)morpher node:(id)node;
- (void)keepCorrectiveAtIndex:(unint64_t)index morpher:(id)morpher;
- (void)keepCorrectiveAtIndex:(unint64_t)index withDriverIndices:(id)indices morpher:(id)morpher;
- (void)keepTargetAtIndex:(unint64_t)index morpher:(id)morpher;
- (void)optimizeMemoji;
- (void)optimizeNode:(id)node;
- (void)optimizeNodeHierarchy:(id)hierarchy;
- (void)preprocessMemoji;
- (void)registerRequiredVariant:(id)variant weight:(float)weight inHierarchy:(id)hierarchy;
- (void)resolveInBetweensForTarget:(id)target weight:(float)weight inBetweenWeights:(id)weights inBetweenTargets:(id)targets block:(id)block;
@end

@implementation AVTAvatarMemoryOptimizer

+ (void)optimizeMemoji:(uint64_t)memoji
{
  v3 = a2;
  objc_opt_self();
  if ([v3 usageIntent] == 2)
  {
    v2 = [[AVTAvatarMemoryOptimizer alloc] initWithMemoji:?];
    [(AVTAvatarMemoryOptimizer *)v2 preprocessMemoji];
    [(AVTAvatarMemoryOptimizer *)v2 optimizeMemoji];
  }
}

- (AVTAvatarMemoryOptimizer)initWithMemoji:(id)memoji
{
  memojiCopy = memoji;
  v9.receiver = self;
  v9.super_class = AVTAvatarMemoryOptimizer;
  v6 = [(AVTAvatarMemoryOptimizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_memoji, memoji);
  }

  return v7;
}

- (void)registerRequiredVariant:(id)variant weight:(float)weight inHierarchy:(id)hierarchy
{
  variantCopy = variant;
  hierarchyCopy = hierarchy;
  if (!hierarchyCopy)
  {
    [AVTAvatarMemoryOptimizer registerRequiredVariant:weight:inHierarchy:];
  }

  v8 = hierarchyCopy;
  v9 = variantCopy;
  [v8 enumerateHierarchyUsingBlock:?];
}

void __71__AVTAvatarMemoryOptimizer_registerRequiredVariant_weight_inHierarchy___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 morpher];
  if (v3)
  {
    v6 = v3;
    v4 = [v3 _weightIndexForTargetNamed:?];
    v3 = v6;
    if (v4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v6 setWeight:? forTargetAtIndex:?];
      v5 = [*(*(a1 + 40) + 16) objectForKey:?];
      if (!v5)
      {
        v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [*(*(a1 + 40) + 16) setObject:? forKey:?];
      }

      [v5 addObject:?];

      v3 = v6;
    }
  }
}

- (void)preprocessMemoji
{
  v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:? valueOptions:? capacity:?];
  requiredVariantsPerMorpher = self->_requiredVariantsPerMorpher;
  self->_requiredVariantsPerMorpher = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  requiredMorphVariantComponents = self->_requiredMorphVariantComponents;
  self->_requiredMorphVariantComponents = v5;

  v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  presetVariantPrefixes = self->_presetVariantPrefixes;
  self->_presetVariantPrefixes = v7;

  allBuiltinAssetNodes = [(AVTMemoji *)self->_memoji allBuiltinAssetNodes];
  for (i = 0; i != 42; ++i)
  {
    if (i)
    {
      v30 = AVTComponentTypeToString(i);
      v29 = [@"variant_" stringByAppendingString:?];
      [(NSMutableSet *)self->_presetVariantPrefixes addObject:?];
      v31 = i;
      v32 = [(AVTMemoji *)self->_memoji componentWithType:?];
      morphVariant = [v32 morphVariant];
      v11 = morphVariant;
      if (morphVariant && ([morphVariant isEqualToString:?] & 1) == 0)
      {
        [v32 morphVariantIntensity];
        [(NSMutableArray *)self->_requiredMorphVariantComponents addObject:?];
        v12 = allBuiltinAssetNodes;
        v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
        if (v13)
        {
          v14 = v13;
          v15 = MEMORY[0];
          do
          {
            for (j = 0; j != v14; j = (j + 1))
            {
              if (MEMORY[0] != v15)
              {
                objc_enumerationMutation(v12);
              }

              [AVTAvatarMemoryOptimizer registerRequiredVariant:"registerRequiredVariant:weight:inHierarchy:" weight:? inHierarchy:?];
            }

            v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v14);
        }

        for (k = 0; k != 42; ++k)
        {
          if (k)
          {
            v18 = [(AVTMemoji *)self->_memoji componentWithType:?];
            assets = [v18 assets];
            v20 = [assets countByEnumeratingWithState:? objects:? count:?];
            if (v20)
            {
              v21 = v20;
              v22 = MEMORY[0];
              do
              {
                for (m = 0; m != v21; m = (m + 1))
                {
                  if (MEMORY[0] != v22)
                  {
                    objc_enumerationMutation(assets);
                  }

                  if ([*(8 * m) is3DAsset])
                  {
                    assetResourceCache = [(AVTMemoji *)self->_memoji assetResourceCache];
                    v25 = [assetResourceCache resourceForAsset:?];

                    [AVTAvatarMemoryOptimizer registerRequiredVariant:"registerRequiredVariant:weight:inHierarchy:" weight:? inHierarchy:?];
                  }
                }

                v21 = [assets countByEnumeratingWithState:? objects:? count:?];
              }

              while (v21);
            }
          }
        }
      }

      i = v31;
    }
  }

  for (n = 0; n != 40; ++n)
  {
    v27 = [(AVTMemoji *)self->_memoji resolvedPresetForCategory:?];
    [v27 enumerateVariantDependenciesOfKind:? block:?];
    [v27 enumerateAssetSpecificVariantDependenciesOfKind:? block:?];
  }
}

void __44__AVTAvatarMemoryOptimizer_preprocessMemoji__block_invoke(uint64_t a1, unint64_t a2, void *a3, float a4)
{
  v6 = a3;
  AVTPresetCategoryToComponentType(a2, v7);
  v8 = [*(*(a1 + 32) + 8) componentWithType:?];
  v9 = [v8 assets];
  v10 = [v9 countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        if ([*(8 * i) is3DAsset])
        {
          v14 = [*(*(a1 + 32) + 8) assetResourceCache];
          v15 = [v14 resourceForAsset:?];

          [*(a1 + 32) registerRequiredVariant:? weight:? inHierarchy:?];
          [*(*(a1 + 32) + 32) addObject:?];
        }
      }

      v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  v16 = [*(*(a1 + 32) + 8) builtinAssetNodesForComponentType:?];
  v17 = [v16 countByEnumeratingWithState:0 objects:? count:?];
  if (v17)
  {
    v18 = v17;
    v19 = MEMORY[0];
    do
    {
      for (j = 0; j != v18; j = (j + 1))
      {
        if (MEMORY[0] != v19)
        {
          objc_enumerationMutation(v16);
        }

        [*(a1 + 32) registerRequiredVariant:? weight:? inHierarchy:?];
        [*(*(a1 + 32) + 32) addObject:?];
      }

      v18 = [v16 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v18);
  }
}

void __44__AVTAvatarMemoryOptimizer_preprocessMemoji__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v23 = [*(*(a1 + 32) + 8) componentWithType:?];
  v8 = [v23 assets];
  v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0];
    do
    {
      for (i = 0; i != v10; i = (i + 1))
      {
        if (MEMORY[0] != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(8 * i);
        if ([v13 is3DAsset])
        {
          v14 = [v13 identifier];
          v15 = [v14 isEqualToString:?];

          if (v15)
          {
            v16 = [*(*(a1 + 32) + 8) assetResourceCache];
            v17 = [v16 resourceForAsset:?];

            [*(a1 + 32) registerRequiredVariant:? weight:? inHierarchy:?];
            [*(*(a1 + 32) + 32) addObject:?];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v10);
  }

  v18 = [*(*(a1 + 32) + 8) builtinAssetNodesForComponentType:?];
  v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
  if (v19)
  {
    v20 = v19;
    v21 = MEMORY[0];
    do
    {
      for (j = 0; j != v20; j = (j + 1))
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v18);
        }

        [*(a1 + 32) registerRequiredVariant:? weight:? inHierarchy:?];
        [*(*(a1 + 32) + 32) addObject:?];
      }

      v20 = [v18 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v20);
  }
}

- (void)optimizeMemoji
{
  allBuiltinAssetNodes = [(AVTMemoji *)self->_memoji allBuiltinAssetNodes];
  v4 = [allBuiltinAssetNodes countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = MEMORY[0];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (MEMORY[0] != v6)
        {
          objc_enumerationMutation(allBuiltinAssetNodes);
        }

        [(AVTAvatarMemoryOptimizer *)self optimizeNodeHierarchy:?];
      }

      v5 = [allBuiltinAssetNodes countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  for (j = 0; j != 42; ++j)
  {
    if (j)
    {
      v9 = [(AVTMemoji *)self->_memoji componentWithType:?];
      assets = [v9 assets];
      v11 = [assets countByEnumeratingWithState:? objects:? count:?];
      if (v11)
      {
        v12 = v11;
        v13 = MEMORY[0];
        do
        {
          for (k = 0; k != v12; k = (k + 1))
          {
            if (MEMORY[0] != v13)
            {
              objc_enumerationMutation(assets);
            }

            if ([*(8 * k) is3DAsset])
            {
              assetResourceCache = [(AVTMemoji *)self->_memoji assetResourceCache];
              v16 = [assetResourceCache resourceForAsset:?];

              [(AVTAvatarMemoryOptimizer *)self optimizeNodeHierarchy:?];
            }
          }

          v12 = [assets countByEnumeratingWithState:? objects:? count:?];
        }

        while (v12);
      }
    }
  }
}

- (void)optimizeNodeHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  if (!hierarchyCopy)
  {
    [AVTAvatarMemoryOptimizer optimizeNodeHierarchy:];
  }

  v5 = hierarchyCopy;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __50__AVTAvatarMemoryOptimizer_optimizeNodeHierarchy___block_invoke;
  v9 = &unk_1E7F47B10;
  selfCopy = self;
  [hierarchyCopy enumerateHierarchyUsingBlock:?];
}

- (void)optimizeNode:(id)node
{
  nodeCopy = node;
  morpher = [nodeCopy morpher];
  v5 = morpher;
  if (morpher)
  {
    weights = [morpher weights];
    oldWeights = self->_oldWeights;
    self->_oldWeights = weights;

    targets = [v5 targets];
    oldMainTargets = self->_oldMainTargets;
    self->_oldMainTargets = targets;

    inBetweenCounts = [v5 inBetweenCounts];
    self->_hasInBetweens = [inBetweenCounts count] != 0;

    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    newWeights = self->_newWeights;
    self->_newWeights = v11;

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    newTargetsAndInBetweens = self->_newTargetsAndInBetweens;
    self->_newTargetsAndInBetweens = v13;

    if (self->_hasInBetweens)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    newInBetweenCounts = self->_newInBetweenCounts;
    self->_newInBetweenCounts = v15;

    if (self->_hasInBetweens)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v17 = 0;
    }

    newInBetweenWeights = self->_newInBetweenWeights;
    self->_newInBetweenWeights = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    indicesOfTargetsToFlattenInBaseGeometry = self->_indicesOfTargetsToFlattenInBaseGeometry;
    self->_indicesOfTargetsToFlattenInBaseGeometry = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indicesOfTargetsToFlattenInOtherTarget = self->_indicesOfTargetsToFlattenInOtherTarget;
    self->_indicesOfTargetsToFlattenInOtherTarget = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
    nonOneWeightsOfTargetsToFlatten = self->_nonOneWeightsOfTargetsToFlatten;
    self->_nonOneWeightsOfTargetsToFlatten = v23;

    correctives = [v5 correctives];
    oldCorrectives = self->_oldCorrectives;
    self->_oldCorrectives = correctives;

    correctiveDriverCounts = [v5 correctiveDriverCounts];
    oldCorrectiveDriverCounts = self->_oldCorrectiveDriverCounts;
    self->_oldCorrectiveDriverCounts = correctiveDriverCounts;

    correctiveDriverIndices = [v5 correctiveDriverIndices];
    oldCorrectiveDriverIndices = self->_oldCorrectiveDriverIndices;
    self->_oldCorrectiveDriverIndices = correctiveDriverIndices;

    v31 = [(NSArray *)self->_oldCorrectiveDriverCounts count];
    self->_hasCorrectives = v31 != 0;
    if (v31)
    {
      correctiveInBetweenCounts = [v5 correctiveInBetweenCounts];
      self->_hasCorrectiveInBetweens = [correctiveInBetweenCounts count] != 0;
    }

    else
    {
      self->_hasCorrectiveInBetweens = 0;
    }

    v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
    newCorrectivesAndInBetweens = self->_newCorrectivesAndInBetweens;
    self->_newCorrectivesAndInBetweens = v33;

    if (self->_hasCorrectives)
    {
      v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v35 = 0;
    }

    newCorrectiveDriverCounts = self->_newCorrectiveDriverCounts;
    self->_newCorrectiveDriverCounts = v35;

    if (self->_hasCorrectives)
    {
      v37 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v37 = 0;
    }

    newCorrectiveDriverIndices = self->_newCorrectiveDriverIndices;
    self->_newCorrectiveDriverIndices = v37;

    if (self->_hasCorrectiveInBetweens)
    {
      v39 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v39 = 0;
    }

    newCorrectiveInBetweenCounts = self->_newCorrectiveInBetweenCounts;
    self->_newCorrectiveInBetweenCounts = v39;

    if (self->_hasCorrectiveInBetweens)
    {
      v41 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v41 = 0;
    }

    newCorrectiveInBetweenWeights = self->_newCorrectiveInBetweenWeights;
    self->_newCorrectiveInBetweenWeights = v41;

    if (self->_hasCorrectives)
    {
      v43 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v43 = 0;
    }

    indicesOfCorrectivesToFlattenInBaseGeometry = self->_indicesOfCorrectivesToFlattenInBaseGeometry;
    self->_indicesOfCorrectivesToFlattenInBaseGeometry = v43;

    if (self->_hasCorrectives)
    {
      v45 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v45 = 0;
    }

    indicesOfCorrectivesToFlattenInMainTarget = self->_indicesOfCorrectivesToFlattenInMainTarget;
    self->_indicesOfCorrectivesToFlattenInMainTarget = v45;

    if (self->_hasCorrectives)
    {
      v47 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v47 = 0;
    }

    indicesOfCorrectivesToFlattenInOtherCorrective = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
    self->_indicesOfCorrectivesToFlattenInOtherCorrective = v47;

    if (self->_hasCorrectives)
    {
      v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    else
    {
      v49 = 0;
    }

    nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
    self->_nonOneWeightsOfCorrectivesToFlatten = v49;

    [AVTAvatarMemoryOptimizer classifyTargetsOfMorpher:"classifyTargetsOfMorpher:node:" node:?];
    [AVTAvatarMemoryOptimizer flattenTargetsOfMorpher:"flattenTargetsOfMorpher:node:" node:?];
  }
}

- (void)classifyTargetsOfMorpher:(id)morpher node:(id)node
{
  *(&v35[17] + 4) = *MEMORY[0x1E69E9840];
  morpherCopy = morpher;
  nodeCopy = node;
  v7 = [(NSMapTable *)self->_requiredVariantsPerMorpher objectForKey:?];
  oldMainTargets = self->_oldMainTargets;
  v31[4] = MEMORY[0x1E69E9820];
  v31[5] = 3221225472;
  v31[6] = __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke;
  v31[7] = &unk_1E7F47B60;
  v31[8] = self;
  v9 = morpherCopy;
  v32 = v9;
  v10 = v7;
  v33 = v10;
  [(NSArray *)oldMainTargets enumerateObjectsUsingBlock:?];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v31[3] = 0;
  oldCorrectives = self->_oldCorrectives;
  v27 = v10;
  v26 = v9;
  [(NSArray *)oldCorrectives enumerateObjectsUsingBlock:?];
  for (i = 0; i < [(NSMutableArray *)self->_newCorrectiveDriverIndices count]; i = v30 + 1)
  {
    v13 = [(NSMutableArray *)self->_newCorrectiveDriverIndices objectAtIndexedSubscript:?];
    [v13 unsignedIntegerValue];
    v14 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:?];
    v30 = i;
    if ([(NSMutableArray *)self->_newInBetweenCounts count])
    {
      v15 = self->_newInBetweenCounts;
      v16 = [NSMutableArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v16)
      {
        v17 = 0;
        v18 = 0;
        v19 = MEMORY[0];
LABEL_6:
        v20 = 0;
        v29 = v16 + v18;
        while (1)
        {
          if (MEMORY[0] != v19)
          {
            objc_enumerationMutation(v15);
          }

          v17 += [*(8 * v20) unsignedIntegerValue];
          v21 = [(NSMutableArray *)self->_newTargetsAndInBetweens objectAtIndexedSubscript:?];
          v22 = v21 == v14;

          if (v22)
          {
            break;
          }

          ++v18;
          if (v16 == ++v20)
          {
            v16 = [NSMutableArray countByEnumeratingWithState:v15 objects:"countByEnumeratingWithState:objects:count:" count:?];
            v18 = v29;
            if (v16)
            {
              goto LABEL_6;
            }

            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v18 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v23 = [(NSMutableArray *)self->_newTargetsAndInBetweens indexOfObject:?];
      v18 = v23;
    }

    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = avt_default_log(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        [(AVTAvatarMemoryOptimizer *)buf classifyTargetsOfMorpher:v35 node:v24];
      }
    }

    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [NSMutableArray setObject:"setObject:atIndexedSubscript:" atIndexedSubscript:?];
  }

  _Block_object_dispose(v31, 8);
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [v4 name];
  if (AVTMorphTargetNameIsUsedForFaceAnimation(v5) || AVTMorphTargetNameIsUsedForDynamics(v5))
  {
LABEL_3:
    [a1[4] keepTargetAtIndex:? morpher:?];
    goto LABEL_4;
  }

  if ([v5 isEqualToString:?])
  {
    goto LABEL_4;
  }

  if ([v5 containsString:?])
  {
    v6 = [v5 componentsSeparatedByString:?];
    v7 = [v6 count];
    if (v7 < 6)
    {
      v9 = v7;
      v43 = 0;
      v42 = 0;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
        v13 = 1.0;
        v40 = v7;
        v39 = v6;
        do
        {
          v14 = [v6 objectAtIndexedSubscript:?];
          if (AVTMorphTargetNameIsUsedForFaceAnimation(v14))
          {
            v11 = (v11 + 1);
          }

          else
          {
            v41 = v10;
            v15 = *(a1[4] + 3);
            v16 = v14;
            v17 = [v15 indexOfObjectPassingTest:?];
            v18 = 0.0;
            if (v17 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v19 = [*(a1[4] + 3) objectAtIndexedSubscript:?];
              [v19 morphVariantIntensity];
              v18 = v20;
            }

            v21 = [a1[6] containsObject:?];
            v22 = v21;
            if (v17 == 0x7FFFFFFFFFFFFFFFLL && v21 != 0)
            {
              if ([a1[5] _weightIndexForTargetNamed:?] == 0x7FFFFFFFFFFFFFFFLL)
              {
                __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_2();
              }

              [a1[5] weightForTargetAtIndex:?];
              v18 = v24;
            }

            if (!((v17 != 0x7FFFFFFFFFFFFFFFLL) | v22 & 1))
            {

              v6 = v39;
              goto LABEL_71;
            }

            v13 = fminf(v13, v18);
            *(&v42 + v12) = 1;
            v10 = (v41 + 1);

            v6 = v39;
            v9 = v40;
          }

          v12 = (v12 + 1);
        }

        while (v9 != v12);
        if (v11 == v9)
        {
          goto LABEL_30;
        }

        if (v10 == v9)
        {
          [a1[4] flattenTargetAtIndex:? inBaseGeometryUsingWeight:?];
        }

        else
        {
          if ((v11 + v10) != v9)
          {
            __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_3();
          }

          if (v11 == 1)
          {
            v30 = 0;
            while ((*(&v42 + v30) & 1) != 0)
            {
              if (v9 == ++v30)
              {
                v31 = 0;
                goto LABEL_63;
              }
            }

            v31 = [v6 objectAtIndexedSubscript:?];
LABEL_63:
            if ([a1[5] _weightIndexForTargetNamed:?] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v38 = avt_default_log(0x7FFFFFFFFFFFFFFFLL);
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_4();
              }

              [v4 setName:?];
              [a1[4] keepTargetAtIndex:? morpher:?];
            }

            else
            {
              [a1[4] flattenTargetAtIndex:? inTargetAtIndex:? weight:?];
            }
          }

          else
          {
            v32 = 0;
            v33 = 0;
            do
            {
              if ((*(&v42 + v32) & 1) == 0)
              {
                v34 = [v6 objectAtIndexedSubscript:?];
                v35 = v34;
                if (v33)
                {
                  [v33 stringByAppendingFormat:v34];
                  v37 = v36 = v6;

                  v33 = v37;
                  v6 = v36;
                  v9 = v40;
                }

                else
                {
                  v33 = v34;
                }
              }

              v32 = (v32 + 1);
            }

            while (v9 != v32);
            if ([a1[5] _weightIndexForTargetNamed:?] == 0x7FFFFFFFFFFFFFFFLL)
            {
              [v4 setName:?];
              [a1[4] keepTargetAtIndex:? morpher:?];
            }

            else
            {
              [a1[4] flattenTargetAtIndex:? inTargetAtIndex:? weight:?];
            }
          }
        }
      }

      else
      {
LABEL_30:
        [a1[4] keepTargetAtIndex:? morpher:?];
      }
    }

    else
    {
      v8 = avt_default_log(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_5();
      }
    }

LABEL_71:
  }

  else
  {
    if ([v5 hasPrefix:?])
    {
      if ([*(a1[4] + 1) usageIntent] != 1)
      {
        goto LABEL_4;
      }

      goto LABEL_3;
    }

    if ([a1[6] containsObject:?])
    {
      [a1[5] weightForTargetAtIndex:?];
      [a1[4] flattenTargetAtIndex:? inBaseGeometryUsingWeight:?];
    }

    else
    {
      v25 = *(a1[4] + 4);
      v26 = [v25 countByEnumeratingWithState:? objects:? count:?];
      if (v26)
      {
        v27 = v26;
        v28 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v27; i = (i + 1))
          {
            if (MEMORY[0] != v28)
            {
              objc_enumerationMutation(v25);
            }

            if ([v5 hasPrefix:?])
            {

              goto LABEL_4;
            }
          }

          v27 = [v25 countByEnumeratingWithState:? objects:? count:?];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      if (([v5 hasPrefix:?] & 1) == 0)
      {
        __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_1();
      }
    }
  }

LABEL_4:
}

void *__58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = [a2 morphVariant];
  v3 = [v2 isEqualToString:?];

  return v3;
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 name];
  v66 = a1;
  v7 = [*(*(a1 + 32) + 128) objectAtIndexedSubscript:?];
  v8 = [v7 unsignedIntegerValue];

  v67 = (a1 + 32);
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 24);
  *(v10 + 24) = v8 + v11;
  if (v8 < 6)
  {
    v69 = 0;
    v68 = 0;
    if (v8)
    {
      v64 = v6;
      v13 = 0;
      v14 = 0;
      v65 = v5;
      v15 = 1.0;
      v16 = &v68;
      v62 = v8;
      v63 = v11;
      v17 = v11;
      v18 = v8;
      v19 = v67;
      do
      {
        v20 = [*(*v19 + 17) objectAtIndexedSubscript:?];
        [v20 unsignedIntegerValue];

        v21 = [*(*v19 + 6) objectAtIndexedSubscript:?];
        v22 = [v21 name];

        if (AVTMorphTargetNameIsUsedForFaceAnimation(v22))
        {
          v14 = (v14 + 1);
        }

        else
        {
          v23 = v13;
          v24 = *(*v19 + 3);
          v25 = v22;
          v26 = [v24 indexOfObjectPassingTest:?];
          v27 = 0.0;
          if (v26 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v28 = [*(*v67 + 3) objectAtIndexedSubscript:?];
            [v28 morphVariantIntensity];
            v27 = v29;
          }

          v30 = [v66[5] containsObject:?];
          v31 = v30;
          if (v26 == 0x7FFFFFFFFFFFFFFFLL && v30 != 0)
          {
            [v66[6] weightForTargetAtIndex:?];
            v27 = v33;
          }

          if (!((v26 != 0x7FFFFFFFFFFFFFFFLL) | v31 & 1))
          {

            v6 = v64;
            v5 = v65;
            goto LABEL_47;
          }

          v15 = fminf(v15, v27);
          *v16 = 1;
          v13 = (v23 + 1);

          v19 = v67;
        }

        v16 = (v16 + 1);
        ++v17;
        v18 = (v18 - 1);
      }

      while (v18);
      v36 = v62;
      v35 = v63;
      v6 = v64;
      v5 = v65;
      if (v14 == v62)
      {
        goto LABEL_20;
      }

      if (v13 == v62)
      {
        [*v67 flattenCorrectiveAtIndex:? inBaseGeometryUsingWeight:?];
      }

      else
      {
        v37 = v67;
        if ((v14 + v13) != v62)
        {
          __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2_cold_1();
        }

        if (v14 == 1)
        {
          v38 = &v68;
          while (*v38++)
          {
            ++v35;
            v36 = (v36 - 1);
            if (!v36)
            {
              v40 = 0;
              goto LABEL_40;
            }
          }

          v58 = [*(*v67 + 17) objectAtIndexedSubscript:?];
          v59 = [v58 unsignedIntegerValue];

          v60 = [*(*v67 + 6) objectAtIndexedSubscript:?];
          v40 = [v60 name];

          if (v59 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [*v67 flattenCorrectiveAtIndex:? inTargetAtIndex:? weight:?];
            goto LABEL_46;
          }

LABEL_40:
          v61 = avt_default_log(v34);
          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_4();
          }

LABEL_46:
        }

        else
        {
          v41 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:?];
          v42 = v63;
          v43 = v41;
          v44 = 0;
          v45 = &v68;
          do
          {
            v46 = *v45++;
            if ((v46 & 1) == 0)
            {
              v47 = v42;
              v48 = [*(*v37 + 17) objectAtIndexedSubscript:?];
              v49 = v37;
              v50 = v48;
              v51 = *(*v49 + 6);
              [v48 unsignedIntegerValue];
              v52 = [v51 objectAtIndexedSubscript:?];
              v53 = [v52 name];

              [v43 addObject:?];
              if (v44)
              {
                v54 = [v44 stringByAppendingFormat:v53];

                v44 = v54;
              }

              else
              {
                v44 = v53;
              }

              v42 = v47;
              v37 = v67;
            }

            ++v42;
            v36 = (v36 - 1);
          }

          while (v36);
          v55 = *(*v37 + 15);
          v56 = v37;
          v57 = v44;
          if ([v55 indexOfObjectPassingTest:?] == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v65 setName:?];
            [v66[4] keepCorrectiveAtIndex:? withDriverIndices:? morpher:?];
          }

          else
          {
            [*v56 flattenCorrectiveAtIndex:? inCorrectiveAtIndex:? weight:?];
          }
        }
      }
    }

    else
    {
LABEL_20:
      [v66[4] keepCorrectiveAtIndex:? morpher:?];
    }
  }

  else
  {
    v12 = avt_default_log(v9);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2_cold_3(v67, a3, v12);
    }
  }

LABEL_47:
}

void *__58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_53(uint64_t a1, void *a2)
{
  v2 = [a2 morphVariant];
  v3 = [v2 isEqualToString:?];

  return v3;
}

void *__58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_54(uint64_t a1, void *a2)
{
  v2 = [a2 name];
  v3 = [v2 isEqualToString:?];

  return v3;
}

- (void)flattenTargetsOfMorpher:(id)morpher node:(id)node
{
  nodeCopy = node;
  morpherCopy = morpher;
  [AVTAvatarMemoryOptimizer flattenRelevantTargetsOfMorpher:"flattenRelevantTargetsOfMorpher:inBaseGeometryOfNode:" inBaseGeometryOfNode:?];
  [(AVTAvatarMemoryOptimizer *)self flattenRelevantTargetsInOtherTargetsOfMorpher:?];

  if ([(NSMutableArray *)self->_newTargetsAndInBetweens count])
  {
    morpher = [nodeCopy morpher];

    if ([(AVTAvatarMemoryOptimizer *)self shouldClearCPUDataAfterUpload])
    {
      [morpher setShouldClearCPUDataAfterUpload:?];
    }

    if ([(NSMutableArray *)self->_newInBetweenCounts count]&& [(NSMutableArray *)self->_newInBetweenWeights count])
    {
      [morpher setTargetsAndInBetweens:self->_newCorrectiveInBetweenCounts inBetweenCounts:self->_newCorrectiveInBetweenWeights inBetweenWeights:? correctives:? driverCounts:? driverIndices:? inBetweenCounts:? inBetweenWeights:?];
    }

    else
    {
      [morpher setTargets:?];
    }

    [morpher setWeights:?];
    v8 = morpher;
  }

  else
  {
    [nodeCopy setMorpher:?];
    v8 = nodeCopy;
  }
}

- (void)keepTargetAtIndex:(unint64_t)index morpher:(id)morpher
{
  morpherCopy = morpher;
  v14 = morpherCopy;
  if (self->_hasInBetweens)
  {
    v6 = [morpherCopy inBetweenTargetsForTargetAtIndex:?];
    v7 = [v14 inBetweenWeightsForTargetAtIndex:?];
    newInBetweenCounts = self->_newInBetweenCounts;
    v9 = MEMORY[0x1E696AD98];
    [v7 count];
    v10 = [v9 numberWithUnsignedInteger:?];
    [(NSMutableArray *)newInBetweenCounts addObject:?];

    [(NSMutableArray *)self->_newInBetweenWeights addObjectsFromArray:?];
    v11 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:?];
    [(NSMutableArray *)self->_newTargetsAndInBetweens addObjectsFromArray:?];
    [(NSMutableArray *)self->_newTargetsAndInBetweens addObject:?];
  }

  else
  {
    v6 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:?];
    [(NSMutableArray *)self->_newTargetsAndInBetweens addObject:?];
  }

  newWeights = self->_newWeights;
  v13 = [(NSArray *)self->_oldWeights objectAtIndexedSubscript:?];
  [(NSMutableArray *)newWeights addObject:?];
}

- (void)keepCorrectiveAtIndex:(unint64_t)index morpher:(id)morpher
{
  morpherCopy = morpher;
  v5 = [(NSArray *)self->_oldCorrectiveDriverCounts objectAtIndexedSubscript:?];
  v6 = [morpherCopy correctiveDriverIndicesForCorrectiveAtIndex:?];
  [(NSMutableArray *)self->_newCorrectiveDriverCounts addObject:?];
  [(NSMutableArray *)self->_newCorrectiveDriverIndices addObjectsFromArray:?];
  if (self->_hasInBetweens)
  {
    v7 = [morpherCopy inBetweenTargetsForCorrectiveAtIndex:?];
    v8 = [morpherCopy inBetweenWeightsForCorrectiveAtIndex:?];
    newCorrectiveInBetweenCounts = self->_newCorrectiveInBetweenCounts;
    v10 = MEMORY[0x1E696AD98];
    [v8 count];
    v11 = [v10 numberWithUnsignedInteger:?];
    [(NSMutableArray *)newCorrectiveInBetweenCounts addObject:?];

    [(NSMutableArray *)self->_newCorrectiveInBetweenWeights addObjectsFromArray:?];
    v12 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObjectsFromArray:?];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:?];
  }

  else
  {
    v7 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:?];
  }
}

- (void)keepCorrectiveAtIndex:(unint64_t)index withDriverIndices:(id)indices morpher:(id)morpher
{
  morpherCopy = morpher;
  newCorrectiveDriverCounts = self->_newCorrectiveDriverCounts;
  v8 = MEMORY[0x1E696AD98];
  indicesCopy = indices;
  [indicesCopy count];
  v10 = [v8 numberWithUnsignedInteger:?];
  [(NSMutableArray *)newCorrectiveDriverCounts addObject:?];

  [(NSMutableArray *)self->_newCorrectiveDriverIndices addObjectsFromArray:?];
  if (self->_hasInBetweens)
  {
    v11 = [morpherCopy inBetweenTargetsForCorrectiveAtIndex:?];
    v12 = [morpherCopy inBetweenWeightsForCorrectiveAtIndex:?];
    newCorrectiveInBetweenCounts = self->_newCorrectiveInBetweenCounts;
    v14 = MEMORY[0x1E696AD98];
    [v12 count];
    v15 = [v14 numberWithUnsignedInteger:?];
    [(NSMutableArray *)newCorrectiveInBetweenCounts addObject:?];

    [(NSMutableArray *)self->_newCorrectiveInBetweenWeights addObjectsFromArray:?];
    v16 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObjectsFromArray:?];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:?];
  }

  else
  {
    v11 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
    [(NSMutableArray *)self->_newCorrectivesAndInBetweens addObject:?];
  }
}

- (void)flattenTargetAtIndex:(unint64_t)index inBaseGeometryUsingWeight:(float)weight
{
  if (weight != 0.0)
  {
    if (weight < 1.0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfTargetsToFlatten = self->_nonOneWeightsOfTargetsToFlatten;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    indicesOfTargetsToFlattenInBaseGeometry = self->_indicesOfTargetsToFlattenInBaseGeometry;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [(NSMutableArray *)indicesOfTargetsToFlattenInBaseGeometry addObject:?];
  }
}

- (void)flattenTargetAtIndex:(unint64_t)index inTargetAtIndex:(unint64_t)atIndex weight:(float)weight
{
  if (weight != 0.0)
  {
    if (weight < 1.0)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfTargetsToFlatten = self->_nonOneWeightsOfTargetsToFlatten;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    indicesOfTargetsToFlattenInOtherTarget = self->_indicesOfTargetsToFlattenInOtherTarget;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v15 = [(NSMutableDictionary *)indicesOfTargetsToFlattenInOtherTarget objectForKeyedSubscript:?];

    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = self->_indicesOfTargetsToFlattenInOtherTarget;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:v12 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v15 addObject:?];
  }
}

- (void)flattenCorrectiveAtIndex:(unint64_t)index inBaseGeometryUsingWeight:(float)weight
{
  if (weight != 0.0)
  {
    if (weight < 1.0)
    {
      v6 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    indicesOfCorrectivesToFlattenInBaseGeometry = self->_indicesOfCorrectivesToFlattenInBaseGeometry;
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [(NSMutableArray *)indicesOfCorrectivesToFlattenInBaseGeometry addObject:?];
  }
}

- (void)flattenCorrectiveAtIndex:(unint64_t)index inTargetAtIndex:(unint64_t)atIndex weight:(float)weight
{
  if (weight != 0.0)
  {
    if (weight < 1.0)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    indicesOfCorrectivesToFlattenInMainTarget = self->_indicesOfCorrectivesToFlattenInMainTarget;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v15 = [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInMainTarget objectForKeyedSubscript:?];

    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = self->_indicesOfCorrectivesToFlattenInMainTarget;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:v12 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v15 addObject:?];
  }
}

- (void)flattenCorrectiveAtIndex:(unint64_t)index inCorrectiveAtIndex:(unint64_t)atIndex weight:(float)weight
{
  if (weight != 0.0)
  {
    if (weight < 1.0)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithFloat:?];
      nonOneWeightsOfCorrectivesToFlatten = self->_nonOneWeightsOfCorrectivesToFlatten;
      v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    }

    indicesOfCorrectivesToFlattenInOtherCorrective = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    v15 = [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInOtherCorrective objectForKeyedSubscript:?];

    if (!v15)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v12 = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
      [NSMutableDictionary setObject:v12 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    }

    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    [v15 addObject:?];
  }
}

- (void)flattenRelevantTargetsOfMorpher:(id)morpher inBaseGeometryOfNode:(id)node
{
  morpherCopy = morpher;
  nodeCopy = node;
  if ([(NSMutableArray *)self->_indicesOfTargetsToFlattenInBaseGeometry count]|| [(NSMutableArray *)self->_indicesOfCorrectivesToFlattenInBaseGeometry count])
  {
    model = [nodeCopy model];
    mesh = [model mesh];

    v47 = mesh;
    meshSources = [mesh meshSources];
    v11 = objc_alloc(MEMORY[0x1E695DF70]);
    [meshSources count];
    v51 = [v11 initWithCapacity:?];
    obj = meshSources;
    v12 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v12)
    {
      v13 = v12;
      v14 = MEMORY[0];
      do
      {
        for (i = 0; i != v13; i = (i + 1))
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(8 * i);
          semantic = [v16 semantic];
          v18 = [semantic isEqualToString:?];

          if (v18)
          {
            [v16 vectorCount];
            data = [v16 data];
            v20 = [data mutableCopy];

            [v20 mutableBytes];
            v21 = [MEMORY[0x1E69DF310] meshSourceWithData:0 semantic:8 vectorCount:? floatComponents:? componentsPerVector:? bytesPerComponent:? dataOffset:? dataStride:?];
            [v51 addObject:?];
          }

          else
          {
            [v51 addObject:?];
          }
        }

        v13 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v13);
    }

    v22 = MEMORY[0x1E69DF308];
    meshElements = [v47 meshElements];
    meshSourceChannels = [v47 meshSourceChannels];
    v25 = [v22 meshWithSources:? elements:? sourceChannels:?];

    v46 = nodeCopy;
    model2 = [nodeCopy model];
    v45 = v25;
    [model2 setMesh:?];

    v48 = self->_indicesOfTargetsToFlattenInBaseGeometry;
    v27 = [NSMutableArray countByEnumeratingWithState:v48 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v27)
    {
      v28 = v27;
      v29 = MEMORY[0];
      do
      {
        for (j = 0; j != v28; j = (j + 1))
        {
          if (MEMORY[0] != v29)
          {
            objc_enumerationMutation(v48);
          }

          [*(8 * j) unsignedIntegerValue];
          v31 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:?];
          v32 = [(NSMutableDictionary *)self->_nonOneWeightsOfTargetsToFlatten objectForKeyedSubscript:?];
          v33 = v32;
          if (v32)
          {
            [v32 floatValue];
          }

          v34 = [morpherCopy inBetweenWeightsForTargetAtIndex:?];
          v35 = [morpherCopy inBetweenTargetsForTargetAtIndex:?];
          [AVTAvatarMemoryOptimizer resolveInBetweensForTarget:"resolveInBetweensForTarget:weight:inBetweenWeights:inBetweenTargets:block:" weight:? inBetweenWeights:? inBetweenTargets:? block:?];
        }

        v28 = [NSMutableArray countByEnumeratingWithState:v48 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v28);
    }

    v49 = self->_indicesOfCorrectivesToFlattenInBaseGeometry;
    v36 = [NSMutableArray countByEnumeratingWithState:v49 objects:"countByEnumeratingWithState:objects:count:" count:?];
    if (v36)
    {
      v37 = v36;
      v38 = MEMORY[0];
      do
      {
        for (k = 0; k != v37; k = (k + 1))
        {
          if (MEMORY[0] != v38)
          {
            objc_enumerationMutation(v49);
          }

          [*(8 * k) unsignedIntegerValue];
          v40 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
          v41 = [(NSMutableDictionary *)self->_nonOneWeightsOfCorrectivesToFlatten objectForKeyedSubscript:?];
          v42 = v41;
          if (v41)
          {
            [v41 floatValue];
          }

          v43 = [morpherCopy inBetweenWeightsForCorrectiveAtIndex:?];
          v44 = [morpherCopy inBetweenTargetsForCorrectiveAtIndex:?];
          [AVTAvatarMemoryOptimizer resolveInBetweensForTarget:"resolveInBetweensForTarget:weight:inBetweenWeights:inBetweenTargets:block:" weight:? inBetweenWeights:? inBetweenTargets:? block:?];
        }

        v37 = [NSMutableArray countByEnumeratingWithState:v49 objects:"countByEnumeratingWithState:objects:count:" count:?];
      }

      while (v37);
    }

    nodeCopy = v46;
  }
}

void __81__AVTAvatarMemoryOptimizer_flattenRelevantTargetsOfMorpher_inBaseGeometryOfNode___block_invoke(uint64_t a1, uint64_t a2, void *a3, float a4, float a5)
{
  v7 = a3;
  [*(a1 + 32) applyMorphTarget:? weight:? toBaseGeometryBuffer:? vertexCount:?];
  v6 = v7;
  if (v7)
  {
    [*(a1 + 32) applyMorphTarget:? weight:? toBaseGeometryBuffer:? vertexCount:?];
    v6 = v7;
  }
}

void __81__AVTAvatarMemoryOptimizer_flattenRelevantTargetsOfMorpher_inBaseGeometryOfNode___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, float a4, float a5)
{
  v7 = a3;
  [*(a1 + 32) applyMorphTarget:? weight:? toBaseGeometryBuffer:? vertexCount:?];
  v6 = v7;
  if (v7)
  {
    [*(a1 + 32) applyMorphTarget:? weight:? toBaseGeometryBuffer:? vertexCount:?];
    v6 = v7;
  }
}

- (void)flattenRelevantTargetsInOtherTargetsOfMorpher:(id)morpher
{
  morpherCopy = morpher;
  if ([(NSMutableDictionary *)self->_indicesOfTargetsToFlattenInOtherTarget count]&& self->_indicesOfCorrectivesToFlattenInMainTarget)
  {
    if ([(NSArray *)self->_oldMainTargets count])
    {
      v5 = 0;
      do
      {
        v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
        v7 = [(NSMutableDictionary *)self->_indicesOfTargetsToFlattenInOtherTarget objectForKeyedSubscript:?];
        v8 = [(NSMutableDictionary *)self->_indicesOfCorrectivesToFlattenInMainTarget objectForKeyedSubscript:?];
        if (v7 | v8)
        {
          [AVTAvatarMemoryOptimizer flattenTargetsAtIndices:"flattenTargetsAtIndices:correctivesAtIndices:inTargetAtIndex:morpher:" correctivesAtIndices:? inTargetAtIndex:? morpher:?];
        }

        ++v5;
      }

      while (v5 < [(NSArray *)self->_oldMainTargets count]);
    }
  }

  else
  {
    indicesOfTargetsToFlattenInOtherTarget = self->_indicesOfTargetsToFlattenInOtherTarget;
    v16 = morpherCopy;
    [(NSMutableDictionary *)indicesOfTargetsToFlattenInOtherTarget enumerateKeysAndObjectsUsingBlock:?];
    indicesOfCorrectivesToFlattenInMainTarget = self->_indicesOfCorrectivesToFlattenInMainTarget;
    v15 = v16;
    [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInMainTarget enumerateKeysAndObjectsUsingBlock:?];
  }

  indicesOfCorrectivesToFlattenInOtherCorrective = self->_indicesOfCorrectivesToFlattenInOtherCorrective;
  v13 = MEMORY[0x1E69E9820];
  selfCopy = self;
  v12 = morpherCopy;
  [(NSMutableDictionary *)indicesOfCorrectivesToFlattenInOtherCorrective enumerateKeysAndObjectsUsingBlock:v13, 3221225472, __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke_3, &unk_1E7F47C00, selfCopy];
}

void __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 unsignedIntegerValue];
  [*(a1 + 32) flattenTargetsAtIndices:? correctivesAtIndices:? inTargetAtIndex:? morpher:?];
}

void __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 unsignedIntegerValue];
  [*(a1 + 32) flattenTargetsAtIndices:? correctivesAtIndices:? inTargetAtIndex:? morpher:?];
}

void __74__AVTAvatarMemoryOptimizer_flattenRelevantTargetsInOtherTargetsOfMorpher___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  [a2 unsignedIntegerValue];
  [*(a1 + 32) flattenCorrectivesAtIndices:? inCorrectiveAtIndex:? morpher:?];
}

- (void)flattenTargetsAtIndices:(id)indices correctivesAtIndices:(id)atIndices inTargetAtIndex:(unint64_t)index morpher:(id)morpher
{
  indicesCopy = indices;
  atIndicesCopy = atIndices;
  morpherCopy = morpher;
  v11 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:?];
  [AVTAvatarMemoryOptimizer flattenTargetsAtIndices:"flattenTargetsAtIndices:correctivesAtIndices:inTarget:weight:morpher:" correctivesAtIndices:? inTarget:? weight:? morpher:?];
  v12 = [morpherCopy inBetweenWeightsForTargetAtIndex:?];
  v13 = [morpherCopy inBetweenTargetsForTargetAtIndex:?];
  v14 = [v13 count];
  if (v14)
  {
    v15 = v14;
    for (i = 0; i != v15; i = (i + 1))
    {
      v17 = [v13 objectAtIndexedSubscript:?];
      v18 = [v12 objectAtIndexedSubscript:?];
      [v18 floatValue];

      [AVTAvatarMemoryOptimizer flattenTargetsAtIndices:"flattenTargetsAtIndices:correctivesAtIndices:inTarget:weight:morpher:" correctivesAtIndices:? inTarget:? weight:? morpher:?];
    }
  }
}

- (void)flattenTargetsAtIndices:(id)indices correctivesAtIndices:(id)atIndices inTarget:(id)target weight:(float)weight morpher:(id)morpher
{
  v44 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  atIndicesCopy = atIndices;
  targetCopy = target;
  morpherCopy = morpher;
  v35 = targetCopy;
  v14 = [(NSMutableArray *)self->_newTargetsAndInBetweens indexOfObjectIdenticalTo:?];
  if (v14 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [AVTAvatarMemoryOptimizer flattenTargetsAtIndices:correctivesAtIndices:inTarget:weight:morpher:];
  }

  v31 = v14;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  obj = indicesCopy;
  v15 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v15)
  {
    v16 = MEMORY[0];
    do
    {
      for (i = 0; i != v15; i = (i + 1))
      {
        if (MEMORY[0] != v16)
        {
          objc_enumerationMutation(obj);
        }

        [*(8 * i) unsignedIntegerValue];
        v18 = [(NSArray *)self->_oldMainTargets objectAtIndexedSubscript:?];
        v19 = [(NSMutableDictionary *)self->_nonOneWeightsOfTargetsToFlatten objectForKeyedSubscript:?];
        v20 = v19;
        if (v19)
        {
          [v19 floatValue];
        }

        v21 = [morpherCopy inBetweenWeightsForTargetAtIndex:?];
        v22 = [morpherCopy inBetweenTargetsForTargetAtIndex:?];
        v37 = v35;
        [AVTAvatarMemoryOptimizer resolveInBetweensForTarget:"resolveInBetweensForTarget:weight:inBetweenWeights:inBetweenTargets:block:" weight:? inBetweenWeights:? inBetweenTargets:? block:?];
      }

      v15 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v15);
  }

  v33 = atIndicesCopy;
  v23 = [v33 countByEnumeratingWithState:? objects:? count:?];
  if (v23)
  {
    v24 = MEMORY[0];
    do
    {
      for (j = 0; j != v23; j = (j + 1))
      {
        if (MEMORY[0] != v24)
        {
          objc_enumerationMutation(v33);
        }

        [*(8 * j) unsignedIntegerValue];
        v26 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
        v27 = [(NSMutableDictionary *)self->_nonOneWeightsOfCorrectivesToFlatten objectForKeyedSubscript:?];
        v28 = v27;
        if (v27)
        {
          [v27 floatValue];
        }

        v29 = [morpherCopy inBetweenWeightsForCorrectiveAtIndex:?];
        v30 = [morpherCopy inBetweenTargetsForCorrectiveAtIndex:?];
        v36 = v35;
        [AVTAvatarMemoryOptimizer resolveInBetweensForTarget:"resolveInBetweensForTarget:weight:inBetweenWeights:inBetweenTargets:block:" weight:? inBetweenWeights:? inBetweenTargets:? block:?];
      }

      v23 = [v33 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v23);
  }

  if (!v39[5])
  {
    __assert_rtn("[AVTAvatarMemoryOptimizer flattenTargetsAtIndices:correctivesAtIndices:inTarget:weight:morpher:]", "AVTAvatarMemoryOptimizer.m", 1213, "newTargetWithFlattenedTargets != nil");
  }

  [NSMutableArray replaceObjectAtIndex:"replaceObjectAtIndex:withObject:" withObject:?];
  _Block_object_dispose(&v38, 8);
}

uint64_t __97__AVTAvatarMemoryOptimizer_flattenTargetsAtIndices_correctivesAtIndices_inTarget_weight_morpher___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = [*(a1 + 32) flattenTarget0:? weight0:? target1:? weight1:? inMorphTarget:? originalMorphTarget:?];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

uint64_t __97__AVTAvatarMemoryOptimizer_flattenTargetsAtIndices_correctivesAtIndices_inTarget_weight_morpher___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = [*(a1 + 32) flattenTarget0:? weight0:? target1:? weight1:? inMorphTarget:? originalMorphTarget:?];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

- (void)flattenCorrectivesAtIndices:(id)indices inCorrectiveAtIndex:(unint64_t)index morpher:(id)morpher
{
  indicesCopy = indices;
  morpherCopy = morpher;
  v8 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
  [AVTAvatarMemoryOptimizer flattenCorrectivesAtIndices:"flattenCorrectivesAtIndices:inCorrective:weight:morpher:" inCorrective:? weight:? morpher:?];
  v9 = [morpherCopy inBetweenWeightsForCorrectiveAtIndex:?];
  v10 = [morpherCopy inBetweenTargetsForCorrectiveAtIndex:?];
  v11 = [v10 count];
  if (v11)
  {
    v12 = v11;
    for (i = 0; i != v12; i = (i + 1))
    {
      v14 = [v10 objectAtIndexedSubscript:?];
      v15 = [v9 objectAtIndexedSubscript:?];
      [v15 floatValue];

      [AVTAvatarMemoryOptimizer flattenCorrectivesAtIndices:"flattenCorrectivesAtIndices:inCorrective:weight:morpher:" inCorrective:? weight:? morpher:?];
    }
  }
}

- (void)flattenCorrectivesAtIndices:(id)indices inCorrective:(id)corrective weight:(float)weight morpher:(id)morpher
{
  v29 = *MEMORY[0x1E69E9840];
  indicesCopy = indices;
  correctiveCopy = corrective;
  morpherCopy = morpher;
  v21 = correctiveCopy;
  if ([(NSMutableArray *)self->_newCorrectivesAndInBetweens indexOfObjectIdenticalTo:?]== 0x7FFFFFFFFFFFFFFFLL)
  {
    [AVTAvatarMemoryOptimizer flattenCorrectivesAtIndices:inCorrective:weight:morpher:];
  }

  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  obj = indicesCopy;
  v12 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v12)
  {
    v13 = MEMORY[0];
    do
    {
      for (i = 0; i != v12; i = (i + 1))
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(obj);
        }

        [*(8 * i) unsignedIntegerValue];
        v15 = [(NSArray *)self->_oldCorrectives objectAtIndexedSubscript:?];
        v16 = [(NSMutableDictionary *)self->_nonOneWeightsOfCorrectivesToFlatten objectForKeyedSubscript:?];
        v17 = v16;
        if (v16)
        {
          [v16 floatValue];
        }

        v18 = [morpherCopy inBetweenWeightsForCorrectiveAtIndex:?];
        v19 = [morpherCopy inBetweenTargetsForCorrectiveAtIndex:?];
        v22 = v21;
        [AVTAvatarMemoryOptimizer resolveInBetweensForTarget:"resolveInBetweensForTarget:weight:inBetweenWeights:inBetweenTargets:block:" weight:? inBetweenWeights:? inBetweenTargets:? block:?];
      }

      v12 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v12);
  }

  if (!v24[5])
  {
    __assert_rtn("[AVTAvatarMemoryOptimizer flattenCorrectivesAtIndices:inCorrective:weight:morpher:]", "AVTAvatarMemoryOptimizer.m", 1275, "newCorrectiveWithFlattenedCorrectives != nil");
  }

  [NSMutableArray replaceObjectAtIndex:"replaceObjectAtIndex:withObject:" withObject:?];
  _Block_object_dispose(&v23, 8);
}

uint64_t __84__AVTAvatarMemoryOptimizer_flattenCorrectivesAtIndices_inCorrective_weight_morpher___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v6 = [*(a1 + 32) flattenTarget0:? weight0:? target1:? weight1:? inMorphTarget:? originalMorphTarget:?];
  v7 = *(*(a1 + 48) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return MEMORY[0x1EEE66BB8](v6, v8);
}

- (void)resolveInBetweensForTarget:(id)target weight:(float)weight inBetweenWeights:(id)weights inBetweenTargets:(id)targets block:(id)block
{
  targetCopy = target;
  weightsCopy = weights;
  targetsCopy = targets;
  blockCopy = block;
  v14 = [targetsCopy count];
  if (!v14)
  {
    blockCopy[2](blockCopy, targetCopy, 0, weight, 0.0);
    goto LABEL_18;
  }

  v15 = v14;
  v16 = 0;
  while (v15 != v16)
  {
    v17 = [targetsCopy objectAtIndexedSubscript:?];
    if (weight < 1.0)
    {
      v21 = [weightsCopy objectAtIndexedSubscript:?];
      [v21 floatValue];
      v20 = v22;

      goto LABEL_8;
    }

LABEL_9:

    v16 = (v16 + 1);
    if (v16 > v15)
    {
      goto LABEL_18;
    }
  }

  v17 = targetCopy;
  v20 = 1.0;
  if (weight >= 1.0)
  {
    goto LABEL_15;
  }

LABEL_8:
  if (v20 < weight)
  {
    goto LABEL_9;
  }

  if (v16)
  {
    v23 = [weightsCopy objectAtIndexedSubscript:?];
    [v23 floatValue];
    v25 = v24;

    weight = (weight - v25) / (v20 - v25);
    if (weight < 1.0)
    {
      v26 = [targetsCopy objectAtIndexedSubscript:?];
      (blockCopy)[2](blockCopy, v26, v17, 1.0 - weight, weight);

      goto LABEL_17;
    }

LABEL_15:
    v19.n128_u64[0] = 0;
    v18.n128_f32[0] = weight;
    (blockCopy[2])(blockCopy, v17, 0, v18, v19);
    goto LABEL_17;
  }

  v18.n128_f32[0] = weight / v20;
  v19.n128_u64[0] = 0;
  (blockCopy[2])(blockCopy, v17, 0, v18, v19);
LABEL_17:

LABEL_18:
}

- (id)flattenTarget0:(id)target0 weight0:(float)weight0 target1:(id)target1 weight1:(float)weight1 inMorphTarget:(id)target originalMorphTarget:(id)morphTarget
{
  target0Copy = target0;
  target1Copy = target1;
  targetCopy = target;
  morphTargetCopy = morphTarget;
  v16 = morphTargetCopy;
  if (targetCopy)
  {
    meshSources = [targetCopy meshSources];
    firstObject = [meshSources firstObject];

    [firstObject vectorCount];
    data = [firstObject data];
    [data mutableBytes];
  }

  else
  {
    meshSources2 = [morphTargetCopy meshSources];
    firstObject = [meshSources2 firstObject];

    [firstObject vectorCount];
    data2 = [firstObject data];
    selfCopy = self;
    v22 = [data2 mutableCopy];

    [v22 mutableBytes];
    v23 = [MEMORY[0x1E69DF310] meshSourceWithData:0 semantic:12 vectorCount:? floatComponents:? componentsPerVector:? bytesPerComponent:? dataOffset:? dataStride:?];
    v24 = MEMORY[0x1E69DF308];
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];
    targetCopy = [v24 meshWithSources:? elements:?];

    name = [v16 name];
    [targetCopy setName:?];

    self = selfCopy;
  }

  [AVTAvatarMemoryOptimizer applyMorphTarget:"applyMorphTarget:weight:toMorphTargetBuffer:vertexCount:" weight:? toMorphTargetBuffer:? vertexCount:?];
  if (target1Copy)
  {
    [AVTAvatarMemoryOptimizer applyMorphTarget:"applyMorphTarget:weight:toMorphTargetBuffer:vertexCount:" weight:? toMorphTargetBuffer:? vertexCount:?];
  }

  return targetCopy;
}

- (void)applyMorphTarget:(id)target weight:(float)weight toBaseGeometryBuffer:(void *)buffer vertexCount:(unint64_t)count
{
  targetCopy = target;
  if (weight <= 0.0)
  {
    [AVTAvatarMemoryOptimizer applyMorphTarget:weight:toBaseGeometryBuffer:vertexCount:];
  }

  v56 = targetCopy;
  meshSources = [targetCopy meshSources];
  firstObject = [meshSources firstObject];

  data = [firstObject data];
  bytes = [data bytes];

  if (count)
  {
    v14 = (bytes + 1);
    v15 = buffer + 4;
    do
    {
      v16 = *(v15 - 2);
      v17 = (v16 >> 10) & 0x1F;
      if (v17 == 31)
      {
        v18 = 2139095040;
      }

      else
      {
        v18 = (v16 >> 10) & 0x1F;
      }

      if (v17)
      {
        v19 = v17 == 31;
      }

      else
      {
        v19 = 1;
      }

      if (v19)
      {
        v20 = v18;
      }

      else
      {
        v20 = (v17 << 23) + 939524096;
      }

      v21 = COERCE_FLOAT(v20 | (v16 << 16) & 0x80000000 | (v16 >> 7) & 7 | (8 * (v16 & 0x3FF)) & 0x1FFF | ((v16 & 0x3FF) << 13)) + (weight * *(v14 - 2));
      v22 = HIWORD(LODWORD(v21)) & 0x8000;
      v23 = (LODWORD(v21) >> 23);
      v24 = v23 - 112;
      v25 = v23 - 113;
      v26 = v22 | 0x7BFF;
      if ((LODWORD(v21) & 0x7FFFFF) != 0)
      {
        LOWORD(v27) = v22 + 1;
      }

      else
      {
        v27 = HIWORD(LODWORD(v21)) & 0x8000;
      }

      v28 = v27 | 0x7C00;
      if (v23 == 255)
      {
        v26 = v28;
      }

      if (v23 >= 0x71)
      {
        v29 = v26;
      }

      else
      {
        v29 = HIWORD(v21) & 0x8000;
      }

      v30 = HIWORD(LODWORD(v21)) & 0x8000 | (LODWORD(v21) >> 13) & 0x3FF | (v24 << 10);
      if (v25 > 0x1D)
      {
        LOWORD(v30) = v29;
      }

      *(v15 - 2) = v30;
      v31 = *(v15 - 1);
      v32 = (v31 >> 10) & 0x1F;
      if (v32 && v32 != 31)
      {
        v32 = (v32 << 23) + 939524096;
      }

      else if (v32 == 31)
      {
        v32 = 2139095040;
      }

      v33 = COERCE_FLOAT(v32 | (v31 << 16) & 0x80000000 | (v31 >> 7) & 7 | (8 * (v31 & 0x3FF)) & 0x1FFF | ((v31 & 0x3FF) << 13)) + (weight * *(v14 - 1));
      v34 = HIWORD(LODWORD(v33)) & 0x8000;
      v35 = (LODWORD(v33) >> 23);
      v36 = v35 - 112;
      v37 = v35 - 113;
      v38 = v34 | 0x7BFF;
      if ((LODWORD(v33) & 0x7FFFFF) != 0)
      {
        LOWORD(v39) = v34 + 1;
      }

      else
      {
        v39 = HIWORD(LODWORD(v33)) & 0x8000;
      }

      v40 = v39 | 0x7C00;
      if (v35 == 255)
      {
        v38 = v40;
      }

      if (v35 >= 0x71)
      {
        v41 = v38;
      }

      else
      {
        v41 = HIWORD(v33) & 0x8000;
      }

      v42 = HIWORD(LODWORD(v33)) & 0x8000 | (LODWORD(v33) >> 13) & 0x3FF | (v36 << 10);
      if (v37 > 0x1D)
      {
        LOWORD(v42) = v41;
      }

      *(v15 - 1) = v42;
      v43 = *v15;
      v44 = (v43 >> 10) & 0x1F;
      if (v44 && v44 != 31)
      {
        v44 = (v44 << 23) + 939524096;
      }

      else if (v44 == 31)
      {
        v44 = 2139095040;
      }

      v45 = *v14;
      v14 += 3;
      v46 = COERCE_FLOAT(v44 | (v43 << 16) & 0x80000000 | (v43 >> 7) & 7 | (8 * (v43 & 0x3FF)) & 0x1FFF | ((v43 & 0x3FF) << 13)) + (weight * v45);
      v47 = HIWORD(LODWORD(v46)) & 0x8000;
      v48 = (LODWORD(v46) >> 23);
      v49 = v48 - 112;
      v50 = v48 - 113;
      v51 = v47 | 0x7BFF;
      if ((LODWORD(v46) & 0x7FFFFF) != 0)
      {
        LOWORD(v52) = v47 + 1;
      }

      else
      {
        v52 = HIWORD(LODWORD(v46)) & 0x8000;
      }

      v53 = v52 | 0x7C00;
      if (v48 == 255)
      {
        v51 = v53;
      }

      if (v48 >= 0x71)
      {
        v54 = v51;
      }

      else
      {
        v54 = HIWORD(v46) & 0x8000;
      }

      v55 = HIWORD(LODWORD(v46)) & 0x8000 | (LODWORD(v46) >> 13) & 0x3FF | (v49 << 10);
      if (v50 > 0x1D)
      {
        LOWORD(v55) = v54;
      }

      *v15 = v55;
      v15 += 4;
      --count;
    }

    while (count);
  }
}

- (void)applyMorphTarget:(id)target weight:(float)weight toMorphTargetBuffer:(id *)buffer vertexCount:(unint64_t)count
{
  v18 = *&weight;
  targetCopy = target;
  if (*v18.i32 <= 0.0)
  {
    [AVTAvatarMemoryOptimizer applyMorphTarget:weight:toMorphTargetBuffer:vertexCount:];
  }

  v17 = targetCopy;
  meshSources = [targetCopy meshSources];
  firstObject = [meshSources firstObject];

  data = [firstObject data];
  bytes = [data bytes];

  if (count)
  {
    v15 = vdupq_lane_s32(v18, 0);
    v16 = bytes + 1;
    do
    {
      v13.i64[0] = *&buffer->var0;
      v13.i32[2] = LODWORD(buffer->var2);
      v14.i64[0] = *(v16 - 1);
      v14.i32[2] = *v16;
      v13 = vmlaq_f32(v13, v14, v15);
      LODWORD(buffer->var2) = v13.i32[2];
      *&buffer->var0 = v13.i64[0];
      ++buffer;
      v16 += 3;
      --count;
    }

    while (count);
  }
}

- (void)classifyTargetsOfMorpher:(os_log_t)log node:.cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "newDriverIndex != NSNotFound";
  _os_log_error_impl(&dword_1BB472000, log, OS_LOG_TYPE_ERROR, "Error: Condition '%s' failed. Failed to find driver in new updated main targets", buf, 0xCu);
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_cold_5()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1BB472000, v0, OS_LOG_TYPE_ERROR, "Error: Failed to optimize corrective with more than %d targets: %@", v1, 0x12u);
}

void __58__AVTAvatarMemoryOptimizer_classifyTargetsOfMorpher_node___block_invoke_2_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x1E69E9840];
  v4 = [*(*a1 + 136) objectAtIndexedSubscript:?];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_1BB472000, a3, OS_LOG_TYPE_ERROR, "Error: Failed to optimize corrective with more than %d targets: %@", v5, 0x12u);
}

@end