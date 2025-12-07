@interface AVApplicationStateMonitor
+ (id)sharedApplicationStateMonitor;
+ (void)initialize;
- (AVApplicationStateMonitor)init;
- (BOOL)_hostApplicationHasForegroundExemption;
- (BOOL)isHostApplicationInForeground;
- (void)dealloc;
- (void)setHostApplicationInForeground:(BOOL)foreground;
@end

@implementation AVApplicationStateMonitor

+ (id)sharedApplicationStateMonitor
{
  if (sharedApplicationStateMonitor_gAVApplicationStateMonitor_Once != -1)
  {
    +[AVApplicationStateMonitor sharedApplicationStateMonitor];
  }

  FigSimpleMutexLock();
  WeakRetained = objc_loadWeakRetained(&sharedApplicationStateMonitor__weakApplicationStateMonitor);
  if (!WeakRetained)
  {
    WeakRetained = objc_alloc_init(AVApplicationStateMonitor);
    objc_storeWeak(&sharedApplicationStateMonitor__weakApplicationStateMonitor, WeakRetained);
  }

  FigSimpleMutexUnlock();

  return WeakRetained;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

uint64_t __58__AVApplicationStateMonitor_sharedApplicationStateMonitor__block_invoke()
{
  result = FigSimpleMutexCreate();
  sharedApplicationStateMonitor__mutex = result;
  return result;
}

- (AVApplicationStateMonitor)init
{
  v18.receiver = self;
  v18.super_class = AVApplicationStateMonitor;
  v3 = [(AVApplicationStateMonitor *)&v18 init];
  if (v3)
  {
    v3->_ivarAccessQueue = av_readwrite_dispatch_queue_create("com.apple.avapplicationutilities.ivars", v2);
    v4 = [objc_msgSend(MEMORY[0x1E69C75D0] "currentProcess")];
    if (v4)
    {
      v5 = v4;
      v6 = [v4 taskState] == 4 || objc_msgSend(v5, "taskState") == 2;
      endowmentNamespaces = [v5 endowmentNamespaces];
      v8 = [endowmentNamespaces containsObject:*MEMORY[0x1E699F9D0]];
      if (v6 && (v8 & 1) != 0)
      {
        _hostApplicationHasForegroundExemption = 1;
      }

      else
      {
        _hostApplicationHasForegroundExemption = [(AVApplicationStateMonitor *)v3 _hostApplicationHasForegroundExemption];
      }

      v3->_hostApplicationInForeground = _hostApplicationHasForegroundExemption;
    }

    else
    {
      v3->_hostApplicationInForeground = 1;
    }

    objc_initWeak(&location, v3);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __33__AVApplicationStateMonitor_init__block_invoke;
    v15[3] = &unk_1E7460BB0;
    objc_copyWeak(&v16, &location);
    v3->_didEnterBackgroundNotificationToken = [defaultCenter addObserverForName:@"UIApplicationDidEnterBackgroundNotification" object:0 queue:0 usingBlock:v15];
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __33__AVApplicationStateMonitor_init__block_invoke_2;
    v13[3] = &unk_1E7460BB0;
    objc_copyWeak(&v14, &location);
    v3->_willEnterForegroundNotificationToken = [defaultCenter2 addObserverForName:@"UIApplicationWillEnterForegroundNotification" object:0 queue:0 usingBlock:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v3;
}

uint64_t __33__AVApplicationStateMonitor_init__block_invoke(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _didEnterBackground:a2];
}

uint64_t __33__AVApplicationStateMonitor_init__block_invoke_2(uint64_t a1, uint64_t a2)
{
  Weak = objc_loadWeak((a1 + 32));

  return [Weak _willEnterForeground:a2];
}

- (void)dealloc
{
  ivarAccessQueue = self->_ivarAccessQueue;
  if (ivarAccessQueue)
  {
    dispatch_release(ivarAccessQueue);
  }

  if (self->_didEnterBackgroundNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  if (self->_willEnterForegroundNotificationToken)
  {
    [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  }

  v4.receiver = self;
  v4.super_class = AVApplicationStateMonitor;
  [(AVApplicationStateMonitor *)&v4 dealloc];
}

- (BOOL)isHostApplicationInForeground
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  ivarAccessQueue = self->_ivarAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__AVApplicationStateMonitor_isHostApplicationInForeground__block_invoke;
  v5[3] = &unk_1E7460E68;
  v5[4] = self;
  v5[5] = &v6;
  av_readwrite_dispatch_queue_read(ivarAccessQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setHostApplicationInForeground:(BOOL)foreground
{
  ivarAccessQueue = self->_ivarAccessQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__AVApplicationStateMonitor_setHostApplicationInForeground___block_invoke;
  v4[3] = &unk_1E7460E40;
  v4[4] = self;
  foregroundCopy = foreground;
  av_readwrite_dispatch_queue_write(ivarAccessQueue, v4);
}

- (BOOL)_hostApplicationHasForegroundExemption
{
  if (_hostApplicationHasForegroundExemption_onceToken != -1)
  {
    [AVApplicationStateMonitor _hostApplicationHasForegroundExemption];
  }

  return _hostApplicationHasForegroundExemption_applicationHasForegroundExemption;
}

void __67__AVApplicationStateMonitor__hostApplicationHasForegroundExemption__block_invoke()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x1E695E480]);
  if (v0)
  {
    v1 = v0;
    v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.avfoundation.tool-has-foreground-exemption", 0);
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFBooleanGetTypeID())
      {
        _hostApplicationHasForegroundExemption_applicationHasForegroundExemption = CFBooleanGetValue(v3) != 0;
      }

      CFRelease(v3);
    }

    CFRelease(v1);
  }
}

@end