@interface MLCGPUHelper
+ (id)allocateAndCopyToTemporaryMPSImageBatchForTensor:(id)tensor commandBuffer:(id)buffer batchSize:(unint64_t)size copyingKernel:(id)kernel sourceMTLBuffer:(id)lBuffer MLCDataType:(int)type heapAllocator:(id)allocator;
+ (id)allocateMPSImageBatchForTensor:(id)tensor commandBuffer:(id)buffer kernel:(id)kernel batchSize:(unint64_t)size heapAllocator:(id)allocator imageBatchIsTemporary:(BOOL)temporary;
+ (void)concatChannelsForwardWithParams:(ConcatImageParams)params sourceImageBatch:(id)batch resultImageBatch:(id)imageBatch commandBuffer:(id)buffer device:(id)device deviceIndex:(unint64_t)index;
+ (void)copyMPSImageBatchToMTLBuffer:(id)buffer commandBuffer:(id)commandBuffer sourceImageBatch:(id)batch destinationMTLBuffer:(id)lBuffer MLCDataType:(int)type;
+ (void)copyMTLBufferToMPSImageBatch:(id)batch commandBuffer:(id)buffer sourceMTLBuffer:(id)lBuffer destinationImageBatch:(id)imageBatch MLCDataType:(int)type;
@end

@implementation MLCGPUHelper

+ (void)concatChannelsForwardWithParams:(ConcatImageParams)params sourceImageBatch:(id)batch resultImageBatch:(id)imageBatch commandBuffer:(id)buffer device:(id)device deviceIndex:(unint64_t)index
{
  v11 = *&params.var0;
  paramsCopy = params;
  var2 = params.var2;
  batchCopy = batch;
  imageBatchCopy = imageBatch;
  bufferCopy = buffer;
  deviceCopy = device;
  context = objc_autoreleasePoolPush();
  v16 = (v11 & 0x30000) == 0;
  v17 = WORD2(v11);
  v18 = [batchCopy objectAtIndexedSubscript:0];
  width = [v18 width];

  v20 = [batchCopy objectAtIndexedSubscript:0];
  height = [v20 height];

  v41 = width;
  v23 = width < 9 || height < 9;
  if (v23)
  {
    v24 = 8;
  }

  else
  {
    v24 = 16;
  }

  if (v23)
  {
    v25 = 3;
  }

  else
  {
    v25 = 4;
  }

  v26 = [batchCopy count];
  v27 = (var2 & 3) == 0 && v16;
  v28 = v26 != 1 && v27;
  v45 = bufferCopy;
  v29 = [bufferCopy computeCommandEncoderWithDispatchType:v28];
  v44 = deviceCopy;
  if (v17 > 4)
  {
    [deviceCopy gpuPipelineStatesForwardConcat2DArray];
  }

  else
  {
    [deviceCopy gpuPipelineStatesForwardConcat2D];
  }
  v30 = ;
  v31 = [v30 objectAtIndexedSubscript:index];
  [v29 setComputePipelineState:v31];

  [v29 memoryBarrierWithScope:2];
  if ([batchCopy count])
  {
    v32 = 0;
    v33 = (v24 - 1 + v41) >> v25;
    v34 = (v24 - 1 + height) >> v25;
    do
    {
      v35 = [batchCopy objectAtIndexedSubscript:v32];
      texture = [v35 texture];
      [v29 setTexture:texture atIndex:0];

      var0 = paramsCopy.var0;
      v38 = [imageBatchCopy objectAtIndexedSubscript:v32];
      texture2 = [v38 texture];
      if (var0)
      {
        v40 = 1;
      }

      else
      {
        v40 = 2;
      }

      [v29 setTexture:texture2 atIndex:v40];

      [v29 setBytes:&paramsCopy length:6 atIndex:0];
      v48[0] = v33;
      v48[1] = v34;
      v48[2] = 1;
      v47[0] = v24;
      v47[1] = v24;
      v47[2] = 1;
      [v29 dispatchThreadgroups:v48 threadsPerThreadgroup:v47];
      ++v32;
    }

    while (v32 < [batchCopy count]);
  }

  [v29 endEncoding];
  GPU_clearTemporaryImageBatchReadCount(batchCopy);

  objc_autoreleasePoolPop(context);
}

+ (void)copyMTLBufferToMPSImageBatch:(id)batch commandBuffer:(id)buffer sourceMTLBuffer:(id)lBuffer destinationImageBatch:(id)imageBatch MLCDataType:(int)type
{
  batchCopy = batch;
  bufferCopy = buffer;
  lBufferCopy = lBuffer;
  imageBatchCopy = imageBatch;
  v14 = objc_autoreleasePoolPush();
  v15 = [imageBatchCopy count];
  v16 = [imageBatchCopy objectAtIndexedSubscript:0];
  width = [v16 width];
  v18 = [imageBatchCopy objectAtIndexedSubscript:0];
  v19 = [v18 height] * width;
  v20 = [imageBatchCopy objectAtIndexedSubscript:0];
  v21 = v19 * [v20 featureChannels];

  v22 = GPU_CreateMPSMatrixDesc(v15, v21, 1, type);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:lBufferCopy descriptor:v22];
  [batchCopy encodeBatchToCommandBuffer:bufferCopy sourceMatrix:v23 destinationImages:imageBatchCopy];

  objc_autoreleasePoolPop(v14);
}

