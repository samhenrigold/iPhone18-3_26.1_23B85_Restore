@interface MLCInferenceGraph
+ (MLCInferenceGraph)graphWithGraphObjects:(NSArray *)graphObjects;
- (BOOL)addInputs:(NSDictionary *)inputs;
- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights;
- (BOOL)addInputs:(id)inputs lossLabels:(id)labels;
- (BOOL)addOutputs:(NSDictionary *)outputs;
- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData;
- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler;
- (BOOL)recompileWithOptions:(unint64_t)options;
- (MLCInferenceGraph)initWithGraphObjects:(id)objects;
- (NSUInteger)deviceMemorySize;
- (id)concatenateWithSources:(id)sources dimension:(unint64_t)dimension;
- (id)description;
- (id)nodeWithLayer:(id)layer source:(id)source;
- (id)nodeWithLayer:(id)layer sources:(id)sources;
- (id)reshapeWithShape:(id)shape source:(id)source;
- (id)resultTensorsForLayer:(id)layer;
- (id)sourceTensorsForLayer:(id)layer;
- (id)splitWithSource:(id)source splitCount:(unint64_t)count dimension:(unint64_t)dimension;
- (id)splitWithSource:(id)source splitSectionLengths:(id)lengths dimension:(unint64_t)dimension;
- (id)transposeWithDimensions:(id)dimensions source:(id)source;
@end

@implementation MLCInferenceGraph

+ (MLCInferenceGraph)graphWithGraphObjects:(NSArray *)graphObjects
{
  v4 = graphObjects;
  v5 = [[self alloc] initWithGraphObjects:v4];

  return v5;
}

- (MLCInferenceGraph)initWithGraphObjects:(id)objects
{
  v7.receiver = self;
  v7.super_class = MLCInferenceGraph;
  v3 = [(MLCGraph *)&v7 initWithGraphObjects:objects];
  v4 = v3;
  if (v3)
  {
    v3->_inferenceNodeInit = 0;
    graphLayerList = [(MLCGraph *)v3 graphLayerList];
    v4->_inferenceNodeIndexInGraphLayerList = [graphLayerList count];
  }

  return v4;
}

- (id)splitWithSource:(id)source splitCount:(unint64_t)count dimension:(unint64_t)dimension
{
  sourceCopy = source;
  v9 = [MLCSplitLayer layerWithSplitCount:count dimension:dimension];
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:sourceCopy forTraining:0];

  return v10;
}

- (id)splitWithSource:(id)source splitSectionLengths:(id)lengths dimension:(unint64_t)dimension
{
  sourceCopy = source;
  v9 = [MLCSplitLayer layerWithSplitSectionLengths:lengths dimension:dimension];
  v10 = [(MLCGraph *)self nodeWithMultiOutputLayer:v9 source:sourceCopy forTraining:0];

  return v10;
}

- (id)concatenateWithSources:(id)sources dimension:(unint64_t)dimension
{
  sourcesCopy = sources;
  if ([sourcesCopy count])
  {
    if (dimension - 4 >= 0xFFFFFFFFFFFFFFFDLL)
    {
      if (![sourcesCopy count])
      {
LABEL_11:
        v11 = [MLCConcatenationLayer layerWithDimension:dimension];
        v12 = [(MLCInferenceGraph *)self nodeWithLayer:v11 sources:sourcesCopy];

        goto LABEL_15;
      }

      v9 = 0;
      while (1)
      {
        v10 = [sourcesCopy objectAtIndexedSubscript:v9];

        if (!v10)
        {
          break;
        }

        if (++v9 >= [sourcesCopy count])
        {
          goto LABEL_11;
        }
      }

      v8 = +[MLCLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MLCInferenceGraph concatenateWithSources:a2 dimension:?];
      }
    }

    else
    {
      v8 = +[MLCLog framework];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [MLCInferenceGraph concatenateWithSources:a2 dimension:?];
      }
    }
  }

  else
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MLCInferenceGraph concatenateWithSources:a2 dimension:?];
    }
  }

  v12 = 0;
LABEL_15:

  return v12;
}

- (id)reshapeWithShape:(id)shape source:(id)source
{
  v11[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [MLCReshapeLayer layerWithShape:shape];
  v11[0] = sourceCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = [(MLCInferenceGraph *)self nodeWithLayer:v7 sources:v8];

  return v9;
}

- (id)transposeWithDimensions:(id)dimensions source:(id)source
{
  v11[1] = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v7 = [MLCTransposeLayer layerWithDimensions:dimensions];
  v11[0] = sourceCopy;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];

  v9 = [(MLCInferenceGraph *)self nodeWithLayer:v7 sources:v8];

  return v9;
}

- (id)nodeWithLayer:(id)layer source:(id)source
{
  v13 = *MEMORY[0x277D85DE8];
  sourceCopy = source;
  v6 = MEMORY[0x277CBEA60];
  sourceCopy2 = source;
  layerCopy = layer;
  v9 = [v6 arrayWithObjects:&sourceCopy count:1];

  v10 = [(MLCInferenceGraph *)self nodeWithLayer:layerCopy sources:v9, sourceCopy, v13];

  return v10;
}

- (id)nodeWithLayer:(id)layer sources:(id)sources
{
  layerCopy = layer;
  v7 = [(MLCGraph *)self nodeWithLayer:layerCopy sources:sources forTraining:0];
  if (v7)
  {
    [layerCopy setCompileForInferenceOnly:1];
    if (![(MLCInferenceGraph *)self inferenceNodeInit])
    {
      [(MLCInferenceGraph *)self setInferenceNodeInit:1];
      graphLayerList = [(MLCGraph *)self graphLayerList];
      -[MLCInferenceGraph setInferenceNodeIndexInGraphLayerList:](self, "setInferenceNodeIndexInGraphLayerList:", [graphLayerList count] - 1);
    }
  }

  return v7;
}

- (BOOL)recompileWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v35 = *MEMORY[0x277D85DE8];
  if (([(MLCGraph *)self compilerOptions]& 1) != 0 || ([(MLCGraph *)self compilerOptions]& 2) != 0)
  {
    LOBYTE(v7) = 1;
  }

  else
  {
    compilerOptions = [(MLCGraph *)self compilerOptions];
    v7 = (compilerOptions >> 2) & 1;
    if ((compilerOptions & 4) != 0)
    {
      if ((optionsCopy & 4) != 0)
      {
        v10 = +[MLCLog execution];
        v8 = os_signpost_id_generate(v10);
      }

      else
      {
        v8 = 0;
      }

      v11 = +[MLCLog execution];
      v12 = v11;
      v13 = v8 - 1;
      if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v8, "RecompileInferenceGraph", "", buf, 2u);
      }

      spid = v8;

      device = [(MLCGraph *)self device];
      computeEngine = [device computeEngine];
      graphLayerList = [(MLCGraph *)self graphLayerList];
      [computeEngine fuseLayersForInferenceGraph:graphLayerList startAtLayerIndex:{-[MLCInferenceGraph inferenceNodeIndexInGraphLayerList](self, "inferenceNodeIndexInGraphLayerList")}];

      graphLayerList2 = [(MLCGraph *)self graphLayerList];
      v18 = [graphLayerList2 count];

      v19 = 0;
      if (v18)
      {
        v20 = 0;
        while (1)
        {
          graphLayerList3 = [(MLCGraph *)self graphLayerList];
          v22 = [graphLayerList3 objectAtIndexedSubscript:v20];

          if (([v22 skipLayer] & 1) == 0)
          {
            fusedLayers = [v22 fusedLayers];
            if (![fusedLayers count])
            {
              goto LABEL_19;
            }

            compileForInferenceOnly = [v22 compileForInferenceOnly];

            if (compileForInferenceOnly)
            {
              break;
            }
          }

LABEL_20:

          ++v20;
          graphLayerList4 = [(MLCGraph *)self graphLayerList];
          v29 = [graphLayerList4 count];

          if (v20 >= v29)
          {
            goto LABEL_21;
          }
        }

        ++v19;
        fusedLayers = [v22 device];
        sourceTensors = [v22 sourceTensors];
        resultTensors = [v22 resultTensors];
        v27 = [resultTensors objectAtIndexedSubscript:0];
        [v22 compileForDevice:fusedLayers sourceTensors:sourceTensors resultTensor:v27];

LABEL_19:
        goto LABEL_20;
      }

LABEL_21:
      v30 = +[MLCLog execution];
      v9 = v30;
      if (v13 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v30))
      {
        *buf = 134349056;
        v34 = v19;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v9, OS_SIGNPOST_INTERVAL_END, spid, "RecompileInferenceGraph", "%{public,name=LayersRecompiled}lu", buf, 0xCu);
      }
    }

    else
    {
      v9 = +[MLCLog framework];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph recompileWithOptions:a2];
      }
    }
  }

  return v7;
}

