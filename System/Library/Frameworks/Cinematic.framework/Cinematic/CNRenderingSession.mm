@interface CNRenderingSession
+ (NSArray)destinationPixelFormatTypes;
+ (NSArray)sourcePixelFormatTypes;
- (BOOL)_encodeRenderToCommandBuffer:(id)buffer frameAttributes:(id)attributes sourceImage:(__CVBuffer *)image sourceDisparity:(__CVBuffer *)disparity destinationTexture:(id)texture;
- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationImage:(CVPixelBufferRef)destinationImage;
- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationLuma:(id)destinationLuma destinationChroma:(id)destinationChroma;
- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationRGBA:(id)destinationRGBA;
- (CNRenderingSession)initWithCommandQueue:(id)commandQueue sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes preferredTransform:(CGAffineTransform *)preferredTransform quality:(CNRenderingQuality)quality;
- (void)dealloc;
@end

@implementation CNRenderingSession

- (CNRenderingSession)initWithCommandQueue:(id)commandQueue sessionAttributes:(CNRenderingSessionAttributes *)sessionAttributes preferredTransform:(CGAffineTransform *)preferredTransform quality:(CNRenderingQuality)quality
{
  v25[1] = *MEMORY[0x277D85DE8];
  v11 = commandQueue;
  v12 = sessionAttributes;
  v23.receiver = self;
  v23.super_class = CNRenderingSession;
  v13 = [(CNRenderingSession *)&v23 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_commandQueue, commandQueue);
    objc_storeStrong(&v14->_sessionAttributes, sessionAttributes);
    v15 = *&preferredTransform->a;
    v16 = *&preferredTransform->c;
    *&v14->_preferredTransform.tx = *&preferredTransform->tx;
    *&v14->_preferredTransform.c = v16;
    *&v14->_preferredTransform.a = v15;
    v14->_quality = quality;
    v17 = *MEMORY[0x277CBECE8];
    v24 = *MEMORY[0x277CC4D40];
    v25[0] = &unk_284A06FD0;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    device = [v11 device];
    LODWORD(v17) = CVMetalTextureCacheCreate(v17, v18, device, 0, &v14->_textureCache);

    if (v17 || !v14->_textureCache)
    {
      v21 = _CNLogSystem(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [CNRenderingSession initWithCommandQueue:v21 sessionAttributes:? preferredTransform:? quality:?];
      }

      v14->_textureCache = 0;
    }
  }

  return v14;
}

- (void)dealloc
{
  textureCache = self->_textureCache;
  if (textureCache)
  {
    CFRelease(textureCache);
  }

  v4.receiver = self;
  v4.super_class = CNRenderingSession;
  [(CNRenderingSession *)&v4 dealloc];
}

- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationImage:(CVPixelBufferRef)destinationImage
{
  v12 = MEMORY[0x277D3E8E8];
  v13 = frameAttributes;
  v14 = commandBuffer;
  device = [v14 device];
  v16 = [v12 createFromPixelbuffer:destinationImage device:device textureCache:self->_textureCache read:0 write:1];
  LOBYTE(sourceDisparity) = [(CNRenderingSession *)self _encodeRenderToCommandBuffer:v14 frameAttributes:v13 sourceImage:sourceImage sourceDisparity:sourceDisparity destinationTexture:v16];

  return sourceDisparity;
}

- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationRGBA:(id)destinationRGBA
{
  v12 = MEMORY[0x277D3E8E8];
  v13 = frameAttributes;
  v14 = commandBuffer;
  v15 = [v12 createRGBA:destinationRGBA];
  LOBYTE(sourceDisparity) = [(CNRenderingSession *)self _encodeRenderToCommandBuffer:v14 frameAttributes:v13 sourceImage:sourceImage sourceDisparity:sourceDisparity destinationTexture:v15];

  return sourceDisparity;
}

- (BOOL)encodeRenderToCommandBuffer:(id)commandBuffer frameAttributes:(CNRenderingSessionFrameAttributes *)frameAttributes sourceImage:(CVPixelBufferRef)sourceImage sourceDisparity:(CVPixelBufferRef)sourceDisparity destinationLuma:(id)destinationLuma destinationChroma:(id)destinationChroma
{
  v14 = MEMORY[0x277D3E8E8];
  v15 = frameAttributes;
  v16 = commandBuffer;
  v17 = [v14 createYUV420:destinationLuma chroma:destinationChroma];
  LOBYTE(destinationLuma) = [(CNRenderingSession *)self _encodeRenderToCommandBuffer:v16 frameAttributes:v15 sourceImage:sourceImage sourceDisparity:sourceDisparity destinationTexture:v17];

  return destinationLuma;
}

