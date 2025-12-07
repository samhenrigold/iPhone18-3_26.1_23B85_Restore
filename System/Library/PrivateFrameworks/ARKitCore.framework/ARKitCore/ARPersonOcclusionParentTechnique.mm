@interface ARPersonOcclusionParentTechnique
- (ARPersonOcclusionParentTechnique)initWithTechniques:(id)techniques delegate:(id)delegate;
- (BOOL)isEqual:(id)equal;
- (id)processData:(id)data;
- (id)techniquesToRunWithForwardedDepth:(BOOL)depth;
- (void)dealloc;
- (void)reconfigureFrom:(id)from;
- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context;
- (void)setOptimizationStrategy:(int64_t)strategy;
- (void)setTechniques:(id)techniques;
- (void)submitResultsForTimestamp:(double)timestamp context:(id)context;
- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context;
- (void)updatePersonDetectionTechniques;
- (void)updatePrimaryPersonDetectionTechnique;
@end

@implementation ARPersonOcclusionParentTechnique

- (ARPersonOcclusionParentTechnique)initWithTechniques:(id)techniques delegate:(id)delegate
{
  v40 = *MEMORY[0x1E69E9840];
  techniquesCopy = techniques;
  delegateCopy = delegate;
  v8 = [techniquesCopy indexOfObjectPassingTest:&__block_literal_global_31];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (ARShouldUseLogTypeError_onceToken_13 != -1)
    {
      [ARPersonOcclusionParentTechnique initWithTechniques:delegate:];
    }

    v9 = ARShouldUseLogTypeError_internalOSVersion_13;
    v10 = _ARLogTechnique_9(v8);
    v11 = v10;
    if (v9 == 1)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        v33[0] = v15;
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v33[1] = v17;
        v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
        *buf = 138543874;
        v35 = v13;
        v36 = 2048;
        selfCopy2 = self;
        v38 = 2112;
        v39 = v18;
        v19 = "%{public}@ <%p>: This parent technique is designed to contain one of the following person detection techniques: %@";
        v20 = v11;
        v21 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&dword_1C241C000, v20, v21, v19, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v27 = objc_opt_class();
      v13 = NSStringFromClass(v27);
      v28 = objc_opt_class();
      v15 = NSStringFromClass(v28);
      v32[0] = v15;
      v29 = objc_opt_class();
      v17 = NSStringFromClass(v29);
      v32[1] = v17;
      v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
      *buf = 138543874;
      v35 = v13;
      v36 = 2048;
      selfCopy2 = self;
      v38 = 2112;
      v39 = v18;
      v19 = "Error: %{public}@ <%p>: This parent technique is designed to contain one of the following person detection techniques: %@";
      v20 = v11;
      v21 = OS_LOG_TYPE_INFO;
      goto LABEL_12;
    }

    selfCopy3 = 0;
    goto LABEL_14;
  }

  v31.receiver = self;
  v31.super_class = ARPersonOcclusionParentTechnique;
  v22 = [(ARParentTechnique *)&v31 initWithTechniques:techniquesCopy delegate:delegateCopy];
  if (v22)
  {
    v22->_shouldSkipFramesWhenBusy = [ARKitUserDefaults BOOLForKey:@"com.apple.arkit.personocclusion.skipFrameWhenBusy"];
    depthTechniqueProcessingStrategy = v22->_depthTechniqueProcessingStrategy;
    v22->_depthTechniqueProcessingStrategy = 0;

    v22->_detectedPerson = 1;
    v22->_lastDetectedPersonTimeStamp = 0.0;
    v24 = [objc_alloc(MEMORY[0x1E696AC70]) initWithOptions:512 capacity:5];
    personDetectionTechniques = v22->_personDetectionTechniques;
    v22->_personDetectionTechniques = v24;

    [(ARPersonOcclusionParentTechnique *)v22 updatePersonDetectionTechniques];
  }

  self = v22;
  selfCopy3 = self;
LABEL_14:

  return selfCopy3;
}

uint64_t __64__ARPersonOcclusionParentTechnique_initWithTechniques_delegate___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (void)dealloc
{
  CVPixelBufferRelease(self->_placeholderDepthBuffer);
  self->_placeholderDepthBuffer = 0;
  v3.receiver = self;
  v3.super_class = ARPersonOcclusionParentTechnique;
  [(ARPersonOcclusionParentTechnique *)&v3 dealloc];
}

- (void)setOptimizationStrategy:(int64_t)strategy
{
  v14 = *MEMORY[0x1E69E9840];
  self->_optimizationStrategy = strategy;
  v4 = _ARLogGeneral_4(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    optimizationStrategy = self->_optimizationStrategy;
    v8 = 138543874;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    v12 = 2048;
    v13 = optimizationStrategy;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_INFO, "%{public}@ <%p>: _optimizationStrategy = %ld", &v8, 0x20u);
  }

  [(ARPersonOcclusionParentTechnique *)self updatePrimaryPersonDetectionTechnique];
}

