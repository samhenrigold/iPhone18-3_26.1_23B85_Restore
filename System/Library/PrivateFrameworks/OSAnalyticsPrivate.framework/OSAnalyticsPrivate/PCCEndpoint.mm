@interface PCCEndpoint
- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error;
- (id)send:(id)send message:(id)message error:(id *)error;
- (id)synchronize:(id)synchronize withOptions:(id)options;
@end

@implementation PCCEndpoint

- (id)synchronize:(id)synchronize withOptions:(id)options
{
  v9[1] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = @"method not supported";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v5];

  return v6;
}

- (id)send:(id)send message:(id)message error:(id *)error
{
  v14[1] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  messageCopy = message;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ERROR: PCCEndpoint::sendMessage: doesn't do anything", v12, 2u);
  }

  if (error)
  {
    v9 = MEMORY[0x277CCA9B8];
    v13 = *MEMORY[0x277CCA450];
    v14[0] = @"method not supported";
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
    *error = [v9 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v10];
  }

  return 0;
}

- (id)send:(id)send file:(id)file metadata:(id)metadata error:(id *)error
{
  v17[1] = *MEMORY[0x277D85DE8];
  sendCopy = send;
  fileCopy = file;
  metadataCopy = metadata;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_25D12D000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "ERROR: PCCEndpoint::sendFile:metadata doesn't do anything", v15, 2u);
  }

  if (error)
  {
    v12 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277CCA450];
    v17[0] = @"method not supported";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *error = [v12 errorWithDomain:@"ProxyEndpointErrorDomain" code:1 userInfo:v13];
  }

  return 0;
}

@end