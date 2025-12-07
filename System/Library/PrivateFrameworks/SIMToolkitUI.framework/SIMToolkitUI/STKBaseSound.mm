@interface STKBaseSound
- (STKBaseSound)initWithDuration:(double)duration;
- (void)_sync_playSound;
- (void)_sync_stopSound;
- (void)dealloc;
- (void)playSound;
- (void)stopSound;
@end

@implementation STKBaseSound

- (STKBaseSound)initWithDuration:(double)duration
{
  v17 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = STKBaseSound;
  v4 = [(STKBaseSound *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_duration = duration;
    v6 = BSFloatLessThanOrEqualToFloat();
    v5->_playsOnce = v6;
    v7 = STKCommonLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      playsOnce = v5->_playsOnce;
      *buf = 134218496;
      v12 = v5;
      v13 = 2048;
      durationCopy = duration;
      v15 = 1024;
      v16 = playsOnce;
      _os_log_impl(&dword_262BB4000, v7, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Created sound with duration: %f, playsOnce: %d", buf, 0x1Cu);
    }
  }

  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = STKCommonLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Dealloc.", buf, 0xCu);
  }

  [(STKBaseSound *)self stopSound];
  v4.receiver = self;
  v4.super_class = STKBaseSound;
  [(STKBaseSound *)&v4 dealloc];
}

- (void)playSound
{
  obj = self;
  objc_sync_enter(obj);
  [(STKBaseSound *)obj _sync_playSound];
  objc_sync_exit(obj);
}

- (void)stopSound
{
  obj = self;
  objc_sync_enter(obj);
  [(STKBaseSound *)obj _sync_stopSound];
  objc_sync_exit(obj);
}

- (void)_sync_playSound
{
  v19 = *MEMORY[0x277D85DE8];
  _sync_stopSound = [(STKBaseSound *)self _sync_stopSound];
  if (!self->_isPlaying)
  {
    v4 = STKCommonLog(_sync_stopSound);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      selfCopy2 = self;
      _os_log_impl(&dword_262BB4000, v4, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Playing sound.", buf, 0xCu);
    }

    self->_isPlaying = 1;
    _reallyPlaySound = [(STKBaseSound *)self _reallyPlaySound];
    if (!self->_playsOnce)
    {
      v6 = STKCommonLog(_reallyPlaySound);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        duration = self->_duration;
        *buf = 134218240;
        selfCopy2 = self;
        v17 = 2048;
        v18 = duration;
        _os_log_impl(&dword_262BB4000, v6, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Scheduling sound stop timer with interval duration: %f.", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v8 = MEMORY[0x277CF0D00];
      v9 = self->_duration;
      v10 = dispatch_get_global_queue(33, 0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __31__STKBaseSound__sync_playSound__block_invoke;
      v13[3] = &unk_279B4C958;
      v13[4] = self;
      objc_copyWeak(&v14, buf);
      v11 = [v8 scheduledTimerWithFireInterval:v10 queue:v13 handler:v9];
      timer = self->_timer;
      self->_timer = v11;

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }
}

void __31__STKBaseSound__sync_playSound__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = STKCommonLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_262BB4000, v2, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Stop timer fired!.", &v5, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stopSound];
}

- (void)_sync_stopSound
{
  v7 = *MEMORY[0x277D85DE8];
  if (self->_isPlaying)
  {
    v3 = STKCommonLog(self);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Stopping sound explicitly.", &v5, 0xCu);
    }

    [(STKBaseSound *)self _reallyStopSound];
    self->_isPlaying = 0;
    [(BSTimer *)self->_timer cancel];
    timer = self->_timer;
    self->_timer = 0;
  }
}

@end