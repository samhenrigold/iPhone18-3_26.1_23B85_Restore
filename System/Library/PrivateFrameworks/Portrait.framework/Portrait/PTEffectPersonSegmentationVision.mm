@interface PTEffectPersonSegmentationVision
+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size;
- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSize;
- (CGSize)colorSize;
- (PTEffectPersonSegmentationVision)initWithMetalContext:(id)context colorSize:(CGSize)size;
- (__CVBuffer)outputPixelBuffer;
- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer;
@end

@implementation PTEffectPersonSegmentationVision

- (PTEffectPersonSegmentationVision)initWithMetalContext:(id)context colorSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  contextCopy = context;
  v34.receiver = self;
  v34.super_class = PTEffectPersonSegmentationVision;
  v9 = [(PTEffectPersonSegmentationVision *)&v34 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_10;
  }

  objc_storeStrong(&v9->_metalContext, context);
  v10->_colorSize.width = width;
  v10->_colorSize.height = height;
  v11 = objc_alloc_init(MEMORY[0x277CE2E18]);
  visionSession = v10->_visionSession;
  v10->_visionSession = v11;

  if (!v10->_visionSession)
  {
    v18 = _PTLogSystem(v13);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectPersonSegmentationVision *)v18 initWithMetalContext:v19 colorSize:v20, v21, v22, v23, v24, v25];
    }

    goto LABEL_9;
  }

  v14 = [objc_alloc(MEMORY[0x277CE2E10]) initWithSession:v10->_visionSession];
  visionRequestHandler = v10->_visionRequestHandler;
  v10->_visionRequestHandler = v14;

  if (!v10->_visionRequestHandler)
  {
    v18 = _PTLogSystem(v16);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectPersonSegmentationVision *)v18 initWithMetalContext:v26 colorSize:v27, v28, v29, v30, v31, v32];
    }

LABEL_9:

LABEL_10:
    v17 = 0;
    goto LABEL_11;
  }

  v17 = v10;
LABEL_11:

  return v17;
}

+ ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSizeForColorSize:(SEL)size
{
  *&retstr->var0 = xmmword_2244A5BB0;
  retstr->var2 = 1;
  return result;
}

- (id)runPersonSegmentationForPixelBuffer:(__CVBuffer *)buffer
{
  v26[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_new();
  personSegmentationRequest = self->_personSegmentationRequest;
  self->_personSegmentationRequest = v5;

  v7 = +[PTInference ANEConfigForSynchronousWork];
  -[VNGeneratePersonSegmentationRequest setModelExecutionPriority:](self->_personSegmentationRequest, "setModelExecutionPriority:", [v7 VNRequestModelExecutionPriority]);

  [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest setQualityLevel:1];
  [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest setOutputPixelFormat:1278226488];
  visionRequestHandler = self->_visionRequestHandler;
  v26[0] = self->_personSegmentationRequest;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
  v25 = 0;
  LOBYTE(visionRequestHandler) = [(VNSequenceRequestHandler *)visionRequestHandler performRequests:v9 onCVPixelBuffer:buffer error:&v25];
  v10 = v25;

  if ((visionRequestHandler & 1) == 0)
  {
    v12 = _PTLogSystem(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(PTEffectPersonSegmentationVision *)v10 runPersonSegmentationForPixelBuffer:v12, v13, v14, v15, v16, v17, v18];
    }
  }

  results = [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest results];
  if ([results count])
  {
    v20 = [results objectAtIndexedSubscript:0];
    pixelBuffer = [v20 pixelBuffer];
    v22 = objc_msgSend_device(self->_metalContext);
    v23 = [PTPixelBufferUtil createTextureFromPixelBuffer:pixelBuffer device:v22];
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- ($F99D9A4FB75BC57F3386B8DC8EE08D7A)segmentationSize
{
  *&retstr->var0 = xmmword_2244A5BB0;
  retstr->var2 = 1;
  return self;
}

- (CGSize)colorSize
{
  width = self->_colorSize.width;
  height = self->_colorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (__CVBuffer)outputPixelBuffer
{
  results = [(VNGeneratePersonSegmentationRequest *)self->_personSegmentationRequest results];
  if ([results count])
  {
    v3 = [results objectAtIndexedSubscript:0];
    pixelBuffer = [v3 pixelBuffer];
  }

  else
  {
    pixelBuffer = 0;
  }

  return pixelBuffer;
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_visionRequestHandler";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithMetalContext:(uint64_t)a3 colorSize:(uint64_t)a4 .cold.2(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "_visionSession";
  OUTLINED_FUNCTION_0(&dword_2243FB000, a1, a3, "Assertion failed %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)runPersonSegmentationForPixelBuffer:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_2243FB000, a2, a3, "Person segmentation error %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end