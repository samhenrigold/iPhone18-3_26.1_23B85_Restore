@interface CPLPrequeliteStorage
- (BOOL)_checkSuperWasCalled;
- (BOOL)addColumnVariable:(id)variable error:(id *)error;
- (BOOL)addColumnVariableGroup:(id)group error:(id *)error;
- (BOOL)createIndex:(id)index withDefinition:(id)definition condition:(id)condition unique:(BOOL)unique error:(id *)error;
- (BOOL)createIndexOnColumn:(id)column error:(id *)error;
- (BOOL)createIndexOnColumnVariable:(id)variable error:(id *)error;
- (BOOL)createIndexWithName:(id)name withDefinition:(id)definition condition:(id)condition unique:(BOOL)unique error:(id *)error;
- (BOOL)createIndexWithName:(id)name withDefinition:(id)definition unique:(BOOL)unique error:(id *)error;
- (BOOL)createMainTableWithColumnVariables:(id)variables error:(id *)error;
- (BOOL)createMainTableWithDefinition:(id)definition error:(id *)error;
- (BOOL)createStorage;
- (BOOL)createVariable:(id)variable defaultValue:(id)value error:(id *)error;
- (BOOL)dropIndexWithName:(id)name error:(id *)error;
- (BOOL)initializeStorage;
- (BOOL)isAlive;
- (BOOL)isCloudScopeIndexValid:(int64_t)valid;
- (BOOL)isEmpty;
- (BOOL)isLocalScopeIndexValid:(int64_t)valid;
- (BOOL)recreateMainTableWithCopyInstructions:(id)instructions oldFields:(id)fields error:(id *)error;
- (BOOL)resetValueForVariable:(id)variable error:(id *)error;
- (BOOL)setValue:(id)value forVariable:(id)variable error:(id *)error;
- (BOOL)shouldIncludeInStatus;
- (BOOL)upgradeStorageToVersion:(int64_t)version;
- (CPLPrequeliteStorage)initWithAbstractObject:(id)object;
- (NSString)mainScopeIdentifier;
- (id)_scopes;
- (id)_statusPerScopeIndex;
- (id)engineLibrary;
- (id)filterForExcludedScopeIdentifiers:(id)identifiers;
- (id)filterForIncludedScopeIdentifiers:(id)identifiers;
- (id)pqStore;
- (id)scopeIdentifierForCloudScopeIndex:(int64_t)index;
- (id)scopeIndexes;
- (id)scopedIdentifierForCloudIdentifier:(id)identifier scopeIndex:(int64_t)index;
- (id)scopedIdentifierForLocalIdentifier:(id)identifier scopeIndex:(int64_t)index;
- (id)status;
- (id)statusDictionary;
- (id)statusPerScopeIndexWithGroupProperty:(id)property valueDescription:(id)description;
- (id)valueForVariable:(id)variable;
- (id)variableWithName:(id)name defaultValue:(id)value type:(id)type;
- (int64_t)cloudScopeIndexForScopeIdentifier:(id)identifier;
- (int64_t)localScopeIndexForScopeIdentifier:(id)identifier;
- (int64_t)scopeIndexForCloudScopedIdentifier:(id)identifier;
- (int64_t)scopeIndexForLocalScopedIdentifier:(id)identifier;
- (int64_t)stableScopeIndexForScopeIdentifier:(id)identifier;
- (void)_afterInitializeStorage;
@end

@implementation CPLPrequeliteStorage

- (id)pqStore
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  engineStore = [abstractObject engineStore];
  platformObject = [engineStore platformObject];

  return platformObject;
}

- (id)_scopes
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  abstractObject = [pqStore abstractObject];
  scopes = [abstractObject scopes];

  return scopes;
}

