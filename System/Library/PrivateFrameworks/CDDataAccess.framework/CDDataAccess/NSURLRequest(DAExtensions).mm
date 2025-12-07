@interface NSURLRequest(DAExtensions)
- (id)DARequestByApplyingStorageSession:()DAExtensions;
@end

@implementation NSURLRequest(DAExtensions)

- (id)DARequestByApplyingStorageSession:()DAExtensions
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277CF3AF0] + 7);
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412546;
    v11 = a3;
    v12 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_24244C000, v5, v6, "Applying storage session %@ to request %@", &v10, 0x16u);
  }

  [self _CFURLRequest];
  MutableCopy = CFURLRequestCreateMutableCopy();
  _CFURLRequestSetStorageSession();
  v8 = [objc_alloc(MEMORY[0x277CBAB50]) _initWithCFURLRequest:MutableCopy];
  CFRelease(MutableCopy);

  return v8;
}

@end