- (void)setTechniques:(id)techniques
{
  v8.receiver = self;
  v8.super_class = ARPersonOcclusionParentTechnique;
  techniquesCopy = techniques;
  [(ARParentTechnique *)&v8 setTechniques:techniquesCopy];
  v5 = [MEMORY[0x1E696AE18] predicateWithBlock:{&__block_literal_global_12_0, v8.receiver, v8.super_class}];
  v6 = [ARTechnique techniqueMatchingPredicate:v5 inArray:techniquesCopy];

  depthTechnique = self->_depthTechnique;
  self->_depthTechnique = v6;

  [(ARPersonOcclusionParentTechnique *)self updatePrimaryPersonDetectionTechnique];
  [(ARPersonOcclusionParentTechnique *)self updatePersonDetectionTechniques];
}

uint64_t __50__ARPersonOcclusionParentTechnique_setTechniques___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F425FD78])
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

- (id)techniquesToRunWithForwardedDepth:(BOOL)depth
{
  if (self->_detectedPerson || !self->_optimizationStrategy)
  {
    v8.receiver = self;
    v8.super_class = ARPersonOcclusionParentTechnique;
    techniques = [(ARParentTechnique *)&v8 techniques];
  }

  else
  {
    depthCopy = depth;
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{self->_primaryPersonDetectionTechnique, 0}];
    techniques = v5;
    if (depthCopy && self->_depthTechnique)
    {
      [v5 addObject:?];
    }
  }

  return techniques;
}