- (CPLPrequeliteStorage)initWithAbstractObject:(id)object
{
  v10.receiver = self;
  v10.super_class = CPLPrequeliteStorage;
  v3 = [(CPLPrequeliteStorage *)&v10 initWithAbstractObject:object];
  v4 = v3;
  if (v3)
  {
    abstractObject = [(CPLPrequeliteStorage *)v3 abstractObject];
    name = [abstractObject name];

    v7 = [CPLPrequeliteTable tableWithName:name];
    mainTable = v4->_mainTable;
    v4->_mainTable = v7;

    objc_storeStrong(&v4->_nameTable, v4->_mainTable);
    v4->_shouldUpgradeSchema = 1;
  }

  return v4;
}

- (NSString)mainScopeIdentifier
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  mainScopeIdentifier = [abstractObject mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (id)engineLibrary
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  engineStore = [abstractObject engineStore];
  engineLibrary = [engineStore engineLibrary];

  return engineLibrary;
}

- (void)_afterInitializeStorage
{
  if (!self->_initializeSuperWasCalled)
  {
    sub_1001B880C(a2, self);
  }

  self->_initializingStorage = 0;
  self->_initializeSuperWasCalled = 0;
}

- (BOOL)initializeStorage
{
  if (self->_initializingStorage)
  {
    sub_1001B8A38(_CPLSilentLogging, self);
    return 1;
  }

  else
  {
    v3 = sub_1001B8924(_CPLSilentLogging, self, a2);
    return [(CPLPrequeliteStorage *)v3 fixStorageAfterAnyVersionChange];
  }
}

- (BOOL)addColumnVariable:(id)variable error:(id *)error
{
  variableCopy = variable;
  if (self->_initializingStorage)
  {
    sub_1001B8C0C(self, a2, variableCopy);
  }

  shouldUpgradeSchema = [(CPLPrequeliteStorage *)self shouldUpgradeSchema];
  if ((shouldUpgradeSchema & 1) == 0)
  {
    sub_1001B8B28(self, a2, variableCopy);
  }

  if (self->_initializingStorage)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v9 = sub_10014C718(shouldUpgradeSchema);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v10 = "temporary ";
        mainTable = self->_mainTable;
        if (!self->_tempTable)
        {
          v10 = "";
        }

        *buf = 138412802;
        v24 = variableCopy;
        v25 = 2080;
        v26 = v10;
        v27 = 2112;
        v28 = mainTable;
        v12 = "Creating column %@ on %s%@";
        v13 = v9;
        v14 = OS_LOG_TYPE_DEBUG;
        v15 = 32;
        goto LABEL_12;
      }

      goto LABEL_13;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v9 = sub_10014C718(shouldUpgradeSchema);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = self->_mainTable;
      *buf = 138412546;
      v24 = variableCopy;
      v25 = 2112;
      v26 = v16;
      v12 = "Adding column %@ on %@";
      v13 = v9;
      v14 = OS_LOG_TYPE_DEFAULT;
      v15 = 22;
LABEL_12:
      _os_log_impl(&_mh_execute_header, v13, v14, v12, buf, v15);
    }

LABEL_13:
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  columnDefinition = [variableCopy columnDefinition];
  v21 = [pqlConnection cplExecute:{@"ALTER TABLE %@ ADD COLUMN %@", mainTable, columnDefinition}];

  if (error && (v21 & 1) == 0)
  {
    *error = [pqlConnection lastCPLError];
  }

  return v21;
}

- (BOOL)addColumnVariableGroup:(id)group error:(id *)error
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  variables = [group variables];
  v7 = [variables countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(variables);
        }

        if (![(CPLPrequeliteStorage *)self addColumnVariable:*(*(&v13 + 1) + 8 * i) error:error])
        {
          v11 = 0;
          goto LABEL_11;
        }
      }

      v8 = [variables countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v11 = 1;
LABEL_11:

  return v11;
}

