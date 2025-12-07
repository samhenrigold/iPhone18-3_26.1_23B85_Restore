@interface KNOffscreenCGContextPlaybackSessionConfiguration
- (CGSize)boundsSize;
- (KNOffscreenCGContextPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment;
- (KNOffscreenCGContextPlaybackSessionConfiguration)initWithOffscreenCGContextBoundsSize:(CGSize)size isHDREnabled:(BOOL)enabled;
- (id)description;
@end

@implementation KNOffscreenCGContextPlaybackSessionConfiguration

- (KNOffscreenCGContextPlaybackSessionConfiguration)initWithOffscreenCGContextBoundsSize:(CGSize)size isHDREnabled:(BOOL)enabled
{
  height = size.height;
  width = size.width;
  v11.receiver = self;
  v11.super_class = KNOffscreenCGContextPlaybackSessionConfiguration;
  initSuperclass = [(KNPlaybackSessionConfiguration *)&v11 initSuperclass];
  v8 = initSuperclass;
  if (initSuperclass)
  {
    initSuperclass->_boundsSize.width = width;
    initSuperclass->_boundsSize.height = height;
    if (enabled)
    {
      currentCapabilities = [MEMORY[0x277D801F0] currentCapabilities];
      -[KNPlaybackSessionConfiguration setSupportsHDR:](v8, "setSupportsHDR:", [currentCapabilities isHDRCapable]);
    }

    else
    {
      [(KNPlaybackSessionConfiguration *)initSuperclass setSupportsHDR:0];
    }
  }

  return v8;
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277D811A8]) initWithObject:self];
  v4 = NSStringFromCGSize(self->_boundsSize);
  [v3 addField:@"boundsSize" format:{@"%@", v4}];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

- (KNOffscreenCGContextPlaybackSessionConfiguration)configurationWithUpdatedLayerScreenEnvironment
{
  v2 = MEMORY[0x277D81150];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNOffscreenCGContextPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNPlaybackSessionConfiguration.m"];
  [v2 handleFailureInFunction:v3 file:v4 lineNumber:538 isFatal:0 description:"Do not call method"];

  [MEMORY[0x277D81150] logBacktraceThrottled];
  v5 = MEMORY[0x277CBEAD8];
  v6 = *MEMORY[0x277CBE658];
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s: %s", "Do not call method", "-[KNOffscreenCGContextPlaybackSessionConfiguration configurationWithUpdatedLayerScreenEnvironment]"];
  v8 = [v5 exceptionWithName:v6 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
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