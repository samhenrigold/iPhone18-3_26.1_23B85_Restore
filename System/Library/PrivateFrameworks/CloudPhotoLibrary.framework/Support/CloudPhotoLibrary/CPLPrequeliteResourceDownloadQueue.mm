@interface CPLPrequeliteResourceDownloadQueue
- (BOOL)_createResourceTypeAndStatusIndex;
- (BOOL)_deleteEnqueuedResource:(id)resource error:(id *)error;
- (BOOL)_getNextPosition:(unint64_t *)position andBumpWithError:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)enqueueBackgroundDownloadTaskForResource:(id)resource intent:(unint64_t)intent downloading:(BOOL)downloading error:(id *)error;
- (BOOL)hasActiveOrQueuedBackgroundDownloadOperations;
- (BOOL)initializeStorage;
- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)suceeded taskIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)reenqueueBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier bumpRetryCount:(BOOL)count didDiscard:(BOOL *)discard error:(id *)error;
- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)removeBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier error:(id *)error;
- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteResourceDownloadQueue)initWithAbstractObject:(id)object;
- (id)_enqueuedResourceForResource:(id)resource verifyScopeIndex:(BOOL)index;
- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)type andIntent:(unint64_t)intent maximumSize:(unint64_t)size maximumCount:(unint64_t)count error:(id *)error;
- (id)enumeratorForDownloadedResources;
- (id)status;
- (id)statusPerScopeIndex;
- (unint64_t)_countOfRecordsWithStatus:(int)status;
- (unint64_t)newTaskIdentifier;
@end

@implementation CPLPrequeliteResourceDownloadQueue

- (CPLPrequeliteResourceDownloadQueue)initWithAbstractObject:(id)object
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteResourceDownloadQueue;
  v3 = [(CPLPrequeliteStorage *)&v11 initWithAbstractObject:object];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [v3 variableWithName:@"nextTaskIdentifier" type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;

    v7 = +[CPLPrequeliteType integerType];
    v8 = [v3 variableWithName:@"nextPosition" type:v7];
    v9 = *(v3 + 44);
    *(v3 + 44) = v8;
  }

  return v3;
}

