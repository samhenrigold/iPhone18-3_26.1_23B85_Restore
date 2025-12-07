@interface MPSNDArrayStitchedReduction
- (MPSNDArrayStitchedReduction)initWithDevice:(id)device axis:(unint64_t)axis descriptor:(id)descriptor;
- (double)dimensionsToBeRetained;
- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state;
- (id)getUserDAGInfo;
- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state;
- (void)dealloc;
- (void)setAxes:(id)axes;
- (void)setAxis:(unint64_t)axis;
- (void)setInvariantValueFn:(id)fn;
- (void)setMapFn:(id)fn;
- (void)setReduceFn:(id)fn;
- (void)setWriteFn:(id)fn;
@end

@implementation MPSNDArrayStitchedReduction

- (void)setInvariantValueFn:(id)fn
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  invariantValueFn = self->_invariantValueFn;
  if (invariantValueFn)
  {
  }

  self->_invariantValueFn = [fn copy];
}

- (void)setMapFn:(id)fn
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  mapFn = self->_mapFn;
  if (mapFn)
  {
  }

  self->_mapFn = [fn copy];
}

- (void)setReduceFn:(id)fn
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  reduceFn = self->_reduceFn;
  if (reduceFn)
  {
  }

  self->_reduceFn = [fn copy];
}

- (void)setWriteFn:(id)fn
{
  DAGInfo = self->_DAGInfo;
  if (DAGInfo)
  {
  }

  self->_DAGInfo = 0;
  writeFn = self->_writeFn;
  if (writeFn)
  {
  }

  self->_writeFn = [fn copy];
}

- (void)setAxes:(id)axes
{
  axes = self->_axes;
  if (axes != axes)
  {
    self->_axes = [axes copy];

    if (axes)
    {
      if ([axes count] == 1)
      {
        self->_axis = [objc_msgSend(axes objectAtIndexedSubscript:{0), "unsignedLongValue"}];
      }
    }
  }
}

- (void)setAxis:(unint64_t)axis
{
  v6[1] = *MEMORY[0x277D85DE8];
  self->_axis = axis;

  v5 = objc_alloc(MEMORY[0x277CBEA60]);
  v6[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:axis];
  self->_axes = [v5 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v6, 1)}];
}

- (MPSNDArrayStitchedReduction)initWithDevice:(id)device axis:(unint64_t)axis descriptor:(id)descriptor
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = MPSNDArrayStitchedReduction;
  result = [(MPSNDArrayUnaryKernel *)&v11 initWithDevice:device];
  if (result)
  {
    result->_axis = axis;
    v8 = result;
    v9 = objc_alloc(MEMORY[0x277CBEA60]);
    v12[0] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:axis];
    v8->_axes = [v9 initWithArray:{objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v12, 1)}];
    v8->super.super._encode = EncodeStitchedReduction;
    v8->_DAGInfo = 0;
    v8->_invariantValueFn = [objc_msgSend(descriptor "invariantValueFn")];
    v8->_mapFn = [objc_msgSend(descriptor "mapFn")];
    v8->_reduceFn = [objc_msgSend(descriptor "reduceFn")];
    v8->_writeFn = [objc_msgSend(descriptor "writeFn")];
    stateSize = [descriptor stateSize];
    result = v8;
    v8->_stateSize = stateSize;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MPSNDArrayStitchedReduction;
  [(MPSNDArrayMultiaryBase *)&v3 dealloc];
}

- (id)destinationArrayDescriptorForSourceArrays:(id)arrays sourceState:(id)state
{
  v7.receiver = self;
  v7.super_class = MPSNDArrayStitchedReduction;
  v5 = [(MPSNDArrayMultiaryBase *)&v7 destinationArrayDescriptorForSourceArrays:arrays sourceState:state];
  [(MPSNDArrayDescriptor *)v5 sliceDimension:self->_axis withSubrange:0, 1];
  [(MPSNDArrayDescriptor *)v5 setLengthOfDimension:1 atIndex:self->_axis];
  return v5;
}

