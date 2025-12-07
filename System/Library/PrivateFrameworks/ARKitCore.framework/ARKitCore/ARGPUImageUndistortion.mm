@interface ARGPUImageUndistortion
- (ARGPUImageUndistortion)init;
- (uint64_t)undistortFisheyeTexture:(float32x4_t)texture withFisheyeIntrinsics:(float32x4_t)intrinsics withFisheyeRadialCoefficients:(float32x4_t)coefficients toRectilinearImage:(__n128)image withRectilinearIntrinsics:(__n128)rectilinearIntrinsics;
- (void)undistortFisheyeImage:(double)image withFisheyeIntrinsics:(double)intrinsics withFisheyeRadialCoefficients:(double)coefficients toRectilinearImage:(double)rectilinearImage withRectilinearIntrinsics:(double)rectilinearIntrinsics;
@end

@implementation ARGPUImageUndistortion

- (ARGPUImageUndistortion)init
{
  v67 = *MEMORY[0x1E69E9840];
  v60.receiver = self;
  v60.super_class = ARGPUImageUndistortion;
  v2 = [(ARGPUImageUndistortion *)&v60 init];
  if (v2)
  {
    v3 = +[ARSharedGPUDevice sharedInstance];
    device = [v3 device];
    device = v2->_device;
    v2->_device = device;

    newCommandQueue = [(MTLDevice *)v2->_device newCommandQueue];
    commandQueue = v2->_commandQueue;
    v2->_commandQueue = newCommandQueue;

    v8 = ARKitCoreBundle([(MTLCommandQueue *)v2->_commandQueue setLabel:@"com.apple.arkit.gpuimageundistortion.queue"]);
    v9 = [v8 URLForResource:@"default" withExtension:@"metallib"];
    v10 = [(MTLDevice *)v2->_device newLibraryWithURL:v9 error:0];
    [v10 setLabel:@"com.apple.arkit.gpuimageundistortion.library"];
    v11 = [v10 newFunctionWithName:@"compute_lut"];
    v12 = v2->_device;
    v59 = 0;
    v13 = [(MTLDevice *)v12 newComputePipelineStateWithFunction:v11 error:&v59];
    v14 = v59;
    lutGenerationPipelineState = v2->_lutGenerationPipelineState;
    v2->_lutGenerationPipelineState = v13;

    if (v2->_lutGenerationPipelineState)
    {
      goto LABEL_12;
    }

    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion init];
    }

    v17 = ARShouldUseLogTypeError_internalOSVersion_46;
    v18 = _ARLogGeneral_41(v16);
    v19 = v18;
    if (v17 == 1)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138543874;
        v62 = v21;
        v63 = 2048;
        v64 = v2;
        v65 = 2112;
        v66 = v14;
        v22 = "%{public}@ <%p>: Failed to create lut pipeline state, error %@";
        v23 = v19;
        v24 = OS_LOG_TYPE_ERROR;
LABEL_10:
        _os_log_impl(&dword_1C241C000, v23, v24, v22, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v25 = objc_opt_class();
      v21 = NSStringFromClass(v25);
      *buf = 138543874;
      v62 = v21;
      v63 = 2048;
      v64 = v2;
      v65 = 2112;
      v66 = v14;
      v22 = "Error: %{public}@ <%p>: Failed to create lut pipeline state, error %@";
      v23 = v19;
      v24 = OS_LOG_TYPE_INFO;
      goto LABEL_10;
    }