- (BOOL)_createResourceTypeAndStatusIndex
{
  v3 = [(CPLPrequeliteStorage *)self createIndexWithName:@"resourceType.status" withDefinition:@"resourceType unique:status error:intent, position DESC", 0, 0];
  if (v3)
  {

    LOBYTE(v3) = [(CPLPrequeliteStorage *)self createIndexWithName:@"status" withDefinition:@"status unique:intent error:position DESC", 0, 0];
  }

  return v3;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteResourceDownloadQueue;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"position INTEGER NOT NULL error:scopeIndex INTEGER NOT NULL, itemIdentifier TEXT NOT NULL, resourceType INTEGER NOT NULL, fingerPrint TEXT NOT NULL, fileUTI TEXT, fileSize INTEGER NOT NULL, taskIdentifier INTEGER NOT NULL, retryCount INTEGER NOT NULL, status INTEGER NOT NULL, intent INTEGER NOT NULL", 0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F130 error:0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->_nextTaskIdentifier + 4) defaultValue:&off_10028F130 error:0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"resource" withDefinition:@"itemIdentifier unique:scopeIndex error:resourceType", 1, 0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteResourceDownloadQueue *)self _createResourceTypeAndStatusIndex];
            if (initializeStorage)
            {
              LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
            }
          }
        }
      }
    }
  }

  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  v15.receiver = self;
  v15.super_class = CPLPrequeliteResourceDownloadQueue;
  v5 = [(CPLPrequeliteStorage *)&v15 upgradeStorageToVersion:?];
  v6 = v5;
  if (version == 20 || !v5)
  {
    return v6;
  }

  v6 = 1;
  if (version <= 57)
  {
    if (version <= 48)
    {
      if (version != 33)
      {
        if (version == 39 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
        {
          sub_1001BFF84(self, &v16);
          return v16;
        }

        return v6;
      }

      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v11 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN fileSize INTEGER DEFAULT 0", mainTable, v14}];
LABEL_25:
      v6 = v11;

      return v6;
    }

    if (version != 49)
    {
      if (version != 52 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v6;
      }

      return [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema]|| (BYTE4(self->_nextPosition) & 1) != 0)
    {
      return v6;
    }

    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"resource" error:0]&& [(CPLPrequeliteStorage *)self createIndexWithName:@"resource" withDefinition:@"itemIdentifier unique:scopeIndex error:resourceType", 1, 0])
    {
      BYTE4(self->_nextPosition) = 1;
      return v6;
    }

    return 0;
  }

  if (version > 65)
  {
    if (version != 66)
    {
      if (version != 67 || ![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        return v6;
      }

      pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore2 pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v11 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE intent = %i", mainTable, 5}];
      goto LABEL_25;
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v6;
    }

    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"resourceType.status" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"status" error:0])
    {
      return [(CPLPrequeliteResourceDownloadQueue *)self _createResourceTypeAndStatusIndex];
    }

    return 0;
  }

  if (version == 58)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      return v6;
    }

    if ([(CPLPrequeliteStorage *)self dropIndexWithName:@"position" error:0]&& [(CPLPrequeliteStorage *)self dropIndexWithName:@"status" error:0])
    {
      return [(CPLPrequeliteStorage *)self dropIndexWithName:@"resourceType" error:0];
    }

    return 0;
  }

  if (version == 65 && [(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001BFE6C(self, &v16);
    return v16;
  }

  return v6;
}

- (BOOL)openWithError:(id *)error
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteResourceDownloadQueue;
  if (![(CPLPrequeliteStorage *)&v10 openWithError:?])
  {
    return 0;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET status = %i WHERE status = %i", mainTable, 1, 0}];

  if (error && (v8 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v8;
}

- (BOOL)_getNextPosition:(unint64_t *)position andBumpWithError:(id *)error
{
  v7 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_nextTaskIdentifier + 4)];
  *position = [v7 unsignedIntegerValue];

  v8 = [NSNumber numberWithUnsignedInteger:*position + 1];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self setValue:v8 forVariable:*(&self->_nextTaskIdentifier + 4) error:error];

  return error;
}

- (BOOL)_deleteEnqueuedResource:(id)resource error:(id *)error
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  scopeIndex = [itemScopedIdentifier scopeIndex];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C0100(a2);
  }

  v10 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [itemScopedIdentifier identifier];
  v15 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable, identifier, objc_msgSend(resourceCopy, "resourceType"), v10}];

  if (error && (v15 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v15;
}

- (id)_enqueuedResourceForResource:(id)resource verifyScopeIndex:(BOOL)index
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  v9 = itemScopedIdentifier;
  if (index)
  {
    scopeIndex = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier];
    if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    scopeIndex = [itemScopedIdentifier scopeIndex];
    if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      sub_1001C01B8(a2);
    }
  }

  v12 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v15 = objc_opt_class();
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [v9 identifier];
  v11 = [pqlConnection cplFetchObjectOfClass:v15 sql:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable, identifier, objc_msgSend(resourceCopy, "resourceType"), v12}];

LABEL_6:

  return v11;
}

