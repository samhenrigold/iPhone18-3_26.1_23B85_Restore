@interface NSException(NSErrorConverting)
- (id)error;
@end

@implementation NSException(NSErrorConverting)

- (id)error
{
  v16[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  name = [self name];
  v4 = *MEMORY[0x1E696AA08];
  v16[0] = self;
  v5 = *MEMORY[0x1E696A278];
  v15[0] = v4;
  v15[1] = v5;
  userInfo = [self userInfo];
  v7 = userInfo;
  v8 = MEMORY[0x1E695E0F8];
  if (userInfo)
  {
    v8 = userInfo;
  }

  v16[1] = v8;
  v15[2] = *MEMORY[0x1E696A580];
  reason = [self reason];
  v10 = reason;
  v11 = &stru_1F548B930;
  if (reason)
  {
    v11 = reason;
  }

  v16[2] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:3];
  v13 = [v2 initWithDomain:name code:0 userInfo:v12];

  return v13;
}

@end