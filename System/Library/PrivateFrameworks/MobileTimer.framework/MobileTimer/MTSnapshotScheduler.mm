@interface MTSnapshotScheduler
+ (double)_quiescingWindow;
- (MTSnapshotScheduler)initWithBundleID:(id)d;
@end

@implementation MTSnapshotScheduler

- (MTSnapshotScheduler)initWithBundleID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MTSnapshotScheduler;
  v6 = [(MTSnapshotScheduler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleID, d);
  }

  return v7;
}

+ (double)_quiescingWindow
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MTSnapshotScheduler__quiescingWindow__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_quiescingWindow_onceToken != -1)
  {
    dispatch_once(&_quiescingWindow_onceToken, block);
  }

  return *&_quiescingWindow_quiescingWindow;
}

void __39__MTSnapshotScheduler__quiescingWindow__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = +[MTUserDefaults sharedUserDefaults];
  v2 = MTTimeIntervalIsPositive();
  [v1 timeIntervalForKey:@"SnapshotWindow" isValid:v2 defaultValue:5.0];
  _quiescingWindow_quiescingWindow = v3;

  v4 = MTLogForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 2050;
    v9 = _quiescingWindow_quiescingWindow;
    v5 = v7;
    _os_log_impl(&dword_1B1F9F000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Using snapshot quiescing window of %{public}f", &v6, 0x16u);
  }
}

@end