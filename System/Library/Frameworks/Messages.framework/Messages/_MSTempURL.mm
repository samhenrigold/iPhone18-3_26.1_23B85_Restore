@interface _MSTempURL
+ (BOOL)_isInvalidPath:(id)path;
+ (id)_resolvedTempDirectory;
- (_MSTempURL)initWithCoder:(id)coder;
- (void)dealloc;
@end

@implementation _MSTempURL

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  path = [(_MSTempURL *)self path];
  v4 = [objc_opt_class() _isInvalidPath:path];
  if (v4)
  {
    v5 = ms_defaultLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = path;
      _os_log_impl(&dword_1CADE6000, v5, OS_LOG_TYPE_DEFAULT, "suspicious _MSTempURL object found with path: [%@]", buf, 0xCu);
    }
  }

  else
  {
    v6 = dispatch_get_global_queue(-32768, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __21___MSTempURL_dealloc__block_invoke;
    block[3] = &unk_1E83A2C20;
    v9 = path;
    dispatch_async(v6, block);

    v5 = v9;
  }

  v7.receiver = self;
  v7.super_class = _MSTempURL;
  [(_MSTempURL *)&v7 dealloc];
}

- (_MSTempURL)initWithCoder:(id)coder
{
  v12 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v9.receiver = self;
    v9.super_class = _MSTempURL;
    self = [(_MSTempURL *)&v9 initWithCoder:coderCopy];
    selfCopy = self;
  }

  else
  {
    v7 = ms_defaultLog(isKindOfClass);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = coderCopy;
      _os_log_impl(&dword_1CADE6000, v7, OS_LOG_TYPE_DEFAULT, "suspicious _MSTempURL object encoded from coder: [%@]", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)_resolvedTempDirectory
{
  v2 = NSTemporaryDirectory();
  stringByResolvingSymlinksInPath = [v2 stringByResolvingSymlinksInPath];

  return stringByResolvingSymlinksInPath;
}

+ (BOOL)_isInvalidPath:(id)path
{
  stringByResolvingSymlinksInPath = [path stringByResolvingSymlinksInPath];
  _resolvedTempDirectory = [self _resolvedTempDirectory];
  v6 = [_resolvedTempDirectory stringByAppendingPathComponent:@"ms-"];

  LOBYTE(_resolvedTempDirectory) = [stringByResolvingSymlinksInPath hasPrefix:v6];
  return _resolvedTempDirectory ^ 1;
}

@end