@interface SHMediaLibraryTask
- (SHMediaLibrarySyncDelegate)delegate;
- (SHMediaLibraryTask)init;
- (void)_initWithRemoteLibrary:(id)library;
- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot;
- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers;
- (void)_libraryDidCompleteSync:(id)sync;
- (void)_libraryInfoWithCompletionHandler:(id)handler;
- (void)_libraryWillBeginSync:(id)sync;
- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler;
- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition;
@end

@implementation SHMediaLibraryTask

- (SHMediaLibraryTask)init
{
  v7.receiver = self;
  v7.super_class = SHMediaLibraryTask;
  v2 = [(SHMediaLibraryTask *)&v7 init];
  if (v2)
  {
    v3 = [SHShazamKitServiceConnection alloc];
    v4 = objc_opt_new();
    v5 = [(SHShazamKitServiceConnection *)v3 initWithConnectionProvider:v4];
    [(SHMediaLibraryTask *)v2 _initWithRemoteLibrary:v5];
  }

  return v2;
}

- (void)_initWithRemoteLibrary:(id)library
{
  libraryCopy = library;
  uUID = [MEMORY[0x277CCAD78] UUID];
  identifier = self->_identifier;
  self->_identifier = uUID;

  remoteLibrary = self->_remoteLibrary;
  self->_remoteLibrary = libraryCopy;
  v8 = libraryCopy;

  [(SHRemoteMediaLibrary *)self->_remoteLibrary setDelegate:self];
}

- (void)_synchronizeSnapshot:(id)snapshot startCondition:(id)condition
{
  conditionCopy = condition;
  snapshotCopy = snapshot;
  remoteLibrary = [(SHMediaLibraryTask *)self remoteLibrary];
  [remoteLibrary _synchronizeSnapshot:snapshotCopy startCondition:conditionCopy];
}

- (void)_libraryInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  remoteLibrary = [(SHMediaLibraryTask *)self remoteLibrary];
  [remoteLibrary _libraryInfoWithCompletionHandler:handlerCopy];
}

- (void)_queryLibraryWithParameters:(id)parameters completionHandler:(id)handler
{
  handlerCopy = handler;
  parametersCopy = parameters;
  remoteLibrary = [(SHMediaLibraryTask *)self remoteLibrary];
  [remoteLibrary _queryLibraryWithParameters:parametersCopy completionHandler:handlerCopy];
}

- (void)_libraryWillBeginSync:(id)sync
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = sh_log_object(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SHMediaLibraryTask *)self identifier];
    uUIDString = [identifier UUIDString];
    v10 = 138412290;
    v11 = uUIDString;
    _os_log_impl(&dword_230F52000, v4, OS_LOG_TYPE_DEFAULT, "Library sync task <ID:%@> will begin", &v10, 0xCu);
  }

  delegate = [(SHMediaLibraryTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SHMediaLibraryTask *)self delegate];
    [delegate2 _libraryWillBeginSync:self];
  }
}

- (void)_library:(id)_library didChangeWithSnapshot:(id)snapshot
{
  v16 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  v6 = sh_log_object(snapshotCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SHMediaLibraryTask *)self identifier];
    uUIDString = [identifier UUIDString];
    v12 = 138412546;
    v13 = uUIDString;
    v14 = 2112;
    v15 = snapshotCopy;
    _os_log_impl(&dword_230F52000, v6, OS_LOG_TYPE_DEFAULT, "Library sync task <ID:%@> produced changes %@", &v12, 0x16u);
  }

  delegate = [(SHMediaLibraryTask *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(SHMediaLibraryTask *)self delegate];
    [delegate2 _library:self didChangeWithSnapshot:snapshotCopy];
  }
}

- (void)_library:(id)_library didProduceError:(id)error failedItemIdentifiers:(id)identifiers
{
  v19 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  identifiersCopy = identifiers;
  v9 = sh_log_object(identifiersCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    identifier = [(SHMediaLibraryTask *)self identifier];
    uUIDString = [identifier UUIDString];
    v15 = 138412546;
    v16 = uUIDString;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&dword_230F52000, v9, OS_LOG_TYPE_ERROR, "Library sync task <ID:%@> produced error %@", &v15, 0x16u);
  }

  [(SHMediaLibraryTask *)self setSyncError:errorCopy];
  delegate = [(SHMediaLibraryTask *)self delegate];
  v13 = objc_opt_respondsToSelector();

  if (v13)
  {
    delegate2 = [(SHMediaLibraryTask *)self delegate];
    [delegate2 _library:self didProduceError:errorCopy failedItemIdentifiers:identifiersCopy];
  }
}

- (void)_libraryDidCompleteSync:(id)sync
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sh_log_object(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [(SHMediaLibraryTask *)self identifier];
    uUIDString = [identifier UUIDString];
    v13 = 138412290;
    v14 = uUIDString;
    _os_log_impl(&dword_230F52000, v4, OS_LOG_TYPE_DEFAULT, "Library sync task <ID:%@> execution complete", &v13, 0xCu);
  }

  delegate = [(SHMediaLibraryTask *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    delegate2 = [(SHMediaLibraryTask *)self delegate];
    [delegate2 _libraryDidCompleteSync:self];
  }

  syncCompletionBlock = [(SHMediaLibraryTask *)self syncCompletionBlock];

  if (syncCompletionBlock)
  {
    syncCompletionBlock2 = [(SHMediaLibraryTask *)self syncCompletionBlock];
    syncError = [(SHMediaLibraryTask *)self syncError];
    (syncCompletionBlock2)[2](syncCompletionBlock2, syncError);

    [(SHMediaLibraryTask *)self setSyncCompletionBlock:0];
  }
}

- (SHMediaLibrarySyncDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end