- (BOOL)createIndex:(id)index withDefinition:(id)definition condition:(id)condition unique:(BOOL)unique error:(id *)error
{
  uniqueCopy = unique;
  indexCopy = index;
  definitionCopy = definition;
  conditionCopy = condition;
  v16 = conditionCopy;
  if (self->_initializingStorage)
  {
    goto LABEL_4;
  }

  conditionCopy = [(CPLPrequeliteStorage *)self shouldUpgradeSchema];
  if (!conditionCopy)
  {
    sub_1001B8CF0(self, a2, indexCopy);
  }

  if (self->_initializingStorage)
  {
LABEL_4:
    if (_CPLSilentLogging)
    {
      goto LABEL_14;
    }

    v17 = sub_10014C718(conditionCopy);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v18 = "temporary ";
    mainTable = self->_mainTable;
    if (!self->_tempTable)
    {
      v18 = "";
    }

    *buf = 138412802;
    *&buf[4] = indexCopy;
    *&buf[12] = 2080;
    *&buf[14] = v18;
    *&buf[22] = 2112;
    v36 = mainTable;
    v20 = "Creating index %@ on %s%@";
    v21 = v17;
    v22 = OS_LOG_TYPE_DEBUG;
    v23 = 32;
    goto LABEL_12;
  }

  if (_CPLSilentLogging)
  {
    goto LABEL_14;
  }

  v17 = sub_10014C718(conditionCopy);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v24 = self->_mainTable;
    *buf = 138412546;
    *&buf[4] = indexCopy;
    *&buf[12] = 2112;
    *&buf[14] = v24;
    v20 = "Adding index %@ on %@";
    v21 = v17;
    v22 = OS_LOG_TYPE_DEFAULT;
    v23 = 22;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v21, v22, v20, buf, v23);
  }

LABEL_13:

LABEL_14:
  v25 = [CPLPrequeliteVariable indexVariableForVariableWithName:indexCopy forTable:self->_nameTable];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];
  v28 = pqlConnection;
  if (!uniqueCopy)
  {
    if (!v16)
    {
      v29 = [pqlConnection cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@)", v25, self->_mainTable, definitionCopy, v34, *buf, *&buf[8], v36}];
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  if (v16)
  {
LABEL_18:
    v29 = [pqlConnection cplExecute:{@"CREATE INDEX IF NOT EXISTS %@ ON %@ (%@) WHERE %@", v25, self->_mainTable, definitionCopy, v16, *buf, *&buf[8], v36}];
    goto LABEL_20;
  }

  v29 = [pqlConnection cplExecute:{@"CREATE UNIQUE INDEX IF NOT EXISTS %@ ON %@ (%@)", v25, self->_mainTable, definitionCopy, v34, *buf, *&buf[8], v36}];
LABEL_20:
  v30 = v29;

  if (error && !v30)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection2 = [pqStore2 pqlConnection];
    *error = [pqlConnection2 lastCPLError];
  }

  return v30;
}

- (BOOL)createIndexOnColumnVariable:(id)variable error:(id *)error
{
  variableCopy = variable;
  variableName = [variableCopy variableName];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self createIndex:variableName withDefinition:variableCopy condition:0 unique:0 error:error];

  return error;
}

- (BOOL)createIndexWithName:(id)name withDefinition:(id)definition unique:(BOOL)unique error:(id *)error
{
  uniqueCopy = unique;
  definitionCopy = definition;
  nameCopy = name;
  v12 = [PQLRawInjection alloc];
  v13 = [definitionCopy dataUsingEncoding:4];

  v14 = [v12 initWithData:v13];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self createIndex:nameCopy withDefinition:v14 condition:0 unique:uniqueCopy error:error];

  return error;
}

- (BOOL)createIndexWithName:(id)name withDefinition:(id)definition condition:(id)condition unique:(BOOL)unique error:(id *)error
{
  uniqueCopy = unique;
  conditionCopy = condition;
  definitionCopy = definition;
  nameCopy = name;
  v15 = [PQLRawInjection alloc];
  v16 = [definitionCopy dataUsingEncoding:4];

  v17 = [v15 initWithData:v16];
  v18 = [PQLRawInjection alloc];
  v19 = [conditionCopy dataUsingEncoding:4];

  v20 = [v18 initWithData:v19];
  LOBYTE(error) = [(CPLPrequeliteStorage *)self createIndex:nameCopy withDefinition:v17 condition:v20 unique:uniqueCopy error:error];

  return error;
}

