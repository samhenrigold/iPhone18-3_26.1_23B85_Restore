@interface ARCoachingGeoTrackingRenderer
- (ARCoachingGeoTrackingRenderer)initWithLayer:(id)layer device:(id)device pixelFormat:(unint64_t)format sampleCount:(int)count deviceMaskImage:(id)image;
- (BOOL)loadOutlineModelWith:(id *)with;
- (void)drawBuildingOutlineWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer;
- (void)drawDeviceWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer;
- (void)drawWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer;
- (void)prepareWithCompletionHandler:(id)handler;
- (void)resetAnimationTime:(double)time;
- (void)resizeIfNeeded:(id)needed;
- (void)updateFrameStateWithTimeDelta:(double)delta;
@end

@implementation ARCoachingGeoTrackingRenderer

- (ARCoachingGeoTrackingRenderer)initWithLayer:(id)layer device:(id)device pixelFormat:(unint64_t)format sampleCount:(int)count deviceMaskImage:(id)image
{
  layerCopy = layer;
  deviceCopy = device;
  imageCopy = image;
  v38.receiver = self;
  v38.super_class = ARCoachingGeoTrackingRenderer;
  v15 = [(ARCoachingGeoTrackingRenderer *)&v38 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_device, device);
    v16->_pixelFormat = format;
    objc_storeStrong(&v16->_layer, layer);
    v17 = objc_alloc_init(ARCoachingGlyphState);
    state = v16->_state;
    v16->_state = v17;

    v19 = objc_alloc_init(ARCoachingAnimTime);
    time = v16->_time;
    v16->_time = v19;

    v21 = [[ARCoachingDeviceController alloc] initWithDeviceMaskImage:imageCopy geoTrackingMode:1];
    deviceController = v16->_deviceController;
    v16->_deviceController = v21;

    [(ARCoachingDeviceController *)v16->_deviceController setLayerParent:v16->_layer];
    [(CAMetalLayer *)v16->_layer setAllowsGroupBlending:1];
    v23 = ARCreateNonFixedPriorityDispatchQueue();
    queue = v16->_queue;
    v16->_queue = v23;

    v25 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    cubeResolveSpring = v16->_cubeResolveSpring;
    v16->_cubeResolveSpring = v25;

    [(ARFLSpring *)v16->_cubeResolveSpring parameters];
    [(ARFLSpring *)v16->_cubeResolveSpring parameters];
    [(ARFLSpring *)v16->_cubeResolveSpring parameters];
    ARFLSpringParametersMake();
    [(ARFLSpring *)v16->_cubeResolveSpring setParameters:?];
    [(ARFLSpring *)v16->_cubeResolveSpring setTarget:0.0];
    [(ARFLSpring *)v16->_cubeResolveSpring setValue:0.0];
    v27 = [[ARCoachingStateSpring alloc] initWithValue:0.0];
    verticalResolvingSpring = v16->_verticalResolvingSpring;
    v16->_verticalResolvingSpring = v27;

    [(ARFLSpring *)v16->_verticalResolvingSpring parameters];
    [(ARFLSpring *)v16->_verticalResolvingSpring setParameters:?];
    [(ARFLSpring *)v16->_verticalResolvingSpring setTarget:0.0];
    [(ARFLSpring *)v16->_verticalResolvingSpring setValue:0.0];
    v29 = [ARCoachingBasicSpring alloc];
    LODWORD(v30) = 1128792064;
    LODWORD(v31) = 22.0;
    v32 = [(ARCoachingBasicSpring *)v29 initWithTension:v30 friction:v31];
    orientationSpring = v16->_orientationSpring;
    v16->_orientationSpring = v32;

    v34 = objc_alloc_init(MEMORY[0x277CD6D60]);
    [v34 setDepthCompareFunction:1];
    [v34 setDepthWriteEnabled:1];
    v35 = [(MTLDevice *)v16->_device newDepthStencilStateWithDescriptor:v34];
    depthState = v16->_depthState;
    v16->_depthState = v35;
  }

  return v16;
}

- (void)prepareWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__ARCoachingGeoTrackingRenderer_prepareWithCompletionHandler___block_invoke;
  v7[3] = &unk_278BCD430;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(queue, v7);
}

void __62__ARCoachingGeoTrackingRenderer_prepareWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = 0;
  [v2 loadOutlineModelWith:&v5];
  v3 = v5;
  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
  }
}

