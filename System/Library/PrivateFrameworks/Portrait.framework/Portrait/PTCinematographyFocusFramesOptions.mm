@interface PTCinematographyFocusFramesOptions
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMaximumRackFocusPullTime;
+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMinimumRackFocusPullTime;
+ (float)_defaultMaximumDisparityPerSecond;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumRackFocusPullTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumRackFocusPullTime;
- (BOOL)writeToGlobalMetadata:(id)metadata;
- (PTCinematographyFocusFramesOptions)init;
- (PTCinematographyFocusFramesOptions)initWithGlobalMetadata:(id)metadata;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setMaximumRackFocusPullTime:(id *)time;
- (void)setMinimumRackFocusPullTime:(id *)time;
@end

@implementation PTCinematographyFocusFramesOptions

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMinimumRackFocusPullTime
{
  if (_defaultMinimumRackFocusPullTime_onceToken != -1)
  {
    +[PTCinematographyFocusFramesOptions _defaultMinimumRackFocusPullTime];
  }

  *&retstr->var0 = *_defaultMinimumRackFocusPullTime_sDefaultMinimumRackFocusPullTime;
  retstr->var3 = *&_defaultMinimumRackFocusPullTime_sDefaultMinimumRackFocusPullTime[16];
  return result;
}

void __70__PTCinematographyFocusFramesOptions__defaultMinimumRackFocusPullTime__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = CMTimeMake(&v3, 1, 3);
  *_defaultMinimumRackFocusPullTime_sDefaultMinimumRackFocusPullTime = v3;
  v1 = _PTLogSystem(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *_defaultMinimumRackFocusPullTime_sDefaultMinimumRackFocusPullTime;
    v2 = NSStringFromCMTime(&v3);
    LODWORD(v3.value) = 138412290;
    *(&v3.value + 4) = v2;
    _os_log_impl(&dword_2243FB000, v1, OS_LOG_TYPE_DEFAULT, "CinematographyMinPullTime: %@", &v3, 0xCu);
  }
}

+ ($3CC8671D27C23BF42ADDB32F2B5E48AE)_defaultMaximumRackFocusPullTime
{
  if (_defaultMaximumRackFocusPullTime_onceToken != -1)
  {
    +[PTCinematographyFocusFramesOptions _defaultMaximumRackFocusPullTime];
  }

  *&retstr->var0 = *_defaultMaximumRackFocusPullTime_sDefaultMaximumRackFocusPullTime;
  retstr->var3 = *&_defaultMaximumRackFocusPullTime_sDefaultMaximumRackFocusPullTime[16];
  return result;
}

void __70__PTCinematographyFocusFramesOptions__defaultMaximumRackFocusPullTime__block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  v0 = CMTimeMake(&v3, 1, 1);
  *_defaultMaximumRackFocusPullTime_sDefaultMaximumRackFocusPullTime = v3;
  v1 = _PTLogSystem(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *_defaultMaximumRackFocusPullTime_sDefaultMaximumRackFocusPullTime;
    v2 = NSStringFromCMTime(&v3);
    LODWORD(v3.value) = 138412290;
    *(&v3.value + 4) = v2;
    _os_log_impl(&dword_2243FB000, v1, OS_LOG_TYPE_DEFAULT, "CinematographyMaxPullTime: %@", &v3, 0xCu);
  }
}

+ (float)_defaultMaximumDisparityPerSecond
{
  if (_defaultMaximumDisparityPerSecond_onceToken != -1)
  {
    +[PTCinematographyFocusFramesOptions _defaultMaximumDisparityPerSecond];
  }

  return *&_defaultMaximumDisparityPerSecond_sDefaultMaximumDisparityPerSecond;
}

void __71__PTCinematographyFocusFramesOptions__defaultMaximumDisparityPerSecond__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  _defaultMaximumDisparityPerSecond_sDefaultMaximumDisparityPerSecond = 1056964608;
  v1 = _PTLogSystem(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v2) = 0.5;
    v3 = [MEMORY[0x277CCABB0] numberWithFloat:v2];
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_2243FB000, v1, OS_LOG_TYPE_DEFAULT, "CinematographyMaxDisparityPerSecond: %@", &v4, 0xCu);
  }
}

