@interface BKAudiobookPersistenceController
+ (void)registerAEPersistencePlugins;
- (double)audiobookTimeForLocation:(id)location audiobook:(id)audiobook;
- (void)registerAEPersistencePlugins;
@end

@implementation BKAudiobookPersistenceController

+ (void)registerAEPersistencePlugins
{
  sharedInstance = [self sharedInstance];
  [sharedInstance registerAEPersistencePlugins];
}

- (void)registerAEPersistencePlugins
{
  stores = [(BKAudiobookPersistenceController *)self stores];
  v4 = [stores count];

  if (!v4)
  {
    v5 = objc_opt_new();
    [(BKAudiobookPersistenceController *)self addStore:v5];

    v6 = [BKAudiobookPersistenceCloudKit alloc];
    v7 = +[BCCloudAssetManager sharedManager];
    assetDetailManager = [v7 assetDetailManager];
    v11 = [v6 initWithAssetDetailManager:assetDetailManager];

    if (v11)
    {
      [(BKAudiobookPersistenceController *)self addStore:v11];
    }

    v9 = objc_opt_new();
    [(BKAudiobookPersistenceController *)self addStore:v9];

    v10 = objc_opt_new();
    [(BKAudiobookPersistenceController *)self addStore:v10];
  }
}

- (double)audiobookTimeForLocation:(id)location audiobook:(id)audiobook
{
  locationCopy = location;
  audiobookCopy = audiobook;
  ordinal = [locationCopy ordinal];
  v8 = ordinal;
  if (ordinal < 0)
  {
    tracks = _AEBookPluginsAudiobookLog(ordinal);
    v17 = 0.0;
    if (os_log_type_enabled(tracks, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134217984;
      *(&time.value + 4) = v8;
      _os_log_impl(&dword_0, tracks, OS_LOG_TYPE_ERROR, "Ordinal %ld < 0, can't convert to audiobook time.", &time, 0xCu);
    }

    goto LABEL_24;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    tracks = [audiobookCopy tracks];
    v10 = [tracks count];
    if (v8 < v10)
    {
      v11 = [tracks objectAtIndexedSubscript:v8];
      chapters = [v11 chapters];
      firstObject = [chapters firstObject];

      if (firstObject)
      {
        objc_msgSend_timeRangeInAudiobook(firstObject);
        time = v25[2];
        Seconds = CMTimeGetSeconds(&time);
        [locationCopy offset];
        v17 = Seconds + v16;
      }

      else
      {
        v21 = _AEBookPluginsAudiobookLog(v14);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          LODWORD(time.value) = 134217984;
          *(&time.value + 4) = v8;
          _os_log_impl(&dword_0, v21, OS_LOG_TYPE_ERROR, "Track with ordinal %ld has no chapters, can't convert to audiobook time", &time, 0xCu);
        }

        v17 = 0.0;
      }

      goto LABEL_23;
    }

    v11 = _AEBookPluginsAudiobookLog(v10);
    v17 = 0.0;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134218240;
      *(&time.value + 4) = v8;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = [tracks count];
      v20 = "Ordinal %ld >= %lu (track count), can't convert to audiobook time.";
LABEL_16:
      _os_log_impl(&dword_0, v11, OS_LOG_TYPE_ERROR, v20, &time, 0x16u);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  objc_opt_class();
  v17 = 0.0;
  if (objc_opt_isKindOfClass())
  {
    tracks = [audiobookCopy chapters];
    v18 = [tracks count];
    if (v8 < v18)
    {
      v19 = [tracks objectAtIndexedSubscript:v8];
      v11 = v19;
      if (v19)
      {
        objc_msgSend_timeRangeInAudiobook(v19);
      }

      else
      {
        memset(v25, 0, 24);
      }

      time = v25[0];
      v22 = CMTimeGetSeconds(&time);
      [locationCopy offset];
      v17 = v22 + v23;
      goto LABEL_23;
    }

    v11 = _AEBookPluginsAudiobookLog(v18);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LODWORD(time.value) = 134218240;
      *(&time.value + 4) = v8;
      LOWORD(time.flags) = 2048;
      *(&time.flags + 2) = [tracks count];
      v20 = "Ordinal %ld >= %lu (chapter count), can't convert to audiobook time.";
      goto LABEL_16;
    }

LABEL_23:

LABEL_24:
  }

  return v17;
}

@end