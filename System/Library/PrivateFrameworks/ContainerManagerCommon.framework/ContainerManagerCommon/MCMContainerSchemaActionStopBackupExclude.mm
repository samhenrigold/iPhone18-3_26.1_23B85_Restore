@interface MCMContainerSchemaActionStopBackupExclude
+ (id)actionIdentifier;
- (BOOL)performWithError:(id *)error;
- (MCMContainerSchemaActionStopBackupExclude)initWithPathArgument:(id)argument context:(id)context;
- (NSString)description;
@end

@implementation MCMContainerSchemaActionStopBackupExclude

- (BOOL)performWithError:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  url = self->_url;
  v12[0] = 0;
  v5 = [(MCMContainerSchemaActionBase *)self fixAndRetryIfPermissionsErrorWithURL:url error:v12 duringBlock:&__block_literal_global_5411];
  v6 = v12[0];
  domain = [v6 domain];
  if ([domain isEqualToString:*MEMORY[0x1E696A798]])
  {
    code = [v6 code];

    if (code == 2)
    {

      v6 = 0;
      v5 = 1;
      goto LABEL_10;
    }
  }

  else
  {
  }

  if (error)
  {
    v9 = v5;
  }

  else
  {
    v9 = 1;
  }

  if ((v9 & 1) == 0)
  {
    v10 = v6;
    v5 = 0;
    *error = v6;
  }

LABEL_10:

  return v5;
}

uint64_t __62__MCMContainerSchemaActionStopBackupExclude_performWithError___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = a2;
  v5 = +[MCMFileManager defaultManager];
  v6 = [v5 removeExclusionFromBackupFromURL:v4 error:a3];

  return v6;
}

- (NSString)description
{
  actionIdentifier = [objc_opt_class() actionIdentifier];
  path = [(NSURL *)self->_url path];
  v5 = [actionIdentifier stringByAppendingFormat:@" [%@]", path];

  return v5;
}

- (MCMContainerSchemaActionStopBackupExclude)initWithPathArgument:(id)argument context:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  argumentCopy = argument;
  v11.receiver = self;
  v11.super_class = MCMContainerSchemaActionStopBackupExclude;
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

  return @"stop-backup-exclude";
}

@end