- (void)drawWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer
{
  bufferCopy = buffer;
  drawableCopy = drawable;
  [(ARCoachingGeoTrackingRenderer *)self drawDeviceWithTimeDelta:drawableCopy drawable:bufferCopy commandBuffer:delta];
  [(ARCoachingGeoTrackingRenderer *)self drawBuildingOutlineWithTimeDelta:drawableCopy drawable:bufferCopy commandBuffer:delta];
}

- (void)drawDeviceWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer
{
  time = self->_time;
  [(ARCoachingAnimTime *)time absoluteTime:drawable];
  [(ARCoachingAnimTime *)time setAbsoluteTime:v8 + delta];
  v10 = kARCoachingDeviceRenderParamsHorizontalGeoTracking;
  v11 = 3233808384;
  deviceController = self->_deviceController;
  [(ARCoachingAnimTime *)self->_time absoluteTime:kARCoachingDeviceRenderParamsHorizontalGeoTracking];
  [ARCoachingDeviceController update:"update:visibility:layer:renderParams:" visibility:self->_layer layer:&v10 renderParams:?];
}

- (void)drawBuildingOutlineWithTimeDelta:(double)delta drawable:(id)drawable commandBuffer:(id)buffer
{
  drawableCopy = drawable;
  bufferCopy = buffer;
  [(ARCoachingGeoTrackingRenderer *)self updateFrameStateWithTimeDelta:delta];
  renderPassDescriptor = [MEMORY[0x277CD6F50] renderPassDescriptor];
  texture = [drawableCopy texture];
  colorAttachments = [renderPassDescriptor colorAttachments];
  v12 = [colorAttachments objectAtIndexedSubscript:0];
  [v12 setTexture:texture];

  colorAttachments2 = [renderPassDescriptor colorAttachments];
  v14 = [colorAttachments2 objectAtIndexedSubscript:0];
  [v14 setStoreAction:1];

  colorAttachments3 = [renderPassDescriptor colorAttachments];
  v16 = [colorAttachments3 objectAtIndexedSubscript:0];
  [v16 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  colorAttachments4 = [renderPassDescriptor colorAttachments];
  v18 = [colorAttachments4 objectAtIndexedSubscript:0];
  [v18 setLoadAction:2];

  colorAttachments5 = [renderPassDescriptor colorAttachments];
  v20 = [colorAttachments5 objectAtIndexedSubscript:0];
  [v20 setStoreAction:1];

  depthTexture = self->_depthTexture;
  depthAttachment = [renderPassDescriptor depthAttachment];
  [depthAttachment setTexture:depthTexture];

  depthAttachment2 = [renderPassDescriptor depthAttachment];
  [depthAttachment2 setLoadAction:2];

  depthAttachment3 = [renderPassDescriptor depthAttachment];
  [depthAttachment3 setClearDepth:1.0];

  depthAttachment4 = [renderPassDescriptor depthAttachment];
  [depthAttachment4 setDepthResolveFilter:0];

  v26 = [bufferCopy renderCommandEncoderWithDescriptor:renderPassDescriptor];
  [v26 setLabel:@"Drawable Render Encoder"];
  [v26 setRenderPipelineState:self->_inflatedHullPipeline];
  [v26 setDepthStencilState:self->_depthState];
  [v26 setVertexBuffer:self->_contentVertexPositions offset:0 atIndex:0];
  [v26 setVertexBuffer:self->_contentVertexGenerics offset:0 atIndex:1];
  [v26 setVertexBytes:self->_anon_d0 length:64 atIndex:2];
  [v26 setCullMode:1];
  if ([(NSMutableArray *)self->_contentIndexBuffers count])
  {
    v27 = 0;
    do
    {
      v28 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v27];
      v29 = [v28 length] >> 2;

      v30 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v27];
      [v26 drawIndexedPrimitives:3 indexCount:v29 indexType:1 indexBuffer:v30 indexBufferOffset:0];

      ++v27;
    }

    while (v27 < [(NSMutableArray *)self->_contentIndexBuffers count]);
  }

  [v26 setCullMode:2];
  [v26 setRenderPipelineState:self->_blockColorPipeline];
  if ([(NSMutableArray *)self->_contentIndexBuffers count])
  {
    v31 = 0;
    do
    {
      v32 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v31];
      v33 = [v32 length] >> 2;

      v34 = [(NSMutableArray *)self->_contentIndexBuffers objectAtIndexedSubscript:v31];
      [v26 drawIndexedPrimitives:3 indexCount:v33 indexType:1 indexBuffer:v34 indexBufferOffset:0];

      ++v31;
    }

    while (v31 < [(NSMutableArray *)self->_contentIndexBuffers count]);
  }

  [v26 endEncoding];
}