- (BOOL)compileWithOptions:(MLCGraphCompilationOptions)options device:(MLCDevice *)device inputTensors:(NSDictionary *)inputTensors inputTensorsData:(NSDictionary *)inputTensorsData
{
  v188 = *MEMORY[0x277D85DE8];
  v10 = device;
  v11 = inputTensors;
  v12 = inputTensorsData;
  selfCopy = self;
  if ([(MLCGraph *)self readyForExecution])
  {
    v13 = +[MLCLog framework];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [MLCTrainingGraph compileWithOptions:a2 device:? inputTensors:? inputTensorsData:?];
    }

    v14 = 1;
    goto LABEL_140;
  }

  if (!v11 || v12)
  {
    v15 = v10;
    v16 = v15;
    if ([(MLCDevice *)v15 type]== MLCDeviceTypeANE)
    {
      v16 = +[MLCDevice cpuDevice];
    }

    v153 = v16;
    [(MLCGraph *)self setCompilerOptions:options];
    v17 = +[MLCLog execution];
    v18 = os_signpost_id_generate(v17);

    v19 = +[MLCLog execution];
    v20 = v19;
    spid = v18;
    v149 = v18 - 1;
    if (v18 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
    {
      v21 = objc_opt_class();
      v22 = NSStringFromClass(v21);
      *buf = 138543618;
      v183 = v22;
      v184 = 2050;
      v185 = options;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v20, OS_SIGNPOST_INTERVAL_BEGIN, spid, "CompileWithOptions", "%{public,name=Device}@ %{public,name=Options}llu", buf, 0x16u);
    }

    aSelector = a2;

    graphLayerList = [(MLCGraph *)self graphLayerList];
    v24 = [graphLayerList objectAtIndexedSubscript:0];
    device = [v24 device];

    if (!device)
    {
      [(MLCInferenceGraph *)selfCopy setInferenceNodeIndexInGraphLayerList:0];
    }

    if (v11 && v12)
    {
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v26 = v12;
      v27 = [(NSDictionary *)v26 countByEnumeratingWithState:&v162 objects:v179 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v163;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v163 != v29)
            {
              objc_enumerationMutation(v26);
            }

            aSelector = [(NSDictionary *)v11 objectForKeyedSubscript:*(*(&v162 + 1) + 8 * i), aSelector];
            [aSelector setComputeFlags:{objc_msgSend(aSelector, "computeFlags") | 2}];
          }

          v28 = [(NSDictionary *)v26 countByEnumeratingWithState:&v162 objects:v179 count:16];
        }

        while (v28);
      }

      [(MLCGraph *)selfCopy bindAndWriteData:v26 forInputs:v11 toDevice:v15 synchronous:1];
    }

    graphLayerList2 = [(MLCGraph *)selfCopy graphLayerList];
    v33 = [MLCDeviceGraph deviceGraphWithLayers:graphLayerList2 device:v15];
    v178 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v178 count:1];

    computeEngine = [(MLCDevice *)v15 computeEngine];
    LOBYTE(graphLayerList2) = objc_opt_respondsToSelector();

    if (graphLayerList2)
    {
      computeEngine2 = [(MLCDevice *)v15 computeEngine];
      v37 = [computeEngine2 partitionInferenceGraph:selfCopy startAtLayerIndex:-[MLCInferenceGraph inferenceNodeIndexInGraphLayerList](selfCopy aneDevice:"inferenceNodeIndexInGraphLayerList") secondaryDevice:{v15, v153}];

      v155 = v37;
    }

    else
    {
      v155 = v34;
    }

    inferenceNodeIndexInGraphLayerList = [(MLCInferenceGraph *)selfCopy inferenceNodeIndexInGraphLayerList];
    graphLayerList3 = [(MLCGraph *)selfCopy graphLayerList];
    v40 = [graphLayerList3 count];

    if (inferenceNodeIndexInGraphLayerList < v40)
    {
      do
      {
        graphLayerList4 = [(MLCGraph *)selfCopy graphLayerList];
        v42 = [graphLayerList4 objectAtIndexedSubscript:inferenceNodeIndexInGraphLayerList];

        if (([v42 skipLayer] & 1) == 0)
        {
          [v42 setCompileForInferenceOnly:1];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(MLCGraph *)selfCopy linkRelatedTensorsForConcatLayer:v42 device:v15];
          }
        }

        ++inferenceNodeIndexInGraphLayerList;
        graphLayerList5 = [(MLCGraph *)selfCopy graphLayerList];
        v44 = [graphLayerList5 count];
      }

      while (inferenceNodeIndexInGraphLayerList < v44);
    }

    v154 = v15;
    v150 = v12;
    v151 = v11;
    v152 = v10;
    v147 = (2 * (options & 1)) | options;
    if ((v147 & 6) == 0)
    {
      inferenceNodeIndexInGraphLayerList2 = [(MLCInferenceGraph *)selfCopy inferenceNodeIndexInGraphLayerList];
      v160 = selfCopy;
      v46 = v155;
      if ([v46 count] == 1)
      {
        v47 = inferenceNodeIndexInGraphLayerList2;
      }

      else
      {
        v47 = 0;
      }

      v48 = [MEMORY[0x277CBEBF8] mutableCopy];
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v49 = v46;
      v50 = [v49 countByEnumeratingWithState:&v174 objects:buf count:16];
      if (v50)
      {
        v51 = v50;
        v52 = *v175;
        v158 = *v175;
        v159 = v47;
        do
        {
          v53 = 0;
          v161 = v51;
          do
          {
            if (*v175 != v52)
            {
              objc_enumerationMutation(v49);
            }

            v54 = *(*(&v174 + 1) + 8 * v53);
            if ([v49 count] >= 2)
            {
              v55 = MEMORY[0x277CBEB98];
              graphLayerList6 = [v54 graphLayerList];
              v57 = [v55 setWithArray:graphLayerList6];

              v172 = 0u;
              v173 = 0u;
              v170 = 0u;
              v171 = 0u;
              graphLayerList7 = [(MLCGraph *)v160 graphLayerList];
              v59 = [graphLayerList7 countByEnumeratingWithState:&v170 objects:v181 count:16];
              if (v59)
              {
                v60 = v59;
                v61 = *v171;
                do
                {
                  for (j = 0; j != v60; ++j)
                  {
                    if (*v171 != v61)
                    {
                      objc_enumerationMutation(graphLayerList7);
                    }

                    v63 = *(*(&v170 + 1) + 8 * j);
                    if (([v63 skipLayer] & 1) == 0 && (objc_msgSend(v57, "containsObject:", v63) & 1) == 0)
                    {
                      [v48 addObject:v63];
                      [v63 setSkipLayer:1];
                    }
                  }

                  v60 = [graphLayerList7 countByEnumeratingWithState:&v170 objects:v181 count:16];
                }

                while (v60);
              }

              v52 = v158;
              v47 = v159;
              v51 = v161;
            }

            device2 = [v54 device];
            computeEngine3 = [device2 computeEngine];
            graphLayerList8 = [v54 graphLayerList];
            [computeEngine3 fuseLayersForInferenceGraph:graphLayerList8 startAtLayerIndex:v47];

            if ([v49 count] >= 2)
            {
              v168 = 0u;
              v169 = 0u;
              v166 = 0u;
              v167 = 0u;
              v67 = v48;
              v68 = [v67 countByEnumeratingWithState:&v166 objects:v180 count:16];
              if (v68)
              {
                v69 = v68;
                v70 = *v167;
                do
                {
                  for (k = 0; k != v69; ++k)
                  {
                    if (*v167 != v70)
                    {
                      objc_enumerationMutation(v67);
                    }

                    [*(*(&v166 + 1) + 8 * k) setSkipLayer:0];
                  }

                  v69 = [v67 countByEnumeratingWithState:&v166 objects:v180 count:16];
                }

                while (v69);
              }

              [v67 removeAllObjects];
            }

            ++v53;
          }

          while (v53 != v51);
          v51 = [v49 countByEnumeratingWithState:&v174 objects:buf count:16];
        }

        while (v51);
      }
    }

    v72 = selfCopy;
    inferenceNodeIndexInGraphLayerList3 = [(MLCInferenceGraph *)selfCopy inferenceNodeIndexInGraphLayerList];
    graphLayerList9 = [(MLCGraph *)selfCopy graphLayerList];
    v75 = [graphLayerList9 count];

    v76 = v155;
    if (inferenceNodeIndexInGraphLayerList3 < v75)
    {
      do
      {
        graphLayerList10 = [(MLCGraph *)v72 graphLayerList];
        v78 = [graphLayerList10 objectAtIndexedSubscript:inferenceNodeIndexInGraphLayerList3];

        if (options)
        {
          [v78 setIsDebuggingEnabled:1];
        }

        if (([v78 skipLayer]& 1) != 0)
        {
          goto LABEL_99;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:inferenceNodeIndexInGraphLayerList3];
          lstmLayerIndexList = [(MLCGraph *)selfCopy lstmLayerIndexList];
          lstmLayerIndexList2 = [(MLCGraph *)selfCopy lstmLayerIndexList];
          [lstmLayerIndexList setObject:v79 atIndexedSubscript:{objc_msgSend(lstmLayerIndexList2, "count")}];
        }

        if ([(MLCDevice *)v154 type])
        {
          deviceOps = [v78 deviceOps];
          v83 = [deviceOps count];

          if (!v83)
          {
            resultTensors = [v78 resultTensors];
            v85 = [resultTensors count];

            if (v85)
            {
              v86 = 0;
              do
              {
                resultTensors2 = [v78 resultTensors];
                v88 = [resultTensors2 objectAtIndexedSubscript:v86];
                deviceMemory = [v88 deviceMemory];
                v90 = [deviceMemory count];

                if (v90)
                {
                  resultTensors3 = [v78 resultTensors];
                  v92 = [resultTensors3 objectAtIndexedSubscript:v86];
                  deviceMemory2 = [v92 deviceMemory];
                  [deviceMemory2 removeAllObjects];
                }

                ++v86;
                resultTensors4 = [v78 resultTensors];
                v95 = [resultTensors4 count];
              }

              while (v86 < v95);
            }
          }
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v133 = +[MLCLog framework];
          v13 = v153;
          v76 = v155;
          if (os_log_type_enabled(v133, OS_LOG_TYPE_ERROR))
          {
            [MLCTrainingGraph compileWithOptions:? device:? inputTensors:? inputTensorsData:?];
          }

          v134 = +[MLCLog execution];
          v135 = v134;
          v11 = v151;
          v10 = v152;
          if (v149 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v134))
          {
            *buf = 0;
            goto LABEL_128;
          }

LABEL_129:

          goto LABEL_130;
        }

        deviceOps2 = [v78 deviceOps];
        v97 = [deviceOps2 count];

        v76 = v155;
        if (v97)
        {
          device3 = [v78 device];
          v99 = [device3 isEqual:v154];

          if ((v99 & 1) == 0)
          {
            v136 = +[MLCLog framework];
            if (os_log_type_enabled(v136, OS_LOG_TYPE_ERROR))
            {
              [MLCInferenceGraph compileWithOptions:device:inputTensors:inputTensorsData:];
            }

            v137 = +[MLCLog execution];
            v135 = v137;
            v11 = v151;
            v10 = v152;
            v13 = v153;
            if (v149 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v137))
            {
              *buf = 0;
LABEL_128:
              _os_signpost_emit_with_name_impl(&dword_238C1D000, v135, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
            }

            goto LABEL_129;
          }

          [v78 setDevice:v154];
        }

        v100 = v154;
        if (v154)
        {
          p_super = &v100->super;
          if ([(MLCDevice *)v100 type]== MLCDeviceTypeANE)
          {
            v102 = v153;

            p_super = v102;
          }

          if (!v97)
          {
LABEL_91:
            [v78 setCompileForInferenceOnly:1];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            sourceTensors = [v78 sourceTensors];
            resultTensors5 = [v78 resultTensors];
            v106 = resultTensors5;
            if (isKindOfClass)
            {
              v107 = [v78 compileForDevice:p_super sourceTensors:sourceTensors resultTensors:resultTensors5];

              if (!v107)
              {
                goto LABEL_131;
              }
            }

            else
            {
              v108 = [resultTensors5 objectAtIndexedSubscript:0];
              v109 = [v78 compileForDevice:p_super sourceTensors:sourceTensors resultTensor:v108];

              if ((v109 & 1) == 0)
              {
LABEL_131:
                v138 = +[MLCLog framework];
                if (os_log_type_enabled(v138, OS_LOG_TYPE_ERROR))
                {
                  [MLCTrainingGraph compileWithOptions:device:inputTensors:inputTensorsData:];
                }

                v139 = +[MLCLog execution];
                v140 = v139;
                v11 = v151;
                v10 = v152;
                v76 = v155;
                if (v149 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v139))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_238C1D000, v140, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
                }

                goto LABEL_137;
              }
            }

            resultTensors6 = [v78 resultTensors];
            v111 = [resultTensors6 count];

            if (v111)
            {
              v112 = 0;
              do
              {
                resultTensors7 = [v78 resultTensors];
                v114 = [resultTensors7 objectAtIndexedSubscript:v112];
                [v114 setDevice:p_super];

                ++v112;
                resultTensors8 = [v78 resultTensors];
                v116 = [resultTensors8 count];
              }

              while (v112 < v116);
            }
          }
        }

        else
        {
          p_super = 0;
          if (!v97)
          {
            goto LABEL_91;
          }
        }

        v76 = v155;
