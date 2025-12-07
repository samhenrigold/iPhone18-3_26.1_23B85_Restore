@interface CLKAssertionBlockSentinel
- (void)dealloc;
- (void)markCalled;
@end

@implementation CLKAssertionBlockSentinel

- (void)markCalled
{
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = [*(self + 16) UTF8String];
  OUTLINED_FUNCTION_0(&dword_23702D000, v1, v2, "Calling completion handler more than once in %s.", v3, v4, v5, v6, v7, DWORD2(v7));
}

- (void)dealloc
{
  LODWORD(v7) = 136315138;
  *(&v7 + 4) = [*(self + 16) UTF8String];
  OUTLINED_FUNCTION_0(&dword_23702D000, v1, v2, "Failed to call completion handler in %s.", v3, v4, v5, v6, v7, DWORD2(v7));
}

@end