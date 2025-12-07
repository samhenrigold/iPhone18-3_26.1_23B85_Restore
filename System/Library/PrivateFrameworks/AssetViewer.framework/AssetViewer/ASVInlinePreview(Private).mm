@interface ASVInlinePreview(Private)
- (void)setAnimationObserverBlock:()Private;
- (void)setCurrentTime:()Private;
- (void)setEnableShadows:()Private;
- (void)setIsLooping:()Private;
- (void)setIsMuted:()Private;
@end

@implementation ASVInlinePreview(Private)

- (void)setEnableShadows:()Private
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__ASVInlinePreview_Private__setEnableShadows___block_invoke;
  v3[3] = &__block_descriptor_33_e51_v24__0___ARQLInlineService3__8__ASVInlinePreview_16l;
  v4 = a3;
  [(ASVInlinePreview *)self getSharedInlineServiceFailable:v3];
}

- (void)setIsLooping:()Private
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__ASVInlinePreview_Private__setIsLooping___block_invoke;
  v3[3] = &__block_descriptor_33_e51_v24__0___ARQLInlineService3__8__ASVInlinePreview_16l;
  v4 = a3;
  [(ASVInlinePreview *)self getSharedInlineServiceFailable:v3];
}

- (void)setIsMuted:()Private
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __40__ASVInlinePreview_Private__setIsMuted___block_invoke;
  v3[3] = &__block_descriptor_33_e51_v24__0___ARQLInlineService3__8__ASVInlinePreview_16l;
  v4 = a3;
  [(ASVInlinePreview *)self getSharedInlineServiceFailable:v3];
}

- (void)setAnimationObserverBlock:()Private
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v6 = v4;
  v7 = _asvLogHandle;
  if (!_asvLogHandle)
  {
    ASVInitLogging(v4, v5);
    v7 = _asvLogHandle;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 67109120;
    HIDWORD(buf) = v6 == 0;
    _os_log_impl(&dword_241215000, v7, OS_LOG_TYPE_INFO, "#Inline: setAnimationObserverBlock: isnil? %d", &buf, 8u);
  }

  v8 = _Block_copy(v6);
  animationObserverBlock = self->_animationObserverBlock;
  self->_animationObserverBlock = v8;

  if (v6)
  {
    objc_initWeak(&buf, self);
    v10 = MEMORY[0x277CBEBB8];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __55__ASVInlinePreview_Private__setAnimationObserverBlock___block_invoke;
    v13[3] = &unk_278CCAED0;
    objc_copyWeak(&v14, &buf);
    v11 = [v10 scheduledTimerWithTimeInterval:1 repeats:v13 block:0.5];
    animationUpdateTimer = self->_animationUpdateTimer;
    self->_animationUpdateTimer = v11;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&buf);
  }

  else
  {
    [(NSTimer *)self->_animationUpdateTimer invalidate];
  }
}

- (void)setCurrentTime:()Private
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __44__ASVInlinePreview_Private__setCurrentTime___block_invoke;
  v3[3] = &__block_descriptor_40_e51_v24__0___ARQLInlineService3__8__ASVInlinePreview_16l;
  *&v3[4] = a3;
  [(ASVInlinePreview *)self getSharedInlineServiceFailable:v3];
}

@end