LABEL_99:

        ++inferenceNodeIndexInGraphLayerList3;
        v72 = selfCopy;
        graphLayerList11 = [(MLCGraph *)selfCopy graphLayerList];
        v118 = [graphLayerList11 count];
      }

      while (inferenceNodeIndexInGraphLayerList3 < v118);
    }

    computeEngine4 = [(MLCDevice *)v154 computeEngine];
    v120 = objc_opt_respondsToSelector();

    if ((v120 & 1) != 0 && (-[MLCDevice computeEngine](v154, "computeEngine"), v121 = objc_claimAutoreleasedReturnValue(), v122 = [v121 postProcessCompiledGraph:v72 compilerOptions:v147], v121, (v122 & 1) == 0))
    {
      v131 = +[MLCLog framework];
      v11 = v151;
      v10 = v152;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_ERROR))
      {
        v142 = NSStringFromSelector(aSelectora);
        computeEngine5 = [(MLCDevice *)v154 computeEngine];
        v144 = [computeEngine5 description];
        *buf = 138412802;
        v183 = v142;
        v184 = 2112;
        v185 = v72;
        v186 = 2112;
        v187 = v144;
        _os_log_error_impl(&dword_238C1D000, v131, OS_LOG_TYPE_ERROR, "%@: failed to post process the compiled graph=%@ on device=%@", buf, 0x20u);

        v76 = v155;
      }

      v132 = +[MLCLog execution];
      v78 = v132;
      if (v149 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v153;
        if (os_signpost_enabled(v132))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v78, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
        }

LABEL_130:
        v14 = 0;
        goto LABEL_139;
      }

LABEL_137:
      v14 = 0;
    }

    else
    {
      [(MLCGraph *)v72 setReadyForExecution:1];
      [(MLCGraph *)v72 setDevice:v154];
      [(MLCGraph *)v72 setAllocateDeviceMemoryForTensorsInGraph:[(MLCDevice *)v154 type]!= MLCDeviceTypeANE];
      computeEngine6 = [(MLCDevice *)v154 computeEngine];
      v124 = objc_opt_respondsToSelector();

      v11 = v151;
      v10 = v152;
      if (v124)
      {
        computeEngine7 = [(MLCDevice *)v154 computeEngine];
        graphLayerList12 = [(MLCGraph *)v72 graphLayerList];
        [computeEngine7 allocateDeviceHeapForGraph:graphLayerList12 forInference:1];
      }

      if (([(MLCGraph *)v72 compilerOptions]& 4) != 0 || ![(MLCGraph *)v72 staticBatchSizeInGraph])
      {
        computeEngine8 = [(MLCDevice *)v154 computeEngine];
        v128 = objc_opt_respondsToSelector();

        if (v128)
        {
          computeEngine9 = [(MLCDevice *)v154 computeEngine];
          [computeEngine9 selectDevicesWithBatchSize:1];
        }
      }

      v130 = +[MLCLog execution];
      v78 = v130;
      if (v149 <= 0xFFFFFFFFFFFFFFFDLL)
      {
        v13 = v153;
        if (os_signpost_enabled(v130))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_238C1D000, v78, OS_SIGNPOST_INTERVAL_END, spid, "CompileWithOptions", "", buf, 2u);
        }

        v14 = 1;
        goto LABEL_139;
      }

      v14 = 1;
    }

    v13 = v153;
LABEL_139:

    v12 = v150;
    goto LABEL_140;
  }

  v13 = +[MLCLog framework];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [MLCTrainingGraph compileWithOptions:a2 device:? inputTensors:? inputTensorsData:?];
  }

  v14 = 0;
LABEL_140:

  return v14;
}

