@interface SINoOpScaler
- (BOOL)scaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer;
- (__CVBuffer)createScaledImage:(__CVBuffer *)image;
@end

@implementation SINoOpScaler

- (BOOL)scaleImage:(__CVBuffer *)image outputBuffer:(__CVBuffer *)buffer
{
  if (image)
  {
    [SINoOpScaler scaleImage:? outputBuffer:?];
  }

  return 0;
}

- (__CVBuffer)createScaledImage:(__CVBuffer *)image
{
  v11 = *MEMORY[0x277D85DE8];
  if (image)
  {
    v4 = [(SIBaseScaler *)self _imageConformsToOutput:?];
    if (!v4)
    {
      [SINoOpScaler createScaledImage:v4];
    }

    return CVPixelBufferRetain(image);
  }

  else
  {
    v6 = __SceneIntelligenceLogSharedInstance(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 136380931;
      v8 = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SINoOpScaler.m";
      v9 = 1025;
      v10 = 27;
      _os_log_impl(&dword_21DE0D000, v6, OS_LOG_TYPE_ERROR, " %{private}s:%{private}d *** Error! Scaler gets nil input. ***", &v7, 0x12u);
    }

    return 0;
  }
}

- (void)scaleImage:(uint64_t)a1 outputBuffer:.cold.1(uint64_t a1)
{
  v1 = __SceneIntelligenceLogSharedInstance(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *v8 = 136380931;
    *&v8[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SINoOpScaler.m";
    *&v8[12] = 1025;
    *&v8[14] = 20;
    OUTLINED_FUNCTION_0_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Scaling not implemented. ***", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
  }

  abort();
}

- (void)createScaledImage:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v1 = __SceneIntelligenceLogSharedInstance(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *v8 = 136380931;
    *&v8[4] = "/Library/Caches/com.apple.xbs/Sources/SceneIntelligence/Source/Common/Scaler/SINoOpScaler.m";
    *&v8[12] = 1025;
    *&v8[14] = 34;
    OUTLINED_FUNCTION_0_0(&dword_21DE0D000, v2, v3, " %{private}s:%{private}d *** Image scaling not supported. ***", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
  }

  abort();
}

@end