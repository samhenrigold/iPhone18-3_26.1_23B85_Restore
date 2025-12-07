@interface MCMContainerSchemaActionMkdir
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionMkdir)initWithPathArgument:(id)argument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionMkdir

- (BOOL)performWithError:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  uRLByDeletingLastPathComponent = [(NSURL *)self->_url URLByDeletingLastPathComponent];
  v16[4] = self;
  v17[0] = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke;
  v16[3] = &unk_1E86B10B8;
  v6 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:uRLByDeletingLastPathComponent error:v17 duringBlock:v16];
  v7 = v17[0];
  v8 = v7;
  if (v6)
  {
    url = self->_url;
    v14[4] = self;
    v15 = v7;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke_2;
    v14[3] = &unk_1E86B10B8;
    v10 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:url error:&v15 duringBlock:v14];
    v11 = v15;

    v8 = v11;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = 0;
    if (!error)
    {
      goto LABEL_7;
    }
  }

  if (!v10)
  {
    v12 = v8;
    *error = v8;
  }

LABEL_7:

  return v10;
}

uint64_t __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);

  return [v3 makedirAtURL:a2 followTerminalSymlink:1 error:a3];
}

uint64_t __50__MCMContainerSchemaActionMkdir_performWithError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);

  return [v3 makedirAtURL:a2 followTerminalSymlink:0 error:a3];
}

- (NSString)description
{
  actionIdentifier = [objc_opt_class() actionIdentifier];
  path = [(NSURL *)self->_url path];
  v5 = [actionIdentifier stringByAppendingFormat:@" [%@]", path];

  return v5;
}

- (MCMContainerSchemaActionMkdir)initWithPathArgument:(id)argument context:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  v11.receiver = self;
  v11.super_class = MCMContainerSchemaActionMkdir;
  v7 = [(MCMContainerSchemaActionBase *)&v11 initWithContext:context];
  if (v7)
  {
    fileURL = [argumentCopy fileURL];
    url = v7->_url;
    v7->_url = fileURL;

    if (!v7->_url)
    {

      v7 = 0;
    }
  }

  return v7;
}

+ (id)actionIdentifier
{

  return @"mkdir";
}

@end