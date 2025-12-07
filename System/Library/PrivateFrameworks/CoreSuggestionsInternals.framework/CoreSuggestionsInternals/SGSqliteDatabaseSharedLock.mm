@interface SGSqliteDatabaseSharedLock
- (SGSqliteDatabaseSharedLock)init;
- (void)dealloc;
- (void)runWithLockAcquired:(id)acquired;
@end

@implementation SGSqliteDatabaseSharedLock

- (void)runWithLockAcquired:(id)acquired
{
  acquiredCopy = acquired;
  pthread_mutex_lock(&self->_lock);
  ++self->_writeTransactionDepth;
  acquiredCopy[2]();
  --self->_writeTransactionDepth;
  pthread_mutex_unlock(&self->_lock);
}

- (void)dealloc
{
  pthread_mutex_destroy(&self->_lock);
  v3.receiver = self;
  v3.super_class = SGSqliteDatabaseSharedLock;
  [(SGSqliteDatabaseSharedLock *)&v3 dealloc];
}

- (SGSqliteDatabaseSharedLock)init
{
  v7 = *MEMORY[0x277D85DE8];
  v5.receiver = self;
  v5.super_class = SGSqliteDatabaseSharedLock;
  v2 = [(SGSqliteDatabaseSharedLock *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_writeTransactionDepth = 0;
    v6.__sig = 0;
    *v6.__opaque = 0;
    pthread_mutexattr_init(&v6);
    pthread_mutexattr_settype(&v6, 2);
    pthread_mutex_init(&v3->_lock, &v6);
    pthread_mutexattr_destroy(&v6);
  }

  return v3;
}

@end