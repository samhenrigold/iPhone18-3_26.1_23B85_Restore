@interface REFeatureTransmuter
- (BOOL)_supportedFeature:(id)feature;
- (REFeatureTransmuter)initWithInputFeatures:(id)features outputFeatures:(id)outputFeatures outputFeatureMapGenerator:(id)generator;
- (id)_buildGraph;
- (id)transformFeatureMaps:(id)maps;
- (void)dealloc;
@end

@implementation REFeatureTransmuter

- (REFeatureTransmuter)initWithInputFeatures:(id)features outputFeatures:(id)outputFeatures outputFeatureMapGenerator:(id)generator
{
  featuresCopy = features;
  outputFeaturesCopy = outputFeatures;
  generatorCopy = generator;
  v28.receiver = self;
  v28.super_class = REFeatureTransmuter;
  v11 = [(REFeatureTransmuter *)&v28 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_outputFeatureMapGenerator, generator);
    v13 = [featuresCopy copy];
    inputSet = v12->_inputSet;
    v12->_inputSet = v13;

    v15 = [outputFeaturesCopy copy];
    outputSet = v12->_outputSet;
    v12->_outputSet = v15;

    REOptimizeFeatureSetGraph(v12->_outputSet);
    _buildGraph = [(REFeatureTransmuter *)v12 _buildGraph];
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __86__REFeatureTransmuter_initWithInputFeatures_outputFeatures_outputFeatureMapGenerator___block_invoke;
    v26[3] = &unk_2785FB818;
    v18 = v12;
    v27 = v18;
    [_buildGraph enumerateObjectsUsingBlock:v26];
    topologicalSortedItems = [_buildGraph topologicalSortedItems];
    orderedFeatures = v18->_orderedFeatures;
    v18->_orderedFeatures = topologicalSortedItems;

    v21 = [[REFeatureMapGenerator alloc] initWithFeatureList:v18->_orderedFeatures];
    orderedFeatureMapGenerator = v18->_orderedFeatureMapGenerator;
    v18->_orderedFeatureMapGenerator = v21;

    createFeatureMap = [(REFeatureMapGenerator *)v18->_orderedFeatureMapGenerator createFeatureMap];
    scratchValues = v18->_scratchValues;
    v18->_scratchValues = createFeatureMap;

    v18->_scratchTaggedValues = malloc_type_calloc([(REFeatureMap *)v18->_scratchValues featureCount], 8uLL, 0x100004000313F17uLL);
  }

  return v12;
}

void __86__REFeatureTransmuter_initWithInputFeatures_outputFeatures_outputFeatureMapGenerator___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if (([*(a1 + 32) _supportedFeature:?] & 1) == 0)
  {
    RERaiseInternalException(*MEMORY[0x277CBE660], @"Feature %@ isn't supported", v3, v4, v5, v6, v7, v8, v9);
  }
}

- (void)dealloc
{
  free(self->_scratchTaggedValues);
  v3.receiver = self;
  v3.super_class = REFeatureTransmuter;
  [(REFeatureTransmuter *)&v3 dealloc];
}

- (BOOL)_supportedFeature:(id)feature
{
  v3 = objc_opt_class();
  if ([v3 isSubclassOfClass:objc_opt_class()] & 1) != 0 || (objc_msgSend(v3, "isSubclassOfClass:", objc_opt_class()))
  {
    return 1;
  }

  v5 = objc_opt_class();

  return [v3 isSubclassOfClass:v5];
}

- (id)_buildGraph
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [[REDependencyGraph alloc] initWithPointerFunctions:0];
  allFeatures = [(REFeatureSet *)self->_outputSet allFeatures];
  v5 = [allFeatures mutableCopy];

  v6 = [MEMORY[0x277CBEB58] set];
  while ([v5 count])
  {
    lastObject = [v5 lastObject];
    [v5 removeLastObject];
    v8 = [v6 member:lastObject];

    if (v8 != lastObject)
    {
      if (![(REDependencyGraph *)v3 containsItem:lastObject])
      {
        [(REDependencyGraph *)v3 addItem:lastObject];
      }

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      _dependentFeatures = [lastObject _dependentFeatures];
      v10 = [_dependentFeatures countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(_dependentFeatures);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if (![(REDependencyGraph *)v3 containsItem:v14])
            {
              [(REDependencyGraph *)v3 addItem:v14];
            }

            [(REDependencyGraph *)v3 markItem:lastObject dependentOnItem:v14];
            [v5 addObject:v14];
          }

          v11 = [_dependentFeatures countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }
  }

  return v3;
}