- (BOOL)createIndexOnColumn:(id)column error:(id *)error
{
  v6 = [(CPLPrequeliteStorage *)self createIndexWithName:column withDefinition:column unique:0 error:error];
  v7 = v6;
  if (error && (v6 & 1) == 0)
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore pqlConnection];
    *error = [pqlConnection lastCPLError];
  }

  return v7;
}

- (id)variableWithName:(id)name defaultValue:(id)value type:(id)type
{
  nameCopy = name;
  valueCopy = value;
  typeCopy = type;
  if (self->_tempTable)
  {
    sub_1001B8DD4(self, a2, nameCopy);
  }

  v12 = typeCopy;
  v13 = [CPLPrequeliteVariable variableWithName:nameCopy forTable:self->_mainTable type:typeCopy];

  return v13;
}

- (BOOL)createVariable:(id)variable defaultValue:(id)value error:(id *)error
{
  variableCopy = variable;
  valueCopy = value;
  if (self->_tempTable)
  {
    v11 = 1;
    goto LABEL_18;
  }

  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B8EB8(a2, self, variableCopy);
  }

  if (self->_initializingStorage)
  {
    goto LABEL_7;
  }

  shouldUpgradeSchema = [(CPLPrequeliteStorage *)self shouldUpgradeSchema];
  if (!shouldUpgradeSchema)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v23 = sub_10014C718(shouldUpgradeSchema);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = self->_mainTable;
        *buf = 138412546;
        v28 = variableCopy;
        v29 = 2112;
        v30 = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Trying to create variable %@ for %@ but the table has just been created", buf, 0x16u);
      }
    }

    v25 = +[NSAssertionHandler currentHandler];
    v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Implementations/PrequeliteStore/CPLPrequeliteStorage.m"];
    [v25 handleFailureInMethod:a2 object:self file:v26 lineNumber:240 description:{@"Trying to create variable %@ for %@ but the table has just been created", variableCopy, self->_mainTable}];

    abort();
  }

  if (self->_initializingStorage)
  {
LABEL_7:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v15 = sub_10014C718(shouldUpgradeSchema);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v28 = variableCopy;
        v29 = 2112;
        v30 = valueCopy;
        v16 = "Creating variable %@ with default value %@";
        v17 = v15;
        v18 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v17, v18, v16, buf, 0x16u);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else if ((_CPLSilentLogging & 1) == 0)
  {
    v15 = sub_10014C718(shouldUpgradeSchema);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = variableCopy;
      v29 = 2112;
      v30 = valueCopy;
      v16 = "Adding variable %@ with default value %@";
      v17 = v15;
      v18 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_13;
    }

LABEL_14:
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [pqStore addGlobalVariable:variableCopy defaultValue:valueCopy error:error];

  if (error && (v11 & 1) == 0)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection = [pqStore2 pqlConnection];
    *error = [pqlConnection lastCPLError];

    v11 = 0;
  }

LABEL_18:

  return v11;
}

