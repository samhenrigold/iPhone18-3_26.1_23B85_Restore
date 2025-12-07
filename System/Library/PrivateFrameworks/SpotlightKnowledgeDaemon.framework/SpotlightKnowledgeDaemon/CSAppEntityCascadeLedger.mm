@interface CSAppEntityCascadeLedger
+ (id)_acquireLockFileInDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error;
+ (id)_loadLedgerFileInDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error;
+ (id)_lockFileURLWithDirectory:(id)directory bundleIdentifier:(id)identifier;
+ (void)deleteLedgerFilesInDirectory:(id)directory notContainedInActiveBundles:(id)bundles;
- (BOOL)resetLedger:(id *)ledger;
- (CSAppEntityCascadeLedger)initWithDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error;
- (unint64_t)_fullSetDonationAttemptCount;
- (unint64_t)_journalUpdateAttemptCount;
- (unint64_t)failureCount;
- (unint64_t)version;
- (unsigned)_options;
- (void)_releaseLock:(BOOL)lock;
- (void)attemptFullSetDonation;
- (void)attemptJournalUpdate;
- (void)completeFullSetDonationWithVersion:(unint64_t)version;
- (void)completeJournalUpdate;
- (void)dealloc;
- (void)incrementVersion;
- (void)resetJournalUpdateAttempts;
@end

@implementation CSAppEntityCascadeLedger

+ (id)_lockFileURLWithDirectory:(id)directory bundleIdentifier:(id)identifier
{
  directoryCopy = directory;
  v6 = [identifier stringByAppendingString:@"-lockfile"];
  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6 relativeToURL:directoryCopy];

  return v7;
}

+ (id)_acquireLockFileInDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  directoryCopy = directory;
  v9 = [objc_opt_class() _lockFileURLWithDirectory:directoryCopy bundleIdentifier:identifierCopy];

  v10 = open([v9 fileSystemRepresentation], 514, 420);
  if (!v10)
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    errorCopy2 = error;
    v15 = 15;
    goto LABEL_9;
  }

  v11 = v10;
  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v12 = SKGLogInit();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      +[CSAppEntityCascadeLedger _acquireLockFileInDirectory:bundleIdentifier:error:];
    }
  }

  if (flock(v11, 2))
  {
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
    errorCopy2 = error;
    v15 = 16;
LABEL_9:
    _setError(errorCopy2, v15, v13);

    v16 = 0;
    goto LABEL_15;
  }

  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v17 = SKGLogInit();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      v20 = objc_opt_class();
      v21 = 1024;
      v22 = v11;
      v23 = 2112;
      v24 = v9;
      _os_log_debug_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEBUG, "### %@ Acquired lock file fd %d for %@", buf, 0x1Cu);
    }
  }

  v16 = [objc_alloc(MEMORY[0x277CCA9F8]) initWithFileDescriptor:v11 closeOnDealloc:0];
LABEL_15:

  return v16;
}

+ (id)_loadLedgerFileInDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error
{
  v37[2] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = MEMORY[0x277D23B80];
  directoryCopy = directory;
  currentBuildVersion = [v8 currentBuildVersion];
  v36[0] = @"Build";
  v36[1] = @"Options";
  v37[0] = currentBuildVersion;
  v37[1] = &unk_2846E7548;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  v12 = [identifierCopy stringByAppendingString:@"-ledger"];
  v27 = 0;
  v13 = [objc_alloc(MEMORY[0x277CF0E10]) initWithFilename:v12 protectionClass:4 directory:directoryCopy readOnly:0 create:1 initialDictionary:v11 error:&v27];

  v14 = v27;
  if (!v13)
  {
    _setError(error, 17, v14);
    v17 = 0;
    goto LABEL_18;
  }

  v15 = [v13 objectForKey:@"Build"];
  if ([currentBuildVersion isEqual:v15])
  {
    v16 = v14;
  }

  else
  {
    errorCopy = error;
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v18 = SKGLogInit();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v31 = identifierCopy;
        v32 = 2112;
        v33 = v15;
        v34 = 2112;
        v35 = currentBuildVersion;
        _os_log_impl(&dword_231B25000, v18, OS_LOG_TYPE_DEFAULT, "Ledger file for bundle: %@ was written on build (%@) different from current (%@)", buf, 0x20u);
      }
    }

    v25 = v15;
    v29[0] = currentBuildVersion;
    v29[1] = &unk_2846E7548;
    v29[2] = &unk_2846E7560;
    v29[3] = &unk_2846E7560;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
    v28[0] = @"Build";
    v28[1] = @"Options";
    v28[2] = @"JournalUpdate";
    v28[3] = @"NightlyVerification";
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    v26 = v14;
    v21 = [v13 writeUpdatedObjects:v19 forKeys:v20 error:&v26];
    v16 = v26;

    if ((v21 & 1) == 0)
    {
      _setError(errorCopy, 17, v16);
      v17 = 0;
      v15 = v25;
      goto LABEL_17;
    }

    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v22 = SKGLogInit();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v31 = identifierCopy;
        v32 = 2112;
        v33 = currentBuildVersion;
        v34 = 2112;
        v35 = v13;
        _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "Reset ledger file for bundle: %@ on current build (%@): %@", buf, 0x20u);
      }
    }

    v15 = v25;
  }

  v17 = v13;
