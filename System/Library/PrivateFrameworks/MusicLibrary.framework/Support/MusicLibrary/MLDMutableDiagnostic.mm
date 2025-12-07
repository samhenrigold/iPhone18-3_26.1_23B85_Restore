@interface MLDMutableDiagnostic
- (void)setActiveClients:(id)clients;
- (void)setActiveImportOperations:(id)operations;
- (void)setActiveTransactions:(id)transactions;
- (void)setActiveXPCTransactions:(id)transactions;
- (void)setDatabaseFileDiagnostics:(id)diagnostics;
- (void)setDate:(id)date;
- (void)setEnqueuedConcurrentOperations:(id)operations;
- (void)setEnqueuedLimitedQueueOperations:(id)operations;
- (void)setEnqueuedSerialOperations:(id)operations;
- (void)setLastImportError:(id)error;
- (void)setLibraryConnectionDiagnostics:(id)diagnostics;
- (void)setLocked:(BOOL)locked;
- (void)setSuspendedImportOperations:(id)operations;
@end

@implementation MLDMutableDiagnostic

- (void)setLibraryConnectionDiagnostics:(id)diagnostics
{
  if (self->super._libraryConnectionDiagnostics != diagnostics)
  {
    self->super._libraryConnectionDiagnostics = [diagnostics copy];

    _objc_release_x1();
  }
}

- (void)setSuspendedImportOperations:(id)operations
{
  if (self->super._suspendedImportOperations != operations)
  {
    self->super._suspendedImportOperations = [operations copy];

    _objc_release_x1();
  }
}

- (void)setActiveImportOperations:(id)operations
{
  if (self->super._activeImportOperations != operations)
  {
    self->super._activeImportOperations = [operations copy];

    _objc_release_x1();
  }
}

- (void)setLastImportError:(id)error
{
  errorCopy = error;
  lastImportError = self->super._lastImportError;
  p_lastImportError = &self->super._lastImportError;
  if (lastImportError != errorCopy)
  {
    v8 = errorCopy;
    objc_storeStrong(p_lastImportError, error);
    errorCopy = v8;
  }
}

- (void)setEnqueuedLimitedQueueOperations:(id)operations
{
  if (self->super._enqueuedLimitedQueueOperations != operations)
  {
    self->super._enqueuedLimitedQueueOperations = [operations copy];

    _objc_release_x1();
  }
}

- (void)setEnqueuedSerialOperations:(id)operations
{
  if (self->super._enqueuedSerialOperations != operations)
  {
    self->super._enqueuedSerialOperations = [operations copy];

    _objc_release_x1();
  }
}

- (void)setEnqueuedConcurrentOperations:(id)operations
{
  if (self->super._enqueuedConcurrentOperations != operations)
  {
    self->super._enqueuedConcurrentOperations = [operations copy];

    _objc_release_x1();
  }
}

- (void)setActiveTransactions:(id)transactions
{
  if (self->super._activeTransactions != transactions)
  {
    self->super._activeTransactions = [transactions copy];

    _objc_release_x1();
  }
}

- (void)setDatabaseFileDiagnostics:(id)diagnostics
{
  if (self->super._databaseFileDiagnostics != diagnostics)
  {
    self->super._databaseFileDiagnostics = [diagnostics copy];

    _objc_release_x1();
  }
}

- (void)setActiveXPCTransactions:(id)transactions
{
  if (self->super._activeXPCTransactions != transactions)
  {
    self->super._activeXPCTransactions = [transactions copy];

    _objc_release_x1();
  }
}

- (void)setActiveClients:(id)clients
{
  if (self->super._activeClients != clients)
  {
    self->super._activeClients = [clients copy];

    _objc_release_x1();
  }
}

- (void)setLocked:(BOOL)locked
{
  if (self->super._locked != locked)
  {
    self->super._locked = locked;
  }
}

- (void)setDate:(id)date
{
  dateCopy = date;
  date = self->super._date;
  p_date = &self->super._date;
  if (date != dateCopy)
  {
    v8 = dateCopy;
    objc_storeStrong(p_date, date);
    dateCopy = v8;
  }
}

@end