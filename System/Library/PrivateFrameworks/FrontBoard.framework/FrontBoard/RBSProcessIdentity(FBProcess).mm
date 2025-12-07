@interface RBSProcessIdentity(FBProcess)
- (id)fb_processClass;
- (void)fb_processClass;
@end

@implementation RBSProcessIdentity(FBProcess)

- (id)fb_processClass
{
  v8 = 0;
  v2 = [self treatedAsAnAppByFrontBoard:&v8];
  v3 = v8;
  v4 = v3;
  if (v3)
  {
    v5 = FBLogProcess(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessIdentity(FBProcess) fb_processClass];
    }
  }

  if ((v2 & 1) == 0)
  {
    [self isXPCService];
  }

  v6 = objc_opt_class();

  return v6;
}

- (void)fb_processClass
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_7_1();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_16(&dword_1A89DD000, v1, v1, "treatedAsAnAppByFrontBoard for %@ returned error %@", v2);
}

@end