@interface NSXPCConnection(SafariCoreExtras)
+ (id)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras;
+ (uint64_t)safari_applicationWithAuditToken:()SafariCoreExtras hasApprovedWebCredentialsDomainAssociationForDomain:;
- (id)safari_applicationRecordForConnectedProcess;
- (id)safari_arrayForEntitlement:()SafariCoreExtras;
- (id)safari_arrayForEntitlement:()SafariCoreExtras containingObjectsOfClass:;
- (uint64_t)safari_BOOLForEntitlement:()SafariCoreExtras;
- (uint64_t)safari_hasApprovedWebCredentialsDomainAssociationForDomain:()SafariCoreExtras;
@end

@implementation NSXPCConnection(SafariCoreExtras)

- (id)safari_applicationRecordForConnectedProcess
{
  v2 = MEMORY[0x1E696B0B8];
  objc_msgSend_auditToken(self, a2);
  v3 = [v2 safari_applicationRecordForConnectedProcessWithAuditToken:&v5];

  return v3;
}

+ (id)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3[1];
  *buf = *a3;
  v18 = v3;
  v16 = 0;
  v4 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v16];
  v5 = v16;
  v7 = v5;
  if (v4)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v10 = v4;
      goto LABEL_10;
    }

    v11 = WBS_LOG_CHANNEL_PREFIXXPC(isKindOfClass, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [(NSXPCConnection(SafariCoreExtras) *)v14 safari_applicationRecordForConnectedProcessWithAuditToken:buf, v11];
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXXPC(v5, v6);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      safari_privacyPreservingDescription = [v7 safari_privacyPreservingDescription];
      [(NSXPCConnection(SafariCoreExtras) *)safari_privacyPreservingDescription safari_applicationRecordForConnectedProcessWithAuditToken:buf, v11];
    }
  }

  v10 = 0;
LABEL_10:

  return v10;
}

+ (uint64_t)safari_applicationWithAuditToken:()SafariCoreExtras hasApprovedWebCredentialsDomainAssociationForDomain:
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = a3[1];
  *buf = *a3;
  v20 = v6;
  v7 = WBSApplicationIdentifierFromAuditToken(buf);
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69CDB30]);
    v9 = [v8 initWithServiceType:*MEMORY[0x1E69CDB48] applicationIdentifier:v7 domain:v5];
    v18 = 0;
    v10 = [MEMORY[0x1E69CDB28] serviceDetailsWithServiceSpecifier:v9 error:&v18];
    v11 = v18;
    v13 = v11;
    if (v10)
    {
      v14 = [v10 safari_containsObjectPassingTest:&__block_literal_global_33];
    }

    else
    {
      v15 = WBS_LOG_CHANNEL_PREFIXXPC(v11, v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        safari_privacyPreservingDescription = [v13 safari_privacyPreservingDescription];
        *buf = 138543362;
        *&buf[4] = safari_privacyPreservingDescription;
        _os_log_impl(&dword_1B8447000, v15, OS_LOG_TYPE_DEFAULT, "Could not load shared web credentials: %{public}@", buf, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (uint64_t)safari_BOOLForEntitlement:()SafariCoreExtras
{
  v1 = [self valueForEntitlement:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v1 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (id)safari_arrayForEntitlement:()SafariCoreExtras
{
  v1 = [self valueForEntitlement:?];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v3 = v1;
  }

  else
  {
    v3 = 0;
  }

  if (isKindOfClass)
  {
    v4 = 0;
  }

  else
  {
    v4 = v1;
  }

  return v3;
}

- (id)safari_arrayForEntitlement:()SafariCoreExtras containingObjectsOfClass:
{
  v5 = [self safari_arrayForEntitlement:a3];
  if ([v5 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __89__NSXPCConnection_SafariCoreExtras__safari_arrayForEntitlement_containingObjectsOfClass___block_invoke;
    v8[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
    v8[4] = a4;
    v6 = [v5 safari_filterObjectsUsingBlock:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)safari_hasApprovedWebCredentialsDomainAssociationForDomain:()SafariCoreExtras
{
  v4 = a3;
  v5 = objc_opt_class();
  objc_msgSend_auditToken(self);
  v6 = [v5 safari_applicationWithAuditToken:&v8 hasApprovedWebCredentialsDomainAssociationForDomain:v4];

  return v6;
}

+ (void)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Connected process bundle record has unexpected type: %{public}@.", buf, 0xCu);
}

+ (void)safari_applicationRecordForConnectedProcessWithAuditToken:()SafariCoreExtras .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Could not fetch bundle record for connected process: %{public}@.", buf, 0xCu);
}

@end