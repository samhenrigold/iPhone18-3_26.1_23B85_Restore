@interface DMClientAPIController
- (BOOL)_migrateWithConnection:(id)connection checkNecessity:(BOOL)necessity lastRelevantPlugin:(id)plugin testMigrationInfrastructureOnly:(BOOL)only;
- (DMClientAPIController)init;
- (void)progressHostIsReady;
@end

@implementation DMClientAPIController

- (DMClientAPIController)init
{
  v5.receiver = self;
  v5.super_class = DMClientAPIController;
  v2 = [(DMClientAPIController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(DMClientAPIController *)v2 setConnectionMigrationMaximumAttempts:3];
    [(DMClientAPIController *)v3 setConnectionMigrationTimeIntervalToLastRetryDate:1.0];
  }

  return v3;
}

- (BOOL)_migrateWithConnection:(id)connection checkNecessity:(BOOL)necessity lastRelevantPlugin:(id)plugin testMigrationInfrastructureOnly:(BOOL)only
{
  onlyCopy = only;
  necessityCopy = necessity;
  connectionCopy = connection;
  pluginCopy = plugin;
  date = [MEMORY[0x277CBEAA8] date];
  [(DMClientAPIController *)self connectionMigrationTimeIntervalToLastRetryDate];
  v14 = [date dateByAddingTimeInterval:?];

  connectionMigrationMaximumAttempts = [(DMClientAPIController *)self connectionMigrationMaximumAttempts];
  if (!connectionMigrationMaximumAttempts)
  {
LABEL_13:
    v28 = 1;
    goto LABEL_20;
  }

  for (i = connectionMigrationMaximumAttempts - 1; ; --i)
  {
    v17 = [connectionCopy migrateCheckingNecessity:necessityCopy lastRelevantPlugin:pluginCopy testMigrationInfrastructureOnly:onlyCopy];
    if (v17 != 4)
    {
      if (v17 == 3)
      {
        v26 = v6;
        v32 = pluginCopy;
        v27 = @"Data migrator successful so far. Un-blocking because plugin %@ did finish";
      }

      else
      {
        if (v17 != 2)
        {
          v28 = v17 == 1;
          v29 = "NO";
          if (v17 == 1)
          {
            v29 = "YES";
          }

          _DMLogFunc(v6, 5, @"Data migrator completed with success: %s!", v18, v19, v20, v21, v22, v29);
          goto LABEL_20;
        }

        v26 = v6;
        v27 = @"Data migrator was not necessary";
      }

      _DMLogFunc(v26, 5, v27, v18, v19, v20, v21, v22, v32);
      goto LABEL_13;
    }

    if (!necessityCopy)
    {
      date2 = [MEMORY[0x277CBEAA8] date];
      v24 = [date2 compare:v14];

      if (v24 == 1)
      {
        break;
      }
    }

    v25 = v6;
    if (!i)
    {
      v30 = @"Data migrator XPC interruption. Will not retry, because we are out of retries.";
      goto LABEL_19;
    }

    _DMLogFunc(v6, 5, @"Data migrator XPC interruption. Will retry.", v18, v19, v20, v21, v22, v32);
  }

  v25 = v6;
  v30 = @"Data migrator XPC interruption. Will not retry, because too much time elapsed in the earlier attempt(s).";
LABEL_19:
  _DMLogFunc(v25, 5, v30, v18, v19, v20, v21, v22, v32);
  v28 = 0;
LABEL_20:

  return v28;
}

- (void)progressHostIsReady
{
  v12 = +[DMConnection connection];
  if (v12)
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v8, "msgID", 14);
    connection = [v12 connection];
    v10 = [connection sendMessageSync:v8];
  }

  else
  {
    _DMLogFunc(v2, 3, @"Can't connect to datamigrator!", v3, v4, v5, v6, v7, v11);
  }
}

@end