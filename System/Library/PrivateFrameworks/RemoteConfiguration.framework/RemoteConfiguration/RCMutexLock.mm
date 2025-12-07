@interface RCMutexLock
- (RCMutexLock)initWithOptions:(unint64_t)options;
- (void)dealloc;
- (void)performWithLockSync:(id)sync;
@end

@implementation RCMutexLock

- (RCMutexLock)initWithOptions:(unint64_t)options
{
  optionsCopy = options;
  v8 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = RCMutexLock;
  v4 = [(RCMutexLock *)&v6 init];
  if (v4)
  {
    v7.__sig = 0;
    *v7.__opaque = 0;
    pthread_mutexattr_init(&v7);
    pthread_mutexattr_settype(&v7, 2 * (optionsCopy & 1));
    pthread_mutex_init(&v4->_lock, &v7);
  }

  return v4;
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = RCMutexLock;
  [(RCMutexLock *)&v3 dealloc];
}

- (void)performWithLockSync:(id)sync
{
  syncCopy = sync;
  [(RCMutexLock *)self lock];
  if (syncCopy)
  {
    syncCopy[2]();
  }

  [(RCMutexLock *)self unlock];
}

@end