@interface HDSPSleepTrackingManager
+ (id)platformSpecificTrackerWithEnvironment:(id)environment;
- (HDSPEnvironment)environment;
- (HDSPSleepTrackingManager)initWithEnvironment:(id)environment;
- (HDSPSleepTrackingManager)initWithEnvironment:(id)environment sleepSessionManager:(id)manager sleepTracker:(id)tracker;
- (id)sleepSessionManager:(id)manager requestsProcessedSessionForSession:(id)session;
- (void)environmentDidBecomeReady:(id)ready;
- (void)environmentWillBecomeReady:(id)ready;
- (void)sleepSessionManager:(id)manager didSaveArchivedSessions:(id)sessions;
- (void)sleepSessionManager:(id)manager didSaveSession:(id)session;
- (void)sleepSessionManagerDidFinishSession:(id)session;
@end

@implementation HDSPSleepTrackingManager

- (HDSPSleepTrackingManager)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v5 = [[HDSPSleepSessionManager alloc] initWithEnvironment:environmentCopy];
  v6 = [objc_opt_class() platformSpecificTrackerWithEnvironment:environmentCopy];
  v7 = [(HDSPSleepTrackingManager *)self initWithEnvironment:environmentCopy sleepSessionManager:v5 sleepTracker:v6];

  return v7;
}

+ (id)platformSpecificTrackerWithEnvironment:(id)environment
{
  environmentCopy = environment;
  behavior = [environmentCopy behavior];
  if ([behavior isAppleWatch])
  {
    v5 = 0;
  }

  else
  {
    v5 = [[HDSPTimeInBedTracker alloc] initWithEnvironment:environmentCopy];
  }

  return v5;
}

- (HDSPSleepTrackingManager)initWithEnvironment:(id)environment sleepSessionManager:(id)manager sleepTracker:(id)tracker
{
  environmentCopy = environment;
  managerCopy = manager;
  trackerCopy = tracker;
  v19.receiver = self;
  v19.super_class = HDSPSleepTrackingManager;
  v11 = [(HDSPSleepTrackingManager *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_environment, environmentCopy);
    objc_storeStrong(&v12->_sleepSessionManager, manager);
    [(HDSPSleepSessionManager *)v12->_sleepSessionManager setDelegate:v12];
    objc_storeStrong(&v12->_sleepTracker, tracker);
    [(HDSPSleepTracker *)v12->_sleepTracker setDelegate:v12->_sleepSessionManager];
    v13 = objc_alloc(MEMORY[0x277D624A0]);
    defaultCallbackScheduler = [environmentCopy defaultCallbackScheduler];
    v15 = [v13 initWithCallbackScheduler:defaultCallbackScheduler];
    sleepSessionObservers = v12->_sleepSessionObservers;
    v12->_sleepSessionObservers = v15;

    v17 = v12;
  }

  return v12;
}

- (void)environmentWillBecomeReady:(id)ready
{
  readyCopy = ready;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker environmentWillBecomeReady:readyCopy];
  }
}

- (void)environmentDidBecomeReady:(id)ready
{
  readyCopy = ready;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker environmentDidBecomeReady:readyCopy];
  }

  [(HDSPSleepSessionManager *)self->_sleepSessionManager savePendingSessions];
}

- (void)sleepSessionManager:(id)manager didSaveSession:(id)session
{
  v16 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = sessionCopy;
    v7 = v13;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didSaveSession %{public}@", buf, 0x16u);
  }

  sleepSessionObservers = self->_sleepSessionObservers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __63__HDSPSleepTrackingManager_sleepSessionManager_didSaveSession___block_invoke;
  v10[3] = &unk_279C7B718;
  v11 = sessionCopy;
  v9 = sessionCopy;
  [(HKSPObserverSet *)sleepSessionObservers enumerateObserversWithBlock:v10];
}

- (void)sleepSessionManager:(id)manager didSaveArchivedSessions:(id)sessions
{
  v16 = *MEMORY[0x277D85DE8];
  sessionsCopy = sessions;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = sessionsCopy;
    v7 = v13;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didSaveArchivedSessions %{public}@", buf, 0x16u);
  }

  sleepSessionObservers = self->_sleepSessionObservers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__HDSPSleepTrackingManager_sleepSessionManager_didSaveArchivedSessions___block_invoke;
  v10[3] = &unk_279C7B718;
  v11 = sessionsCopy;
  v9 = sessionsCopy;
  [(HKSPObserverSet *)sleepSessionObservers enumerateObserversWithBlock:v10];
}

void __72__HDSPSleepTrackingManager_sleepSessionManager_didSaveArchivedSessions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 archivedSleepSessionsSaved:*(a1 + 32)];
  }
}

- (id)sleepSessionManager:(id)manager requestsProcessedSessionForSession:(id)session
{
  v14 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = objc_opt_class();
    v12 = 2114;
    v13 = sessionCopy;
    v7 = v11;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] requestsProcessedSessionForSession %{public}@", &v10, 0x16u);
  }

  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker processedSessionForSession:sessionCopy];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:sessionCopy];
  }
  v8 = ;

  return v8;
}

- (void)sleepSessionManagerDidFinishSession:(id)session
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v5 = v7;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepSessionManagerDidFinishSession", &v6, 0xCu);
  }

  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker previousSessionFinished];
  }
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end