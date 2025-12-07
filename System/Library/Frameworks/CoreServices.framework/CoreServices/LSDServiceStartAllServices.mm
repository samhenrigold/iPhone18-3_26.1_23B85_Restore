@interface LSDServiceStartAllServices
@end

@implementation LSDServiceStartAllServices

void ___LSDServiceStartAllServices_block_invoke()
{
  v30 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v1 = _LSDServiceStartAllServices::services;
  _LSDServiceStartAllServices::services = v0;

  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = _LSDServiceStartAllServices::listeners;
  _LSDServiceStartAllServices::listeners = v2;

  *&buf = NSClassFromString(&cfstr_Lsdreadservice_0.isa);
  *(&buf + 1) = NSClassFromString(&cfstr_Lsdmodifyservi_0.isa);
  v25 = NSClassFromString(&cfstr_Lsdopenservice_0.isa);
  v26 = NSClassFromString(&cfstr_Lsddeviceident_0.isa);
  v27 = NSClassFromString(&cfstr_Lsdiconservice.isa);
  v28 = NSClassFromString(&cfstr_Lsdrebuildserv_0.isa);
  v29 = NSClassFromString(&cfstr_Lsdappprotecti_7.isa);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&buf count:7];
  if (!v4)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
    [v17 handleFailureInFunction:v18 file:@"LSDService.mm" lineNumber:333 description:{@"Failed to get LSDService subclass list for process %lu", getpid()}];
  }

  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 XPCConnectionIsAlwaysPrivileged];
        if (v11)
        {
          SharedInstance = __LSDefaultsGetSharedInstance(v11, v12);
          if ([SharedInstance proxyUIDForUID:getuid()])
          {
            continue;
          }
        }

        if ([v10 isEnabled])
        {
          [v5 addObject:v10];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  v15 = _LSDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v5 componentsJoinedByString:{@", "}];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v16;
    _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "Starting services: %@", &buf, 0xCu);
  }

  [v5 enumerateObjectsUsingBlock:&__block_literal_global_37];
}

void ___LSDServiceStartAllServices_block_invoke_34(uint64_t a1, void *a2)
{
  SharedInstance = __LSDefaultsGetSharedInstance(a1, a2);
  v4 = [a2 connectionType];
  v13 = [SharedInstance serviceNameForConnectionType:v4 lightweightSystemService:{objc_msgSend(__LSDefaultsGetSharedInstance(v4, v5), "isLightweightSystemServer")}];
  if (!v13)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
    [v8 handleFailureInFunction:v9 file:@"LSDService.mm" lineNumber:355 description:{@"Failed to create XPC service name for class %@", a2}];
  }

  v6 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:v13];
  if (v6)
  {
    v7 = [[a2 alloc] initWithXPCListener:v6];
    if (!v7)
    {
      v11 = [MEMORY[0x1E696AAA8] currentHandler];
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
      [v11 handleFailureInFunction:v12 file:@"LSDService.mm" lineNumber:364 description:{@"Failed to create XPC service object of class %@", a2}];
    }

    [v6 setDelegate:v7];
    [v6 resume];
    [_LSDServiceStartAllServices::services addObject:v7];
    [_LSDServiceStartAllServices::listeners addObject:v6];
  }

  else
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSDServiceStartAllServices()_block_invoke"];
    [v7 handleFailureInFunction:v10 file:@"LSDService.mm" lineNumber:360 description:{@"Failed to create XPC listener for class %@", a2}];
  }
}

@end