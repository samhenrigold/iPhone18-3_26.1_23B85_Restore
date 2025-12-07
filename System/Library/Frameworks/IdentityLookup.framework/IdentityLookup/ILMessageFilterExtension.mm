@interface ILMessageFilterExtension
- (void)beginRequestWithExtensionContext:(id)context;
@end

@implementation ILMessageFilterExtension

- (void)beginRequestWithExtensionContext:(id)context
{
  v7 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v4 = ILDefaultLog(contextCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = contextCopy;
    _os_log_impl(&dword_238A41000, v4, OS_LOG_TYPE_DEFAULT, "context: %@", &v5, 0xCu);
  }
}

@end