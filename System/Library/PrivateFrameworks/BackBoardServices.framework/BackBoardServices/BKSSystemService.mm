@interface BKSSystemService
- (BKSSystemService)init;
- (BOOL)canOpenApplication:(id)application reason:(int *)reason;
- (void)openApplication:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result;
- (void)openApplication:(id)application options:(id)options withResult:(id)result;
- (void)openURL:(id)l application:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result;
@end

@implementation BKSSystemService

- (BKSSystemService)init
{
  v8.receiver = self;
  v8.super_class = BKSSystemService;
  v2 = [(BKSSystemService *)&v8 init];
  if (v2)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = getFBSSystemServiceClass_softClass;
    v13 = getFBSSystemServiceClass_softClass;
    if (!getFBSSystemServiceClass_softClass)
    {
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __getFBSSystemServiceClass_block_invoke;
      v9[3] = &unk_1E6F476B0;
      v9[4] = &v10;
      __getFBSSystemServiceClass_block_invoke(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    fbsSystemService = v2->_fbsSystemService;
    v2->_fbsSystemService = v5;
  }

  return v2;
}

- (void)openURL:(id)l application:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result
{
  resultCopy = result;
  fbsSystemService = self->_fbsSystemService;
  v11 = resultCopy;
  v10 = resultCopy;
  [FBSSystemService openURL:"openURL:application:options:clientPort:withResult:" application:? options:? clientPort:? withResult:?];
}

uint64_t __70__BKSSystemService_openURL_application_options_clientPort_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openApplication:(id)application options:(id)options clientPort:(unsigned int)port withResult:(id)result
{
  resultCopy = result;
  fbsSystemService = self->_fbsSystemService;
  v10 = resultCopy;
  v9 = resultCopy;
  [FBSSystemService openApplication:"openApplication:options:clientPort:withResult:" options:? clientPort:? withResult:?];
}

uint64_t __66__BKSSystemService_openApplication_options_clientPort_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)openApplication:(id)application options:(id)options withResult:(id)result
{
  resultCopy = result;
  fbsSystemService = self->_fbsSystemService;
  v9 = resultCopy;
  v8 = resultCopy;
  [FBSSystemService openApplication:"openApplication:options:withResult:" options:? withResult:?];
}

uint64_t __55__BKSSystemService_openApplication_options_withResult___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)canOpenApplication:(id)application reason:(int *)reason
{
  if (!reason)
  {
    return [FBSSystemService canOpenApplication:"canOpenApplication:reason:" reason:?];
  }

  v6 = *reason;
  result = [FBSSystemService canOpenApplication:"canOpenApplication:reason:" reason:?];
  *reason = v6;
  return result;
}

@end