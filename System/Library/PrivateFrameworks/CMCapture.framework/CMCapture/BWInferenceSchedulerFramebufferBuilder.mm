@interface BWInferenceSchedulerFramebufferBuilder
- (BOOL)_validToDeriveFormat:(void *)format fromFormat:(uint64_t)fromFormat vendingProvider:;
- (BWInferenceSchedulerFramebufferBuilder)initWithInferenceRequirements:(id)requirements dependencyProvider:(id)provider formatProvider:(id)formatProvider processingConfiguration:(id)configuration;
- (id)_connectNodesExpectingInputs:(void *)inputs toNodesProvidingOutput:(void *)output dependencyProvider:(void *)provider nodeForExternalRequirement:;
- (id)_newScalingNodesForScalingRequirement:(unsigned int)requirement fencedMedia:(void *)media processingConfiguration:;
- (id)newFramebuffer;
- (void)_addScalingNodesForNodesExpectingInputs:(void *)inputs nodesProvidingOutput:(void *)output dependencyProvider:(void *)provider nodesForExternalRequirements:(void *)requirements fencedMediaKeys:(uint64_t)keys iterations:(void *)iterations processingConfiguration:;
- (void)_populateJobList:(void *)list fromGraphEdges:(uint64_t)edges withHeadNode:(void *)node jobTypes:;
- (void)_prepareToConnectNode:(uint64_t)node;
- (void)dealloc;
@end

@implementation BWInferenceSchedulerFramebufferBuilder

- (id)newFramebuffer
{
  if (!self->_graph || !self->_prototypeJobList)
  {
    return 0;
  }

  if (self->_didVendFramebuffer)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"%@ already returned a framebuffer. Multi-buffering is not yet supported", self), 0}]);
  }

  self->_didVendFramebuffer = 1;
  v3 = [BWInferenceSchedulerFramebuffer alloc];
  graph = self->_graph;
  prototypeJobList = self->_prototypeJobList;

  return [(BWInferenceSchedulerFramebuffer *)v3 initWithGraph:graph jobList:prototypeJobList];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWInferenceSchedulerFramebufferBuilder;
  [(BWInferenceSchedulerFramebufferBuilder *)&v3 dealloc];
}

