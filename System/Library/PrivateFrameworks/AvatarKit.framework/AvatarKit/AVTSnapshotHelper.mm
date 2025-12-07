@interface AVTSnapshotHelper
- (BOOL)_isRenderPassDescriptorValid;
- (CGImageRef)newCGImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height error:;
- (uint64_t)newImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height imagePointSize:(double)size contentScaleFactor:(double)factor error:(float)error;
- (void)_rebuildBitmapContextIfNeeded;
- (void)_rebuildRenderPassDescriptorIfNeeded;
- (void)dealloc;
@end

@implementation AVTSnapshotHelper

- (CGImageRef)newCGImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height error:
{
  v99 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = v11;
  if (!Image)
  {
    goto LABEL_51;
  }

  if (!mode || !width)
  {
    backgroundColor = avt_default_log(v11);
    if (os_log_type_enabled(backgroundColor, OS_LOG_TYPE_ERROR))
    {
      v63 = objc_opt_class();
      v64 = NSStringFromClass(v63);
      *buf = 138412802;
      *&buf[4] = v64;
      *&buf[12] = 1024;
      *&buf[14] = mode;
      *&buf[18] = 1024;
      *&buf[20] = width;
      _os_log_error_impl(&dword_1BB472000, backgroundColor, OS_LOG_TYPE_ERROR, "Error: %@ Can't create a snapshot of size %d×%d", buf, 0x18u);
    }

    Image = 0;
    goto LABEL_50;
  }

  device = [v11 device];
  v14 = *(Image + 1);
  *(Image + 1) = device;

  if (!*(Image + 1))
  {
    v16 = avt_default_log(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [AVTSnapshotHelper newCGImageWithRenderer:v16 antialiasingMode:? pixelWidth:? pixelHeight:? error:?];
    }
  }

  *(Image + 9) = mode;
  *(Image + 10) = width;
  *(Image + 11) = renderer;
  backgroundColor = [v12 backgroundColor];
  if (*(Image + 12) != backgroundColor)
  {
    objc_storeStrong(Image + 12, backgroundColor);
    v18 = AVTColor4WithCGColor([*(Image + 12) CGColor]);
    v19 = vmulq_laneq_f32(v18, v18, 3);
    *(Image + 104) = vcvtq_f64_f32(*v19.i8);
    v19.i32[0] = vextq_s8(v19, v19, 8uLL).u32[0];
    v19.i32[1] = vextq_s8(*&v18, *&v18, 8uLL).i32[1];
    *(Image + 120) = vcvtq_f64_f32(*v19.i8);
    colorAttachments = [*(Image + 3) colorAttachments];
    v21 = [colorAttachments objectAtIndexedSubscript:?];
    [v21 setClearColor:?];
  }

  v22 = (Image + 16);
  device2 = [*(Image + 2) device];
  v24 = *(Image + 1);

  if (device2 != v24)
  {
    v25 = *(Image + 3);
    *(Image + 3) = 0;

    newCommandQueue = [*(Image + 1) newCommandQueue];
    v27 = *(Image + 2);
    *(Image + 2) = newCommandQueue;

    [*(Image + 2) setBackgroundGPUPriority:?];
    v28 = AVTMTLDeviceSupportsReadWritePixelFormat();
    v29 = @"avt_convert_linear_premultiplied_to_gamma_premultiplied_copy";
    *(Image + 32) = v28;
    if (v28)
    {
      v29 = @"avt_convert_linear_premultiplied_to_gamma_premultiplied_in_place";
    }

    v30 = *(Image + 1);
    v31 = v29;
    v32 = [AVTMetalHelper helperForDevice:v30];
    v33 = [(AVTMetalHelper *)v32 computePipelineStateWithFunctionName:v31];

    v34 = *(Image + 8);
    *(Image + 8) = v33;
  }

  [(CGImage *)Image _rebuildRenderPassDescriptorIfNeeded];
  [(CGImage *)Image _rebuildBitmapContextIfNeeded];
  if (os_variant_has_internal_diagnostics())
  {
    v35 = objc_alloc_init(MEMORY[0x1E6974010]);
    [v35 setErrorOptions:?];
    logs2 = [*v22 commandBufferWithDescriptor:?];

    if (logs2)
    {
      goto LABEL_16;
    }

LABEL_24:
    v38 = avt_default_log(commandBuffer);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      [AVTSnapshotHelper newCGImageWithRenderer:v38 antialiasingMode:? pixelWidth:? pixelHeight:? error:?];
    }

    Image = 0;
    goto LABEL_49;
  }

  commandBuffer = [*v22 commandBuffer];
  logs2 = commandBuffer;
  if (!commandBuffer)
  {
    goto LABEL_24;
  }

