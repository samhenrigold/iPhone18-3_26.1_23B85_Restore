@interface AnalyticsWorkspace
+ (AnalyticsWorkspace)workspaceWithName:(id)name atPath:(id)path objectModelName:(id)modelName objectModelBundle:(id)bundle useReadOnly:(BOOL)only;
+ (void)initialize;
- (BOOL)_primePath:(id)path;
- (BOOL)canCloneObjectsOfType:(id)type;
- (BOOL)save;
- (BOOL)setCustomPersistenceProperties:(id)properties;
- (NSManagedObjectContext)mainObjectContext;
- (NSManagedObjectModel)objectModel;
- (NSPersistentStoreCoordinator)persistentStoreCoordinator;
- (id)_cloneInternal:(id)internal intoWorkspace:(id)workspace ancestry:(id)ancestry iteration:(unint64_t)iteration mustFail:(BOOL *)fail;
- (id)_initWithName:(id)name inMemory:(BOOL)memory useReadOnly:(BOOL)only customModelName:(id)modelName loadModelFromBundle:(id)bundle;
- (id)cloneObject:(id)object intoWorkspace:(id)workspace;
- (id)copyWithZone:(_NSZone *)zone;
- (id)createNewContext;
- (id)initInMemoryWorkspaceWithName:(id)name customModelName:(id)modelName objectModelBundle:(id)bundle;
- (id)initWorkspaceWithName:(id)name atPath:(id)path objectModelName:(id)modelName objectModelBundle:(id)bundle useReadOnly:(BOOL)only;
- (id)resetCompletionBlock;
- (void)dealloc;
- (void)enumerateResidentObjectsOfType:(id)type usingBlock:(id)block;
- (void)reset;
- (void)setResetCompletionBlock:(id)block;
@end

@implementation AnalyticsWorkspace

- (BOOL)save
{
  v22 = *MEMORY[0x277D85DE8];
  if (!self->__persistent)
  {
    return 0;
  }

  persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];

  if (!persistentStoreCoordinator)
  {
    return 0;
  }

  mainObjectContext = [(AnalyticsWorkspace *)self mainObjectContext];
  hasChanges = [mainObjectContext hasChanges];

  if (hasChanges)
  {
    mainObjectContext2 = [(AnalyticsWorkspace *)self mainObjectContext];
    v17 = 0;
    v7 = [mainObjectContext2 save:&v17];
    v8 = v17;

    if ((v7 & 1) == 0)
    {
      v10 = objectanalyticsHandle(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v8 localizedDescription];
        uTF8String = [localizedDescription UTF8String];
        userInfo = [v8 userInfo];
        v14 = [userInfo description];
        uTF8String2 = [v14 UTF8String];
        *buf = 136315394;
        v19 = uTF8String;
        v20 = 2080;
        v21 = uTF8String2;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Error while saving: %s\n%s", buf, 0x16u);
      }
    }
  }

  return 1;
}

