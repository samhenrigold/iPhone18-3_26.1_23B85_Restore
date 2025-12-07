@interface ACDTransientDatabase
- (ACDTransientDatabase)init;
- (id)_addPersistentStoreWithType:(id)type configuration:(id)configuration URL:(id)l options:(id)options error:(id *)error;
- (id)createConnection;
@end

@implementation ACDTransientDatabase

- (ACDTransientDatabase)init
{
  v13.receiver = self;
  v13.super_class = ACDTransientDatabase;
  v2 = [(ACDTransientDatabase *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v4 = _ACDManagedObjectModel(v2);
    v5 = [objc_alloc(MEMORY[0x277CBE4D8]) initWithManagedObjectModel:v4];
    persistentStoreCoordinator = v3->_persistentStoreCoordinator;
    v3->_persistentStoreCoordinator = v5;

    v7 = *MEMORY[0x277CBE170];
    v12 = 0;
    v8 = [(ACDTransientDatabase *)v3 _addPersistentStoreWithType:v7 configuration:0 URL:0 options:0 error:&v12];
    createConnection = [(ACDTransientDatabase *)v3 createConnection];
    v10 = [[ACDDatabaseInitializer alloc] initWithDatabaseConnection:createConnection];
    [(ACDDatabaseInitializer *)v10 updateDefaultContentIfNecessary:0];
  }

  return v3;
}

- (id)_addPersistentStoreWithType:(id)type configuration:(id)configuration URL:(id)l options:(id)options error:(id *)error
{
  typeCopy = type;
  configurationCopy = configuration;
  lCopy = l;
  optionsCopy = options;
  v16 = [(NSPersistentStoreCoordinator *)self->_persistentStoreCoordinator addPersistentStoreWithType:typeCopy configuration:configurationCopy URL:lCopy options:optionsCopy error:error];

  return v16;
}

- (id)createConnection
{
  v2 = [[ACDDatabaseConnection alloc] initWithPersistentStoreCoordinator:self->_persistentStoreCoordinator];

  return v2;
}

@end