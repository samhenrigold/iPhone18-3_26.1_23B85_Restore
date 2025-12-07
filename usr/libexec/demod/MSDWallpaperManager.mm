@interface MSDWallpaperManager
+ (id)sharedInstance;
- (MSDWallpaperManager)init;
- (void)_handleWallpaperConfigChange;
- (void)_resetWallpaperSettingsToFactoryDefault;
- (void)_startPosterConfigChangeMonitor;
- (void)restoreWallpaperSettingsIfNeeded;
- (void)stashWallpaperSettingsIfNeeded;
@end

@implementation MSDWallpaperManager

+ (id)sharedInstance
{
  if (qword_1001A5748 != -1)
  {
    sub_1000D1810();
  }

  v3 = qword_1001A5750;

  return v3;
}

- (MSDWallpaperManager)init
{
  v5.receiver = self;
  v5.super_class = MSDWallpaperManager;
  v2 = [(MSDWallpaperManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(MSDWallpaperManager *)v2 setWallpaperSettingsFilePath:@"/var/mobile/Library/Application Support/ScreenSaverManager/.savedWallpaperSettings.plist"];
    [(MSDWallpaperManager *)v3 setJustBootUp:1];
    [(MSDWallpaperManager *)v3 setUseFactoryDefault:0];
  }

  return v3;
}

- (void)stashWallpaperSettingsIfNeeded
{
  v3 = +[NSFileManager defaultManager];
  wallpaperSettingsFilePath = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
  v5 = [v3 fileExistsAtPath:wallpaperSettingsFilePath];

  if (v5)
  {
    v6 = [NSDictionary alloc];
    wallpaperSettingsFilePath2 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
    v8 = [NSURL fileURLWithPath:wallpaperSettingsFilePath2];
    v26 = 0;
    v9 = [v6 initWithContentsOfURL:v8 error:&v26];
    v10 = v26;

    v12 = sub_100063A54(v11);
    v13 = v12;
    if (!v9)
    {
      sub_1000D196C(v12, v10);
      goto LABEL_13;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Persistent wallpaper settings loaded: %{public}@", buf, 0xCu);
    }

    v14 = [v9 objectForKey:@"UseFactoryDefault"];
    [(MSDWallpaperManager *)self setUseFactoryDefault:[v14 BOOLValue]];
  }

  else
  {
    wallpaperSettingsFilePath3 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
    stringByDeletingLastPathComponent = [wallpaperSettingsFilePath3 stringByDeletingLastPathComponent];
    v25 = 0;
    v17 = [v3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
    v10 = v25;

    if ((v17 & 1) == 0)
    {
      sub_1000D1824(v10);
      v9 = &off_10017BFE0;
      goto LABEL_13;
    }

    wallpaperSettingsFilePath4 = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
    v19 = [NSURL fileURLWithPath:wallpaperSettingsFilePath4];
    v24 = v10;
    v20 = [&off_10017BFE0 writeToURL:v19 error:&v24];
    v21 = v24;

    v23 = sub_100063A54(v22);
    v14 = v23;
    if ((v20 & 1) == 0)
    {
      sub_1000D18CC(v23, v21);
      v9 = &off_10017BFE0;
      v10 = v21;
      goto LABEL_13;
    }

    v9 = &off_10017BFE0;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v28 = &off_10017BFE0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Persistent wallpaper settings saved: %{public}@", buf, 0xCu);
    }

    v10 = v21;
  }

  if (![(MSDWallpaperManager *)self useFactoryDefault])
  {
    [(MSDWallpaperManager *)self _startPosterConfigChangeMonitor];
  }

LABEL_13:
}

- (void)restoreWallpaperSettingsIfNeeded
{
  useFactoryDefault = [(MSDWallpaperManager *)self useFactoryDefault];
  if (useFactoryDefault)
  {
    v4 = sub_100063A54(useFactoryDefault);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Wallpaper settings have changed. Resetting wallpaper settings to factory default!", v5, 2u);
    }

    [(MSDWallpaperManager *)self _resetWallpaperSettingsToFactoryDefault];
  }
}

- (void)_startPosterConfigChangeMonitor
{
  v3 = sub_100063A54(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Setting up poster config change observer...", buf, 2u);
  }

  v4 = objc_alloc_init(PRSWallpaperLocationStateObserver);
  [v4 setLocations:12];
  [v4 setNeedsSandboxExtensions:0];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10004396C;
  v9[3] = &unk_10016AC78;
  v9[4] = self;
  [v4 setHandler:v9];
  v5 = objc_alloc_init(PRSWallpaperObserverConfiguration);
  v6 = dispatch_get_global_queue(21, 0);
  [v5 setQueue:v6];

  [v5 setLocationStateObserver:v4];
  v7 = [[PRSWallpaperObserver alloc] initWithExplanation:@"Store Demo Mode"];
  [(MSDWallpaperManager *)self setPosterObserver:v7];

  posterObserver = [(MSDWallpaperManager *)self posterObserver];
  [posterObserver activateWithConfiguration:v5];
}

- (void)_handleWallpaperConfigChange
{
  justBootUp = [(MSDWallpaperManager *)self justBootUp];
  if (justBootUp)
  {
    v4 = sub_100063A54(justBootUp);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ignore first poster config change call after observer is first registered.", buf, 2u);
    }

    [(MSDWallpaperManager *)self setJustBootUp:0];
  }

  else
  {
    useFactoryDefault = [(MSDWallpaperManager *)self useFactoryDefault];
    if ((useFactoryDefault & 1) == 0)
    {
      v6 = sub_100063A54(useFactoryDefault);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will reset wallpaper settings to factory default next time.", v13, 2u);
      }

      wallpaperSettingsFilePath = [(MSDWallpaperManager *)self wallpaperSettingsFilePath];
      v8 = [NSURL fileURLWithPath:wallpaperSettingsFilePath];
      v12 = 0;
      v9 = [&off_10017C008 writeToURL:v8 error:&v12];
      v10 = v12;

      if (v9)
      {
        [(MSDWallpaperManager *)self setUseFactoryDefault:1];
        posterObserver = [(MSDWallpaperManager *)self posterObserver];
        [posterObserver invalidate];

        [(MSDWallpaperManager *)self setPosterObserver:0];
      }

      else
      {
        sub_1000D1A0C(v10);
      }
    }
  }
}

- (void)_resetWallpaperSettingsToFactoryDefault
{
  v2 = objc_alloc_init(PRSService);
  v3 = dispatch_semaphore_create(0);
  v4 = dispatch_time(0, 3000000000);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100043CC8;
  v8[3] = &unk_10016ACA0;
  v5 = v3;
  v9 = v5;
  [v2 deleteDataStoreWithCompletion:v8];
  v6 = dispatch_semaphore_wait(v5, v4);
  if (v6)
  {
    v7 = sub_100063A54(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1000D1AB4(v7);
    }
  }
}

@end