LABEL_17:

  v14 = v16;
LABEL_18:

  return v17;
}

- (CSAppEntityCascadeLedger)initWithDirectory:(id)directory bundleIdentifier:(id)identifier error:(id *)error
{
  directoryCopy = directory;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = CSAppEntityCascadeLedger;
  v11 = [(CSAppEntityCascadeLedger *)&v18 init];
  if (v11)
  {
    v12 = [objc_opt_class() _acquireLockFileInDirectory:directoryCopy bundleIdentifier:identifierCopy error:error];
    fileLockHandle = v11->_fileLockHandle;
    v11->_fileLockHandle = v12;

    if (!v11->_fileLockHandle || ([objc_opt_class() _loadLedgerFileInDirectory:directoryCopy bundleIdentifier:identifierCopy error:error], v14 = objc_claimAutoreleasedReturnValue(), dictionary = v11->_dictionary, v11->_dictionary = v14, dictionary, !v11->_dictionary))
    {
      v16 = 0;
      goto LABEL_7;
    }

    objc_storeStrong(&v11->_directory, directory);
    objc_storeStrong(&v11->_bundleIdentifier, identifier);
    v11->_released = 0;
    v11->_journalUpdateAttempts = [(CSAppEntityCascadeLedger *)v11 _journalUpdateAttemptCount];
    v11->_fullSetDonationAttempts = [(CSAppEntityCascadeLedger *)v11 _fullSetDonationAttemptCount];
  }

  v16 = v11;
LABEL_7:

  return v16;
}

- (void)_releaseLock:(BOOL)lock
{
  v17 = *MEMORY[0x277D85DE8];
  if (lock)
  {
    v4 = [objc_opt_class() _lockFileURLWithDirectory:self->_directory bundleIdentifier:self->_bundleIdentifier];
    if (SKGLogGetCurrentLoggingLevel() >= 4)
    {
      v5 = SKGLogInit();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = objc_opt_class();
        bundleIdentifier = self->_bundleIdentifier;
        fileDescriptor = [(NSFileHandle *)self->_fileLockHandle fileDescriptor];
        v11 = 138412802;
        v12 = v6;
        v13 = 2112;
        v14 = bundleIdentifier;
        v15 = 1024;
        v16 = fileDescriptor;
        _os_log_impl(&dword_231B25000, v5, OS_LOG_TYPE_DEFAULT, "### %@ Deleting lock file for %@ lockFile fd %d", &v11, 0x1Cu);
      }
    }

    unlinkat(-[NSFileHandle fileDescriptor](self->_fileLockHandle, "fileDescriptor"), [v4 fileSystemRepresentation], 0);
  }

  if (SKGLogGetCurrentLoggingLevel() >= 6)
  {
    v9 = SKGLogInit();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [CSAppEntityCascadeLedger _releaseLock:?];
    }
  }

  if (flock([(NSFileHandle *)self->_fileLockHandle fileDescriptor], 8) && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v10 = SKGLogInit();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSAppEntityCascadeLedger _releaseLock:?];
    }
  }

  [(NSFileHandle *)self->_fileLockHandle closeFile];
  self->_released = 1;
}