- (NSPersistentStoreCoordinator)persistentStoreCoordinator
{
  v92 = *MEMORY[0x277D85DE8];
  v3 = registry;
  objc_sync_enter(v3);
  if (!self->__persistent)
  {
    goto LABEL_84;
  }

  persistentStoreCoordinator = self->__persistentStoreCoordinator;
  if (persistentStoreCoordinator)
  {
LABEL_82:
    v58 = persistentStoreCoordinator;
    goto LABEL_85;
  }

  location = &self->__persistentStoreCoordinator;
  if (!self->__connection && self->storeKind != *MEMORY[0x277CBE170] && ![(AnalyticsWorkspace *)self _primePath:self->backingStore])
  {
    v7 = 0;
LABEL_81:

    persistentStoreCoordinator = *location;
    goto LABEL_82;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v81 = dictionary;
  if (self->__connection)
  {
    v6 = 0;
    v80 = 0;
  }

  else
  {
    v8 = objectanalyticsHandle(dictionary);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      backingStore = self->backingStore;
      v10 = "/write";
      if (self->readOnly)
      {
        v10 = "-only";
      }

      *buf = 138412546;
      v89 = backingStore;
      v90 = 2080;
      v91 = v10;
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_DEFAULT, "opening backingstore %@, read%s", buf, 0x16u);
    }

    v80 = [MEMORY[0x277CBEBC0] fileURLWithPath:self->backingStore];
    [v81 addEntriesFromDictionary:&unk_285379B08];
    v11 = MEMORY[0x277CBEAC0];
    storeProt = self->storeProt;
    v13 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v14 = [MEMORY[0x277CCABB0] numberWithBool:1];
    if (self->readOnly)
    {
      [MEMORY[0x277CCABB0] numberWithBool:1];
    }

    else
    {
      [MEMORY[0x277CBEB68] null];
    }
    v15 = ;
    readOnly = self->readOnly;
    if (readOnly)
    {
      null = *MEMORY[0x277CBE2B0];
    }

    else
    {
      null = [MEMORY[0x277CBEB68] null];
    }

    v6 = [v11 dictionaryWithObjectsAndKeys:{v81, *MEMORY[0x277CBE2E0], storeProt, *MEMORY[0x277CBE240], v13, *MEMORY[0x277CBE1D8], v14, *MEMORY[0x277CBE178], v15, null, 0}];
    if (!readOnly)
    {
    }
  }

  objectModel = [(AnalyticsWorkspace *)self objectModel];
  if (objectModel)
  {
    self->_integrityCheckFailed = 0;
    v19 = objc_alloc(MEMORY[0x277CBE4D8]);
    objectModel2 = [(AnalyticsWorkspace *)self objectModel];
    v7 = [v19 initWithManagedObjectModel:objectModel2];

    if (v7)
    {
      if (self->_forceIntegrityCheck)
      {
        v22 = objectanalyticsHandle(v21);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v23 = "DATA INTEGRITY: forceIntegrityCheck is true";
        v24 = v22;
        v25 = OS_LOG_TYPE_ERROR;
      }

      else
      {
        v22 = objectanalyticsHandle(v21);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_37;
        }

        *buf = 0;
        v23 = "forceIntegrityCheck is false";
        v24 = v22;
        v25 = OS_LOG_TYPE_DEBUG;
      }

      _os_log_impl(&dword_241804000, v24, v25, v23, buf, 2u);
LABEL_37:

      if (self->_forceIntegrityCheck)
      {
        v31 = 0;
LABEL_39:
        v32 = 1;
        goto LABEL_46;
      }

      if (self->_forceDestroyPersistentStore || self->_forceDeleteFile)
      {
        v31 = 0;
      }

      else
      {
        storeKind = self->storeKind;
        v87 = 0;
        v39 = [v7 addPersistentStoreWithType:storeKind configuration:0 URL:v80 options:v6 error:&v87];
        v31 = v87;

        if (!v39)
        {
          v50 = objectanalyticsHandle(v40);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v89 = v31;
            _os_log_impl(&dword_241804000, v50, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: addPersistentStoreWithType failed because %@. Will check integrity.", buf, 0xCu);
          }

          v32 = 1;
          self->_forceIntegrityCheck = 1;
          goto LABEL_46;
        }

        objc_storeStrong(location, v7);
        if (self->_forceIntegrityCheck)
        {
          goto LABEL_39;
        }
      }

      if (!self->_forceDestroyPersistentStore && !self->_forceDeleteFile)
      {
LABEL_79:
        v29 = v31;
        goto LABEL_80;
      }

      v32 = 0;
LABEL_46:
      if (!self->__connection && !self->readOnly && self->storeKind != *MEMORY[0x277CBE170])
      {
        forceDestroyPersistentStore = self->_forceDestroyPersistentStore;
        forceDeleteFile = self->_forceDeleteFile;
        *&self->_forceIntegrityCheck = 0;
        self->_forceDeleteFile = 0;
        if (forceDeleteFile)
        {
          v35 = objectanalyticsHandle(v30);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v35, OS_LOG_TYPE_ERROR, "DATA LOSS: Have been instructed to delete persistent store.", buf, 2u);
          }

          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v84 = v31;
          v37 = [defaultManager removeItemAtURL:v80 error:&v84];
          v29 = v84;

          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate deleteDatabaseCompleted:v37 error:v29];
          }

          goto LABEL_80;
        }

        if (forceDestroyPersistentStore)
        {
          v41 = objectanalyticsHandle(v30);
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v41, OS_LOG_TYPE_ERROR, "DATA LOSS: Have been instructed to destroy persistent store.", buf, 2u);
          }

          v29 = v31;
