@interface PFAssertionPolicyLog
- (void)notifyAssertion:(id)assertion;
@end

@implementation PFAssertionPolicyLog

- (void)notifyAssertion:(id)assertion
{
  v21 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    assertionCopy = assertion;
    prettyMethodName = [assertionCopy prettyMethodName];
    fileName = [assertionCopy fileName];
    lineNumber = [assertionCopy lineNumber];
    message = [assertionCopy message];
    backtrace = [assertionCopy backtrace];

    v10 = [backtrace componentsJoinedByString:@"\n"];
    v11 = 138413314;
    v12 = prettyMethodName;
    v13 = 2112;
    v14 = fileName;
    v15 = 2048;
    v16 = lineNumber;
    v17 = 2112;
    v18 = message;
    v19 = 2112;
    v20 = v10;
    _os_log_error_impl(&dword_1D8B9C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure in %@, %@:%lu\nMessage: %@\nBacktrace:\n%@", &v11, 0x34u);
  }
}

@end