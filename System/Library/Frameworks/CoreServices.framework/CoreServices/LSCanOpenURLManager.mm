@interface LSCanOpenURLManager
@end

@implementation LSCanOpenURLManager

void __37___LSCanOpenURLManager_sharedManager__block_invoke()
{
  v0 = objc_alloc_init(_LSCanOpenURLManager);
  v1 = +[_LSCanOpenURLManager sharedManager]::result;
  +[_LSCanOpenURLManager sharedManager]::result = v0;
}

void __74___LSCanOpenURLManager_resetSchemeQueryLimitForApplicationWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];

  if (v2)
  {
    [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
    [*(a1 + 32) writeSchemesMap];
  }

  JUMPOUT(0x1865D7C50);
}

void __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  v15 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v15];
  v4 = v15;
  v6 = v4;
  if (v3)
  {
    v7 = [__LSDefaultsGetSharedInstance(v4 v5)];
    if (!v7)
    {
      v13 = [MEMORY[0x1E696AAA8] currentHandler];
      [v13 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"LSCanOpenURLManager.mm" lineNumber:172 description:@"Failed to get URL for lsd-schemes file"];
    }

    v14 = v6;
    v8 = [v3 writeToURL:v7 options:268435457 error:&v14];
    v9 = v14;

    if ((v8 & 1) == 0)
    {
      v11 = _LSDefaultLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = [v7 path];
        __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_1(v12, v9, buf, v11);
      }
    }
  }

  else
  {
    v7 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_2();
    }

    v9 = v6;
  }
}

void __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke(void *a1)
{
  v5 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = [v5 copy];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void __111___LSCanOpenURLManager_PrivateSchemeChecking__legacy_isBundleID_bundleData_context_allowedToCheckScheme_error___block_invoke_74(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 arrayByAddingObject:*(a1 + 48)];

    v5 = v4;
  }

  else
  {
    v6[0] = *(a1 + 48);
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  [*(*(a1 + 32) + 8) setObject:v5 forKeyedSubscript:*(a1 + 40)];
  MEMORY[0x1865D7C50]([*(a1 + 32) writeSchemesMap]);
}

void __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Could not store lsd-schemes file at %@: %@", buf, 0x16u);
}

void __62___LSCanOpenURLManager_PrivateSchemeChecking__writeSchemesMap__block_invoke_cold_2()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(&dword_18162D000, v0, OS_LOG_TYPE_ERROR, "Could not serialize lsd-schemes file: %@", v1, 0xCu);
}

@end