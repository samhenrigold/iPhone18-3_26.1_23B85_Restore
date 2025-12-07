@interface HPSUISpatialProfileEarTutorialView
- (HPSUISpatialProfileEarTutorialView)init;
- (void)dealloc;
- (void)initPlayerLeftEar;
- (void)initPlayerRightEar;
- (void)layoutSublayersOfLayer:(id)layer;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)startPlayerLeftEar;
- (void)startPlayerRightEar;
- (void)stopPlayerLeftEar;
- (void)stopPlayerRightEar;
- (void)stopPlayers;
@end

@implementation HPSUISpatialProfileEarTutorialView

- (HPSUISpatialProfileEarTutorialView)init
{
  v5.receiver = self;
  v5.super_class = HPSUISpatialProfileEarTutorialView;
  v2 = [(HPSUISpatialProfileEarTutorialView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_playersPlaying = 0;
    v2->_playersStartTriggered = 0;
    v2->_statusRightEar = 0;
    v2->_statusLeftEar = 0;
    [(HPSUISpatialProfileEarTutorialView *)v2 initPlayerRightEar];
    [(HPSUISpatialProfileEarTutorialView *)v3 initPlayerLeftEar];
  }

  return v3;
}

- (void)layoutSublayersOfLayer:(id)layer
{
  v4.receiver = self;
  v4.super_class = HPSUISpatialProfileEarTutorialView;
  [(HPSUISpatialProfileEarTutorialView *)&v4 layoutSublayersOfLayer:layer];
  [(HPSUISpatialProfileEarTutorialView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayerLeftEar setFrame:?];
  [(HPSUISpatialProfileEarTutorialView *)self bounds];
  [(AVPlayerLayer *)self->_playerLayerRightEar setFrame:?];
}

- (void)dealloc
{
  [(AVPlayerLooper *)self->_looperLeftEar removeObserver:self forKeyPath:@"status" context:&self->_looperLeftEar];
  [(AVQueuePlayer *)self->_playerLeftEar removeObserver:self forKeyPath:@"status" context:&self->_playerLeftEar];
  [(AVPlayerLooper *)self->_looperRightEar removeObserver:self forKeyPath:@"status" context:&self->_looperRightEar];
  [(AVQueuePlayer *)self->_playerRightEar removeObserver:self forKeyPath:@"status" context:&self->_playerRightEar];
  v3.receiver = self;
  v3.super_class = HPSUISpatialProfileEarTutorialView;
  [(HPSUISpatialProfileEarTutorialView *)&v3 dealloc];
}

- (void)initPlayerLeftEar
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"HRTF_Tutorial_Left_Ear" ofType:@"mov"];

  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v6 = [MEMORY[0x1E69880B0] playerItemWithURL:v5];
  playerItemLeftEar = self->_playerItemLeftEar;
  self->_playerItemLeftEar = v6;

  [(AVPlayerItem *)self->_playerItemLeftEar setAllowedAudioSpatializationFormats:0];
  v8 = objc_alloc_init(MEMORY[0x1E6988100]);
  playerLeftEar = self->_playerLeftEar;
  self->_playerLeftEar = v8;

  [(AVQueuePlayer *)self->_playerLeftEar setAutomaticallyWaitsToMinimizeStalling:0];
  v10 = MEMORY[0x1E69880E8];
  v11 = self->_playerLeftEar;
  v12 = self->_playerItemLeftEar;
  CMTimeMake(&duration, 9000, 1000);
  v18 = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(&v20, &v18, &duration);
  v13 = [v10 playerLooperWithPlayer:v11 templateItem:v12 timeRange:&v20];
  looperLeftEar = self->_looperLeftEar;
  self->_looperLeftEar = v13;

  [(AVPlayerLooper *)self->_looperLeftEar addObserver:self forKeyPath:@"status" options:5 context:&self->_looperLeftEar];
  [(AVQueuePlayer *)self->_playerLeftEar addObserver:self forKeyPath:@"status" options:5 context:&self->_playerLeftEar];
  v15 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:self->_playerLeftEar];
  playerLayerLeftEar = self->_playerLayerLeftEar;
  self->_playerLayerLeftEar = v15;

  layer = [(HPSUISpatialProfileEarTutorialView *)self layer];
  [layer addSublayer:self->_playerLayerLeftEar];

  [(AVPlayerLayer *)self->_playerLayerLeftEar setHidden:1];
}

