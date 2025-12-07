@interface MPSNNGraph
+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage;
+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded;
+ (MPSNNGraph)graphWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages;
- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates;
- (MPSImage)executeAsyncWithSourceImages:(NSArray *)sourceImages completionHandler:(MPSNNGraphCompletionHandler)handler;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates;
- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates;
- (MPSNNGraph)initWithCoder:(NSCoder *)aDecoder device:(id)device;
- (MPSNNGraph)initWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded;
- (MPSNNGraph)initWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded;
- (NSArray)intermediateImageHandles;
- (NSArray)resultStateHandles;
- (NSArray)sourceImageHandles;
- (NSArray)sourceStateHandles;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone device:(id)device;
- (id)debugDescription;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)reloadFromDataSources;
- (void)setOptions:(unint64_t)options;
@end

@implementation MPSNNGraph

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNNGraph;
  [(MPSKernel *)&v3 dealloc];
}

+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded
{
  v5 = resultIsNeeded;
  v8 = [self alloc];
  IsNeeded = objc_msgSend_initWithDevice_resultImage_resultImageIsNeeded_(v8, v9, device, resultImage, v5, v10, v11, v12);

  return IsNeeded;
}

+ (MPSNNGraph)graphWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage
{
  v6 = [self alloc];
  v12 = objc_msgSend_initWithDevice_resultImage_(v6, v7, device, resultImage, v8, v9, v10, v11);

  return v12;
}

- (MPSNNGraph)initWithDevice:(id)device resultImage:(MPSNNImageNode *)resultImage resultImageIsNeeded:(BOOL)resultIsNeeded
{
  v46[1] = *MEMORY[0x277D85DE8];
  v45 = resultIsNeeded;
  v44.receiver = self;
  v44.super_class = MPSNNGraph;
  v8 = [(MPSKernel *)&v44 initWithDevice:?];
  v16 = v8;
  if (!v8)
  {
    return v16;
  }

  v17 = *MEMORY[0x277CD7378];
  v18 = *(&v8->super.super.isa + v17);
  if ((v18 & 1) == 0)
  {
    if (resultImage)
    {
      objc_opt_class();
      objc_opt_isKindOfClass();
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = *(&v16->super.super.isa + v17);
        goto LABEL_6;
      }

      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_7;
      }

      v43 = objc_opt_class();
      NSStringFromClass(v43);
      v41 = @"[%@ initWithDevice:resultImage:resultStates:] error: resultImage must be a child class of MPSNNImageNode";
      v42 = 144;
    }

    else
    {
      if (!MTLReportFailureTypeEnabled())
      {
        goto LABEL_7;
      }

      v36 = objc_opt_class();
      NSStringFromClass(v36);
      v41 = @"[%@ initWithDevice:resultImage:resultStates:] error: resultImage may not be nil";
      v42 = 143;
    }

    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", v42, v41, v37, v38, v39, v40);
    goto LABEL_7;
  }

LABEL_6:
  *(&v16->super.super.isa + v17) = (v18 | 1);
  v16->_resultIsNeeded = resultIsNeeded;
  v16->_outputStateIsTemporary = 0;
  v16->_format = 3;
  v19 = objc_msgSend_defaultAllocator(MEMORY[0x277CD7218], v9, v10, v11, v12, v13, v14, v15);
  objc_msgSend_setDestinationImageAllocator_(v16, v20, v19, v21, v22, v23, v24, v25);
  v46[0] = resultImage;
  v31 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v26, v46, 1, v27, v28, v29, v30);
  if ((sub_239C0A6A8(&v16->_graph, device, v31, v16, &v45, v32, v33, v34) & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  return v16;
}

+ (MPSNNGraph)graphWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded
{
  v8 = [self alloc];
  v13 = objc_msgSend_initWithDevice_resultImages_resultsAreNeeded_(v8, v9, device, resultImages, areResultsNeeded, v10, v11, v12);

  return v13;
}

- (MPSNNGraph)initWithDevice:(id)device resultImages:(NSArray *)resultImages resultsAreNeeded:(BOOL *)areResultsNeeded
{
  v35.receiver = self;
  v35.super_class = MPSNNGraph;
  v8 = [(MPSKernel *)&v35 initWithDevice:?];
  v16 = v8;
  if (v8)
  {
    v17 = *MEMORY[0x277CD7378];
    v18 = *(&v8->super.super.isa + v17);
    if (!resultImages && (v18 & 1) == 0)
    {
      if (MTLReportFailureTypeEnabled())
      {
        v30 = objc_opt_class();
        NSStringFromClass(v30);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0xB8, @"[%@ initWithDevice:resultImage:resultStates:] error: resultImage may not be nil", v31, v32, v33, v34);
      }

      goto LABEL_7;
    }

    *(&v8->super.super.isa + v17) = (v18 | 1);
    v8->_resultIsNeeded = 1;
    if (areResultsNeeded)
    {
      v8->_resultIsNeeded = *areResultsNeeded;
    }

    v8->_outputStateIsTemporary = 0;
    v8->_format = 3;
    v19 = objc_msgSend_defaultAllocator(MEMORY[0x277CD7218], v9, v10, v11, v12, v13, v14, v15);
    objc_msgSend_setDestinationImageAllocator_(v16, v20, v19, v21, v22, v23, v24, v25);
    if ((sub_239C0A6A8(&v16->_graph, device, resultImages, v16, areResultsNeeded, v26, v27, v28) & 1) == 0)
    {
LABEL_7:

      return 0;
    }
  }

  return v16;
}

- (NSArray)sourceImageHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphSourceImages._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphSourceImages._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (NSArray)sourceStateHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphSourceStates._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphSourceStates._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (NSArray)intermediateImageHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphIntermediateImages._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphIntermediateImages._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (NSArray)resultStateHandles
{
  p_graph = &self->_graph;
  count = self->_graph._graphResultStates._count;
  v4 = objc_alloc(MEMORY[0x277CBEB18]);
  v16 = objc_msgSend_initWithCapacity_(v4, v5, count, v6, v7, v8, v9, v10);
  if (v16)
  {
    v17 = count == 0;
  }

  else
  {
    v17 = 1;
  }

  if (!v17)
  {
    v19 = 0;
    do
    {
      v20 = p_graph->_graphResultStates._items[v19];
      if (v20 && *v20)
      {
        objc_msgSend_setObject_atIndexedSubscript_(v16, v11, *v20, v19, v12, v13, v14, v15);
      }

      ++v19;
    }

    while (count != v19);
  }

  return v16;
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    p_graph = &self->_graph;
    if (self->_graph._graphSourceStates._count)
    {
      selfCopy = self;
      v8 = sourceImages;
      v9 = commandBuffer;
      v10 = MTLReportFailureTypeEnabled();
      commandBuffer = v9;
      sourceImages = v8;
      v11 = v10;
      self = selfCopy;
      if (v11)
      {
        v12 = objc_opt_class();
        NSStringFromClass(v12);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0xF6, @"[%@ encodeToCommandBuffer:sourceImages:] Error: This graph consumes MPSState objects.\n\tPlease use-encodeToCommandBuffer:sourceImages:sourceStates:destinationImage:destinationStates: instead.", v13, v14, v15, v16);
        self = selfCopy;
        commandBuffer = v9;
        sourceImages = v8;
      }
    }

    if (p_graph->_graphResultStates._count)
    {
      selfCopy2 = self;
      v18 = sourceImages;
      v19 = commandBuffer;
      v20 = MTLReportFailureTypeEnabled();
      commandBuffer = v19;
      sourceImages = v18;
      v21 = v20;
      self = selfCopy2;
      if (v21)
      {
        v22 = objc_opt_class();
        NSStringFromClass(v22);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0xFA, @"[%@ encodeToCommandBuffer:sourceImages:] Error: This graph produces MPSState objects.\n\tPlease use-encodeToCommandBuffer:sourceImages:sourceStates:destinationImage:destinationStates: instead.", v23, v24, v25, v26);
        self = selfCopy2;
        commandBuffer = v19;
        sourceImages = v18;
      }
    }

    if (p_graph->_graphIntermediateImages._count)
    {
      selfCopy3 = self;
      v28 = sourceImages;
      v29 = commandBuffer;
      v30 = MTLReportFailureTypeEnabled();
      commandBuffer = v29;
      sourceImages = v28;
      v31 = v30;
      self = selfCopy3;
      if (v31)
      {
        v32 = objc_opt_class();
        NSStringFromClass(v32);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0xFE, @"[%@ encodeToCommandBuffer:sourceImages:] Error: This graph produces intermediate image objects.\n\tPlease use-encodeToCommandBuffer:sourceImages:sourceStates:destinationImage:destinationStates: instead.", v33, v34, v35, v36);
        self = selfCopy3;
        commandBuffer = v29;
        sourceImages = v28;
      }
    }

    v5 = vars8;
  }

  return MEMORY[0x2821F9670](self, sel_encodeToCommandBuffer_sourceImages_sourceStates_intermediateImages_destinationStates_, commandBuffer, sourceImages, 0, 0, 0, v4);
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0 && self->_graph._graphResultStates._count)
  {
    selfCopy = self;
    v8 = sourceStates;
    v9 = sourceImages;
    v10 = commandBuffer;
    v11 = MTLReportFailureTypeEnabled();
    commandBuffer = v10;
    sourceImages = v9;
    sourceStates = v8;
    v12 = v11;
    self = selfCopy;
    if (v12)
    {
      v13 = objc_opt_class();
      NSStringFromClass(v13);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x110, @"[%@ encodeToCommandBuffer:sourceImages:destinationImage:] Error: This graph produces MPSState objects.\n\tPlease use-encodeToCommandBuffer:sourceImages:sourceStates:destinationImage:destinationStates: instead.", v14, v15, v16, v17);
      self = selfCopy;
      commandBuffer = v10;
      sourceImages = v9;
      sourceStates = v8;
    }
  }

  return MEMORY[0x2821F9670](self, sel_encodeBatchToCommandBuffer_sourceImages_sourceStates_intermediateImages_destinationStates_, commandBuffer, sourceImages, sourceStates, 0, 0, v5);
}

