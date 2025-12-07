@interface PSYConnection
- (PSYConnection)init;
- (PSYConnectionDelegate)delegate;
- (id)remoteConnection;
- (void)startSyncWithOptions:(id)options;
@end

@implementation PSYConnection

- (PSYConnection)init
{
  v8.receiver = self;
  v8.super_class = PSYConnection;
  v2 = [(PSYConnection *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.pairedsyncd.connection" options:4096];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = v2->_connection;
    v6 = PSYConnectionXPCInterface();
    [(NSXPCConnection *)v5 setRemoteObjectInterface:v6];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)startSyncWithOptions:(id)options
{
  v13 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  v5 = optionsCopy;
  if (!optionsCopy)
  {
    optionsCopy = objc_alloc_init(PSYOptions);
    v5 = optionsCopy;
  }

  v6 = psy_log(optionsCopy);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

  if (v7)
  {
    v9 = psy_log(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&dword_25DF25000, v9, OS_LOG_TYPE_DEFAULT, "Starting sync with options: %{public}@", &v11, 0xCu);
    }
  }

  [(PSYConnection *)self setOptions:v5];
  remoteConnection = [(PSYConnection *)self remoteConnection];
  [remoteConnection startSyncWithOptions:v5];
}

- (id)remoteConnection
{
  connection = [(PSYConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (PSYConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end