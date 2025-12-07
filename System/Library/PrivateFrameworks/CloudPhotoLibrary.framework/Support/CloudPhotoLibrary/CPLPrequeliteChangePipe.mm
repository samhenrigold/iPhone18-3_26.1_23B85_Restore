@interface CPLPrequeliteChangePipe
- (BOOL)_deleteAllChangesWithScopedIdentifier:(id)identifier error:(id *)error;
- (BOOL)_resetPushAndPullMarkersIfEmptyWithError:(id *)error;
- (BOOL)_resetPushAndPullMarkersWithError:(id *)error;
- (BOOL)_setPullMarker:(unint64_t)marker error:(id *)error;
- (BOOL)_setPushMarker:(unint64_t)marker error:(id *)error;
- (BOOL)appendChangeBatch:(id)batch error:(id *)error;
- (BOOL)compactChangeBatchesWithError:(id *)error;
- (BOOL)deleteAllChangeBatchesWithError:(id *)error;
- (BOOL)deleteAllChangesWithScopeFilter:(id)filter error:(id *)error;
- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error;
- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)identifiers;
- (BOOL)hasSomeChangeWithScopeFilter:(id)filter;
- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier;
- (BOOL)initializeStorage;
- (BOOL)popChangeBatch:(id *)batch error:(id *)error;
- (BOOL)popNextBatchWithError:(id *)error;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteChangePipe)initWithAbstractObject:(id)object;
- (id)allChangeBatches;
- (id)nextBatch;
- (id)status;
- (id)statusPerScopeIndex;
- (unint64_t)_pullMarker;
- (unint64_t)_pushMarker;
- (unint64_t)countOfQueuedBatches;
- (void)writeTransactionDidFail;
@end

@implementation CPLPrequeliteChangePipe

- (CPLPrequeliteChangePipe)initWithAbstractObject:(id)object
{
  v11.receiver = self;
  v11.super_class = CPLPrequeliteChangePipe;
  v3 = [(CPLPrequeliteStorage *)&v11 initWithAbstractObject:object];
  if (v3)
  {
    v4 = +[CPLPrequeliteType integerType];
    v5 = [v3 variableWithName:@"pullMarker" type:v4];
    v6 = *(v3 + 36);
    *(v3 + 36) = v5;

    v7 = +[CPLPrequeliteType integerType];
    v8 = [v3 variableWithName:@"pushMarker" type:v7];
    v9 = *(v3 + 44);
    *(v3 + 44) = v8;
  }

  return v3;
}

- (BOOL)initializeStorage
{
  v5.receiver = self;
  v5.super_class = CPLPrequeliteChangePipe;
  initializeStorage = [(CPLPrequeliteStorage *)&v5 initializeStorage];
  if (initializeStorage)
  {
    initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->super._shouldUpgradeSchema + 1) defaultValue:&off_10028F160 error:0];
    if (initializeStorage)
    {
      initializeStorage = [(CPLPrequeliteStorage *)self createVariable:*(&self->_pullGenerationVar + 4) defaultValue:&off_10028F160 error:0];
      if (initializeStorage)
      {
        initializeStorage = [(CPLPrequeliteStorage *)self createMainTableWithDefinition:@"library_version TEXT NOT NULL error:batch_marker INTEGER NOT NULL, scopeIndex INTEGER NOT NULL, identifier TEXT NOT NULL, serializedRecord DATA NOT NULL", 0];
        if (initializeStorage)
        {
          initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"library_version" error:0];
          if (initializeStorage)
          {
            initializeStorage = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
            if (initializeStorage)
            {
              initializeStorage = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"batch_marker" error:0];
              if (initializeStorage)
              {
                LOBYTE(initializeStorage) = [(CPLPrequeliteStorage *)self createIndexOnColumn:@"scopeIndex" error:0];
              }
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
  v8.receiver = self;
  v8.super_class = CPLPrequeliteChangePipe;
  v5 = [(CPLPrequeliteStorage *)&v8 upgradeStorageToVersion:?];
  if (!v5)
  {
    return v5;
  }

  LOBYTE(v5) = 1;
  if (version > 51)
  {
    if (version != 52)
    {
      if (version != 56)
      {
        return v5;
      }

      if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
      {
        goto LABEL_17;
      }

      v5 = [(CPLPrequeliteStorage *)self createIndexWithName:@"scopedIdentifier" withDefinition:@"identifier unique:scopeIndex" error:0, 0];
      if (v5)
      {
        LOBYTE(v5) = [(CPLPrequeliteStorage *)self dropIndexWithName:@"identifier" error:0];
      }

      return v5;
    }

    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      goto LABEL_17;
    }

    v6 = @"scopeIndex";
LABEL_16:
    LOBYTE(v5) = [(CPLPrequeliteStorage *)self createIndexOnColumn:v6 error:0];
    return v5;
  }

  if (version == 20)
  {
    if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      goto LABEL_17;
    }

    v6 = @"batch_marker";
    goto LABEL_16;
  }

  if (version == 39)
  {
    if ([(CPLPrequeliteStorage *)self shouldUpgradeSchema])
    {
      sub_1001C1D50(self, &v9);
      LOBYTE(v5) = v9;
      return v5;
    }

LABEL_17:
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (unint64_t)_pullMarker
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->super._shouldUpgradeSchema + 1)];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)_setPullMarker:(unint64_t)marker error:(id *)error
{
  v6 = [NSNumber numberWithUnsignedInteger:marker];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self setValue:v6 forVariable:*(&self->super._shouldUpgradeSchema + 1) error:error];

  return error;
}

