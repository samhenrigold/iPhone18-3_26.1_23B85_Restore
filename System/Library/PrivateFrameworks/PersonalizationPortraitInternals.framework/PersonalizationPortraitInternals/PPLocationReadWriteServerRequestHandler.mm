@interface PPLocationReadWriteServerRequestHandler
- (void)clearWithCompletion:(id)completion;
- (void)cloudSyncWithCompletion:(id)completion;
- (void)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync decayRate:(double)rate completion:(id)completion;
@end

@implementation PPLocationReadWriteServerRequestHandler

- (void)clearWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPLocationReadWriteServer: clear", buf, 2u);
  }

  *buf = 0;
  v5 = +[PPLocalLocationStore defaultStore];
  v8 = 0;
  v6 = [v5 clearWithError:&v8 deletedCount:buf];
  v7 = v8;

  completionCopy[2](completionCopy, v6, *buf, v7);
}

- (void)cloudSyncWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_23224A000, v4, OS_LOG_TYPE_DEFAULT, "PPLocationReadWriteServer: cloudSync", v5, 2u);
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)donateLocations:(id)locations source:(id)source contextualNamedEntities:(id)entities algorithm:(unsigned __int16)algorithm cloudSync:(BOOL)sync decayRate:(double)rate completion:(id)completion
{
  syncCopy = sync;
  algorithmCopy = algorithm;
  v25 = *MEMORY[0x277D85DE8];
  locationsCopy = locations;
  completionCopy = completion;
  entitiesCopy = entities;
  sourceCopy = source;
  v18 = pp_xpc_server_log_handle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v24 = [locationsCopy count];
    _os_log_impl(&dword_23224A000, v18, OS_LOG_TYPE_DEFAULT, "PPLocationReadWriteServer: donateLocations: %tu locations", buf, 0xCu);
  }

  v19 = +[PPLocalLocationStore defaultStore];
  v22 = 0;
  v20 = [v19 donateLocations:locationsCopy source:sourceCopy contextualNamedEntities:entitiesCopy algorithm:algorithmCopy cloudSync:syncCopy error:&v22];

  v21 = v22;
  completionCopy[2](completionCopy, v20, v21);
}

@end