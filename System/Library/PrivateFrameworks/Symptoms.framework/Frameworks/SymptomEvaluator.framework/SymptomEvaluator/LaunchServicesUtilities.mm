@interface LaunchServicesUtilities
+ (id)appBundleIdentifierFromBundleRecord:(id)record isWebBrowser:(BOOL *)browser;
+ (id)implicitlyAssumedIdentityEntitlementForBundleIdentifier:(id)identifier;
+ (void)bundleIdentifier:(id)identifier hasEntitlement:(id)entitlement ofClass:(Class)class handler:(id)handler;
@end

@implementation LaunchServicesUtilities

+ (void)bundleIdentifier:(id)identifier hasEntitlement:(id)entitlement ofClass:(Class)class handler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  entitlementCopy = entitlement;
  handlerCopy = handler;
  v12 = objc_autoreleasePoolPush();
  v40 = 0;
  v13 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v42 = identifierCopy;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Fetching LSBundleRecord for %{private}@", buf, 0xCu);
  }

  v39 = 0;
  v14 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:identifierCopy allowPlaceholder:0 error:&v39];
  v15 = v39;
  if (v14)
  {
    v37 = v12;
    v16 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v14 isWebBrowser:&v40];
    if (!v16)
    {
      v26 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v42 = identifierCopy;
        v43 = 2113;
        v44 = v14;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "No appBundleIdentifier found for %{private}@ in bundleRecord %{private}@", buf, 0x16u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 6, v40);
      goto LABEL_31;
    }

    v17 = v16;
    if (([v16 isEqualToString:identifierCopy] & 1) == 0)
    {
      v36 = entitlementCopy;
      v18 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v42 = v17;
        _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "Fetching final LSBundleRecord for %{private}@", buf, 0xCu);
      }

      v38 = v15;
      v19 = [MEMORY[0x277CC1E90] bundleRecordWithBundleIdentifier:v17 allowPlaceholder:0 error:&v38];
      v20 = v38;

      if (!v19)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 7, v40);
        v14 = v17;
        v15 = v20;
        entitlementCopy = v36;
        goto LABEL_31;
      }

      v21 = [LaunchServicesUtilities appBundleIdentifierFromBundleRecord:v19 isWebBrowser:&v40];

      v17 = v21;
      v14 = v19;
      v15 = v20;
      entitlementCopy = v36;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v27 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138478083;
        v42 = v17;
        v43 = 1024;
        LODWORD(v44) = v40;
        _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "Not an app for %{private}@, isWebBrowser: %d", buf, 0x12u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 5, v40);

      goto LABEL_32;
    }

    v22 = entitlementCopy;
    v14 = v14;
    appTags = [v14 appTags];
    v24 = appTags;
    if (appTags && [appTags containsObject:@"hidden"])
    {
      v25 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        *buf = 138478083;
        v42 = v17;
        v43 = 1024;
        LODWORD(v44) = v40;
        _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "Hidden app for %{private}@, isWebBrowser: %d", buf, 0x12u);
      }

      (*(handlerCopy + 2))(handlerCopy, 0, 4, v40);
    }

    else
    {
      entitlements = [v14 entitlements];
      v29 = [entitlements objectForKey:v22 ofClass:class];

      v30 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
      {
        v31 = v30;
        v32 = objc_opt_class();
        v33 = NSStringFromClass(v32);
        *buf = 138478851;
        v42 = v29;
        v43 = 2112;
        v44 = v33;
        v45 = 2113;
        v46 = v17;
        v47 = 2112;
        v48 = v22;
        v49 = 1024;
        v50 = v40;
        _os_log_impl(&dword_23255B000, v31, OS_LOG_TYPE_INFO, "Fetched entitlementObj: %{private}@, class: %@, for: %{private}@, entitlement: %@, isWebBrowser: %d", buf, 0x30u);
      }

      if (v29)
      {
        v34 = v29;
        v35 = 0;
      }

      else
      {
        v34 = 0;
        v35 = 1;
      }

      (*(handlerCopy + 2))(handlerCopy, v34, v35, v40);
    }

    entitlementCopy = v22;
LABEL_31:
    v12 = v37;
LABEL_32:

    goto LABEL_33;
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 7, 0);
LABEL_33:

  objc_autoreleasePoolPop(v12);
}

+ (id)appBundleIdentifierFromBundleRecord:(id)record isWebBrowser:(BOOL *)browser
{
  v29 = *MEMORY[0x277D85DE8];
  recordCopy = record;
  if (!recordCopy)
  {
LABEL_20:
    bundleIdentifier3 = 0;
    goto LABEL_21;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    containingBundleRecord = [recordCopy containingBundleRecord];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = otherLogHandle;
      if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        bundleIdentifier = [recordCopy bundleIdentifier];
        bundleIdentifier2 = [containingBundleRecord bundleIdentifier];
        v16 = objc_opt_class();
        v17 = NSStringFromClass(v16);
        v23 = 138478339;
        v24 = bundleIdentifier;
        v25 = 2113;
        v26 = bundleIdentifier2;
        v27 = 2112;
        v28 = v17;
        _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_ERROR, "Unexpected nested extensions: %{private}@ -> %{private}@ (%@)", &v23, 0x20u);
      }

      bundleIdentifier3 = 0;
      goto LABEL_17;
    }

    bundleIdentifier3 = [containingBundleRecord bundleIdentifier];
    if (browser)
    {
      *browser = [containingBundleRecord isWebBrowser];
    }

    v8 = otherLogHandle;
    if (!os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
    {
LABEL_17:

      goto LABEL_21;
    }

    bundleIdentifier5 = v8;
    bundleIdentifier4 = [recordCopy bundleIdentifier];
    v23 = 138477827;
    v24 = bundleIdentifier4;
    _os_log_impl(&dword_23255B000, bundleIdentifier5, OS_LOG_TYPE_INFO, "Received containingBundleRecord for (%{private}@)", &v23, 0xCu);

LABEL_13:
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = otherLogHandle;
    if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v23 = 138412290;
      v24 = v21;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Unexpected class for bundleRecord (%@)", &v23, 0xCu);
    }

    goto LABEL_20;
  }

  bundleIdentifier3 = [recordCopy bundleIdentifier];
  if (browser)
  {
    *browser = [recordCopy isWebBrowser];
  }

  v11 = otherLogHandle;
  if (os_log_type_enabled(otherLogHandle, OS_LOG_TYPE_INFO))
  {
    containingBundleRecord = v11;
    bundleIdentifier5 = [recordCopy bundleIdentifier];
    v23 = 138477827;
    v24 = bundleIdentifier5;
    _os_log_impl(&dword_23255B000, containingBundleRecord, OS_LOG_TYPE_INFO, "Received LSApplication for (%{private}@)", &v23, 0xCu);
    goto LABEL_13;
  }