- (MPSImage)encodeToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v203 = objc_opt_class();
      v230 = NSStringFromClass(v203);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x125, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: command buffer may no be nil\n", v204, v205, v206, v207);
    }

    if (!sourceImages && MTLReportFailureTypeEnabled())
    {
      v208 = objc_opt_class();
      v230 = NSStringFromClass(v208);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x12A, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages may no be nil\n", v209, v210, v211, v212);
    }

    v18 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, sourceStates, intermediateImages, destinationStates, v7, v230);
    if (v18 != self->_graph._graphSourceImages._count && MTLReportFailureTypeEnabled())
    {
      v213 = objc_opt_class();
      v214 = NSStringFromClass(v213);
      v234 = v18;
      count = self->_graph._graphSourceImages._count;
      v231 = v214;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x132, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: number of source images (%lu) does not match the number needed for the graph (%lu)\n\tYou may be thinking that this array is for handling every image in your library at once.\n\tHowever, actually this array is here to handle graphs and sub-graphs that take multiple different image nodes at different places in the graph.\n\tIf you do want to process multiple images concurrently, you can batch up multiple images in the same MPSImage.\n\t See MPSImage.numberOfImages\n", v215, v216, v217, v218);
    }

    if (v18)
    {
      for (i = 0; i != v18; ++i)
      {
        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v11, i, v13, v14, v15, v16, v17, v231, v234, count);
        if (!objc_msgSend_objectAtIndexedSubscript_(sourceImages, v20, i, v21, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
        {
          v44 = objc_opt_class();
          v232 = NSStringFromClass(v44);
          v234 = i;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x139, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages[%lu] is nil", v45, v46, v47, v48);
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v26, i, v27, v28, v29, v30, v31, v232);
        objc_opt_class();
        objc_opt_isKindOfClass();
        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v32, i, v33, v34, v35, v36, v37);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
        {
          v49 = objc_opt_class();
          v233 = NSStringFromClass(v49);
          v234 = i;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x13D, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages[%lu] is not a MPSImage", v50, v51, v52, v53);
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v38, i, v39, v40, v41, v42, v43, v233);
        v249 = 0;
        v247 = 0u;
        v248 = 0u;
        v246 = 0u;
        MTLPixelFormatGetInfoForDevice();
        if (MTLReportFailureTypeEnabled())
        {
          v231 = i;
          v234 = v246;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x144, @"[MPSNNGraph encodeToCommandBuffer:sourceImages:sourceStates:intermediateImages:destinationStates:] error: source images must currently be type compatible with half float texture loads.\n\tSource image [%lu] has pixel format %s", v14, v15, v16, v17);
        }
      }
    }

    v60 = objc_msgSend_count(sourceStates, v11, v12, v13, v14, v15, v16, v17, v231);
    if (v60 != self->_graph._graphSourceStates._count && MTLReportFailureTypeEnabled())
    {
      v219 = objc_opt_class();
      v220 = NSStringFromClass(v219);
      v234 = v60;
      count = self->_graph._graphSourceStates._count;
      v230 = v220;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x14E, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: number of source states (%lu) does not match the number needed for the graph (%lu)\n\tDid you perhaps forget to provide the state objects for labels and weights for the loss layer?", v221, v222, v223, v224);
    }

    if (sourceStates && v60)
    {
      for (j = 0; j != v60; ++j)
      {
        objc_msgSend_objectAtIndexedSubscript_(sourceStates, v54, j, v55, v56, v57, v58, v59, v230, v234, count);
        if (!objc_msgSend_objectAtIndexedSubscript_(sourceStates, v62, j, v63, v64, v65, v66, v67) && MTLReportFailureTypeEnabled())
        {
          v68 = objc_opt_class();
          v230 = NSStringFromClass(v68);
          v234 = j;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x156, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceStates[%lu] is nil", v69, v70, v71, v72);
        }
      }
    }

    if (!self->_destinationImageAllocator && MTLReportFailureTypeEnabled())
    {
      v225 = objc_opt_class();
      v230 = NSStringFromClass(v225);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x15D, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: destination image allocator may not be nil\n", v226, v227, v228, v229);
    }
  }

  p_graph = &self->_graph;
  destinationImageAllocator = self->_destinationImageAllocator;
  outputStateIsTemporary = self->_outputStateIsTemporary;
  format = self->_format;
  cpuUpdateSem = self->_graph._cpuUpdateSem;
  if (cpuUpdateSem)
  {
    DeadlockedBecauseTheCPUBasedWeightUpdateForThePreviousBatchOccursAtCompletionOfThisCmdBuf_TryGPUUpdateOrNewCmdBufInstead(cpuUpdateSem);
  }

  context = objc_autoreleasePoolPush();
  v81 = self->_graph._images._count;
  if (v81)
  {
    graphNull = p_graph->_graphNull;
    v83 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v75, p_graph->_images._count, v76, v77, v78, v79, v80);
    if (v83)
    {
      do
      {
        objc_msgSend_addObject_(v83, v75, graphNull, v76, v77, v78, v79, v80, v230);
        --v81;
      }

      while (v81);
    }

    v84 = p_graph->_states._count;
    if (v84)
    {
      goto LABEL_35;
    }

LABEL_39:
    v92 = 0;
    goto LABEL_40;
  }

  v83 = 0;
  v84 = p_graph->_states._count;
  if (!v84)
  {
    goto LABEL_39;
  }

LABEL_35:
  v85 = p_graph->_graphNull;
  v92 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v75, v84, v76, v77, v78, v79, v80, v230);
  if (v92)
  {
    do
    {
      objc_msgSend_addObject_(v92, v86, v85, v87, v88, v89, v90, v91);
      --v84;
    }

    while (v84);
  }

