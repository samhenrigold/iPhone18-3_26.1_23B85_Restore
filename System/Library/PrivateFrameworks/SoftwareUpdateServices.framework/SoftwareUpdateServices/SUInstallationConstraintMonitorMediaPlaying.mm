@interface SUInstallationConstraintMonitorMediaPlaying
- (id)initOnQueue:(id)queue withDownload:(id)download;
- (unint64_t)unsatisfiedConstraints;
- (void)_handlePlaybackChangeNotification:(id)notification;
- (void)_queue_pollSatisfied;
- (void)dealloc;
@end

@implementation SUInstallationConstraintMonitorMediaPlaying

- (id)initOnQueue:(id)queue withDownload:(id)download
{
  downloadCopy = download;
  queueCopy = queue;
  BSDispatchQueueAssert();
  v13.receiver = self;
  v13.super_class = SUInstallationConstraintMonitorMediaPlaying;
  v8 = [(SUInstallationConstraintMonitorBase *)&v13 initOnQueue:queueCopy withRepresentedInstallationConstraints:1024 andDownload:downloadCopy];

  if (v8)
  {
    v9 = dispatch_queue_create("com.apple.softwareupdateservices.mediaremote", 0);
    v10 = v8[7];
    v8[7] = v9;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__handlePlaybackChangeNotification_ name:*MEMORY[0x277D27B50] object:0];

    MRMediaRemoteSetWantsNowPlayingNotifications();
    [v8 _queue_pollSatisfied];
  }

  return v8;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  MRMediaRemoteSetWantsNowPlayingNotifications();
  v4.receiver = self;
  v4.super_class = SUInstallationConstraintMonitorMediaPlaying;
  [(SUInstallationConstraintMonitorMediaPlaying *)&v4 dealloc];
}

- (void)_queue_pollSatisfied
{
  BSDispatchQueueAssert();
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = dispatch_semaphore_create(0);
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();
  v4 = dispatch_time(0, 3000000000);
  v5 = dispatch_semaphore_wait(v3, v4);
  v6 = *(v16 + 24);
  if (self->_queue_mediaPlaying != v6)
  {
    self->_queue_mediaPlaying = v6;
    v7 = SULogInstallConstraints(v5);
    SULogInfoForSubsystem(v7, @"%@ - media playing constraint changed (satisfied? %@)", v8, v9, v10, v11, v12, v13, self);

    delegate = [(SUInstallationConstraintMonitorBase *)self delegate];
    [delegate installationConstraintMonitor:self constraintsDidChange:{-[SUInstallationConstraintMonitorBase representedConstraints](self, "representedConstraints")}];
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_handlePlaybackChangeNotification:(id)notification
{
  queue = self->super._queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __81__SUInstallationConstraintMonitorMediaPlaying__handlePlaybackChangeNotification___block_invoke;
  block[3] = &unk_279CAA708;
  block[4] = self;
  dispatch_async(queue, block);
}

- (unint64_t)unsatisfiedConstraints
{
  BSDispatchQueueAssert();
  [(SUInstallationConstraintMonitorMediaPlaying *)self _queue_pollSatisfied];
  if (!self->_queue_mediaPlaying)
  {
    return 0;
  }

  return [(SUInstallationConstraintMonitorBase *)self representedConstraints];
}

@end