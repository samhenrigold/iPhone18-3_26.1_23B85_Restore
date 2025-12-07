@interface CHSApplicationProcessStateChangeConsumer
- (CHSApplicationProcessStateChangeConsumer)init;
- (CHSApplicationProcessStateChangeConsumer)initWithConnection:(id)connection;
- (void)applicationWithBundleIdentifierEnteredForeground:(id)foreground;
@end

@implementation CHSApplicationProcessStateChangeConsumer

- (CHSApplicationProcessStateChangeConsumer)init
{
  v3 = +[CHSChronoServicesConnection sharedInstance];
  v4 = [(CHSApplicationProcessStateChangeConsumer *)self initWithConnection:v3];

  return v4;
}

- (CHSApplicationProcessStateChangeConsumer)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = CHSApplicationProcessStateChangeConsumer;
  v6 = [(CHSApplicationProcessStateChangeConsumer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)applicationWithBundleIdentifierEnteredForeground:(id)foreground
{
  v8 = *MEMORY[0x1E69E9840];
  foregroundCopy = foreground;
  v5 = CHSLogChronoServices(foregroundCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = foregroundCopy;
    _os_log_impl(&dword_195EB2000, v5, OS_LOG_TYPE_DEFAULT, "noting foreground launch for %@ with widget extension; trigger metadata query", &v6, 0xCu);
  }

  [(CHSChronoServicesConnection *)self->_connection reloadDescriptorsForContainerBundleIdentifier:foregroundCopy completion:&__block_literal_global_3];
}

void __93__CHSApplicationProcessStateChangeConsumer_applicationWithBundleIdentifierEnteredForeground___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = CHSLogChronoServices(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __93__CHSApplicationProcessStateChangeConsumer_applicationWithBundleIdentifierEnteredForeground___block_invoke_cold_1(v7, v8);
    }
  }

  else
  {
    v8 = CHSLogChronoServices(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v3 = [v5 descriptors];
        v9 = [v3 count];
      }

      else
      {
        v9 = 0;
      }

      v10 = 134217984;
      v11 = v9;
      _os_log_impl(&dword_195EB2000, v8, OS_LOG_TYPE_DEFAULT, "CHSApplicationProcessStateChangeConsumer: cacheDescriptors request completed with %lu extensions found", &v10, 0xCu);
      if (v5)
      {
      }
    }
  }
}

void __93__CHSApplicationProcessStateChangeConsumer_applicationWithBundleIdentifierEnteredForeground___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_195EB2000, a2, OS_LOG_TYPE_ERROR, "CHSApplicationProcessStateChangeConsumer: cacheDescriptors request failed with error: %{public}@", &v2, 0xCu);
}

@end