- (unint64_t)_pushMarker
{
  v2 = [(CPLPrequeliteStorage *)self valueForVariable:*(&self->_pullGenerationVar + 4)];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (BOOL)_setPushMarker:(unint64_t)marker error:(id *)error
{
  v6 = [NSNumber numberWithUnsignedInteger:marker];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self setValue:v6 forVariable:*(&self->_pullGenerationVar + 4) error:error];

  return error;
}

- (BOOL)_resetPushAndPullMarkersWithError:(id *)error
{
  v12 = 0;
  v5 = [(CPLPrequeliteChangePipe *)self _setPushMarker:0 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v11 = v6;
    LOBYTE(v5) = [(CPLPrequeliteChangePipe *)self _setPullMarker:0 error:&v11];
    v8 = v11;

    v7 = v8;
  }

  *(&self->_logDomain + 4) = 0;
  if (error && !v5)
  {
    v9 = v7;
    *error = v7;
  }

  return v5;
}

- (BOOL)_resetPushAndPullMarkersIfEmptyWithError:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [pqStore tableHasRecords:mainTable];

  if (v7)
  {
    return 1;
  }

  return [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersWithError:error];
}

- (unint64_t)countOfQueuedBatches
{
  _pullMarker = [(CPLPrequeliteChangePipe *)self _pullMarker];
  _pushMarker = [(CPLPrequeliteChangePipe *)self _pushMarker];
  result = _pushMarker - _pullMarker;
  if (_pushMarker < _pullMarker)
  {
    sub_1001C1E98(self, _pullMarker, _pushMarker);
    return [(CPLPrequeliteChangePipe *)v6 hasQueuedBatches];
  }

  return result;
}

- (BOOL)appendChangeBatch:(id)batch error:(id *)error
{
  batchCopy = batch;
  v7 = objc_autoreleasePoolPush();
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  abstractObject = [(CPLPrequeliteChangePipe *)self abstractObject];
  engineStore = [abstractObject engineStore];
  libraryVersion = [engineStore libraryVersion];

  _pushMarker = [(CPLPrequeliteChangePipe *)self _pushMarker];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = batchCopy;
  v12 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    v28 = v7;
    errorCopy = error;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v35 != v14)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v34 + 1) + 8 * v15);
      scopedIdentifier = [v16 scopedIdentifier];
      scopeIdentifier = [scopedIdentifier scopeIdentifier];
      v19 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

      if (v19 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v20 = [CPLArchiver archivedDataWithRootObject:v16];
      if (!v20)
      {
        sub_1001C1F4C(v16, self, &v38);
        lastCPLError = v38;
LABEL_14:

LABEL_15:
        error = errorCopy;

        v24 = 0;
        v7 = v28;
        goto LABEL_16;
      }

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      identifier = [scopedIdentifier identifier];
      v23 = [pqlConnection cplExecute:{@"INSERT INTO %@ (library_version, batch_marker, scopeIndex, identifier, serializedRecord) VALUES (%@, %lu, %ld, %@, %@)", mainTable, libraryVersion, _pushMarker, v19, identifier, v20}];

      if ((v23 & 1) == 0)
      {
        lastCPLError = [pqlConnection lastCPLError];
        goto LABEL_14;
      }

      if (v13 == ++v15)
      {
        v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        v7 = v28;
        error = errorCopy;
        if (v13)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }

    lastCPLError = [CPLErrors invalidScopeErrorWithScopedIdentifier:scopedIdentifier];
    goto LABEL_15;
  }