LABEL_40:
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v99 = p_graph->_graphSourceImages._count;
  if (v99)
  {
    for (k = 0; k != v99; ++k)
    {
      v101 = p_graph->_graphSourceImages._items[k];
      v102 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v93, k, v94, v95, v96, v97, v98, v230);
      objc_msgSend_setObject_atIndexedSubscript_(v83, v103, v102, *(v101 + 8), v104, v105, v106, v107);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v109 = *(v101 + 9) + *(v101 + 80);
        if (v109)
        {
          v110 = objc_msgSend_readCount(v102, v93, v108, v94, v95, v96, v97, v98);
          objc_msgSend_setReadCount_(v102, v111, v109 + v110 - 1, v112, v113, v114, v115, v116);
        }
      }
    }
  }

  v117 = p_graph->_graphSourceStates._count;
  if (v117)
  {
    for (m = 0; m != v117; ++m)
    {
      v119 = p_graph->_graphSourceStates._items[m];
      v120 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v93, m, v94, v95, v96, v97, v98, v230);
      objc_msgSend_setObject_atIndexedSubscript_(v92, v121, v120, *(v119 + 8), v122, v123, v124, v125);
      v127 = *(v119 + 9) + *(v119 + 80);
      if (v127)
      {
        v128 = objc_msgSend_readCount(v120, v93, v126, v94, v95, v96, v97, v98);
        objc_msgSend_setReadCount_(v120, v129, v127 + v128 - 1, v130, v131, v132, v133, v134);
      }
    }
  }

  v273 = 0u;
  v274 = 0u;
  v272 = 0u;
  v135 = p_graph->_images._count;
  v269 = p_graph;
  v270 = v135;
  v136 = p_graph->_states._count;
  v275 = 0;
  v271 = v136;
  v267 = malloc_type_calloc(v135, 1uLL, 0x100004077774924uLL);
  v268 = malloc_type_calloc(v136, 1uLL, 0x100004077774924uLL);
  v266[0] = MEMORY[0x277D85DD0];
  v266[1] = 3221225472;
  v266[2] = sub_239C12190;
  v266[3] = &unk_278B2F0F0;
  v266[4] = v83;
  *&v273 = v266;
  v265[0] = MEMORY[0x277D85DD0];
  v265[1] = 3221225472;
  v265[2] = sub_239C1228C;
  v265[3] = &unk_278B2F0F0;
  v265[4] = v92;
  *(&v273 + 1) = v265;
  v137 = p_graph->_graphResultImages._count;
  v138 = objc_autoreleasePoolPush();
  v257 = 0;
  v258 = &v257;
  v259 = 0x4812000000;
  v260 = sub_239C122DC;
  v261 = sub_239C122F0;
  v262 = &unk_239DC72C3;
  v264 = xmmword_239D7DE50;
  v263 = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
  v139 = p_graph->_graphNull;
  *&v246 = MEMORY[0x277D85DD0];
  *(&v246 + 1) = 3221225472;
  *&v247 = sub_239C122F8;
  *(&v247 + 1) = &unk_278B2F118;
  *&v248 = v83;
  *(&v248 + 1) = v139;
  v254 = p_graph;
  v255 = format;
  v249 = commandBuffer;
  v250 = destinationImageAllocator;
  v252 = v139;
  v253 = &v257;
  v251 = v92;
  v256 = outputStateIsTemporary;
  *&v274 = &v246;
  v140 = p_graph->_graphResultImages._count;
  if (v140)
  {
    for (n = 0; n != v140; ++n)
    {
      v142 = p_graph->_graphResultImages._items[n];
      if (!v267[*(v142 + 8)])
      {
        v143 = *(v142 + 4);
        if (v143)
        {
          sub_239C190CC(&v267, v143);
        }
      }
    }
  }

  bzero(v267, v270);
  if (v268)
  {
    bzero(v268, v271);
  }

  v144 = *(v258 + 56);
  if (v144)
  {
    v145 = objc_alloc(MEMORY[0x277CBEA60]);
    v151 = objc_msgSend_initWithObjects_count_(v145, v146, *(v258 + 48), v144, v147, v148, v149, v150);
    objc_msgSend_prefetchStorageWithCommandBuffer_imageDescriptorList_(MEMORY[0x277CD72A8], v152, commandBuffer, v151, v153, v154, v155, v156);

    for (ii = 0; ii != v144; ++ii)
    {
    }
  }

  _Block_object_dispose(&v257, 8);
  free(v263);
  objc_autoreleasePoolPop(v138);
  if ((objc_msgSend_options(p_graph->_graph, v158, v159, v160, v161, v162, v163, v164) & 0x10) != 0)
  {
    if (v137)
    {
      v171 = *(*p_graph->_graphResultImages._items + 4);
      if (v171)
      {
        sub_239BE215C(*(v171 + 104), v165, "\nLegend:\n\tFilterNodeType[filter.index] {src.width x src.height x src.featureChannels src.format}[src.index] ->\n\t\t{dest.width x dest.height x dest.featureChannels dest.format}[dest.index] offset: destinationFeatureChannelOffset\n=============================================================================================================\n");
      }
    }
  }

  v245[0] = 0;
  v245[1] = v245;
  v245[2] = 0x2020000000;
  v245[3] = 0;
  v257 = MEMORY[0x277D85DD0];
  v258 = 3221225472;
  v259 = sub_239C12608;
  v260 = &unk_278B2F140;
  v261 = v83;
  v262 = v92;
  BYTE8(v264) = isKindOfClass & 1;
  v263 = commandBuffer;
  *&v264 = v245;
  *&v274 = &v257;
  v172 = p_graph->_graphResultImages._count;
  if (v172)
  {
    for (jj = 0; jj != v172; ++jj)
    {
      v174 = p_graph->_graphResultImages._items[jj];
      if (!v267[*(v174 + 8)])
      {
        v165 = *(v174 + 4);
        if (v165)
        {
          sub_239C190CC(&v267, v165);
        }
      }
    }
  }

  if (intermediateImages)
  {
    v175 = p_graph->_graphIntermediateImages._count;
    if (v175)
    {
      for (kk = 0; kk != v175; ++kk)
      {
        v177 = objc_msgSend_objectAtIndexedSubscript_(v83, v165, *(p_graph->_graphIntermediateImages._items[kk] + 8), v166, v167, v168, v169, v170, v230);
        objc_msgSend_addObject_(intermediateImages, v178, v177, v179, v180, v181, v182, v183);
      }
    }
  }

  if (destinationStates)
  {
    v184 = p_graph->_graphResultStates._count;
    if (v184)
    {
      for (mm = 0; mm != v184; ++mm)
      {
        v186 = objc_msgSend_objectAtIndexedSubscript_(v92, v165, *(p_graph->_graphResultStates._items[mm] + 8), v166, v167, v168, v169, v170, v230);
        objc_msgSend_addObject_(destinationStates, v187, v186, v188, v189, v190, v191, v192);
      }
    }
  }

  if (p_graph->_cpuUpdateSem)
  {
    v193 = p_graph->_graph;
    v244[0] = MEMORY[0x277D85DD0];
    v244[1] = 3221225472;
    v244[2] = sub_239C12830;
    v244[3] = &unk_278B2F160;
    v244[4] = p_graph;
    objc_msgSend_addCompletedHandler_(commandBuffer, v194, v244, v195, v196, v197, v198, v199);
  }

  v200 = *p_graph->_graphResultImages._items;
  if (*(v200 + 80) == 1)
  {
    v201 = objc_msgSend_objectAtIndexedSubscript_(v83, v165, *(v200 + 8), v166, v167, v168, v169, v170);
  }

  else
  {
    v201 = 0;
  }

  _Block_object_dispose(v245, 8);
  free(v267);
  free(v268);
  objc_autoreleasePoolPop(context);
  return v201;
}

- (MPSImageBatch)encodeBatchToCommandBuffer:(id)commandBuffer sourceImages:(NSArray *)sourceImages sourceStates:(NSArray *)sourceStates intermediateImages:(NSMutableArray *)intermediateImages destinationStates:(NSMutableArray *)destinationStates
{
  if ((*(&self->super.super.isa + *MEMORY[0x277CD7378]) & 1) == 0)
  {
    if (!commandBuffer && MTLReportFailureTypeEnabled())
    {
      v225 = objc_opt_class();
      v257 = NSStringFromClass(v225);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x178, @"[%@ encodeBatchToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: command buffer may no be nil\n", v226, v227, v228, v229);
    }

    if (!sourceImages && MTLReportFailureTypeEnabled())
    {
      v230 = objc_opt_class();
      v257 = NSStringFromClass(v230);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x17D, @"[%@ encodeBatchToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages may no be nil\n", v231, v232, v233, v234);
    }

    v18 = objc_msgSend_count(sourceImages, a2, commandBuffer, sourceImages, sourceStates, intermediateImages, destinationStates, v7, v257);
    if (v18 != self->_graph._graphSourceImages._count && MTLReportFailureTypeEnabled())
    {
      v235 = objc_opt_class();
      v236 = NSStringFromClass(v235);
      v261 = v18;
      count = self->_graph._graphSourceImages._count;
      v257 = v236;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x185, @"[%@ encodeBatchToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: number of source images (%lu) does not match the number needed for the graph (%lu)\n\tYou may be thinking that this array is for handling every image in your library at once.\n\tHowever, actually this array is here to handle graphs and sub-graphs that take multiple different image nodes at different places in the graph.\n\tIf you do want to process multiple images concurrently, you can batch up multiple images in the same MPSImage.\n\t See MPSImage.numberOfImages\n", v237, v238, v239, v240);
    }

    if (v18)
    {
      v19 = 0;
      v269 = v18;
      objc_msgSend_objectAtIndexedSubscript_(sourceImages, v11, 0, v13, v14, v15, v16, v17, v257);
      while (1)
      {
        if (!objc_msgSend_objectAtIndexedSubscript_(sourceImages, v20, v19, v21, v22, v23, v24, v25) && MTLReportFailureTypeEnabled())
        {
          v91 = objc_opt_class();
          v258 = NSStringFromClass(v91);
          v261 = v19;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x18C, @"[%@ encodeBatchToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages[%lu] is nil", v92, v93, v94, v95);
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v26, v19, v27, v28, v29, v30, v31, v258);
        objc_opt_class();
        objc_opt_isKindOfClass();
        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v32, v19, v33, v34, v35, v36, v37);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
        {
          v96 = objc_opt_class();
          v259 = NSStringFromClass(v96);
          v261 = v19;
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x190, @"[%@ encodeBatchToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages[%lu] is not a array of MPSImage", v97, v98, v99, v100);
        }

        v44 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v38, v19, v39, v40, v41, v42, v43, v259);
        v52 = objc_msgSend_count(v44, v45, v46, v47, v48, v49, v50, v51);
        v59 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v53, v19, v54, v55, v56, v57, v58);
        if (v52)
        {
          v60 = v59;
          for (i = 0; i != v52; ++i)
          {
            if (!v60 && MTLReportFailureTypeEnabled())
            {
              v81 = objc_opt_class();
              v261 = v19;
              count = i;
              v257 = NSStringFromClass(v81);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x199, @"[%@ encodeBatchToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages[%lu][%lu] is nil", v82, v83, v84, v85);
            }

            objc_msgSend_objectAtIndexedSubscript_(v60, v11, i, v13, v14, v15, v16, v17, v257, v261, count);
            objc_opt_class();
            objc_opt_isKindOfClass();
            objc_msgSend_objectAtIndexedSubscript_(v60, v62, i, v63, v64, v65, v66, v67);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 && MTLReportFailureTypeEnabled())
            {
              v86 = objc_opt_class();
              v261 = v19;
              count = i;
              v260 = NSStringFromClass(v86);
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x19D, @"[%@ encodeBatchToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceImages[%lu][%lu] is not a MPSImage", v87, v88, v89, v90);
            }

            v276 = 0;
            v274 = 0u;
            v275 = 0u;
            v273 = 0u;
            v74 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v68, v19, v69, v70, v71, v72, v73, v260);
            objc_msgSend_objectAtIndexedSubscript_(v74, v75, i, v76, v77, v78, v79, v80);
            MTLPixelFormatGetInfoForDevice();
            if (MTLReportFailureTypeEnabled())
            {
              v257 = v19;
              v261 = v273;
              MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x1A1, @"[MPSNNGraph encodeToCommandBuffer:sourceImages:sourceStates:intermediateImages:destinationStates:] error: source images must currently be type compatible with half float texture loads.\n\tSource image [%lu] has pixel format %s", v14, v15, v16, v17);
            }
          }
        }

        if (++v19 == v269)
        {
          break;
        }

        objc_msgSend_objectAtIndexedSubscript_(sourceImages, v11, v19, v13, v14, v15, v16, v17, v257);
      }
    }

    if (sourceStates)
    {
      v107 = objc_msgSend_count(sourceStates, v11, v12, v13, v14, v15, v16, v17);
      if (v107 != self->_graph._graphSourceStates._count && MTLReportFailureTypeEnabled())
      {
        v246 = objc_opt_class();
        v247 = NSStringFromClass(v246);
        v261 = v107;
        count = self->_graph._graphSourceStates._count;
        v257 = v247;
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x1AE, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: number of source states (%lu) does not match the number needed for the graph (%lu)\n", v248, v249, v250, v251);
      }

      if (v107)
      {
        for (j = 0; j != v107; ++j)
        {
          objc_msgSend_objectAtIndexedSubscript_(sourceStates, v101, j, v102, v103, v104, v105, v106, v257, v261, count);
          if (!objc_msgSend_objectAtIndexedSubscript_(sourceStates, v109, j, v110, v111, v112, v113, v114) && MTLReportFailureTypeEnabled())
          {
            v115 = objc_opt_class();
            v257 = NSStringFromClass(v115);
            v261 = j;
            MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x1B5, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: sourceStates[%lu] is nil", v116, v117, v118, v119);
          }
        }
      }
    }

    else if (self->_graph._graphSourceStates._count && MTLReportFailureTypeEnabled())
    {
      v252 = objc_opt_class();
      v257 = NSStringFromClass(v252);
      v261 = self->_graph._graphSourceStates._count;
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x1BB, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: %lu MPSStateBatches expected as input. nil was passed.", v253, v254, v255, v256);
    }

    if (!self->_destinationImageAllocator && MTLReportFailureTypeEnabled())
    {
      v241 = objc_opt_class();
      v257 = NSStringFromClass(v241);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x1BF, @"[%@ encodeToCommandBuffer:sourceImages:sourceState:destinationImage:destinationStates:] Error: destination image allocator may not be nil\n", v242, v243, v244, v245);
    }
  }

  outputStateIsTemporary = self->_outputStateIsTemporary;
  format = self->_format;
  destinationImageAllocator = self->_destinationImageAllocator;
  v263 = objc_autoreleasePoolPush();
  v126 = self->_graph._images._count;
  if (v126)
  {
    graphNull = self->_graph._graphNull;
    v128 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v120, self->_graph._images._count, v121, v122, v123, v124, v125);
    if (v128)
    {
      do
      {
        objc_msgSend_addObject_(v128, v120, graphNull, v121, v122, v123, v124, v125, v257, v261);
        --v126;
      }

      while (v126);
    }

    v129 = self->_graph._states._count;
    if (v129)
    {
      goto LABEL_44;
    }

