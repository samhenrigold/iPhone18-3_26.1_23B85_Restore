@interface SIVideoToolboxScaler
- (__CVBuffer)createScaledImage:(__CVBuffer *)image;
- (id)initForOutputResolution:(CGSize)resolution outputPixelFormat:(unsigned int)format mode:(unint64_t)mode bytePerRowAlignment:(unint64_t)alignment algorithmKey:(id)key;
- (void)dealloc;
@end

@implementation SIVideoToolboxScaler

- (id)initForOutputResolution:(CGSize)resolution outputPixelFormat:(unsigned int)format mode:(unint64_t)mode bytePerRowAlignment:(unint64_t)alignment algorithmKey:(id)key
{
  v8 = *&format;
  v29 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = SIVideoToolboxScaler;
  v9 = [(SIBaseScaler *)&v24 initForOutputResolution:*&format outputPixelFormat:mode mode:alignment bytePerRowAlignment:key algorithmKey:resolution.width, resolution.height];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = VTPixelTransferSessionCreate(0, v9 + 7);
  if (v11)
  {
    v12 = __SceneIntelligenceLogSharedInstance(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v26 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
      v27 = 1025;
      v28 = 46;
      v13 = " %{private}s:%{private}d *** Failure to create vtPixelTransferSession ***";
LABEL_16:
      _os_log_impl(&dword_21DE0D000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0x12u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  v14 = MEMORY[0x277CE2A70];
  v15 = MEMORY[0x277CE2A80];
  if (mode != 1)
  {
    v15 = MEMORY[0x277CE2A78];
  }

  if (mode != 2)
  {
    v14 = v15;
  }

  v16 = VTSessionSetProperty(v10[7], *MEMORY[0x277CE28B0], *v14);
  if (!v16)
  {
    outputBufferBytePerRowAlignment = [(VTPixelTransferSessionRef *)v10 outputBufferBytePerRowAlignment];
    [(VTPixelTransferSessionRef *)v10 outputResolution];
    v19 = v18;
    [(VTPixelTransferSessionRef *)v10 outputResolution];
    if (outputBufferBytePerRowAlignment)
    {
      v21 = SIPixelBufferPoolCreateWithBytePerRowAlignment(v19, v20, [(VTPixelTransferSessionRef *)v10 outputPixelFormat], [(VTPixelTransferSessionRef *)v10 outputBufferBytePerRowAlignment], v10 + 6);
      if (v21)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v21 = SIPixelBufferPoolCreate(v19, v20, v8, v10 + 6);
      if (v21)
      {
LABEL_14:
        v12 = __SceneIntelligenceLogSharedInstance(v21);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 136380931;
          v26 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
          v27 = 1025;
          v28 = 72;
          v13 = " %{private}s:%{private}d *** Failure to create pixel buffer pool for downscaling ***";
          goto LABEL_16;
        }

        goto LABEL_17;
      }
    }

    v22 = v10;
    goto LABEL_19;
  }

  v12 = __SceneIntelligenceLogSharedInstance(v16);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 136380931;
    v26 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
    v27 = 1025;
    v28 = 60;
    v13 = " %{private}s:%{private}d *** Failure to set scaling mode on pixel transfer session ***";
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v22 = 0;
LABEL_19:

  return v22;
}

- (__CVBuffer)createScaledImage:(__CVBuffer *)image
{
  v15 = *MEMORY[0x277D85DE8];
  if (!image)
  {
    v6 = __SceneIntelligenceLogSharedInstance(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136380931;
      v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
      v13 = 1025;
      v14 = 92;
      v7 = " %{private}s:%{private}d *** Error! Scaler gets nil input. ***";
LABEL_14:
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
    }

LABEL_15:

    return 0;
  }

  CVPixelBufferGetWidth(image);
  CVPixelBufferGetHeight(image);
  [(SIBaseScaler *)self algorithmKey];
  kdebug_trace();
  if (![(SIBaseScaler *)self _imageConformsToOutput:image])
  {
    pixelBufferOut = 0;
    v8 = CVPixelBufferPoolCreatePixelBuffer(0, self->_pool, &pixelBufferOut);
    if (v8)
    {
      v6 = __SceneIntelligenceLogSharedInstance(v8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
        v13 = 1025;
        v14 = 109;
        v7 = " %{private}s:%{private}d *** Failure to create pixel buffer for downscaling ***";
        goto LABEL_14;
      }
    }

    else
    {
      v9 = VTPixelTransferSessionTransferImage(self->_session, image, pixelBufferOut);
      if (!v9)
      {
        [(SIBaseScaler *)self outputResolution];
        [(SIBaseScaler *)self outputResolution];
        [(SIBaseScaler *)self algorithmKey];
        kdebug_trace();
        return pixelBufferOut;
      }

      v6 = __SceneIntelligenceLogSharedInstance(v9);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 136380931;
        v12 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SIVideoToolboxScaler.m";
        v13 = 1025;
        v14 = 112;
        v7 = " %{private}s:%{private}d *** Failure to perform downscaling/conversion via pixel transfer ***";
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  [(SIBaseScaler *)self outputResolution];
  [(SIBaseScaler *)self outputResolution];
  [(SIBaseScaler *)self algorithmKey];
  kdebug_trace();

  return CVPixelBufferRetain(image);
}

- (void)dealloc
{
  CVPixelBufferPoolRelease(self->_pool);
  session = self->_session;
  if (session)
  {
    VTPixelTransferSessionInvalidate(session);
    CFRelease(self->_session);
  }

  v4.receiver = self;
  v4.super_class = SIVideoToolboxScaler;
  [(SIVideoToolboxScaler *)&v4 dealloc];
}

@end