- (NSUInteger)deviceMemorySize
{
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v4 = [graphLayerList count];

  if (!v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  do
  {
    graphLayerList2 = [(MLCGraph *)self graphLayerList];
    v8 = [graphLayerList2 objectAtIndexedSubscript:v5];
    v6 += [v8 deviceMemorySizeForForward];

    ++v5;
    graphLayerList3 = [(MLCGraph *)self graphLayerList];
    v10 = [graphLayerList3 count];
  }

  while (v5 < v10);
  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v7 = [graphLayerList objectAtIndexedSubscript:0];
  v11.receiver = self;
  v11.super_class = MLCInferenceGraph;
  v8 = [(MLCGraph *)&v11 description];
  v9 = [v3 stringWithFormat:@"%@: { rootLayer=%@ : %@}", v5, v7, v8];

  return v9;
}

- (BOOL)addInputs:(NSDictionary *)inputs
{
  v4.receiver = self;
  v4.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v4 addInputs:inputs lossLabels:0 lossLabelWeights:0];
}

- (BOOL)addInputs:(id)inputs lossLabels:(id)labels
{
  v5.receiver = self;
  v5.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v5 addInputs:inputs lossLabels:labels lossLabelWeights:0];
}

- (BOOL)addInputs:(NSDictionary *)inputs lossLabels:(NSDictionary *)lossLabels lossLabelWeights:(NSDictionary *)lossLabelWeights
{
  v6.receiver = self;
  v6.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v6 addInputs:inputs lossLabels:lossLabels lossLabelWeights:lossLabelWeights];
}

- (BOOL)addOutputs:(NSDictionary *)outputs
{
  v4.receiver = self;
  v4.super_class = MLCInferenceGraph;
  return [(MLCGraph *)&v4 addOutputs:outputs];
}

- (BOOL)executeWithInputsData:(NSDictionary *)inputsData lossLabelsData:(NSDictionary *)lossLabelsData lossLabelWeightsData:(NSDictionary *)lossLabelWeightsData outputsData:(NSDictionary *)outputsData batchSize:(NSUInteger)batchSize options:(MLCExecutionOptions)options completionHandler:(MLCGraphCompletionHandler)completionHandler
{
  v355 = *MEMORY[0x277D85DE8];
  v15 = inputsData;
  v16 = lossLabelsData;
  v17 = options;
  v18 = v16;
  v19 = lossLabelWeightsData;
  v20 = outputsData;
  v21 = completionHandler;
  Current = 0.0;
  if ((v17 & 4) != 0)
  {
    Current = CFAbsoluteTimeGetCurrent();
  }

  if (!v21 && (v17 & 2) == 0)
  {
    v23 = +[MLCLog framework];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MLCInferenceGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
    }
  }

  graphLayerList = [(MLCGraph *)self graphLayerList];
  v25 = [graphLayerList count];

  if (v25)
  {
    allInputs = [(MLCGraph *)self allInputs];

    if (!allInputs)
    {
      v33 = +[MLCLog framework];
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"No inputs compiled in graph";
      goto LABEL_35;
    }

    allLossLabels = [(MLCGraph *)self allLossLabels];

    if (!allLossLabels && v18 && ![(NSDictionary *)v18 isEqualToDictionary:MEMORY[0x277CBEC10]])
    {
      v35 = +[MLCLog framework];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"No loss labels compiled in graph";
      goto LABEL_35;
    }

    allLossLabelWeights = [(MLCGraph *)self allLossLabelWeights];

    if (!allLossLabelWeights && v19 && ![(NSDictionary *)v19 isEqualToDictionary:MEMORY[0x277CBEC10]])
    {
      v36 = +[MLCLog framework];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:a2 lossLabelsData:? lossLabelWeightsData:? outputsData:? batchSize:? options:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"No loss label weights compiled in graph";
      goto LABEL_35;
    }

    if (![(MLCGraph *)self readyForExecution])
    {
      v34 = +[MLCLog framework];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"graph not ready for execution";
      goto LABEL_35;
    }

    staticBatchSizeInGraph = [(MLCGraph *)self staticBatchSizeInGraph];
    if (batchSize && !staticBatchSizeInGraph)
    {
      v30 = +[MLCLog framework];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"batchSize provided must be 0 since batch size changes in graph. we will use batch size specified with tensors for layers in graph";
      goto LABEL_35;
    }

    if (v20 && ![(MLCGraph *)self checkPageAlignmentAndSizeForOutputs:v20])
    {
      v73 = +[MLCLog framework];
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeForwardWithBatchSize:a2 options:? outputsData:? completionHandler:?];
      }

      v31 = NSStringFromSelector(a2);
      v32 = @"Outputs buffers must be page aligned and a multiple of page size";
      goto LABEL_35;
    }

    v323 = v17;
    aSelector = a2;
    v314 = v21;
    v327 = v20;
    v316 = v19;
    [(MLCGraph *)self updateLSTMLayersForVariableSequenceLengthInGraph:self withInputData:v15];
    graphLayerList2 = [(MLCGraph *)self graphLayerList];
    v41 = [graphLayerList2 count];

    graphLayerList3 = [(MLCGraph *)self graphLayerList];
    v43 = [graphLayerList3 count];

    v44 = 0;
    if (v43)
    {
      for (i = 0; i != v43; ++i)
      {
        graphLayerList4 = [(MLCGraph *)self graphLayerList];
        v47 = [graphLayerList4 objectAtIndexedSubscript:i];
        skipLayer = [v47 skipLayer];

        if (v44 <= i)
        {
          v49 = i;
        }

        else
        {
          v49 = v44;
        }

        if (v41 >= i)
        {
          v50 = i;
        }

        else
        {
          v50 = v41;
        }

        if (!skipLayer)
        {
          v41 = v50;
          v44 = v49;
        }
      }
    }

    graphLayerList5 = [(MLCGraph *)self graphLayerList];
    v52 = [graphLayerList5 objectAtIndexedSubscript:v44];

    resultTensors = [v52 resultTensors];
    v332 = [resultTensors objectAtIndexedSubscript:0];

    v324 = v52;
    selfCopy = self;
    v313 = v18;
    if (v327)
    {
      v345 = 0u;
      v346 = 0u;
      v343 = 0u;
      v344 = 0u;
      v54 = v327;
      v55 = [(NSDictionary *)v54 countByEnumeratingWithState:&v343 objects:v354 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v344;
        while (2)
        {
          for (j = 0; j != v56; ++j)
          {
            if (*v344 != v57)
            {
              objc_enumerationMutation(v54);
            }

            v59 = *(*(&v343 + 1) + 8 * j);
            allOutputs = [(MLCGraph *)selfCopy allOutputs];
            v61 = [allOutputs objectForKeyedSubscript:v59];

            if (v61 == v332)
            {
              v315 = [(NSDictionary *)v54 objectForKeyedSubscript:v59];

              resultTensors2 = [v324 resultTensors];
              v325 = [resultTensors2 objectAtIndexedSubscript:0];
              v310 = 1;
              v18 = v313;
              self = selfCopy;
              goto LABEL_69;
            }
          }

          v56 = [(NSDictionary *)v54 countByEnumeratingWithState:&v343 objects:v354 count:16];
          self = selfCopy;
          if (v56)
          {
            continue;
          }

          break;
        }
      }

      v18 = v313;
      v52 = v324;
    }

    descriptor = [v332 descriptor];
    v63 = malloc_type_malloc([descriptor tensorAllocationSizeInBytes], 0xC28EC5CEuLL);

    descriptor2 = [v332 descriptor];
    resultTensors2 = +[MLCTensorData dataWithBytesNoCopy:length:freeWhenDone:](MLCTensorData, "dataWithBytesNoCopy:length:freeWhenDone:", v63, [descriptor2 tensorAllocationSizeInBytes], 1);

    descriptor3 = [v332 descriptor];
    v67 = [MLCTensor tensorWithDescriptor:descriptor3 data:resultTensors2];
    [v67 setComputeFlags:1];
    device = [v52 device];
    v325 = v67;
    [v67 setDevice:device];

    device2 = [v52 device];
    LODWORD(v67) = [device2 type];

    if (v67 == 3)
    {
      device3 = [v52 device];
      computeEngine = [device3 computeEngine];
      resultTensors3 = [v52 resultTensors];
      v72 = [resultTensors3 objectAtIndexedSubscript:0];
      [computeEngine shareDeviceMemoryWithResultTensor:v325 sourceTensor:v72];
    }

    v315 = 0;
    v310 = 0;