LABEL_48:
    v137 = 0;
    goto LABEL_49;
  }

  v128 = 0;
  v129 = self->_graph._states._count;
  if (!v129)
  {
    goto LABEL_48;
  }

LABEL_44:
  v130 = self->_graph._graphNull;
  v137 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v120, v129, v121, v122, v123, v124, v125, v257);
  if (v137)
  {
    do
    {
      objc_msgSend_addObject_(v137, v131, v130, v132, v133, v134, v135, v136);
      --v129;
    }

    while (v129);
  }

LABEL_49:
  objc_opt_class();
  v138 = commandBuffer;
  isKindOfClass = objc_opt_isKindOfClass();
  v145 = self->_graph._graphSourceImages._count;
  if (v145)
  {
    for (k = 0; k != v145; ++k)
    {
      v147 = self->_graph._graphSourceImages._items[k];
      v148 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, v139, k, v140, v141, v142, v143, v144, v257);
      objc_msgSend_setObject_atIndexedSubscript_(v128, v149, v148, *(v147 + 8), v150, v151, v152, v153);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v154 = *(v147 + 9) + *(v147 + 80);
        v139 = (v154 - 1);
        if (v154 != 1)
        {
          MPSImageBatchIncrementReadCount(v148, v139);
        }
      }
    }
  }

  v155 = self->_graph._graphSourceStates._count;
  if (v155)
  {
    for (m = 0; m != v155; ++m)
    {
      v157 = self->_graph._graphSourceStates._items[m];
      v158 = objc_msgSend_objectAtIndexedSubscript_(sourceStates, v139, m, v140, v141, v142, v143, v144, v257);
      objc_msgSend_setObject_atIndexedSubscript_(v137, v159, v158, *(v157 + 8), v160, v161, v162, v163);
      v164 = *(v157 + 9) + *(v157 + 80);
      v139 = (v164 - 1);
      if (v164 != 1)
      {
        MPSStateBatchIncrementReadCount(v158, v139);
      }
    }
  }

  v305 = 0u;
  v304 = 0u;
  v303 = 0u;
  v165 = self->_graph._images._count;
  p_graph = &self->_graph;
  v301 = v165;
  v166 = self->_graph._states._count;
  v306 = 0;
  v302 = v166;
  v298 = malloc_type_calloc(v165, 1uLL, 0x100004077774924uLL);
  v299 = malloc_type_calloc(v166, 1uLL, 0x100004077774924uLL);
  v297[0] = 0;
  v297[1] = v297;
  v297[2] = 0x2020000000;
  v297[3] = 0;
  v296[0] = 0;
  v296[1] = v296;
  v296[2] = 0x2020000000;
  v296[3] = 0;
  v294[4] = v137;
  v295[0] = MEMORY[0x277D85DD0];
  v295[1] = 3221225472;
  v295[2] = sub_239C1286C;
  v295[3] = &unk_278B2F188;
  v295[4] = v128;
  *&v304 = v295;
  v294[0] = MEMORY[0x277D85DD0];
  v294[1] = 3221225472;
  v294[2] = sub_239C12980;
  v294[3] = &unk_278B2F188;
  *(&v304 + 1) = v294;
  v167 = objc_autoreleasePoolPush();
  v286 = 0;
  v287 = &v286;
  v288 = 0x4812000000;
  v289 = sub_239C122DC;
  v290 = sub_239C122F0;
  v291 = &unk_239DC72C3;
  v293 = xmmword_239D7DE50;
  v292 = malloc_type_malloc(0x10uLL, 0x80040B8603338uLL);
  v168 = self->_graph._graphNull;
  *&v273 = MEMORY[0x277D85DD0];
  *(&v273 + 1) = 3221225472;
  *&v274 = sub_239C129D0;
  *(&v274 + 1) = &unk_278B2F1B0;
  *&v275 = v128;
  *(&v275 + 1) = v168;
  v283 = &self->_graph;
  v284 = format;
  v276 = v138;
  v277 = destinationImageAllocator;
  v280 = &v286;
  v281 = v297;
  v282 = v296;
  v278 = v137;
  v279 = v168;
  v285 = outputStateIsTemporary;
  *&v305 = &v273;
  v169 = self->_graph._graphResultImages._count;
  if (v169)
  {
    for (n = 0; n != v169; ++n)
    {
      v171 = self->_graph._graphResultImages._items[n];
      if (!v298[*(v171 + 8)])
      {
        v172 = *(v171 + 4);
        if (v172)
        {
          sub_239C19438(&v298, v172);
        }
      }
    }
  }

  bzero(v298, v301);
  if (v299)
  {
    bzero(v299, v302);
  }

  MPSAutoCache::PrefetchHeapSize();
  v173 = *(v287 + 56);
  if (v173)
  {
    v174 = objc_alloc(MEMORY[0x277CBEA60]);
    v180 = objc_msgSend_initWithObjects_count_(v174, v175, *(v287 + 48), v173, v176, v177, v178, v179);
    objc_msgSend_prefetchStorageWithCommandBuffer_imageDescriptorList_(MEMORY[0x277CD72A8], v181, v138, v180, v182, v183, v184, v185);

    for (ii = 0; ii != v173; ++ii)
    {
    }
  }

  _Block_object_dispose(&v286, 8);
  free(v292);
  objc_autoreleasePoolPop(v167);
  if ((objc_msgSend_options(self->_graph._graph, v187, v188, v189, v190, v191, v192, v193) & 0x10) != 0)
  {
    v200 = *(*self->_graph._graphResultImages._items + 4);
    if (v200)
    {
      sub_239BE215C(*(v200 + 104), v194, "\nLegend:\n\tFilterNodeType[filter.index] {src.width x src.height x src.featureChannels src.format}[src.index] ->\n\t\t{dest.width x dest.height x dest.featureChannels dest.format}[dest.index] offset: destinationFeatureChannelOffset\n=============================================================================================================\n");
    }
  }

  v272[0] = 0;
  v272[1] = v272;
  v272[2] = 0x2020000000;
  v272[3] = 0;
  v286 = MEMORY[0x277D85DD0];
  v287 = 3221225472;
  v288 = sub_239C12E98;
  v289 = &unk_278B2F1D8;
  v290 = v128;
  v291 = v137;
  BYTE8(v293) = isKindOfClass & 1;
  v292 = v138;
  *&v293 = v272;
  *&v305 = &v286;
  v201 = self->_graph._graphResultImages._count;
  if (v201)
  {
    for (jj = 0; jj != v201; ++jj)
    {
      v203 = self->_graph._graphResultImages._items[jj];
      if (!v298[*(v203 + 8)])
      {
        v194 = *(v203 + 4);
        if (v194)
        {
          sub_239C19438(&v298, v194);
        }
      }
    }
  }

  if (intermediateImages)
  {
    v204 = self->_graph._graphIntermediateImages._count;
    if (v204)
    {
      for (kk = 0; kk != v204; ++kk)
      {
        v206 = objc_msgSend_objectAtIndexedSubscript_(v128, v194, *(self->_graph._graphIntermediateImages._items[kk] + 8), v195, v196, v197, v198, v199, v257);
        objc_msgSend_addObject_(intermediateImages, v207, v206, v208, v209, v210, v211, v212);
      }
    }
  }

  if (destinationStates)
  {
    v213 = self->_graph._graphResultStates._count;
    if (v213)
    {
      for (mm = 0; mm != v213; ++mm)
      {
        v215 = objc_msgSend_objectAtIndexedSubscript_(v137, v194, *(self->_graph._graphResultStates._items[mm] + 8), v195, v196, v197, v198, v199, v257);
        objc_msgSend_addObject_(destinationStates, v216, v215, v217, v218, v219, v220, v221);
      }
    }
  }

  v222 = *self->_graph._graphResultImages._items;
  if (*(v222 + 80) == 1)
  {
    v223 = objc_msgSend_objectAtIndexedSubscript_(v128, v194, *(v222 + 8), v195, v196, v197, v198, v199);
  }

  else
  {
    v223 = 0;
  }

  _Block_object_dispose(v272, 8);
  _Block_object_dispose(v296, 8);
  _Block_object_dispose(v297, 8);
  free(v298);
  free(v299);
  objc_autoreleasePoolPop(v263);
  return v223;
}

