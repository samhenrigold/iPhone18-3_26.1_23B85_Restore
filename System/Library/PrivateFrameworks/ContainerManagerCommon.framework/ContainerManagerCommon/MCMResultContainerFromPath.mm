@interface MCMResultContainerFromPath
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultContainerFromPath)initWithUUID:(id)d containerPathIdentifier:(id)identifier identifier:(id)a5 containerClass:(unint64_t)class POSIXUser:(id)user personaUniqueString:(id)string sandboxToken:(id)token existed:(BOOL)self0 url:(id)self1 info:(id)self2 transient:(BOOL)self3 userManagedAssetsRelPath:(id)self4 creator:(id)self5 relativePath:(id)self6;
- (void)setRelativePath:(id)path;
@end

@implementation MCMResultContainerFromPath

- (void)setRelativePath:(id)path
{
  p_relativePath = &self->_relativePath;

  objc_storeStrong(p_relativePath, path);
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v10 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v9.receiver = self;
  v9.super_class = MCMResultContainerFromPath;
  v5 = [(MCMResultWithContainerBase *)&v9 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];
    if (error)
    {
LABEL_5:

      goto LABEL_6;
    }

    relativePath = [(MCMResultContainerFromPath *)self relativePath];

    if (relativePath)
    {
      error = [(MCMResultContainerFromPath *)self relativePath];
      xpc_dictionary_set_string(replyCopy, "ReplyRelativePath", [error UTF8String]);
      goto LABEL_5;
    }
  }

LABEL_6:

  return v5;
}

- (MCMResultContainerFromPath)initWithUUID:(id)d containerPathIdentifier:(id)identifier identifier:(id)a5 containerClass:(unint64_t)class POSIXUser:(id)user personaUniqueString:(id)string sandboxToken:(id)token existed:(BOOL)self0 url:(id)self1 info:(id)self2 transient:(BOOL)self3 userManagedAssetsRelPath:(id)self4 creator:(id)self5 relativePath:(id)self6
{
  v30 = *MEMORY[0x1E69E9840];
  relativePathCopy = relativePath;
  v29.receiver = self;
  v29.super_class = MCMResultContainerFromPath;
  v18 = [(MCMResultWithContainerBase *)&v29 initWithUUID:d containerPathIdentifier:identifier identifier:a5 containerClass:class POSIXUser:user personaUniqueString:string sandboxToken:token existed:existed url:url info:info transient:transient userManagedAssetsRelPath:path creator:creator];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_relativePath, relativePath);
  }

  return v19;
}

@end