@interface NSFileHandle(UserNotificationsCore)
- (id)unc_secureFileURL;
@end

@implementation NSFileHandle(UserNotificationsCore)

- (id)unc_secureFileURL
{
  v5 = *MEMORY[0x1E69E9840];
  if (fcntl([self fileDescriptor], 50, v4))
  {
    v1 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
    v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v2];
  }

  return v1;
}

@end