LABEL_11:

  v33 = 0;
  v24 = [(CPLPrequeliteChangePipe *)self _setPushMarker:_pushMarker + 1 error:&v33];
  lastCPLError = v33;
LABEL_16:

  objc_autoreleasePoolPop(v7);
  if (error && !v24)
  {
    v26 = lastCPLError;
    *error = lastCPLError;
  }

  return v24;
}

- (BOOL)popChangeBatch:(id *)batch error:(id *)error
{
  _pullMarker = [(CPLPrequeliteChangePipe *)self _pullMarker];
  _pushMarker = [(CPLPrequeliteChangePipe *)self _pushMarker];
  if (_pullMarker > _pushMarker)
  {
    sub_1001C2108(self);
  }

  if (_pullMarker != _pushMarker)
  {
    v30 = a2;
    errorCopy = error;
    *batch = objc_alloc_init(CPLChangeBatch);
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v31 = _pullMarker;
    v32 = pqlConnection;
    v12 = [pqlConnection cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE batch_marker == %lu ORDER BY rowid", mainTable, _pullMarker}];

    v34 = v12;
    [v12 enumerateObjects:&stru_10027BB70];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v13 = v40 = 0u;
    v14 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v38;
      v35 = *v38;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v38 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v37 + 1) + 8 * i);
          scopedIdentifier = [v18 scopedIdentifier];
          scopeIndex = [scopedIdentifier scopeIndex];
          if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_1001C2044(v30, self);
          }

          v21 = scopeIndex;
          v22 = [(CPLPrequeliteStorage *)self isLocalScopeIndexValid:scopeIndex];
          if (v22)
          {
            [v18 setScopeIndex:0];
            [*batch addRecord:v18];
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v23 = sub_10016BF70(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              abstractObject = [(CPLPrequeliteChangePipe *)self abstractObject];
              [abstractObject name];
              v26 = v25 = v13;
              *buf = 138412802;
              v42 = v26;
              v43 = 2112;
              v44 = v18;
              v45 = 2048;
              v46 = v21;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%@ dropping %@ (scope index %ld id no longer valid)", buf, 0x20u);

              v13 = v25;
              v16 = v35;
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v37 objects:v47 count:16];
      }

      while (v15);
    }

    lastCPLError = [v32 lastCPLError];

    if (lastCPLError)
    {
      if (errorCopy)
      {
        [v32 lastCPLError];
        *errorCopy = v28 = 0;
LABEL_28:

        return v28;
      }
    }

    else if ([(CPLPrequeliteChangePipe *)self _setPullMarker:v31 + 1 error:errorCopy])
    {
      if (v31 + 1 - *(&self->_logDomain + 4) < 0x15)
      {
        v28 = 1;
      }

      else
      {
        v28 = [(CPLPrequeliteChangePipe *)self compactChangeBatchesWithError:errorCopy];
      }

      goto LABEL_28;
    }

    v28 = 0;
    goto LABEL_28;
  }

  *batch = 0;

  return [(CPLPrequeliteChangePipe *)self deleteAllChangeBatchesWithError:error];
}

