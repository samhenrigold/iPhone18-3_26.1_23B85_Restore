@interface PCSLockManager
+ (id)manager;
- (BOOL)holdAssertion:(id)assertion;
- (id)initManager;
- (id)lockAssertion:(id)assertion;
- (void)_onlockDropAssertion:(id)assertion;
- (void)dropAssertion:(id)assertion;
- (void)removeAssertion:(id)assertion;
@end

@implementation PCSLockManager

- (id)initManager
{
  v10.receiver = self;
  v10.super_class = PCSLockManager;
  v2 = [(PCSLockManager *)&v10 init];
  if (v2)
  {
    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    weakObjectsHashTable2 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    holders = v2->_holders;
    v2->_holders = weakObjectsHashTable2;

    v7 = os_log_create("com.apple.ProtectedCloudStorage", "lockassertion");
    log = v2->_log;
    v2->_log = v7;
  }

  return v2;
}

+ (id)manager
{
  if (manager_onceToken != -1)
  {
    +[PCSLockManager manager];
  }

  v3 = manager_manager;

  return v3;
}

uint64_t __25__PCSLockManager_manager__block_invoke()
{
  manager_manager = [[PCSLockManager alloc] initManager];

  return MEMORY[0x1EEE66BB8]();
}

- (id)lockAssertion:(id)assertion
{
  assertionCopy = assertion;
  v5 = [[PCSLockAssertion alloc] initAssertion:assertionCopy manager:self];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers addObject:v5];
  objc_sync_exit(selfCopy);

  return v5;
}

- (void)removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSHashTable *)selfCopy->_observers removeObject:assertionCopy];
  [(PCSLockManager *)selfCopy _onlockDropAssertion:assertionCopy];
  objc_sync_exit(selfCopy);
}

- (BOOL)holdAssertion:(id)assertion
{
  v15 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = [(PCSLockManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [assertionCopy name];
    v13 = 138543362;
    v14 = name;
    _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "assertion %{public}@ trying to hold lock assertion", &v13, 0xCu);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ([(NSHashTable *)selfCopy->_holders count]&& !+[PCSLockManager holdAssertion])
  {
    v11 = 0;
  }

  else
  {
    v8 = [(PCSLockManager *)selfCopy log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [(NSHashTable *)selfCopy->_holders count];
      v10 = " though piggyback";
      if (!v9)
      {
        v10 = "";
      }

      v13 = 136315138;
      v14 = v10;
      _os_log_impl(&dword_1B229C000, v8, OS_LOG_TYPE_DEFAULT, "Got lock assertion%s", &v13, 0xCu);
    }

    [(NSHashTable *)selfCopy->_holders addObject:assertionCopy];
    v11 = 1;
  }

  objc_sync_exit(selfCopy);

  return v11;
}

- (void)_onlockDropAssertion:(id)assertion
{
  v10 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  v5 = [(PCSLockManager *)self log];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [assertionCopy name];
    v8 = 138543362;
    v9 = name;
    _os_log_impl(&dword_1B229C000, v5, OS_LOG_TYPE_DEFAULT, "assertion %{public}@ dropping lock assertion", &v8, 0xCu);
  }

  [(NSHashTable *)self->_holders removeObject:assertionCopy];
  if (![(NSHashTable *)self->_holders count])
  {
    +[PCSLockManager dropAssertion];
    v7 = [(PCSLockManager *)self log];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_1B229C000, v7, OS_LOG_TYPE_DEFAULT, "dropped lock assertion", &v8, 2u);
    }
  }
}

- (void)dropAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PCSLockManager *)selfCopy _onlockDropAssertion:assertionCopy];
  objc_sync_exit(selfCopy);
}

@end