- (BOOL)setValue:(id)value forVariable:(id)variable error:(id *)error
{
  valueCopy = value;
  variableCopy = variable;
  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B8F88(a2, self, variableCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v14 = [pqStore setValue:valueCopy forGlobalVariable:variableCopy error:error];

  return v14;
}

- (id)valueForVariable:(id)variable
{
  variableCopy = variable;
  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B9058(a2, self, variableCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v9 = [pqStore valueForGlobalVariable:variableCopy];

  return v9;
}

- (BOOL)resetValueForVariable:(id)variable error:(id *)error
{
  variableCopy = variable;
  table = [variableCopy table];
  mainTable = self->_mainTable;

  if (table != mainTable)
  {
    sub_1001B9128(a2, self, variableCopy);
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  v11 = [pqStore resetValueForGlobalVariable:variableCopy error:error];

  return v11;
}

- (BOOL)isEmpty
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  if (![abstractObject shouldBeCreatedDynamically])
  {

    goto LABEL_5;
  }

  isAlive = [(CPLPrequeliteStorage *)self isAlive];

  if (isAlive)
  {
LABEL_5:
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v5 = [pqStore tableHasRecords:mainTable] ^ 1;

    return v5;
  }

  LOBYTE(v5) = 1;
  return v5;
}

- (BOOL)isAlive
{
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v5 = [pqStore hasTable:mainTable];

  return v5;
}

- (BOOL)shouldIncludeInStatus
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  shouldBeCreatedDynamically = [abstractObject shouldBeCreatedDynamically];

  if (!shouldBeCreatedDynamically)
  {
    return 1;
  }

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v7 = [pqStore hasTable:mainTable];

  return v7;
}

- (id)status
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  if ([abstractObject shouldBeCreatedDynamically])
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [pqStore hasTable:mainTable];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
  mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqStore2 tableCountOfRecords:mainTable2];

  recordsDesignation = [(CPLPrequeliteStorage *)self recordsDesignation];
  v7 = [NSString stringWithFormat:@"%lu %@", v10, recordsDesignation];

LABEL_6:

  return v7;
}

- (id)statusDictionary
{
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  if ([abstractObject shouldBeCreatedDynamically])
  {
    pqStore = [(CPLPrequeliteStorage *)self pqStore];
    mainTable = [(CPLPrequeliteStorage *)self mainTable];
    v6 = [pqStore hasTable:mainTable];

    if (!v6)
    {
      v7 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
  mainTable2 = [(CPLPrequeliteStorage *)self mainTable];
  v10 = [pqStore2 tableCountOfRecords:mainTable2];

  v13 = @"records";
  v11 = [NSNumber numberWithUnsignedInteger:v10];
  v14 = v11;
  v7 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

LABEL_6:

  return v7;
}

- (id)_statusPerScopeIndex
{
  v3 = objc_alloc_init(NSMutableDictionary);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndexColumnName = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10014DC10;
  v11[3] = &unk_10027B348;
  v11[4] = self;
  v7 = v3;
  v12 = v7;
  [pqStore table:mainTable enumerateCountGroupedByProperty:scopeIndexColumnName block:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (id)scopeIndexes
{
  v3 = objc_alloc_init(NSMutableIndexSet);
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  scopeIndexColumnName = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10014DE08;
  v10[3] = &unk_10027B370;
  v11 = v3;
  v7 = v3;
  [pqStore table:mainTable enumerateDistinctValuesOfProperty:scopeIndexColumnName block:v10];

  v8 = [v7 copy];

  return v8;
}

- (id)statusPerScopeIndexWithGroupProperty:(id)property valueDescription:(id)description
{
  propertyCopy = property;
  descriptionCopy = description;
  _statusPerScopeIndex = [(CPLPrequeliteStorage *)self _statusPerScopeIndex];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  scopeIndexColumnName = [(CPLPrequeliteStorage *)self scopeIndexColumnName];
  v12 = [PQLNameInjection nameWithString:scopeIndexColumnName];

  v13 = [PQLNameInjection nameWithString:propertyCopy];
  mainTable = [(CPLPrequeliteStorage *)self mainTable];
  v23 = v13;
  v24 = v12;
  v15 = [pqlConnection cplFetch:{@"SELECT %@, %@, count(%@) FROM %@ GROUP BY scopeIndex, %@", v12, v13, v13, mainTable, v13}];

  if ([v15 next])
  {
    do
    {
      v16 = [v15 integerAtIndex:0];
      v17 = [v15 objectAtIndex:1];
      v18 = [v15 unsignedIntegerAtIndex:2];
      if (v17)
      {
        v19 = descriptionCopy[2](descriptionCopy, v17);
      }

      else
      {
        v19 = @"(nil)";
      }

      v20 = [NSNumber numberWithInteger:v16];
      v21 = [_statusPerScopeIndex objectForKeyedSubscript:v20];

      [v21 appendFormat:@"\n\t%@: %lu", v19, v18];
    }

    while (([v15 next] & 1) != 0);
  }

  return _statusPerScopeIndex;
}

- (BOOL)_checkSuperWasCalled
{
  superWasCalled = self->_superWasCalled;
  self->_superWasCalled = 0;
  return superWasCalled;
}

- (int64_t)scopeIndexForLocalScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes scopedIdentifierForLocalScopedIdentifier:identifierCopy];

  if (v6)
  {
    scopeIndex = [v6 scopeIndex];
  }

  else
  {
    scopeIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return scopeIndex;
}

- (int64_t)scopeIndexForCloudScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes scopedIdentifierForCloudScopedIdentifier:identifierCopy];

  if (v6)
  {
    scopeIndex = [v6 scopeIndex];
  }

  else
  {
    scopeIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return scopeIndex;
}

- (int64_t)localScopeIndexForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes indexForLocalScopeIdentifier:identifierCopy];

  return v6;
}