- (id)nextBatch
{
  _pullMarker = [(CPLPrequeliteChangePipe *)self _pullMarker];
  _pushMarker = [(CPLPrequeliteChangePipe *)self _pushMarker];
  if (_pullMarker > _pushMarker)
  {
    sub_1001C226C(self);
  }

  if (_pullMarker >= _pushMarker)
  {
    v29 = 0;
  }

  else
  {
    v25 = a2;
    v29 = objc_alloc_init(CPLChangeBatch);
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v27 = pqlConnection;
    v9 = [pqlConnection cplFetch:{@"SELECT scopeIndex, serializedRecord FROM %@ WHERE batch_marker == %lu ORDER BY rowid", mainTable, _pullMarker}];

    v26 = v9;
    [v9 enumerateObjects:&stru_10027BB90];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v33 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      v28 = *v31;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          scopedIdentifier = [v15 scopedIdentifier];
          scopeIndex = [scopedIdentifier scopeIndex];
          if (scopeIndex == 0x7FFFFFFFFFFFFFFFLL)
          {
            sub_1001C21A8(v25, self);
          }

          v18 = scopeIndex;
          v19 = [(CPLPrequeliteStorage *)self isLocalScopeIndexValid:scopeIndex];
          if (v19)
          {
            [v15 setScopeIndex:0];
            [v29 addRecord:v15];
          }

          else if ((_CPLSilentLogging & 1) == 0)
          {
            v20 = sub_10016BF70(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              [(CPLPrequeliteChangePipe *)self abstractObject];
              v22 = v21 = v10;
              name = [v22 name];
              *buf = 138412802;
              v35 = name;
              v36 = 2112;
              v37 = v15;
              v38 = 2048;
              v39 = v18;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%@ dropping %@ (scope index %ld id no longer valid)", buf, 0x20u);

              v10 = v21;
              v13 = v28;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v40 count:16];
      }

      while (v12);
    }
  }

  return v29;
}

- (BOOL)popNextBatchWithError:(id *)error
{
  _pullMarker = [(CPLPrequeliteChangePipe *)self _pullMarker];
  if (_pullMarker >= [(CPLPrequeliteChangePipe *)self _pushMarker])
  {
    sub_1001C230C(self);
    LOBYTE(v7) = [(CPLPrequeliteChangePipe *)v8 hasSomeChangeWithScopedIdentifier:v9, v10];
  }

  else
  {
    v6 = _pullMarker + 1;
    v7 = [(CPLPrequeliteChangePipe *)self _setPullMarker:v6 error:error];
    if (v7)
    {
      if (v6 - *(&self->_logDomain + 4) < 0x15)
      {
        LOBYTE(v7) = 1;
      }

      else
      {

        LOBYTE(v7) = [(CPLPrequeliteChangePipe *)self compactChangeBatchesWithError:error];
      }
    }
  }

  return v7;
}

