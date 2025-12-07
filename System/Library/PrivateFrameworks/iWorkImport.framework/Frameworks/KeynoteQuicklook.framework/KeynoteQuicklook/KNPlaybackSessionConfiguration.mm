@interface KNPlaybackSessionConfiguration
+ (KNPlaybackSessionConfiguration)configurationWithLayerHost:(id)host renderingMode:(int64_t)mode shouldEnableHDR:(BOOL)r;
+ (KNPlaybackSessionConfiguration)configurationWithOffscreenCGContextBoundsSize:(CGSize)size shouldEnableHDR:(BOOL)r;
- (BOOL)isMetalEnabled;
- (BOOL)isRealtime;
- (BOOL)isSceneRenderingEnabled;
- (BOOL)isWideGamut;
- (CGColorSpace)colorSpace;
- (CGSize)boundsSize;
- (KNPlaybackLayerHost)layerHost;
- (KNPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment;
- (double)canvasViewScaleForUnscaledSize:(CGSize)size;
- (double)pixelAspectRatio;
- (id)initSuperclass;
@end

@implementation KNPlaybackSessionConfiguration

+ (KNPlaybackSessionConfiguration)configurationWithLayerHost:(id)host renderingMode:(int64_t)mode shouldEnableHDR:(BOOL)r
{
  rCopy = r;
  hostCopy = host;
  if (!mode)
  {
    canEnableMetal = 0;
    goto LABEL_5;
  }

  if (mode == 1)
  {
    canEnableMetal = [self canEnableMetal];
LABEL_5:
    v10 = [[KNLayerPlaybackSessionConfiguration alloc] initWithLayerHost:hostCopy isMetalEnabled:canEnableMetal isSceneRenderingEnabled:0 isHDREnabled:rCopy];
    goto LABEL_7;
  }

  v10 = 0;
LABEL_7:

  return v10;
}

+ (KNPlaybackSessionConfiguration)configurationWithOffscreenCGContextBoundsSize:(CGSize)size shouldEnableHDR:(BOOL)r
{
  v4 = [[KNOffscreenCGContextPlaybackSessionConfiguration alloc] initWithOffscreenCGContextBoundsSize:r isHDREnabled:size.width, size.height];

  return v4;
}

- (id)initSuperclass
{
  v3.receiver = self;
  v3.super_class = KNPlaybackSessionConfiguration;
  return [(KNPlaybackSessionConfiguration *)&v3 init];
}

- (CGSize)boundsSize
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSessionConfiguration boundsSize]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:184 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNPlaybackSessionConfiguration boundsSize]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (double)canvasViewScaleForUnscaledSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  [(KNPlaybackSessionConfiguration *)self boundsSize];
  return fmin(v5 / width, v6 / height);
}

- (CGColorSpace)colorSpace
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSessionConfiguration colorSpace]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:194 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNPlaybackSessionConfiguration colorSpace]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)isWideGamut
{
  v3 = objc_opt_class();
  [(KNPlaybackSessionConfiguration *)self colorSpace];

  return MEMORY[0x2821F9670](v3, sel_isColorSpaceWideGamut_);
}

- (double)pixelAspectRatio
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSessionConfiguration pixelAspectRatio]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:202 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNPlaybackSessionConfiguration pixelAspectRatio]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)isRealtime
{
  layerHost = [(KNPlaybackSessionConfiguration *)self layerHost];
  v3 = layerHost != 0;

  return v3;
}

- (BOOL)isMetalEnabled
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSessionConfiguration isMetalEnabled]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:210 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNPlaybackSessionConfiguration isMetalEnabled]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (BOOL)isSceneRenderingEnabled
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSessionConfiguration isSceneRenderingEnabled]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:214 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNPlaybackSessionConfiguration isSceneRenderingEnabled]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (KNPlaybackLayerHost)layerHost
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSessionConfiguration layerHost]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:234 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNPlaybackSessionConfiguration layerHost]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (KNPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:246 isFatal:0 description:{"Abstract method not overridden by %{public}@", v6}];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v7 = MEMORY[0x277CBEAD8];
  v8 = *MEMORY[0x277CBE658];
  v9 = MEMORY[0x277CCACA8];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = [v9 stringWithFormat:@"Abstract method not overridden by %@: %s", v11, "-[KNPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]"];
  v13 = [v7 exceptionWithName:v8 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

@end