- (BWInferenceSchedulerFramebufferBuilder)initWithInferenceRequirements:(id)requirements dependencyProvider:(id)provider formatProvider:(id)formatProvider processingConfiguration:(id)configuration
{
  v112.receiver = self;
  v112.super_class = BWInferenceSchedulerFramebufferBuilder;
  v10 = [(BWInferenceSchedulerFramebufferBuilder *)&v112 init];
  if (v10)
  {
    configurationCopy = configuration;
    v12 = [objc_msgSend(provider "allInputVideoDependencies")];
    v13 = [objc_msgSend(provider "allOutputVideoDependencies")];
    v10->_directedEdgesByNode = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:v13 + v12];
    bw_strongVideoRequirementToStrongObjectsMapTable = [MEMORY[0x1E696AD18] bw_strongVideoRequirementToStrongObjectsMapTable];
    bw_strongVideoRequirementToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] bw_strongVideoRequirementToStrongObjectsMapTable];
    v16 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:258 valueOptions:1282 capacity:{objc_msgSend(requirements, "count")}];
    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v18 = [[BWInferenceSchedulerGraphInputNode alloc] initWithVideoPropagatedToStorage:v17];
    v65 = v10;
    [(BWInferenceSchedulerFramebufferBuilder *)v10 _prepareToConnectNode:v18];
    v66 = v16;
    v71 = v18;
    [v16 setObject:1 forKey:v18];
    providerCopy = provider;
    v76 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    obj = [provider consumedVideoAttachedMediaKeys];
    v19 = [obj countByEnumeratingWithState:&v108 objects:v107 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v109;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v109 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v108 + 1) + 8 * i);
          v24 = [formatProvider inputInferenceVideoFormatForAttachedMediaKey:v23];
          if (!v24)
          {
            v25 = [formatProvider inputVideoFormatForAttachedMediaKey:v23];
            if (!v25)
            {
              goto LABEL_65;
            }

            [BWInferenceSchedulerFramebufferBuilder initWithInferenceRequirements:v23 dependencyProvider:@"PrimaryFormat" formatProvider:v25 processingConfiguration:&v113];
            v24 = v113;
          }

          v26 = [[BWInferenceVideoRequirement alloc] initWithAttachedMediaKey:v23 videoFormat:v24];
          [v17 addObject:v26];
          [bw_strongVideoRequirementToStrongObjectsMapTable setObject:v71 forKey:v26];

          if (([v76 containsObject:v23] & 1) == 0 && objc_msgSend(formatProvider, "intermediateResourceTrackingAllowedForAttachedMediaKey:", v23))
          {
            [v76 addObject:v23];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v108 objects:v107 count:16];
      }

      while (v20);
    }

    v63 = v17;
    v27 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v28 = [requirements countByEnumeratingWithState:&v103 objects:v102 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v104;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v104 != v30)
          {
            objc_enumerationMutation(requirements);
          }

          v32 = *(*(&v103 + 1) + 8 * j);
          v33 = [[BWInferenceSchedulerInference alloc] initWithInferenceRequirement:v32];
          [(BWInferenceSchedulerFramebufferBuilder *)v65 _prepareToConnectNode:v33];
          [v66 setObject:2 forKey:v33];
          [v27 setObject:v33 forKey:v32];
        }

        v29 = [requirements countByEnumeratingWithState:&v103 objects:v102 count:16];
      }

      while (v29);
    }

    v101 = 0u;
    v99 = 0u;
    v100 = 0u;
    v98 = 0u;
    v34 = providerCopy;
    allInputVideoDependencies = [providerCopy allInputVideoDependencies];
    v69 = [allInputVideoDependencies countByEnumeratingWithState:&v98 objects:v97 count:16];
    if (v69)
    {
      v68 = *v99;
      do
      {
        v35 = 0;
        do
        {
          if (*v99 != v68)
          {
            objc_enumerationMutation(allInputVideoDependencies);
          }

          obja = v35;
          v36 = *(*(&v98 + 1) + 8 * v35);
          v93 = 0u;
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v37 = [v34 dependenciesForInputVideoRequirement:v36];
          v38 = [v37 countByEnumeratingWithState:&v93 objects:v92 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v94;
            do
            {
              for (k = 0; k != v39; ++k)
              {
                if (*v94 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = [v27 objectForKey:{objc_msgSend(*(*(&v93 + 1) + 8 * k), "inferenceRequirement")}];
                v43 = [bw_strongVideoRequirementToStrongObjectsMapTable2 objectForKey:v36];
                if (!v43)
                {
                  v43 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                  [bw_strongVideoRequirementToStrongObjectsMapTable2 setObject:v43 forKey:v36];
                }

                [v43 addObject:v42];
              }

              v39 = [v37 countByEnumeratingWithState:&v93 objects:v92 count:16];
            }

            while (v39);
          }

          v34 = providerCopy;
          v35 = obja + 1;
        }

        while (obja + 1 != v69);
        v69 = [allInputVideoDependencies countByEnumeratingWithState:&v98 objects:v97 count:16];
      }

      while (v69);
    }

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    allOutputVideoDependencies = [v34 allOutputVideoDependencies];
    v44 = [allOutputVideoDependencies countByEnumeratingWithState:&v88 objects:v87 count:16];
    if (v44)
    {
      v45 = v44;
      objb = *v89;
      do
      {
        for (m = 0; m != v45; ++m)
        {
          if (*v89 != objb)
          {
            objc_enumerationMutation(allOutputVideoDependencies);
          }

          v47 = *(*(&v88 + 1) + 8 * m);
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v48 = [v34 dependenciesForOutputVideoRequirement:v47];
          v49 = [v48 countByEnumeratingWithState:&v83 objects:v82 count:16];
          if (v49)
          {
            v50 = v49;
            v51 = *v84;
            do
            {
              for (n = 0; n != v50; ++n)
              {
                if (*v84 != v51)
                {
                  objc_enumerationMutation(v48);
                }

                [bw_strongVideoRequirementToStrongObjectsMapTable setObject:objc_msgSend(v27 forKey:{"objectForKey:", objc_msgSend(*(*(&v83 + 1) + 8 * n), "inferenceRequirement")), v47}];
              }

              v50 = [v48 countByEnumeratingWithState:&v83 objects:v82 count:16];
            }

            while (v50);
          }

          v34 = providerCopy;
        }

        v45 = [allOutputVideoDependencies countByEnumeratingWithState:&v88 objects:v87 count:16];
      }

      while (v45);
    }

    v53 = [(BWInferenceSchedulerFramebufferBuilder *)&v65->super.isa _connectNodesExpectingInputs:bw_strongVideoRequirementToStrongObjectsMapTable2 toNodesProvidingOutput:bw_strongVideoRequirementToStrongObjectsMapTable dependencyProvider:v34 nodeForExternalRequirement:v27];
    v54 = -[BWInferenceSchedulerFramebufferBuilder _addScalingNodesForNodesExpectingInputs:nodesProvidingOutput:dependencyProvider:nodesForExternalRequirements:fencedMediaKeys:iterations:processingConfiguration:](v65, v53, [bw_strongVideoRequirementToStrongObjectsMapTable copy], v34, v27, v76, 15, configurationCopy);
    v17 = v63;
    if (v54)
    {
      v55 = v54;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      directedEdgesByNode = v65->_directedEdgesByNode;
      v57 = [(NSMapTable *)directedEdgesByNode countByEnumeratingWithState:&v78 objects:v77 count:16];
      if (v57)
      {
        v58 = v57;
        v59 = *v79;
        do
        {
          for (ii = 0; ii != v58; ++ii)
          {
            if (*v79 != v59)
            {
              objc_enumerationMutation(directedEdgesByNode);
            }

            v61 = *(*(&v78 + 1) + 8 * ii);
            if (![v66 objectForKey:v61])
            {
              [v66 setObject:3 forKey:v61];
            }
          }

          v58 = [(NSMapTable *)directedEdgesByNode countByEnumeratingWithState:&v78 objects:v77 count:16];
        }

        while (v58);
      }

      v17 = v63;
      if (![v55 count])
      {
        v65->_graph = [[BWInferenceSchedulerGraph alloc] initWithHeadNode:v71 directedEdges:v65->_directedEdgesByNode];
        v62 = [[BWInferenceSchedulerJobList alloc] initWithCapacity:v65->_jobCount];
        v65->_prototypeJobList = v62;
        [(BWInferenceSchedulerFramebufferBuilder *)v65 _populateJobList:v62 fromGraphEdges:v65->_directedEdgesByNode withHeadNode:v71 jobTypes:v66];
      }
    }

LABEL_65:

    return v65;
  }

  return v10;
}