LABEL_12:
    v26 = [v10 newFunctionWithName:@"undistort_image_yuv"];
    v27 = [v10 newFunctionWithName:@"undistort_image"];
    v28 = v2->_device;
    v58 = 0;
    v29 = [(MTLDevice *)v28 newComputePipelineStateWithFunction:v26 error:&v58];
    v30 = v58;
    yuvPipelineState = v2->_yuvPipelineState;
    v2->_yuvPipelineState = v29;

    if (v2->_yuvPipelineState)
    {
      goto LABEL_22;
    }

    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion init];
    }

    v33 = ARShouldUseLogTypeError_internalOSVersion_46;
    v34 = _ARLogGeneral_41(v32);
    v35 = v34;
    if (v33 == 1)
    {
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        v36 = objc_opt_class();
        v37 = NSStringFromClass(v36);
        *buf = 138543874;
        v62 = v37;
        v63 = 2048;
        v64 = v2;
        v65 = 2112;
        v66 = v30;
        v38 = "%{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
        v39 = v35;
        v40 = OS_LOG_TYPE_ERROR;
LABEL_20:
        _os_log_impl(&dword_1C241C000, v39, v40, v38, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v41 = objc_opt_class();
      v37 = NSStringFromClass(v41);
      *buf = 138543874;
      v62 = v37;
      v63 = 2048;
      v64 = v2;
      v65 = 2112;
      v66 = v30;
      v38 = "Error: %{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
      v39 = v35;
      v40 = OS_LOG_TYPE_INFO;
      goto LABEL_20;
    }

LABEL_22:
    v42 = v2->_device;
    v57 = v30;
    v43 = [(MTLDevice *)v42 newComputePipelineStateWithFunction:v27 error:&v57];
    v44 = v57;

    rgbPipelineState = v2->_rgbPipelineState;
    v2->_rgbPipelineState = v43;

    if (v2->_rgbPipelineState)
    {
LABEL_32:

      return v2;
    }

    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion init];
    }

    v47 = ARShouldUseLogTypeError_internalOSVersion_46;
    v48 = _ARLogGeneral_41(v46);
    v49 = v48;
    if (v47 == 1)
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138543874;
        v62 = v51;
        v63 = 2048;
        v64 = v2;
        v65 = 2112;
        v66 = v44;
        v52 = "%{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
        v53 = v49;
        v54 = OS_LOG_TYPE_ERROR;
LABEL_30:
        _os_log_impl(&dword_1C241C000, v53, v54, v52, buf, 0x20u);
      }
    }

    else if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
    {
      v55 = objc_opt_class();
      v51 = NSStringFromClass(v55);
      *buf = 138543874;
      v62 = v51;
      v63 = 2048;
      v64 = v2;
      v65 = 2112;
      v66 = v44;
      v52 = "Error: %{public}@ <%p>: Failed to create image undistortion pipeline state, error %@";
      v53 = v49;
      v54 = OS_LOG_TYPE_INFO;
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  return v2;
}

- (void)undistortFisheyeImage:(double)image withFisheyeIntrinsics:(double)intrinsics withFisheyeRadialCoefficients:(double)coefficients toRectilinearImage:(double)rectilinearImage withRectilinearIntrinsics:(double)rectilinearIntrinsics
{
  v42[1] = *MEMORY[0x1E69E9840];
  Width = CVPixelBufferGetWidth(a10);
  Height = CVPixelBufferGetHeight(a10);
  v16 = *a11;
  if (!*a11)
  {
    v41 = *MEMORY[0x1E69660D8];
    v42[0] = MEMORY[0x1E695E0F8];
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
    CVPixelBufferCreate(0, Width, Height, 0x34323076u, v17, a11);

    v16 = *a11;
  }

  v18 = CVPixelBufferGetWidth(v16);
  v19 = CVPixelBufferGetHeight(*a11);
  v31 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:Width height:Height mipmapped:0];
  [v31 setUsage:3];
  v20 = [self[1] newTextureWithDescriptor:v31 iosurface:CVPixelBufferGetIOSurface(a10) plane:0];
  [v20 setLabel:@"com.apple.arkit.gpuimageundistortion.srcY"];
  v30 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:Width >> 1 height:Height >> 1 mipmapped:0];
  [v30 setUsage:1];
  v21 = [self[1] newTextureWithDescriptor:v30 iosurface:CVPixelBufferGetIOSurface(a10) plane:1];
  [v21 setLabel:@"com.apple.arkit.gpuimageundistortion.srcCbCr"];
  v22 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:10 width:v18 height:v19 mipmapped:0];
  [v22 setUsage:3];
  v23 = [self[1] newTextureWithDescriptor:v22 iosurface:CVPixelBufferGetIOSurface(*a11) plane:0];
  [v23 setLabel:@"com.apple.arkit.gpuimageundistortion.dstY"];
  v24 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:30 width:v18 >> 1 height:v19 >> 1 mipmapped:0];
  [v24 setUsage:3];
  v25 = [self[1] newTextureWithDescriptor:v24 iosurface:CVPixelBufferGetIOSurface(*a11) plane:1];
  [v25 setLabel:@"com.apple.arkit.gpuimageundistortion.dstCbCr"];
  v26 = CVBufferRetain(a10);
  v40[0] = v20;
  v40[1] = v21;
  v27 = v20;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v39[0] = v23;
  v39[1] = v25;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  [self undistortFisheyeTexture:v28 withFisheyeIntrinsics:v29 withFisheyeRadialCoefficients:a2 toRectilinearImage:image withRectilinearIntrinsics:{intrinsics, coefficients, rectilinearImage, rectilinearIntrinsics, a8}];

  CVBufferRelease(v26);
}

