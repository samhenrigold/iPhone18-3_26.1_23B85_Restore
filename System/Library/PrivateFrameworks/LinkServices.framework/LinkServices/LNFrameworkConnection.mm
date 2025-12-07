@interface LNFrameworkConnection
- (BOOL)refreshWithOptions:(id)options;
- (void)connectWithOptions:(id)options;
@end

@implementation LNFrameworkConnection

- (BOOL)refreshWithOptions:(id)options
{
  v10 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = LNFrameworkConnection;
  if ([(LNConnection *)&v7 refreshWithOptions:options])
  {
    v4 = LNConnectionErrorWithCode(1001);
    v5 = getLNLogCategoryConnection();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v9 = v4;
      _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Unable to get remoteObjectProxyWithErrorHandler, error: %{public}@", buf, 0xCu);
    }

    [(LNConnection *)self setDisconnectedWithError:v4];
  }

  return 0;
}

- (void)connectWithOptions:(id)options
{
  v9 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = LNFrameworkConnection;
  [(LNConnection *)&v6 connectWithOptions:options];
  v4 = LNConnectionErrorWithCode(1001);
  v5 = getLNLogCategoryConnection();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&dword_19763D000, v5, OS_LOG_TYPE_ERROR, "Unable to get remoteObjectProxyWithErrorHandler, error: %{public}@", buf, 0xCu);
  }

  [(LNConnection *)self setDisconnectedWithError:v4];
}

@end