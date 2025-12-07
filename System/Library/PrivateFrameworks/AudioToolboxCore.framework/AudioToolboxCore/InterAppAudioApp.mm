@interface InterAppAudioApp
- (BOOL)processRunningOnForeground:(int)foreground;
- (id)init:(const InterAppAudioAppInfo *)init iconSize:(float)size;
- (void)dealloc;
@end

@implementation InterAppAudioApp

- (BOOL)processRunningOnForeground:(int)foreground
{
  v3 = *&foreground;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  if (!self->appMonitor)
  {
    self->appMonitor = objc_alloc_init(MEMORY[0x1E698D030]);
  }

  v5 = dispatch_semaphore_create(0);
  appMonitor = self->appMonitor;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __47__InterAppAudioApp_processRunningOnForeground___block_invoke;
  v9[3] = &unk_1E72BA730;
  v9[4] = v5;
  v9[5] = &v10;
  [(BKSApplicationStateMonitor *)appMonitor applicationInfoForPID:v3 completion:v9];
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v5);
  v7 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v7;
}

intptr_t __47__InterAppAudioApp_processRunningOnForeground___block_invoke(uint64_t a1, void *a2)
{
  if ([a2 objectForKeyedSubscript:*MEMORY[0x1E698D000]] && objc_msgSend(objc_msgSend(a2, "objectForKeyedSubscript:", *MEMORY[0x1E698CFF0]), "BOOLValue"))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = InterAppAudioApp;
  [(InterAppAudioApp *)&v3 dealloc];
}

- (id)init:(const InterAppAudioAppInfo *)init iconSize:(float)size
{
  v14.receiver = self;
  v14.super_class = InterAppAudioApp;
  v5 = [(InterAppAudioApp *)&v14 init];
  v6 = v5;
  if (v5)
  {
    v5->_isHost = init->var0;
    var1 = init->var1;
    v5->_isCurrentApp = var1 == getpid();
    v6->_key = init->var1;
    v6->_isForeground = [(InterAppAudioApp *)v6 processRunningOnForeground:?];
    var2 = init->var2;
    if (!var2)
    {
      var2 = IPCAUIcons::GetIconFromBundle(init->var4, v8);
    }

    v6->_icon = var2;
    v6->_url = init->var5;
    v6->_name = &init->var3->isa;
    v10 = var2;
    v11 = v6->_url;
    v12 = v6->_name;
  }

  return v6;
}

@end