@interface _LSInstallNotificationJournaller
+ (void)createInstallJournalDirectoryIfRequired;
- (BOOL)applicableForCurrentDatabase;
- (BOOL)entityExists;
- (BOOL)isApplicationRegisteredWithbundleID:(id)d placeholder:(BOOL)placeholder;
- (BOOL)shouldExpectEntityToExist;
- (_LSInstallNotificationJournaller)initWithCoder:(id)coder;
- (_LSInstallNotificationJournaller)initWithPrimaryBundleID:(id)d operation:(unint64_t)operation;
- (id)journalURL;
- (id)journalledNotifications;
- (id)synthesizedPreliminaryJournalledNotifications;
- (void)_writeJournalUnconditionally;
- (void)applicableForCurrentDatabase;
- (void)encodeWithCoder:(id)coder;
- (void)removeJournalAfterNotificationFence;
- (void)removeJournalFile;
- (void)sendNotification:(int)notification forApps:(id)apps withPlugins:(BOOL)plugins options:(id)options;
- (void)setPrimaryBundleID:(id)d;
- (void)shouldExpectEntityToExist;
- (void)writeFinalJournal;
- (void)writePreliminaryJournal;
@end

@implementation _LSInstallNotificationJournaller

+ (void)createInstallJournalDirectoryIfRequired
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (_LSInstallNotificationJournaller)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = _LSInstallNotificationJournaller;
  v5 = [(_LSInstallNotificationJournaller *)&v15 init];
  if (v5)
  {
    v5->_preliminary = [coderCopy decodeBoolForKey:@"_preliminary"];
    v6 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"_primaryBundleID"];
    primaryBundleID = v5->_primaryBundleID;
    v5->_primaryBundleID = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy ls_decodeObjectOfClasses:v10 forKey:@"_journalledNotifications"];
    journalledNotifications = v5->_journalledNotifications;
    v5->_journalledNotifications = v11;

    v5->_operationType = [coderCopy decodeIntegerForKey:@"_operationType"];
    [coderCopy decodeDoubleForKey:@"_timestamp"];
    v5->_timestamp = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  preliminary = self->_preliminary;
  coderCopy = coder;
  [coderCopy encodeBool:preliminary forKey:@"_preliminary"];
  [coderCopy encodeObject:self->_primaryBundleID forKey:@"_primaryBundleID"];
  [coderCopy encodeObject:self->_journalledNotifications forKey:@"_journalledNotifications"];
  [coderCopy encodeInteger:self->_operationType forKey:@"_operationType"];
  [coderCopy encodeDouble:@"_timestamp" forKey:self->_timestamp];
}

- (_LSInstallNotificationJournaller)initWithPrimaryBundleID:(id)d operation:(unint64_t)operation
{
  dCopy = d;
  v15.receiver = self;
  v15.super_class = _LSInstallNotificationJournaller;
  v7 = [(_LSInstallNotificationJournaller *)&v15 init];
  v8 = v7;
  if (v7)
  {
    v7->_preliminary = 1;
    array = [MEMORY[0x1E695DF70] array];
    journalledNotifications = v8->_journalledNotifications;
    v8->_journalledNotifications = array;

    v11 = [dCopy copy];
    primaryBundleID = v8->_primaryBundleID;
    v8->_primaryBundleID = v11;

    v8->_operationType = operation;
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v8->_timestamp = v13;
  }

  return v8;
}

- (BOOL)isApplicationRegisteredWithbundleID:(id)d placeholder:(BOOL)placeholder
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = _LSServer_DatabaseExecutionContext();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __84___LSInstallNotificationJournaller_isApplicationRegisteredWithbundleID_placeholder___block_invoke;
  v10[3] = &unk_1E6A1F430;
  v7 = dCopy;
  placeholderCopy = placeholder;
  v11 = v7;
  v12 = &v14;
  [(LSDBExecutionContext *)v6 syncRead:v10];

  v8 = *(v15 + 24);
  _Block_object_dispose(&v14, 8);

  return v8;
}

- (BOOL)shouldExpectEntityToExist
{
  installOperation = [(_LSInstallNotificationJournaller *)self installOperation];
  if (installOperation >= 9)
  {
    v5 = _LSInstallLog(installOperation);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(_LSInstallNotificationJournaller *)self shouldExpectEntityToExist];
    }

    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = 0x7Fu >> installOperation;
  }

  return v4 & 1;
}

- (BOOL)entityExists
{
  selfCopy = self;
  v3 = (([(_LSInstallNotificationJournaller *)self installOperation]- 2) & 0xFFFFFFFFFFFFFFFALL) == 0;
  primaryBundleID = [(_LSInstallNotificationJournaller *)selfCopy primaryBundleID];
  LOBYTE(selfCopy) = [(_LSInstallNotificationJournaller *)selfCopy isApplicationRegisteredWithbundleID:primaryBundleID placeholder:v3];

  return selfCopy;
}