- (void)resizeIfNeeded:(id)needed
{
  v34 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  v5 = neededCopy;
  if (self->_depthTexture)
  {
    texture = [neededCopy texture];
    width = [texture width];
    if (width == [(MTLTexture *)self->_depthTexture width])
    {
      texture2 = [v5 texture];
      height = [texture2 height];
      height2 = [(MTLTexture *)self->_depthTexture height];

      if (height == height2)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }
  }

  texture3 = [v5 texture];
  width2 = [texture3 width];
  texture4 = [v5 texture];
  height3 = [texture4 height];

  v15 = kdebug_trace();
  v16 = _ARLogCoaching_0(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v26 = 138544130;
    v27 = v18;
    v28 = 2048;
    selfCopy = self;
    v30 = 2048;
    v31 = width2;
    v32 = 2048;
    v33 = height3;
    _os_log_impl(&dword_23D3AE000, v16, OS_LOG_TYPE_INFO, "%{public}@ <%p>: Creating new depth texture because the drawable size has changed to %.0fx%.0f", &v26, 0x2Au);
  }

  v19 = height3;
  v20 = width2 / v19;
  v21 = tanf(0.56723);
  LODWORD(v22) = 0;
  *(&v22 + 1) = 1.0 / v21;
  *self->_anon_90 = COERCE_UNSIGNED_INT((1.0 / v21) / v20);
  *&self->_anon_90[16] = v22;
  *&self->_anon_90[32] = xmmword_23D3DC090;
  *&self->_anon_90[48] = xmmword_23D3DC0A0;
  v23 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:252 width:width2 height:height3 mipmapped:0];
  [v23 setStorageMode:2];
  [v23 setUsage:4];
  v24 = [(MTLDevice *)self->_device newTextureWithDescriptor:v23];
  depthTexture = self->_depthTexture;
  self->_depthTexture = v24;

  [(MTLTexture *)self->_depthTexture setLabel:@"Depth texture"];
LABEL_9:
}

- (void)resetAnimationTime:(double)time
{
  v5 = objc_alloc_init(ARCoachingAnimTime);
  time = self->_time;
  self->_time = v5;

  v7 = self->_time;

  [(ARCoachingAnimTime *)v7 setAbsoluteTime:time];
}