- (PTCinematographyFocusFramesOptions)init
{
  v9.receiver = self;
  v9.super_class = PTCinematographyFocusFramesOptions;
  v2 = [(PTCinematographyFocusFramesOptions *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_class();
    if (v3)
    {
      objc_msgSend__defaultMinimumRackFocusPullTime(v3);
    }

    else
    {
      v7 = 0uLL;
      v8 = 0;
    }

    *(v2 + 28) = v8;
    *(v2 + 12) = v7;
    v4 = objc_opt_class();
    if (v4)
    {
      objc_msgSend__defaultMaximumRackFocusPullTime(v4);
    }

    else
    {
      v7 = 0uLL;
      v8 = 0;
    }

    *(v2 + 36) = v7;
    *(v2 + 52) = v8;
    [objc_opt_class() _defaultMaximumDisparityPerSecond];
    *(v2 + 2) = v5;
  }

  return v2;
}

- (PTCinematographyFocusFramesOptions)initWithGlobalMetadata:(id)metadata
{
  metadataCopy = metadata;
  v14.receiver = self;
  v14.super_class = PTCinematographyFocusFramesOptions;
  v5 = [(PTCinematographyFocusFramesOptions *)&v14 init];
  if (v5)
  {
    if (metadataCopy)
    {
      majorVersion = [metadataCopy majorVersion];
      if (majorVersion == 1)
      {
        v7 = metadataCopy;
        objc_msgSend_minimumRackFocusPullTime(v7);
        *(v5 + 28) = v13;
        *(v5 + 12) = v12;
        objc_msgSend_maximumRackFocusPullTime(v7);
        *(v5 + 36) = v12;
        *(v5 + 52) = v13;
        [v7 maximumDisparityPerSecond];
        v9 = v8;

        *(v5 + 2) = v9;
        v5 = v5;

        goto LABEL_9;
      }

      v10 = _PTLogSystem(majorVersion);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [PTCinematographyFocusFramesOptions initWithGlobalMetadata:metadataCopy];
      }
    }

    v5 = [v5 init];
  }

LABEL_9:

  return v5;
}

- (BOOL)writeToGlobalMetadata:(id)metadata
{
  metadataCopy = metadata;
  majorVersion = [metadataCopy majorVersion];
  v6 = majorVersion;
  if (majorVersion == 1)
  {
    v10 = *(&self->_maximumDisparityPerSecond + 1);
    v11 = *&self->_minimumRackFocusPullTime.flags;
    v7 = metadataCopy;
    [v7 setMinimumRackFocusPullTime:&v10];
    v10 = *(&self->_minimumRackFocusPullTime.epoch + 4);
    v11 = *&self->_maximumRackFocusPullTime.flags;
    [v7 setMaximumRackFocusPullTime:&v10];
    *&v8 = self->_maximumDisparityPerSecond;
    [v7 setMaximumDisparityPerSecond:v8];
  }

  else
  {
    v7 = _PTLogSystem(majorVersion);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [PTCinematographyFocusFramesOptions initWithGlobalMetadata:metadataCopy];
    }
  }

  return v6 == 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v4 = objc_opt_new();
  objc_msgSend_minimumRackFocusPullTime(self);
  v8 = v10;
  v9 = v11;
  [v4 setMinimumRackFocusPullTime:&v8];
  objc_msgSend_maximumRackFocusPullTime(self);
  v8 = v6;
  v9 = v7;
  [v4 setMaximumRackFocusPullTime:&v8];
  [(PTCinematographyFocusFramesOptions *)self maximumDisparityPerSecond];
  [v4 setMaximumDisparityPerSecond:?];
  return v4;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)minimumRackFocusPullTime
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

- (void)setMinimumRackFocusPullTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_minimumRackFocusPullTime.flags = time->var3;
  *(&self->_maximumDisparityPerSecond + 1) = v3;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maximumRackFocusPullTime
{
  *&retstr->var0 = *&self[1].var2;
  retstr->var3 = *(&self[2].var0 + 4);
  return self;
}

- (void)setMaximumRackFocusPullTime:(id *)time
{
  v3 = *&time->var0;
  *&self->_maximumRackFocusPullTime.flags = time->var3;
  *(&self->_minimumRackFocusPullTime.epoch + 4) = v3;
}

- (void)initWithGlobalMetadata:(void *)a1 .cold.1(void *a1)
{
  LODWORD(v7) = 67109120;
  HIDWORD(v7) = [a1 majorVersion];
  OUTLINED_FUNCTION_2_1(&dword_2243FB000, v1, v2, "focus frames does not support global cinematography metadata version %d", v3, v4, v5, v6, v7);
}

@end