- (id)debugDescription
{
  destinationImageAllocator = self->_destinationImageAllocator;
  if (destinationImageAllocator)
  {
    v10 = objc_msgSend_debugDescription(destinationImageAllocator, a2, v2, v3, v4, v5, v6, v7);
    if (v10)
    {
      v17 = objc_msgSend_cStringUsingEncoding_(v10, v11, 1, v12, v13, v14, v15, v16);
    }

    else
    {
      v17 = "<no description>";
    }
  }

  else
  {
    v17 = "<nil>";
  }

  Name = MPSImageFeatureChannelFormatGetName();
  v19 = MEMORY[0x277CCACA8];
  v47.receiver = self;
  v47.super_class = MPSNNGraph;
  v20 = [(MPSKernel *)&v47 debugDescription];
  outputStateIsTemporary = self->_outputStateIsTemporary;
  resultIsNeeded = self->_resultIsNeeded;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v58 = 0;
  v59 = &v58;
  v60 = 0x3052000000;
  v61 = sub_239C130DC;
  v62 = sub_239C130EC;
  v23 = objc_alloc(MEMORY[0x277CCACA8]);
  p_graph = &self->_graph;
  v63 = objc_msgSend_initWithFormat_(v23, v24, &stru_284CE28E0, v25, v26, v27, v28, v29);
  v57 = 0;
  v56 = 0u;
  v55 = 0u;
  v54 = 0u;
  count = self->_graph._images._count;
  v51 = p_graph;
  v52 = count;
  v32 = self->_graph._states._count;
  v53 = p_graph->_states._count;
  v49 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  v50 = malloc_type_calloc(v32, 1uLL, 0x100004077774924uLL);
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = sub_239C130F8;
  v48[3] = &unk_278B2F200;
  v48[4] = &v58;
  v48[5] = &v64;
  v48[6] = p_graph;
  *&v56 = v48;
  v33 = p_graph->_graphResultImages._count;
  if (v33)
  {
    for (i = 0; i != v33; ++i)
    {
      v35 = p_graph->_graphResultImages._items[i];
      if (!*(v49 + *(v35 + 8)))
      {
        v36 = *(v35 + 4);
        if (v36)
        {
          sub_239C197A4(&v49, v36);
        }
      }
    }
  }

  if (v65[3])
  {
    v37 = v59[5];
  }

  else
  {
    v37 = @"<no filters>";
  }

  if (resultIsNeeded)
  {
    v38 = "YES";
  }

  else
  {
    v38 = "NO";
  }

  if (outputStateIsTemporary)
  {
    v39 = "YES";
  }

  else
  {
    v39 = "NO";
  }

  free(v49);
  free(v50);
  _Block_object_dispose(&v58, 8);
  _Block_object_dispose(&v64, 8);
  return objc_msgSend_stringWithFormat_(v19, v40, @"%@\n\toutputStateIsTemporary:              %s\n\tdestinatonImageAllocator:            %s\n\tdefault intermediate storage foramt: %s\n\tresult is needed:                    %s\n\tlist of nodes:\n\n\t\t(Note: missing nodes have been optimized away.)\n\t%@", v41, v42, v43, v44, v45, v20, v39, v17, Name, v38, v37);
}

- (void)encodeWithCoder:(id)coder
{
  *(&self->super.super.isa + *MEMORY[0x277CD7358] + 2) = 1;
  v142.receiver = self;
  v142.super_class = MPSNNGraph;
  [(MPSKernel *)&v142 encodeWithCoder:?];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_msgSend_encodeObject_forKey_(coder, v7, v6, @"MPSNNGraphc", v8, v9, v10, v11);
  objc_msgSend_encodeObject_forKey_(coder, v12, self->_destinationImageAllocator, @"MPSNNGraphA", v13, v14, v15, v16);
  objc_msgSend_encodeInteger_forKey_(coder, v17, self->_format, @"MPSNNGraphFI", v18, v19, v20, v21);
  objc_msgSend_encodeBool_forKey_(coder, v22, self->_resultIsNeeded, @"MPSNNGraphResultIsNeeded", v23, v24, v25, v26);
  objc_msgSend_encodeBool_forKey_(coder, v27, self->_outputStateIsTemporary, @"MPSNNGraphOutputStateIsTemporary", v28, v29, v30, v31);
  p_graph = &self->_graph;
  count = self->_graph._filters._count;
  v34 = objc_autoreleasePoolPush();
  v47 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v35, count, v36, v37, v38, v39, v40);
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v49 = objc_msgSend_wrapperWithFilterNode_(FilterNodeWrapper, v41, p_graph->_filters._items[i], v42, v43, v44, v45, v46);
      objc_msgSend_setObject_atIndexedSubscript_(v47, v50, v49, i, v51, v52, v53, v54);
    }
  }

  objc_msgSend_encodeObject_forKey_(coder, v41, v47, @"MPSNNGraph.filterNodes", v43, v44, v45, v46);
  objc_autoreleasePoolPop(v34);
  v55 = p_graph->_images._count;
  v56 = objc_autoreleasePoolPush();
  v69 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v57, v55, v58, v59, v60, v61, v62);
  if (v55)
  {
    for (j = 0; j != v55; ++j)
    {
      v71 = objc_msgSend_wrapperWithResource_(ResourceWrapper, v63, p_graph->_images._items[j], v64, v65, v66, v67, v68);
      objc_msgSend_setObject_atIndexedSubscript_(v69, v72, v71, j, v73, v74, v75, v76);
    }
  }

  objc_msgSend_encodeObject_forKey_(coder, v63, v69, @"MPSNNGraph.imageNodes", v65, v66, v67, v68);
  objc_autoreleasePoolPop(v56);
  v77 = p_graph->_states._count;
  v78 = objc_autoreleasePoolPush();
  v91 = objc_msgSend_arrayWithCapacity_(MEMORY[0x277CBEB18], v79, v77, v80, v81, v82, v83, v84);
  if (v77)
  {
    for (k = 0; k != v77; ++k)
    {
      v93 = objc_msgSend_wrapperWithResource_(ResourceWrapper, v85, p_graph->_states._items[k], v86, v87, v88, v89, v90);
      objc_msgSend_setObject_atIndexedSubscript_(v91, v94, v93, k, v95, v96, v97, v98);
    }
  }

  objc_msgSend_encodeObject_forKey_(coder, v85, v91, @"MPSNNGraph.stateNodes", v87, v88, v89, v90);
  objc_autoreleasePoolPop(v78);
  v99 = p_graph->_graphResultImages._count;
  objc_msgSend_encodeInt32_forKey_(coder, v100, v99, @"MPSNNGraph.resultIndexCount", v101, v102, v103, v104);
  v105 = malloc_type_malloc(4 * v99, 0x100004052888210uLL);
  if (v105)
  {
    v111 = v105;
    if (v99)
    {
      items = p_graph->_graphResultImages._items;
      if (v99 == 1)
      {
        v113 = 0;
      }

      else
      {
        v113 = v99 & 0xFFFFFFFFFFFFFFFELL;
        v114 = items + 1;
        v115 = v105 + 1;
        v116 = v99 & 0xFFFFFFFFFFFFFFFELL;
        do
        {
          v117 = bswap32(*(*v114 + 16));
          *(v115 - 1) = bswap32(*(*(v114 - 1) + 16));
          *v115 = v117;
          v114 += 2;
          v115 += 2;
          v116 -= 2;
        }

        while (v116);
        if (v99 == v113)
        {
          goto LABEL_19;
        }
      }

      v118 = v99 - v113;
      v119 = &v105[v113];
      v120 = &items[v113];
      do
      {
        v121 = *v120++;
        *v119++ = bswap32(*(v121 + 64));
        --v118;
      }

      while (v118);
    }

LABEL_19:
    objc_msgSend_encodeBytes_length_forKey_(coder, v106, v105, 4 * v99, @"MPSNNGraph.resultIndices", v108, v109, v110);
    free(v111);
  }

  objc_msgSend_encodeInt32_forKey_(coder, v106, LODWORD(p_graph->_filters._count), @"MPSNNGraph.filterCount", v107, v108, v109, v110);
  objc_msgSend_encodeInt32_forKey_(coder, v122, LODWORD(p_graph->_images._count), @"MPSNNGraph.imageCount", v123, v124, v125, v126);
  objc_msgSend_encodeInt32_forKey_(coder, v127, LODWORD(p_graph->_states._count), @"MPSNNGraph.stateCount", v128, v129, v130, v131);
  v132 = 2 * p_graph->_graphIntermediateImages._count + 2;
  v133 = malloc_type_malloc(v132, 0x1000040BDFB0063uLL);
  v138 = v133;
  if (v133)
  {
    v139 = p_graph->_graphIntermediateImages._count;
    *v133 = bswap32(v139) >> 16;
    if (v139)
    {
      v140 = p_graph->_graphIntermediateImages._items;
      v141 = v133 + 1;
      do
      {
        while (*v140)
        {
          *v141++ = bswap32(*(*v140++ + 32)) >> 16;
          if (!--v139)
          {
            goto LABEL_28;
          }
        }

        *v141++ = -1;
        ++v140;
        --v139;
      }

      while (v139);
    }
  }

  else
  {
    v132 = 0;
  }

