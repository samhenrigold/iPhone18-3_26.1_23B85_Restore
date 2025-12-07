@interface BPSDrivableSink(BMBookmark)
- (void)newBookmark;
@end

@implementation BPSDrivableSink(BMBookmark)

- (void)newBookmark
{
  v7 = *MEMORY[0x1E69E9840];
  status = [self status];
  subscription = [status subscription];
  v5 = 138412290;
  v6 = subscription;
  _os_log_error_impl(&dword_1C871B000, a2, OS_LOG_TYPE_ERROR, "Subscription %@ could not create bookmark", &v5, 0xCu);
}

@end