- (uint64_t)undistortFisheyeTexture:(float32x4_t)texture withFisheyeIntrinsics:(float32x4_t)intrinsics withFisheyeRadialCoefficients:(float32x4_t)coefficients toRectilinearImage:(__n128)image withRectilinearIntrinsics:(__n128)rectilinearIntrinsics
{
  *&v62[16] = rectilinearIntrinsics;
  *&v62[32] = a8;
  *v62 = image;
  v74 = *MEMORY[0x1E69E9840];
  v69 = a2;
  textureCopy = texture;
  intrinsicsCopy = intrinsics;
  v13 = a10;
  coefficientsCopy = coefficients;
  v14 = a11;
  v15 = [v13 count];
  if (!v15 || (v15 = [v13 count], v15 > 2) || (v16 = objc_msgSend(v13, "count"), v15 = objc_msgSend(v14, "count"), v16 != v15))
  {
    if (ARShouldUseLogTypeError_onceToken_46 != -1)
    {
      [ARGPUImageUndistortion undistortFisheyeTexture:withFisheyeIntrinsics:withFisheyeRadialCoefficients:toRectilinearImage:withRectilinearIntrinsics:];
    }

    v43 = ARShouldUseLogTypeError_internalOSVersion_46;
    v44 = _ARLogGeneral_41(v15);
    firstObject = v44;
    if (v43 == 1)
    {
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2048;
        *&buf[14] = self;
        v47 = "%{public}@ <%p>: Incorrect number of input/output textures";
        v48 = firstObject;
        v49 = OS_LOG_TYPE_ERROR;
LABEL_26:
        _os_log_impl(&dword_1C241C000, v48, v49, v47, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      v50 = objc_opt_class();
      v46 = NSStringFromClass(v50);
      *buf = 138543618;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = self;
      v47 = "Error: %{public}@ <%p>: Incorrect number of input/output textures";
      v48 = firstObject;
      v49 = OS_LOG_TYPE_INFO;
      goto LABEL_26;
    }

    v51 = 0;
    goto LABEL_28;
  }

  v57 = [v13 count];
  firstObject = [v14 firstObject];
  width = [firstObject width];
  height = [firstObject height];
  commandBuffer = [*(self + 16) commandBuffer];
  [commandBuffer setLabel:@"com.apple.arkit.gpuimageundistortion.commandBuffer"];
  v20 = *(self + 48);
  if (!v20 || [v20 width] != width || objc_msgSend(*(self + 48), "height") != height || (v21 = vandq_s8(vandq_s8(vceqq_f32(*(self + 80), texture), vceqq_f32(*(self + 64), a2)), vceqq_f32(*(self + 96), intrinsics)), v21.i32[3] = v21.i32[2], (vminvq_u32(v21) & 0x80000000) == 0) || (vminvq_u32(vceqq_f32(*(self + 112), coefficients)) & 0x80000000) == 0 || (v22 = vandq_s8(vandq_s8(vceqq_f32(*(self + 144), *&v62[16]), vceqq_f32(*(self + 128), *v62)), vceqq_f32(*(self + 160), *&v62[32])), v22.i32[3] = v22.i32[2], (vminvq_u32(v22) & 0x80000000) == 0))
  {
    v23 = textureCopy;
    *(self + 64) = v69;
    *(self + 80) = v23;
    *(self + 96) = intrinsicsCopy;
    *(self + 112) = coefficients;
    *(self + 128) = *v62;
    *(self + 144) = *&v62[16];
    *(self + 160) = *&v62[32];
    v24 = *(self + 48);
    if (!v24 || [v24 width] != width || objc_msgSend(*(self + 48), "height") != height)
    {
      v25 = [MEMORY[0x1E69741C0] texture2DDescriptorWithPixelFormat:105 width:width height:height mipmapped:0];
      [v25 setUsage:3];
      v26 = [*(self + 8) newTextureWithDescriptor:v25];
      v27 = *(self + 48);
      *(self + 48) = v26;
    }

    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    [computeCommandEncoder setLabel:@"com.apple.arkit.gpuimageundistortion.lutgeneration"];
    [computeCommandEncoder setComputePipelineState:*(self + 40)];
    *&buf[16] = 0u;
    v73 = 0u;
    *buf = 0u;
    v75 = __invert_f3(*v62);
    *&buf[8] = v75.columns[0].i32[2];
    *&buf[24] = v75.columns[1].i32[2];
    *buf = v75.columns[0].i64[0];
    *&buf[16] = v75.columns[1].i64[0];
    DWORD2(v73) = v75.columns[2].i32[2];
    *&v73 = v75.columns[2].i64[0];
    [computeCommandEncoder setTexture:*(self + 48) atIndex:0];
    [computeCommandEncoder setBytes:&v69 length:48 atIndex:0];
    [computeCommandEncoder setBytes:&coefficientsCopy length:16 atIndex:1];
    [computeCommandEncoder setBytes:buf length:48 atIndex:2];
    threadExecutionWidth = [*(self + 40) threadExecutionWidth];
    v30 = [*(self + 40) maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
    v31 = commandBuffer;
    v32 = width;
    v33 = (threadExecutionWidth + [*(self + 48) width] - 1) / threadExecutionWidth;
    height2 = [*(self + 48) height];
    v65 = v33;
    v66 = (v30 + height2 - 1) / v30;
    width = v32;
    commandBuffer = v31;
    v67 = 1;
    v64[0] = threadExecutionWidth;
    v64[1] = v30;
    v64[2] = 1;
    [computeCommandEncoder dispatchThreadgroups:&v65 threadsPerThreadgroup:v64];
    [computeCommandEncoder endEncoding];
  }

  computeCommandEncoder2 = [commandBuffer computeCommandEncoder];
  [computeCommandEncoder2 setLabel:@"com.apple.arkit.gpuimageundistortion.textureundistort"];
  v36 = 24;
  if (v57 == 1)
  {
    v36 = 32;
  }

  v37 = *(self + v36);
  [computeCommandEncoder2 setComputePipelineState:v37];
  firstObject2 = [v13 firstObject];
  [computeCommandEncoder2 setTexture:firstObject2 atIndex:0];

  if (v57 == 1)
  {
    [computeCommandEncoder2 setTexture:*(self + 48) atIndex:1];
    firstObject3 = [v14 firstObject];
    v40 = computeCommandEncoder2;
    v41 = firstObject3;
    v42 = 2;
  }

  else
  {
    lastObject = [v13 lastObject];
    [computeCommandEncoder2 setTexture:lastObject atIndex:1];

    [computeCommandEncoder2 setTexture:*(self + 48) atIndex:2];
    firstObject4 = [v14 firstObject];
    [computeCommandEncoder2 setTexture:firstObject4 atIndex:3];

    firstObject3 = [v14 lastObject];
    v40 = computeCommandEncoder2;
    v41 = firstObject3;
    v42 = 4;
  }

  [v40 setTexture:v41 atIndex:v42];

  threadExecutionWidth2 = [v37 threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [v37 maxTotalThreadsPerThreadgroup];
  *buf = (width + threadExecutionWidth2 - 1) / threadExecutionWidth2;
  *&buf[8] = (height + maxTotalThreadsPerThreadgroup / threadExecutionWidth2 - 1) / (maxTotalThreadsPerThreadgroup / threadExecutionWidth2);
  v51 = 1;
  *&buf[16] = 1;
  v65 = threadExecutionWidth2;
  v66 = maxTotalThreadsPerThreadgroup / threadExecutionWidth2;
  v67 = 1;
  [computeCommandEncoder2 dispatchThreadgroups:buf threadsPerThreadgroup:&v65];
  [computeCommandEncoder2 endEncoding];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];

LABEL_28:
  return v51;
}

@end