LABEL_28:
  objc_msgSend_encodeBytes_length_forKey_(coder, v134, v133, v132, @"MPSNNGraph.exportedImages", v135, v136, v137);
  free(v138);
}

- (MPSNNGraph)initWithCoder:(NSCoder *)aDecoder device:(id)device
{
  v213[2] = *MEMORY[0x277D85DE8];
  v212.receiver = self;
  v212.super_class = MPSNNGraph;
  v5 = [(MPSKernel *)&v212 initWithCoder:aDecoder device:device];
  v6 = v5;
  if (v5)
  {
    if (*(&v5->super.super.isa + *MEMORY[0x277CD7358] + 2) << 16 == 0x10000)
    {
      v7 = objc_autoreleasePoolPush();
      v14 = objc_msgSend_decodeObjectForKey_(aDecoder, v8, @"MPSNNGraphc", v9, v10, v11, v12, v13);
      v15 = NSClassFromString(v14);
      v22 = v15;
      v23 = *MEMORY[0x277CD7378];
      if (*(&v6->super.super.isa + v23))
      {
LABEL_6:
        if (!objc_msgSend_conformsToProtocol_(v15, v16, &unk_284D1B458, v17, v18, v19, v20, v21) || (v31 = objc_msgSend_decodeObjectOfClass_forKey_(aDecoder, v24, v22, @"MPSNNGraphA", v27, v28, v29, v30)) == 0)
        {
          if ((*(&v6->super.super.isa + v23) & 0x10) != 0)
          {
            NSLog(&cfstr_MpsWarningFail.isa);
          }

          v31 = objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v24, v25, v26, v27, v28, v29, v30);
        }

        v6->_destinationImageAllocator = v31;
        v38 = objc_msgSend_decodeIntegerForKey_(aDecoder, v32, @"MPSNNGraphFI", v33, v34, v35, v36, v37);
        v45 = 3;
        if ((v38 - 6) >= 0xFFFFFFFFFFFFFFFBLL)
        {
          v45 = v38;
        }

        v6->_format = v45;
        v6->_resultIsNeeded = 1;
        if (objc_msgSend_containsValueForKey_(aDecoder, v39, @"MPSNNGraphResultIsNeeded", v40, v41, v42, v43, v44))
        {
          v6->_resultIsNeeded = objc_msgSend_decodeBoolForKey_(aDecoder, v46, @"MPSNNGraphResultIsNeeded", v47, v48, v49, v50, v51);
        }

        v6->_outputStateIsTemporary = objc_msgSend_decodeBoolForKey_(aDecoder, v46, @"MPSNNGraphOutputStateIsTemporary", v47, v48, v49, v50, v51);
        v52 = objc_opt_class();
        v53 = objc_autoreleasePoolPush();
        v54 = MEMORY[0x277CBEB98];
        v213[0] = objc_opt_class();
        v213[1] = v52;
        v60 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v55, v213, 2, v56, v57, v58, v59);
        v67 = objc_msgSend_setWithArray_(v54, v61, v60, v62, v63, v64, v65, v66);
        v73 = objc_msgSend_decodeObjectOfClasses_forKey_(aDecoder, v68, v67, @"MPSNNGraph.filterNodes", v69, v70, v71, v72);
        v81 = v73;
        if (v73)
        {
          v82 = objc_msgSend_count(v73, v74, v75, v76, v77, v78, v79, v80);
          v6->_graph._filters._count = 0;
          v6->_graph._filters._storageSize = v82;
          free(v6->_graph._filters._items);
          v83 = malloc_type_malloc(8 * v6->_graph._filters._storageSize, 0x2004093837F09uLL);
          v6->_graph._filters._items = v83;
          if (v83)
          {
            if (v6->_graph._filters._storageSize)
            {
              v90 = 0;
              do
              {
                v91 = objc_msgSend_objectAtIndex_(v81, v84, v90, v85, v86, v87, v88, v89);
                v99 = objc_msgSend_node(v91, v92, v93, v94, v95, v96, v97, v98);
                sub_239C0F98C(&v6->_graph._filters, v99);
                ++v90;
              }

              while (v90 < v6->_graph._filters._storageSize);
            }

            objc_autoreleasePoolPop(v53);
            v100 = objc_opt_class();
            sub_239C137A4(&v6->_graph._images, aDecoder, @"MPSNNGraph.imageNodes", v100);
            v101 = objc_opt_class();
            sub_239C137A4(&v6->_graph._states, aDecoder, @"MPSNNGraph.stateNodes", v101);
            v6->_graph._graph = v6;
            v108 = objc_msgSend_decodeInt32ForKey_(aDecoder, v102, @"MPSNNGraph.filterCount", v103, v104, v105, v106, v107);
            v115 = objc_msgSend_decodeInt32ForKey_(aDecoder, v109, @"MPSNNGraph.imageCount", v110, v111, v112, v113, v114);
            v122 = objc_msgSend_decodeInt32ForKey_(aDecoder, v116, @"MPSNNGraph.stateCount", v117, v118, v119, v120, v121);
            count = v6->_graph._filters._count;
            if (count == v108 && v6->_graph._images._count == v115 && v6->_graph._states._count == v122)
            {
              v130 = objc_msgSend_decodeInt32ForKey_(aDecoder, v123, @"MPSNNGraph.resultIndexCount", v124, v125, v126, v127, v128);
              v136 = v130;
              v137 = v130;
              storageSize = v6->_graph._graphResultImages._storageSize;
              if (!v130)
              {
                if (!storageSize)
                {
                  v154 = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
                  v155 = v154;
                  if (v154)
                  {
                    v156 = v6->_graph._graphResultImages._count;
                    if (v156)
                    {
                      memcpy(v154, v6->_graph._graphResultImages._items, 8 * v156);
                    }

                    free(v6->_graph._graphResultImages._items);
                    v6->_graph._graphResultImages._storageSize = 2;
                    v6->_graph._graphResultImages._items = v155;
                  }

                  else if (MTLReportFailureTypeEnabled())
                  {
                    MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/NodeList.h", 0x4A, @"Out of memory:  Append node failed. This graph is unlikely to produce expected results.", v205, v206, v207, v208);
                  }
                }

                v6->_graph._graphResultImages._count = 1;
                *v6->_graph._graphResultImages._items = 0;
                goto LABEL_54;
              }

              if (storageSize < v130)
              {
                v139 = (v130 + 1) & 0xFFFFFFFFFFFFFFFELL;
                v140 = malloc_type_malloc(8 * v139, 0x2004093837F09uLL);
                v141 = v140;
                if (v140)
                {
                  v142 = v6->_graph._graphResultImages._count;
                  if (v142)
                  {
                    memcpy(v140, v6->_graph._graphResultImages._items, 8 * v142);
                  }

                  free(v6->_graph._graphResultImages._items);
                  v6->_graph._graphResultImages._storageSize = v139;
                  v6->_graph._graphResultImages._items = v141;
                }

                else if (MTLReportFailureTypeEnabled())
                {
                  MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/NodeList.h", 0x4A, @"Out of memory:  Append node failed. This graph is unlikely to produce expected results.", v132, v133, v134, v135);
                }
              }

              v6->_graph._graphResultImages._count = v137;
              v213[0] = 0;
              v143 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v131, @"MPSNNGraph.resultIndices", v213, v132, v133, v134, v135);
              if (v143)
              {
                if (v213[0] < 4uLL)
                {
                  goto LABEL_54;
                }

                if (v213[0] >> 2 >= v137)
                {
                  v145 = v137;
                }

                else
                {
                  v145 = v213[0] >> 2;
                }

                items = v6->_graph._graphResultImages._items;
                if (v145 <= 1)
                {
                  v147 = 1;
                }

                else
                {
                  v147 = v145;
                }

                if (v145 <= 7)
                {
                  v148 = 0;
LABEL_52:
                  v166 = v147 - v148;
                  v167 = &items[v148];
                  v168 = (v143 + 4 * v148);
                  do
                  {
                    v169 = *v168++;
                    *v167++ = bswap32(v169);
                    --v166;
                  }

                  while (v166);
                  goto LABEL_54;
                }

                v148 = v147 & 0x3FFFFFFFFFFFFFF8;
                v157 = (v143 + 16);
                v158 = items + 4;
                v159 = v147 & 0x3FFFFFFFFFFFFFF8;
                do
                {
                  v160 = vrev32q_s8(v157[-1]);
                  v161 = vrev32q_s8(*v157);
                  *&v162 = v160.u32[0];
                  *(&v162 + 1) = v160.u32[1];
                  v163 = v162;
                  *&v162 = v160.u32[2];
                  *(&v162 + 1) = v160.u32[3];
                  v164 = v162;
                  *&v162 = v161.u32[0];
                  *(&v162 + 1) = v161.u32[1];
                  v165 = v162;
                  *&v162 = v161.u32[2];
                  *(&v162 + 1) = v161.u32[3];
                  *(v158 - 2) = v163;
                  *(v158 - 1) = v164;
                  *v158 = v165;
                  v158[1] = v162;
                  v158 += 4;
                  v157 += 2;
                  v159 -= 8;
                }

                while (v159);
                if (v145 != v148)
                {
                  goto LABEL_52;
                }

LABEL_54:
                sub_239C13390(&v6->_graph._graphSourceImages._items);
                v213[0] = 0;
                v175 = objc_msgSend_decodeBytesForKey_returnedLength_(aDecoder, v170, @"MPSNNGraph.exportedImages", v213, v171, v172, v173, v174);
                if (!v175 || !sub_239C13920(&v6->_graph._graphIntermediateImages, v175, v213[0], &v6->_graph._images))
                {
                  v176 = v6->_graph._images._count;
                  v6->_graph._graphIntermediateImages._count = 0;
                  if (v6->_graph._graphIntermediateImages._storageSize)
                  {
                    v177 = malloc_type_malloc(0, 0x2004093837F09uLL);
                    v178 = v177;
                    if (v177)
                    {
                      v179 = v6->_graph._graphIntermediateImages._count;
                      if (v179)
                      {
                        memcpy(v177, v6->_graph._graphIntermediateImages._items, 8 * v179);
                      }

                      free(v6->_graph._graphIntermediateImages._items);
                      v6->_graph._graphIntermediateImages._storageSize = 0;
                      v6->_graph._graphIntermediateImages._items = v178;
                    }

                    else if (MTLReportFailureTypeEnabled())
                    {
                      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/NodeList.h", 0x4A, @"Out of memory:  Append node failed. This graph is unlikely to produce expected results.", v201, v202, v203, v204);
                    }
                  }

                  if (v176)
                  {
                    for (i = 0; i != v176; ++i)
                    {
                      v181 = v6->_graph._images._items[i];
                      if (v181 && *(v181 + 80) == 1 && (*(v181 + 81) & 1) == 0)
                      {
                        sub_239C0F98C(&v6->_graph._graphIntermediateImages, v181);
                      }
                    }
                  }
                }

                if (!v136)
                {
                  goto LABEL_76;
                }

                v182 = v6->_graph._graphResultImages._items;
                if (v136 == 1)
                {
                  v183 = 0;
                }

                else
                {
                  v183 = v137 & 0xFFFFFFFFFFFFFFFELL;
                  v184 = (v182 + 1);
                  v185 = v137 & 0xFFFFFFFFFFFFFFFELL;
                  do
                  {
                    v186 = *v184;
                    *(*(v184 - 1) + 81) = 1;
                    *(v186 + 81) = 1;
                    v184 += 2;
                    v185 -= 2;
                  }

                  while (v185);
                  if (v183 == v137)
                  {
                    goto LABEL_76;
                  }
                }

                v187 = v137 - v183;
                v188 = &v182[v183];
                do
                {
                  v189 = *v188++;
                  *(v189 + 81) = 1;
                  --v187;
                }

                while (v187);
LABEL_76:
                objc_autoreleasePoolPop(v7);
                return v6;
              }

              sub_239BE215C(v6->_graph._graph, v144, "Error: The indices of the returned graph image nodes are missing.");
            }

            else
            {
              sub_239BE215C(v6->_graph._graph, v123, "Warning: Some parts of the encoded graph appear to be missing. \n\t %lu filters, %lu images and %lu states were found.\n\t Expected: %lu filters, %lu images, %lu states\n", count);
            }

            exception = __cxa_allocate_exception(4uLL);
            *exception = 1;
            __cxa_throw(exception, &unk_284CD31F8, 0);
          }

          v209 = -2;
        }

        else
        {
          v209 = -1;
        }

        v210 = __cxa_allocate_exception(4uLL);
        *v210 = v209;
        __cxa_throw(v210, MEMORY[0x277D827C0], 0);
      }

      if (v14)
      {
        if (v15)
        {
          goto LABEL_6;
        }

        if (MTLReportFailureTypeEnabled())
        {
          v196 = objc_opt_class();
          NSStringFromClass(v196);
          MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x21D, @"[%@ initWithCoder:device:] Failed: unable to find class of MPSNNGraph destination image allocator %@ in application.", v197, v198, v199, v200);
        }
      }

      else if (MTLReportFailureTypeEnabled())
      {
        v191 = objc_opt_class();
        NSStringFromClass(v191);
        MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x21C, @"[%@ initWithCoder:device:] Failed: unable to read class of MPSNNGraph destination image allocator.", v192, v193, v194, v195);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      if (MTLReportFailureTypeEnabled())
      {
        v149 = objc_opt_class();
        NSStringFromClass(v149);
        MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x212, @"[%@ initWithCoder:device:] Failed: unsupported file version.", v150, v151, v152, v153);
      }
    }

    return 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone device:(id)device
{
  v65.receiver = self;
  v65.super_class = MPSNNGraph;
  v5 = [(MPSKernel *)&v65 copyWithZone:zone device:device];
  if (!v5)
  {
    return v5;
  }

  v5[38] = self->_destinationImageAllocator;
  v5[39] = self->_format;
  *(v5 + 320) = self->_resultIsNeeded;
  *(v5 + 321) = self->_outputStateIsTemporary;
  p_graph = &self->_graph;
  v5[26] = v5;
  count = self->_graph._filters._count;
  if (v5[29] != count)
  {
    v8 = (count + 1) & 0xFFFFFFFFFFFFFFFELL;
    v9 = malloc_type_malloc(8 * v8, 0x2004093837F09uLL);
    v10 = v9;
    if (v9)
    {
      v11 = v5[28];
      if (v11)
      {
        memcpy(v9, v5[27], 8 * v11);
      }

      free(v5[27]);
      v5[29] = v8;
      v5[27] = v10;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/NodeList.h", 0x4A, @"Out of memory:  Append node failed. This graph is unlikely to produce expected results.", v49, v50, v51, v52);
    }
  }

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v13 = sub_239D38CD0(p_graph->_filters._items[i]);
      sub_239C0F98C((v5 + 27), v13);
    }
  }

  v14 = p_graph->_images._count;
  if (v5[32] != v14)
  {
    v15 = (v14 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v16 = malloc_type_malloc(8 * v15, 0x2004093837F09uLL);
    v17 = v16;
    if (v16)
    {
      v18 = v5[31];
      if (v18)
      {
        memcpy(v16, v5[30], 8 * v18);
      }

      free(v5[30]);
      v5[32] = v15;
      v5[30] = v17;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/NodeList.h", 0x4A, @"Out of memory:  Append node failed. This graph is unlikely to produce expected results.", v53, v54, v55, v56);
    }
  }

  if (v14)
  {
    operator new();
  }

  v19 = p_graph->_states._count;
  if (v5[35] != v19)
  {
    v20 = (v19 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v21 = malloc_type_malloc(8 * v20, 0x2004093837F09uLL);
    v22 = v21;
    if (v21)
    {
      v23 = v5[34];
      if (v23)
      {
        memcpy(v21, v5[33], 8 * v23);
      }

      free(v5[33]);
      v5[35] = v20;
      v5[33] = v22;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/NodeList.h", 0x4A, @"Out of memory:  Append node failed. This graph is unlikely to produce expected results.", v57, v58, v59, v60);
    }
  }

  if (v19)
  {
    operator new();
  }

  v24 = p_graph->_graphResultImages._count;
  if (v5[19] >= v24)
  {
    v5[18] = v24;
    if (!v24)
    {
      v33 = 1;
      goto LABEL_34;
    }
  }

  else
  {
    v25 = (v24 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v26 = malloc_type_malloc(8 * v25, 0x2004093837F09uLL);
    v27 = v26;
    if (v26)
    {
      v28 = v5[18];
      if (v28)
      {
        memcpy(v26, v5[17], 8 * v28);
      }

      free(v5[17]);
      v5[19] = v25;
      v5[17] = v27;
    }

    else if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure(1, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/NodeList.h", 0x4A, @"Out of memory:  Append node failed. This graph is unlikely to produce expected results.", v61, v62, v63, v64);
    }

    v5[18] = v24;
  }

  items = p_graph->_graphResultImages._items;
  v30 = v5[17];
  v31 = v24;
  do
  {
    v32 = *items++;
    *v30++ = *(v32 + 64);
    --v31;
  }

  while (v31);
  v33 = 0;
LABEL_34:
  sub_239C13390(v5 + 11);
  v34 = 2 * p_graph->_graphIntermediateImages._count;
  v35 = malloc_type_malloc(v34 + 2, 0x1000040BDFB0063uLL);
  v36 = v35;
  if (v35)
  {
    v37 = p_graph->_graphIntermediateImages._count;
    *v35 = bswap32(v37) >> 16;
    if (v37)
    {
      v38 = p_graph->_graphIntermediateImages._items;
      v39 = v35 + 1;
      do
      {
        while (*v38)
        {
          *v39++ = bswap32(*(*v38++ + 32)) >> 16;
          if (!--v37)
          {
            goto LABEL_40;
          }
        }

        *v39++ = -1;
        ++v38;
        --v37;
      }

      while (v37);
    }

LABEL_40:
    sub_239C13920((v5 + 20), v35, v34 + 2, (v5 + 30));
    free(v36);
  }

  if ((v33 & 1) == 0)
  {
    v40 = v5[17];
    if (v24 < 2)
    {
      v41 = 0;
LABEL_47:
      v45 = v24 - v41;
      v46 = &v40[8 * v41];
      do
      {
        v47 = *v46++;
        *(v47 + 81) = 1;
        --v45;
      }

      while (v45);
      return v5;
    }

    v41 = v24 & 0xFFFFFFFFFFFFFFFELL;
    v42 = (v40 + 8);
    v43 = v24 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      v44 = *v42;
      *(*(v42 - 1) + 81) = 1;
      *(v44 + 81) = 1;
      v42 += 2;
      v43 -= 2;
    }

    while (v43);
    if (v24 != v41)
    {
      goto LABEL_47;
    }
  }

  return v5;
}

- (MPSImage)executeAsyncWithSourceImages:(NSArray *)sourceImages completionHandler:(MPSNNGraphCompletionHandler)handler
{
  v113[1] = *MEMORY[0x277D85DE8];
  v11 = objc_msgSend_objectAtIndexedSubscript_(sourceImages, a2, 0, handler, v4, v5, v6, v7);
  objc_msgSend_device(v11, v12, v13, v14, v15, v16, v17, v18);
  MPSDevice = MPSDevice::GetMPSDevice();
  Queue = MPSDevice::GetQueue(MPSDevice);
  v35 = objc_msgSend_commandBufferWithUnretainedReferences(Queue, v21, v22, v23, v24, v25, v26, v27);
  v36 = *MEMORY[0x277CD7378];
  if ((*(&self->super.super.isa + v36) & 1) == 0)
  {
    if (self->_outputStateIsTemporary && MTLReportFailureTypeEnabled())
    {
      v92 = objc_opt_class();
      v110 = NSStringFromClass(v92);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x265, @"[%@ executeAsyncWithSourceImages:completionHandler:] Error: outputStateIsTemporary must be set to NO for this method", v93, v94, v95, v96);
    }

    objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v28, v29, v30, v31, v32, v33, v34, v110);
    destinationImageAllocator = self->_destinationImageAllocator;
    if (destinationImageAllocator == objc_msgSend_defaultAllocator(MEMORY[0x277CD72A8], v38, v39, v40, v41, v42, v43, v44) && MTLReportFailureTypeEnabled())
    {
      v97 = objc_opt_class();
      v110 = NSStringFromClass(v97);
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", 0x266, @"[%@ executeAsyncWithSourceImages:completionHandler:] Error: the destinationImageAllocator is set to create a temporary image.\n\tA temporary image only lives as long as the MTLCommandBuffer. Its contents would be invalid by the time you were able to use them.", v98, v99, v100, v101);
    }
  }

  v45 = objc_msgSend_encodeToCommandBuffer_sourceImages_(self, v28, v35, sourceImages, v31, v32, v33, v34, v110);
  v53 = v45;
  if (!v45)
  {
    v80 = objc_autoreleasePoolPush();
    v81 = MEMORY[0x277CCA9B8];
    v112 = *MEMORY[0x277CCA450];
    v113[0] = @"Failed to allocate MPSImage";
    v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, v113, &v112, 1, v83, v84, v85);
    v91 = objc_msgSend_errorWithDomain_code_userInfo_(v81, v87, @"MPSErrorDomain", -5, v86, v88, v89, v90);
    (*(handler + 2))(handler, 0, v91);
    objc_autoreleasePoolPop(v80);
    return v53;
  }

  v54 = objc_msgSend_texture(v45, v46, v47, v48, v49, v50, v51, v52);
  v62 = objc_msgSend_storageMode(v54, v55, v56, v57, v58, v59, v60, v61);
  if ((*(&self->super.super.isa + v36) & 1) == 0)
  {
    if (v62 != 3)
    {
      if (v62 != 2 || !MTLReportFailureTypeEnabled())
      {
        goto LABEL_8;
      }

      v102 = objc_opt_class();
      NSStringFromClass(v102);
      v107 = @"[%@ executeAsyncWithSourceImages:completionHandler:] Error: the output MPSImage.texture may not be MTLStorageModePrivate. Perhaps you made a MPSTemporaryImage instead by mistake? That can't work.";
      v108 = 635;
      goto LABEL_19;
    }

    if (MTLReportFailureTypeEnabled())
    {
      v109 = objc_opt_class();
      NSStringFromClass(v109);
      v107 = @"[%@ executeAsyncWithSourceImages:completionHandler:] Error: the output MPSImage.texture may not be MTLStorageModeMemoryless";
      v108 = 637;
LABEL_19:
      MTLReportFailure(0, "/Library/Caches/com.apple.xbs/Sources/MetalPerformanceShaders/MPSNeuralNetwork/Graph/MPSNNGraph.mm", v108, v107, v103, v104, v105, v106);
    }
  }