- (void)_addScalingNodesForNodesExpectingInputs:(void *)inputs nodesProvidingOutput:(void *)output dependencyProvider:(void *)provider nodesForExternalRequirements:(void *)requirements fencedMediaKeys:(uint64_t)keys iterations:(void *)iterations processingConfiguration:
{
  if (!self)
  {
    return 0;
  }

  v10 = a2;
  if ([a2 count])
  {
    if (!keys)
    {
      return 0;
    }

    selfCopy = self;
    keysCopy = keys;
    providerCopy = provider;
    v13 = [v10 copy];
    obj = objc_alloc_init(MEMORY[0x1E695DF90]);
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v104 = 0u;
    v14 = [v10 countByEnumeratingWithState:&v101 objects:v100 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v102;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v102 != v16)
          {
            objc_enumerationMutation(v10);
          }

          v18 = *(*(&v101 + 1) + 8 * i);
          attachedMediaKey = [v18 attachedMediaKey];
          v20 = [obj objectForKeyedSubscript:attachedMediaKey];
          if (!v20)
          {
            goto LABEL_17;
          }

          videoFormat = [v20 videoFormat];
          videoFormat2 = [v18 videoFormat];
          width = [videoFormat2 width];
          if (width > [videoFormat width])
          {
            [obj setObject:v18 forKeyedSubscript:attachedMediaKey];
          }

          if (([iterations scalingStrategy] & 8) != 0)
          {
            width2 = [videoFormat2 width];
            if (width2 == [videoFormat width] && objc_msgSend(objc_msgSend(videoFormat2, "underlyingVideoFormat"), "pixelFormat") == 1111970369)
            {
LABEL_17:
              [obj setObject:v18 forKeyedSubscript:attachedMediaKey];
            }
          }
        }

        v15 = [v10 countByEnumeratingWithState:&v101 objects:v100 count:16];
      }

      while (v15);
    }

    v25 = [inputs copy];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v26 = selfCopy;
    v67 = [obj countByEnumeratingWithState:&v96 objects:v95 count:16];
    if (!v67)
    {
LABEL_71:
      v60 = [(BWInferenceSchedulerFramebufferBuilder *)v26 _connectNodesExpectingInputs:v13 toNodesProvidingOutput:inputs dependencyProvider:output nodeForExternalRequirement:providerCopy];

      return [(BWInferenceSchedulerFramebufferBuilder *)v26 _addScalingNodesForNodesExpectingInputs:v60 nodesProvidingOutput:inputs dependencyProvider:output nodesForExternalRequirements:providerCopy fencedMediaKeys:requirements iterations:keysCopy - 1 processingConfiguration:iterations];
    }

    v66 = *v97;
    v75 = v25;
