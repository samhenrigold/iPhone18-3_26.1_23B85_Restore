@interface OSSystemExtensionsWorkspace
+ (OSSystemExtensionsWorkspace)sharedWorkspace;
- (OSSystemExtensionsWorkspace)init;
- (id)systemExtensionsForApplicationWithBundleID:(id)d error:(id *)error;
@end

@implementation OSSystemExtensionsWorkspace

- (OSSystemExtensionsWorkspace)init
{
  v3.receiver = self;
  v3.super_class = OSSystemExtensionsWorkspace;
  return [(OSSystemExtensionsWorkspace *)&v3 init];
}

+ (OSSystemExtensionsWorkspace)sharedWorkspace
{
  if (sharedWorkspace_onceToken != -1)
  {
    +[OSSystemExtensionsWorkspace sharedWorkspace];
  }

  v3 = sharedWorkspace_workspace;

  return v3;
}

uint64_t __46__OSSystemExtensionsWorkspace_sharedWorkspace__block_invoke()
{
  sharedWorkspace_workspace = objc_alloc_init(OSSystemExtensionsWorkspace);

  return MEMORY[0x2821F96F8]();
}

- (id)systemExtensionsForApplicationWithBundleID:(id)d error:(id *)error
{
  v60[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  error = 0;
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v8 = [bundleIdentifier isEqualToString:dCopy];

  if ((v8 & 1) == 0)
  {
    v29 = MEMORY[0x277CCA9B8];
    v59 = *MEMORY[0x277CCA450];
    v60[0] = @"Apps can only query for system extensions embedded within them";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:&v59 count:1];
    v28 = [v29 errorWithDomain:@"OSSystemExtensionErrorDomain" code:1 userInfo:v30];

LABEL_19:
    v12 = 0;
    v10 = 0;
LABEL_20:
    obj = 0;
    v16 = 0;
    goto LABEL_21;
  }

  v9 = SecTaskCreateFromSelf(0);
  if (!v9)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [OSSystemExtensionsWorkspace systemExtensionsForApplicationWithBundleID:error:];
    }

    v28 = [MEMORY[0x277CCA9B8] errorWithDomain:@"OSSystemExtensionErrorDomain" code:1 userInfo:0];
    goto LABEL_19;
  }

  v10 = v9;
  v11 = SecTaskCopyValueForEntitlement(v9, @"com.apple.developer.system-extension.install", &error);
  if (!v11)
  {
    errorCopy = error;
    if (error)
    {
      [(__CFError *)error localizedDescription];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"Missing the %@ entitlement", @"com.apple.developer.system-extension.install"];
    }
    v37 = ;
    v38 = MEMORY[0x277CCA9B8];
    v57 = *MEMORY[0x277CCA450];
    v58 = v37;
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
    v28 = [v38 errorWithDomain:@"OSSystemExtensionErrorDomain" code:2 userInfo:v39];

    v12 = 0;
    goto LABEL_20;
  }

  v12 = v11;
  v13 = CFGetTypeID(v11);
  if (v13 != CFBooleanGetTypeID() || !CFBooleanGetValue(v12))
  {
    v34 = MEMORY[0x277CCA9B8];
    v55 = *MEMORY[0x277CCA450];
    v56 = @"Require com.apple.developer.system-extension.install:true in entitlement";
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
    v28 = [v34 errorWithDomain:@"OSSystemExtensionErrorDomain" code:2 userInfo:v35];

    goto LABEL_20;
  }

  mEMORY[0x277D06988] = [MEMORY[0x277D06988] sharedManager];
  v15 = [mEMORY[0x277D06988] driverApprovalStatesForThirdPartyApp:dCopy];

  if (!v15)
  {
    dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"DriverManagement returned nil for %@", dCopy];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [OSSystemExtensionsWorkspace systemExtensionsForApplicationWithBundleID:dCopy error:?];
    }

    v41 = MEMORY[0x277CCA9B8];
    v53 = *MEMORY[0x277CCA450];
    v54 = dCopy;
    v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v28 = [v41 errorWithDomain:@"OSSystemExtensionErrorDomain" code:1 userInfo:v42];

    goto LABEL_20;
  }

  v43 = v10;
  errorCopy2 = error;
  v45 = dCopy;
  v16 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v15;
  v17 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v48;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v48 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v47 + 1) + 8 * i);
        v22 = [OSSystemExtensionProperties alloc];
        bundleIdentifier2 = [v21 bundleIdentifier];
        driverIsApproved = [v21 driverIsApproved];
        displayName = [v21 displayName];
        usageText = [v21 usageText];
        v27 = [(OSSystemExtensionProperties *)v22 initWithBundleIdentifier:bundleIdentifier2 isEnabled:driverIsApproved displayName:displayName usageDescription:usageText];

        [v16 addObject:v27];
      }

      v18 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v18);
  }

  v28 = 0;
  error = errorCopy2;
  dCopy = v45;
  v10 = v43;
LABEL_21:
  if (error && !v16)
  {
    v31 = v28;
    *error = v28;
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  v32 = [v16 copy];

  return v32;
}

- (void)systemExtensionsForApplicationWithBundleID:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 138543362;
  v2 = a1;
  _os_log_error_impl(&dword_23AAC5000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}@", &v1, 0xCu);
}

@end