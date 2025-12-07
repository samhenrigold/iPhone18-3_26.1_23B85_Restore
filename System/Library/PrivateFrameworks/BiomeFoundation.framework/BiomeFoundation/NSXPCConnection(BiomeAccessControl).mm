@interface NSXPCConnection(BiomeAccessControl)
- (BMProcess)bm_process;
- (id)bm_accessControlPolicy;
- (uint64_t)bm_connectionFlags;
- (void)setBm_accessControlPolicy:()BiomeAccessControl;
- (void)setBm_connectionFlags:()BiomeAccessControl;
@end

@implementation NSXPCConnection(BiomeAccessControl)

- (id)bm_accessControlPolicy
{
  bm_userInfo = [self bm_userInfo];
  v2 = [bm_userInfo objectForKeyedSubscript:@"bm_accessControlPolicy"];

  return v2;
}

- (BMProcess)bm_process
{
  v15 = *MEMORY[0x1E69E9840];
  bm_userInfo = [self bm_userInfo];
  v3 = [bm_userInfo objectForKeyedSubscript:@"bm_process"];

  if (v3)
  {
    goto LABEL_2;
  }

  v5 = [BMProcess alloc];
  objc_msgSend_auditToken(self);
  v3 = [(BMProcess *)v5 initWithAuditToken:&buf];
  bm_accessControlPolicy = [self bm_accessControlPolicy];

  if (!bm_accessControlPolicy)
  {
    bm_userInfo2 = [self bm_userInfo];
    [bm_userInfo2 setObject:v3 forKeyedSubscript:@"bm_process"];

LABEL_2:
    v3 = v3;
    v4 = v3;
    goto LABEL_9;
  }

  v7 = __biome_log_for_category(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v13 = 0x2020000000;
  v14 = 16;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__NSXPCConnection_BiomeAccessControl__bm_process__block_invoke;
  block[3] = &unk_1E796AC10;
  block[4] = &buf;
  if (bm_process_onceToken != -1)
  {
    dispatch_once(&bm_process_onceToken, block);
  }

  v8 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (os_log_type_enabled(v7, v8))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    _os_log_impl(&dword_1AC15D000, v7, v8, "Access control policy already set %@", &buf, 0xCu);
  }

  v4 = 0;
LABEL_9:

  return v4;
}

- (uint64_t)bm_connectionFlags
{
  bm_userInfo = [self bm_userInfo];
  v2 = [bm_userInfo objectForKeyedSubscript:@"bm_connectionFlags"];
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setBm_accessControlPolicy:()BiomeAccessControl
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  bm_accessControlPolicy = [self bm_accessControlPolicy];
  useCase = [bm_accessControlPolicy useCase];

  if (useCase)
  {
    v7 = __biome_log_for_category(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v16 = 0x2020000000;
    v17 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__NSXPCConnection_BiomeAccessControl__setBm_accessControlPolicy___block_invoke;
    block[3] = &unk_1E796AC10;
    block[4] = &buf;
    if (setBm_accessControlPolicy__onceToken != -1)
    {
      dispatch_once(&setBm_accessControlPolicy__onceToken, block);
    }

    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_12;
    }

    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    v9 = "Access control policy useCase cannot change %@";
    goto LABEL_11;
  }

  bm_process = [self bm_process];
  process = [v4 process];

  if (bm_process == process)
  {
    bm_userInfo = [self bm_userInfo];
    [bm_userInfo setObject:v4 forKeyedSubscript:@"bm_accessControlPolicy"];

    goto LABEL_13;
  }

  v7 = __biome_log_for_category(0);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v16 = 0x2020000000;
  v17 = 16;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__NSXPCConnection_BiomeAccessControl__setBm_accessControlPolicy___block_invoke_12;
  v13[3] = &unk_1E796AC10;
  v13[4] = &buf;
  if (setBm_accessControlPolicy__onceToken_11 != -1)
  {
    dispatch_once(&setBm_accessControlPolicy__onceToken_11, v13);
  }

  v8 = *(*(&buf + 1) + 24);
  _Block_object_dispose(&buf, 8);
  if (os_log_type_enabled(v7, v8))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = self;
    v9 = "Access control policy process mismatch %@";
LABEL_11:
    _os_log_impl(&dword_1AC15D000, v7, v8, v9, &buf, 0xCu);
  }

LABEL_12:

LABEL_13:
}

- (void)setBm_connectionFlags:()BiomeAccessControl
{
  v15 = *MEMORY[0x1E69E9840];
  bm_userInfo = [self bm_userInfo];
  v6 = [bm_userInfo objectForKeyedSubscript:@"bm_connectionFlags"];

  if (v6)
  {
    v7 = __biome_log_for_category(0);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x2020000000;
    v14 = 16;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __61__NSXPCConnection_BiomeAccessControl__setBm_connectionFlags___block_invoke;
    block[3] = &unk_1E796AC10;
    block[4] = &buf;
    if (setBm_connectionFlags__onceToken != -1)
    {
      dispatch_once(&setBm_connectionFlags__onceToken, block);
    }

    v8 = *(*(&buf + 1) + 24);
    _Block_object_dispose(&buf, 8);
    if (os_log_type_enabled(v7, v8))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1AC15D000, v7, v8, "Connection flags cannot change after being set %@", &buf, 0xCu);
    }
  }

  else
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    bm_userInfo2 = [self bm_userInfo];
    [bm_userInfo2 setObject:v10 forKeyedSubscript:@"bm_connectionFlags"];
  }
}

@end