- (void)reconfigureFrom:(id)from
{
  fromCopy = from;
  v7.receiver = self;
  v7.super_class = ARPersonOcclusionParentTechnique;
  [(ARParentTechnique *)&v7 reconfigureFrom:fromCopy];
  if ([fromCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = fromCopy;
    -[ARPersonOcclusionParentTechnique setOptimizationStrategy:](self, "setOptimizationStrategy:", [v5 optimizationStrategy]);
    depthTechniqueProcessingStrategy = [v5 depthTechniqueProcessingStrategy];

    [(ARPersonOcclusionParentTechnique *)self setDepthTechniqueProcessingStrategy:depthTechniqueProcessingStrategy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v13.receiver = self;
  v13.super_class = ARPersonOcclusionParentTechnique;
  if ([(ARParentTechnique *)&v13 isEqual:equalCopy])
  {
    v5 = equalCopy;
    optimizationStrategy = [(ARPersonOcclusionParentTechnique *)self optimizationStrategy];
    if (optimizationStrategy == [v5 optimizationStrategy])
    {
      depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
      depthTechniqueProcessingStrategy2 = [v5 depthTechniqueProcessingStrategy];
      if (depthTechniqueProcessingStrategy == depthTechniqueProcessingStrategy2)
      {
        v11 = 1;
      }

      else
      {
        depthTechniqueProcessingStrategy3 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
        depthTechniqueProcessingStrategy4 = [v5 depthTechniqueProcessingStrategy];
        v11 = [depthTechniqueProcessingStrategy3 isEqual:depthTechniqueProcessingStrategy4];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)processData:(id)data
{
  v60 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  techniques = [(ARParentTechnique *)self techniques];
  v6 = [techniques countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v48;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v48 != v8)
        {
          objc_enumerationMutation(techniques);
        }

        v10 = *(*(&v47 + 1) + 8 * i);
        if (objc_opt_respondsToSelector() & 1) != 0 && ([v10 isBusy])
        {
          v11 = 0;
          goto LABEL_12;
        }
      }

      v7 = [techniques countByEnumeratingWithState:&v47 objects:v59 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_12:

  objc_opt_class();
  v12 = v11 | objc_opt_isKindOfClass();
  depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
  if (depthTechniqueProcessingStrategy)
  {
    depthTechniqueProcessingStrategy2 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
    v15 = [depthTechniqueProcessingStrategy2 shouldProcessData:dataCopy];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ARPersonOcclusionParentTechnique *)self techniquesToRunWithForwardedDepth:v15];
  if ((v12 & 1) == 0 && self->_shouldSkipFramesWhenBusy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = dataCopy;
      objc_msgSend_timestamp(v17);
      kdebug_trace();
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v44;
        do
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v44 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v43 + 1) + 8 * j);
            if ([v23 conformsToProtocol:&unk_1F425EC70])
            {
              v24 = v23;
              objc_msgSend_timestamp(v17);
              [v24 pushEmptyResultOnAsynchronousQueueForTimestamp:?];
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v43 objects:v58 count:16];
        }

        while (v20);
      }

      v26 = _ARLogGeneral_4(v25);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = objc_opt_class();
        v28 = NSStringFromClass(v27);
        *buf = 138543874;
        v53 = v28;
        v54 = 2048;
        selfCopy = self;
        v56 = 2112;
        v57 = v18;
        _os_log_impl(&dword_1C241C000, v26, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Dropped frame. Techniques that did not get the image: %@", buf, 0x20u);
      }
    }

    v29 = dataCopy;
    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_44:
    v29 = [(ARParentTechnique *)self processData:dataCopy onTechniques:v16];
LABEL_45:
    v30 = v29;
    goto LABEL_46;
  }

  v30 = dataCopy;
  if (![v30 isDroppedData])
  {

    goto LABEL_44;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  techniques2 = [(ARParentTechnique *)self techniques];
  v32 = [techniques2 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v40;
    do
    {
      for (k = 0; k != v33; ++k)
      {
        if (*v40 != v34)
        {
          objc_enumerationMutation(techniques2);
        }

        v36 = *(*(&v39 + 1) + 8 * k);
        if ([v36 conformsToProtocol:&unk_1F425EC70])
        {
          v37 = v36;
          objc_msgSend_timestamp(v30);
          [v37 pushEmptyResultOnAsynchronousQueueForTimestamp:?];
        }
      }

      v33 = [techniques2 countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v33);
  }

LABEL_46:

  return v30;
}

- (void)requestResultDataAtTimestamp:(double)timestamp context:(id)context
{
  contextCopy = context;
  depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
  if (depthTechniqueProcessingStrategy)
  {
    depthTechniqueProcessingStrategy2 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
    v8 = [depthTechniqueProcessingStrategy2 shouldRequestResultDataAtTimestamp:contextCopy context:timestamp];
  }

  else
  {
    v8 = 0;
  }

  v9 = [(ARPersonOcclusionParentTechnique *)self techniquesToRunWithForwardedDepth:v8];
  [(ARParentTechnique *)self requestResultDataAtTimestamp:contextCopy context:v9 onTechniques:timestamp];
}

- (void)technique:(id)technique didOutputResultData:(id)data timestamp:(double)timestamp context:(id)context
{
  techniqueCopy = technique;
  dataCopy = data;
  contextCopy = context;
  depthTechniqueProcessingStrategy = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
  if (depthTechniqueProcessingStrategy)
  {
    depthTechniqueProcessingStrategy2 = [(ARPersonOcclusionParentTechnique *)self depthTechniqueProcessingStrategy];
    v15 = [depthTechniqueProcessingStrategy2 shouldRequestResultDataAtTimestamp:contextCopy context:timestamp];
  }

  else
  {
    v15 = 0;
  }

  v16 = [(ARPersonOcclusionParentTechnique *)self techniquesToRunWithForwardedDepth:v15];
  if ([(NSHashTable *)self->_personDetectionTechniques containsObject:techniqueCopy])
  {
    if (self->_primaryPersonDetectionTechnique == techniqueCopy)
    {
      if (self->_depthTechnique)
      {
        if (self->_optimizationStrategy)
        {
          if (!self->_detectedPerson)
          {
            if (self->_placeholderDepthBuffer || (CVPixelBufferCreate(0, 1uLL, 1uLL, 0x66646570u, 0, &self->_placeholderDepthBuffer), self->_placeholderDepthBuffer))
            {
              v17 = [(ARMLDepthData *)[ARPlaceholderMLDepthData alloc] initWithTimestamp:self->_placeholderDepthBuffer depthBuffer:[(ARMLDepthDataSourceProvider *)self->_depthTechnique depthDataSource] source:timestamp];
              if (v17)
              {
                v18 = v17;
                v19 = [dataCopy arrayByAddingObject:v17];

                dataCopy = v19;
              }
            }
          }
        }
      }
    }

    [(ARParentTechnique *)&v20 technique:techniqueCopy didOutputResultData:dataCopy timestamp:contextCopy context:v16 onTechniques:timestamp, self, ARPersonOcclusionParentTechnique, v21.receiver, v21.super_class];
  }

  else
  {
    [(ARParentTechnique *)&v21 technique:techniqueCopy didOutputResultData:dataCopy timestamp:contextCopy context:v16 onTechniques:timestamp, v20.receiver, v20.super_class, self, ARPersonOcclusionParentTechnique];
  }
}

- (void)submitResultsForTimestamp:(double)timestamp context:(id)context
{
  v38 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  gatheredData = [contextCopy gatheredData];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v8 = [gatheredData countByEnumeratingWithState:&v28 objects:buf count:16];
  v9 = 0.0;
  if (!v8)
  {
    goto LABEL_22;
  }

  v10 = *v29;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v29 != v10)
      {
        objc_enumerationMutation(gatheredData);
      }

      v12 = *(*(&v28 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v12;
        objc_msgSend_timestamp(v8);
        v9 = v13;
        detectedObjects = [v8 detectedObjects];
        LODWORD(v8) = [detectedObjects count] != 0;
LABEL_20:

        goto LABEL_21;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v12;
        objc_msgSend_timestamp(v8);
        v9 = v15;
        LODWORD(v8) = [v8 hasSegmentedPeople];
LABEL_21:

        goto LABEL_22;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v12;
        objc_msgSend_timestamp(v8);
        v9 = v16;
        detectedObjects = [v8 rawDetectionResult];
        if (detectedObjects)
        {
          LODWORD(v8) = 1;
        }

        else
        {
          alignedDetectionResult = [v8 alignedDetectionResult];
          if (alignedDetectionResult)
          {
            LODWORD(v8) = 1;
          }

          else
          {
            alignedDetectionResult2 = [v8 alignedDetectionResult];
            LODWORD(v8) = alignedDetectionResult2 != 0;
          }
        }

        goto LABEL_20;
      }
    }

    v8 = [gatheredData countByEnumeratingWithState:&v28 objects:buf count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_22:

  lastDetectedPersonTimeStamp = self->_lastDetectedPersonTimeStamp;
  if (lastDetectedPersonTimeStamp == 0.0)
  {
    self->_lastDetectedPersonTimeStamp = v9;
    lastDetectedPersonTimeStamp = v9;
  }

  if (v8)
  {
    if (!self->_detectedPerson)
    {
      v21 = _ARLogGeneral_4(v19);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = objc_opt_class();
        v23 = NSStringFromClass(v22);
        *buf = 138543618;
        v33 = v23;
        v34 = 2048;
        selfCopy2 = self;
        _os_log_impl(&dword_1C241C000, v21, OS_LOG_TYPE_INFO, "%{public}@ <%p>: detected a person when there were none", buf, 0x16u);
      }
    }

    self->_detectedPerson = 1;
    self->_lastDetectedPersonTimeStamp = v9;
  }

  else if (v9 - lastDetectedPersonTimeStamp > 0.5)
  {
    if (self->_detectedPerson)
    {
      v24 = _ARLogGeneral_4(v19);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138543874;
        v33 = v26;
        v34 = 2048;
        selfCopy2 = self;
        v36 = 2048;
        v37 = 0x3FE0000000000000;
        _os_log_impl(&dword_1C241C000, v24, OS_LOG_TYPE_INFO, "%{public}@ <%p>: detected no person for %f seconds", buf, 0x20u);
      }
    }

    self->_detectedPerson = 0;
  }

  v27.receiver = self;
  v27.super_class = ARPersonOcclusionParentTechnique;
  [(ARParentTechnique *)&v27 submitResultsForTimestamp:contextCopy context:timestamp];
}