LABEL_16:
  heightCopy = height;
  [v12 renderWithViewport:? commandBuffer:? passDescriptor:?];
  v38 = *(Image + 5);
  threadExecutionWidth = [*(Image + 8) threadExecutionWidth];
  maxTotalThreadsPerThreadgroup = [*(Image + 8) maxTotalThreadsPerThreadgroup];
  computeCommandEncoder = [logs2 computeCommandEncoder];
  [computeCommandEncoder setComputePipelineState:?];
  [computeCommandEncoder setTexture:? atIndex:?];
  if ((*(Image + 32) & 1) == 0)
  {
    v42 = *(Image + 7);

    [computeCommandEncoder setTexture:? atIndex:?];
    v38 = v42;
  }

  device3 = [computeCommandEncoder device];
  v44 = AVTMTLDeviceSupportsNonUniformThreadgroupSize(device3);

  if (v44)
  {
    width = [*(Image + 5) width];
    height = [*(Image + 5) height];
    *buf = width;
    *&buf[8] = height;
    *&buf[16] = 1;
    *v88 = threadExecutionWidth;
    *&v88[8] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
    *&v88[16] = 1;
    [computeCommandEncoder dispatchThreads:? threadsPerThreadgroup:?];
  }

  else
  {
    width2 = [*(Image + 5) width];
    if (threadExecutionWidth >= width2)
    {
      v48 = width2;
    }

    else
    {
      v48 = threadExecutionWidth;
    }

    height2 = [*(Image + 5) height];
    if (threadExecutionWidth >= height2)
    {
      v50 = height2;
    }

    else
    {
      v50 = threadExecutionWidth;
    }

    do
    {
      v51 = v50;
      v52 = v50 * v48;
      v50 >>= 1;
    }

    while (v52 > maxTotalThreadsPerThreadgroup);
    v53 = ([*(Image + 5) width] + v48 - 1) / v48;
    height3 = [*(Image + 5) height];
    *buf = v53;
    *&buf[8] = (height3 + v51 - 1) / v51;
    *&buf[16] = 1;
    *v88 = v48;
    *&v88[8] = v51;
    *&v88[16] = 1;
    [computeCommandEncoder dispatchThreadgroups:? threadsPerThreadgroup:?];
  }

  [computeCommandEncoder endEncoding];
  [logs2 commit];
  [logs2 waitUntilCompleted];
  if ([logs2 status] == 4)
  {
    CGBitmapContextGetData(*(Image + 17));
    CGBitmapContextGetBytesPerRow(*(Image + 17));
    memset(buf, 0, 24);
    *&buf[24] = *(Image + 72);
    *&buf[40] = 1;
    [NSObject getBytes:v38 bytesPerRow:"getBytes:bytesPerRow:fromRegion:mipmapLevel:" fromRegion:? mipmapLevel:?];
    Image = CGBitmapContextCreateImage(*(Image + 17));
LABEL_48:

LABEL_49:
LABEL_50:

LABEL_51:
    return Image;
  }

  error = [logs2 error];
  v56 = error;
  if (heightCopy && error)
  {
    v57 = error;
    *heightCopy = v56;
  }

  code = AVTIsRunningInAppExtensionOrViewService();
  if (code)
  {
    v69 = avt_default_log(code);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      v70 = objc_opt_class();
      v71 = NSStringFromClass(v70);
      status = [logs2 status];
      logs = [logs2 logs];
      *buf = 136316418;
      *&buf[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v71;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      *&buf[32] = 1024;
      *&buf[34] = status;
      *&buf[38] = 2112;
      *&buf[40] = v56;
      LOWORD(v97) = 2112;
      *(&v97 + 2) = logs;
      _os_log_fault_impl(&dword_1BB472000, v69, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
    }

    v87 = 0;
    v98 = 0u;
    v97 = 0u;
    memset(buf, 0, sizeof(buf));
    v74 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v75 = 3;
    }

    else
    {
      v75 = 2;
    }

    v76 = objc_opt_class();
    v77 = NSStringFromClass(v76);
    status2 = [logs2 status];
    logs2 = [logs2 logs];
    *v88 = 136316418;
    *&v88[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
    *&v88[12] = 2112;
    *&v88[14] = v77;
    *&v88[22] = 2048;
    v89 = v12;
    v90 = 1024;
    v91 = status2;
    v92 = 2112;
    v93 = v56;
    v94 = 2112;
    v95 = logs2;
    v12 = _os_log_send_and_compose_impl(v75, &v87, buf, 80, &dword_1BB472000, v74, 16, "AvatarKit crash: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", v88, 58);

    _os_crash_msg();
    __break(1u);
  }

  else
  {
    if (v56)
    {
      domain = [v56 domain];
      v60 = *MEMORY[0x1E6973F70];

      if (domain == v60)
      {
        code = [v56 code];
        if (code == 7)
        {
          [AVTSnapshotHelper newCGImageWithRenderer:v12 antialiasingMode:logs2 pixelWidth:v56 pixelHeight:? error:?];
LABEL_47:

          Image = 0;
          goto LABEL_48;
        }
      }
    }

    v61 = avt_default_log(code);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
    {
      v65 = objc_opt_class();
      v66 = NSStringFromClass(v65);
      status3 = [logs2 status];
      v36Logs = [logs2 logs];
      *buf = 136316418;
      *&buf[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
      *&buf[12] = 2112;
      *&buf[14] = v66;
      *&buf[22] = 2048;
      *&buf[24] = v12;
      *&buf[32] = 1024;
      *&buf[34] = status3;
      *&buf[38] = 2112;
      *&buf[40] = v56;
      LOWORD(v97) = 2112;
      *(&v97 + 2) = v36Logs;
      _os_log_fault_impl(&dword_1BB472000, v61, OS_LOG_TYPE_FAULT, "Fault: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", buf, 0x3Au);
    }

    if (!AVTLogAllowsInternalCrash())
    {
      goto LABEL_47;
    }
  }

  v87 = 0;
  v98 = 0u;
  v97 = 0u;
  memset(buf, 0, sizeof(buf));
  v79 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v80 = 3;
  }

  else
  {
    v80 = 2;
  }

  v81 = objc_opt_class();
  v82 = NSStringFromClass(v81);
  status4 = [logs2 status];
  v36Logs2 = [logs2 logs];
  *v88 = 136316418;
  *&v88[4] = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
  *&v88[12] = 2112;
  *&v88[14] = v82;
  *&v88[22] = 2048;
  v89 = v12;
  v90 = 1024;
  v91 = status4;
  v92 = 2112;
  v93 = v56;
  v94 = 2112;
  v95 = v36Logs2;
  LODWORD(v85) = 58;
  _os_log_send_and_compose_impl(v80, &v87, buf, 80, &dword_1BB472000, v79, 16, "AvatarKit crash: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", v88, v85);

  result = _os_crash_msg();
  __break(1u);
  return result;
}