+ (void)copyMPSImageBatchToMTLBuffer:(id)buffer commandBuffer:(id)commandBuffer sourceImageBatch:(id)batch destinationMTLBuffer:(id)lBuffer MLCDataType:(int)type
{
  bufferCopy = buffer;
  commandBufferCopy = commandBuffer;
  batchCopy = batch;
  lBufferCopy = lBuffer;
  v14 = objc_autoreleasePoolPush();
  v15 = [batchCopy count];
  v16 = [batchCopy objectAtIndexedSubscript:0];
  width = [v16 width];
  v18 = [batchCopy objectAtIndexedSubscript:0];
  v19 = [v18 height] * width;
  v20 = [batchCopy objectAtIndexedSubscript:0];
  v21 = v19 * [v20 featureChannels];

  v22 = GPU_CreateMPSMatrixDesc(v15, v21, 1, type);
  v23 = [objc_alloc(MEMORY[0x277CD7250]) initWithBuffer:lBufferCopy descriptor:v22];
  [bufferCopy encodeBatchToCommandBuffer:commandBufferCopy sourceImages:batchCopy destinationMatrix:v23];

  objc_autoreleasePoolPop(v14);
}

+ (id)allocateMPSImageBatchForTensor:(id)tensor commandBuffer:(id)buffer kernel:(id)kernel batchSize:(unint64_t)size heapAllocator:(id)allocator imageBatchIsTemporary:(BOOL)temporary
{
  v33 = a2;
  tensorCopy = tensor;
  bufferCopy = buffer;
  kernelCopy = kernel;
  allocatorCopy = allocator;
  descriptor = [tensorCopy descriptor];
  shape = [descriptor shape];
  v19 = [shape count] != 1;

  descriptor2 = [tensorCopy descriptor];
  shape2 = [descriptor2 shape];
  v22 = [shape2 objectAtIndexedSubscript:v19];
  unsignedIntegerValue = [v22 unsignedIntegerValue];

  v36 = 0;
  v37 = unsignedIntegerValue;
  v35 = 0;
  GPU_GetTensorWidthAndHeight(tensorCopy, &v36, &v35);
  if (!size)
  {
    size = [tensorCopy calculateBatchSizeToUse];
  }

  if (unsignedIntegerValue > kMaxFeatureChannelMPSImage && (GPU_AdjustFeatureChannelBeyondMax(&v36, &v35, &v37, 0) & 1) == 0)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCGPUHelper allocateMPSImageBatchForTensor:v33 commandBuffer:tensorCopy kernel:v27 batchSize:? heapAllocator:? imageBatchIsTemporary:?];
    }

    goto LABEL_13;
  }

  descriptor3 = [tensorCopy descriptor];
  dataType = [descriptor3 dataType];

  v26 = dataType - 1;
  if ((dataType - 1) >= 6 || ((0x2Du >> v26) & 1) == 0)
  {
    v27 = +[MLCLog framework];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [MLCGPUHelper allocateMPSImageBatchForTensor:v34 commandBuffer:tensorCopy kernel:v27 batchSize:? heapAllocator:? imageBatchIsTemporary:?];
    }

LABEL_13:
    v29 = MEMORY[0x277CBEBF8];
    goto LABEL_14;
  }

  v27 = [MEMORY[0x277CD7220] imageDescriptorWithChannelFormat:qword_238D45B10[v26] width:v36 height:v35 featureChannels:v37];
  if (allocatorCopy)
  {
    defaultAllocator = allocatorCopy;
  }

  else
  {
    if (temporary)
    {
      v31 = MEMORY[0x277CD72A8];
    }

    else
    {
      v31 = MEMORY[0x277CD7218];
    }

    defaultAllocator = [v31 defaultAllocator];
  }

  v32 = defaultAllocator;
  v29 = [defaultAllocator imageBatchForCommandBuffer:bufferCopy imageDescriptor:v27 kernel:kernelCopy count:size];

LABEL_14:

  return v29;
}

+ (id)allocateAndCopyToTemporaryMPSImageBatchForTensor:(id)tensor commandBuffer:(id)buffer batchSize:(unint64_t)size copyingKernel:(id)kernel sourceMTLBuffer:(id)lBuffer MLCDataType:(int)type heapAllocator:(id)allocator
{
  v9 = *&type;
  lBufferCopy = lBuffer;
  kernelCopy = kernel;
  bufferCopy = buffer;
  v18 = [self allocateMPSImageBatchForTensor:tensor commandBuffer:bufferCopy kernel:kernelCopy batchSize:size heapAllocator:allocator imageBatchIsTemporary:1];
  [self copyMTLBufferToMPSImageBatch:kernelCopy commandBuffer:bufferCopy sourceMTLBuffer:lBufferCopy destinationImageBatch:v18 MLCDataType:v9];

  return v18;
}

+ (void)allocateMPSImageBatchForTensor:(NSObject *)a3 commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:.cold.1(const char *a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 descriptor];
  v7 = [v6 shape];
  v8 = [v7 objectAtIndexedSubscript:1];
  v9 = 138412546;
  v10 = v5;
  v11 = 1024;
  v12 = [v8 intValue];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: featureChannel = %d is not supported on GPU", &v9, 0x12u);
}

+ (void)allocateMPSImageBatchForTensor:(NSObject *)a3 commandBuffer:kernel:batchSize:heapAllocator:imageBatchIsTemporary:.cold.2(const char *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromSelector(a1);
  v6 = [a2 descriptor];
  v7 = 138412546;
  v8 = v5;
  v9 = 1024;
  v10 = [v6 dataType];
  _os_log_error_impl(&dword_238C1D000, a3, OS_LOG_TYPE_ERROR, "%@: Illegal tensor data type:%d", &v7, 0x12u);
}

@end