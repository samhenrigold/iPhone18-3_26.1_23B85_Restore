@interface TRISqliteErrorHandler
- (BOOL)handleSqliteError:(int)error error:(id)a4 onError:(id)onError db:(id)db;
- (TRISqliteErrorHandler)initWithStorageManagement:(id)management;
- (TRISqliteErrorHandler)initWithStorageManagement:(id)management defaultErrorHandler:(id)handler;
@end

@implementation TRISqliteErrorHandler

- (TRISqliteErrorHandler)initWithStorageManagement:(id)management
{
  managementCopy = management;
  v5 = objc_opt_new();
  v6 = [(TRISqliteErrorHandler *)self initWithStorageManagement:managementCopy defaultErrorHandler:v5];

  return v6;
}

- (TRISqliteErrorHandler)initWithStorageManagement:(id)management defaultErrorHandler:(id)handler
{
  managementCopy = management;
  handlerCopy = handler;
  v14.receiver = self;
  v14.super_class = TRISqliteErrorHandler;
  v9 = [(TRISqliteErrorHandler *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_defaultErrorHandler, handler);
    objc_storeStrong(&v10->_storageManagement, management);
    if (!v10->_storageManagement)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 0;
        _os_log_debug_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEBUG, "Initiating TRISqliteErrorHandler with no storage management.", v13, 2u);
      }
    }
  }

  return v10;
}

- (BOOL)handleSqliteError:(int)error error:(id)a4 onError:(id)onError db:(id)db
{
  v8 = *&error;
  v24 = *MEMORY[0x277D85DE8];
  v10 = a4;
  onErrorCopy = onError;
  dbCopy = db;
  if (v8 == 19)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      localizedDescription = [v10 localizedDescription];
      LODWORD(v23[0]) = 138412290;
      *(v23 + 4) = localizedDescription;
      _os_log_fault_impl(&dword_26F567000, v13, OS_LOG_TYPE_FAULT, "Encountered SQLITE_CONSTRAINT error.\n error description: %@", v23, 0xCu);
LABEL_18:

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if (v8 != 11)
  {
    if (v8 == 8)
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        LODWORD(v23[0]) = 138412290;
        *(v23 + 4) = localizedDescription;
        v15 = "Encountered SQLITE_READONLY error.\n error description: %@";
LABEL_16:
        v18 = v13;
        v19 = 12;
        goto LABEL_17;
      }
    }

    else
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v10 localizedDescription];
        LODWORD(v23[0]) = 67109378;
        HIDWORD(v23[0]) = v8;
        LOWORD(v23[1]) = 2112;
        *(&v23[1] + 2) = localizedDescription;
        v15 = "Encountered sqlite error: %d\n error description: %@";
        v18 = v13;
        v19 = 18;
LABEL_17:
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, v15, v23, v19);
        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  storageManagement = self->_storageManagement;
  v13 = TRILogCategory_Server();
  v17 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
  if (!storageManagement)
  {
    if (v17)
    {
      localizedDescription = [v10 localizedDescription];
      LODWORD(v23[0]) = 138412290;
      *(v23 + 4) = localizedDescription;
      v15 = "Encountered SQLITE_CORRUPT error. Unable to request trial storage reset due to no storage management.\n error description: %@";
      goto LABEL_16;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (v17)
  {
    localizedDescription2 = [v10 localizedDescription];
    LODWORD(v23[0]) = 138412290;
    *(v23 + 4) = localizedDescription2;
    _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Encountered SQLITE_CORRUPT error. Requesting trial storage reset on next launch.\n error description: %@", v23, 0xCu);
  }

  [(TRIStorageManagementProtocol *)self->_storageManagement requestTrialStorageResetOnNextLaunch];
LABEL_20:
  v20 = [(_PASSqliteErrorHandlerProtocol *)self->_defaultErrorHandler handleSqliteError:v8 error:v10 onError:onErrorCopy db:dbCopy, v23[0], v23[1], v23[2], v24];

  return v20;
}

@end