- (void)initPlayerRightEar
{
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v3 pathForResource:@"HRTF_Tutorial_Right_Ear" ofType:@"mov"];

  v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
  v6 = [MEMORY[0x1E69880B0] playerItemWithURL:v5];
  playerItemRightEar = self->_playerItemRightEar;
  self->_playerItemRightEar = v6;

  v8 = objc_alloc_init(MEMORY[0x1E6988100]);
  playerRightEar = self->_playerRightEar;
  self->_playerRightEar = v8;

  [(AVQueuePlayer *)self->_playerRightEar setAutomaticallyWaitsToMinimizeStalling:0];
  v10 = MEMORY[0x1E69880E8];
  v11 = self->_playerRightEar;
  v12 = self->_playerItemRightEar;
  CMTimeMake(&duration, 9000, 1000);
  v18 = **&MEMORY[0x1E6960CC0];
  CMTimeRangeMake(&v20, &v18, &duration);
  v13 = [v10 playerLooperWithPlayer:v11 templateItem:v12 timeRange:&v20];
  looperRightEar = self->_looperRightEar;
  self->_looperRightEar = v13;

  [(AVPlayerLooper *)self->_looperRightEar addObserver:self forKeyPath:@"status" options:5 context:&self->_looperRightEar];
  [(AVQueuePlayer *)self->_playerRightEar addObserver:self forKeyPath:@"status" options:5 context:&self->_playerRightEar];
  v15 = [MEMORY[0x1E69880E0] playerLayerWithPlayer:self->_playerRightEar];
  playerLayerRightEar = self->_playerLayerRightEar;
  self->_playerLayerRightEar = v15;

  layer = [(HPSUISpatialProfileEarTutorialView *)self layer];
  [layer addSublayer:self->_playerLayerRightEar];

  [(AVPlayerLayer *)self->_playerLayerRightEar setHidden:0];
}

- (void)startPlayerLeftEar
{
  if (self->_statusLeftEar.looperReady && self->_statusLeftEar.playerReady)
  {
    [(AVPlayerLayer *)self->_playerLayerLeftEar setHidden:0];
    playerLeftEar = self->_playerLeftEar;
    v5 = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    [(AVQueuePlayer *)playerLeftEar seekToTime:&v5];
    [(AVQueuePlayer *)self->_playerLeftEar play];
    [(AVPlayerLayer *)self->_playerLayerRightEar setHidden:1];
    [(AVQueuePlayer *)self->_playerRightEar pause];
  }

  else
  {
    v4 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPSUISpatialProfileEarTutorialView *)v4 startPlayerLeftEar];
    }
  }
}

- (void)startPlayerRightEar
{
  if (self->_statusRightEar.looperReady && self->_statusRightEar.playerReady)
  {
    [(AVPlayerLayer *)self->_playerLayerRightEar setHidden:0];
    playerRightEar = self->_playerRightEar;
    v5 = *MEMORY[0x1E6960CC0];
    v6 = *(MEMORY[0x1E6960CC0] + 16);
    [(AVQueuePlayer *)playerRightEar seekToTime:&v5];
    [(AVQueuePlayer *)self->_playerRightEar play];
    [(AVPlayerLayer *)self->_playerLayerLeftEar setHidden:1];
    [(AVQueuePlayer *)self->_playerLeftEar pause];
  }

  else
  {
    v4 = sharedBluetoothSettingsLogComponent(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(HPSUISpatialProfileEarTutorialView *)v4 startPlayerLeftEar];
    }
  }
}