LABEL_22:
    v27 = 0;
    while (1)
    {
      if (*v97 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v28 = [obj objectForKeyedSubscript:*(*(&v96 + 1) + 8 * v27)];
      videoFormat3 = [v28 videoFormat];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v30 = [v25 countByEnumeratingWithState:&v91 objects:v90 count:16];
      if (v30)
      {
        break;
      }

LABEL_50:
      if (++v27 == v67)
      {
        v59 = [obj countByEnumeratingWithState:&v96 objects:v95 count:16];
        v67 = v59;
        if (!v59)
        {
          goto LABEL_71;
        }

        goto LABEL_22;
      }
    }

    v31 = v30;
    v77 = videoFormat3;
    v68 = v27;
    v69 = v28;
    v32 = 0;
    v33 = *v92;
LABEL_27:
    v34 = 0;
    while (1)
    {
      v35 = v32;
      if (*v92 != v33)
      {
        objc_enumerationMutation(v25);
      }

      v32 = *(*(&v91 + 1) + 8 * v34);
      if (objc_msgSend_isEqualToString_([v32 attachedMediaKey]) && (v36 = objc_msgSend(v32, "videoFormat"), -[BWInferenceSchedulerFramebufferBuilder _validToDeriveFormat:fromFormat:vendingProvider:](v26, v77, v36, objc_msgSend(v25, "objectForKey:", v32))))
      {
        if (v35)
        {
          videoFormat4 = [v35 videoFormat];
          width3 = [v36 width];
          if (width3 >= [videoFormat4 width])
          {
            width4 = [v36 width];
            if (width4 != [videoFormat4 width])
            {
              goto LABEL_42;
            }

            v73 = videoFormat4;
            includesInvalidContent = [videoFormat4 includesInvalidContent];
            v25 = v75;
            if (includesInvalidContent != [v77 includesInvalidContent])
            {
              includesInvalidContent2 = [v36 includesInvalidContent];
              v42 = includesInvalidContent2 == [v77 includesInvalidContent];
              v26 = selfCopy;
              if (v42)
              {
                goto LABEL_32;
              }
            }

            includesInvalidContent3 = [v73 includesInvalidContent];
            if (includesInvalidContent3 == [v77 includesInvalidContent] && (v44 = objc_msgSend(v73, "pixelFormat"), v44 != objc_msgSend(v77, "pixelFormat")))
            {
              pixelFormat = [v36 pixelFormat];
              if (pixelFormat != [v77 pixelFormat])
              {
                v32 = v35;
              }
            }

            else
            {
LABEL_42:
              v32 = v35;
            }
          }

          v25 = v75;
          v26 = selfCopy;
        }
      }

      else
      {
        v32 = v35;
      }

LABEL_32:
      if (v31 == ++v34)
      {
        v46 = [v25 countByEnumeratingWithState:&v91 objects:v90 count:16];
        v31 = v46;
        if (!v46)
        {
          v27 = v68;
          if (v69 && v32)
          {
            if ([v69 isSatisfiedByRequirement:v32])
            {
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Creating scaling nodes to convert between two requirements that already satisfy one another: %@ and %@", v69, v32), 0}]);
            }

            v47 = [BWInferenceScalingRequirement alloc];
            v89 = v69;
            v48 = -[BWInferenceScalingRequirement initWithInputVideoRequirement:requestedOutputVideoRequirements:intermediatePixelBufferCompressionType:processingConfiguration:](v47, "initWithInputVideoRequirement:requestedOutputVideoRequirements:intermediatePixelBufferCompressionType:processingConfiguration:", v32, [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1], objc_msgSend(output, "supportedPixelBufferCompressionType"), iterations);
            v49 = -[BWInferenceSchedulerFramebufferBuilder _newScalingNodesForScalingRequirement:fencedMedia:processingConfiguration:](v26, v48, [requirements containsObject:{objc_msgSend(v32, "attachedMediaKey")}], iterations);

            v87 = 0u;
            v88 = 0u;
            v85 = 0u;
            v86 = 0u;
            v70 = v49;
            v78 = [v49 countByEnumeratingWithState:&v85 objects:v84 count:16];
            if (v78)
            {
              v74 = *v86;
              do
              {
                for (j = 0; j != v78; ++j)
                {
                  if (*v86 != v74)
                  {
                    objc_enumerationMutation(v70);
                  }

                  v51 = *(*(&v85 + 1) + 8 * j);
                  [(BWInferenceSchedulerFramebufferBuilder *)selfCopy _prepareToConnectNode:v51];
                  [inputs setObject:v51 forKey:{objc_msgSend(objc_msgSend(v51, "outputRequirements"), "firstObject")}];
                  v82 = 0u;
                  v83 = 0u;
                  v80 = 0u;
                  v81 = 0u;
                  inputVideoRequirements = [v51 inputVideoRequirements];
                  v53 = [inputVideoRequirements countByEnumeratingWithState:&v80 objects:v79 count:16];
                  if (v53)
                  {
                    v54 = v53;
                    v55 = *v81;
                    do
                    {
                      for (k = 0; k != v54; ++k)
                      {
                        if (*v81 != v55)
                        {
                          objc_enumerationMutation(inputVideoRequirements);
                        }

                        v57 = *(*(&v80 + 1) + 8 * k);
                        v58 = [v13 objectForKey:v57];
                        if (!v58)
                        {
                          v58 = objc_opt_new();
                        }

                        [v58 addObject:v51];
                        [v13 setObject:v58 forKey:v57];
                      }

                      v54 = [inputVideoRequirements countByEnumeratingWithState:&v80 objects:v79 count:16];
                    }

                    while (v54);
                  }
                }

                v78 = [v70 countByEnumeratingWithState:&v85 objects:v84 count:16];
              }

              while (v78);
            }

            v26 = selfCopy;
            v27 = v68;
          }

          goto LABEL_50;
        }

        goto LABEL_27;
      }
    }
  }

  return v10;
}