- (BOOL)enqueueBackgroundDownloadTaskForResource:(id)resource intent:(unint64_t)intent downloading:(BOOL)downloading error:(id *)error
{
  downloadingCopy = downloading;
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  if ([(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:itemScopedIdentifier]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v38 = 0;
    if (![(CPLPrequeliteResourceDownloadQueue *)self _getNextPosition:&v38 andBumpWithError:error])
    {
      goto LABEL_8;
    }

    errorCopy = error;
    v13 = [[CPLPrequeliteDownloadResource alloc] initWithResource:resourceCopy];
    [(CPLPrequeliteDownloadResource *)v13 setPosition:v38];
    [(CPLPrequeliteDownloadResource *)v13 setStatus:!downloadingCopy];
    [(CPLPrequeliteDownloadResource *)v13 setIntent:intent];
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    position = [(CPLPrequeliteDownloadResource *)v13 position];
    scopeIndex = [(CPLPrequeliteDownloadResource *)v13 scopeIndex];
    itemIdentifier = [(CPLPrequeliteDownloadResource *)v13 itemIdentifier];
    resourceType = [(CPLPrequeliteDownloadResource *)v13 resourceType];
    fingerPrint = [(CPLPrequeliteDownloadResource *)v13 fingerPrint];
    fileUTI = [(CPLPrequeliteDownloadResource *)v13 fileUTI];
    v18 = pqlConnection;
    v19 = [pqlConnection cplExecute:{@"INSERT OR IGNORE INTO %@ (position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent) VALUES (%lu, %ld, %@, %i, %@, %@, %lu, %lu, %i, %i, %lu)", mainTable, position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, -[CPLPrequeliteDownloadResource fileSize](v13, "fileSize"), -[CPLPrequeliteDownloadResource taskIdentifier](v13, "taskIdentifier"), -[CPLPrequeliteDownloadResource retryCount](v13, "retryCount"), -[CPLPrequeliteDownloadResource status](v13, "status"), -[CPLPrequeliteDownloadResource intent](v13, "intent")}];

    if (v19)
    {
      if ([pqlConnection changes])
      {
        v12 = 1;
LABEL_20:

        goto LABEL_21;
      }

      v21 = [(CPLPrequeliteResourceDownloadQueue *)self _deleteEnqueuedResource:resourceCopy error:errorCopy];
      if (v21)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v22 = sub_1001645FC(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v23 = [CPLResourceTransferTaskOptions descriptionForIntent:[(CPLPrequeliteDownloadResource *)v13 intent]];
            *buf = 138412546;
            v40 = resourceCopy;
            v41 = 2112;
            v42 = v23;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "New background download will superseeds current enqueued one for %@, intent: %@", buf, 0x16u);
          }
        }

        mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
        position2 = [(CPLPrequeliteDownloadResource *)v13 position];
        scopeIndex2 = [(CPLPrequeliteDownloadResource *)v13 scopeIndex];
        itemIdentifier2 = [(CPLPrequeliteDownloadResource *)v13 itemIdentifier];
        resourceType2 = [(CPLPrequeliteDownloadResource *)v13 resourceType];
        fingerPrint2 = [(CPLPrequeliteDownloadResource *)v13 fingerPrint];
        fileUTI2 = [(CPLPrequeliteDownloadResource *)v13 fileUTI];
        v12 = [pqlConnection cplExecute:{@"INSERT INTO %@ (position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent) VALUES (%lu, %ld, %@, %i, %@, %@, %lu, %lu, %i, %i, %lu)", mainTable2, position2, scopeIndex2, itemIdentifier2, resourceType2, fingerPrint2, fileUTI2, -[CPLPrequeliteDownloadResource fileSize](v13, "fileSize"), -[CPLPrequeliteDownloadResource taskIdentifier](v13, "taskIdentifier"), -[CPLPrequeliteDownloadResource retryCount](v13, "retryCount"), -[CPLPrequeliteDownloadResource status](v13, "status"), -[CPLPrequeliteDownloadResource intent](v13, "intent")}];

        v20 = errorCopy;
        if (!errorCopy)
        {
          v18 = pqlConnection;
          goto LABEL_20;
        }

        v18 = pqlConnection;
        if (v12)
        {
          goto LABEL_20;
        }

        goto LABEL_10;
      }
    }

    else
    {
      v20 = errorCopy;
      if (errorCopy)
      {
LABEL_10:
        [v18 lastCPLError];
        *v20 = v12 = 0;
        goto LABEL_20;
      }
    }

    v12 = 0;
    goto LABEL_20;
  }

  if (!error)
  {
LABEL_8:
    v12 = 0;
    goto LABEL_21;
  }

  [CPLErrors invalidScopeErrorWithScopedIdentifier:itemScopedIdentifier];
  *error = v12 = 0;
LABEL_21:

  return v12;
}