LABEL_61:
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate destroyPersistentStoreStarted];
          }

          v42 = *MEMORY[0x277CBE2E8];
          v83 = v29;
          v43 = [v7 _destroyPersistentStoreAtURL:v80 withType:v42 options:0 error:&v83];
          v44 = v83;

          v45 = objc_opt_respondsToSelector();
          if (v45)
          {
            v45 = [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate destroyPersistentStoreCompleted:v43 error:v44];
          }

          if (v43)
          {
            v46 = self->storeKind;
            v82 = v44;
            v47 = [v7 addPersistentStoreWithType:v46 configuration:0 URL:v80 options:v6 error:&v82];
            v29 = v82;

            if (v47)
            {
              objc_storeStrong(location, v7);
              persistentStoreError = self->_persistentStoreError;
              self->_persistentStoreError = 0;
            }

            else
            {
              v62 = objectanalyticsHandle(v48);
              if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v89 = v29;
                _os_log_impl(&dword_241804000, v62, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Persisting fatal failure to recover incompatibility by creating new sqlite files : %@", buf, 0xCu);
              }

              if (v29)
              {
                v63 = v29;
                v29 = v63;
              }

              else
              {
                v63 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3203 userInfo:0];
                v29 = 0;
              }

              persistentStoreError = self->_persistentStoreError;
              self->_persistentStoreError = v63;
            }
          }

          else
          {
            v60 = objectanalyticsHandle(v45);
            if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v89 = v44;
              _os_log_impl(&dword_241804000, v60, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Fatal failure to remove incompatible sqlite files: %@", buf, 0xCu);
            }

            v61 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3204 userInfo:0];
            persistentStoreError = self->_persistentStoreError;
            self->_persistentStoreError = v61;
            v29 = v44;
          }

          goto LABEL_80;
        }

        if (v32)
        {
          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate integrityCheckStarted];
          }

          [v81 setObject:@"YES" forKeyedSubscript:@"integrity_check"];
          v51 = self->storeKind;
          v86 = v31;
          v52 = [v7 addPersistentStoreWithType:v51 configuration:0 URL:v80 options:v6 error:&v86];
          v29 = v86;

          if (v52)
          {
            objc_storeStrong(location, v7);
            v55 = objectanalyticsHandle(v54);
            if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
            {
LABEL_78:
              v57 = 0;
              goto LABEL_122;
            }

            *buf = 0;
            v56 = "DATA INTEGRITY: Integrity check passed";
LABEL_77:
            _os_log_impl(&dword_241804000, v55, OS_LOG_TYPE_INFO, v56, buf, 2u);
            goto LABEL_78;
          }

          v64 = objectanalyticsHandle(v53);
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_241804000, v64, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Integrity check failed", buf, 2u);
          }

          self->_integrityCheckFailed = 1;
          code = [(NSError *)v29 code];
          v66 = isDBFileCorrupted(v29, 0);
          if ((code - 134000) >= 0x15 && (code - 134100) >= 0x47)
          {
            v68 = v66;
          }

          else
          {
            v68 = 1;
          }

          if (v68 == 1)
          {
            v55 = objectanalyticsHandle(v66);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v89 = v29;
              _os_log_impl(&dword_241804000, v55, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: DB content truncated due to model incompatibility or corruption. PSC creation failed with: %@", buf, 0xCu);
            }

            v57 = 1;
          }

          else
          {
            domain = [(NSError *)v29 domain];
            if ([domain isEqualToString:*MEMORY[0x277CBE2C8]])
            {
              v70 = [(NSError *)v29 code]== 13;

              if (v70)
              {
                v55 = objectanalyticsHandle(v71);
                if (!os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_78;
                }

                *buf = 0;
                v56 = "DATA INTEGRITY WARNING: The disk is full";
                goto LABEL_77;
              }
            }

            else
            {
            }

            v72 = objectanalyticsHandle(v71);
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v89 = v29;
              _os_log_impl(&dword_241804000, v72, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Error while creating persistent store: %@", buf, 0xCu);
            }

            v73 = self->storeKind;
            v85 = v29;
            v55 = [MEMORY[0x277CBE4D8] metadataForPersistentStoreOfType:v73 URL:v80 options:v6 error:&v85];
            v74 = v85;

            if (v55)
            {
              objectModel3 = [(AnalyticsWorkspace *)self objectModel];
              v76 = [objectModel3 isConfiguration:0 compatibleWithStoreMetadata:v55];

              v78 = objectanalyticsHandle(v77);
              if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v89 = v55;
                v90 = 1024;
                LODWORD(v91) = v76;
                _os_log_impl(&dword_241804000, v78, OS_LOG_TYPE_INFO, "DATA INTEGRITY WARNING: metadata %@, compat %d", buf, 0x12u);
              }
            }

            v57 = 0;
            v29 = v74;
          }

