@interface TSDCTranslationClock
- (TSDCTranslationClock)initWithClockIdentifier:(unint64_t)identifier;
- (void)dealloc;
- (void)didChangeClockMasterForClock:(id)clock;
- (void)didChangeLockStateTo:(int)to forClock:(id)clock;
- (void)getInitialSyncInfo;
@end

@implementation TSDCTranslationClock

- (TSDCTranslationClock)initWithClockIdentifier:(unint64_t)identifier
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    identifierCopy = identifier;
    _os_log_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "TSDCTranslationClock (0x%016llx) initWithClockIdentifier", buf, 0xCu);
  }

  v13.receiver = self;
  v13.super_class = TSDCTranslationClock;
  v5 = [(TSDCTranslationClock *)&v13 init];
  if (v5)
  {
    v6 = [[_TSF_TSDKernelClock alloc] initWithClockIdentifier:?];
    if (v6)
    {
      v7 = [[TSXTranslationClock alloc] initWithClockIdentifier:?];
      translationClock = v5->_translationClock;
      v5->_translationClock = v7;

      objc_storeStrong(&v5->_translationKernelClock, v6);
      [(_TSF_TSDKernelClock *)v5->_translationKernelClock addClient:?];
      v9 = +[_TSF_TSDClockSyncManager sharedClockSyncManager];
      v10 = [v9 clockSyncForClockIdentifier:? pid:?];
      clockSync = v5->_clockSync;
      v5->_clockSync = v10;

      [(_TSF_TSDClockSync *)v5->_clockSync addUpdateClient:?];
      [(TSDCTranslationClock *)v5 getInitialSyncInfo];
    }

    else
    {
      [TSDCTranslationClock initWithClockIdentifier:v5];
      v5 = 0;
    }
  }

  return v5;
}

- (void)dealloc
{
  [(_TSF_TSDClockSync *)self->_clockSync removeUpdateClient:?];
  v3 = +[_TSF_TSDClockSyncManager sharedClockSyncManager];
  [(_TSF_TSDKernelClock *)self->_translationKernelClock clockIdentifier];
  [v3 releaseClockSyncForClockIdentifier:?];

  [(_TSF_TSDKernelClock *)self->_translationKernelClock removeClient:?];
  v4.receiver = self;
  v4.super_class = TSDCTranslationClock;
  [(TSDCTranslationClock *)&v4 dealloc];
}

- (void)getInitialSyncInfo
{
  *buf = 136315138;
  *(buf + 4) = self;
  _os_log_error_impl(&dword_26F080000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Error getting initial sync info %s", buf, 0xCu);
}

- (void)didChangeClockMasterForClock:(id)clock
{
  translationClock = [(TSDCTranslationClock *)self translationClock];
  [translationClock _changedClockMaster];
}

- (void)didChangeLockStateTo:(int)to forClock:(id)clock
{
  translationClock = [(TSDCTranslationClock *)self translationClock];
  [translationClock _updateLockState:?];
}

- (void)initWithClockIdentifier:(void *)a1 .cold.1(void *a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136316418;
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_26F080000, MEMORY[0x277D86220], v2, "Assert: %s (value 0x%lx %lu), %s file: %s, line: %d\n", v3, v4, v5, v6, v7);
  }
}

@end