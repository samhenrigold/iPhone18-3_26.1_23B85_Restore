@interface ASUSQLiteTransporter
- (ASUSQLiteTransporter)initWithDatabasePath:(id)path;
- (BOOL)canBeginTransportation;
- (BOOL)endTransportationAndRemoveDatabase;
- (void)performTransportationUsingBlock:(id)block;
@end

@implementation ASUSQLiteTransporter

- (ASUSQLiteTransporter)initWithDatabasePath:(id)path
{
  pathCopy = path;
  v9.receiver = self;
  v9.super_class = ASUSQLiteTransporter;
  v6 = [(ASUSQLiteTransporter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_databasePath, path);
  }

  return v7;
}

- (BOOL)canBeginTransportation
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = self->_databasePath;
  objc_opt_self();
  os_unfair_lock_lock(&_configurationLock);
  v4 = +[ASUDefaultsManager transporterConfiguration];
  v5 = [v4 mutableCopy];

  if (v5 && ([v5 objectForKeyedSubscript:@"knownPaths"], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "mutableCopy"), v6, v7))
  {
    v8 = [v7 indexesOfObjectsPassingTest:&__block_literal_global_2];
    if ([v8 count])
    {
      [v7 removeObjectsAtIndexes:v8];
      [v5 setObject:v7 forKeyedSubscript:@"knownPaths"];
      [ASUDefaultsManager setTransporterConfiguration:v5];
    }

    v9 = [v7 containsObject:v3];

    os_unfair_lock_unlock(&_configurationLock);
    if (v9)
    {
      v10 = ASULogHandleForCategory(1);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        databasePath = self->_databasePath;
        v26 = 138543362;
        v27 = databasePath;
        v12 = "Refusing to begin transportation for known path: %{public}@";
LABEL_20:
        _os_log_error_impl(&dword_2400F8000, v10, OS_LOG_TYPE_ERROR, v12, &v26, 0xCu);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    os_unfair_lock_unlock(&_configurationLock);
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [defaultManager fileExistsAtPath:self->_databasePath];

  if ((v14 & 1) == 0)
  {
    v10 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v25 = self->_databasePath;
      v26 = 138543362;
      v27 = v25;
      v12 = "Refusing to begin transportation as path does not exist: %{public}@";
      goto LABEL_20;
    }

LABEL_14:

    return 0;
  }

  v15 = self->_databasePath;
  objc_opt_self();
  os_unfair_lock_lock(&_configurationLock);
  v16 = +[ASUDefaultsManager transporterConfiguration];
  v17 = [v16 mutableCopy];

  if (!v17)
  {
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    goto LABEL_16;
  }

  v18 = [v17 objectForKeyedSubscript:@"knownPaths"];
  v19 = [v18 mutableCopy];

  if (!v19)
  {
LABEL_16:
    v19 = [MEMORY[0x277CBEB18] arrayWithObject:v15];
    goto LABEL_17;
  }

  [v19 addObject:v15];
LABEL_17:
  [v17 setObject:v19 forKeyedSubscript:@"knownPaths"];
  [ASUDefaultsManager setTransporterConfiguration:v17];
  os_unfair_lock_unlock(&_configurationLock);

  v21 = [[ASUSQLiteConnectionOptions alloc] initWithDatabasePath:self->_databasePath];
  [(ASUSQLiteConnectionOptions *)v21 setReadOnly:1];
  v22 = [[ASUSQLiteConnection alloc] initWithOptions:v21];
  connection = self->_connection;
  self->_connection = v22;

  open = [(ASUSQLiteConnection *)self->_connection open];
  return open;
}

- (BOOL)endTransportationAndRemoveDatabase
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(ASUSQLiteConnection *)self->_connection close]&& ASUSQLiteDeleteDatabase(self->_databasePath, 0))
  {
    v3 = self->_databasePath;
    objc_opt_self();
    os_unfair_lock_lock(&_configurationLock);
    v4 = +[ASUDefaultsManager transporterConfiguration];
    v5 = [v4 mutableCopy];

    if (v5)
    {
      v6 = [v5 objectForKeyedSubscript:@"knownPaths"];
      v7 = [v6 mutableCopy];

      if (v7)
      {
        [v7 removeObject:v3];
        [v5 setObject:v7 forKeyedSubscript:@"knownPaths"];
        [ASUDefaultsManager setTransporterConfiguration:v5];
      }
    }

    os_unfair_lock_unlock(&_configurationLock);

    return 1;
  }

  else
  {
    v9 = ASULogHandleForCategory(1);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      databasePath = self->_databasePath;
      v11 = 138543362;
      v12 = databasePath;
      _os_log_error_impl(&dword_2400F8000, v9, OS_LOG_TYPE_ERROR, "Remembering path after ending transportation: %{public}@", &v11, 0xCu);
    }

    return 0;
  }
}

- (void)performTransportationUsingBlock:(id)block
{
  blockCopy = block;
  connection = self->_connection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__ASUSQLiteTransporter_performTransportationUsingBlock___block_invoke;
  v7[3] = &unk_278C97C50;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [(ASUSQLiteConnection *)connection performTransaction:v7 error:0];
}

uint64_t __45__ASUSQLiteTransporter__isKnownDatabasePath___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAA00];
  v3 = a2;
  v4 = [v2 defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  return v5 ^ 1u;
}

@end