- (int64_t)cloudScopeIndexForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes indexForCloudScopeIdentifier:identifierCopy];

  return v6;
}

- (int64_t)stableScopeIndexForScopeIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes stableScopeIndexForScopeIdentifier:identifierCopy];

  return v6;
}

- (id)filterForIncludedScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes filterForIncludedScopeIdentifiers:identifiersCopy];

  return v6;
}

- (id)filterForExcludedScopeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v6 = [_scopes filterForExcludedScopeIdentifiers:identifiersCopy];

  return v6;
}

- (id)scopedIdentifierForLocalIdentifier:(id)identifier scopeIndex:(int64_t)index
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v8 = [_scopes scopeIdentifierForLocalScopeIndex:index];

  if (v8)
  {
    v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v8 identifier:identifierCopy];
    [v9 setScopeIndex:index];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scopedIdentifierForCloudIdentifier:(id)identifier scopeIndex:(int64_t)index
{
  identifierCopy = identifier;
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v8 = [_scopes scopeIdentifierForCloudScopeIndex:index];

  if (v8)
  {
    v9 = [[CPLScopedIdentifier alloc] initWithScopeIdentifier:v8 identifier:identifierCopy];
    [v9 setScopeIndex:index];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)scopeIdentifierForCloudScopeIndex:(int64_t)index
{
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  v5 = [_scopes scopeIdentifierForCloudScopeIndex:index];

  return v5;
}

- (BOOL)isLocalScopeIndexValid:(int64_t)valid
{
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  validLocalScopeIndexes = [_scopes validLocalScopeIndexes];
  LOBYTE(valid) = [validLocalScopeIndexes containsIndex:valid];

  return valid;
}

- (BOOL)isCloudScopeIndexValid:(int64_t)valid
{
  _scopes = [(CPLPrequeliteStorage *)self _scopes];
  validCloudScopeIndexes = [_scopes validCloudScopeIndexes];
  LOBYTE(valid) = [validCloudScopeIndexes containsIndex:valid];

  return valid;
}

- (BOOL)recreateMainTableWithCopyInstructions:(id)instructions oldFields:(id)fields error:(id *)error
{
  instructionsCopy = instructions;
  fieldsCopy = fields;
  if (self->_tempTable)
  {
    sub_1001B91F8(self, a2);
  }

  v11 = fieldsCopy;
  if (![(CPLPrequeliteStorage *)self shouldUpgradeSchema])
  {
    sub_1001B92DC(self, a2);
  }

  errorCopy = error;
  abstractObject = [(CPLPrequeliteStorage *)self abstractObject];
  name = [abstractObject name];
  v14 = [name stringByAppendingString:@"_temp"];

  v15 = [CPLPrequeliteTable tableWithName:v14];
  tempTable = self->_tempTable;
  self->_tempTable = v15;

  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];

  v19 = [pqlConnection cplExecute:{@"DROP TABLE IF EXISTS %@", self->_tempTable}];
  if (!v19)
  {
    goto LABEL_31;
  }

  v56 = v11;
  tableName = [(CPLPrequeliteTable *)self->_mainTable tableName];
  v21 = [tableName stringByAppendingString:@"."];

  v22 = objc_alloc_init(NSMutableArray);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  selfCopy = self;
  v23 = [pqlConnection cplFetch:{@"SELECT name FROM sqlite_master WHERE type = index AND tbl_name = %@", self->_mainTable}];
  v24 = [v23 enumerateObjectsOfClass:objc_opt_class()];

  v25 = [v24 countByEnumeratingWithState:&v63 objects:v76 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v64;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v64 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v63 + 1) + 8 * i);
        if ([v29 hasPrefix:v21])
        {
          [v22 addObject:v29];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v63 objects:v76 count:16];
    }

    while (v26);
  }

  v55 = v14;

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v30 = v22;
  v31 = [v30 countByEnumeratingWithState:&v59 objects:v75 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v60;
    while (2)
    {
      for (j = 0; j != v32; j = j + 1)
      {
        if (*v60 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [PQLNameInjection nameWithString:*(*(&v59 + 1) + 8 * j)];
        v36 = [pqlConnection cplExecute:{@"DROP INDEX %@", v35}];

        if ((v36 & 1) == 0)
        {

          self = selfCopy;
          v14 = v55;
          v11 = v56;
          goto LABEL_31;
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v59 objects:v75 count:16];
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  self = selfCopy;
  v37 = selfCopy->_mainTable;
  objc_storeStrong(&self->_mainTable, self->_tempTable);
  createStorage = [(CPLPrequeliteStorage *)selfCopy createStorage];
  mainTable = selfCopy->_mainTable;
  selfCopy->_mainTable = v37;

  v14 = v55;
  v11 = v56;
  if (createStorage && (v40 = [instructionsCopy UTF8String], +[PQLRawInjection rawInjection:length:](PQLRawInjection, "rawInjection:length:", v40, strlen(v40)), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v56, "UTF8String"), +[PQLRawInjection rawInjection:length:](PQLRawInjection, "rawInjection:length:", v42, strlen(v42)), v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(pqlConnection, "cplExecute:", @"INSERT INTO %@ (%@) SELECT %@ FROM %@", selfCopy->_tempTable, v41, v43, selfCopy->_mainTable), v54 = objc_msgSend(pqlConnection, "changes"), v43, v41, v44) && (v19 = objc_msgSend(pqlConnection, "cplExecute:", @"DROP TABLE %@", selfCopy->_mainTable), v19) && (v19 = objc_msgSend(pqlConnection, "cplExecute:", @"ALTER TABLE %@ RENAME TO %@", selfCopy->_tempTable, selfCopy->_mainTable), (v19 & 1) != 0))
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v45 = sub_10014C718(v19);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = selfCopy->_mainTable;
        *buf = 138413058;
        v68 = v46;
        v69 = 2112;
        v70 = v56;
        v71 = 2112;
        v72 = instructionsCopy;
        v73 = 2048;
        v74 = v54;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "successfully recreated %@ using copy %@ -> %@ (%lld records copied)", buf, 0x2Au);
      }
    }

    pqStore2 = [(CPLPrequeliteStorage *)selfCopy pqStore];
    [pqStore2 recordUpgradeEvent:{@"successfully recreated %@ using copy %@ -> %@ (%lld records copied)", selfCopy->_mainTable, v56, instructionsCopy, v54}];

    v48 = 1;
  }

  else
  {
LABEL_31:
    if ((_CPLSilentLogging & 1) == 0)
    {
      v49 = sub_10014C718(v19);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = self->_mainTable;
        lastError = [pqlConnection lastError];
        *buf = 138413058;
        v68 = v50;
        v69 = 2112;
        v70 = v11;
        v71 = 2112;
        v72 = instructionsCopy;
        v73 = 2112;
        v74 = lastError;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Failed to recreate %@ using copy %@ -> %@: %@", buf, 0x2Au);
      }
    }

    if (errorCopy)
    {
      [pqlConnection lastError];
      *errorCopy = v48 = 0;
    }

    else
    {
      v48 = 0;
    }
  }

  v52 = self->_tempTable;
  self->_tempTable = 0;

  return v48;
}

