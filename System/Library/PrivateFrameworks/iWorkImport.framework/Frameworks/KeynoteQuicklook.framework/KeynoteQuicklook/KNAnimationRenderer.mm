@interface KNAnimationRenderer
- (void)dealloc;
- (void)pauseAnimations;
- (void)resumeAnimationsIfPaused;
- (void)setupPluginContext;
@end

@implementation KNAnimationRenderer

- (void)setupPluginContext
{
  objc_opt_class();
  [(KNAnimationRenderer *)self pluginContext];
  v3 = TSUCheckedDynamicCast();
  if (!v3)
  {
    v3 = objc_alloc_init(KNAnimationPluginContext);
    self->_pluginContext = v3;
  }

  [(KNAnimationPluginContext *)v3 setIsPreview:[(KNPlaybackSession *)self->_session isPreview]];
  [(KNPlaybackSession *)self->_session isMovieExport];

  MEMORY[0x2821F9670](v3, sel_setIsMovieExport_);
}

- (void)pauseAnimations
{
  CACurrentMediaTime();

  MEMORY[0x2821F9670](self, sel_pauseAnimationsAtTime_);
}

- (void)resumeAnimationsIfPaused
{
  CACurrentMediaTime();

  MEMORY[0x2821F9670](self, sel_resumeAnimationsIfPausedAtTime_);
}

- (void)dealloc
{
  if (self->_pluginContext)
  {
    v3 = MEMORY[0x277D81150];
    v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[KNAnimationRenderer dealloc]"];
    [v3 handleFailureInFunction:v4 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" isFatal:"/Library/Caches/com.apple.xbs/Sources/iWorkImport/keynote/Classes/KNAnimationRenderer.m") description:{59, 0, "expected nil value for '%{public}s'", "_pluginContext"}];
    [MEMORY[0x277D81150] logBacktraceThrottled];
  }

  v5.receiver = self;
  v5.super_class = KNAnimationRenderer;
  [(KNAnimationRenderer *)&v5 dealloc];
}

@end