- (id)transformFeatureMaps:(id)maps
{
  v66 = *MEMORY[0x277D85DE8];
  mapsCopy = maps;
  createFeatureMap = [(REFeatureMapGenerator *)self->_outputFeatureMapGenerator createFeatureMap];
  [(REFeatureMap *)self->_scratchValues removeAllValues];
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __44__REFeatureTransmuter_transformFeatureMaps___block_invoke;
  v60[3] = &unk_2785FB840;
  v60[4] = self;
  v37 = mapsCopy;
  v61 = v37;
  v6 = createFeatureMap;
  v62 = v6;
  v7 = MEMORY[0x22AABC5E0](v60);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __44__REFeatureTransmuter_transformFeatureMaps___block_invoke_2;
  v58[3] = &unk_2785FB868;
  v58[4] = self;
  v36 = v6;
  v59 = v36;
  v40 = MEMORY[0x22AABC5E0](v58);
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = self->_orderedFeatures;
  v42 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v65 count:16];
  if (v42)
  {
    v41 = *v55;
    selfCopy = self;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v55 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v54 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          transformer = [v9 transformer];
          v43 = v9;
          _dependentFeatures = [v9 _dependentFeatures];
          v50 = 0u;
          v51 = 0u;
          v52 = 0u;
          v53 = 0u;
          v12 = _dependentFeatures;
          v13 = [v12 countByEnumeratingWithState:&v50 objects:v64 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v16 = *v51;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v51 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = v7[2](v7, *(*(&v50 + 1) + 8 * j));
                if (!v18)
                {

                  goto LABEL_30;
                }

                self->_scratchTaggedValues[v15++] = v18;
              }

              v14 = [v12 countByEnumeratingWithState:&v50 objects:v64 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            v15 = 0;
          }

          v33 = [transformer _createTransformFromValues:self->_scratchTaggedValues count:v15];
          (v40)[2](v40, v43, v33);
          REReleaseFeatureValueTaggedPointer(v33);
LABEL_30:
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v38 = i;
            v44 = v9;
            features = [v9 features];
            v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(features, "count")}];
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v21 = features;
            v22 = [v21 countByEnumeratingWithState:&v46 objects:v63 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = 0;
              v25 = *v47;
              while (2)
              {
                for (k = 0; k != v23; ++k)
                {
                  if (*v47 != v25)
                  {
                    objc_enumerationMutation(v21);
                  }

                  v27 = *(*(&v46 + 1) + 8 * k);
                  v28 = (v7)[2](v7, v27);
                  if (!v28)
                  {

                    goto LABEL_32;
                  }

                  selfCopy->_scratchTaggedValues[v24++] = v28;
                  v29 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v27, "_bitCount")}];
                  [v20 addObject:v29];
                }

                v23 = [v21 countByEnumeratingWithState:&v46 objects:v63 count:16];
                if (v23)
                {
                  continue;
                }

                break;
              }
            }

            v30 = RECrossFeatureValues(selfCopy->_scratchTaggedValues, v20);
            v31 = RECreateIntegerFeatureValueTaggedPointer(v30);
            (v40)[2](v40, v44, v31);
            REReleaseFeatureValueTaggedPointer(v31);
LABEL_32:

            i = v38;
            self = selfCopy;
          }

          else
          {
            v32 = (v7)[2](v7, v9);
            (v40)[2](v40, v9, v32);
          }
        }
      }

      v42 = [(NSArray *)obj countByEnumeratingWithState:&v54 objects:v65 count:16];
    }

    while (v42);
  }

  v34 = v36;
  return v36;
}

uint64_t __44__REFeatureTransmuter_transformFeatureMaps___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 8) containsFeature:v3])
  {
    v4 = (a1 + 40);
  }

  else if ([*(*(a1 + 32) + 16) containsFeature:v3])
  {
    v4 = (a1 + 48);
  }

  else
  {
    v4 = (*(a1 + 32) + 40);
  }

  v5 = [*v4 valueForFeature:v3];

  return v5;
}

void __44__REFeatureTransmuter_transformFeatureMaps___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(*(a1 + 32) + 16);
  v6 = a2;
  if (([v5 containsFeature:?] & 1) == 0)
  {
    v4 = *(v4 + 32);
  }

  [*(v4 + 40) setValue:a3 forFeature:v6];
}

@end