- (BOOL)applicableForCurrentDatabase
{
  shouldExpectEntityToExist = [(_LSInstallNotificationJournaller *)self shouldExpectEntityToExist];
  entityExists = [(_LSInstallNotificationJournaller *)self entityExists];
  v5 = !entityExists;
  if (shouldExpectEntityToExist)
  {
    v6 = entityExists;
  }

  else
  {
    v6 = !entityExists;
  }

  if (v6 != 1)
  {
    return 0;
  }

  v7 = entityExists;
  result = 1;
  if ((!shouldExpectEntityToExist | v5) == 1 && (shouldExpectEntityToExist || v7))
  {
    v9 = _LSInstallLog(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      [(_LSInstallNotificationJournaller *)shouldExpectEntityToExist applicableForCurrentDatabase];
    }

    return 0;
  }

  return result;
}

- (id)synthesizedPreliminaryJournalledNotifications
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [(_LSInstallNotificationJournaller *)self installOperation]== 8;
  v4 = [_LSInstallProgressService notificationTypeForOperation:[(_LSInstallNotificationJournaller *)self installOperation]];
  v5 = [_LSJournalledNotification alloc];
  primaryBundleID = [(_LSInstallNotificationJournaller *)self primaryBundleID];
  v11 = primaryBundleID;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  v8 = [(_LSJournalledNotification *)v5 initWithNotification:v4 bundleIDs:v7 plugins:v3 options:0];
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];

  return v9;
}

- (id)journalledNotifications
{
  if (self->_preliminary)
  {
    synthesizedPreliminaryJournalledNotifications = [(_LSInstallNotificationJournaller *)self synthesizedPreliminaryJournalledNotifications];
  }

  else
  {
    synthesizedPreliminaryJournalledNotifications = self->_journalledNotifications;
  }

  return synthesizedPreliminaryJournalledNotifications;
}

- (id)journalURL
{
  v3 = [__LSDefaultsGetSharedInstance(self a2)];
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%f.%d", self->_primaryBundleID, *&self->_timestamp, self->_operationType];
  v5 = [v3 URLByAppendingPathComponent:v4];
  v6 = [v5 URLByAppendingPathExtension:@"notejournal"];

  return v6;
}

- (void)removeJournalFile
{
  journalURL = [self journalURL];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v2, v3, OS_LOG_TYPE_FAULT, v4, v5, 0xCu);
}

- (void)_writeJournalUnconditionally
{
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_9_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)writePreliminaryJournal
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_LSInstallProgressService.m" lineNumber:2236 description:@"writing preliminary journal but more than 0 journalled notifications?"];
}

- (void)writeFinalJournal
{
  v11 = *MEMORY[0x1E69E9840];
  primaryBundleID = self->_primaryBundleID;
  v4 = _LSInstallLog(self);
  v5 = v4;
  if (primaryBundleID)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = self->_primaryBundleID;
      v9 = 138412290;
      v10 = v6;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_INFO, "writing final journal for %@", &v9, 0xCu);
    }

    self->_preliminary = 0;
    if (![(NSMutableArray *)self->_journalledNotifications count])
    {
      v7 = _LSInstallLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_primaryBundleID;
        v9 = 138412290;
        v10 = v8;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "journal for %@ had no logs but was the final journal... that's suspicious.", &v9, 0xCu);
      }
    }

    [(_LSInstallNotificationJournaller *)self _writeJournalUnconditionally];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "not writing final journal for install operation with no known bundle ID.", &v9, 2u);
    }
  }
}

- (void)setPrimaryBundleID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  dCopy = d;
  primaryBundleID = self->_primaryBundleID;
  v6 = _LSInstallLog(dCopy);
  v7 = v6;
  if (primaryBundleID)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_LSInstallNotificationJournaller setPrimaryBundleID:v7];
    }
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = dCopy;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Setting bundleID of journaller to %@", &v9, 0xCu);
    }

    v8 = [dCopy copy];
    v7 = self->_primaryBundleID;
    self->_primaryBundleID = v8;
  }
}

- (void)removeJournalAfterNotificationFence
{
  v3 = os_transaction_create();
  v4 = +[_LSInstallProgressService sharedInstance];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __71___LSInstallNotificationJournaller_removeJournalAfterNotificationFence__block_invoke;
  v6[3] = &unk_1E6A18F50;
  v6[4] = self;
  v7 = v3;
  v5 = v3;
  [v4 addSendNotificationFenceWithTimeout:v6 fenceBlock:60.0];
}

- (void)sendNotification:(int)notification forApps:(id)apps withPlugins:(BOOL)plugins options:(id)options
{
  pluginsCopy = plugins;
  v8 = *&notification;
  appsCopy = apps;
  optionsCopy = options;
  if ([objc_opt_class() shouldJournalNotificationType:v8])
  {
    v11 = [[_LSJournalledNotification alloc] initWithNotification:v8 bundleIDs:appsCopy plugins:pluginsCopy options:optionsCopy];
    [(NSMutableArray *)self->_journalledNotifications addObject:v11];
  }

  v12 = +[_LSInstallProgressService sharedInstance];
  [v12 sendNotification:v8 forApps:appsCopy withPlugins:pluginsCopy completion:0];
}

- (void)shouldExpectEntityToExist
{
  [self installOperation];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_20();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0xCu);
}

- (void)applicableForCurrentDatabase
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109376;
  v3[1] = self & 1;
  v4 = 1024;
  v5 = a2 & 1;
  _os_log_fault_impl(&dword_18162D000, log, OS_LOG_TYPE_FAULT, "Unreachable code reached. This is a bug. %d %d", v3, 0xEu);
}

@end