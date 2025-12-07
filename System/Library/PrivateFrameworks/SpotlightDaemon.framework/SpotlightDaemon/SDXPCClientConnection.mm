@interface SDXPCClientConnection
- (SDXPCClientConnection)initWithServiceName:(id)name clientType:(int64_t)type;
- (void)handleError:(id)error;
- (void)invalidationHandler;
@end

@implementation SDXPCClientConnection

- (void)invalidationHandler
{
  v6 = *MEMORY[0x277D85DE8];
  serviceName = [self serviceName];
  v4 = 138412290;
  v5 = serviceName;
  _os_log_error_impl(&dword_231A35000, a2, OS_LOG_TYPE_ERROR, "##### connection invalidated %@", &v4, 0xCu);
}

- (void)handleError:(id)error
{
  string = xpc_dictionary_get_string(error, *MEMORY[0x277D86400]);
  v5 = logForCSLogCategoryDefault(string);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(SDXPCClientConnection *)string handleError:v5];
  }
}

- (SDXPCClientConnection)initWithServiceName:(id)name clientType:(int64_t)type
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = SDXPCClientConnection;
  v6 = [(CSXPCConnection *)&v12 initWithMachServiceName:nameCopy];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_UTILITY, 0);

    v9 = dispatch_queue_create([nameCopy UTF8String], v8);
    clientQueue = v6->_clientQueue;
    v6->_clientQueue = v9;
  }

  return v6;
}

- (void)handleError:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 serviceName];
  v6 = 136315394;
  v7 = a1;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_231A35000, a3, OS_LOG_TYPE_ERROR, "### Connection error %s for %@ ####", &v6, 0x16u);
}

@end