@interface _TIKeyboardSyncFileInstaller
- (_TIKeyboardSyncFileInstaller)initWithEntry:(id)entry;
- (void)dealloc;
- (void)execute;
- (void)invalidate;
@end

@implementation _TIKeyboardSyncFileInstaller

- (void)dealloc
{
  [(_TIKeyboardSyncFileInstaller *)self execute];
  v3.receiver = self;
  v3.super_class = _TIKeyboardSyncFileInstaller;
  [(_TIKeyboardSyncFileInstaller *)&v3 dealloc];
}

- (void)invalidate
{
  entry = self->_entry;
  self->_entry = 0;
  MEMORY[0x2821F96F8](self, entry);
}

- (void)execute
{
  v9 = *MEMORY[0x277D85DE8];
  if (self->_entry)
  {
    [TILanguageModelLoaderManager dropResourcesExcludingInputModes:MEMORY[0x277CBEBF8]];
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    if (TICanLogMessageAtLevel_logLevel)
    {
      v3 = TIOSLogFacility();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Restoring %@", "-[_TIKeyboardSyncFileInstaller execute]", self->_entry];
        *buf = 138412290;
        v8 = v6;
        _os_log_debug_impl(&dword_22CA55000, v3, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }
    }

    entry = self->_entry;
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:TI_KB_USER_DIRECTORY() isDirectory:1];
    [(_KSFileEntry *)entry restoreToPath:v5];

    [(_TIKeyboardSyncFileInstaller *)self invalidate];
  }
}

- (_TIKeyboardSyncFileInstaller)initWithEntry:(id)entry
{
  entryCopy = entry;
  v9.receiver = self;
  v9.super_class = _TIKeyboardSyncFileInstaller;
  v6 = [(_TIKeyboardSyncFileInstaller *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entry, entry);
  }

  return v7;
}

@end