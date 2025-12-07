@interface _MRCMetalHybridBinarizer
- (_MRCMetalHybridBinarizer)init;
- (_MRCMetalHybridBinarizer)initWithMetalContext:(id)context error:(id *)error;
- (id)newTextureByBinarizingPixelBuffer:(__CVBuffer *)buffer error:(id *)error;
@end

@implementation _MRCMetalHybridBinarizer

- (id)newTextureByBinarizingPixelBuffer:(__CVBuffer *)buffer error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if (PixelFormatType != 875704422 && PixelFormatType != 1278226488 && PixelFormatType != 875704438)
  {
    return 0;
  }

  if (CVPixelBufferIsPlanar(buffer))
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(buffer, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(buffer, 0);
  }

  else
  {
    WidthOfPlane = CVPixelBufferGetWidth(buffer);
    HeightOfPlane = CVPixelBufferGetHeight(buffer);
  }

  v9 = HeightOfPlane;
  IOSurface = CVPixelBufferGetIOSurface(buffer);
  if (!IOSurface)
  {
    return 0;
  }

  v11 = [(_MRCMetalContext *)self->_metalContext newTextureByBindingIOSurface:IOSurface pixelFormat:13 width:WidthOfPlane height:v9 usage:1 plane:0 error:0];
  if (v11)
  {
    v12 = (WidthOfPlane + 7) >> 3;
    v13 = (v9 + 7) >> 3;
    v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:13 width:v12 height:v13 mipmapped:0];
    v15 = v14;
    if (v14)
    {
      [v14 setUsage:3];
      device = [(_MRCMetalContext *)self->_metalContext device];
      v17 = [device newTextureWithDescriptor:v15];

      if (v17)
      {
        device2 = [(_MRCMetalContext *)self->_metalContext device];
        v19 = [device2 newTextureWithDescriptor:v15];

        if (v19)
        {
          v20 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:13 width:v12 height:v9 mipmapped:0];
          v21 = v20;
          if (v20)
          {
            [v20 setUsage:2];
            device3 = [(_MRCMetalContext *)self->_metalContext device];
            v23 = [device3 newTextureWithDescriptor:v21];

            if (v23)
            {
              beginCommandBuffer = [(_MRCMetalContext *)self->_metalContext beginCommandBuffer];
              v25 = beginCommandBuffer;
              if (beginCommandBuffer)
              {
                computeCommandEncoder = [beginCommandBuffer computeCommandEncoder];
                v27 = v25;
                if (computeCommandEncoder)
                {
                  v28 = computeCommandEncoder;
                  v49 = v23;
                  v52 = v27;
                  threadExecutionWidth = [(MTLComputePipelineState *)self->_calcuateBlackPointsPipelineState threadExecutionWidth];
                  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_calcuateBlackPointsPipelineState maxTotalThreadsPerThreadgroup];
                  v30 = maxTotalThreadsPerThreadgroup / [(MTLComputePipelineState *)self->_calcuateBlackPointsPipelineState threadExecutionWidth];
                  v47 = v13 - 1;
                  [v28 setComputePipelineState:self->_calcuateBlackPointsPipelineState];
                  [v28 setTexture:v11 atIndex:0];
                  [v28 setTexture:v17 atIndex:1];
                  *&buf = (v12 - 1 + threadExecutionWidth) / threadExecutionWidth;
                  *(&buf + 1) = (v13 - 1 + v30) / v30;
                  v57 = 1;
                  v53 = threadExecutionWidth;
                  v54 = v30;
                  v55 = 1;
                  [v28 dispatchThreadgroups:&buf threadsPerThreadgroup:&v53];
                  [v28 endEncoding];

                  computeCommandEncoder2 = [v52 computeCommandEncoder];
                  if (computeCommandEncoder2)
                  {
                    v32 = computeCommandEncoder2;
                    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_fixBlackPointsPipelineState threadExecutionWidth];
                    maxTotalThreadsPerThreadgroup2 = [(MTLComputePipelineState *)self->_fixBlackPointsPipelineState maxTotalThreadsPerThreadgroup];
                    v35 = maxTotalThreadsPerThreadgroup2 / [(MTLComputePipelineState *)self->_fixBlackPointsPipelineState threadExecutionWidth];
                    [v32 setComputePipelineState:self->_fixBlackPointsPipelineState];
                    [v32 setTexture:v17 atIndex:0];
                    [v32 setTexture:v19 atIndex:1];
                    *&buf = (v12 - 1 + threadExecutionWidth2) / threadExecutionWidth2;
                    *(&buf + 1) = (v47 + v35) / v35;
                    v57 = 1;
                    v53 = threadExecutionWidth2;
                    v54 = v35;
                    v55 = 1;
                    [v32 dispatchThreadgroups:&buf threadsPerThreadgroup:&v53];
                    [v32 endEncoding];

                    v25 = v52;
                    computeCommandEncoder3 = [v52 computeCommandEncoder];
                    if (computeCommandEncoder3)
                    {
                      v37 = computeCommandEncoder3;
                      threadExecutionWidth3 = [(MTLComputePipelineState *)self->_thresholdPipelineState threadExecutionWidth];
                      maxTotalThreadsPerThreadgroup3 = [(MTLComputePipelineState *)self->_thresholdPipelineState maxTotalThreadsPerThreadgroup];
                      v40 = maxTotalThreadsPerThreadgroup3 / [(MTLComputePipelineState *)self->_thresholdPipelineState threadExecutionWidth];
                      v51 = (threadExecutionWidth3 + [v49 width] - 1) / threadExecutionWidth3;
                      v48 = (v40 + [v49 height] - 1) / v40;
                      [v37 setComputePipelineState:self->_thresholdPipelineState];
                      [v37 setTexture:v11 atIndex:0];
                      [v37 setTexture:v19 atIndex:1];
                      [v37 setTexture:v49 atIndex:2];
                      *&buf = v51;
                      *(&buf + 1) = v48;
                      v57 = 1;
                      v53 = threadExecutionWidth3;
                      v54 = v40;
                      v55 = 1;
                      [v37 dispatchThreadgroups:&buf threadsPerThreadgroup:&v53];
                      [v37 endEncoding];

                      [(_MRCMetalContext *)self->_metalContext commitCommandBufferShouldWaitUntilCompleted:1];
                      if (qword_27FEB41F0 != -1)
                      {
                        dispatch_once(&qword_27FEB41F0, &unk_2873D0740);
                      }

                      v41 = qword_27FEB41E8;
                      v23 = v49;
                      v25 = v52;
                      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
                      {
                        [v52 GPUEndTime];
                        v45 = v44;
                        [v52 GPUStartTime];
                        LODWORD(buf) = 134349056;
                        *(&buf + 4) = v45 - v46;
                        _os_log_debug_impl(&dword_26146F000, v41, OS_LOG_TYPE_DEBUG, "elapsedTime: %{public}.6f", &buf, 0xCu);
                      }

                      v42 = v49;
                    }

                    else
                    {
                      v42 = 0;
                      v23 = v49;
                    }
                  }

                  else
                  {
                    v42 = 0;
                    v23 = v49;
                    v25 = v52;
                  }
                }

                else
                {
                  v42 = 0;
                }
              }

              else
              {
                v42 = 0;
              }
            }

            else
            {
              v42 = 0;
            }
          }

          else
          {
            v42 = 0;
          }
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v42 = 0;
      }
    }

    else
    {
      v42 = 0;
    }
  }

  else
  {
    v42 = 0;
  }

  return v42;
}