- (BOOL)createStorage
{
  isAlive = [(CPLPrequeliteStorage *)self isAlive];
  if ((isAlive & 1) == 0 && (_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014C718(isAlive);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      mainTable = [(CPLPrequeliteStorage *)self mainTable];
      v8 = 138412290;
      v9 = mainTable;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating storage for %@", &v8, 0xCu);
    }
  }

  [(CPLPrequeliteStorage *)self _beforeInitializeStorage];
  initializeStorage = [(CPLPrequeliteStorage *)self initializeStorage];
  [(CPLPrequeliteStorage *)self _afterInitializeStorage];
  return initializeStorage;
}

- (BOOL)upgradeStorageToVersion:(int64_t)version
{
  if ((_CPLSilentLogging & 1) == 0)
  {
    v4 = sub_10014C718(self);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = 134217984;
      versionCopy = version;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "Upgrading to %lld", &v6, 0xCu);
    }
  }

  return 1;
}

- (BOOL)createMainTableWithColumnVariables:(id)variables error:(id *)error
{
  sub_1000587D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v9;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10014C718(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      variables = [v10 variables];
      sub_10014EC90();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    }
  }

  pqStore = [v7 pqStore];
  pqlConnection = [pqStore pqlConnection];

  v19 = v7[2];
  definitionInjection = [v10 definitionInjection];
  v21 = [pqlConnection cplExecute:{@"CREATE TABLE %@ (%@)", v19, definitionInjection}];

  if (v5 && (v21 & 1) == 0)
  {
    *v5 = [pqlConnection lastCPLError];
  }

  return v21;
}