LABEL_122:

          if (objc_opt_respondsToSelector())
          {
            [(AnalyticsWorkspaceHealthDelegate *)self->_healthDelegate integrityCheckCompleted:!self->_integrityCheckFailed error:v29];
          }

          if (!v57)
          {
            goto LABEL_80;
          }

          goto LABEL_61;
        }
      }

      goto LABEL_79;
    }

    v28 = objectanalyticsHandle(v21);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v28, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Fatal error while allocating persistent store", buf, 2u);
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3202 userInfo:0];
  }

  else
  {
    v26 = objectanalyticsHandle(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_241804000, v26, OS_LOG_TYPE_ERROR, "DATA INTEGRITY: Unable to load the object model", buf, 2u);
    }

    v27 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3201 userInfo:0];
  }

  v7 = 0;
  v29 = self->_persistentStoreError;
  self->_persistentStoreError = v27;
LABEL_80:

  if (objectModel)
  {
    goto LABEL_81;
  }

LABEL_84:
  v58 = 0;
LABEL_85:
  objc_sync_exit(v3);

  return v58;
}

- (NSManagedObjectContext)mainObjectContext
{
  if (self->__persistent)
  {
    mainObjectContext = self->__mainObjectContext;
    if (mainObjectContext)
    {
      v4 = mainObjectContext;
    }

    else
    {
      persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
      v6 = self->__mainObjectContext;
      if (persistentStoreCoordinator && !v6)
      {
        v7 = objc_alloc(MEMORY[0x277CBE440]);
        v8 = [v7 initWithConcurrencyType:*MEMORY[0x277CBE518]];
        v9 = self->__mainObjectContext;
        self->__mainObjectContext = v8;

        [(NSManagedObjectContext *)self->__mainObjectContext setMergePolicy:*MEMORY[0x277CBE1D0]];
        [(NSManagedObjectContext *)self->__mainObjectContext setPersistentStoreCoordinator:persistentStoreCoordinator];
        [(NSManagedObjectContext *)self->__mainObjectContext setUndoManager:0];
        v6 = self->__mainObjectContext;
      }

      v4 = v6;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = registry;
  registry = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

- (void)dealloc
{
  connection = self->__connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    v4 = self->__connection;
    self->__connection = 0;
  }

  v5.receiver = self;
  v5.super_class = AnalyticsWorkspace;
  [(AnalyticsWorkspace *)&v5 dealloc];
}

- (id)_initWithName:(id)name inMemory:(BOOL)memory useReadOnly:(BOOL)only customModelName:(id)modelName loadModelFromBundle:(id)bundle
{
  memoryCopy = memory;
  v35 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  modelNameCopy = modelName;
  bundleCopy = bundle;
  v32.receiver = self;
  v32.super_class = AnalyticsWorkspace;
  v16 = [(AnalyticsWorkspace *)&v32 init];
  if (v16)
  {
    v31 = nameCopy;
    v17 = [(__CFString *)modelNameCopy length];
    v18 = MEMORY[0x277CBE170];
    if (!memoryCopy)
    {
      v18 = MEMORY[0x277CBE2E8];
    }

    v19 = *v18;
    v20 = *v18;
    v21 = MEMORY[0x277CCA1A0];
    if (!v17)
    {
      v21 = MEMORY[0x277CCA1B8];
    }

    v22 = *v21;
    v23 = objectanalyticsHandle(*v21);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = @"DAEMON";
      if (!v17)
      {
        v24 = @"LEGACY";
      }

      *buf = 138412290;
      v34 = v24;
      _os_log_impl(&dword_241804000, v23, OS_LOG_TYPE_DEFAULT, "AnalyticsWorkspace is running in %@ MODE", buf, 0xCu);
    }

    v25 = v19;
    v26 = v22;
    objc_storeStrong(&v16->storeKind, v19);
    objc_storeStrong(&v16->storeProt, v22);
    objc_storeStrong(&v16->backingStore, name);
    v16->readOnly = only;
    v16->pathKnownToFail = 0;
    if (v17)
    {
      v27 = modelNameCopy;
    }

    else
    {
      v27 = @"SymptomAnalyticsLegacy";
    }

    objc_storeStrong(&v16->_objectModelName, v27);
    if (bundleCopy)
    {
      v28 = bundleCopy;
    }

    else
    {
      v28 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    }

    objectModelResidentBundle = v16->_objectModelResidentBundle;
    v16->_objectModelResidentBundle = v28;

    v16->__persistent = 1;
    nameCopy = v31;
  }

  return v16;
}

- (id)initInMemoryWorkspaceWithName:(id)name customModelName:(id)modelName objectModelBundle:(id)bundle
{
  bundleCopy = bundle;
  modelNameCopy = modelName;
  nameCopy = name;
  v11 = [[AnalyticsWorkspace alloc] _initWithName:nameCopy inMemory:1 useReadOnly:0 customModelName:modelNameCopy loadModelFromBundle:bundleCopy];

  return v11;
}

+ (AnalyticsWorkspace)workspaceWithName:(id)name atPath:(id)path objectModelName:(id)modelName objectModelBundle:(id)bundle useReadOnly:(BOOL)only
{
  onlyCopy = only;
  nameCopy = name;
  pathCopy = path;
  modelNameCopy = modelName;
  bundleCopy = bundle;
  v20 = 0;
  v15 = assembleFullName(nameCopy, pathCopy, &v20);
  v16 = v20;
  v17 = 0;
  if (v15)
  {
    v18 = registry;
    objc_sync_enter(v18);
    v17 = [registry objectForKey:v16];
    if (!v17)
    {
      v17 = [[AnalyticsWorkspace alloc] _initWithName:v16 inMemory:0 useReadOnly:onlyCopy customModelName:modelNameCopy loadModelFromBundle:bundleCopy];
      [registry setObject:v17 forKey:v16];
    }

    objc_sync_exit(v18);
  }

  return v17;
}

- (id)initWorkspaceWithName:(id)name atPath:(id)path objectModelName:(id)modelName objectModelBundle:(id)bundle useReadOnly:(BOOL)only
{
  onlyCopy = only;
  modelNameCopy = modelName;
  bundleCopy = bundle;
  v18 = 0;
  v14 = assembleFullName(name, path, &v18);
  v15 = v18;
  if (v14)
  {
    self = [(AnalyticsWorkspace *)self _initWithName:v15 inMemory:0 useReadOnly:onlyCopy customModelName:modelNameCopy loadModelFromBundle:bundleCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)setCustomPersistenceProperties:(id)properties
{
  v4 = [properties objectForKeyedSubscript:@"PersistentWorkspace"];
  if (!v4)
  {
    goto LABEL_13;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v8 = objectanalyticsHandle(isKindOfClass);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v9 = "Invalid value for persistent key";
      v10 = &v12;
LABEL_11:
      _os_log_impl(&dword_241804000, v8, OS_LOG_TYPE_ERROR, v9, v10, 2u);
    }

LABEL_12:

LABEL_13:
    v7 = 0;
    goto LABEL_14;
  }

  bOOLValue = [v4 BOOLValue];
  if ((bOOLValue & 1) == 0 && (self->__persistentStoreCoordinator || self->__mainObjectContext))
  {
    v8 = objectanalyticsHandle(bOOLValue);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v9 = "Requesting non-persistent but the workspace already has a PersistentStoreCoordinator and/or a MainObjectContext";
      v10 = buf;
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  self->__persistent = bOOLValue;
  v7 = 1;
LABEL_14:

  return v7;
}

- (NSManagedObjectModel)objectModel
{
  v29 = *MEMORY[0x277D85DE8];
  if (self->__persistent)
  {
    objectModel = self->__objectModel;
    if (objectModel)
    {
      v4 = objectModel;
    }

    else
    {
      v5 = objectanalyticsHandle(self);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        objectModelName = [(AnalyticsWorkspace *)self objectModelName];
        uTF8String = [objectModelName UTF8String];
        objectModelResidentBundle = [(AnalyticsWorkspace *)self objectModelResidentBundle];
        bundlePath = [objectModelResidentBundle bundlePath];
        v25 = 136315394;
        v26 = uTF8String;
        v27 = 2080;
        uTF8String2 = [bundlePath UTF8String];
        _os_log_impl(&dword_241804000, v5, OS_LOG_TYPE_DEFAULT, "Loading object model %s.momd from bundle at %s", &v25, 0x16u);
      }

      objectModelResidentBundle2 = [(AnalyticsWorkspace *)self objectModelResidentBundle];
      objectModelName2 = [(AnalyticsWorkspace *)self objectModelName];
      v12 = [objectModelResidentBundle2 pathForResource:objectModelName2 ofType:@"momd"];

      if (v12)
      {
        v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v12];
        v15 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v14];
        v16 = self->__objectModel;
        self->__objectModel = v15;

        v18 = objectanalyticsHandle(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v25 = 138412290;
          v26 = v14;
          _os_log_impl(&dword_241804000, v18, OS_LOG_TYPE_DEFAULT, "Loaded object model from URL %@", &v25, 0xCu);
        }
      }

      else
      {
        v14 = objectanalyticsHandle(v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          objectModelName3 = [(AnalyticsWorkspace *)self objectModelName];
          v25 = 138412290;
          v26 = objectModelName3;
          _os_log_impl(&dword_241804000, v14, OS_LOG_TYPE_ERROR, "Did not find path for object model %@", &v25, 0xCu);
        }

        v15 = 0;
      }

      v21 = self->__objectModel;
      if (!v21)
      {
        v22 = objectanalyticsHandle(v20);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          objectModelName4 = [(AnalyticsWorkspace *)self objectModelName];
          v25 = 138412290;
          v26 = objectModelName4;
          _os_log_impl(&dword_241804000, v22, OS_LOG_TYPE_ERROR, "Couldn't match expected object model %@", &v25, 0xCu);
        }

        v21 = self->__objectModel;
      }

      v4 = v21;
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)createNewContext
{
  if (self->__persistent)
  {
    persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    if (persistentStoreCoordinator)
    {
      v3 = objc_alloc(MEMORY[0x277CBE440]);
      v4 = [v3 initWithConcurrencyType:*MEMORY[0x277CBE518]];
      v5 = v4;
      if (v4)
      {
        [v4 setMergePolicy:*MEMORY[0x277CBE1D0]];
        [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];
        [v5 setUndoManager:0];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  createNewContext = [(AnalyticsWorkspace *)self createNewContext];
  if (createNewContext || !self->__persistent)
  {
    v5 = objc_alloc_init(AnalyticsWorkspace);
    objc_storeStrong(&v5->backingStore, self->backingStore);
    objc_storeStrong(&v5->storeKind, self->storeKind);
    objc_storeStrong(&v5->_objectModelName, self->_objectModelName);
    objc_storeStrong(&v5->_objectModelResidentBundle, self->_objectModelResidentBundle);
    objc_storeStrong(&v5->storeProt, self->storeProt);
    persistentStoreCoordinator = [(AnalyticsWorkspace *)self persistentStoreCoordinator];
    persistentStoreCoordinator = v5->__persistentStoreCoordinator;
    v5->__persistentStoreCoordinator = persistentStoreCoordinator;

    objc_storeStrong(&v5->__mainObjectContext, createNewContext);
    objectModel = [(AnalyticsWorkspace *)self objectModel];
    objectModel = v5->__objectModel;
    v5->__objectModel = objectModel;

    connection = [(AnalyticsWorkspace *)self connection];
    connection = v5->__connection;
    v5->__connection = connection;

    v5->__persistent = [(AnalyticsWorkspace *)self persistent];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)resetCompletionBlock
{
  v2 = _Block_copy(self->__resetCompletionBlock);

  return v2;
}

- (void)setResetCompletionBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    v5 = _Block_copy(self->__resetCompletionBlock);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__AnalyticsWorkspace_setResetCompletionBlock___block_invoke;
    v9[3] = &unk_278CEFDC0;
    v10 = v5;
    v11 = blockCopy;
    v6 = v5;
    v7 = _Block_copy(v9);
    resetCompletionBlock = self->__resetCompletionBlock;
    self->__resetCompletionBlock = v7;
  }
}

uint64_t __46__AnalyticsWorkspace_setResetCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)reset
{
  if (self->__persistent)
  {
    mainObjectContext = [(AnalyticsWorkspace *)self mainObjectContext];
    [mainObjectContext reset];
  }

  resetCompletionBlock = [(AnalyticsWorkspace *)self resetCompletionBlock];
  if (resetCompletionBlock)
  {
    v5 = resetCompletionBlock;
    resetCompletionBlock[2]();
    resetCompletionBlock = v5;
  }
}

- (BOOL)canCloneObjectsOfType:(id)type
{
  v16 = *MEMORY[0x277D85DE8];
  if (!self->__persistent)
  {
    return 0;
  }

  relationshipsByName = [type relationshipsByName];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [relationshipsByName allValues];
  v5 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v11 + 1) + 8 * i) isToMany])
        {
          v9 = 0;
          goto LABEL_13;
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_13:

  return v9;
}

