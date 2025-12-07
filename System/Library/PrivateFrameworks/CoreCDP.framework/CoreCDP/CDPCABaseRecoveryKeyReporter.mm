@interface CDPCABaseRecoveryKeyReporter
- (void)reportRecoveryKeyTaskFinishedWithSuccess:(BOOL)success error:(id)error;
@end

@implementation CDPCABaseRecoveryKeyReporter

- (void)reportRecoveryKeyTaskFinishedWithSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:successCopy];
  [(CDPCAReporter *)self setObject:v6 forKeyedSubscript:@"wasSuccess"];

  if (errorCopy)
  {
    [(CDPCAReporter *)self populateUnderlyingErrorsStartingWithRootError:errorCopy maxDepth:3];
  }

  [(CDPCAReporter *)self sendReport];
}

@end