- (BOOL)loadOutlineModelWith:(id *)with
{
  v134 = *MEMORY[0x277D85DE8];
  v5 = ARKitUIBundle();
  v6 = [v5 URLForResource:@"OutlineModel" withExtension:@"obj"];
  v7 = [[GTMeshData alloc] initWithURL:v6 error:with];
  v8 = v7;
  if (!*with)
  {
    withCopy = with;
    v17 = 16 * [(GTMeshData *)v7 vertexCount];
    v18 = 20 * [(GTMeshData *)v8 vertexCount];
    v19 = [(MTLDevice *)self->_device newBufferWithLength:v17 options:0];
    contentVertexPositions = self->_contentVertexPositions;
    self->_contentVertexPositions = v19;

    v21 = [(MTLDevice *)self->_device newBufferWithLength:v18 options:0];
    contentVertexGenerics = self->_contentVertexGenerics;
    self->_contentVertexGenerics = v21;

    contents = [(MTLBuffer *)self->_contentVertexPositions contents];
    contents2 = [(MTLBuffer *)self->_contentVertexGenerics contents];
    vertexData = [(GTMeshData *)v8 vertexData];
    if ([(GTMeshData *)v8 vertexCount])
    {
      v26 = 0;
      v27 = (vertexData + 24);
      v28 = (contents2 + 16);
      do
      {
        *(contents + 16 * v26) = *(v27 - 6);
        *(v28 - 2) = *(v27 - 2);
        *(v28 - 1) = *(v27 - 1);
        v29 = *v27;
        v27 += 12;
        *v28 = v29;
        v28 += 5;
        ++v26;
      }

      while (v26 < [(GTMeshData *)v8 vertexCount]);
    }

    v30 = objc_alloc_init(MEMORY[0x277CBEB18]);
    contentIndexBuffers = self->_contentIndexBuffers;
    self->_contentIndexBuffers = v30;

    submeshes = [(GTMeshData *)v8 submeshes];
    allValues = [submeshes allValues];
    v34 = [allValues count];

    if (v34)
    {
      v35 = 0;
      do
      {
        submeshes2 = [(GTMeshData *)v8 submeshes];
        allValues2 = [submeshes2 allValues];
        v38 = [allValues2 objectAtIndexedSubscript:v35];

        v39 = -[MTLDevice newBufferWithBytes:length:options:](self->_device, "newBufferWithBytes:length:options:", [v38 indexData], 4 * objc_msgSend(v38, "indexCount"), 0);
        [(NSMutableArray *)self->_contentIndexBuffers setObject:v39 atIndexedSubscript:v35];

        ++v35;
        submeshes3 = [(GTMeshData *)v8 submeshes];
        allValues3 = [submeshes3 allValues];
        v42 = [allValues3 count];
      }

      while (v35 < v42);
    }

    v11 = objc_alloc_init(MEMORY[0x277CD7090]);
    attributes = [v11 attributes];
    v44 = [attributes objectAtIndexedSubscript:0];
    [v44 setFormat:30];

    attributes2 = [v11 attributes];
    v46 = [attributes2 objectAtIndexedSubscript:0];
    [v46 setOffset:0];

    attributes3 = [v11 attributes];
    v48 = [attributes3 objectAtIndexedSubscript:0];
    [v48 setBufferIndex:0];

    attributes4 = [v11 attributes];
    v50 = [attributes4 objectAtIndexedSubscript:1];
    [v50 setFormat:30];

    attributes5 = [v11 attributes];
    v52 = [attributes5 objectAtIndexedSubscript:1];
    [v52 setOffset:8];

    attributes6 = [v11 attributes];
    v54 = [attributes6 objectAtIndexedSubscript:1];
    [v54 setBufferIndex:1];

    layouts = [v11 layouts];
    v56 = [layouts objectAtIndexedSubscript:0];
    [v56 setStride:16];

    layouts2 = [v11 layouts];
    v58 = [layouts2 objectAtIndexedSubscript:0];
    [v58 setStepRate:1];

    layouts3 = [v11 layouts];
    v60 = [layouts3 objectAtIndexedSubscript:0];
    [v60 setStepFunction:1];

    layouts4 = [v11 layouts];
    v62 = [layouts4 objectAtIndexedSubscript:1];
    [v62 setStride:20];

    layouts5 = [v11 layouts];
    v64 = [layouts5 objectAtIndexedSubscript:1];
    [v64 setStepRate:1];

    layouts6 = [v11 layouts];
    v66 = [layouts6 objectAtIndexedSubscript:1];
    [v66 setStepFunction:1];

    v67 = objc_opt_new();
    v68 = self->_device;
    v69 = ARKitUIBundle();
    v70 = [v69 URLForResource:@"default" withExtension:@"metallib"];
    v71 = v70;
    v123 = v68;
    v125 = v6;
    if (v70)
    {
      v127 = 0;
      v72 = [(MTLDevice *)v68 newLibraryWithURL:v70 error:&v127];
      v73 = v127;
      v74 = [v72 setLabel:@"com.apple.arkit.coachinganimation.library"];
      if (!v73)
      {
        goto LABEL_37;
      }

      v75 = v5;
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
      }

      v76 = ARShouldUseLogTypeError_internalOSVersion;
      v77 = _ARLogCoaching_0(v74);
      v121 = v75;
      log = v77;
      if (v76 == 1)
      {
        if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
        {
          localizedDescription = [v73 localizedDescription];
          localizedFailureReason = [v73 localizedFailureReason];
          localizedRecoverySuggestion = [v73 localizedRecoverySuggestion];
          *buf = 138412802;
          v129 = localizedDescription;
          v130 = 2112;
          selfCopy4 = localizedFailureReason;
          v132 = 2112;
          v133 = localizedRecoverySuggestion;
          v80 = localizedRecoverySuggestion;
          v81 = "Error while loading metal library for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
          v82 = log;
          v83 = OS_LOG_TYPE_ERROR;
LABEL_31:
          _os_log_impl(&dword_23D3AE000, v82, v83, v81, buf, 0x20u);
        }
      }

      else if (os_log_type_enabled(v77, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v73 localizedDescription];
        localizedFailureReason = [v73 localizedFailureReason];
        localizedRecoverySuggestion2 = [v73 localizedRecoverySuggestion];
        *buf = 138412802;
        v129 = localizedDescription;
        v130 = 2112;
        selfCopy4 = localizedFailureReason;
        v132 = 2112;
        v133 = localizedRecoverySuggestion2;
        v80 = localizedRecoverySuggestion2;
        v81 = "Error: Error while loading metal library for coaching animation\n\tError: %@\n\tReason: %@\n\tSuggestion: %@";
        v82 = log;
        v83 = OS_LOG_TYPE_INFO;
        goto LABEL_31;
      }

      v5 = v121;
      goto LABEL_37;
    }

    if (ARShouldUseLogTypeError_onceToken != -1)
    {
      [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
    }

    v86 = ARShouldUseLogTypeError_internalOSVersion;
    v87 = _ARLogCoaching_0(v70);
    v73 = v87;
    if (v86 == 1)
    {
      if (os_log_type_enabled(v87, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v88 = "Failed to find metal library for coaching animations";
        v89 = v73;
        v90 = OS_LOG_TYPE_ERROR;
LABEL_35:
        _os_log_impl(&dword_23D3AE000, v89, v90, v88, buf, 2u);
      }
    }

    else if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v88 = "Error: Failed to find metal library for coaching animations";
      v89 = v73;
      v90 = OS_LOG_TYPE_INFO;
      goto LABEL_35;
    }

    v72 = 0;
LABEL_37:

    v92 = [v72 newFunctionWithName:@"inflatedInverseHullVertexShader"];
    v93 = [v72 newFunctionWithName:@"solidWhiteFragmentShader"];
    [v67 setVertexDescriptor:v11];
    v124 = v92;
    [v67 setVertexFunction:v92];
    [v67 setFragmentFunction:v93];
    pixelFormat = self->_pixelFormat;
    colorAttachments = [v67 colorAttachments];
    v96 = [colorAttachments objectAtIndexedSubscript:0];
    [v96 setPixelFormat:pixelFormat];

    [v67 setDepthAttachmentPixelFormat:252];
    [v67 setLabel:@"Inflated Hull Pipeline"];
    v97 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:v67 error:withCopy];
    inflatedHullPipeline = self->_inflatedHullPipeline;
    self->_inflatedHullPipeline = v97;

    if (self->_inflatedHullPipeline)
    {
      [v67 setLabel:@"Block Color Pipeline"];
      v100 = [v72 newFunctionWithName:@"simplePositionVertexShader"];
      [v67 setVertexFunction:v100];

      v101 = [v72 newFunctionWithName:@"solidBlackFragmentShader"];
      [v67 setFragmentFunction:v101];

      v102 = [(MTLDevice *)self->_device newRenderPipelineStateWithDescriptor:v67 error:withCopy];
      blockColorPipeline = self->_blockColorPipeline;
      self->_blockColorPipeline = v102;

      v6 = v125;
      if (self->_blockColorPipeline)
      {
        v85 = 1;
        v105 = v124;
LABEL_56:

        goto LABEL_57;
      }

      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
      }

      v109 = ARShouldUseLogTypeError_internalOSVersion;
      v110 = _ARLogGeneral(v104);
      v108 = v110;
      if (v109 == 1)
      {
        if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
        {
LABEL_49:
          v111 = objc_opt_class();
          v112 = NSStringFromClass(v111);
          v113 = *withCopy;
          *buf = 138543874;
          v129 = v112;
          v130 = 2048;
          selfCopy4 = self;
          v132 = 2112;
          v133 = v113;
          v114 = "%{public}@ <%p>: Failed to create content render pipeline state, error: %@.";
          v115 = v108;
          v116 = OS_LOG_TYPE_ERROR;
LABEL_54:
          _os_log_impl(&dword_23D3AE000, v115, v116, v114, buf, 0x20u);
        }

LABEL_55:
        v105 = v124;

        v85 = 0;
        goto LABEL_56;
      }

      if (!os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v6 = v125;
      if (ARShouldUseLogTypeError_onceToken != -1)
      {
        [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
      }

      v106 = ARShouldUseLogTypeError_internalOSVersion;
      v107 = _ARLogGeneral(v99);
      v108 = v107;
      if (v106 == 1)
      {
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_49;
        }

        goto LABEL_55;
      }

      if (!os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
      {
        goto LABEL_55;
      }
    }

    v117 = objc_opt_class();
    v112 = NSStringFromClass(v117);
    v118 = *withCopy;
    *buf = 138543874;
    v129 = v112;
    v130 = 2048;
    selfCopy4 = self;
    v132 = 2112;
    v133 = v118;
    v114 = "Error: %{public}@ <%p>: Failed to create content render pipeline state, error: %@.";
    v115 = v108;
    v116 = OS_LOG_TYPE_INFO;
    goto LABEL_54;
  }

  if (ARShouldUseLogTypeError_onceToken != -1)
  {
    [ARCoachingGeoTrackingRenderer loadOutlineModelWith:];
  }

  v9 = ARShouldUseLogTypeError_internalOSVersion;
  v10 = _ARLogGeneral(v7);
  v11 = v10;
  if (v9 == 1)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138543618;
      v129 = v13;
      v130 = 2048;
      selfCopy4 = self;
      v14 = "%{public}@ <%p>: Loading the outline model failed.";
      v15 = v11;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_22:
      _os_log_impl(&dword_23D3AE000, v15, v16, v14, buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v84 = objc_opt_class();
    v13 = NSStringFromClass(v84);
    *buf = 138543618;
    v129 = v13;
    v130 = 2048;
    selfCopy4 = self;
    v14 = "Error: %{public}@ <%p>: Loading the outline model failed.";
    v15 = v11;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_22;
  }

  v85 = 0;
LABEL_57:

  return v85;
}

