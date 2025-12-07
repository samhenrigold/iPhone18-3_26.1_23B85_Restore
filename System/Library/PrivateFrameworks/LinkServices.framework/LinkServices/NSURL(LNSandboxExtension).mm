@interface NSURL(LNSandboxExtension)
- (id)ln_sandboxExtendedURLWithAuditToken:()LNSandboxExtension;
@end

@implementation NSURL(LNSandboxExtension)

- (id)ln_sandboxExtendedURLWithAuditToken:()LNSandboxExtension
{
  v15 = *MEMORY[0x1E69E9840];
  path = [self path];
  [path fileSystemRepresentation];
  v6 = a3[1];
  *v14 = *a3;
  *&v14[16] = v6;
  v7 = sandbox_extension_issue_file_to_process();

  if (v7)
  {
    selfCopy = [self copy];
    v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v7 length:strlen(v7) + 1];
    MEMORY[0x19A8E56D0](selfCopy, v9);
  }

  else
  {
    v10 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = __error();
      v12 = strerror(*v11);
      *v14 = 138412546;
      *&v14[4] = self;
      *&v14[12] = 2080;
      *&v14[14] = v12;
      _os_log_impl(&dword_19763D000, v10, OS_LOG_TYPE_ERROR, "Could not create sandbox read extension for file URL %@, error: %s", v14, 0x16u);
    }

    selfCopy = self;
  }

  return selfCopy;
}

@end