- (BOOL)_isRenderPassDescriptorValid
{
  renderPassDescriptor = self->_renderPassDescriptor;
  if (!renderPassDescriptor)
  {
    return 0;
  }

  colorAttachments = [(MTLRenderPassDescriptor *)renderPassDescriptor colorAttachments];
  v5 = [colorAttachments objectAtIndexedSubscript:?];
  texture = [v5 texture];

  device = [texture device];
  device = self->_device;

  if (device == device && [texture width] == self->_pixelWidth && objc_msgSend(texture, "height") == self->_pixelHeight)
  {
    antialiasingMode = self->_antialiasingMode;
    v10 = antialiasingMode - 1;
    v11 = 1;
    if (antialiasingMode == 1)
    {
      v11 = 2;
    }

    if (antialiasingMode == 2)
    {
      v12 = 4;
    }

    else
    {
      v12 = v11;
    }

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v14 = [colorAttachments2 objectAtIndexedSubscript:?];
    resolveTexture = [v14 resolveTexture];

    if (v10 > 1)
    {
      if (!resolveTexture)
      {
LABEL_13:
        v16 = 1;
LABEL_20:

        goto LABEL_15;
      }
    }

    else if (resolveTexture && [texture sampleCount] == v12)
    {
      goto LABEL_13;
    }

    v16 = 0;
    goto LABEL_20;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

- (void)_rebuildRenderPassDescriptorIfNeeded
{
  if (![(AVTSnapshotHelper *)self _isRenderPassDescriptorValid])
  {
    v28 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:? width:? height:? mipmapped:?];
    [v28 setStorageMode:?];
    [v28 setUsage:?];
    [v28 usage];
    [v28 setUsage:?];
    v3 = [(MTLDevice *)self->_device newTextureWithDescriptor:?];
    objc_storeStrong(&self->_convertPremultipliedAlphaTexture, v3);
    v4 = [v3 newTextureViewWithPixelFormat:?];
    convertPremultipliedAlphaTextureView = self->_convertPremultipliedAlphaTextureView;
    self->_convertPremultipliedAlphaTextureView = v4;

    if (self->_supportsReadWriteTexture)
    {
      convertPremultipliedAlphaExtraTexture = self->_convertPremultipliedAlphaExtraTexture;
      self->_convertPremultipliedAlphaExtraTexture = 0;
    }

    else
    {
      convertPremultipliedAlphaExtraTexture = [v28 copy];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture setPixelFormat:?];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture usage];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture setUsage:?];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture usage];
      [(MTLTexture *)convertPremultipliedAlphaExtraTexture setUsage:?];
      v7 = [(MTLDevice *)self->_device newTextureWithDescriptor:?];
      v8 = self->_convertPremultipliedAlphaExtraTexture;
      self->_convertPremultipliedAlphaExtraTexture = v7;
    }

    AVTMTLDeviceSupportsMemorylessStorage(self->_device);
    if (self->_antialiasingMode - 1 > 1)
    {
      v9 = 0;
    }

    else
    {
      [v28 setStorageMode:?];
      [v28 setUsage:?];
      [v28 setTextureType:?];
      [v28 setSampleCount:?];
      v9 = [(MTLDevice *)self->_device newTextureWithDescriptor:?];
    }

    v10 = [MEMORY[0x1E69741B8] texture2DDescriptorWithPixelFormat:? width:? height:? mipmapped:?];
    [v10 setStorageMode:?];
    [v10 setUsage:?];
    [v10 setTextureType:?];
    [v10 setSampleCount:?];
    v11 = [(MTLDevice *)self->_device newTextureWithDescriptor:?];
    renderPassDescriptor = [MEMORY[0x1E6974130] renderPassDescriptor];
    renderPassDescriptor = self->_renderPassDescriptor;
    self->_renderPassDescriptor = renderPassDescriptor;

    colorAttachments = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v15 = [colorAttachments objectAtIndexedSubscript:?];
    [v15 setTexture:?];

    colorAttachments2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v17 = [colorAttachments2 objectAtIndexedSubscript:?];
    [v17 setResolveTexture:?];

    colorAttachments3 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v19 = [colorAttachments3 objectAtIndexedSubscript:?];
    [v19 setLoadAction:?];

    colorAttachments4 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v21 = [colorAttachments4 objectAtIndexedSubscript:?];
    [v21 setClearColor:?];

    colorAttachments5 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor colorAttachments];
    v23 = [colorAttachments5 objectAtIndexedSubscript:?];
    [v23 setStoreAction:?];

    depthAttachment = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment setTexture:?];

    depthAttachment2 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment2 setClearDepth:?];

    depthAttachment3 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment3 setLoadAction:?];

    depthAttachment4 = [(MTLRenderPassDescriptor *)self->_renderPassDescriptor depthAttachment];
    [depthAttachment4 setStoreAction:?];
  }
}

