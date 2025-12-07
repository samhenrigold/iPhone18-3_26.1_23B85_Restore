@interface EXDefaults
@end

@implementation EXDefaults

uint64_t __29___EXDefaults_sharedInstance__block_invoke()
{
  sharedInstance_defaults = [[_EXDefaults alloc] _init];

  return MEMORY[0x1EEE66BB8]();
}

void __39___EXDefaults_preferInProcessDiscovery__block_invoke()
{
  v0 = _os_feature_enabled_impl();
  preferInProcessDiscovery_value = v0;
  if (v0)
  {
    v1 = [MEMORY[0x1E6963648] sharedDatabaseContext];
    preferInProcessDiscovery_value = [v1 canAccess];
  }
}

void __33___EXDefaults_extensionItemTypes__block_invoke(uint64_t a1)
{
  v20[5] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFA8];
  v3 = [*(a1 + 32) plistTypes];
  v4 = [v2 setWithSet:v3];

  v5 = [*(a1 + 32) errorTypes];
  [v4 unionSet:v5];

  v20[0] = objc_opt_class();
  v20[1] = objc_opt_class();
  v20[2] = objc_opt_class();
  v20[3] = objc_opt_class();
  v20[4] = objc_opt_class();
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:5];
  [v4 addObjectsFromArray:v6];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [&unk_1EF29DE18 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(&unk_1EF29DE18);
        }

        v11 = NSClassFromString(*(*(&v15 + 1) + 8 * v10));
        if (v11)
        {
          [v4 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [&unk_1EF29DE18 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (([*(a1 + 32) useItemProviderXPCConnection] & 1) == 0)
  {
    v12 = NSClassFromString(&cfstr_Exitemprovider_1.isa);
    if (v12)
    {
      [v4 addObject:v12];
    }
  }

  v13 = [v4 copy];
  v14 = extensionItemTypes_types;
  extensionItemTypes_types = v13;
}

void __25___EXDefaults_errorTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[8] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:8];
  v4 = [v2 setWithArray:v3];
  v5 = errorTypes_errorTypes;
  errorTypes_errorTypes = v4;
}

void __25___EXDefaults_plistTypes__block_invoke(uint64_t a1, uint64_t a2)
{
  v6[10] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFD8];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v6[6] = objc_opt_class();
  v6[7] = objc_opt_class();
  v6[8] = objc_opt_class();
  v6[9] = objc_opt_class();
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:10];
  v4 = [v2 setWithArray:v3];
  v5 = plistTypes_plistTypes;
  plistTypes_plistTypes = v4;
}

uint64_t __43___EXDefaults_useItemProviderXPCConnection__block_invoke()
{
  result = _os_feature_enabled_impl();
  useItemProviderXPCConnection_value = result;
  return result;
}

void __33___EXDefaults_plistAndValueTypes__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) plistTypes];
  v1 = [v3 setByAddingObject:objc_opt_class()];
  v2 = plistAndValueTypes_types;
  plistAndValueTypes_types = v1;
}

void __32___EXDefaults_itemProviderTypes__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DFA8];
  v3 = [*(a1 + 32) plistTypes];
  v4 = [v2 setWithSet:v3];

  v5 = [*(a1 + 32) errorTypes];
  [v4 unionSet:v5];

  [v4 addObject:objc_opt_class()];
  [v4 addObject:objc_opt_class()];
  [v4 addObject:objc_opt_class()];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [&unk_1EF29DE30 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(&unk_1EF29DE30);
        }

        v10 = NSClassFromString(*(*(&v13 + 1) + 8 * v9));
        if (v10)
        {
          [v4 addObject:v10];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [&unk_1EF29DE30 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];
  v12 = itemProviderTypes_types;
  itemProviderTypes_types = v11;
}

void __25___EXDefaults_imageTypes__block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695DFA8] set];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [&unk_1EF29DE48 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    do
    {
      v4 = 0;
      do
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(&unk_1EF29DE48);
        }

        v5 = NSClassFromString(*(*(&v8 + 1) + 8 * v4));
        if (v5)
        {
          [v0 addObject:v5];
        }

        ++v4;
      }

      while (v2 != v4);
      v2 = [&unk_1EF29DE48 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v2);
  }

  v6 = [v0 copy];
  v7 = imageTypes_types;
  imageTypes_types = v6;
}

uint64_t __28___EXDefaults_appleInternal__block_invoke()
{
  result = os_variant_has_internal_content();
  appleInternal_appleInternal = result;
  return result;
}

uint64_t __54___EXDefaults_alwaysEnabledExtensionBundleIdentifiers__block_invoke()
{
  alwaysEnabledExtensionBundleIdentifiers_alwaysEnabled = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EF29DE60];

  return MEMORY[0x1EEE66BB8]();
}

void __41___EXDefaults_enforceXPCCacheCodeSigning__block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  bootarg_state = amfi_interface_query_bootarg_state();
  if (bootarg_state)
  {
    v1 = bootarg_state;
    v2 = _EXDefaultLog(bootarg_state);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v4 = strerror(v1);
      _os_log_impl(&dword_1847D1000, v2, OS_LOG_TYPE_DEFAULT, "amfi_interface_query_bootarg_state returned error %{public}s", buf, 0xCu);
    }
  }

  else
  {
    enforceXPCCacheCodeSigning_codeSigningEnforcementIsDisabled = 0;
  }
}

uint64_t __48___EXDefaults_allowedUnsandboxedExtensionPoints__block_invoke()
{
  allowedUnsandboxedExtensionPoints_allowList = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EF29DE78];

  return MEMORY[0x1EEE66BB8]();
}

@end