LABEL_8:
  v63 = sourceImages;
  v64 = Queue;
  v65 = v53;
  v111[0] = MEMORY[0x277D85DD0];
  v111[1] = 3221225472;
  v111[2] = sub_239C0EE0C;
  v111[3] = &unk_278B2F008;
  v111[7] = handler;
  v111[8] = MPSDevice;
  v111[4] = Queue;
  v111[5] = v53;
  v111[6] = sourceImages;
  objc_msgSend_addCompletedHandler_(v35, v66, v111, v67, v68, v69, v70, v71);
  objc_msgSend_commit(v35, v72, v73, v74, v75, v76, v77, v78);
  return v53;
}

- (void)setOptions:(unint64_t)options
{
  p_graph = &self->_graph;
  count = self->_graph._filters._count;
  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v8 = p_graph->_filters._items[i];
      (*(*v8 + 264))(v8, options);
    }
  }

  *(&self->super.super.isa + *MEMORY[0x277CD7378]) = options;
}

- (void)reloadFromDataSources
{
  p_graph = &self->_graph;
  v18 = 0;
  v17 = 0u;
  v16 = 0u;
  v15 = 0u;
  count = self->_graph._images._count;
  v12 = p_graph;
  v13 = count;
  v14 = p_graph->_states._count;
  v4 = malloc_type_calloc(count, 1uLL, 0x100004077774924uLL);
  v10 = v4;
  v11 = malloc_type_calloc(v14, 1uLL, 0x100004077774924uLL);
  *&v17 = &unk_284CC8BC0;
  v5 = p_graph->_graphResultImages._count;
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = p_graph->_graphResultImages._items[i];
      if (!v10[*(v7 + 8)])
      {
        v8 = *(v7 + 4);
        if (v8)
        {
          sub_239C18ECC(&v10, v8);
        }
      }
    }

    v9 = v10;
  }

  else
  {
    v9 = v4;
  }

  free(v9);
  free(v11);
}

- (id).cxx_construct
{
  p_graph = &self->_graph;
  *&self->_graph._graphSourceImages._count = xmmword_239D7DE50;
  self->_graph._graphSourceImages._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphSourceStates._count = xmmword_239D7DE50;
  p_graph->_graphSourceStates._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphResultImages._count = xmmword_239D7DE50;
  p_graph->_graphResultImages._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphIntermediateImages._count = xmmword_239D7DE50;
  p_graph->_graphIntermediateImages._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_graphResultStates._count = xmmword_239D7DE50;
  p_graph->_graphResultStates._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_filters._count = xmmword_239D7DE50;
  p_graph->_filters._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_images._count = xmmword_239D7DE50;
  p_graph->_images._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  *&p_graph->_states._count = xmmword_239D7DE50;
  p_graph->_states._items = malloc_type_malloc(0x10uLL, 0x2004093837F09uLL);
  v11 = objc_msgSend_null(MEMORY[0x277CBEB68], v4, v5, v6, v7, v8, v9, v10);
  p_graph->_cpuUpdateSem = 0;
  p_graph->_graphNull = v11;
  return self;
}

@end