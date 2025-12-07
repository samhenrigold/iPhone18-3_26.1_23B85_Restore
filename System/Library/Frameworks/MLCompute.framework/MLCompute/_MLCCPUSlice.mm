@interface _MLCCPUSlice
+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor;
+ (id)layerWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride;
- (_MLCCPUSlice)initWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride;
@end

@implementation _MLCCPUSlice

+ (id)layerWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride
{
  strideCopy = stride;
  endCopy = end;
  beginCopy = begin;
  deviceCopy = device;
  v14 = [[self alloc] initWithDevice:deviceCopy begin:beginCopy end:endCopy stride:strideCopy];

  return v14;
}

- (_MLCCPUSlice)initWithDevice:(id)device begin:(id)begin end:(id)end stride:(id)stride
{
  v47[1] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  beginCopy = begin;
  endCopy = end;
  strideCopy = stride;
  v12 = MEMORY[0x277CBEBF8];
  v13 = [MEMORY[0x277CBEBF8] mutableCopy];
  v14 = [v12 mutableCopy];
  if ([beginCopy count])
  {
    v15 = 0;
    do
    {
      v16 = [strideCopy objectAtIndexedSubscript:v15];
      integerValue = [v16 integerValue];
      v18 = v14;
      v19 = v13;
      v20 = strideCopy;
      if (integerValue >= 0)
      {
        v21 = integerValue;
      }

      else
      {
        v21 = -integerValue;
      }

      v22 = [endCopy objectAtIndexedSubscript:v15];
      unsignedIntegerValue = [v22 unsignedIntegerValue];
      v24 = [beginCopy objectAtIndexedSubscript:v15];
      v25 = (unsignedIntegerValue + ~[v24 unsignedIntegerValue]) / v21;

      v26 = v25 + 1;
      strideCopy = v20;
      v13 = v19;
      v14 = v18;
      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v26];
      [v18 addObject:v27];

      v28 = MEMORY[0x277CCABB0];
      v29 = [beginCopy objectAtIndexedSubscript:v15];
      v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v29, "unsignedIntegerValue")}];
      [v13 addObject:v30];

      ++v15;
    }

    while (v15 < [beginCopy count]);
  }

  v41 = endCopy;
  v31 = [MEMORY[0x277CBEBF8] mutableCopy];
  memset(v45, 0, sizeof(v45));
  v32 = [MEMORY[0x277CBEA90] dataWithBytes:v45 length:176];
  v33 = [MEMORY[0x277CBEA90] dataWithBytes:v45 length:176];
  v40 = v32;
  v47[0] = v32;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];
  v46 = v33;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  v36 = [MLCSliceCPUDeviceOps deviceOpsWithType:48 params:0 inDeltaData:v34 outDeltaData:v35 weightsDeltaData:0 biasDeltaData:0 weightsMomentumData:0 biasMomentumData:0];

  if (v36)
  {
    [v36 setBegin:v13];
    [v36 setCount:v14];
    [v36 setStride:strideCopy];
    [v31 addObject:v36];
  }

  v37 = [v31 copy];
  v44.receiver = self;
  v44.super_class = _MLCCPUSlice;
  v38 = [(_MLCCPULayer *)&v44 initWithDevice:deviceCopy deviceOps:v37];

  return v38;
}

+ (BOOL)compileWithDevice:(id)device deviceOps:(id)ops sourceTensors:(id)tensors resultTensor:(id)tensor
{
  tensorsCopy = tensors;
  tensorCopy = tensor;
  v10 = [ops objectAtIndexedSubscript:0];
  inDeltaData = [v10 inDeltaData];
  v12 = [inDeltaData objectAtIndexedSubscript:0];
  bytes = [v12 bytes];

  v62 = v10;
  outDeltaData = [v10 outDeltaData];
  v14 = [outDeltaData objectAtIndexedSubscript:0];
  bytes2 = [v14 bytes];

  v61 = [MEMORY[0x277CBEBF8] mutableCopy];
  v59 = tensorCopy;
  descriptor = [tensorCopy descriptor];
  dimensionCount = [descriptor dimensionCount];

  v60 = tensorsCopy;
  if (dimensionCount)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = MEMORY[0x277CCABB0];
      v20 = [tensorsCopy objectAtIndexedSubscript:0];
      descriptor2 = [v20 descriptor];
      stride = [descriptor2 stride];
      v23 = [stride objectAtIndexedSubscript:v17];
      unsignedIntegerValue = [v23 unsignedIntegerValue];
      stride2 = [v62 stride];
      v26 = [stride2 objectAtIndexedSubscript:v17];
      v27 = [v19 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue") * unsignedIntegerValue}];
      [v61 addObject:v27];

      tensorsCopy = v60;
      v28 = [v60 objectAtIndexedSubscript:0];
      descriptor3 = [v28 descriptor];
      stride3 = [descriptor3 stride];
      v31 = [stride3 objectAtIndexedSubscript:v17];
      unsignedIntegerValue2 = [v31 unsignedIntegerValue];
      begin = [v62 begin];
      v34 = [begin objectAtIndexedSubscript:v17];
      v18 += [v34 unsignedIntegerValue] * unsignedIntegerValue2;

      ++v17;
      descriptor4 = [v59 descriptor];
      dimensionCount2 = [descriptor4 dimensionCount];
    }

    while (v17 < dimensionCount2);
  }

  else
  {
    v18 = 0;
  }

  v37 = v62;
  [v62 setBeginOffset:v18];
  [v62 setStride:v61];
  v38 = [v62 count];
  v39 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor5 = [v39 descriptor];
  dataType = [descriptor5 dataType];
  v42 = [tensorsCopy objectAtIndexedSubscript:0];
  descriptor6 = [v42 descriptor];
  LOBYTE(dataType) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes, v38, v61, 0, dataType, [descriptor6 dimensionCount], 0);

  if (dataType)
  {
    v44 = v59;
    descriptor7 = [v59 descriptor];
    shape = [descriptor7 shape];
    descriptor8 = [v59 descriptor];
    stride4 = [descriptor8 stride];
    descriptor9 = [v59 descriptor];
    dataType2 = [descriptor9 dataType];
    descriptor10 = [v59 descriptor];
    LODWORD(dataType2) = CPU_BuildBNNSNDArrayDescriptorRowMajor(bytes2, shape, stride4, 0, dataType2, [descriptor10 dimensionCount], 0);

    if (dataType2)
    {
      objc_opt_class();
      v52 = objc_opt_new();
      v37 = v62;
      [v62 setLayer:v52];

      v53 = 1;
      v54 = v60;
    }

    else
    {
      v53 = 0;
      v54 = v60;
      v37 = v62;
    }

    v55 = v61;
  }

  else
  {
    v55 = v61;
    v53 = 0;
    v44 = v59;
    v54 = v60;
  }

  return v53;
}

@end