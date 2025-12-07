@interface PTDepthConverter
- (PTDepthConverter)initWithMetalContext:(id)context;
- (int)disparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(float)far disparityBias:(BOOL)bias reverseZ:;
- (int)segmentationToDepth:(id)depth inSegmentation:(id)segmentation inAlphaMask:(id)mask outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(float)nearFar reverseZ:threshold:cropRect:;
- (int)thresholdedDisparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(id)nearFar disparityThresholdNearFar:reverseZ:useDisparityBuffer:cropRect:;
@end

@implementation PTDepthConverter

- (PTDepthConverter)initWithMetalContext:(id)context
{
  contextCopy = context;
  v132.receiver = self;
  v132.super_class = PTDepthConverter;
  v6 = [(PTDepthConverter *)&v132 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_metalContext, context);
    v8 = [contextCopy functionWithName:@"disparityToDepthVert" withConstants:0];
    if (v8)
    {
      v9 = [contextCopy functionWithName:@"disparityToDepthFrag" withConstants:0];
      if (v9)
      {
        v10 = v9;
        v11 = objc_alloc_init(MEMORY[0x277CD6F78]);
        if (!v11)
        {
          v12 = _PTLogSystem(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            [(PTDepthConverter *)v12 initWithMetalContext:v13, v14, v15, v16, v17, v18, v19];
          }
        }

        [v11 setVertexFunction:v8];
        [v11 setFragmentFunction:v10];
        [v11 setDepthAttachmentPixelFormat:260];
        pipelineLibrary = [contextCopy pipelineLibrary];
        [v11 setPipelineLibrary:pipelineLibrary];

        v21 = objc_msgSend_device(contextCopy);
        v131 = 0;
        v22 = [v21 newRenderPipelineStateWithDescriptor:v11 error:&v131];
        v23 = v131;
        disparityToDepth = v7->_disparityToDepth;
        v7->_disparityToDepth = v22;

        if (v7->_disparityToDepth)
        {
          v26 = [contextCopy functionWithName:@"thresholdedDisparityToDepthFrag" withConstants:0];

          if (!v26)
          {
            v10 = _PTLogSystem(v27);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v10 initWithMetalContext:v91, v92, v93, v94, v95, v96, v97];
            }

            goto LABEL_34;
          }

          if (!v11)
          {
            v28 = _PTLogSystem(v27);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v28 initWithMetalContext:v29, v30, v31, v32, v33, v34, v35];
            }
          }

          [v11 setFragmentFunction:v26];
          v36 = objc_msgSend_device(contextCopy);
          v130 = v23;
          v37 = [v36 newRenderPipelineStateWithDescriptor:v11 error:&v130];
          v38 = v130;

          thresholdedDisparityToDepth = v7->_thresholdedDisparityToDepth;
          v7->_thresholdedDisparityToDepth = v37;

          if (v7->_thresholdedDisparityToDepth)
          {
            v10 = [contextCopy functionWithName:@"segmentationToDepthFrag" withConstants:0];

            if (v10)
            {
              if (!v11)
              {
                v42 = _PTLogSystem(v41);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  [(PTDepthConverter *)v42 initWithMetalContext:v43, v44, v45, v46, v47, v48, v49];
                }
              }

              [v11 setFragmentFunction:v10];
              v50 = objc_msgSend_device(contextCopy);
              v129 = v38;
              v51 = [v50 newRenderPipelineStateWithDescriptor:v11 error:&v129];
              v23 = v129;

              segmentationToDepth = v7->_segmentationToDepth;
              v7->_segmentationToDepth = v51;

              if (v7->_segmentationToDepth)
              {
                v54 = objc_opt_new();
                GBufferRenderPassDescriptor = v7->_GBufferRenderPassDescriptor;
                v7->_GBufferRenderPassDescriptor = v54;

                depthAttachment = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [depthAttachment setClearDepth:1.0];

                depthAttachment2 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [depthAttachment2 setLoadAction:2];

                depthAttachment3 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor depthAttachment];
                [depthAttachment3 setStoreAction:1];

                stencilAttachment = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment setClearStencil:0];

                stencilAttachment2 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment2 setLoadAction:0];

                stencilAttachment3 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment3 setStoreAction:0];

                stencilAttachment4 = [(MTLRenderPassDescriptor *)v7->_GBufferRenderPassDescriptor stencilAttachment];
                [stencilAttachment4 setTexture:0];

                v63 = objc_opt_new();
                [v63 setDepthCompareFunction:7];
                [v63 setDepthWriteEnabled:1];
                v64 = objc_msgSend_device(contextCopy);
                v65 = [v64 newDepthStencilStateWithDescriptor:v63];
                depthStencilState = v7->_depthStencilState;
                v7->_depthStencilState = v65;

                if (v7->_depthStencilState)
                {
                  v68 = v7;
                }

                else
                {
                  v120 = _PTLogSystem(v67);
                  if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
                  {
                    [(PTDepthConverter *)v120 initWithMetalContext:v121, v122, v123, v124, v125, v126, v127];
                  }

                  v68 = 0;
                }

                goto LABEL_48;
              }

              v83 = _PTLogSystem(v53);
              if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
              {
                [(PTDepthConverter *)v83 initWithMetalContext:v113, v114, v115, v116, v117, v118, v119];
              }

              goto LABEL_31;
            }

            v10 = _PTLogSystem(v41);
            if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v10 initWithMetalContext:v106, v107, v108, v109, v110, v111, v112];
            }

            v68 = 0;
          }

          else
          {
            v98 = _PTLogSystem(v40);
            if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
            {
              [(PTDepthConverter *)v98 initWithMetalContext:v99, v100, v101, v102, v103, v104, v105];
            }

            v68 = 0;
            v10 = v26;
          }

          v23 = v38;
          goto LABEL_48;
        }

        v83 = _PTLogSystem(v25);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
        {
          [(PTDepthConverter *)v83 initWithMetalContext:v84, v85, v86, v87, v88, v89, v90];
        }