- (id)workloadStatisticsForSourceArrays:(id)arrays destArrays:(id)destArrays kernel:(id)kernel kernelDAGObject:(id)object sourceState:(id)state
{
  v46.receiver = self;
  v46.super_class = MPSNDArrayStitchedReduction;
  object = [(MPSNDArrayMultiaryBase *)&v46 workloadStatisticsForSourceArrays:arrays destArrays:destArrays sourceState:state, object];
  if ([arrays count])
  {
    v44 = object;
    kernelCopy = kernel;
    v10 = [arrays count];
    v11 = MEMORY[0x277CD7410];
    if (v10)
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 1;
      do
      {
        v18 = [objc_msgSend(arrays objectAtIndexedSubscript:{v12), "numberOfDimensions"}];
        if (v18)
        {
          v19 = v18;
          v20 = 0;
          v16 = 1;
          do
          {
            v16 *= *([arrays objectAtIndexedSubscript:v12] + *v11 + 4 * (v20++ & 0xF));
          }

          while (v19 != v20);
        }

        else
        {
          v16 = 1;
        }

        v17 = [arrays objectAtIndexedSubscript:v12];
        v13 |= *(v17 + *MEMORY[0x277CD73C8]) == 268435488;
        if (v16 > v15)
        {
          v14 = v12;
          v15 = v16;
        }

        ++v12;
      }

      while (v12 < [arrays count]);
    }

    else
    {
      v14 = 0;
      v13 = 0;
    }

    v21 = [objc_msgSend(arrays objectAtIndexedSubscript:{v14), "numberOfDimensions"}];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = 1;
      do
      {
        v24 *= *([arrays objectAtIndexedSubscript:v14] + *v11 + 4 * (v23++ & 0xF));
      }

      while (v22 != v23);
      v25 = v24;
    }

    else
    {
      v25 = 1.0;
    }

    object = v44;
    [v44 setFloat32Ops:0.0];
    [v44 setFloat16Ops:0.0];
    if (v13)
    {
      [v44 setFloat32Ops:v25];
    }

    else
    {
      [v44 setFloat16Ops:v25];
    }

    [v44 float32Ops];
    v27 = v26;
    [v44 float16Ops];
    v29 = v27 + v28;
    [v44 deviceMemoryBytesRead];
    v31 = v30;
    [v44 deviceMemoryBytesWrite];
    v33 = v29 / (v31 + v32);
    [v44 float16Ops];
    v35 = v34;
    [v44 float32Ops];
    v37 = v36;
    [v44 deviceMemoryBytesRead];
    v39 = v38;
    [v44 deviceMemoryBytesWrite];
    MPSKernel_LogInfo(kernelCopy, v40, v41, v35, v37, v39, v42, *&v33);
  }

  return object;
}

- (double)dimensionsToBeRetained
{
  v1 = (&v3 | *(self + 680) & 0xFLL);
  *&v3 = 0;
  *v1 = 1;
  return *&v3;
}

- (id)getUserDAGInfo
{
  v10 = *MEMORY[0x277D85DE8];
  result = self->_DAGInfo;
  if (!result)
  {
    v3 = objc_autoreleasePoolPush();
    [MEMORY[0x277CBEB18] array];
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = MEMORY[0x277D85DD0];
    v6 = 3221225472;
    v7 = __45__MPSNDArrayStitchedReduction_getUserDAGInfo__block_invoke;
    v8 = &unk_278B04D10;
    v9 = dictionary;
    operator new();
  }

  return result;
}

void *__45__MPSNDArrayStitchedReduction_getUserDAGInfo__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        while (1)
        {
          if (*v11 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *(*(&v10 + 1) + 8 * v7);
          v9 = [v8 specializedName];
          if (![*(a1 + 32) objectForKey:v9])
          {
            break;
          }

          v7 = v7 + 1;
          if (v5 == v7)
          {
            goto LABEL_3;
          }
        }

        [*(a1 + 32) setValue:v8 forKey:v9];
        v7 = v7 + 1;
      }

      while (v5 != v7);
LABEL_3:
      result = [a2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

@end