- (_MRCMetalHybridBinarizer)initWithMetalContext:(id)context error:(id *)error
{
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = _MRCMetalHybridBinarizer;
  v7 = [(_MRCMetalHybridBinarizer *)&v19 init];
  if (!v7 || (!contextCopy ? (v8 = [[_MRCMetalContext alloc] initWithDevice:0 libraryURL:0 error:error]) : (v8 = contextCopy), (metalContext = v7->_metalContext, v7->_metalContext = v8, metalContext, (v10 = v7->_metalContext) != 0) && (v11 = [(_MRCMetalContext *)v10 newComputePipelineStateWithFunctionName:@"_MRCMetalHybridBinarizer_calculateBlackPoints" constantValues:0 error:error], calcuateBlackPointsPipelineState = v7->_calcuateBlackPointsPipelineState, v7->_calcuateBlackPointsPipelineState = v11, calcuateBlackPointsPipelineState, v7->_calcuateBlackPointsPipelineState) && (v13 = [(_MRCMetalContext *)v7->_metalContext newComputePipelineStateWithFunctionName:@"_MRCMetalHybridBinarizer_fixBlackPoints" constantValues:0 error:error], fixBlackPointsPipelineState = v7->_fixBlackPointsPipelineState, v7->_fixBlackPointsPipelineState = v13, fixBlackPointsPipelineState, v7->_fixBlackPointsPipelineState) && (v15 = [(_MRCMetalContext *)v7->_metalContext newComputePipelineStateWithFunctionName:@"_MRCMetalHybridBinarizer_threshold" constantValues:0 error:error], thresholdPipelineState = v7->_thresholdPipelineState, v7->_thresholdPipelineState = v15, thresholdPipelineState, v7->_thresholdPipelineState)))
  {
    v17 = v7;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (_MRCMetalHybridBinarizer)init
{
  result = [(_MRCMetalHybridBinarizer *)self doesNotRecognizeSelector:a2];
  __break(1u);
  return result;
}

@end