- (void)_rebuildBitmapContextIfNeeded
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    Width = CGBitmapContextGetWidth(bitmapContext);
    pixelWidth = self->_pixelWidth;
    Height = CGBitmapContextGetHeight(self->_bitmapContext);
    if (Width == pixelWidth && Height == self->_pixelHeight)
    {
      if (self->_bitmapContext)
      {
        return;
      }
    }

    else
    {
      Data = CGBitmapContextGetData(self->_bitmapContext);
      free(Data);
      CFRelease(self->_bitmapContext);
      self->_bitmapContext = 0;
    }
  }

  v8 = 4 * (self->_pixelWidth & 0x3FFFFFFF);
  v9 = malloc_type_malloc(v8 * self->_pixelHeight, 0x100004077774924uLL);
  v10 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  self->_bitmapContext = CGBitmapContextCreate(v9, self->_pixelWidth, self->_pixelHeight, 8uLL, v8, v10, 0x4001u);

  CFRelease(v10);
}

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    Data = CGBitmapContextGetData(bitmapContext);
    free(Data);
    CFRelease(self->_bitmapContext);
  }

  v5.receiver = self;
  v5.super_class = AVTSnapshotHelper;
  [(AVTSnapshotHelper *)&v5 dealloc];
}

- (uint64_t)newImageWithRenderer:(uint64_t)renderer antialiasingMode:(uint64_t)mode pixelWidth:(uint64_t)width pixelHeight:(void *)height imagePointSize:(double)size contentScaleFactor:(double)factor error:(float)error
{
  v14 = a2;
  if (self && (v15 = [(AVTSnapshotHelper *)self newCGImageWithRenderer:v14 antialiasingMode:renderer pixelWidth:mode pixelHeight:width error:height]) != 0)
  {
    v16 = v15;
    v17 = [MEMORY[0x1E69DCAB8] imageWithCGImage:? scale:? orientation:?];
    CFRelease(v16);
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)newCGImageWithRenderer:(os_log_t)log antialiasingMode:pixelWidth:pixelHeight:error:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136315138;
  v2 = "_device";
}