LABEL_69:

    v74 = v323;
    if ((v323 & 4) != 0)
    {
      *buf = Current;
      *&buf[16] = 0;
      *&buf[8] = 0;
      v318 = [MEMORY[0x277CBEA90] dataWithBytes:buf length:24];
      v75 = +[MLCLog execution];
      spid = os_signpost_id_generate(v75);
    }

    else
    {
      v318 = 0;
      spid = 0;
    }

    if (v323)
    {
      v91 = spid - 1;
LABEL_86:
      v92 = +[MLCLog execution];
      v93 = v92;
      v308 = v91;
      if (v91 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v92))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v93, OS_SIGNPOST_INTERVAL_BEGIN, spid, "ExecuteForward", "", buf, 2u);
      }

      device4 = [(MLCGraph *)self device];
      v95 = [device4 type] == 0;

      v96 = 0;
      v97 = spid;
      if ((v95 & (v74 >> 4)) == 0)
      {
        v97 = 0;
      }

      v309 = v97;
      v98 = 0x278A68000uLL;
      if (v41 < v44 + 1)
      {
        v99 = 0;
        v100 = v97 - 1;
        v330 = v44;
        v306 = v15;
        v311 = v97 - 1;
        while (1)
        {
          graphLayerList6 = [(MLCGraph *)self graphLayerList];
          v102 = [graphLayerList6 objectAtIndexedSubscript:v41];

          execution = [*(v98 + 3024) execution];
          v104 = execution;
          if (v100 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution))
          {
            v105 = objc_opt_class();
            v106 = NSStringFromClass(v105);
            layerID = [v102 layerID];
            *buf = 138543618;
            *&buf[4] = v106;
            *&buf[12] = 2050;
            *&buf[14] = layerID;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v104, OS_SIGNPOST_INTERVAL_BEGIN, v309, "ExecuteForward -- PerLayer", "%{public,name=MLCLayerType}@ %{public,name=LayerID}lu", buf, 0x16u);
          }

          if ([v102 skipLayer])
          {
            v98 = 0x278A68000uLL;
            v108 = +[MLCLog execution];
            v109 = v108;
            if (v311 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v108))
            {
              *buf = 0;
              _os_signpost_emit_with_name_impl(&dword_238C1D000, v109, OS_SIGNPOST_INTERVAL_END, v309, "ExecuteForward -- PerLayer", "", buf, 2u);
            }

            goto LABEL_193;
          }

          if (v41 == v44)
          {
            v307 = v325;
          }

          else
          {
            resultTensors4 = [v102 resultTensors];
            v307 = [resultTensors4 objectAtIndexedSubscript:0];
          }

          device5 = [v102 device];

          v111 = [MEMORY[0x277CBEBF8] mutableCopy];
          sourceTensors = [v102 sourceTensors];
          v113 = [sourceTensors count];

          if (v113)
          {
            v114 = 0;
            do
            {
              sourceTensors2 = [v102 sourceTensors];
              v116 = [sourceTensors2 objectAtIndexedSubscript:v114];

              [v111 setObject:v116 atIndexedSubscript:v114];
              ++v114;
              sourceTensors3 = [v102 sourceTensors];
              v118 = [sourceTensors3 count];
            }

            while (v114 < v118);
          }

          v341 = 0u;
          v342 = 0u;
          v339 = 0u;
          v340 = 0u;
          obj = v111;
          v119 = [obj countByEnumeratingWithState:&v339 objects:v353 count:16];
          if (v119)
          {
            v120 = v119;
            v121 = *v340;
            while (2)
            {
              for (k = 0; k != v120; ++k)
              {
                if (*v340 != v121)
                {
                  objc_enumerationMutation(obj);
                }

                v123 = *(*(&v339 + 1) + 8 * k);
                device6 = [v123 device];
                device7 = [v102 device];

                if (device6 != device7)
                {
                  device8 = [v102 device];
                  computeEngine2 = [device8 computeEngine];
                  device9 = [v123 device];
                  v129 = [computeEngine2 transferTensor:v123 fromDevice:device9];

                  if ((v129 & 1) == 0)
                  {
                    v334 = v102;
                    v268 = +[MLCLog framework];
                    if (os_log_type_enabled(v268, OS_LOG_TYPE_ERROR))
                    {
                      v296 = NSStringFromSelector(aSelector);
                      device10 = [v123 device];
                      device11 = [v102 device];
                      *buf = 138413058;
                      *&buf[4] = v296;
                      *&buf[12] = 2112;
                      *&buf[14] = v123;
                      *&buf[22] = 2112;
                      v350 = device10;
                      v351 = 2112;
                      v352 = device11;
                      _os_log_error_impl(&dword_238C1D000, v268, OS_LOG_TYPE_ERROR, "%@: Unable to transfer data of a tensor = %@ from device = %@ to device = %@", buf, 0x2Au);
                    }

                    v269 = +[MLCLog execution];
                    v270 = v269;
                    v15 = v306;
                    v18 = v313;
                    v19 = v316;
                    if (v311 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v272 = obj;
                      v273 = obj;
                      v21 = v314;
                      v252 = v324;
                      v264 = v325;
                      freeResourceList = v307;
                    }

                    else
                    {
                      v21 = v314;
                      v252 = v324;
                      v264 = v325;
                      freeResourceList = v307;
                      v272 = obj;
                      if (os_signpost_enabled(v269))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_238C1D000, v270, OS_SIGNPOST_INTERVAL_END, v309, "ExecuteForward -- PerLayer", "", buf, 2u);
                      }

                      v273 = obj;
                    }

LABEL_285:

                    v38 = 0;
                    v20 = v327;
                    goto LABEL_286;
                  }

                  device12 = [v102 device];
                  [v123 setDevice:device12];

                  v44 = v330;
                }
              }

              v120 = [obj countByEnumeratingWithState:&v339 objects:v353 count:16];
              if (v120)
              {
                continue;
              }

              break;
            }
          }

          v337 = 0u;
          v338 = 0u;
          v335 = 0u;
          v336 = 0u;
          resultTensors5 = [v102 resultTensors];
          v132 = [resultTensors5 countByEnumeratingWithState:&v335 objects:v348 count:16];
          if (v132)
          {
            v133 = v132;
            v134 = *v336;
            v319 = resultTensors5;
            while (2)
            {
              for (m = 0; m != v133; ++m)
              {
                if (*v336 != v134)
                {
                  objc_enumerationMutation(v319);
                }

                v136 = *(*(&v335 + 1) + 8 * m);
                device13 = [v136 device];
                [v102 device];
                v139 = v138 = v102;

                if (device13 != v139)
                {
                  device14 = [v138 device];
                  computeEngine3 = [device14 computeEngine];
                  v142 = [computeEngine3 updateDeviceMemoryForTensor:v136];

                  if ((v142 & 1) == 0)
                  {
                    v334 = v138;
                    v276 = +[MLCLog execution];
                    v270 = v276;
                    if (v311 > 0xFFFFFFFFFFFFFFFDLL)
                    {
                      v15 = v306;
                      freeResourceList = v307;
                      v18 = v313;
                      v21 = v314;
                      v19 = v316;
                      v252 = v324;
                      v264 = v325;
                      v272 = obj;
                    }

                    else
                    {
                      v15 = v306;
                      freeResourceList = v307;
                      v18 = v313;
                      v21 = v314;
                      v19 = v316;
                      v252 = v324;
                      v264 = v325;
                      v272 = obj;
                      if (os_signpost_enabled(v276))
                      {
                        *buf = 0;
                        _os_signpost_emit_with_name_impl(&dword_238C1D000, v270, OS_SIGNPOST_INTERVAL_END, v309, "ExecuteForward -- PerLayer", "", buf, 2u);
                      }
                    }

                    v273 = v319;
                    goto LABEL_285;
                  }
                }

                device15 = [v138 device];
                [v136 setDevice:device15];

                v102 = v138;
              }

              resultTensors5 = v319;
              v133 = [v319 countByEnumeratingWithState:&v335 objects:v348 count:16];
              if (v133)
              {
                continue;
              }

              break;
            }
          }

          [v102 setBatchSize:batchSize];
          computeEngine4 = [device5 computeEngine];
          v145 = objc_opt_respondsToSelector();

          if (v145)
          {
            computeEngine5 = [device5 computeEngine];
            deviceOps = [v102 deviceOps];
            [computeEngine5 dispatchForwardLayer:deviceOps];

            v148 = +[MLCLog execution];
            v149 = v148;
            v15 = v306;
            v18 = v313;
            self = selfCopy;
            if (v311 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v148))
            {
              v150 = objc_opt_class();
              v151 = NSStringFromClass(v150);
              layerID2 = [v102 layerID];
              [v102 label];
              v154 = v153 = v102;
              *buf = 138543874;
              *&buf[4] = v151;
              *&buf[12] = 2050;
              *&buf[14] = layerID2;
              *&buf[22] = 2114;
              v350 = v154;
              _os_signpost_emit_with_name_impl(&dword_238C1D000, v149, OS_SIGNPOST_INTERVAL_END, v309, "ExecuteForward -- PerLayer", "%{public,name=MLCLayerType}@ (%{public,name=LayerID}lu, %{public,name=MLCLayerName}@)", buf, 0x20u);

              v102 = v153;
              v44 = v330;
            }

            goto LABEL_190;
          }

          objc_opt_class();
          v15 = v306;
          v18 = v313;
          self = selfCopy;
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if ([(MLCGraph *)selfCopy allocateDeviceMemoryForTensorsInGraph])
            {
              if ([v102 compileForInferenceOnly])
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  [(MLCGraph *)selfCopy allocateDeviceMemoryForTensor:v307 device:device5];
                  resultTensors6 = [v102 resultTensors];
                  v161 = [resultTensors6 count];

                  if (v161 >= 2)
                  {
                    v162 = 1;
                    do
                    {
                      resultTensors7 = [v102 resultTensors];
                      v164 = [resultTensors7 objectAtIndexedSubscript:v162];
                      [(MLCGraph *)selfCopy allocateDeviceMemoryForTensor:v164 device:device5];

                      ++v162;
                      resultTensors8 = [v102 resultTensors];
                      v166 = [resultTensors8 count];
                    }

                    while (v162 < v166);
                  }
                }
              }

              [(MLCGraph *)selfCopy updateDeviceMemoryReadCountForTensor:v307];
              resultTensors9 = [v102 resultTensors];
              v168 = [resultTensors9 count];

              if (v168 >= 2)
              {
                v169 = 1;
                do
                {
                  resultTensors10 = [v102 resultTensors];
                  v171 = [resultTensors10 objectAtIndexedSubscript:v169];
                  [(MLCGraph *)selfCopy updateDeviceMemoryReadCountForTensor:v171];

                  ++v169;
                  resultTensors11 = [v102 resultTensors];
                  v173 = [resultTensors11 count];
                }

                while (v169 < v173);
              }
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine6 = [device5 computeEngine];
              deviceOps2 = [v102 deviceOps];
              v175 = [obj objectAtIndexedSubscript:0];
              v176 = 0;
              binaryOperation = [v102 binaryOperation];
              if (binaryOperation)
              {
                v176 = [obj objectAtIndexedSubscript:1];
                v303 = v176;
              }

              if ([obj count] == 3)
              {
                [obj objectAtIndexedSubscript:2];
                v302 = v175;
                v178 = v177 = deviceOps2;
                LOBYTE(v299) = 0;
                computeEngine7 = computeEngine6;
                [computeEngine6 dispatchForwardLayer:v177 sourceTensor:v302 secondaryTensor:v176 tertiaryTensor:v178 resultTensor:v307 resultStateIsTemporary:0 forTraining:v299];

                deviceOps2 = v177;
                v175 = v302;
              }

              else
              {
                LOBYTE(v299) = 0;
                computeEngine7 = computeEngine6;
                [computeEngine6 dispatchForwardLayer:deviceOps2 sourceTensor:v175 secondaryTensor:v176 tertiaryTensor:0 resultTensor:v307 resultStateIsTemporary:0 forTraining:v299];
              }

              if (binaryOperation)
              {
              }

              goto LABEL_181;
            }

            objc_opt_class();
            v183 = obj;
            if (objc_opt_isKindOfClass())
            {
              v321 = [MEMORY[0x277CBEBF8] mutableCopy];
              [v321 setObject:v307 atIndexedSubscript:0];
              sourceTensors4 = [v102 sourceTensors];
              if ([sourceTensors4 count] == 3)
              {

                goto LABEL_166;
              }

              sourceTensors5 = [v102 sourceTensors];
              v186 = [sourceTensors5 count];

              v187 = v186 == 4;
              v183 = obj;
              if (v187)
              {
LABEL_166:
                sourceTensors6 = [v102 sourceTensors];
                v189 = [sourceTensors6 objectAtIndexedSubscript:1];
                [v183 setObject:v189 atIndexedSubscript:1];

                sourceTensors7 = [v102 sourceTensors];
                v191 = [sourceTensors7 objectAtIndexedSubscript:2];
                [v183 setObject:v191 atIndexedSubscript:2];
              }

              resultTensors12 = [v102 resultTensors];
              v193 = [resultTensors12 count];

              if (v193 == 3)
              {
                resultTensors13 = [v102 resultTensors];
                v195 = [resultTensors13 objectAtIndexedSubscript:1];
                [v321 setObject:v195 atIndexedSubscript:1];

                resultTensors14 = [v102 resultTensors];
                v197 = [resultTensors14 objectAtIndexedSubscript:2];
                [v321 setObject:v197 atIndexedSubscript:2];
              }

              deviceOps2 = [device5 computeEngine];
              deviceOps3 = [v102 deviceOps];
              [deviceOps2 dispatchRNNForwardLayer:deviceOps3 sourceTensors:obj resultTensors:v321];

              computeEngine7 = v321;
LABEL_181:

LABEL_182:
              if (([v102 isDebuggingEnabled] & 1) == 0 && -[MLCGraph allocateDeviceMemoryForTensorsInGraph](self, "allocateDeviceMemoryForTensorsInGraph") && objc_msgSend(obj, "count"))
              {
                v207 = 0;
                do
                {
                  v208 = [obj objectAtIndexedSubscript:v207];
                  [(MLCGraph *)self freeDeviceMemoryForTensorIfSafe:v208 device:device5];

                  ++v207;
                }

                while (v207 < [obj count]);
              }

              v209 = +[MLCLog execution];
              v149 = v209;
              if (v311 <= 0xFFFFFFFFFFFFFFFDLL)
              {
                v99 = device5;
                v109 = v307;
                if (os_signpost_enabled(v209))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_238C1D000, v149, OS_SIGNPOST_INTERVAL_END, v309, "ExecuteForward -- PerLayer", "", buf, 2u);
                }

                goto LABEL_191;
              }