- (BOOL)reenqueueBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier bumpRetryCount:(BOOL)count didDiscard:(BOOL *)discard error:(id *)error
{
  countCopy = count;
  resourceCopy = resource;
  v14 = [(CPLPrequeliteResourceDownloadQueue *)self _enqueuedResourceForResource:resourceCopy verifyScopeIndex:0];
  v15 = v14;
  *discard = 0;
  if (v14)
  {
    taskIdentifier = [v14 taskIdentifier];
    if (taskIdentifier == identifier)
    {
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
      scopeIndex = [itemScopedIdentifier scopeIndex];
      if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
      {
        sub_1001C0270(a2);
      }

      v21 = scopeIndex;
      if (countCopy)
      {
        retryCount = [v15 retryCount];
        if (retryCount < 10)
        {
          v31 = (retryCount + 1);
          mainTable = [(CPLPrequeliteStorage *)self mainTable];
          identifier = [itemScopedIdentifier identifier];
          v24 = -[NSObject cplExecute:](pqlConnection, "cplExecute:", @"UPDATE %@ SET retryCount = %i, status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable, v31, 2, identifier, [resourceCopy resourceType], v21);

          if (error && (v24 & 1) == 0)
          {
            [pqlConnection lastCPLError];
            *error = v24 = 0;
          }
        }

        else
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v23 = sub_1001645FC(retryCount);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = resourceCopy;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Discarding background download of %@: failed too many times", buf, 0xCu);
            }
          }

          v24 = [(CPLPrequeliteResourceDownloadQueue *)self _deleteEnqueuedResource:resourceCopy error:error];
          *discard = 1;
        }
      }

      else
      {
        pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
        pqlConnection2 = [pqStore2 pqlConnection];

        mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
        identifier2 = [itemScopedIdentifier identifier];
        v24 = [pqlConnection2 cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable2, 2, identifier2, objc_msgSend(resourceCopy, "resourceType"), v21}];

        if (error && (v24 & 1) == 0)
        {
          *error = [pqlConnection2 lastCPLError];
        }
      }

      goto LABEL_24;
    }

    if ((_CPLSilentLogging & 1) == 0)
    {
      pqlConnection = sub_1001645FC(taskIdentifier);
      if (os_log_type_enabled(pqlConnection, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v35 = resourceCopy;
        v25 = "Dropping background download of %@ as the current enqueued task superseeeds it";
        goto LABEL_17;
      }

      goto LABEL_18;
    }

LABEL_29:
    v24 = 1;
    goto LABEL_25;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_29;
  }

  pqlConnection = sub_1001645FC(0);
  if (os_log_type_enabled(pqlConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v35 = resourceCopy;
    v25 = "Dropping background download of %@ as it has been removed from the queue";
LABEL_17:
    _os_log_impl(&_mh_execute_header, pqlConnection, OS_LOG_TYPE_DEBUG, v25, buf, 0xCu);
  }

LABEL_18:
  v24 = 1;
LABEL_24:

LABEL_25:
  return v24;
}