- (void)updateFrameStateWithTimeDelta:(double)delta
{
  v4 = self->_ftime + delta;
  self->_ftime = v4;
  v5 = (v4 * 0.25) * 3.14159265 + (v4 * 0.25) * 3.14159265;
  *v6.i64 = simd_matrix4x4(_PromotedConst);
  v45 = v6;
  v46 = v7;
  v47 = v8;
  v43 = v9;
  ARMatrix4x4FromRotationAndTranslation();
  v10 = 0;
  v48 = v11;
  v49 = v12;
  v50 = v13;
  v51 = v14;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v10) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(&v48 + v10))), v46, *&v48.f32[v10 / 4], 1), v47, *(&v48 + v10), 2), v43, *(&v48 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v15 = sinf(v5);
  v42 = v53;
  v44 = v52;
  v40 = v55;
  v41 = v54;
  v16 = __sincosf_stret(((v15 * -0.083333) + -2.15) * 0.5);
  v17 = vmulq_n_f32(xmmword_23D3DC0C0, v16.__sinval);
  v17.i32[3] = LODWORD(v16.__cosval);
  *v18.i64 = simd_matrix4x4(v17);
  v38 = v19;
  v39 = v18;
  v36 = v21;
  v37 = v20;
  ARMatrix4x4FromRotationAndTranslation();
  v22 = 0;
  v48 = v23;
  v49 = v24;
  v50 = v25;
  v51 = v26;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v22) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, COERCE_FLOAT(*(&v48 + v22))), v38, *&v48.f32[v22 / 4], 1), v37, *(&v48 + v22), 2), v36, *(&v48 + v22), 3);
    v22 += 16;
  }

  while (v22 != 64);
  v27 = 0;
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v27) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&v48 + v27))), v42, *&v48.f32[v27 / 4], 1), v41, *(&v48 + v27), 2), v40, *(&v48 + v27), 3);
    v27 += 16;
  }

  while (v27 != 64);
  v28 = 0;
  v29 = *self->_anon_90;
  v30 = *&self->_anon_90[16];
  v31 = *&self->_anon_90[32];
  v32 = *&self->_anon_90[48];
  v48 = v52;
  v49 = v53;
  v50 = v54;
  v51 = v55;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  do
  {
    *(&v52 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v48 + v28))), v30, *&v48.f32[v28 / 4], 1), v31, *(&v48 + v28), 2), v32, *(&v48 + v28), 3);
    v28 += 16;
  }

  while (v28 != 64);
  v33 = v53;
  v34 = v54;
  v35 = v55;
  *self->_anon_d0 = v52;
  *&self->_anon_d0[16] = v33;
  *&self->_anon_d0[32] = v34;
  *&self->_anon_d0[48] = v35;
}

@end