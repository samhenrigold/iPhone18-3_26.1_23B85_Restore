@interface MCMResultWithURLBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultWithURLBase)initWithPath:(id)path existed:(BOOL)existed sandboxToken:(const char *)token;
- (MCMResultWithURLBase)initWithURL:(id)l existed:(BOOL)existed sandboxToken:(const char *)token;
- (void)dealloc;
@end

@implementation MCMResultWithURLBase

- (void)dealloc
{
  v5 = *MEMORY[0x1E69E9840];
  sandboxToken = self->_sandboxToken;
  if (sandboxToken)
  {
    free(sandboxToken);
    memset_s(&self->_sandboxToken, 8uLL, 0, 8uLL);
  }

  v4.receiver = self;
  v4.super_class = MCMResultWithURLBase;
  [(MCMResultWithURLBase *)&v4 dealloc];
}

- (MCMResultWithURLBase)initWithPath:(id)path existed:(BOOL)existed sandboxToken:(const char *)token
{
  v15 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v14.receiver = self;
  v14.super_class = MCMResultWithURLBase;
  v10 = [(MCMResultBase *)&v14 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_path, path);
    if (token)
    {
      v12 = strndup(token, 0x800uLL);
    }

    else
    {
      v12 = 0;
    }

    v11->_sandboxToken = v12;
    v11->_existed = existed;
  }

  return v11;
}

- (MCMResultWithURLBase)initWithURL:(id)l existed:(BOOL)existed sandboxToken:(const char *)token
{
  existedCopy = existed;
  lCopy = l;
  path = [lCopy path];
  v11 = [(MCMResultWithURLBase *)self initWithPath:path existed:existedCopy sandboxToken:token];

  if (v11)
  {
    objc_storeStrong(&v11->_url, l);
  }

  return v11;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = MCMResultWithURLBase;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      path = [(MCMResultWithURLBase *)self path];

      if (path)
      {
        path2 = [(MCMResultWithURLBase *)self path];
        fileSystemRepresentation = [path2 fileSystemRepresentation];

        if (fileSystemRepresentation)
        {
          xpc_dictionary_set_string(replyCopy, "ReplyPath", fileSystemRepresentation);
        }
      }

      if ([(MCMResultWithURLBase *)self sandboxToken])
      {
        xpc_dictionary_set_string(replyCopy, "ReplySandboxToken", [(MCMResultWithURLBase *)self sandboxToken]);
      }

      xpc_dictionary_set_BOOL(replyCopy, "ReplyExisted", [(MCMResultWithURLBase *)self existed]);
    }
  }

  return v5;
}

@end