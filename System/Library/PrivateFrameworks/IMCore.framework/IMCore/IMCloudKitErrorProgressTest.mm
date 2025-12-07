@interface IMCloudKitErrorProgressTest
- (IMCloudKitErrorProgressTest)initWithErrorCode:(int64_t)code;
- (void)willUpdateSyncState:(id)state;
@end

@implementation IMCloudKitErrorProgressTest

- (IMCloudKitErrorProgressTest)initWithErrorCode:(int64_t)code
{
  v8.receiver = self;
  v8.super_class = IMCloudKitErrorProgressTest;
  v4 = [(IMCloudKitErrorProgressTest *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E69A6DD0] code:code userInfo:0];
    error = v4->_error;
    v4->_error = v5;
  }

  return v4;
}

- (void)willUpdateSyncState:(id)state
{
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  stateCopy = state;
  error = [(IMCloudKitErrorProgressTest *)self error];
  v9[0] = error;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8 = [v4 serializedErrorArrayFromErrorArray_im:v7];
  [stateCopy setIMCloudKitSyncErrors:v8];
}

@end