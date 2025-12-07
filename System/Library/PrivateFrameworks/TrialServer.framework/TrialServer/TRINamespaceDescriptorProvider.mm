@interface TRINamespaceDescriptorProvider
+ (id)_descriptorFromDynamicNamespaceRecord:(id)record;
+ (id)providerWithNamespaceDatabase:(id)database defaultDescriptorDirectoryPath:(id)path;
- (TRINamespaceDescriptorProvider)initWithNamespaceDatabase:(id)database defaultDescriptorDirectoryPath:(id)path;
- (id)_dynamicDescriptorsForContainer:(int)container teamId:(id)id;
- (id)descriptorWithNamespaceName:(id)name;
@end

@implementation TRINamespaceDescriptorProvider

+ (id)providerWithNamespaceDatabase:(id)database defaultDescriptorDirectoryPath:(id)path
{
  pathCopy = path;
  databaseCopy = database;
  v8 = [[self alloc] initWithNamespaceDatabase:databaseCopy defaultDescriptorDirectoryPath:pathCopy];

  return v8;
}

- (TRINamespaceDescriptorProvider)initWithNamespaceDatabase:(id)database defaultDescriptorDirectoryPath:(id)path
{
  databaseCopy = database;
  pathCopy = path;
  v10 = pathCopy;
  if (databaseCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptorProvider.m" lineNumber:34 description:{@"Invalid parameter not satisfying: %@", @"namespaceDatabase"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptorProvider.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"descriptorDirectory"}];

LABEL_3:
  v16.receiver = self;
  v16.super_class = TRINamespaceDescriptorProvider;
  v11 = [(TRINamespaceDescriptorProvider *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_namespaceDatabase, database);
    objc_storeStrong(&v12->_descriptorDirectory, path);
  }

  return v12;
}

- (id)descriptorWithNamespaceName:(id)name
{
  nameCopy = name;
  v5 = [MEMORY[0x277D73750] loadWithNamespaceName:nameCopy fromDirectory:self->_descriptorDirectory];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v8 = [(TRINamespaceDatabase *)self->_namespaceDatabase dynamicNamespaceRecordWithNamespaceName:nameCopy];
    if (v8)
    {
      v7 = [TRINamespaceDescriptorProvider _descriptorFromDynamicNamespaceRecord:v8];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_dynamicDescriptorsForContainer:(int)container teamId:(id)id
{
  v4 = *&container;
  idCopy = id;
  v7 = objc_opt_new();
  namespaceDatabase = self->_namespaceDatabase;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__TRINamespaceDescriptorProvider__dynamicDescriptorsForContainer_teamId___block_invoke;
  v13[3] = &unk_279DDF748;
  v14 = v7;
  v9 = v7;
  LODWORD(v4) = [(TRINamespaceDatabase *)namespaceDatabase enumerateDynamicNamespaceRecordsForContainer:v4 teamId:idCopy block:v13];

  if (v4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  return v10;
}

void __73__TRINamespaceDescriptorProvider__dynamicDescriptorsForContainer_teamId___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = [v7 appContainer];
  v4 = [v3 fetchStatus];

  if (v4 != 2)
  {
    v5 = *(a1 + 32);
    v6 = [TRINamespaceDescriptorProvider _descriptorFromDynamicNamespaceRecord:v7];
    [v5 addObject:v6];
  }
}

+ (id)_descriptorFromDynamicNamespaceRecord:(id)record
{
  recordCopy = record;
  v4 = objc_opt_new();
  defaultsFileURL = [recordCopy defaultsFileURL];
  [v4 setFactorsURL:defaultsFileURL];

  appContainer = [recordCopy appContainer];
  [v4 setAppContainer:appContainer];

  [v4 setCloudKitContainerId:{objc_msgSend(recordCopy, "cloudKitContainer")}];
  v7 = objc_alloc(MEMORY[0x277D73750]);
  name = [recordCopy name];
  compatibilityVersion = [recordCopy compatibilityVersion];

  v10 = [v7 initWithNamespaceName:name downloadNCV:compatibilityVersion optionalParams:v4];

  return v10;
}

@end