- (void)_prepareToConnectNode:(uint64_t)node
{
  if (node)
  {
    ++*(node + 24);
    v4 = [objc_alloc(MEMORY[0x1E696AE10]) initWithOptions:1024];
    [v4 setSizeFunction:BWInferenceSchedulerGraphDirectedEdgeSize];
    [v4 setRelinquishFunction:BWInferenceSchedulerGraphDirectedEdgeRelinquish];
    v5 = [objc_alloc(MEMORY[0x1E696AE08]) initWithPointerFunctions:v4];
    [*(node + 32) setObject:v5 forKey:a2];
  }
}

- (id)_connectNodesExpectingInputs:(void *)inputs toNodesProvidingOutput:(void *)output dependencyProvider:(void *)provider nodeForExternalRequirement:
{
  providerCopy = provider;
  v51 = result;
  outputCopy = output;
  if (result)
  {
    v6 = a2;
    v53 = [a2 copy];
    v82 = 0u;
    v83 = 0u;
    v84 = 0u;
    v85 = 0u;
    v54 = OUTLINED_FUNCTION_1_18(v53, v7, &v82, v81);
    if (v54)
    {
      v47 = *v83;
      v49 = v6;
      inputsCopy = inputs;
      do
      {
        v8 = 0;
        do
        {
          if (*v83 != v47)
          {
            objc_enumerationMutation(inputs);
          }

          v55 = v8;
          v9 = *(*(&v82 + 1) + 8 * v8);
          v10 = [inputs objectForKey:{v9, v47}];
          v11 = [objc_msgSend(v6 objectForKey:{v9), "allObjects"}];
          v12 = [v51[4] objectForKey:v10];
          v13 = [outputCopy dependenciesForInputVideoRequirement:v9];
          v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          obj = v13;
          v16 = OUTLINED_FUNCTION_1_18(v14, v15, &v77, v76);
          if (v16)
          {
            v24 = v16;
            v25 = *v78;
            do
            {
              v26 = 0;
              do
              {
                if (*v78 != v25)
                {
                  objc_enumerationMutation(obj);
                }

                v27 = *(*(&v77 + 1) + 8 * v26);
                dataRequirement = [v27 dataRequirement];
                v29 = [providerCopy objectForKey:{objc_msgSend(v27, "inferenceRequirement")}];
                if ([v11 containsObject:v29])
                {
                  v30 = OUTLINED_FUNCTION_0_13();
                  *v30 = v9;
                  v30[1] = dataRequirement;
                  v30[2] = v29;
                  [v12 addPointer:v30];
                  [v14 addObject:v29];
                }

                ++v26;
              }

              while (v24 != v26);
              v16 = [obj countByEnumeratingWithState:&v77 objects:v76 count:16];
              v24 = v16;
            }

            while (v16);
          }

          v31 = OUTLINED_FUNCTION_2_14(v16, v17, v18, v19, v20, v21, v22, v23, v48, v49, inputsCopy, v51, outputCopy, v53, v54, v55, obj, providerCopy, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
          if (v31)
          {
            v32 = v31;
            v33 = MEMORY[0];
            do
            {
              for (i = 0; i != v32; ++i)
              {
                if (MEMORY[0] != v33)
                {
                  objc_enumerationMutation(v11);
                }

                v35 = *(8 * i);
                v36 = [v14 containsObject:v35];
                if ((v36 & 1) == 0)
                {
                  v44 = OUTLINED_FUNCTION_0_13();
                  *v44 = v9;
                  v44[1] = v9;
                  v44[2] = v35;
                  v36 = [v12 addPointer:v44];
                }
              }

              v32 = OUTLINED_FUNCTION_2_14(v36, v37, v38, v39, v40, v41, v42, v43, v47, v49, inputsCopy, v51, outputCopy, v53, v54, v56, obja, providerCopy, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75);
            }

            while (v32);
          }

          v45 = [v53 removeObjectForKey:v9];
          v8 = v56 + 1;
          v6 = v49;
          inputs = inputsCopy;
        }

        while (v56 + 1 != v54);
        v54 = OUTLINED_FUNCTION_1_18(v45, v46, &v82, v81);
      }

      while (v54);
    }

    return v53;
  }

  return result;
}

- (void)_populateJobList:(void *)list fromGraphEdges:(uint64_t)edges withHeadNode:(void *)node jobTypes:
{
  v55 = a2;
  if (self)
  {
    v6 = objc_alloc(MEMORY[0x1E696AD18]);
    v7 = OUTLINED_FUNCTION_4_15([list count]);
    v8 = objc_alloc(MEMORY[0x1E696AD18]);
    v9 = OUTLINED_FUNCTION_4_15([list count]);
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    listCopy = list;
    obj = OUTLINED_FUNCTION_3_5();
    if (obj)
    {
      v61 = *v94;
      do
      {
        v10 = 0;
        do
        {
          if (*v94 != v61)
          {
            objc_enumerationMutation(list);
          }

          v66 = v10;
          v11 = *(*(&v93 + 1) + 8 * v10);
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v12 = [list objectForKey:{v11, v55}];
          v13 = [v12 countByEnumeratingWithState:&v89 objects:v88 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v90;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v90 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v89 + 1) + 8 * i);
                v18 = *(v17 + 16);
                v19 = [v7 objectForKey:v18];
                if (!v19)
                {
                  v19 = [MEMORY[0x1E695DFA8] set];
                  [v7 setObject:v19 forKey:v18];
                }

                [v19 addObject:v11];
                v20 = [v9 objectForKey:v18];
                if (!v20)
                {
                  v20 = [MEMORY[0x1E696AE08] pointerArrayWithOptions:258];
                  [v9 setObject:v20 forKey:v18];
                }

                [v20 addPointer:v17 + 24];
              }

              v14 = [v12 countByEnumeratingWithState:&v89 objects:v88 count:16];
            }

            while (v14);
          }

          v10 = v66 + 1;
          list = listCopy;
        }

        while ((v66 + 1) != obj);
        obj = OUTLINED_FUNCTION_3_5();
      }

      while (obj);
    }

    v67 = [MEMORY[0x1E696AB50] set];
    v21 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(list, "count")}];
    [v21 addObject:edges];
    if ([v21 count])
    {
      v22 = 0;
      obja = v21;
      do
      {
        v58 = v22;
        if ([v21 count] < 2)
        {
          anyObject = [v21 anyObject];
        }

        else
        {
          v23 = [MEMORY[0x1E695DFA8] set];
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v62 = OUTLINED_FUNCTION_1_18(v23, v24, &v84, v83);
          anyObject = 0;
          if (v62)
          {
            v60 = *v85;
            v26 = 0.0;
            do
            {
              for (j = 0; j != v62; ++j)
              {
                if (*v85 != v60)
                {
                  objc_enumerationMutation(obja);
                }

                v28 = *(*(&v84 + 1) + 8 * j);
                v29 = [list objectForKey:v28];
                v79 = 0u;
                v80 = 0u;
                v81 = 0u;
                v82 = 0u;
                v30 = [v29 countByEnumeratingWithState:&v79 objects:v78 count:16];
                if (v30)
                {
                  v31 = v30;
                  v32 = *v80;
                  do
                  {
                    for (k = 0; k != v31; ++k)
                    {
                      if (*v80 != v32)
                      {
                        objc_enumerationMutation(v29);
                      }

                      [v23 addObjectsFromArray:{objc_msgSend(objc_msgSend(v7, "objectForKey:", *(*(*(&v79 + 1) + 8 * k) + 16)), "allObjects")}];
                    }

                    v31 = [v29 countByEnumeratingWithState:&v79 objects:v78 count:16];
                  }

                  while (v31);
                }

                v34 = [v23 count];
                v35 = [v29 count];
                if ((v34 / v35) < v26 || anyObject == 0)
                {
                  v26 = v34 / v35;
                  anyObject = v28;
                }

                removeAllObjects = [v23 removeAllObjects];
                list = listCopy;
              }

              v21 = obja;
              v62 = OUTLINED_FUNCTION_1_18(removeAllObjects, v38, &v84, v83);
            }

            while (v62);
          }
        }

        [v21 removeObject:anyObject];
        v39 = [v56 jobAtIndex:v58];
        *v39 = anyObject;
        *(v39 + 21) = [v67 countForObject:anyObject];
        *(v39 + 20) = [node objectForKey:anyObject];
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v40 = [v9 objectForKey:anyObject];
        v41 = [v40 countByEnumeratingWithState:&v74 objects:v73 count:16];
        if (v41)
        {
          v43 = v41;
          v44 = *v75;
          do
          {
            v45 = 0;
            do
            {
              if (*v75 != v44)
              {
                objc_enumerationMutation(v40);
              }

              **(*(&v74 + 1) + 8 * v45++) = v58;
            }

            while (v43 != v45);
            v41 = OUTLINED_FUNCTION_1_18(v41, v42, &v74, v73);
            v43 = v41;
          }

          while (v41);
        }

        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v46 = [list objectForKey:anyObject];
        v47 = [v46 countByEnumeratingWithState:&v69 objects:v68 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v70;
          do
          {
            for (m = 0; m != v48; ++m)
            {
              if (*v70 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(*(&v69 + 1) + 8 * m) + 16);
              [v67 addObject:v51];
              v52 = [v7 objectForKey:v51];
              [v52 removeObject:anyObject];
              v53 = [v52 count];
              if (!v53)
              {
                v53 = [obja addObject:v51];
              }
            }

            v48 = OUTLINED_FUNCTION_1_18(v53, v54, &v69, v68);
          }

          while (v48);
        }

        v22 = v58 + 1;
        v21 = obja;
      }

      while ([obja count]);
    }
  }
}