LABEL_190:
              v99 = device5;
              v109 = v307;
              goto LABEL_191;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine7 = [device5 computeEngine];
              deviceOps2 = [v102 deviceOps];
              [computeEngine7 dispatchForwardMHALayer:deviceOps2 sourceTensors:obj resultTensor:v307 resultStateIsTemporary:0 forTraining:0];
              goto LABEL_181;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine7 = [device5 computeEngine];
              deviceOps2 = [v102 deviceOps];
              [computeEngine7 dispatchForwardMatMulLayer:deviceOps2 sourceTensors:obj resultTensor:v307];
LABEL_180:
              v15 = v306;
              v18 = v313;
              v44 = v330;
              self = selfCopy;
              goto LABEL_181;
            }

            objc_opt_class();
            v199 = v102;
            if (objc_opt_isKindOfClass())
            {
              computeEngine8 = [device5 computeEngine];
              deviceOps4 = [v102 deviceOps];
              v202 = [obj objectAtIndexedSubscript:0];
              [computeEngine8 dispatchForwardSliceLayer:deviceOps4 sourceTensor:v202 resultTensor:v307 forTraining:0];
LABEL_174:

              computeEngine7 = computeEngine8;
              deviceOps2 = deviceOps4;
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine9 = [device5 computeEngine];
              deviceOps5 = [v102 deviceOps];
              weights = [obj objectAtIndexedSubscript:0];
              resultTensors15 = [v102 resultTensors];
              [computeEngine9 dispatchForwardSplitLayer:deviceOps5 sourceTensor:weights resultTensors:resultTensors15];
LABEL_179:

              computeEngine7 = computeEngine9;
              deviceOps2 = deviceOps5;
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine9 = [device5 computeEngine];
              deviceOps5 = [v102 deviceOps];
              weights = [v102 weights];
              resultTensors15 = [obj objectAtIndexedSubscript:0];
              [computeEngine9 dispatchForwardEmbeddingLayer:deviceOps5 weight:weights sourceTensor:resultTensors15 resultTensor:v307];
              goto LABEL_179;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine10 = [device5 computeEngine];
              deviceOps6 = [v102 deviceOps];
              v212 = [obj objectAtIndexedSubscript:0];
              [computeEngine10 dispatchForwardReshapeLayer:deviceOps6 sourceTensor:v212 resultTensor:v307 resultStateIsTemporary:1 forTraining:0];

              sharedMemoryTensor = [v307 sharedMemoryTensor];

              if (!sharedMemoryTensor)
              {
                v15 = v306;
                v18 = v313;
                v44 = v330;
                self = selfCopy;
                v102 = v199;
                goto LABEL_182;
              }

              sharedMemoryTensor2 = [v307 sharedMemoryTensor];
              childLayers = [v307 childLayers];
              v214 = [childLayers count];
              if (v214)
              {
                childLayers2 = [v307 childLayers];
                v215 = [childLayers2 count];
              }

              else
              {
                v215 = 1;
              }

              [sharedMemoryTensor2 setReadCount:{objc_msgSend(sharedMemoryTensor2, "readCount") + v215}];
              if (v214)
              {
              }

LABEL_215:
              v15 = v306;
              v18 = v313;
              v44 = v330;
              self = selfCopy;
              v102 = v199;
              computeEngine7 = sharedMemoryTensor2;
              deviceOps2 = childLayers;
              goto LABEL_181;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              computeEngine7 = [device5 computeEngine];
              deviceOps2 = [v102 deviceOps];
              [computeEngine7 dispatchForwardConcatLayer:deviceOps2 sourceTensors:obj resultTensor:v307];
              goto LABEL_180;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v216 = v102;
              computeEngine13 = v102;
              computeEngine11 = [device5 computeEngine];
              deviceOps7 = [computeEngine13 deviceOps];
              v220 = [obj objectAtIndexedSubscript:0];
              reductionType = [computeEngine13 reductionType];
              dimensions = [computeEngine13 dimensions];
              v223 = reductionType;
              deviceOps2 = computeEngine11;
              [computeEngine11 dispatchForwardReduceLayer:deviceOps7 sourceTensor:v220 resultTensor:v307 reductionType:v223 reduceDimensions:dimensions forTraining:0];

              v102 = v216;
            }

            else
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v224 = v102;
                childLayers = [device5 computeEngine];
                sharedMemoryTensor2 = v224;
                deviceOps8 = [v224 deviceOps];
                v226 = [obj objectAtIndexedSubscript:0];
                v227 = [obj count];
                v228 = 0;
                if (v227 == 2)
                {
                  v228 = [obj objectAtIndexedSubscript:1];
                  v300 = v228;
                }

                [childLayers dispatchForwardCompareLayer:deviceOps8 sourceTensor:v226 secondaryTensor:v228 resultTensor:v307 compareOp:objc_msgSend(sharedMemoryTensor2 forTraining:{"operation"), 0}];
                if (v227 == 2)
                {
                }

                goto LABEL_215;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v229 = v102;
                computeEngine13 = v102;
                lossLabels = [computeEngine13 lossLabels];
                descriptor4 = [lossLabels descriptor];
                stride = [descriptor4 stride];
                v233 = [stride objectAtIndexedSubscript:0];
                v234 = [v233 unsignedIntegerValue] >> 2;

                computeEngine12 = [device5 computeEngine];
                deviceOps7 = [computeEngine13 deviceOps];
                v220 = [obj objectAtIndexedSubscript:0];
                lossLabels2 = [computeEngine13 lossLabels];
                weights2 = [computeEngine13 weights];
                LOWORD(v299) = 0;
                [computeEngine12 dispatchForwardLossLayer:deviceOps7 sourceTensor:v220 labelsTensor:lossLabels2 labelsTensorStride:v234 weightsTensor:weights2 resultTensor:v307 resultStateIsTemporary:v299 forTraining:?];

                v102 = v229;
                deviceOps2 = computeEngine12;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  computeEngine8 = [device5 computeEngine];
                  deviceOps4 = [v102 deviceOps];
                  v202 = [obj objectAtIndexedSubscript:0];
                  [computeEngine8 dispatchForwardFullyConnectedLayer:deviceOps4 sourceTensor:v202 resultTensor:v307 forTraining:0];
                  goto LABEL_174;
                }

                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    computeEngine7 = [device5 computeEngine];
                    deviceOps2 = [v102 deviceOps];
                    [computeEngine7 dispatchForwardScatterLayer:deviceOps2 sourceTensors:obj resultTensor:v307 forTraining:0];
                    goto LABEL_180;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    computeEngine7 = [device5 computeEngine];
                    deviceOps2 = [v102 deviceOps];
                    [computeEngine7 dispatchForwardGatherLayer:deviceOps2 sourceTensors:obj resultTensor:v307 forTraining:0];
                    goto LABEL_180;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    fusedLayers = [v102 fusedLayers];
                    if ([fusedLayers count])
                    {
                      fusedLayers2 = [v102 fusedLayers];
                      v244 = [fusedLayers2 objectAtIndexedSubscript:0];
                      objc_opt_class();
                      isKindOfClass = objc_opt_isKindOfClass();

                      if (isKindOfClass)
                      {
                        computeEngine7 = [device5 computeEngine];
                        v102 = v199;
                        deviceOps2 = [v199 deviceOps];
                        [computeEngine7 dispatchForwardFusedArithmeticLayerNormalizationLayer:deviceOps2 sourceTensors:obj resultTensor:v307 forTraining:0];
                        goto LABEL_180;
                      }
                    }

                    else
                    {
                    }
                  }

                  computeEngine8 = [device5 computeEngine];
                  v102 = v199;
                  deviceOps4 = [v199 deviceOps];
                  v202 = [obj objectAtIndexedSubscript:0];
                  [computeEngine8 dispatchForwardLayer:deviceOps4 sourceTensor:v202 resultTensor:v307 resultStateIsTemporary:0 forTraining:0];
                  goto LABEL_174;
                }

                computeEngine13 = [device5 computeEngine];
                v238 = v102;
                deviceOps9 = [v102 deviceOps];
                deviceOps7 = [obj objectAtIndexedSubscript:0];
                v220 = [obj objectAtIndexedSubscript:1];
                v347[0] = v220;
                v240 = [obj objectAtIndexedSubscript:2];
                v347[1] = v240;
                v241 = [MEMORY[0x277CBEA60] arrayWithObjects:v347 count:2];
                [computeEngine13 dispatchForwardSelectLayer:deviceOps9 conditionTensor:deviceOps7 sourceTensors:v241 resultTensor:v307 forTraining:0];

                v102 = v238;
                deviceOps2 = deviceOps9;
              }
            }

            computeEngine7 = computeEngine13;
            goto LABEL_180;
          }

          computeEngine14 = [device5 computeEngine];
          v156 = [computeEngine14 needToAllocateDeviceMemoryForTensor:?];

          if (v156)
          {
            break;
          }

          sharedMemoryTensor3 = [v307 sharedMemoryTensor];

          if (!sharedMemoryTensor3)
          {
            computeEngine15 = [device5 computeEngine];
            deviceOps10 = [v102 deviceOps];
            [computeEngine15 dispatchForwardConcatLayer:deviceOps10 sourceTensors:obj resultTensor:v307];
            goto LABEL_148;
          }

