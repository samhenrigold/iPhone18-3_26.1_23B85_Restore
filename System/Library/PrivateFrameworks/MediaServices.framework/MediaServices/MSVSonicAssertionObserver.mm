@interface MSVSonicAssertionObserver
- (void)assertion:(id)assertion didInvalidateWithError:(id)error;
@end

@implementation MSVSonicAssertionObserver

- (void)assertion:(id)assertion didInvalidateWithError:(id)error
{
  v13 = *MEMORY[0x1E69E9840];
  assertionCopy = assertion;
  errorCopy = error;
  v7 = os_log_create("com.apple.amp.MediaServices", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v9 = 134218242;
    v10 = assertionCopy;
    v11 = 2114;
    v12 = errorCopy;
    _os_log_impl(&dword_1AC81F000, v7, OS_LOG_TYPE_ERROR, "[MSVSonicAssertion] RBSAssertion %p was invalidated error=%{public}@", &v9, 0x16u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MSVSonicAssertionsWereInvalidatedNotification" object:0];
}

@end