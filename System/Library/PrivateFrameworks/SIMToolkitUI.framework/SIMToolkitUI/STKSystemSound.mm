@interface STKSystemSound
- (id)initForSystemSoundID:(unsigned int)d duration:(double)duration;
- (void)_reallyPlaySound;
- (void)_reallyStopSound;
@end

@implementation STKSystemSound

- (id)initForSystemSoundID:(unsigned int)d duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = STKSystemSound;
  result = [(STKBaseSound *)&v6 initWithDuration:duration];
  if (result)
  {
    *(result + 7) = d;
  }

  return result;
}

- (void)_reallyPlaySound
{
  v16 = *MEMORY[0x277D85DE8];
  playsOnce = [(STKBaseSound *)self playsOnce];
  v4 = playsOnce;
  v5 = STKCommonLog(playsOnce);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(&self->super._isPlaying + 3);
      v10 = 134218240;
      selfCopy2 = self;
      v12 = 1024;
      v13 = v7;
      _os_log_impl(&dword_262BB4000, v5, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Playing %d sound once.", &v10, 0x12u);
    }

    AudioServicesPlaySystemSound(*(&self->super._isPlaying + 3));
  }

  else
  {
    if (v6)
    {
      v8 = *(&self->super._isPlaying + 3);
      [(STKBaseSound *)self duration];
      v10 = 134218496;
      selfCopy2 = self;
      v12 = 1024;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&dword_262BB4000, v5, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Playing %d sound until we tell it to stop (in %f seconds)", &v10, 0x1Cu);
    }

    AudioServicesStartSystemSound();
  }
}

- (void)_reallyStopSound
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = STKCommonLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_262BB4000, v3, OS_LOG_TYPE_DEFAULT, "<STKSound:%p> - Actually stopping system sound explicitly.", &v4, 0xCu);
  }

  AudioServicesStopSystemSound();
}

@end