- (BOOL)_validToDeriveFormat:(void *)format fromFormat:(uint64_t)fromFormat vendingProvider:
{
  if (result)
  {
    width = [format width];
    if (width >= [a2 width] && (v7 = objc_msgSend(format, "height"), v7 >= objc_msgSend(a2, "height")) && ((v8 = objc_msgSend(a2, "includesInvalidContent"), v8 == objc_msgSend(format, "includesInvalidContent")) || (objc_msgSend(a2, "includesInvalidContent") & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)) && (v9 = objc_msgSend(format, "videoContentMode"), v9 <= objc_msgSend(a2, "videoContentMode")))
    {
      if ([objc_msgSend(format "cropDescriptor")])
      {
        v10 = [objc_msgSend(format "cropDescriptor")];
        return v10 == [objc_msgSend(a2 "cropDescriptor")];
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)_newScalingNodesForScalingRequirement:(unsigned int)requirement fencedMedia:(void *)media processingConfiguration:
{
  if (!self)
  {
    return 0;
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  orderedVideoRequirements = [a2 orderedVideoRequirements];
  v9 = [orderedVideoRequirements countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(orderedVideoRequirements);
      }

      if (!--v10)
      {
        v10 = [orderedVideoRequirements countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  v12 = [objc_msgSend(a2 "orderedVideoRequirements")];
  if ([v12 count] >= 2)
  {
    v13 = 0;
    do
    {
      firstObject = [v12 firstObject];
      [v12 removeObjectAtIndex:0];
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v15 addObject:{objc_msgSend(v12, "firstObject")}];
      if ([v12 count] >= 2)
      {
        do
        {
          if (![objc_msgSend(v12 objectAtIndex:{1), "isSatisfiedByRequirement:", objc_msgSend(v15, "lastObject")}])
          {
            break;
          }

          [v12 removeObjectAtIndex:0];
          [v15 addObject:{objc_msgSend(v12, "firstObject")}];
        }

        while ([v12 count] > 1);
      }

      v16 = objc_alloc_init(BWInferenceScalerConfiguration);
      [(BWInferenceScalerConfiguration *)v16 setOptions:requirement];
      if (media)
      {
        filterType = [media filterType];
      }

      else
      {
        filterType = 3;
      }

      [(BWInferenceScalerConfiguration *)v16 setFilterType:filterType];
      v18 = [[BWInferenceSchedulerScaler alloc] initWithInputRequirement:firstObject derivedFromRequirement:v13 outputRequirements:v15 scalerConfiguration:v16];

      [v7 addObject:v18];
      v13 = firstObject;
    }

    while ([v12 count] > 1);
  }

  return v7;
}

- (BWInferenceVideoFormat)initWithInferenceRequirements:(void *)a1 dependencyProvider:(const char *)a2 formatProvider:(uint64_t)a3 processingConfiguration:(BWInferenceVideoFormat *)a4 .cold.1(void *a1, const char *a2, uint64_t a3, BWInferenceVideoFormat **a4)
{
  WORD2(v7) = 0;
  LODWORD(v7) = 0;
  result = [[BWInferenceVideoFormat alloc] initWithUnderlyingFormat:a3 isDeviceOriented:0 videoContentMode:0 includesInvalidContent:objc_msgSend_isEqualToString_(a1 cropDescriptor:a2 histogramRequest:a2) rotationDegrees:0 applyHorizontalFlip:0 isLandscapeOriented:v7];
  *a4 = result;
  return result;
}

@end