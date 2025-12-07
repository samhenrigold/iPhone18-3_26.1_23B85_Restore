@interface CHRecentCall(Intents)
- (void)interaction;
@end

@implementation CHRecentCall(Intents)

- (void)interaction
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  selfCopy = self;
  v5 = 2114;
  v6 = a2;
  _os_log_error_impl(&dword_1C3E90000, log, OS_LOG_TYPE_ERROR, "Retrieving interaction for call with identifier %{public}@ failed with error %{public}@", &v3, 0x16u);
}

@end