- (void)stopPlayerLeftEar
{
  [(AVQueuePlayer *)self->_playerLeftEar pause];
  playerLayerLeftEar = self->_playerLayerLeftEar;

  [(AVPlayerLayer *)playerLayerLeftEar setHidden:1];
}

- (void)stopPlayerRightEar
{
  [(AVQueuePlayer *)self->_playerRightEar pause];
  playerLayerRightEar = self->_playerLayerRightEar;

  [(AVPlayerLayer *)playerLayerRightEar setHidden:1];
}

- (void)stopPlayers
{
  [(AVQueuePlayer *)self->_playerLeftEar pause];
  playerRightEar = self->_playerRightEar;

  [(AVQueuePlayer *)playerRightEar pause];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__HPSUISpatialProfileEarTutorialView_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_1E79705E0;
  v11 = changeCopy;
  contextCopy = context;
  block[4] = self;
  v9 = changeCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __85__HPSUISpatialProfileEarTutorialView_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  if (v2 == v3 + 408 || v2 == v3 + 416)
  {
    v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      isKindOfClass = [v4 integerValue];
      v6 = isKindOfClass;
    }

    else
    {
      v6 = 0;
    }

    v7 = *(a1 + 48);
    v8 = *(a1 + 32);
    if (v7 == v8 + 408)
    {
      v13 = sharedBluetoothSettingsLogComponent(isKindOfClass);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = v6;
        _os_log_impl(&dword_1AC1C3000, v13, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: LeftEar player status changed to %ld\n", &v19, 0xCu);
      }

      if (v6 != 1)
      {
        goto LABEL_35;
      }

      v10 = &OBJC_IVAR___HPSUISpatialProfileEarTutorialView__statusLeftEar;
    }

    else
    {
      if (v7 != v8 + 416)
      {
        goto LABEL_35;
      }

      v9 = sharedBluetoothSettingsLogComponent(isKindOfClass);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 134217984;
        v20 = v6;
        _os_log_impl(&dword_1AC1C3000, v9, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: RightEar player status changed to %ld\n", &v19, 0xCu);
      }

      if (v6 != 1)
      {
        goto LABEL_35;
      }

      v10 = &OBJC_IVAR___HPSUISpatialProfileEarTutorialView__statusRightEar;
    }

    *(*(a1 + 32) + *v10) = 1;
    goto LABEL_35;
  }

  if (v2 != v3 + 424 && v2 != v3 + 432)
  {
    v4 = sharedBluetoothSettingsLogComponent(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v19) = 0;
      _os_log_impl(&dword_1AC1C3000, v4, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: Invalid context\n", &v19, 2u);
    }

    goto LABEL_35;
  }

  v4 = [*(a1 + 40) objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();
  if (v11)
  {
    v11 = [v4 integerValue];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 32);
  if (v14 == v15 + 424)
  {
    v18 = sharedBluetoothSettingsLogComponent(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = v12;
      _os_log_impl(&dword_1AC1C3000, v18, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: LeftEar looper status changed to %ld\n", &v19, 0xCu);
    }

    if (v12 == 1)
    {
      v17 = &OBJC_IVAR___HPSUISpatialProfileEarTutorialView__statusLeftEar;
      goto LABEL_34;
    }
  }

  else if (v14 == v15 + 432)
  {
    v16 = sharedBluetoothSettingsLogComponent(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = v12;
      _os_log_impl(&dword_1AC1C3000, v16, OS_LOG_TYPE_DEFAULT, "Spatial Profile: Ear Tutorial: RightEar looper status changed to %ld\n", &v19, 0xCu);
    }

    if (v12 == 1)
    {
      v17 = &OBJC_IVAR___HPSUISpatialProfileEarTutorialView__statusRightEar;
LABEL_34:
      *(*(a1 + 32) + *v17 + 1) = 1;
    }
  }

LABEL_35:
}

@end