- (void)dealloc
{
  if (!self->_released)
  {
    [(CSAppEntityCascadeLedger *)self releaseLock];
  }

  v3.receiver = self;
  v3.super_class = CSAppEntityCascadeLedger;
  [(CSAppEntityCascadeLedger *)&v3 dealloc];
}

- (unsigned)_options
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Options"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (unint64_t)version
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Version"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (unint64_t)failureCount
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Failure"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (unint64_t)_journalUpdateAttemptCount
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Journal"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (unint64_t)_fullSetDonationAttemptCount
{
  v2 = [(BMFileBackedDictionary *)self->_dictionary objectForKey:@"Full"];
  unsignedShortValue = [v2 unsignedShortValue];

  return unsignedShortValue;
}

- (void)incrementVersion
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(CSAppEntityCascadeLedger *)self version]+ 1;
  dictionary = self->_dictionary;
  v5 = [(CSAppEntityCascadeLedger *)self _boxedVersion:v3];
  v9 = 0;
  v6 = [(BMFileBackedDictionary *)dictionary writeUpdatedObject:v5 forKey:@"Version" error:&v9];
  v7 = v9;

  if ((v6 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v8 = SKGLogInit();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v12 = 2048;
      v13 = v3;
      v14 = 2112;
      v15 = v7;
      _os_log_error_impl(&dword_231B25000, v8, OS_LOG_TYPE_ERROR, "### %@ Failed to update ledger to increment version (%llu): %@", buf, 0x20u);
    }
  }
}

- (void)attemptJournalUpdate
{
  v23[3] = *MEMORY[0x277D85DE8];
  ++self->_journalUpdateAttempts;
  version = [(CSAppEntityCascadeLedger *)self version];
  failureCount = [(CSAppEntityCascadeLedger *)self failureCount];
  dictionary = self->_dictionary;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_journalUpdateAttempts];
  v23[0] = v6;
  v7 = [(CSAppEntityCascadeLedger *)self _boxedVersion:version + 1];
  v23[1] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:failureCount + 1];
  v23[2] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v22[0] = @"Journal";
  v22[1] = @"Version";
  v22[2] = @"Failure";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  v15 = 0;
  v11 = [(BMFileBackedDictionary *)dictionary writeUpdatedObjects:v9 forKeys:v10 error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v13 = SKGLogInit();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      journalUpdateAttempts = self->_journalUpdateAttempts;
      *buf = 138412802;
      selfCopy = self;
      v18 = 1024;
      v19 = journalUpdateAttempts;
      v20 = 2112;
      v21 = v12;
      _os_log_error_impl(&dword_231B25000, v13, OS_LOG_TYPE_ERROR, "### %@ Failed to update ledger for journal update attempt (%u): %@", buf, 0x1Cu);
    }
  }
}

- (void)attemptFullSetDonation
{
  v16 = *MEMORY[0x277D85DE8];
  ++self->_fullSetDonationAttempts;
  dictionary = self->_dictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
  v9 = 0;
  v5 = [(BMFileBackedDictionary *)dictionary writeUpdatedObject:v4 forKey:@"Full" error:&v9];
  v6 = v9;

  if ((v5 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v7 = SKGLogInit();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      fullSetDonationAttempts = self->_fullSetDonationAttempts;
      *buf = 138412802;
      selfCopy = self;
      v12 = 1024;
      v13 = fullSetDonationAttempts;
      v14 = 2112;
      v15 = v6;
      _os_log_error_impl(&dword_231B25000, v7, OS_LOG_TYPE_ERROR, "### %@ Failed to update ledger for full set donation attempt (%u): %@", buf, 0x1Cu);
    }
  }
}

- (void)completeJournalUpdate
{
  v25[2] = *MEMORY[0x277D85DE8];
  self->_journalUpdateAttempts = 0;
  failureCount = [(CSAppEntityCascadeLedger *)self failureCount];
  if (failureCount)
  {
    v4 = failureCount - 1;
  }

  else
  {
    v4 = 0;
  }

  dictionary = self->_dictionary;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_journalUpdateAttempts];
  v25[0] = v6;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v4];
  v25[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v24[0] = @"Journal";
  v24[1] = @"Failure";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v19 = 0;
  LOBYTE(dictionary) = [(BMFileBackedDictionary *)dictionary writeUpdatedObjects:v8 forKeys:v9 error:&v19];
  v10 = v19;

  if ((dictionary & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v11 = SKGLogInit();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CSAppEntityCascadeLedger completeJournalUpdate];
      }
    }

    v18 = 0;
    v12 = [(CSAppEntityCascadeLedger *)self resetLedger:&v18];
    v10 = v18;
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v12)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v14 = SKGLogInit();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
          v15 = "### %@ Ledger reset after completing journal update";
          v16 = v14;
          v17 = 12;