LABEL_21:

  return bundleIdentifier3;
}

+ (id)implicitlyAssumedIdentityEntitlementForBundleIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v5 = implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache;
  if (!implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache)
  {
    [LaunchServicesUtilities(ImplicitlyAssumedIdentityEntitlement) implicitlyAssumedIdentityEntitlementForBundleIdentifier:?];
    v5 = v15;
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = [v5 entryForKey:identifierCopy];
  v6 = v16[5];
  v7 = domainTrackingLogHandle;
  v8 = os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG);
  if (v6)
  {
    if (v8)
    {
      *buf = 138477827;
      v22 = identifierCopy;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Found privacy attribution cached entry for %{private}@", buf, 0xCu);
    }
  }

  else
  {
    if (v8)
    {
      *buf = 138412290;
      v22 = identifierCopy;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "Cache miss, looking up entitlements for %@", buf, 0xCu);
    }

    v9 = objc_opt_class();
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __121__LaunchServicesUtilities_ImplicitlyAssumedIdentityEntitlement__implicitlyAssumedIdentityEntitlementForBundleIdentifier___block_invoke;
    v12[3] = &unk_27898CDC8;
    v13 = identifierCopy;
    v14 = &v15;
    [self bundleIdentifier:v13 hasEntitlement:@"com.apple.private.attribution.implicitly-assumed-identity" ofClass:v9 handler:v12];
  }

  v10 = v16[5];
  _Block_object_dispose(&v15, 8);

  return v10;
}

void __121__LaunchServicesUtilities_ImplicitlyAssumedIdentityEntitlement__implicitlyAssumedIdentityEntitlementForBundleIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v7 = a2;
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      v9 = [v8 objectForKeyedSubscript:@"type"];
      v10 = [v8 objectForKeyedSubscript:@"value"];
      v11 = v10;
      v12 = domainTrackingLogHandle;
      if (v9 && v10)
      {
        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v29 = 138412547;
          v30 = v9;
          v31 = 2113;
          v32 = v11;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEBUG, "Entitlement has type '%@' and value %{private}@", &v29, 0x16u);
        }

        if ([v9 isEqualToString:@"bundleID"])
        {
          v13 = v11;
          v14 = domainTrackingLogHandle;
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            v29 = 138478083;
            v30 = v15;
            v31 = 2113;
            v32 = v13;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "Entitlement for %{private}@ has implied identifier %{private}@", &v29, 0x16u);
          }

          a3 = 2;
          goto LABEL_21;
        }

        v26 = [v9 isEqualToString:@"path"];
        v12 = domainTrackingLogHandle;
        if (v26)
        {
          if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *(a1 + 32);
            v29 = 138477827;
            v30 = v27;
            _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Entitlement for %{private}@ is 'path' type", &v29, 0xCu);
          }

          v13 = 0;
          a3 = 3;
          goto LABEL_21;
        }

        if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 32);
          v29 = 138412547;
          v30 = v9;
          v31 = 2113;
          v32 = v28;
          v22 = "Found unexpected 'type' of %@ in entitlement for %{private}@";
          goto LABEL_19;
        }
      }

      else if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
      {
        v29 = 138412547;
        v30 = v9;
        v31 = 2113;
        v32 = v11;
        v22 = "Entitlement keys are missing expected values - 'type': %@, 'value': %{private}@";
LABEL_19:
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_ERROR, v22, &v29, 0x16u);
      }

      a3 = 0;
      v13 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v18 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_ERROR))
    {
      v19 = v18;
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      v29 = 138412290;
      v30 = v21;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Found unexpected object of class %@ for entitlement, expecting a dictionary", &v29, 0xCu);
    }

    a3 = 0;
  }

  else
  {
    v16 = domainTrackingLogHandle;
    if (os_log_type_enabled(domainTrackingLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v29 = 138478083;
      v30 = v17;
      v31 = 2048;
      v32 = a3;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Ignored in LaunchServices for %{private}@, type %lu", &v29, 0x16u);
    }
  }

  v13 = 0;
LABEL_22:
  v23 = [[ImplicitlyAssumedIdentityEntitlement alloc] initWithType:a3 impliedBundleID:v13 isWebBrowser:a4];
  v24 = *(*(a1 + 40) + 8);
  v25 = *(v24 + 40);
  *(v24 + 40) = v23;

  [implicitlyAssumedIdentityEntitlementForBundleIdentifier__privacyAttributionCache addEntry:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
}

@end