LABEL_149:
          v98 = 0x278A68000uLL;
          v181 = +[MLCLog execution];
          v182 = v181;
          if (v311 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v181))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v182, OS_SIGNPOST_INTERVAL_END, v309, "ExecuteForward -- PerLayer", "", buf, 2u);
          }

          v99 = device5;
          if ([(MLCGraph *)selfCopy allocateDeviceMemoryForTensorsInGraph])
          {
            v109 = v307;
            [(MLCGraph *)selfCopy updateDeviceMemoryReadCountForTensor:v307];
            v149 = [obj objectAtIndexedSubscript:0];
            [(MLCGraph *)selfCopy freeDeviceMemoryForTensorIfSafe:v149 device:device5];
LABEL_191:

            v98 = 0x278A68000;
            goto LABEL_192;
          }

          v109 = v307;
LABEL_192:

LABEL_193:
          v96 = v99;
          v187 = v41++ == v44;
          v100 = v309 - 1;
          if (v187)
          {
            goto LABEL_232;
          }
        }

        computeEngine15 = [device5 computeEngine];
        deviceOps10 = [v102 sourceTensors];
        v159 = [deviceOps10 objectAtIndexedSubscript:0];
        [computeEngine15 shareDeviceMemoryWithResultTensor:v307 sourceTensor:v159];

LABEL_148:
        goto LABEL_149;
      }

