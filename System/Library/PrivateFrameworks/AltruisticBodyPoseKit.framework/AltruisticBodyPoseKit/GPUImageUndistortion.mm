@interface GPUImageUndistortion
- (GPUImageUndistortion)init;
- (void)undistortFisheyeImage:(float32x4_t)image withFisheyeIntrinsics:(float32x4_t)intrinsics withFisheyeRadialCoefficients:(float32x4_t)coefficients toRectilinearImage:(__n128)rectilinearImage withRectilinearIntrinsics:(__n128)rectilinearIntrinsics;
@end

@implementation GPUImageUndistortion

- (GPUImageUndistortion)init
{
  v21.receiver = self;
  v21.super_class = GPUImageUndistortion;
  v2 = [(GPUImageUndistortion *)&v21 init];
  v3 = MTLCreateSystemDefaultDevice();
  device = v2->_device;
  v2->_device = v3;

  newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
  commandQueue = v2->_commandQueue;
  v2->_commandQueue = newCommandQueue;

  [(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.abpk.gpuimageundistortion.queue"];
  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = [v7 URLForResource:@"default" withExtension:@"metallib"];
  v9 = v2->_device;
  v20 = 0;
  v10 = [(MTLDevice *)v9 newLibraryWithURL:v8 error:&v20];
  v11 = v20;
  library = v2->_library;
  v2->_library = v10;

  v13 = [(MTLLibrary *)v2->_library newFunctionWithName:@"compute_lut"];
  v14 = [(MTLDevice *)v2->_device newComputePipelineStateWithFunction:v13 error:0];
  lutGenerationPipelineState = v2->_lutGenerationPipelineState;
  v2->_lutGenerationPipelineState = v14;

  v16 = [(MTLLibrary *)v2->_library newFunctionWithName:@"undistort_image"];
  v17 = [(MTLDevice *)v2->_device newComputePipelineStateWithFunction:v16 error:0];
  pipelineState = v2->_pipelineState;
  v2->_pipelineState = v17;

  return v2;
}

- (void)undistortFisheyeImage:(float32x4_t)image withFisheyeIntrinsics:(float32x4_t)intrinsics withFisheyeRadialCoefficients:(float32x4_t)coefficients toRectilinearImage:(__n128)rectilinearImage withRectilinearIntrinsics:(__n128)rectilinearIntrinsics
{
  *&v45[16] = rectilinearIntrinsics;
  *&v45[32] = a8;
  *v45 = rectilinearImage;
  v65[1] = *MEMORY[0x277D85DE8];
  imageCopy = image;
  intrinsicsCopy = intrinsics;
  coefficientsCopy = coefficients;
  v61 = a2;
  Width = CVPixelBufferGetWidth(a10);
  Height = CVPixelBufferGetHeight(a10);
  v50 = a11;
  v15 = *a11;
  if (!*a11)
  {
    v64 = *MEMORY[0x277CC4DE8];
    v65[0] = MEMORY[0x277CBEC10];
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v65 forKeys:&v64 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x34323076u, v16, v50);

    v15 = *v50;
  }

  v17 = CVPixelBufferGetWidth(v15);
  v18 = CVPixelBufferGetHeight(*v50);
  pixelBufferAttributes = [*(self + 16) commandBuffer];
  [(__CFDictionary *)pixelBufferAttributes setLabel:@"com.apple.abpk.gpuimageundistortion.commandBuffer"];
  v19 = *(self + 40);
  if (!v19 || [v19 width] != v17 || objc_msgSend(*(self + 40), "height") != v18 || (v20 = vandq_s8(vandq_s8(vceqq_f32(*(self + 64), imageCopy), vceqq_f32(*(self + 48), v61)), vceqq_f32(*(self + 80), intrinsicsCopy)), v20.i32[3] = v20.i32[2], (vminvq_u32(v20) & 0x80000000) == 0) || (vminvq_u32(vceqq_f32(*(self + 96), coefficientsCopy)) & 0x80000000) == 0 || (v21 = vandq_s8(vandq_s8(vceqq_f32(*(self + 128), *&v45[16]), vceqq_f32(*(self + 112), *v45)), vceqq_f32(*(self + 144), *&v45[32])), v21.i32[3] = v21.i32[2], (vminvq_u32(v21) & 0x80000000) == 0))
  {
    v22 = imageCopy;
    v23 = intrinsicsCopy;
    v24 = coefficientsCopy;
    *(self + 48) = v61;
    *(self + 64) = v22;
    *(self + 80) = v23;
    *(self + 96) = v24;
    *(self + 112) = *v45;
    *(self + 128) = *&v45[16];
    *(self + 144) = *&v45[32];
    v25 = *(self + 40);
    if (!v25 || [v25 width] != v17 || objc_msgSend(*(self + 40), "height") != v18)
    {
      v26 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:105 width:v17 height:v18 mipmapped:0, *v45];
      [v26 setUsage:3];
      v27 = [*(self + 8) newTextureWithDescriptor:v26];
      v28 = *(self + 40);
      *(self + 40) = v27;
    }

    computeCommandEncoder = [(__CFDictionary *)pixelBufferAttributes computeCommandEncoder];
    [computeCommandEncoder setLabel:@"com.apple.abpk.gpuimageundistortion.generatelut"];
    [computeCommandEncoder setComputePipelineState:*(self + 32)];
    v58 = 0u;
    v59 = 0u;
    v57 = 0u;
    v66 = __invert_f3(*v45);
    DWORD2(v57) = v66.columns[0].i32[2];
    DWORD2(v58) = v66.columns[1].i32[2];
    *&v57 = v66.columns[0].i64[0];
    *&v58 = v66.columns[1].i64[0];
    DWORD2(v59) = v66.columns[2].i32[2];
    *&v59 = v66.columns[2].i64[0];
    [computeCommandEncoder setTexture:*(self + 40) atIndex:0];
    [computeCommandEncoder setBytes:&v61 length:48 atIndex:0];
    [computeCommandEncoder setBytes:&coefficientsCopy length:16 atIndex:1];
    [computeCommandEncoder setBytes:&v57 length:48 atIndex:2];
    threadExecutionWidth = [*(self + 32) threadExecutionWidth];
    v31 = v18;
    maxTotalThreadsPerThreadgroup = [*(self + 32) maxTotalThreadsPerThreadgroup];
    width = [*(self + 40) width];
    height = [*(self + 40) height];
    v54 = (threadExecutionWidth + width - 1) / threadExecutionWidth;
    v55 = (maxTotalThreadsPerThreadgroup / threadExecutionWidth + height - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth);
    v56 = 1;
    v53[0] = threadExecutionWidth;
    v53[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    v53[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:&v54 threadsPerThreadgroup:v53];
    [computeCommandEncoder endEncoding];

    v18 = v31;
  }

  v47 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0, *v45];
  [v47 setUsage:3];
  v46 = [*(self + 8) newTextureWithDescriptor:v47 iosurface:CVPixelBufferGetIOSurface(a10) plane:0];
  [v46 setLabel:@"com.apple.abpk.gpuimageundistortion.srcY"];
  v49 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  [v49 setUsage:1];
  v35 = [*(self + 8) newTextureWithDescriptor:v49 iosurface:CVPixelBufferGetIOSurface(a10) plane:1];
  [v35 setLabel:@"com.apple.abpk.gpuimageundistortion.srcCbCr"];
  v36 = CVBufferRetain(a10);
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __143__GPUImageUndistortion_undistortFisheyeImage_withFisheyeIntrinsics_withFisheyeRadialCoefficients_toRectilinearImage_withRectilinearIntrinsics___block_invoke;
  v52[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
  v52[4] = v36;
  [(__CFDictionary *)pixelBufferAttributes addCompletedHandler:v52];
  v37 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:10 width:v17 height:v18 mipmapped:0];
  [v37 setUsage:3];
  v38 = [*(self + 8) newTextureWithDescriptor:v37 iosurface:CVPixelBufferGetIOSurface(*v50) plane:0];
  [v38 setLabel:@"com.apple.abpk.gpuimageundistortion.dstY"];
  v39 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:30 width:v17 >> 1 height:v18 >> 1 mipmapped:0];
  [v39 setUsage:3];
  v40 = [*(self + 8) newTextureWithDescriptor:v39 iosurface:CVPixelBufferGetIOSurface(*v50) plane:1];
  [v40 setLabel:@"com.apple.abpk.gpuimageundistortion.dstCbCr"];
  computeCommandEncoder2 = [(__CFDictionary *)pixelBufferAttributes computeCommandEncoder];
  v42 = v18;
  [computeCommandEncoder2 setLabel:@"com.apple.abpk.gpuimageundistortion.settexture"];
  [computeCommandEncoder2 setComputePipelineState:*(self + 24)];
  [computeCommandEncoder2 setTexture:v46 atIndex:0];
  [computeCommandEncoder2 setTexture:v35 atIndex:1];
  [computeCommandEncoder2 setTexture:*(self + 40) atIndex:2];
  [computeCommandEncoder2 setTexture:v38 atIndex:3];
  [computeCommandEncoder2 setTexture:v40 atIndex:4];
  threadExecutionWidth2 = [*(self + 24) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup2 = [*(self + 24) maxTotalThreadsPerThreadgroup];
  *&v57 = (v17 + threadExecutionWidth2 - 1) / threadExecutionWidth2;
  *(&v57 + 1) = (v42 + maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2 - 1) / (maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2);
  *&v58 = 1;
  v54 = threadExecutionWidth2;
  v55 = maxTotalThreadsPerThreadgroup2 / threadExecutionWidth2;
  v56 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:&v57 threadsPerThreadgroup:&v54];
  [computeCommandEncoder2 endEncoding];
  [(__CFDictionary *)pixelBufferAttributes commit];
  [(__CFDictionary *)pixelBufferAttributes waitUntilCompleted];
}

@end