LABEL_16:
          _os_log_impl(&dword_231B25000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else if (CurrentLoggingLevel >= 4)
    {
      v14 = SKGLogInit();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v22 = 2112;
        v23 = v10;
        v15 = "### %@ Failed to reset ledger after completing journal update: %@";
        v16 = v14;
        v17 = 22;
        goto LABEL_16;
      }

LABEL_17:
    }
  }
}

- (void)completeFullSetDonationWithVersion:(unint64_t)version
{
  v26[4] = *MEMORY[0x277D85DE8];
  self->_fullSetDonationAttempts = 0;
  dictionary = self->_dictionary;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v26[0] = v6;
  v7 = [(CSAppEntityCascadeLedger *)self _boxedVersion:version];
  v26[1] = v7;
  v26[2] = &unk_2846E7560;
  v26[3] = &unk_2846E7560;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  v25[0] = @"Full";
  v25[1] = @"Version";
  v25[2] = @"Failure";
  v25[3] = @"Options";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  v20 = 0;
  v10 = [(BMFileBackedDictionary *)dictionary writeUpdatedObjects:v8 forKeys:v9 error:&v20];
  v11 = v20;

  if ((v10 & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v12 = SKGLogInit();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CSAppEntityCascadeLedger completeFullSetDonationWithVersion:];
      }
    }

    v19 = 0;
    v13 = [(CSAppEntityCascadeLedger *)self resetLedger:&v19];
    v11 = v19;
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v13)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v15 = SKGLogInit();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
          v16 = "### %@ Ledger reset after completing full set donation";
          v17 = v15;
          v18 = 12;
LABEL_13:
          _os_log_impl(&dword_231B25000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if (CurrentLoggingLevel >= 4)
    {
      v15 = SKGLogInit();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v23 = 2112;
        v24 = v11;
        v16 = "### %@ Failed to reset ledger after completing full set donation: %@";
        v17 = v15;
        v18 = 22;
        goto LABEL_13;
      }

LABEL_14:
    }
  }
}

- (void)resetJournalUpdateAttempts
{
  v20 = *MEMORY[0x277D85DE8];
  self->_journalUpdateAttempts = 0;
  dictionary = self->_dictionary;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:0];
  v15 = 0;
  v5 = [(BMFileBackedDictionary *)dictionary writeUpdatedObject:v4 forKey:@"Journal" error:&v15];
  v6 = v15;

  if ((v5 & 1) == 0)
  {
    if (SKGLogGetCurrentLoggingLevel() >= 2)
    {
      v7 = SKGLogInit();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CSAppEntityCascadeLedger resetJournalUpdateAttempts];
      }
    }

    v14 = 0;
    v8 = [(CSAppEntityCascadeLedger *)self resetLedger:&v14];
    v6 = v14;
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v8)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v10 = SKGLogInit();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          selfCopy2 = self;
          v11 = "### %@ Ledger reset after resetting journal update attempts";
          v12 = v10;
          v13 = 12;
LABEL_13:
          _os_log_impl(&dword_231B25000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
          goto LABEL_14;
        }

        goto LABEL_14;
      }
    }

    else if (CurrentLoggingLevel >= 4)
    {
      v10 = SKGLogInit();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = self;
        v18 = 2112;
        v19 = v6;
        v11 = "### %@ Failed to reset ledger after resetting journal update attempts: %@";
        v12 = v10;
        v13 = 22;
        goto LABEL_13;
      }

LABEL_14:
    }
  }
}

- (BOOL)resetLedger:(id *)ledger
{
  v5 = [(BMFileBackedDictionary *)self->_dictionary clear:?];
  if (v5)
  {
    v6 = [objc_opt_class() _loadLedgerFileInDirectory:self->_directory bundleIdentifier:self->_bundleIdentifier error:ledger];
    dictionary = self->_dictionary;
    self->_dictionary = v6;

    LOBYTE(v5) = self->_dictionary != 0;
  }

  return v5;
}