- (BOOL)hasSomeChangeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (-[CPLPrequeliteChangePipe hasQueuedBatches](self, "hasQueuedBatches") && ([identifierCopy scopeIdentifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = -[CPLPrequeliteStorage localScopeIndexForScopeIdentifier:](self, "localScopeIndexForScopeIdentifier:", v5), v5, v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    identifier = [identifierCopy identifier];
    v11 = [PQLFormatInjection formatInjection:@"identifier = %@ AND scopeIndex = %ld", identifier, v6];
    v7 = [pqStore table:mainTable hasRecordsMatchingQuery:v11];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)hasSomeChangeInScopesWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([(CPLPrequeliteChangePipe *)self hasQueuedBatches])
  {
    v5 = [(CPLPrequeliteStorage *)self filterForIncludedScopeIdentifiers:identifiersCopy];
    localIndexes = [v5 localIndexes];
    v7 = [localIndexes count];

    if (v7)
    {
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      localIndexesInjection = [v5 localIndexesInjection];
      v11 = [pqStore table:mainTable hasRecordsMatchingQuery:localIndexesInjection];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)hasSomeChangeWithScopeFilter:(id)filter
{
  filterCopy = filter;
  if ([(CPLPrequeliteChangePipe *)self hasQueuedBatches])
  {
    v5 = filterCopy;
    includedScopeIdentifiers = [v5 includedScopeIdentifiers];

    if (includedScopeIdentifiers)
    {
      localIndexes = [v5 localIndexes];
      v8 = [localIndexes count];

      if (!v8)
      {
        v9 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      excludedScopeIdentifiers = [v5 excludedScopeIdentifiers];

      if (excludedScopeIdentifiers)
      {
        localIndexes2 = [v5 localIndexes];
        v12 = [localIndexes2 count];

        if (!v12)
        {
          v9 = 1;
          goto LABEL_9;
        }
      }
    }

    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    localIndexesInjection = [v5 localIndexesInjection];
    v9 = [pqStore table:mainTable hasRecordsMatchingQuery:localIndexesInjection];

    goto LABEL_9;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (BOOL)deleteAllChangeBatchesWithError:(id *)error
{
  if ([(CPLPrequeliteChangePipe *)self _pushMarker]|| [(CPLPrequeliteChangePipe *)self _pullMarker])
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [pqlConnection cplExecute:{@"DELETE FROM %@", mainTable}];

    if (v8)
    {
      v9 = [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersWithError:error];
    }

    else if (error)
    {
      [pqlConnection lastCPLError];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    *(&self->_logDomain + 4) = 0;
    return 1;
  }

  return v9;
}

- (BOOL)deleteAllChangesWithScopeFilter:(id)filter error:(id *)error
{
  filterCopy = filter;
  if ([(CPLPrequeliteChangePipe *)self _pushMarker]|| [(CPLPrequeliteChangePipe *)self _pullMarker])
  {
    v7 = filterCopy;
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];

    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    localIndexesInjection = [v7 localIndexesInjection];
    v12 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE %@", mainTable, localIndexesInjection}];

    if (v12)
    {
      v13 = [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersIfEmptyWithError:error];
    }

    else if (error)
    {
      [pqlConnection lastCPLError];
      *error = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    *(&self->_logDomain + 4) = 0;
    v13 = 1;
  }

  return v13;
}

- (BOOL)compactChangeBatchesWithError:(id *)error
{
  _pullMarker = [(CPLPrequeliteChangePipe *)self _pullMarker];
  if (!_pullMarker)
  {
    return 1;
  }

  v6 = _pullMarker;
  if ([(CPLPrequeliteChangePipe *)self _pushMarker]!= _pullMarker)
  {
    if (*(&self->_logDomain + 4) < v6)
    {
      pqStore = [(CPLPrequeliteStorage *)self pqStore];
      pqlConnection = [pqStore pqlConnection];

      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v10 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE batch_marker < %lu", mainTable, v6}];

      if (error && (v10 & 1) == 0)
      {
        *error = [pqlConnection lastCPLError];
      }

      *(&self->_logDomain + 4) = v6;

      return v10;
    }

    return 1;
  }

  return [(CPLPrequeliteChangePipe *)self deleteAllChangeBatchesWithError:error];
}

- (id)allChangeBatches
{
  v26 = objc_alloc_init(NSMutableArray);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  _pullMarker = [(CPLPrequeliteChangePipe *)self _pullMarker];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [pqlConnection cplFetch:{@"SELECT batch_marker, scopeIndex, serializedRecord FROM %@ WHERE batch_marker >= %lu", mainTable, _pullMarker}];

  if ([v7 next])
  {
    v25 = pqlConnection;
    v8 = 0;
    v9 = -1;
    v10 = &_CPLSilentLogging;
    v11 = &CPLFeatureNameEPP_ptr;
    do
    {
      v12 = [v7 cplChangeAtIndex:2];
      v13 = [v7 integerAtIndex:1];
      [v12 setScopeIndex:v13];
      v14 = [v7 unsignedIntegerAtIndex:0];
      if (v14 != v9)
      {
        v15 = v14;
        if (v8)
        {
          [v26 addObject:v8];
        }

        v16 = objc_alloc_init(v11[41]);

        v9 = v15;
        v8 = v16;
      }

      v17 = [(CPLPrequeliteStorage *)self isLocalScopeIndexValid:v13];
      if (v17)
      {
        [v12 setScopeIndex:0];
        [v8 addRecord:v12];
      }

      else if ((*v10 & 1) == 0)
      {
        v18 = sub_10016BF70(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          abstractObject = [(CPLPrequeliteChangePipe *)self abstractObject];
          [abstractObject name];
          v27 = v9;
          selfCopy = self;
          v21 = v11;
          v23 = v22 = v10;
          *buf = 138412802;
          v29 = v23;
          v30 = 2112;
          v31 = v12;
          v32 = 2048;
          v33 = v13;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ dropping %@ (scope index %ld id no longer valid)", buf, 0x20u);

          v10 = v22;
          v11 = v21;
          self = selfCopy;
          v9 = v27;
        }
      }
    }

    while (([v7 next] & 1) != 0);
    if (v8)
    {
      [v26 addObject:v8];
    }

    pqlConnection = v25;
  }

  else
  {
    v8 = 0;
  }

  return v26;
}

- (void)writeTransactionDidFail
{
  v3.receiver = self;
  v3.super_class = CPLPrequeliteChangePipe;
  [(CPLPrequeliteStorage *)&v3 writeTransactionDidFail];
  *(&self->_logDomain + 4) = 0;
}

- (id)status
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore tableCountOfRecords:mainTable];

  if (v5)
  {
    _pullMarker = [(CPLPrequeliteChangePipe *)self _pullMarker];
    mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
    v8 = [PQLFormatInjection formatInjection:@"batch_marker >= %lu", _pullMarker];
    v9 = [pqStore table:mainTable2 countOfRecordsMatchingQuery:v8];

    v10 = [NSString stringWithFormat:@"%lu changes to pop (%lu batches) - %lu total changes", v9, [(CPLPrequeliteChangePipe *)self countOfQueuedBatches], v5];
  }

  else
  {
    v10 = @"0 changes";
  }

  return v10;
}

- (id)statusPerScopeIndex
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v6 = [pqlConnection cplFetch:{@"SELECT scopeIndex, count(scopeIndex) FROM %@ WHERE batch_marker >= %lu GROUP BY scopeIndex", mainTable, -[CPLPrequeliteChangePipe _pullMarker](self, "_pullMarker")}];

  v7 = objc_alloc_init(NSMutableDictionary);
  if ([v6 next])
  {
    do
    {
      v8 = [v6 integerAtIndex:0];
      v9 = [[NSString alloc] initWithFormat:@"%lu changes to pop", objc_msgSend(v6, "unsignedIntegerAtIndex:", 1)];
      v10 = [NSNumber numberWithInteger:v8];
      [v7 setObject:v9 forKeyedSubscript:v10];
    }

    while (([v6 next] & 1) != 0);
  }

  return v7;
}

- (BOOL)deleteRecordsForScopeIndex:(int64_t)index maxCount:(int64_t)count deletedCount:(int64_t *)deletedCount error:(id *)error
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  LOBYTE(count) = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE scopeIndex = %ld LIMIT %ld", mainTable, index, count}];

  if (count)
  {
    changes = [pqlConnection changes];
    *deletedCount = changes;
    if (changes)
    {
      v15 = 1;
    }

    else
    {
      v15 = [(CPLPrequeliteChangePipe *)self _resetPushAndPullMarkersIfEmptyWithError:error];
    }
  }

  else if (error)
  {
    [pqlConnection lastError];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_deleteAllChangesWithScopedIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  scopeIdentifier = [identifierCopy scopeIdentifier];
  v8 = [(CPLPrequeliteStorage *)self localScopeIndexForScopeIdentifier:scopeIdentifier];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    lastError = [CPLErrors invalidScopeErrorWithScopedIdentifier:identifierCopy];
    v10 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  identifier = [identifierCopy identifier];
  v10 = [pqlConnection cplExecute:{@"DELETE FROM %@ WHERE identifier = %@ AND scopeIndex = %ld", mainTable, identifier, v8}];

  if (v10)
  {
    lastError = 0;
  }

  else
  {
    lastError = [pqlConnection lastError];
  }

  if (error)
  {
LABEL_8:
    if ((v10 & 1) == 0)
    {
      v15 = lastError;
      *error = lastError;
    }
  }

LABEL_10:

  return v10;
}

@end