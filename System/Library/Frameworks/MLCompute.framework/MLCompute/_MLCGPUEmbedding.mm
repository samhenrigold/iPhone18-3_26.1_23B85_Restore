@interface _MLCGPUEmbedding
+ (id)layerWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights inferenceOnly:(BOOL)only;
- (_MLCGPUEmbedding)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights inferenceOnly:(BOOL)only;
@end

@implementation _MLCGPUEmbedding

- (_MLCGPUEmbedding)initWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights inferenceOnly:(BOOL)only
{
  v43[2] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  descriptorCopy = descriptor;
  weightsCopy = weights;
  v42.receiver = self;
  v42.super_class = _MLCGPUEmbedding;
  v12 = [(_MLCGPUEmbedding *)&v42 init];
  v13 = v12;
  if (v12)
  {
    v38 = v12;
    v40 = [MEMORY[0x277CBEBF8] mutableCopy];
    deviceList = [deviceCopy deviceList];
    v15 = [deviceList count];

    if (v15)
    {
      v16 = 0;
      do
      {
        deviceList2 = [deviceCopy deviceList];
        v18 = [deviceList2 objectAtIndexedSubscript:v16];

        v19 = +[MLCEmbeddingGPUDeviceOps deviceOps];
        if (v19)
        {
          deviceMemory = [weightsCopy deviceMemory];
          v21 = [deviceMemory count];

          if (v16 >= v21)
          {
            data = [weightsCopy data];
            bytes = [data bytes];
            data2 = [weightsCopy data];
            v25 = [v18 newBufferWithBytes:bytes length:objc_msgSend(data2 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
            deviceMemory2 = [weightsCopy deviceMemory];
            [deviceMemory2 setObject:v25 atIndexedSubscript:v16];
          }

          if (!only)
          {
            data3 = [weightsCopy data];
            v28 = [v18 newBufferWithLength:objc_msgSend(data3 options:{"length"), +[MLCGPUHelper mtlResourceOptions](MLCGPUHelper, "mtlResourceOptions")}];
            [v19 setGradientForWeights:v28];
          }

          paddingIndex = [descriptorCopy paddingIndex];
          [v19 setPaddingIndex:paddingIndex];

          [v19 setEmbeddingParams:0];
          maximumNorm = [descriptorCopy maximumNorm];

          if (maximumNorm)
          {
            maximumNorm2 = [descriptorCopy maximumNorm];
            v43[0] = maximumNorm2;
            pNorm = [descriptorCopy pNorm];
            v43[1] = pNorm;
            v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
            [v19 setEmbeddingParams:v33];
          }

          [v19 setScaleGradientByFrequency:{objc_msgSend(descriptorCopy, "scalesGradientByFrequency")}];
          [v19 setSourceOfForwardNeededForGradient:1];
          [v19 setResultOfForwardNeededForGradient:0];
          [v40 addObject:v19];
        }

        ++v16;
        deviceList3 = [deviceCopy deviceList];
        v35 = [deviceList3 count];
      }

      while (v16 < v35);
    }

    v36 = [v40 copy];
    v13 = v38;
    v41.receiver = v38;
    v41.super_class = _MLCGPUEmbedding;
    [(_MLCGPULayer *)&v41 setDeviceOps:v36];
  }

  return v13;
}

+ (id)layerWithDevice:(id)device descriptor:(id)descriptor weights:(id)weights inferenceOnly:(BOOL)only
{
  onlyCopy = only;
  weightsCopy = weights;
  descriptorCopy = descriptor;
  deviceCopy = device;
  v13 = [[self alloc] initWithDevice:deviceCopy descriptor:descriptorCopy weights:weightsCopy inferenceOnly:onlyCopy];

  return v13;
}

@end