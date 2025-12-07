@interface ACTPanoGPUDownscaler
- (ACTPanoGPUDownscaler)init;
- (ACTPanoGPUDownscaler)initWithContext:(id)context;
- (int)downsample:(__CVBuffer *)downsample to:(__CVBuffer *)to inputBitDepth:(int)depth outputBitDepth:(int)bitDepth;
- (void)dealloc;
@end

@implementation ACTPanoGPUDownscaler

- (void)dealloc
{
  downsampleState = self->_downsampleState;
  self->_downsampleState = 0;

  queue = self->_queue;
  self->_queue = 0;

  device = self->_device;
  self->_device = 0;

  v6.receiver = self;
  v6.super_class = ACTPanoGPUDownscaler;
  [(ACTPanoGPUDownscaler *)&v6 dealloc];
}

- (int)downsample:(__CVBuffer *)downsample to:(__CVBuffer *)to inputBitDepth:(int)depth outputBitDepth:(int)bitDepth
{
  v9 = 10;
  if (depth == 2)
  {
    v10 = 20;
  }

  else
  {
    v10 = 10;
  }

  if (depth == 2)
  {
    v11 = 60;
  }

  else
  {
    v11 = 30;
  }

  if (bitDepth == 2)
  {
    v9 = 20;
  }

  v35 = v9;
  if (bitDepth == 2)
  {
    v12 = 60;
  }

  else
  {
    v12 = 30;
  }

  v36 = v12;
  IOSurface = CVPixelBufferGetIOSurface(downsample);
  v14 = CVPixelBufferGetIOSurface(to);
  v15 = MEMORY[0x277CD7058];
  Width = CVPixelBufferGetWidth(downsample);
  v17 = [v15 texture2DDescriptorWithPixelFormat:v10 width:Width height:CVPixelBufferGetHeight(downsample) mipmapped:0];
  [v17 setUsage:1];
  v37 = [(MTLDevice *)self->_device newTextureWithDescriptor:v17 iosurface:IOSurface plane:0];
  v18 = MEMORY[0x277CD7058];
  v19 = CVPixelBufferGetWidth(downsample) >> 1;
  v20 = [v18 texture2DDescriptorWithPixelFormat:v11 width:v19 height:CVPixelBufferGetHeight(downsample) >> 1 mipmapped:0];

  [v20 setUsage:1];
  v21 = [(MTLDevice *)self->_device newTextureWithDescriptor:v20 iosurface:IOSurface plane:1];
  v22 = MEMORY[0x277CD7058];
  v23 = CVPixelBufferGetWidth(to);
  v24 = [v22 texture2DDescriptorWithPixelFormat:v35 width:v23 height:CVPixelBufferGetHeight(to) mipmapped:0];

  [v24 setUsage:2];
  v25 = [(MTLDevice *)self->_device newTextureWithDescriptor:v24 iosurface:v14 plane:0];
  v26 = MEMORY[0x277CD7058];
  v27 = CVPixelBufferGetWidth(to) >> 1;
  v28 = [v26 texture2DDescriptorWithPixelFormat:v36 width:v27 height:CVPixelBufferGetHeight(to) >> 1 mipmapped:0];

  [v28 setUsage:2];
  v29 = [(MTLDevice *)self->_device newTextureWithDescriptor:v28 iosurface:v14 plane:1];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_downsampleState threadExecutionWidth];
  v31 = [(MTLComputePipelineState *)self->_downsampleState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  commandBuffer = [(MTLCommandQueue *)self->_queue commandBuffer];
  [commandBuffer setLabel:@"Panorama:GPUDownscaler"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:self->_downsampleState];
  [computeCommandEncoder setTexture:v37 atIndex:0];
  [computeCommandEncoder setTexture:v21 atIndex:1];
  [computeCommandEncoder setTexture:v25 atIndex:2];
  [computeCommandEncoder setTexture:v29 atIndex:3];
  v39[0] = [v29 width];
  v39[1] = [v29 height];
  v39[2] = 1;
  v38[0] = threadExecutionWidth;
  v38[1] = v31;
  v38[2] = 1;
  [computeCommandEncoder dispatchThreads:v39 threadsPerThreadgroup:v38];
  [computeCommandEncoder endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

  return 0;
}

- (ACTPanoGPUDownscaler)initWithContext:(id)context
{
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = ACTPanoGPUDownscaler;
  v5 = [(ACTPanoGPUDownscaler *)&v15 init];
  if (v5 && ([contextCopy device], v6 = objc_claimAutoreleasedReturnValue(), device = v5->_device, v5->_device = v6, device, (v8 = v5->_device) != 0) && (v9 = -[MTLDevice newCommandQueue](v8, "newCommandQueue"), queue = v5->_queue, v5->_queue = v9, queue, v5->_queue))
  {
    v11 = [contextCopy computePipelineStateFor:@"downsampleYUV" constants:0];
    downsampleState = v5->_downsampleState;
    v5->_downsampleState = v11;

    v13 = v5;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (ACTPanoGPUDownscaler)init
{
  v15.receiver = self;
  v15.super_class = ACTPanoGPUDownscaler;
  v2 = [(ACTPanoGPUDownscaler *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF6C78]);
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v3 initWithbundle:v4 andOptionalCommandQueue:0];

    device = [v5 device];
    device = v2->_device;
    v2->_device = device;

    v8 = v2->_device;
    if (v8 && (v9 = [(MTLDevice *)v8 newCommandQueue], queue = v2->_queue, v2->_queue = v9, queue, v2->_queue))
    {
      v11 = [v5 computePipelineStateFor:@"downsampleYUV" constants:0];
      downsampleState = v2->_downsampleState;
      v2->_downsampleState = v11;

      v13 = v2;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
    v5 = 0;
  }

  return v13;
}

@end