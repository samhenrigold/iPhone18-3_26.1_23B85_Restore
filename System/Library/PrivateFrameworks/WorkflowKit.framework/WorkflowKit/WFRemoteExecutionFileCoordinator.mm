@interface WFRemoteExecutionFileCoordinator
- (WFRemoteExecutionFileCoordinator)init;
- (void)handleFile:(id)file withIdentifier:(id)identifier;
- (void)registerArchiver:(id)archiver;
@end

@implementation WFRemoteExecutionFileCoordinator

- (void)registerArchiver:(id)archiver
{
  v21 = *MEMORY[0x1E69E9840];
  archiverCopy = archiver;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  transferIdentifiers = [archiverCopy transferIdentifiers];
  v6 = [transferIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(transferIdentifiers);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        waitingFiles = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
        v12 = [waitingFiles objectForKey:v10];

        if (v12)
        {
          waitingFiles2 = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
          v14 = [waitingFiles2 objectForKey:v10];
          [archiverCopy setFileURL:v14];

          [archiverCopy fileAvailabilityChanged];
          waitingFiles3 = [(WFRemoteExecutionFileCoordinator *)self waitingFiles];
          [waitingFiles3 removeObjectForKey:v10];

          goto LABEL_11;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [transferIdentifiers countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  transferIdentifiers = [(WFRemoteExecutionFileCoordinator *)self waitingArchivers];
  [transferIdentifiers addObject:archiverCopy];
LABEL_11:
}

- (void)handleFile:(id)file withIdentifier:(id)identifier
{
  v46 = *MEMORY[0x1E69E9840];
  fileCopy = file;
  identifierCopy = identifier;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  selfCopy = self;
  obj = [(WFRemoteExecutionFileCoordinator *)self waitingArchivers];
  v9 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
  if (v9)
  {
    v10 = v9;
    v30 = *v40;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v40 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v39 + 1) + 8 * i);
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        transferIdentifiers = [v12 transferIdentifiers];
        v14 = [transferIdentifiers countByEnumeratingWithState:&v35 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v36;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v36 != v16)
              {
                objc_enumerationMutation(transferIdentifiers);
              }

              if (objc_msgSend_isEqualToString_(*(*(&v35 + 1) + 8 * j)))
              {
                [v12 setFileURL:fileCopy];
                [v12 fileAvailabilityChanged];
                [v8 addObject:v12];
              }
            }

            v15 = [transferIdentifiers countByEnumeratingWithState:&v35 objects:v44 count:16];
          }

          while (v15);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v39 objects:v45 count:16];
    }

    while (v10);
  }

  if ([v8 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    waitingFiles2 = v8;
    v19 = [waitingFiles2 countByEnumeratingWithState:&v31 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (k = 0; k != v20; ++k)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(waitingFiles2);
          }

          v23 = *(*(&v31 + 1) + 8 * k);
          waitingArchivers = [(WFRemoteExecutionFileCoordinator *)selfCopy waitingArchivers];
          [waitingArchivers removeObject:v23];
        }

        v20 = [waitingFiles2 countByEnumeratingWithState:&v31 objects:v43 count:16];
      }

      while (v20);
    }

    goto LABEL_28;
  }

  waitingFiles = [(WFRemoteExecutionFileCoordinator *)selfCopy waitingFiles];
  allKeys = [waitingFiles allKeys];
  v27 = [allKeys containsObject:identifierCopy];

  if ((v27 & 1) == 0)
  {
    waitingFiles2 = [(WFRemoteExecutionFileCoordinator *)selfCopy waitingFiles];
    [waitingFiles2 setObject:fileCopy forKey:identifierCopy];
LABEL_28:
  }
}

- (WFRemoteExecutionFileCoordinator)init
{
  v9.receiver = self;
  v9.super_class = WFRemoteExecutionFileCoordinator;
  v2 = [(WFRemoteExecutionFileCoordinator *)&v9 init];
  if (v2)
  {
    v3 = objc_opt_new();
    waitingFiles = v2->_waitingFiles;
    v2->_waitingFiles = v3;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    waitingArchivers = v2->_waitingArchivers;
    v2->_waitingArchivers = weakObjectsHashTable;

    v7 = v2;
  }

  return v2;
}

@end