- (BOOL)createMainTableWithDefinition:(id)definition error:(id *)error
{
  sub_1000587D4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v9;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v11 = sub_10014C718(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10014EC90();
      _os_log_impl(v12, v13, v14, v15, v16, 0x16u);
    }
  }

  v17 = [PQLRawInjection alloc];
  v18 = [v10 dataUsingEncoding:4];
  v19 = [v17 initWithData:v18];

  pqStore = [v7 pqStore];
  pqlConnection = [pqStore pqlConnection];

  v22 = [pqlConnection cplExecute:{@"CREATE TABLE %@ (%@)", v7[2], v19}];
  v23 = v22;
  if (v5 && (v22 & 1) == 0)
  {
    *v5 = [pqlConnection lastCPLError];
  }

  return v23;
}

- (BOOL)dropIndexWithName:(id)name error:(id *)error
{
  nameCopy = name;
  v7 = nameCopy;
  if ((_CPLSilentLogging & 1) == 0)
  {
    v8 = sub_10014C718(nameCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_10014EC90();
      _os_log_impl(v9, v10, v11, v12, v13, 0xCu);
    }
  }

  v14 = [CPLPrequeliteVariable indexVariableForVariableWithName:v7 forTable:self->_nameTable];
  pqStore = [(CPLPrequeliteStorage *)self pqStore];
  pqlConnection = [pqStore pqlConnection];
  v17 = [pqlConnection cplExecute:{@"DROP INDEX IF EXISTS %@", v14}];

  if (error && (v17 & 1) == 0)
  {
    pqStore2 = [(CPLPrequeliteStorage *)self pqStore];
    pqlConnection2 = [pqStore2 pqlConnection];
    *error = [pqlConnection2 lastCPLError];
  }

  return v17;
}

@end