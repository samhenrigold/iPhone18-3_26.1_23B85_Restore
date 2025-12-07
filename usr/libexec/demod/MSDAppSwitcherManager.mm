@interface MSDAppSwitcherManager
+ (id)sharedInstance;
- (BOOL)createSwitcherModelAtPath:(id)path;
- (BOOL)loadStashedSwitcherModelFromPath:(id)path;
- (BOOL)stashSwitcherModelToPath:(id)path overwrite:(BOOL)overwrite;
- (MSDAppSwitcherManager)init;
- (void)dealloc;
- (void)initializeClearAppSwitcherStateForDemoMode;
@end

@implementation MSDAppSwitcherManager

+ (id)sharedInstance
{
  if (qword_1001A5718 != -1)
  {
    sub_1000CF904();
  }

  v3 = qword_1001A5720;

  return v3;
}

- (MSDAppSwitcherManager)init
{
  v6.receiver = self;
  v6.super_class = MSDAppSwitcherManager;
  v2 = [(MSDAppSwitcherManager *)&v6 init];
  if (v2)
  {
    v3 = +[NSFileManager defaultManager];
    [(MSDAppSwitcherManager *)v2 setFileManager:v3];

    v4 = objc_alloc_init(SBSTestAutomationService);
    [(MSDAppSwitcherManager *)v2 setSbAppSwitcher:v4];
  }

  return v2;
}

- (void)dealloc
{
  sbAppSwitcher = [(MSDAppSwitcherManager *)self sbAppSwitcher];
  [sbAppSwitcher invalidate];

  v4.receiver = self;
  v4.super_class = MSDAppSwitcherManager;
  [(MSDAppSwitcherManager *)&v4 dealloc];
}

- (void)initializeClearAppSwitcherStateForDemoMode
{
  fileManager = [(MSDAppSwitcherManager *)self fileManager];
  v4 = [fileManager fileExistsAtPath:@"/var/mobile/Library/Application Support/ScreenSaverManager/demoModeAppSwitcher.plist"];

  if (v4)
  {
    v6 = sub_100063A54(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[MSDAppSwitcherManager initializeClearAppSwitcherStateForDemoMode]";
      v9 = 2114;
      v10 = @"/var/mobile/Library/Application Support/ScreenSaverManager/demoModeAppSwitcher.plist";
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s - AppSwitcher model file already exists at path %{public}@", &v7, 0x16u);
    }
  }

  else
  {

    [(MSDAppSwitcherManager *)self createSwitcherModelAtPath:@"/var/mobile/Library/Application Support/ScreenSaverManager/demoModeAppSwitcher.plist"];
  }
}

- (BOOL)loadStashedSwitcherModelFromPath:(id)path
{
  pathCopy = path;
  fileManager = [(MSDAppSwitcherManager *)self fileManager];
  v6 = [fileManager fileExistsAtPath:pathCopy];

  if (v6)
  {
    sbAppSwitcher = [(MSDAppSwitcherManager *)self sbAppSwitcher];
    [sbAppSwitcher loadStashedSwitcherModelFromPath:pathCopy];
  }

  else
  {
    sbAppSwitcher = sub_100063A54(v7);
    if (os_log_type_enabled(sbAppSwitcher, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF918();
    }
  }

  return v6;
}

- (BOOL)stashSwitcherModelToPath:(id)path overwrite:(BOOL)overwrite
{
  pathCopy = path;
  v21 = 0;
  stringByDeletingLastPathComponent = [pathCopy stringByDeletingLastPathComponent];
  if (!overwrite)
  {
    fileManager = [(MSDAppSwitcherManager *)self fileManager];
    v9 = [fileManager fileExistsAtPath:pathCopy];

    if (v9)
    {
      v11 = sub_100063A54(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v23 = "[MSDAppSwitcherManager stashSwitcherModelToPath:overwrite:]";
        v24 = 2114;
        v25 = pathCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s - AppSwitcher model file already exists at path %{public}@", buf, 0x16u);
      }

LABEL_13:

      v19 = 0;
      goto LABEL_14;
    }
  }

  fileManager2 = [(MSDAppSwitcherManager *)self fileManager];
  v13 = [fileManager2 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v21];
  v14 = v21;

  if (!v13 || (v14 & 1) == 0)
  {
    v11 = sub_100063A54(v15);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF990();
    }

    goto LABEL_13;
  }

  sbAppSwitcher = [(MSDAppSwitcherManager *)self sbAppSwitcher];
  [sbAppSwitcher stashSwitcherModelToPath:pathCopy];

  fileManager3 = [(MSDAppSwitcherManager *)self fileManager];
  LOBYTE(sbAppSwitcher) = [fileManager3 fileExistsAtPath:pathCopy];

  if ((sbAppSwitcher & 1) == 0)
  {
    v11 = sub_100063A54(v18);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1000CFA08();
    }

    goto LABEL_13;
  }

  v19 = 1;
LABEL_14:

  return v19;
}

- (BOOL)createSwitcherModelAtPath:(id)path
{
  pathCopy = path;
  v4 = +[NSArray array];
  v5 = [NSURL fileURLWithPath:pathCopy];
  v12 = 0;
  v6 = [v4 writeToURL:v5 error:&v12];
  v7 = v12;

  v9 = sub_100063A54(v8);
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[MSDAppSwitcherManager createSwitcherModelAtPath:]";
      v15 = 2114;
      v16 = pathCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s - Writing empty app switcher model to path %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1000CFA80(pathCopy, v7, v10);
  }

  return v6;
}

@end