- (BOOL)markBackgroundDownloadTaskForResourceAsSuceeded:(id)suceeded taskIdentifier:(unint64_t)identifier error:(id *)error
{
  suceededCopy = suceeded;
  itemScopedIdentifier = [suceededCopy itemScopedIdentifier];
  scopeIndex = [itemScopedIdentifier scopeIndex];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C0328(a2);
  }

  v12 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [itemScopedIdentifier identifier];
  v17 = [pqlConnection cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND taskIdentifier = %lu AND scopeIndex = %ld", mainTable, 3, identifier, objc_msgSend(suceededCopy, "resourceType"), identifier, v12}];

  if (error && (v17 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v17;
}

- (BOOL)removeBackgroundDownloadTaskForResource:(id)resource taskIdentifier:(unint64_t)identifier error:(id *)error
{
  resourceCopy = resource;
  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];
  scopeIndex = [itemScopedIdentifier scopeIndex];
  if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    sub_1001C03E0(a2);
  }

  v12 = scopeIndex;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [itemScopedIdentifier identifier];
  v17 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND resourceType = %i AND taskIdentifier = %lu AND scopeIndex = %ld", mainTable, identifier, objc_msgSend(resourceCopy, "resourceType"), identifier, v12}];

  if (error && (v17 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v17;
}

- (id)dequeueNextBackgroundDownloadTasksForResourceType:(unint64_t)type andIntent:(unint64_t)intent maximumSize:(unint64_t)size maximumCount:(unint64_t)count error:(id *)error
{
  v12 = objc_alloc_init(NSMutableArray);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v16 = mainTable;
  if (type == -1)
  {
    v17 = [pqlConnection cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i AND intent = %i ORDER BY position", mainTable, 1, intent, v35}];
  }

  else
  {
    v17 = [pqlConnection cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i AND resourceType = %i AND intent = %i ORDER BY position", mainTable, 1, type, intent}];
  }

  v18 = v17;

  if (!v18)
  {
    lastCPLError = [pqlConnection lastCPLError];
    v31 = lastCPLError;
    if (lastCPLError)
    {
      v32 = lastCPLError;
    }

    else
    {
      v32 = +[CPLErrors unknownError];
    }

    lastCPLError2 = v32;

    v12 = 0;
    if (!error)
    {
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v18 enumerateObjectsOfClass:objc_opt_class()];
  v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (v44)
  {
    v36 = a2;
    v37 = v18;
    v40 = pqlConnection;
    errorCopy = error;
    v19 = 0;
    v43 = *v46;
    while (2)
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v46 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v21 = [*(*(&v45 + 1) + 8 * i) resourceWithDownloadQueue:self];
        v22 = v21;
        if (v21)
        {
          estimatedResourceSize = [v21 estimatedResourceSize];
          v24 = estimatedResourceSize;
          if ((size <= v19 || size - v19 < estimatedResourceSize) && [v12 count])
          {
            lastCPLError2 = 0;
            error = errorCopy;
            pqlConnection = v40;
            goto LABEL_31;
          }

          itemScopedIdentifier = [v22 itemScopedIdentifier];
          if ([itemScopedIdentifier scopeIndex] == 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_1001C0498(v36);
          }

          mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
          identifier = [itemScopedIdentifier identifier];
          v28 = [v40 cplExecute:{@"UPDATE %@ SET status = %i WHERE itemIdentifier = %@ AND resourceType = %i AND scopeIndex = %ld", mainTable2, 0, identifier, objc_msgSend(v22, "resourceType"), objc_msgSend(itemScopedIdentifier, "scopeIndex"), v36}];

          if ((v28 & 1) == 0)
          {
            pqlConnection = v40;
            lastCPLError2 = [v40 lastCPLError];

            v12 = 0;
            goto LABEL_26;
          }

          [v12 addObject:v22];
          if ([v12 count] >= count)
          {
            lastCPLError2 = 0;
            pqlConnection = v40;
LABEL_26:

            error = errorCopy;
LABEL_31:
            v18 = v37;

            goto LABEL_32;
          }

          v19 += v24;
        }
      }

      v44 = [obj countByEnumeratingWithState:&v45 objects:v49 count:16];
      if (v44)
      {
        continue;
      }

      break;
    }

    lastCPLError2 = 0;
    v18 = v37;
    error = errorCopy;
    pqlConnection = v40;
  }

  else
  {
    lastCPLError2 = 0;
  }

LABEL_32:

  if (error)
  {
LABEL_33:
    if (!v12)
    {
      v33 = lastCPLError2;
      *error = lastCPLError2;
    }
  }

LABEL_35:

  return v12;
}

- (BOOL)resetDequeuedBackgroundDownloadTasksWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v8 = [pqlConnection cplExecute:{@"UPDATE OR FAIL %@ SET status = %i WHERE status = %i", mainTable, 1, 2}];

  if (error && (v8 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v8;
}

- (BOOL)removeAllBackgroundDownloadTasksForItemWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(CPLPrequeliteStorage *)self scopeIndexForLocalScopedIdentifier:identifierCopy];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (error)
    {
      [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v9 = v7;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE itemIdentifier = %@ AND scopeIndex = %ld", mainTable, identifier, v9}];

    if (error && (v8 & 1) == 0)
    {
      *error = [pqlConnection lastCPLError];
    }
  }

  return v8;
}

- (id)enumeratorForDownloadedResources
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [pqlConnection cplFetch:{@"SELECT position, scopeIndex, itemIdentifier, resourceType, fingerPrint, fileUTI, fileSize, taskIdentifier, retryCount, status, intent FROM %@ WHERE status = %i", mainTable, 3}];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10016613C;
  v10[3] = &unk_10027B218;
  v10[4] = self;
  v7 = [v6 enumerateObjects:v10];
  v8 = [[CPLPrequeliteSkipNullEnumerator alloc] initWithEnumerator:v7];

  return v8;
}

- (unint64_t)_countOfRecordsWithStatus:(int)status
{
  v3 = *&status;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [PQLFormatInjection formatInjection:@"status = %i", v3];
  v8 = [pqStore table:mainTable countOfRecordsMatchingQuery:v7];

  return v8;
}

- (BOOL)hasActiveOrQueuedBackgroundDownloadOperations
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [PQLFormatInjection formatInjection:@"status != %i", 3];
  v6 = [pqStore table:mainTable hasRecordsMatchingQuery:v5];

  return v6;
}

- (id)status
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000045B0;
  v19 = sub_1000053BC;
  v14.receiver = self;
  v14.super_class = CPLPrequeliteResourceDownloadQueue;
  status = [(CPLPrequeliteStorage *)&v14 status];
  v20 = [status mutableCopy];

  v4 = [(CPLPrequeliteResourceDownloadQueue *)self _countOfRecordsWithStatus:2];
  v5 = [(CPLPrequeliteResourceDownloadQueue *)self _countOfRecordsWithStatus:3];
  v6 = [(CPLPrequeliteResourceDownloadQueue *)self _countOfRecordsWithStatus:0];
  if (v4)
  {
    [v16[5] appendFormat:@" (%lu to retry)", v4];
  }

  if (v5)
  {
    [v16[5] appendFormat:@" (%lu downloaded)", v5];
  }

  if (v6)
  {
    [v16[5] appendFormat:@" (%lu downloading)", v6];
  }

  v12[0] = 0;
  v12[1] = v12;
  v12[2] = 0x2020000000;
  v13 = 1;
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100166560;
  v11[3] = &unk_10027BA20;
  v11[4] = v12;
  v11[5] = &v15;
  [pqStore table:mainTable enumerateCountGroupedByUnsignedIntegerProperty:@"resourceType" block:v11];

  v9 = v16[5];
  _Block_object_dispose(v12, 8);
  _Block_object_dispose(&v15, 8);

  return v9;
}

- (id)statusPerScopeIndex
{
  v4.receiver = self;
  v4.super_class = CPLPrequeliteResourceDownloadQueue;
  v2 = [(CPLPrequeliteStorage *)&v4 statusPerScopeIndexWithGroupProperty:@"resourceType" valueDescription:&stru_10027BA40];

  return v2;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v14 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld LIMIT %ld", mainTable, index, count}];

  if (v14)
  {
    *deletedCount = [pqlConnection changes];
  }

  else if (error)
  {
    *error = [pqlConnection lastError];
  }

  return v14;
}

- (unint64_t)newTaskIdentifier
{
  v3 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  unsignedIntegerValue = [v3 unsignedIntegerValue];

  v5 = [NSNumber numberWithUnsignedInteger:unsignedIntegerValue + 1];
  v6 = *(&self->super._shouldUpgradeSchema + 1);
  v12 = 0;
  v7 = [(CPLPrequeliteStorage *)self setValue:v5 forVariable:v6 error:&v12];
  v8 = v12;

  if ((v7 & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v10 = sub_1001645FC(v9);
    if (sub_1000033C0(v10))
    {
      *buf = 138412290;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to store next task identifier: %@", buf, 0xCu);
    }
  }

  return unsignedIntegerValue;
}

@end