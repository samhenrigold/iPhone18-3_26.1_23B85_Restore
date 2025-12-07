@interface PTApplyHomographies
- (PTApplyHomographies)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize;
- (id)updateDisparity:(id)disparity inDisparity:(id)inDisparity;
- (id)updatePTTexture:(id)texture inPTTexture:(id)tTexture;
- (void)_ensureSufficientBufferSizesNumberOfRows:(int)rows numberOfCols:(int)cols;
@end

@implementation PTApplyHomographies

- (PTApplyHomographies)initWithMetalContext:(id)context colorSize:(CGSize)size disparitySize:(CGSize)disparitySize
{
  height = disparitySize.height;
  width = disparitySize.width;
  v122 = size.width;
  v123 = size.height;
  contextCopy = context;
  v126.receiver = self;
  v126.super_class = PTApplyHomographies;
  v10 = [(PTApplyHomographies *)&v126 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_metalContext, context);
    v12 = dispatch_semaphore_create(2);
    v13 = v11[12];
    v11[12] = v12;

    v14.f64[0] = v122;
    v14.f64[1] = v123;
    v11[17] = vmovn_s64(vcvtq_u64_f64(v14));
    v11[18].i16[0] = 256;
    v15 = [[PTColorConversion alloc] initWithMetalContext:*&v11[1]];
    v16 = v11[4];
    v11[4] = v15;

    if (!*&v11[4])
    {
      v18 = _PTLogSystem(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        [(PTApplyHomographies *)v18 initWithMetalContext:v63 colorSize:v64 disparitySize:v65, v66, v67, v68, v69];
      }

      v62 = 0;
      goto LABEL_36;
    }

    v18 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:115 width:v122 height:v123 mipmapped:0];
    [v18 setUsage:7];
    v19 = objc_msgSend_device(*&v11[1]);
    v20 = [v19 newTextureWithDescriptor:v18];
    v21 = v11[5];
    v11[5] = v20;

    if (v11[5])
    {
      [v18 setUsage:7];
      v23 = objc_msgSend_device(*&v11[1]);
      v24 = [v23 newTextureWithDescriptor:v18];
      v25 = v11[6];
      v11[6] = v24;

      if (v11[6])
      {
        [v18 setWidth:width];
        [v18 setHeight:height];
        [v18 setPixelFormat:25];
        v27 = objc_msgSend_device(*&v11[1]);
        v28 = [v27 newTextureWithDescriptor:v18];
        v29 = v11[7];
        v11[7] = v28;

        if (v11[7])
        {
          v31 = objc_opt_new();
          v32 = v11[21];
          v11[21] = v31;

          colorAttachments = [*&v11[21] colorAttachments];
          v34 = [colorAttachments objectAtIndexedSubscript:0];
          [v34 setLoadAction:0];

          colorAttachments2 = [*&v11[21] colorAttachments];
          v36 = [colorAttachments2 objectAtIndexedSubscript:0];
          [v36 setStoreAction:1];

          colorAttachments3 = [*&v11[21] colorAttachments];
          v38 = [colorAttachments3 objectAtIndexedSubscript:0];
          [v38 setClearColor:{0.0, 1.0, 0.0, 1.0}];

          v39 = objc_alloc_init(MEMORY[0x277CD6F78]);
          v40 = [*&v11[1] functionWithName:@"vertexShaderHomography" withConstants:0];
          [v39 setVertexFunction:v40];

          vertexFunction = [v39 vertexFunction];

          if (vertexFunction)
          {
            v43 = [*&v11[1] functionWithName:@"fragmentShaderSample" withConstants:0];
            [v39 setFragmentFunction:v43];

            fragmentFunction = [v39 fragmentFunction];

            if (fragmentFunction)
            {
              pixelFormat = [*&v11[6] pixelFormat];
              colorAttachments4 = [v39 colorAttachments];
              v48 = [colorAttachments4 objectAtIndexedSubscript:0];
              [v48 setPixelFormat:pixelFormat];

              v49 = objc_msgSend_device(*&v11[1]);
              v125 = 0;
              v50 = [v49 newRenderPipelineStateWithDescriptor:v39 error:&v125];
              v51 = v125;
              v52 = v11[19];
              v11[19] = v50;

              if (v11[19])
              {
                pixelFormat2 = [*&v11[7] pixelFormat];
                colorAttachments5 = [v39 colorAttachments];
                v56 = [colorAttachments5 objectAtIndexedSubscript:0];
                [v56 setPixelFormat:pixelFormat2];

                v57 = objc_msgSend_device(*&v11[1]);
                v124 = v51;
                v58 = [v57 newRenderPipelineStateWithDescriptor:v39 error:&v124];
                v59 = v124;

                v60 = v11[20];
                v11[20] = v58;

                if (v11[20])
                {
                  v62 = v11;
                }

                else
                {
                  v113 = _PTLogSystem(v61);
                  if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
                  {
                    [(PTApplyHomographies *)v113 initWithMetalContext:v114 colorSize:v115 disparitySize:v116, v117, v118, v119, v120];
                  }

                  v62 = 0;
                }

                v51 = v59;
                goto LABEL_34;
              }

              v105 = _PTLogSystem(v53);
              if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
              {
                [(PTApplyHomographies *)v105 initWithMetalContext:v106 colorSize:v107 disparitySize:v108, v109, v110, v111, v112];
              }
            }

            else
            {
              v51 = _PTLogSystem(v45);
              if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
              {
                [(PTApplyHomographies *)v51 initWithMetalContext:v98 colorSize:v99 disparitySize:v100, v101, v102, v103, v104];
              }
            }
          }

          else
          {
            v51 = _PTLogSystem(v42);
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              [(PTApplyHomographies *)v51 initWithMetalContext:v91 colorSize:v92 disparitySize:v93, v94, v95, v96, v97];
            }
          }

          v62 = 0;
LABEL_34:

          goto LABEL_35;
        }

        v39 = _PTLogSystem(v30);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [(PTApplyHomographies *)v39 initWithMetalContext:v84 colorSize:v85 disparitySize:v86, v87, v88, v89, v90];
        }
      }

      else
      {
        v39 = _PTLogSystem(v26);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
        {
          [(PTApplyHomographies *)v39 initWithMetalContext:v77 colorSize:v78 disparitySize:v79, v80, v81, v82, v83];
        }
      }
    }

    else
    {
      v39 = _PTLogSystem(v22);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(PTApplyHomographies *)v39 initWithMetalContext:v70 colorSize:v71 disparitySize:v72, v73, v74, v75, v76];
      }
    }

    v62 = 0;