LABEL_232:
      device5 = v96;
      execution2 = [*(v98 + 3024) execution];
      v247 = execution2;
      if (v308 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(execution2))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_238C1D000, v247, OS_SIGNPOST_INTERVAL_END, spid, "ExecuteForward", "", buf, 2u);
      }

      device16 = [v325 device];
      computeEngine16 = [device16 computeEngine];
      [computeEngine16 synchronizeTensor:v325];

      device17 = [v325 device];
      computeEngine17 = [device17 computeEngine];
      v252 = v324;
      resultTensors16 = [v324 resultTensors];
      v254 = [resultTensors16 objectAtIndexedSubscript:0];
      [computeEngine17 shareDeviceMemoryWithResultTensor:v254 sourceTensor:v325];

      v19 = v316;
      v20 = v327;
      if (v310)
      {
        v255 = selfCopy;
        [(MLCGraph *)selfCopy dispatchReadsForMultipleTensorOutputs:v327 finalTensorInGraph:0 finalResultTensor:0 batchSize:batchSize];
        v21 = v314;
        v256 = v323;
        if (v314)
        {
          descriptor5 = [v325 descriptor];
          v334 = [MLCTensor tensorWithDescriptor:descriptor5 data:v315];
        }

        else
        {
          v334 = 0;
        }
      }

      else
      {
        resultTensors17 = [v324 resultTensors];
        v275 = [resultTensors17 objectAtIndexedSubscript:0];
        [(MLCGraph *)selfCopy dispatchReadsForMultipleTensorOutputs:v327 finalTensorInGraph:v275 finalResultTensor:v325 batchSize:batchSize];

        v21 = v314;
        v256 = v323;
        if (v314)
        {
          v334 = v325;
        }

        else
        {
          v334 = 0;
        }

        v255 = selfCopy;
      }

      if ((v256 & 2) != 0)
      {
        if ((executeWithInputsData_lossLabelsData_lossLabelWeightsData_outputsData_batchSize_options_completionHandler__warnedAlready_0 & 1) == 0)
        {
          v284 = +[MLCLog framework];
          if (os_log_type_enabled(v284, OS_LOG_TYPE_INFO))
          {
            v285 = NSStringFromSelector(aSelector);
            *buf = 138412290;
            *&buf[4] = v285;
            _os_log_impl(&dword_238C1D000, v284, OS_LOG_TYPE_INFO, "%@: Synchronous Execution requested", buf, 0xCu);
          }

          executeWithInputsData_lossLabelsData_lossLabelWeightsData_outputsData_batchSize_options_completionHandler__warnedAlready_0 = 1;
          v21 = v314;
        }

        device18 = [(MLCGraph *)v255 device];
        computeEngine18 = [device18 computeEngine];
        [computeEngine18 commitAndWaitForCompletion:v21 enableProfiling:(v323 >> 2) & 1 graphExecutionTime:v318 graphResultTensor:v334];
      }

      else
      {
        v288 = (v256 >> 2) & 1;
        device18 = [(MLCGraph *)v255 device];
        computeEngine18 = [device18 computeEngine];
        [computeEngine18 commitWithCompletionHandler:v21 enableProfiling:v288 graphExecutionTime:v318 graphResultTensor:v334];
      }

      [(MLCGraph *)v255 setAllocateDeviceMemoryForTensorsInGraph:0];
      freeResourceList = [(MLCGraph *)v255 freeResourceList];
      [freeResourceList removeAllObjects];
      v38 = 1;
      v264 = v325;
LABEL_286:

      v37 = device5;
      goto LABEL_38;
    }

    v76 = +[MLCLog execution];
    v77 = v76;
    v78 = spid - 1;
    if (spid - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v76))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_238C1D000, v77, OS_SIGNPOST_INTERVAL_BEGIN, spid, "BindData", "", buf, 2u);
    }

    v79 = (v323 >> 1) & 1;

    allInputs2 = [(MLCGraph *)self allInputs];
    device19 = [(MLCGraph *)self device];
    v82 = [(MLCGraph *)self bindAndWriteData:v15 forInputs:allInputs2 toDevice:device19 batchSize:batchSize synchronous:v79 skipWrite:0];

    if (v82)
    {
      if (v18 && ([(MLCGraph *)self allLossLabels], v83 = objc_claimAutoreleasedReturnValue(), [(MLCGraph *)self device], v84 = objc_claimAutoreleasedReturnValue(), v85 = [(MLCGraph *)self bindAndWriteData:v18 forInputs:v83 toDevice:v84 batchSize:batchSize synchronous:v79 skipWrite:0], v84, v83, !v85))
      {
        v277 = MEMORY[0x277CCACA8];
        allLossLabels2 = [(MLCGraph *)self allLossLabels];
        v278 = [v277 stringWithFormat:@"loss label name missing from loss labels specified at compile time allLossLabels=%@", allLossLabels2];

        v280 = +[MLCLog framework];
        if (os_log_type_enabled(v280, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v281 = NSStringFromSelector(aSelector);
        v334 = v278;
        v282 = [MLCErrors invalidInputErrorForMethod:v281 description:v278];

        v19 = v316;
        v20 = v327;
        v21 = v314;
        v264 = v325;
        if (v314)
        {
          v314[2](v314, 0, v282, 0.0);
        }

        v265 = v282;
        v283 = +[MLCLog execution];
        v267 = v283;
        if (v78 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v283))
        {
          goto LABEL_282;
        }
      }

      else
      {
        if (!v316 || ([(MLCGraph *)self allLossLabelWeights], v86 = objc_claimAutoreleasedReturnValue(), [(MLCGraph *)self device], v87 = objc_claimAutoreleasedReturnValue(), v88 = [(MLCGraph *)self bindAndWriteData:v316 forInputs:v86 toDevice:v87 batchSize:batchSize synchronous:v79 skipWrite:0], v87, v86, v88))
        {
          v89 = +[MLCLog execution];
          v90 = v89;
          v91 = spid - 1;
          if (v78 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v89))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_238C1D000, v90, OS_SIGNPOST_INTERVAL_END, spid, "BindData", "", buf, 2u);
          }

          v74 = v323;
          goto LABEL_86;
        }

        v289 = MEMORY[0x277CCACA8];
        allLossLabelWeights2 = [(MLCGraph *)self allLossLabelWeights];
        v290 = [v289 stringWithFormat:@"loss label weight name missing from loss label weights specified at compile time allLossLabelWeights=%@", allLossLabelWeights2];

        v292 = +[MLCLog framework];
        if (os_log_type_enabled(v292, OS_LOG_TYPE_ERROR))
        {
          [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
        }

        v293 = NSStringFromSelector(aSelector);
        v334 = v290;
        v294 = [MLCErrors invalidInputErrorForMethod:v293 description:v290];

        v19 = v316;
        v20 = v327;
        v21 = v314;
        v264 = v325;
        if (v314)
        {
          v314[2](v314, 0, v294, 0.0);
        }

        v265 = v294;
        v295 = +[MLCLog execution];
        v267 = v295;
        if (v78 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v295))
        {
LABEL_282:

          device5 = 0;
          v38 = 0;
          v252 = v324;
          freeResourceList = v265;
          goto LABEL_286;
        }
      }
    }

    else
    {
      v258 = MEMORY[0x277CCACA8];
      allInputs3 = [(MLCGraph *)self allInputs];
      v259 = [v258 stringWithFormat:@"input name missing from inputs specified at compile time allInputs=%@", allInputs3];

      v261 = +[MLCLog framework];
      if (os_log_type_enabled(v261, OS_LOG_TYPE_ERROR))
      {
        [MLCTrainingGraph executeWithInputsData:lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:];
      }

      v262 = NSStringFromSelector(aSelector);
      v334 = v259;
      v263 = [MLCErrors invalidInputErrorForMethod:v262 description:v259];

      v19 = v316;
      v20 = v327;
      v21 = v314;
      v264 = v325;
      if (v314)
      {
        v314[2](v314, 0, v263, 0.0);
      }

      v265 = v263;
      v266 = +[MLCLog execution];
      v267 = v266;
      if (v78 > 0xFFFFFFFFFFFFFFFDLL || !os_signpost_enabled(v266))
      {
        goto LABEL_282;
      }
    }

    *buf = 138543362;
    *&buf[4] = v334;
    _os_signpost_emit_with_name_impl(&dword_238C1D000, v267, OS_SIGNPOST_INTERVAL_END, spid, "BindData", "%{public,name=Error}@", buf, 0xCu);
    goto LABEL_282;
  }

  v31 = NSStringFromSelector(a2);
  v32 = @"Empty graph";
LABEL_35:
  v37 = [MLCErrors invalidStateErrorForMethod:v31 description:v32];

  if (v21)
  {
    v21[2](v21, 0, v37, 0.0);
  }

  v38 = 0;
LABEL_38:

  return v38;
}

- (id)resultTensorsForLayer:(id)layer
{
  layerCopy = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCInferenceGraph;
  v6 = [(MLCGraph *)&v8 resultTensorsForLayer:layerCopy graphLayerList:graphLayerList];

  return v6;
}

- (id)sourceTensorsForLayer:(id)layer
{
  layerCopy = layer;
  graphLayerList = [(MLCGraph *)self graphLayerList];
  v8.receiver = self;
  v8.super_class = MLCInferenceGraph;
  v6 = [(MLCGraph *)&v8 sourceTensorsForLayer:layerCopy graphLayerList:graphLayerList];

  return v6;
}

- (void)concatenateWithSources:(const char *)a1 dimension:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)concatenateWithSources:(const char *)a1 dimension:.cold.2(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)concatenateWithSources:(const char *)a1 dimension:.cold.3(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)compileWithOptions:device:inputTensors:inputTensorsData:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  v2 = NSStringFromSelector(v1);
  v8 = [v0 device];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)executeWithInputsData:(const char *)a1 lossLabelsData:lossLabelWeightsData:outputsData:batchSize:options:completionHandler:.cold.1(const char *a1)
{
  v1 = NSStringFromSelector(a1);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end