- (void)enumerateResidentObjectsOfType:(id)type usingBlock:(id)block
{
  typeCopy = type;
  blockCopy = block;
  mainObjectContext = [(AnalyticsWorkspace *)self mainObjectContext];
  registeredObjects = [mainObjectContext registeredObjects];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __64__AnalyticsWorkspace_enumerateResidentObjectsOfType_usingBlock___block_invoke;
  v12[3] = &unk_278CEFDE8;
  v13 = typeCopy;
  v14 = blockCopy;
  v10 = typeCopy;
  v11 = blockCopy;
  [registeredObjects enumerateObjectsUsingBlock:v12];
}

void __64__AnalyticsWorkspace_enumerateResidentObjectsOfType_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (*(a1 + 40))
  {
    if ([v5 isUpdated])
    {
      v3 = [v5 entity];
      v4 = [v3 isEqual:*(a1 + 32)];

      if (v4)
      {
        (*(*(a1 + 40) + 16))();
      }
    }
  }
}

- (id)cloneObject:(id)object intoWorkspace:(id)workspace
{
  v12 = 0;
  v6 = MEMORY[0x277CBEB38];
  workspaceCopy = workspace;
  objectCopy = object;
  v9 = [[v6 alloc] initWithCapacity:5];
  v10 = [(AnalyticsWorkspace *)self _cloneInternal:objectCopy intoWorkspace:workspaceCopy ancestry:v9 iteration:0 mustFail:&v12];

  return v10;
}