LABEL_31:

LABEL_34:
        v68 = 0;
LABEL_48:

        goto LABEL_49;
      }

      v23 = _PTLogSystem(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(PTDepthConverter *)v23 initWithMetalContext:v76, v77, v78, v79, v80, v81, v82];
      }
    }

    else
    {
      v23 = _PTLogSystem(0);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(PTDepthConverter *)v23 initWithMetalContext:v69, v70, v71, v72, v73, v74, v75];
      }
    }

    v68 = 0;
LABEL_49:

    goto LABEL_50;
  }

  v68 = 0;
LABEL_50:

  return v68;
}

- (int)disparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(float)far disparityBias:(BOOL)bias reverseZ:
{
  v24 = *&far;
  v23 = v7;
  biasCopy = bias;
  if (bias)
  {
    v11 = 0.0;
  }

  else
  {
    v11 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  outDepthCopy = outDepth;
  disparityCopy = disparity;
  depthCopy = depth;
  depthAttachment = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment setClearDepth:v11];

  depthAttachment2 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment2 setTexture:outDepthCopy];

  stencilAttachment = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor stencilAttachment];
  [stencilAttachment setTexture:outDepthCopy];

  v19 = [depthCopy renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v19 setRenderPipelineState:self->_disparityToDepth];
  [v19 setDepthStencilState:self->_depthStencilState];
  v21 = xmmword_2244A5570;
  [v19 setVertexBytes:&v21 length:16 atIndex:0];
  [v19 setFragmentTexture:disparityCopy atIndex:0];

  [v19 setFragmentBytes:&v24 length:8 atIndex:0];
  [v19 setFragmentBytes:&v23 length:4 atIndex:1];
  [v19 setFragmentBytes:&biasCopy length:1 atIndex:2];
  [v19 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v19 endEncoding];

  return 0;
}

- (int)thresholdedDisparityToDepth:(id)depth inBaseDisparity:(id)disparity outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(id)nearFar disparityThresholdNearFar:reverseZ:useDisparityBuffer:cropRect:
{
  v28 = v8;
  v29 = v7;
  v27 = v9;
  farCopy = far;
  v25 = v10;
  if (far)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  nearFarCopy = nearFar;
  outDepthCopy = outDepth;
  disparityCopy = disparity;
  depthCopy = depth;
  depthAttachment = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment setClearDepth:v15];

  depthAttachment2 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment2 setTexture:outDepthCopy];

  v23 = [depthCopy renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v23 setRenderPipelineState:self->_thresholdedDisparityToDepth];
  [v23 setDepthStencilState:self->_depthStencilState];
  [v23 setVertexBytes:&v25 length:16 atIndex:0];
  [v23 setFragmentTexture:disparityCopy atIndex:0];

  [v23 setFragmentBytes:&v29 length:8 atIndex:0];
  [v23 setFragmentBytes:&v28 length:8 atIndex:1];
  [v23 setFragmentBytes:&v27 length:8 atIndex:2];
  [v23 setFragmentBytes:&farCopy length:1 atIndex:3];
  [v23 setFragmentBuffer:nearFarCopy offset:0 atIndex:4];

  [v23 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v23 endEncoding];

  return 0;
}

- (int)segmentationToDepth:(id)depth inSegmentation:(id)segmentation inAlphaMask:(id)mask outDepth:(id)outDepth depthNearFar:(BOOL)far segmentationDepthNearFar:(float)nearFar reverseZ:threshold:cropRect:
{
  v28 = v8;
  v29 = *&nearFar;
  farCopy = far;
  v26 = v9;
  v25 = v10;
  if (far)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 1.0;
  }

  GBufferRenderPassDescriptor = self->_GBufferRenderPassDescriptor;
  outDepthCopy = outDepth;
  maskCopy = mask;
  segmentationCopy = segmentation;
  depthCopy = depth;
  depthAttachment = [(MTLRenderPassDescriptor *)GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment setClearDepth:v15];

  depthAttachment2 = [(MTLRenderPassDescriptor *)self->_GBufferRenderPassDescriptor depthAttachment];
  [depthAttachment2 setTexture:outDepthCopy];

  v23 = [depthCopy renderCommandEncoderWithDescriptor:self->_GBufferRenderPassDescriptor];

  [v23 setRenderPipelineState:self->_segmentationToDepth];
  [v23 setDepthStencilState:self->_depthStencilState];
  [v23 setVertexBytes:&v25 length:16 atIndex:0];
  [v23 setFragmentTexture:segmentationCopy atIndex:0];

  [v23 setFragmentTexture:maskCopy atIndex:1];
  [v23 setFragmentBytes:&v29 length:8 atIndex:0];
  [v23 setFragmentBytes:&v28 length:8 atIndex:1];
  [v23 setFragmentBytes:&farCopy length:1 atIndex:2];
  [v23 setFragmentBytes:&v26 length:4 atIndex:3];
  [v23 drawPrimitives:3 vertexStart:0 vertexCount:3];
  [v23 endEncoding];

  return 0;
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "pipelineStateDescriptor";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_depthStencilState";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_segmentationToDepth";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "fragmentFunction";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_thresholdedDisparityToDepth";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityToDepth";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 .cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "vertexFunction";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end