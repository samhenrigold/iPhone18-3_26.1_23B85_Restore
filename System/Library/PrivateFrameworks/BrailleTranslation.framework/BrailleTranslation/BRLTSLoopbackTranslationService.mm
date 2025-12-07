@interface BRLTSLoopbackTranslationService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (NSXPCListener)listener;
@end

@implementation BRLTSLoopbackTranslationService

- (NSXPCListener)listener
{
  listener = self->_listener;
  if (!listener)
  {
    anonymousListener = [MEMORY[0x277CCAE98] anonymousListener];
    [(NSXPCListener *)anonymousListener setDelegate:self];
    [(NSXPCListener *)anonymousListener resume];
    v5 = self->_listener;
    self->_listener = anonymousListener;

    listener = self->_listener;
  }

  return listener;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v6 = BRLTLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = objc_opt_class();
    v12 = 2112;
    v13 = connectionCopy;
    v7 = v11;
    _os_log_impl(&dword_241DFD000, v6, OS_LOG_TYPE_DEFAULT, "%@: Accepting new connection: %@", &v10, 0x16u);
  }

  exportedInterface = [objc_opt_class() exportedInterface];
  [connectionCopy setExportedInterface:exportedInterface];

  [connectionCopy setExportedObject:self];
  [connectionCopy resume];

  return 1;
}

@end