- (void)newCGImageWithRenderer:(uint64_t *)a1 antialiasingMode:(NSObject *)a2 pixelWidth:pixelHeight:error:.cold.2(uint64_t *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = 136315394;
  v4 = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
  v5 = 2048;
  v6 = v2;
  _os_log_error_impl(&dword_1BB472000, a2, OS_LOG_TYPE_ERROR, "Error: %s Failed to create a command buffer from command queue %p", &v3, 0x16u);
}

- (void)newCGImageWithRenderer:(uint64_t)a3 antialiasingMode:pixelWidth:pixelHeight:error:.cold.3(uint64_t a1, void *a2, uint64_t a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = avt_default_log(a1);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [a2 status];
    v10 = [a2 logs];
    v11 = 136316418;
    v12 = "[AVTSnapshotHelper newCGImageWithRenderer:antialiasingMode:pixelWidth:pixelHeight:error:]";
    v13 = 2112;
    v14 = v8;
    v15 = 2048;
    v16 = a1;
    v17 = 1024;
    v18 = v9;
    v19 = 2112;
    v20 = a3;
    v21 = 2112;
    v22 = v10;
    _os_log_error_impl(&dword_1BB472000, v6, OS_LOG_TYPE_ERROR, "Error: %s %@ %p: Command buffer execution failed with status %d, error: %@\n%@", &v11, 0x3Au);
  }
}

@end