- (void)updatePersonDetectionTechniques
{
  v30 = *MEMORY[0x1E69E9840];
  [(NSHashTable *)self->_personDetectionTechniques removeAllObjects];
  v3 = objc_alloc(MEMORY[0x1E695DFD8]);
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v3 initWithObjects:{v4, v5, objc_opt_class(), 0}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  selfCopy = self;
  obj = [(ARParentTechnique *)self techniques];
  v7 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if ([v6 containsObject:objc_opt_class()])
        {
          [(NSHashTable *)selfCopy->_personDetectionTechniques addObject:v11];
        }

        else
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          v12 = v6;
          v13 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v21;
            while (2)
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v21 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = [v11 techniqueOfClass:*(*(&v20 + 1) + 8 * j)];

                if (v17)
                {
                  [(NSHashTable *)selfCopy->_personDetectionTechniques addObject:v11];
                  goto LABEL_18;
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v20 objects:v28 count:16];
              if (v14)
              {
                continue;
              }

              break;
            }
          }

LABEL_18:
        }
      }

      v8 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v8);
  }
}

- (void)updatePrimaryPersonDetectionTechnique
{
  optimizationStrategy = self->_optimizationStrategy;
  if (optimizationStrategy == 1 || optimizationStrategy == 2)
  {
    v4 = objc_opt_class();
    if (v4)
    {
      techniques = [(ARParentTechnique *)self techniques];
      v4 = [ARTechnique techniqueOfClass:v4 inArray:?];
      v5 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 1;
LABEL_7:
  objc_storeStrong(&self->_primaryPersonDetectionTechnique, v4);
  if ((v5 & 1) == 0)
  {
  }
}

@end