+ (void)deleteLedgerFilesInDirectory:(id)directory notContainedInActiveBundles:(id)bundles
{
  v95 = *MEMORY[0x277D85DE8];
  directoryCopy = directory;
  bundlesCopy = bundles;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = objc_opt_new();
  v78 = MEMORY[0x277D85DD0];
  v79 = 3221225472;
  v80 = __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke;
  v81 = &unk_27893C620;
  selfCopy = self;
  v82 = directoryCopy;
  v62 = v82;
  v9 = [defaultManager enumeratorAtURL:? includingPropertiesForKeys:? options:? errorHandler:?];

  if (v9)
  {
    v58 = defaultManager;
    v59 = objc_opt_new();
    v61 = objc_opt_new();
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v57 = v9;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v74 objects:v94 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v75;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v75 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v74 + 1) + 8 * i);
          lastPathComponent = [v15 lastPathComponent];
          v17 = @"-ledger";
          if ((([lastPathComponent hasSuffix:@"-ledger"] & 1) != 0 || (v17 = @"-lockfile", objc_msgSend(lastPathComponent, "hasSuffix:", @"-lockfile"))) && (objc_msgSend(lastPathComponent, "substringToIndex:", objc_msgSend(lastPathComponent, "length") - -[__CFString length](v17, "length")), (v18 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v19 = v18;
            if (([bundlesCopy containsObject:v18] & 1) == 0)
            {
              [v59 addObject:v19];
            }
          }

          else
          {
            [v61 addObject:v15];
            v19 = 0;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v74 objects:v94 count:16];
      }

      while (v12);
    }

    v20 = [v59 count];
    CurrentLoggingLevel = SKGLogGetCurrentLoggingLevel();
    if (v20)
    {
      if (CurrentLoggingLevel >= 4)
      {
        v22 = SKGLogInit();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = objc_opt_class();
          *buf = 138413058;
          v87 = v23;
          v88 = 2112;
          v89 = v59;
          v90 = 2112;
          v91 = v62;
          v92 = 2112;
          v93 = bundlesCopy;
          _os_log_impl(&dword_231B25000, v22, OS_LOG_TYPE_DEFAULT, "### %@ Deleting ledger and lockfile for bundles: [%@] in ledger directory (%@) not contained in spotlight bundles: %@", buf, 0x2Au);
        }
      }

      v73 = 0u;
      v71 = 0u;
      v72 = 0u;
      v70 = 0u;
      v24 = v59;
      v25 = [v24 countByEnumeratingWithState:&v70 objects:v85 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v71;
        do
        {
          for (j = 0; j != v26; ++j)
          {
            if (*v71 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v70 + 1) + 8 * j);
            v30 = [CSAppEntityCascadeLedger alloc];
            v69 = 0;
            v31 = [(CSAppEntityCascadeLedger *)v30 initWithDirectory:v62 bundleIdentifier:v29 error:&v69];
            v32 = v69;
            if (v31)
            {
              dictionary = v31->_dictionary;
              v68 = v32;
              v34 = [(BMFileBackedDictionary *)dictionary clear:&v68];
              v35 = v68;

              if (v34)
              {
                [(CSAppEntityCascadeLedger *)v31 _releaseLock:1];
              }

              else if (SKGLogGetCurrentLoggingLevel() >= 2)
              {
                v37 = SKGLogInit();
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v39 = objc_opt_class();
                  *buf = 138412802;
                  v87 = v39;
                  v88 = 2112;
                  v89 = v29;
                  v90 = 2112;
                  v91 = v35;
                  _os_log_error_impl(&dword_231B25000, v37, OS_LOG_TYPE_ERROR, "### %@ Cleanup failed to clear ledger for bundleIdentifier: %@ error: %@", buf, 0x20u);
                }
              }

              v32 = v35;
            }

            else if (SKGLogGetCurrentLoggingLevel() >= 2)
            {
              v36 = SKGLogInit();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
              {
                v38 = objc_opt_class();
                *buf = 138412802;
                v87 = v38;
                v88 = 2112;
                v89 = v29;
                v90 = 2112;
                v91 = v32;
                _os_log_error_impl(&dword_231B25000, v36, OS_LOG_TYPE_ERROR, "### %@ Cleanup failed to load ledger for bundleIdentifier: %@ skipping delete: %@", buf, 0x20u);
              }
            }
          }

          v26 = [v24 countByEnumeratingWithState:&v70 objects:v85 count:16];
        }

        while (v26);
      }

      defaultManager = v58;
    }

    else
    {
      defaultManager = v58;
      if (CurrentLoggingLevel < 4)
      {
LABEL_41:
        v40 = [v61 count];
        v41 = SKGLogGetCurrentLoggingLevel();
        if (v40)
        {
          if (v41 >= 4)
          {
            v42 = SKGLogInit();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              v43 = objc_opt_class();
              v44 = [v61 count];
              *buf = 138413058;
              v87 = v43;
              v88 = 2048;
              v89 = v44;
              v90 = 2112;
              v91 = v62;
              v92 = 2112;
              v93 = v61;
              _os_log_impl(&dword_231B25000, v42, OS_LOG_TYPE_DEFAULT, "### %@ Deleting %ld extraneous files in ledger directory (%@): %@", buf, 0x2Au);
            }
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v45 = v61;
          v46 = [v45 countByEnumeratingWithState:&v64 objects:v84 count:16];
          if (v46)
          {
            v47 = v46;
            v48 = *v65;
            do
            {
              for (k = 0; k != v47; ++k)
              {
                if (*v65 != v48)
                {
                  objc_enumerationMutation(v45);
                }

                v50 = *(*(&v64 + 1) + 8 * k);
                v63 = 0;
                v51 = [defaultManager removeItemAtURL:v50 error:&v63];
                v52 = v63;
                if ((v51 & 1) == 0 && SKGLogGetCurrentLoggingLevel() >= 2)
                {
                  v53 = SKGLogInit();
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                  {
                    v54 = objc_opt_class();
                    *buf = 138412802;
                    v87 = v54;
                    v88 = 2112;
                    v89 = v50;
                    v90 = 2112;
                    v91 = v52;
                    _os_log_error_impl(&dword_231B25000, v53, OS_LOG_TYPE_ERROR, "### %@ Failed to clean up extraneous file (%@): %@", buf, 0x20u);
                  }

                  defaultManager = v58;
                }
              }

              v47 = [v45 countByEnumeratingWithState:&v64 objects:v84 count:16];
            }

            while (v47);
          }

          v9 = v57;
        }

        else
        {
          v9 = v57;
          if (v41 < 4)
          {
            goto LABEL_60;
          }

          v45 = SKGLogInit();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            v56 = objc_opt_class();
            *buf = 138412546;
            v87 = v56;
            v88 = 2112;
            v89 = v62;
            _os_log_impl(&dword_231B25000, v45, OS_LOG_TYPE_DEFAULT, "### %@ No extraneous files found in ledger directory (%@)", buf, 0x16u);
          }
        }

LABEL_60:
        goto LABEL_61;
      }

      v24 = SKGLogInit();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v55 = objc_opt_class();
        *buf = 138412546;
        v87 = v55;
        v88 = 2112;
        v89 = v62;
        _os_log_impl(&dword_231B25000, v24, OS_LOG_TYPE_DEFAULT, "### %@ Found no ledger / lock files in directory (%@) that need to be cleaned up", buf, 0x16u);
      }
    }

    goto LABEL_41;
  }

LABEL_61:
}

uint64_t __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (SKGLogGetCurrentLoggingLevel() >= 2)
  {
    v4 = SKGLogInit();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke_cold_1();
    }
  }

  return 1;
}

+ (void)_acquireLockFileInDirectory:bundleIdentifier:error:.cold.1()
{
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)_releaseLock:(uint64_t)a1 .cold.1(uint64_t a1)
{
  objc_opt_class();
  [*(a1 + 16) fileDescriptor];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

- (void)_releaseLock:(uint64_t)a1 .cold.2(uint64_t a1)
{
  objc_opt_class();
  v1 = __error();
  strerror(*v1);
  __error();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
}

void __85__CSAppEntityCascadeLedger_deleteLedgerFilesInDirectory_notContainedInActiveBundles___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5();
  objc_opt_class();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end