- (BOOL)_encodeRenderToCommandBuffer:(id)buffer frameAttributes:(id)attributes sourceImage:(__CVBuffer *)image sourceDisparity:(__CVBuffer *)disparity destinationTexture:(id)texture
{
  v63 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  textureCopy = texture;
  commandQueue = self->_commandQueue;
  attributesCopy = attributes;
  device = [(MTLCommandQueue *)commandQueue device];
  device2 = [bufferCopy device];

  if (device != device2)
  {
    v19 = _CNLogSystem(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      device3 = [(MTLCommandQueue *)self->_commandQueue device];
      name = [device3 name];
      [bufferCopy device];
      imageCopy = image;
      v23 = v22 = disparity;
      name2 = [v23 name];
      *buf = 138412546;
      *&buf[4] = name;
      *&buf[12] = 2112;
      *&buf[14] = name2;
      _os_log_impl(&dword_236F52000, v19, OS_LOG_TYPE_DEFAULT, "warning: rendering session device (%@) and command buffer device (%@) are different!", buf, 0x16u);

      disparity = v22;
      image = imageCopy;
    }
  }

  if (!self->_renderPipeline)
  {
    v25 = objc_alloc(MEMORY[0x277D3E8B8]);
    device4 = [bufferCopy device];
    internalMetadata = [(CNRenderingSessionAttributes *)self->_sessionAttributes internalMetadata];
    renderingVersion = [internalMetadata renderingVersion];
    Width = CVPixelBufferGetWidth(image);
    Height = CVPixelBufferGetHeight(image);
    width = [textureCopy width];
    height = [textureCopy height];
    v33 = CVPixelBufferGetWidth(disparity);
    v34 = [v25 initWithDevice:device4 version:renderingVersion colorInputSize:Width colorOutputSize:Height disparitySize:{width, height, v33, CVPixelBufferGetHeight(disparity)}];

    [v34 setDebugRendering:0];
    [v34 setVerbose:0];
    [v34 setUseRGBA:{objc_msgSend(textureCopy, "isRGB")}];
    v35 = *&self->_preferredTransform.c;
    *buf = *&self->_preferredTransform.a;
    *&buf[16] = v35;
    v62 = *&self->_preferredTransform.tx;
    [v34 setPreferredTransform:buf];
    v36 = [objc_alloc(MEMORY[0x277D3E8A8]) initWithDescriptor:v34];
    renderPipeline = self->_renderPipeline;
    self->_renderPipeline = v36;

    quality = [(CNRenderingSession *)self quality];
    if (quality > CNRenderingQualityExportHigh)
    {
      v39 = 75;
    }

    else
    {
      v39 = dword_236F68020[quality];
    }

    v40 = [(PTRenderPipeline *)self->_renderPipeline createRenderStateWithQuality:v39];
    renderState = self->_renderState;
    self->_renderState = v40;

    internalMetadata2 = [(CNRenderingSessionAttributes *)self->_sessionAttributes internalMetadata];
    [internalMetadata2 applyToRenderState:self->_renderState];
  }

  v43 = objc_opt_new();
  internalMetadata3 = [(CNRenderingSessionAttributes *)self->_sessionAttributes internalMetadata];
  [internalMetadata3 applyToRenderRequest:v43];

  internalMetadata4 = [attributesCopy internalMetadata];
  [internalMetadata4 applyToRenderRequest:v43];

  [v43 setRenderState:self->_renderState];
  [attributesCopy fNumber];
  [v43 setFNumber:?];
  [attributesCopy focusDisparity];
  v47 = v46;

  LODWORD(v48) = v47;
  [v43 setFocusDisparity:v48];
  v49 = MEMORY[0x277D3E8E8];
  device5 = [bufferCopy device];
  v51 = [v49 createFromPixelbuffer:image device:device5 textureCache:self->_textureCache read:1 write:0];
  [v43 setSourceColor:v51];

  [v43 setDestinationColor:textureCopy];
  v52 = MEMORY[0x277D3E898];
  device6 = [bufferCopy device];
  v54 = [v52 createTextureFromPixelBuffer:disparity device:device6 textureCache:self->_textureCache sRGB:0];
  [v43 setSourceDisparity:v54];

  sourceColor = [v43 sourceColor];
  [sourceColor copyMetadataTo:textureCopy];

  v56 = [(PTRenderPipeline *)self->_renderPipeline encodeRenderTo:bufferCopy withRenderRequest:v43];
  v57 = v56;
  if (v56)
  {
    v58 = _CNLogSystem(v56);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      [CNRenderingSession _encodeRenderToCommandBuffer:bufferCopy frameAttributes:v58 sourceImage:? sourceDisparity:? destinationTexture:?];
    }
  }

  return v57 == 0;
}

+ (NSArray)sourcePixelFormatTypes
{
  if (sourcePixelFormatTypes_onceToken != -1)
  {
    +[CNRenderingSession sourcePixelFormatTypes];
  }

  v3 = sourcePixelFormatTypes_sSourcePixelFormatTypes;

  return v3;
}

void __44__CNRenderingSession_sourcePixelFormatTypes__block_invoke()
{
  v0 = sourcePixelFormatTypes_sSourcePixelFormatTypes;
  sourcePixelFormatTypes_sSourcePixelFormatTypes = &unk_284A06FA0;
}

+ (NSArray)destinationPixelFormatTypes
{
  if (destinationPixelFormatTypes_onceToken != -1)
  {
    +[CNRenderingSession destinationPixelFormatTypes];
  }

  v3 = destinationPixelFormatTypes_sDestinationPixelFormatTypes;

  return v3;
}

void __49__CNRenderingSession_destinationPixelFormatTypes__block_invoke()
{
  v0 = destinationPixelFormatTypes_sDestinationPixelFormatTypes;
  destinationPixelFormatTypes_sDestinationPixelFormatTypes = &unk_284A06FB8;
}

- (void)_encodeRenderToCommandBuffer:(uint64_t)a1 frameAttributes:(NSObject *)a2 sourceImage:sourceDisparity:destinationTexture:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_236F52000, a2, OS_LOG_TYPE_ERROR, "error: encodeRenderToCommandBuffer failed (%@)", &v2, 0xCu);
}

@end