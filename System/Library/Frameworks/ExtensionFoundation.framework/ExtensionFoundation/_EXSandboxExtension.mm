@interface _EXSandboxExtension
+ (BOOL)sandboxed;
- (BOOL)consume;
- (_EXSandboxExtension)init;
- (_EXSandboxExtension)initWithCoder:(id)coder;
- (_EXSandboxExtension)initWithExtensionClass:(id)class machServiceName:(id)name process:(id *)process;
- (_EXSandboxExtension)initWithURL:(id)l readonly:(BOOL)readonly;
- (void)consume;
- (void)dealloc;
@end

@implementation _EXSandboxExtension

- (void)dealloc
{
  if (self->_consumedSandboxExtension != -1)
  {
    sandbox_extension_release();
  }

  v3.receiver = self;
  v3.super_class = _EXSandboxExtension;
  [(_EXSandboxExtension *)&v3 dealloc];
}

- (_EXSandboxExtension)init
{
  v3.receiver = self;
  v3.super_class = _EXSandboxExtension;
  result = [(_EXSandboxExtension *)&v3 init];
  if (result)
  {
    result->_consumedSandboxExtension = -1;
  }

  return result;
}

+ (BOOL)sandboxed
{
  if (sandboxed_onceToken != -1)
  {
    +[_EXSandboxExtension sandboxed];
  }

  return sandboxed__sandboxed;
}

- (BOOL)consume
{
  v15 = *MEMORY[0x1E69E9840];
  p_consumedSandboxExtension = &self->_consumedSandboxExtension;
  if (self->_consumedSandboxExtension == -1)
  {
    p_sandboxExtensionToken = &self->_sandboxExtensionToken;
    if ([(NSString *)self->_sandboxExtensionToken UTF8String])
    {
      [(NSString *)*p_sandboxExtensionToken UTF8String];
      v5 = sandbox_extension_consume();
      *p_consumedSandboxExtension = v5;
      if (v5 != -1)
      {
        v6 = _EXDefaultLog(v5);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [(_EXSandboxExtension *)p_sandboxExtensionToken consume];
        }

        v3 = 1;
LABEL_14:

        return v3;
      }
    }

    else
    {
      v7 = _EXDefaultLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        [(_EXSandboxExtension *)v7 consume];
      }

      *p_consumedSandboxExtension = -1;
    }

    v6 = _EXDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uTF8String = [(NSString *)*p_sandboxExtensionToken UTF8String];
      v9 = *__error();
      v11 = 136446466;
      v12 = uTF8String;
      v13 = 1024;
      v14 = v9;
    }

    v3 = 0;
    goto LABEL_14;
  }

  return 1;
}

- (_EXSandboxExtension)initWithExtensionClass:(id)class machServiceName:(id)name process:(id *)process
{
  classCopy = class;
  nameCopy = name;
  v10 = [(_EXSandboxExtension *)self init];
  if (v10)
  {
    [classCopy UTF8String];
    [nameCopy UTF8String];
    v16 = *process->var0;
    v17 = *&process->var0[4];
    v11 = sandbox_extension_issue_mach_to_process();
    if (v11)
    {
      v12 = v11;
      v10->_consumedSandboxExtension = -1;
      v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v11, v16, v17}];
      sandboxExtensionToken = v10->_sandboxExtensionToken;
      v10->_sandboxExtensionToken = v13;

      free(v12);
    }
  }

  return v10;
}

- (_EXSandboxExtension)initWithURL:(id)l readonly:(BOOL)readonly
{
  lCopy = l;
  v6 = [(_EXSandboxExtension *)self init];
  if (v6)
  {
    [lCopy fileSystemRepresentation];
    v7 = sandbox_extension_issue_file();
    if (v7)
    {
      v8 = v7;
      v6->_consumedSandboxExtension = -1;
      v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v7];
      sandboxExtensionToken = v6->_sandboxExtensionToken;
      v6->_sandboxExtensionToken = v9;

      free(v8);
    }
  }

  return v6;
}

- (_EXSandboxExtension)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = _EXSandboxExtension;
  v5 = [(_EXSandboxExtension *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_consumedSandboxExtension = -1;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sandboxExtensionToken"];
    sandboxExtensionToken = v6->_sandboxExtensionToken;
    v6->_sandboxExtensionToken = v7;
  }

  return v6;
}

- (void)consume
{
  v11 = *MEMORY[0x1E69E9840];
  uTF8String = [*self UTF8String];
  v6 = *a2;
  v7 = 136446466;
  v8 = uTF8String;
  v9 = 2048;
  v10 = v6;
}

@end