LABEL_35:

LABEL_36:
    goto LABEL_37;
  }

  v62 = 0;
LABEL_37:

  return v62;
}

- (void)_ensureSufficientBufferSizesNumberOfRows:(int)rows numberOfCols:(int)cols
{
  v7 = cols + 2 * rows * (cols - 1);
  self->_vertexCountHomography = cols * rows;
  self->_indexCountHomography = v7;
  v8 = (cols * rows) << 6;
  if (v8 > [(MTLBuffer *)self->_vertexBufferHomography[0] length])
  {
    v9 = objc_msgSend_device(self->_metalContext);
    v10 = [v9 newBufferWithLength:v8 options:0];
    v11 = self->_vertexBufferHomography[0];
    self->_vertexBufferHomography[0] = v10;

    v12 = objc_msgSend_device(self->_metalContext);
    v13 = [v12 newBufferWithLength:v8 options:0];
    v14 = self->_vertexBufferHomography[1];
    self->_vertexBufferHomography[1] = v13;
  }

  if (self->_numberOfRowsOverscan != rows || self->_numberOfColsOverscan != cols)
  {
    v17 = objc_msgSend_device(self->_metalContext);
    v15 = [v17 newBufferWithLength:2 * v7 options:0];
    indexBufferHomography = self->_indexBufferHomography;
    self->_indexBufferHomography = v15;
  }
}

- (id)updatePTTexture:(id)texture inPTTexture:(id)tTexture
{
  colorConversion = self->_colorConversion;
  rgbaLinear = self->_rgbaLinear;
  textureCopy = texture;
  [(PTColorConversion *)colorConversion convertRGBLinearFromPTTexture:textureCopy inPTTexture:tTexture outRGBA:rgbaLinear];
  rgbaLinearVIS = self->_rgbaLinearVIS;
  colorAttachments = [(MTLRenderPassDescriptor *)self->_homographyRenderPassDescriptor colorAttachments];
  v11 = [colorAttachments objectAtIndexedSubscript:0];
  [v11 setTexture:rgbaLinearVIS];

  v12 = [textureCopy renderCommandEncoderWithDescriptor:self->_homographyRenderPassDescriptor];

  [v12 setRenderPipelineState:self->_renderPipelineState];
  [v12 setVertexBuffer:self->_vertexBufferHomography[self->_frameCounter & 1] offset:0 atIndex:0];
  [v12 setVertexBytes:self->_inputColorSize length:8 atIndex:1];
  [v12 setFragmentTexture:self->_rgbaLinear atIndex:0];
  [v12 drawIndexedPrimitives:4 indexCount:self->_indexCountHomography indexType:0 indexBuffer:self->_indexBufferHomography indexBufferOffset:0];
  if (self->_showGrid)
  {
    [v12 setFragmentTexture:self->_textureMarker atIndex:0];
    [v12 setTriangleFillMode:1];
    [v12 drawIndexedPrimitives:4 indexCount:self->_indexCountHomography indexType:0 indexBuffer:self->_indexBufferHomography indexBufferOffset:0];
  }

  [v12 endEncoding];
  v13 = [PTTexture createRGBA:self->_rgbaLinearVIS];
  [v13 setTransferFunction:*MEMORY[0x277CC4CE0]];

  return v13;
}

- (id)updateDisparity:(id)disparity inDisparity:(id)inDisparity
{
  disparityVIS = self->_disparityVIS;
  homographyRenderPassDescriptor = self->_homographyRenderPassDescriptor;
  inDisparityCopy = inDisparity;
  disparityCopy = disparity;
  colorAttachments = [(MTLRenderPassDescriptor *)homographyRenderPassDescriptor colorAttachments];
  v11 = [colorAttachments objectAtIndexedSubscript:0];
  [v11 setTexture:disparityVIS];

  v12 = [disparityCopy renderCommandEncoderWithDescriptor:self->_homographyRenderPassDescriptor];

  [v12 setRenderPipelineState:self->_renderPipelineStateDisparity];
  [v12 setVertexBuffer:self->_vertexBufferHomography[self->_frameCounter & 1] offset:0 atIndex:0];
  [v12 setVertexBytes:self->_inputColorSize length:8 atIndex:1];
  [v12 setFragmentTexture:inDisparityCopy atIndex:0];

  [v12 drawIndexedPrimitives:4 indexCount:self->_indexCountHomography indexType:0 indexBuffer:self->_indexBufferHomography indexBufferOffset:0];
  [v12 endEncoding];
  v13 = self->_disparityVIS;
  v14 = v13;

  return v13;
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_renderPipelineStateDisparity";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_renderPipelineState";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.3(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "renderPipelineDescriptor.fragmentFunction";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "renderPipelineDescriptor.vertexFunction";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.5(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_disparityVIS";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.6(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_rgbaLinearVIS";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.7(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_rgbaLinear";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 disparitySize:(uint64_t)a5 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_colorConversion";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end