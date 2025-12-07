@interface NSException
+ (NSException)exceptionWithName:(NSExceptionName)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo;
+ (NSException)exceptionWithName:(id)name reason:(id)reason userInfo:(id)info osLogPack:(void *)pack size:(unint64_t)size;
+ (void)raise:(NSExceptionName)name format:(NSString *)format;
+ (void)raise:(NSExceptionName)name format:(NSString *)format arguments:(va_list)argList;
- (BOOL)_installStackTraceKeyIfNeeded;
- (BOOL)isEqual:(id)equal;
- (NSDictionary)userInfo;
- (NSException)initWithName:(id)name reason:(id)reason userInfo:(id)info osLogPack:(void *)pack size:(unint64_t)size;
- (NSExceptionName)name;
- (NSString)reason;
- (id)description;
- (void)_markAsUnarchived;
- (void)dealloc;
@end

@implementation NSException

- (NSDictionary)userInfo
{
  v2 = self->userInfo;

  return v2;
}

- (NSExceptionName)name
{
  v2 = self->name;

  return v2;
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];

  v3.receiver = self;
  v3.super_class = NSException;
  [(NSException *)&v3 dealloc];
}

- (id)description
{
  result = self->reason;
  if (!result)
  {
    return self->name;
  }

  return result;
}

- (NSString)reason
{
  v2 = self->reason;

  return v2;
}

- (void)_markAsUnarchived
{
  if (!self->reserved)
  {
    __CFLookUpClass("NSMutableDictionary");
    v4 = objc_opt_new();
    self->reserved = v4;

    [v4 setObject:@"SENTINEL" forKey:@"_NSExceptionWasUnarchived"];
  }
}

- (BOOL)_installStackTraceKeyIfNeeded
{
  userInfo = self->userInfo;
  if (!userInfo)
  {
    goto LABEL_6;
  }

  if ([(NSDictionary *)userInfo objectForKey:@"NSStackTraceKey"])
  {
    LOBYTE(v4) = 0;
    return v4;
  }

  v5 = self->userInfo;
  if (v5)
  {
    v6 = [(NSDictionary *)v5 mutableCopy];
  }

  else
  {
LABEL_6:
    __CFLookUpClass("NSMutableDictionary");
    v6 = objc_opt_new();
  }

  self->userInfo = v6;
  v4 = [objc_msgSend(self->reserved objectForKey:{@"callStackReturnAddresses", "description"}];
  if (v4)
  {
    [(NSDictionary *)self->userInfo setObject:v4 forKey:@"NSStackTraceKey"];
    LOBYTE(v4) = 1;
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  if (!equal)
  {
    return 0;
  }

  v5 = objc_opt_class();
  if (v5 != objc_opt_class())
  {
    return 0;
  }

  name = self->name;
  v8 = *(equal + 1);

  return [(NSString *)name isEqual:v8];
}

- (NSException)initWithName:(id)name reason:(id)reason userInfo:(id)info osLogPack:(void *)pack size:(unint64_t)size
{
  v21[1] = *MEMORY[0x1E69E9840];
  self->name = [name copy];
  self->reason = [reason copy];
  self->userInfo = info;
  v12 = _os_log_pack_size();
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (pack)
  {
    goto LABEL_4;
  }

  v14 = v12;
  if (_NSIsNSCFConstantString(self->reason))
  {
    reason = self->reason;
    SystemEncoding = CFStringGetSystemEncoding();
    CStringPtr = CFStringGetCStringPtr(reason, SystemEncoding);
    v18 = _os_log_pack_fill(v13, v14, 0, &dword_1830E6000, "%s", v21[0]);
    *v18 = 136315138;
    *(v18 + 4) = CStringPtr;
    pack = v13;
LABEL_4:
    __CFLookUpClass("NSMutableDictionary");
    self->reserved = objc_opt_new();
    v19 = CFDataCreate(&__kCFAllocatorSystemDefault, pack, size);
    [self->reserved setObject:v19 forKey:@"osLogPack"];
  }

  return self;
}

+ (NSException)exceptionWithName:(NSExceptionName)name reason:(NSString *)reason userInfo:(NSDictionary *)userInfo
{
  v5 = [[self alloc] initWithName:name reason:reason userInfo:userInfo];

  return v5;
}

+ (NSException)exceptionWithName:(id)name reason:(id)reason userInfo:(id)info osLogPack:(void *)pack size:(unint64_t)size
{
  v7 = [[self alloc] initWithName:name reason:reason userInfo:info osLogPack:pack size:size];

  return v7;
}

+ (void)raise:(NSExceptionName)name format:(NSString *)format arguments:(va_list)argList
{
  if (format)
  {
    v7 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, argList);
  }

  else
  {
    v7 = &stru_1EF068AA8;
  }

  objc_exception_throw([self exceptionWithName:name reason:v7 userInfo:0]);
}

+ (void)raise:(NSExceptionName)name format:(NSString *)format
{
  va_start(va, format);
  v8 = *MEMORY[0x1E69E9840];
  if (format)
  {
    va_copy(v7, va);
    v6 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, va);
  }

  else
  {
    v6 = &stru_1EF068AA8;
  }

  objc_exception_throw([self exceptionWithName:name reason:v6 userInfo:{0, v7, v8}]);
}

@end