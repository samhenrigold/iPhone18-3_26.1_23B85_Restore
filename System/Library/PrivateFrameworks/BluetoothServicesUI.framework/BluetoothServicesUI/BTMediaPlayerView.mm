@interface BTMediaPlayerView
- (void)startMovieLoopWithPath:(id)path;
- (void)startMovieLoopWithPath:(id)path assetType:(int)type adjustmentsURL:(id)l;
- (void)stop;
@end

@implementation BTMediaPlayerView

- (void)startMovieLoopWithPath:(id)path
{
  pathCopy = path;
  v4 = self->_avPlayer;
  if (!v4)
  {
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [mEMORY[0x277CB83F8] setCategory:*MEMORY[0x277CB8020] withOptions:1 error:0];

    v4 = objc_alloc_init(MEMORY[0x277CE65F8]);
    [(AVQueuePlayer *)v4 setAllowsExternalPlayback:0];
    [(AVQueuePlayer *)v4 setPreventsDisplaySleepDuringVideoPlayback:0];
    [(AVQueuePlayer *)v4 _setDisallowsAutoPauseOnRouteRemovalIfNoAudio:1];
    objc_storeStrong(&self->_avPlayer, v4);
    layer = [(BTMediaPlayerView *)self layer];
    [layer setPlayer:v4];
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:pathCopy isDirectory:0];
  v8 = [MEMORY[0x277CE65B0] playerItemWithURL:v7];
  v9 = [MEMORY[0x277CE65E0] playerLooperWithPlayer:v4 templateItem:v8];
  avLooper = self->_avLooper;
  self->_avLooper = v9;

  [(AVQueuePlayer *)self->_avPlayer play];
}

- (void)startMovieLoopWithPath:(id)path assetType:(int)type adjustmentsURL:(id)l
{
  pathCopy = path;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:l error:0];
  if (v9)
  {
    if (type == 1 || type == 2)
    {
      CFDictionaryGetTypeID();
      v10 = CFDictionaryGetTypedValue();
    }

    else
    {
      v10 = 0;
    }

    v31 = 0;
    CFDictionaryGetDouble();
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x277CD9EA0]);
    v14 = [v13 initWithType:*MEMORY[0x277CDA2C0]];
    v23 = v12;
    v24 = *(MEMORY[0x277CD9DA0] + 4);
    v25 = *(MEMORY[0x277CD9DA0] + 20);
    v26 = v12;
    v27 = *(MEMORY[0x277CD9DA0] + 28);
    v28 = *(MEMORY[0x277CD9DA0] + 44);
    v29 = v12;
    *v30 = *(MEMORY[0x277CD9DA0] + 52);
    *&v30[12] = *(MEMORY[0x277CD9DA0] + 64);
    v15 = [MEMORY[0x277CCAE60] valueWithCAColorMatrix:&v23];
    [v14 setValue:v15 forKey:@"inputColorMatrix"];

    v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v16 addObject:v14];

    CFDictionaryGetDouble();
    if (!v31)
    {
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x277CD9EA0]);
      v20 = [v19 initWithType:*MEMORY[0x277CDA270]];
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:v18];
      [v20 setValue:v21 forKey:@"inputAmount"];

      if (!v16)
      {
        v16 = objc_alloc_init(MEMORY[0x277CBEB18]);
      }

      [v16 addObject:v20];
    }

    if ([v16 count])
    {
      layer = [(BTMediaPlayerView *)self layer];
      [layer setFilters:v16];
    }
  }

  [(BTMediaPlayerView *)self startMovieLoopWithPath:pathCopy];
}

- (void)stop
{
  [(AVQueuePlayer *)self->_avPlayer pause];
  layer = [(BTMediaPlayerView *)self layer];
  [layer setPlayer:0];

  [(AVQueuePlayer *)self->_avPlayer removeAllItems];
  avPlayer = self->_avPlayer;
  self->_avPlayer = 0;

  avLooper = self->_avLooper;
  self->_avLooper = 0;
}

@end