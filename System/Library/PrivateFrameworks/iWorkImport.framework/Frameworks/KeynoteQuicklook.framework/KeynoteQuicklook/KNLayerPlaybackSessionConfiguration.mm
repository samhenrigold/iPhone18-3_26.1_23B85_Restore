@interface KNLayerPlaybackSessionConfiguration
- (CGSize)boundsSize;
- (KNLayerPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment;
- (KNLayerPlaybackSessionConfiguration)initWithLayerHost:(id)host isMetalEnabled:(BOOL)enabled isSceneRenderingEnabled:(BOOL)renderingEnabled isHDREnabled:(BOOL)rEnabled;
- (id)description;
@end

@implementation KNLayerPlaybackSessionConfiguration

- (KNLayerPlaybackSessionConfiguration)initWithLayerHost:(id)host isMetalEnabled:(BOOL)enabled isSceneRenderingEnabled:(BOOL)renderingEnabled isHDREnabled:(BOOL)rEnabled
{
  renderingEnabledCopy = renderingEnabled;
  enabledCopy = enabled;
  hostCopy = host;
  v28.receiver = self;
  v28.super_class = KNLayerPlaybackSessionConfiguration;
  initSuperclass = [(KNPlaybackSessionConfiguration *)&v28 initSuperclass];
  v13 = initSuperclass;
  if (initSuperclass)
  {
    objc_storeStrong(initSuperclass + 4, host);
    screenEnvironment = [hostCopy screenEnvironment];
    v15 = [screenEnvironment copy];
    v16 = v13[2];
    v13[2] = v15;

    if (rEnabled)
    {
      currentCapabilities = [MEMORY[0x277D801F0] currentCapabilities];
      [v13 setSupportsHDR:{objc_msgSend(currentCapabilities, "isHDRCapable")}];
    }

    else
    {
      [v13 setSupportsHDR:0];
    }

    *(v13 + 24) = enabledCopy;
    *(v13 + 25) = renderingEnabledCopy;
    rootLayer = [v13[4] rootLayer];
    [rootLayer bounds];
    v13[5] = v19;
    v13[6] = v20;

    if (enabledCopy)
    {
      v21 = MEMORY[0x277D81150];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLayerPlaybackSessionConfiguration initWithLayerHost:isMetalEnabled:isSceneRenderingEnabled:isHDREnabled:]"];
      v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
      [v21 handleFailureInFunction:v22 file:v23 lineNumber:319 isFatal:0 description:"Metal should not be enabled on a platform that does not support it."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }

    if (renderingEnabledCopy)
    {
      v24 = MEMORY[0x277D81150];
      v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLayerPlaybackSessionConfiguration initWithLayerHost:isMetalEnabled:isSceneRenderingEnabled:isHDREnabled:]"];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
      [v24 handleFailureInFunction:v25 file:v26 lineNumber:320 isFatal:0 description:"Scene rendering should not be enabled on a platform that does not support it."];

      [MEMORY[0x277D81150] logBacktraceThrottled];
    }
  }

  return v13;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D811A8]) initWithObject:self];
  [v3 addField:@"layerHost" format:{@"%@", self->_layerHost}];
  [v3 addField:@"screenEnvironment" format:{@"%@", self->_screenEnvironment}];
  [v3 addField:@"isMetalEnabled" format:{@"%d", self->_isMetalEnabled}];
  [v3 addField:@"isSceneRenderingEnabled" format:{@"%d", self->_isSceneRenderingEnabled}];
  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (KNLayerPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment
{
  if (([MEMORY[0x277CCACC8] isMainThread] & 1) == 0)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLayerPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]"];
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:376 isFatal:0 description:"updating configuration should be done on the main thread"];

    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  screenEnvironment = self->_screenEnvironment;
  screenEnvironment = [(KNPlaybackLayerHost *)self->_layerHost screenEnvironment];
  if ([(KNAnimationScreenEnvironment *)screenEnvironment isEqual:screenEnvironment])
  {
    rootLayer = [(KNPlaybackLayerHost *)self->_layerHost rootLayer];
    [rootLayer bounds];
    v10 = v9;
    v12 = v11;
    width = self->_boundsSize.width;
    height = self->_boundsSize.height;

    if (v10 == width && v12 == height)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  selfCopy = [[KNLayerPlaybackSessionConfiguration alloc] initWithLayerHost:self->_layerHost isMetalEnabled:self->_isMetalEnabled isSceneRenderingEnabled:self->_isSceneRenderingEnabled isHDREnabled:0];
  if (selfCopy)
  {
    goto LABEL_14;
  }

  v17 = MEMORY[0x277D81150];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNLayerPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]"];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  [v17 handleFailureInFunction:v18 file:v19 lineNumber:393 isFatal:0 description:"Unable to create a new configuration from an existing configuration with a new screen environment. Continuing to use the existing configuration."];

  [MEMORY[0x277D81150] logBacktraceThrottled];
LABEL_13:
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (CGSize)boundsSize
{
  width = self->_boundsSize.width;
  height = self->_boundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end