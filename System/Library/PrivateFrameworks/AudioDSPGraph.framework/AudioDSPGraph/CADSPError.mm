@interface CADSPError
+ (id)_errorForUnsupportedRemoteProcessingBlockScope:(unsigned int)scope connectionType:(id)type;
+ (id)createWithRealTimeError:(id)error;
+ (id)errorWithCode:(int64_t)code descriptionFormat:(id)format;
+ (id)errorWithCode:(int64_t)code userInfo:(const CADSPErrorUserInfo *)info;
- (CADSPError)initWithCode:(int64_t)code userInfo:(const CADSPErrorUserInfo *)info;
- (CADSPError)initWithRealTimeError:(id)error;
- (NSNumber)errorSourceLine;
- (NSString)errorSourceFile;
- (int)errorStatus;
- (int64_t)errorCode;
@end

@implementation CADSPError

- (NSNumber)errorSourceLine
{
  v6.receiver = self;
  v6.super_class = CADSPError;
  userInfo = [(CADSPError *)&v6 userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"CADSPErrorSourceLine"];
  v4 = [v3 copy];

  return v4;
}

- (NSString)errorSourceFile
{
  v6.receiver = self;
  v6.super_class = CADSPError;
  userInfo = [(CADSPError *)&v6 userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"CADSPErrorSourceFile"];
  v4 = [v3 copy];

  return v4;
}

- (int)errorStatus
{
  v6.receiver = self;
  v6.super_class = CADSPError;
  userInfo = [(CADSPError *)&v6 userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"CADSPErrorStatus"];
  intValue = [v3 intValue];

  return intValue;
}

- (int64_t)errorCode
{
  v3.receiver = self;
  v3.super_class = CADSPError;
  return [(CADSPError *)&v3 code];
}

- (CADSPError)initWithCode:(int64_t)code userInfo:(const CADSPErrorUserInfo *)info
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = CFGetAllocator(self);
  v8 = v7;
  v26 = 0u;
  v27 = 0u;
  *keys = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *values = 0u;
  v21 = 0u;
  if (info)
  {
    if (info->var0)
    {
      keys[0] = @"CADSPErrorStatus";
      v9 = CFNumberCreate(v7, kCFNumberSInt32Type, info);
      v10 = &values[1];
      v11 = &keys[1];
      values[0] = v9;
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v11 = keys;
      v10 = values;
    }

    var1 = info->var1;
    if (var1)
    {
      *v11 = *MEMORY[0x1E696A578];
      *v10 = CFStringCreateCopy(v8, var1);
      ++v12;
    }

    var2 = info->var2;
    if (var2)
    {
      keys[v12] = @"CADSPErrorSourceFile";
      values[v12] = CFStringCreateWithCStringNoCopy(v8, var2, 0x600u, *MEMORY[0x1E695E498]);
      keys[v12 + 1] = @"CADSPErrorSourceLine";
      values[v12 + 1] = CFNumberCreate(v8, kCFNumberSInt32Type, &info->var3);
      v12 += 2;
      v13 = CFDictionaryCreate(v8, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    else
    {
      v13 = CFDictionaryCreate(v8, keys, values, v12, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    v16 = values;
    do
    {
      CFRelease(*v16++);
      --v12;
    }

    while (v12);
  }

  else
  {
    v13 = CFDictionaryCreate(v7, keys, values, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

LABEL_13:
  v19.receiver = self;
  v19.super_class = CADSPError;
  v17 = [(CADSPError *)&v19 initWithDomain:@"com.apple.audio.AudioDSPGraph" code:code userInfo:v13];

  return v17;
}

+ (id)errorWithCode:(int64_t)code descriptionFormat:(id)format
{
  formatCopy = format;
  v11 = &v12;
  v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:formatCopy arguments:&v12];
  v9[0] = 0;
  v10 = 0u;
  v9[1] = v6;
  v7 = [CADSPError errorWithCode:code userInfo:v9];

  return v7;
}

+ (id)errorWithCode:(int64_t)code userInfo:(const CADSPErrorUserInfo *)info
{
  v6 = [CADSPError alloc];

  return [(CADSPError *)v6 initWithCode:code userInfo:info];
}

- (CADSPError)initWithRealTimeError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  v5 = errorCopy;
  if (!errorCopy)
  {
    v12 = 0;
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v10 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = 3;
    }

    else
    {
      v11 = 2;
    }

    v13 = 134217984;
    v14 = 0;
    _os_log_send_and_compose_impl(v11, &v12, &v15, 80, &dword_1C91AE000, v10, 16, "assertion failure: error != nullptr -> %llu", &v13);
    _os_crash_msg();
    __break(1u);
  }

  LODWORD(v15) = [errorCopy errorStatus];
  *(&v15 + 1) = 0;
  errorSourceFile = [v5 errorSourceFile];
  *&v16 = [errorSourceFile UTF8String];
  errorSourceLine = [v5 errorSourceLine];
  DWORD2(v16) = [errorSourceLine unsignedIntValue];
  v8 = -[CADSPError initWithCode:userInfo:](self, "initWithCode:userInfo:", [v5 errorCode], &v15);

  return v8;
}

+ (id)createWithRealTimeError:(id)error
{
  errorCopy = error;
  v4 = [[CADSPError alloc] initWithRealTimeError:errorCopy];

  return v4;
}

+ (id)_errorForUnsupportedRemoteProcessingBlockScope:(unsigned int)scope connectionType:(id)type
{
  v4 = *&scope;
  typeCopy = type;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unknown scope %u", v4];
  v8 = v7;
  if (v4 < 8)
  {
    v9 = *(&off_1E8334748 + v4);

    v8 = v9;
  }

  v10 = [self errorWithCode:1668049253 descriptionFormat:@"%@ cannot support %@", typeCopy, v8];

  return v10;
}

@end