- (id)_cloneInternal:(id)internal intoWorkspace:(id)workspace ancestry:(id)ancestry iteration:(unint64_t)iteration mustFail:(BOOL *)fail
{
  v66 = *MEMORY[0x277D85DE8];
  internalCopy = internal;
  workspaceCopy = workspace;
  ancestryCopy = ancestry;
  mainObjectContext = [workspaceCopy mainObjectContext];
  entity = [internalCopy entity];
  name = [entity name];
  v55 = name;
  if (!name)
  {
    v16 = objectanalyticsHandle(0);
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
LABEL_8:
      v26 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v51 = entity;
    v23 = mainObjectContext;
    v24 = ancestryCopy;
    if (internalCopy)
    {
      ancestryCopy = [internalCopy objectID];
      mainObjectContext = [ancestryCopy URIRepresentation];
      iteration = [mainObjectContext description];
      uTF8String = [iteration UTF8String];
    }

    else
    {
      uTF8String = "(no nmo)";
    }

    *buf = 136315138;
    uTF8String2 = uTF8String;
    _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Nil entity name for nmo: %s", buf, 0xCu);
    if (internalCopy)
    {
    }

    v26 = 0;
    ancestryCopy = v24;
    mainObjectContext = v23;
LABEL_32:
    entity = v51;
    goto LABEL_33;
  }

  if (iteration >= 6)
  {
    v16 = objectanalyticsHandle(name);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [internalCopy objectID];
      v18 = v17 = entity;
      [v18 URIRepresentation];
      v20 = v19 = ancestryCopy;
      [v20 description];
      v22 = v21 = mainObjectContext;
      *buf = 136315138;
      uTF8String2 = [v22 UTF8String];
      _os_log_impl(&dword_241804000, v16, OS_LOG_TYPE_ERROR, "Too long a chain sequence leading to: %s", buf, 0xCu);

      mainObjectContext = v21;
      ancestryCopy = v19;

      entity = v17;
    }

    goto LABEL_8;
  }

  [internalCopy objectID];
  v27 = v51 = entity;
  v26 = [ancestryCopy objectForKeyedSubscript:v27];

  entity = v51;
  if (!v26)
  {
    v26 = [MEMORY[0x277CBE408] insertNewObjectForEntityForName:v55 inManagedObjectContext:mainObjectContext];
    if (v26)
    {
      iterationCopy = iteration;
      v50 = mainObjectContext;
      v54 = workspaceCopy;
      objectID = [internalCopy objectID];
      v53 = ancestryCopy;
      [ancestryCopy setObject:v26 forKey:objectID];

      entity2 = [internalCopy entity];
      attributesByName = [entity2 attributesByName];
      allKeys = [attributesByName allKeys];

      v49 = allKeys;
      [internalCopy dictionaryWithValuesForKeys:allKeys];
      v48 = v52 = v26;
      [v26 setValuesForKeysWithDictionary:?];
      entity3 = [internalCopy entity];
      relationshipsByName = [entity3 relationshipsByName];

      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      allKeys2 = [relationshipsByName allKeys];
      v35 = [allKeys2 countByEnumeratingWithState:&v59 objects:v63 count:16];
      if (v35)
      {
        v36 = v35;
        v37 = *v60;
        while (2)
        {
          for (i = 0; i != v36; ++i)
          {
            if (*v60 != v37)
            {
              objc_enumerationMutation(allKeys2);
            }

            v39 = *(*(&v59 + 1) + 8 * i);
            v40 = [relationshipsByName valueForKey:v39];
            if (([v40 isToMany] & 1) == 0 && (objc_msgSend(v40, "isTransient") & 1) == 0)
            {
              v41 = allKeys2;
              v42 = internalCopy;
              v43 = [internalCopy valueForKey:v39];
              ++iterationCopy;
              v44 = [AnalyticsWorkspace _cloneInternal:"_cloneInternal:intoWorkspace:ancestry:iteration:mustFail:" intoWorkspace:v43 ancestry:v54 iteration:v53 mustFail:?];
              if (!v44)
              {
                *fail = 1;

                v26 = 0;
                internalCopy = v42;
                v16 = v52;
                goto LABEL_31;
              }

              v45 = v44;
              [v52 setValue:v44 forKey:v39];

              internalCopy = v42;
              allKeys2 = v41;
            }
          }

          v36 = [allKeys2 countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v36)
          {
            continue;
          }

          break;
        }
      }

      v16 = v52;
      if (*fail)
      {
        v46 = 0;
      }

      else
      {
        v46 = v52;
      }

      v26 = v46;
LABEL_31:

      ancestryCopy = v53;
      workspaceCopy = v54;
      mainObjectContext = v50;
      goto LABEL_32;
    }
  }

LABEL_34:

  return v26;
}

- (BOOL)_primePath:(id)path
{
  v20 = *MEMORY[0x277D85DE8];
  if (self->pathKnownToFail)
  {
    return 0;
  }

  stringByDeletingLastPathComponent = [path stringByDeletingLastPathComponent];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v17 = 0;
  if ([defaultManager fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v17] && (v17 & 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObject:self->storeProt forKey:*MEMORY[0x277CCA1B0]];
    v16 = 0;
    [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:v7 error:&v16];
    v8 = v16;
    v9 = v8;
    v3 = v8 == 0;
    if (v8)
    {
      v10 = objectanalyticsHandle(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        localizedDescription = [v9 localizedDescription];
        uTF8String = [localizedDescription UTF8String];
        *buf = 136315138;
        v19 = uTF8String;
        _os_log_impl(&dword_241804000, v10, OS_LOG_TYPE_ERROR, "Error creating directory path: %s", buf, 0xCu);
      }

      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"SymptomsErrorDomain" code:3101 userInfo:0];
      persistentStoreError = self->_persistentStoreError;
      self->_persistentStoreError = v13;
    }
  }

  self->pathKnownToFail = !v3;

  return v3;
}

@end