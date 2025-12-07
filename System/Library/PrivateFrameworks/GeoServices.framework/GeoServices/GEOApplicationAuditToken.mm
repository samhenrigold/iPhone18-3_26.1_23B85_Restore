@interface GEOApplicationAuditToken
+ (id)currentProcessAuditToken;
- (NSString)description;
- (NSString)offlineCohortId;
- (id)_bundleIdForAuditToken;
- (id)bundleId;
- (id)initCommon;
- (id)publicLogDescription;
- (unint64_t)hash;
@end

@implementation GEOApplicationAuditToken

- (id)_bundleIdForAuditToken
{
  v32 = *MEMORY[0x1E69E9840];
  geo_assert_isolated();
  p_resolvedBundleId = &self->_resolvedBundleId;
  if (!self->_resolvedBundleId && [(NSData *)self->_tokenData length]== 32)
  {
    v24 = 0u;
    *pid = 0u;
    [(NSData *)self->_tokenData getBytes:&v24 range:0, 32];
    *token.val = v24;
    *&token.val[4] = *pid;
    v4 = SecTaskCreateWithAuditToken(0, &token);
    if (v4)
    {
      if (AppSupportLibraryCore(0))
      {
        v23 = 0;
        v26 = 0;
        v27 = &v26;
        v28 = 0x2020000000;
        v5 = getCPCopyBundleIdentifierAndTeamFromSecTaskRefSymbolLoc_ptr;
        v29 = getCPCopyBundleIdentifierAndTeamFromSecTaskRefSymbolLoc_ptr;
        if (!getCPCopyBundleIdentifierAndTeamFromSecTaskRefSymbolLoc_ptr)
        {
          *token.val = MEMORY[0x1E69E9820];
          *&token.val[2] = 3221225472;
          *&token.val[4] = __getCPCopyBundleIdentifierAndTeamFromSecTaskRefSymbolLoc_block_invoke;
          *&token.val[6] = &unk_1E7073678;
          v31 = &v26;
          v6 = AppSupportLibrary();
          v7 = dlsym(v6, "CPCopyBundleIdentifierAndTeamFromSecTaskRef");
          *(v31[1] + 24) = v7;
          getCPCopyBundleIdentifierAndTeamFromSecTaskRefSymbolLoc_ptr = *(v31[1] + 24);
          v5 = v27[3];
        }

        _Block_object_dispose(&v26, 8);
        if (!v5)
        {
          v22 = dlerror();
          abort_report_np("%s", v22);
          __break(1u);
        }

        if (v5(v4, &v23, 0))
        {
          resolvedNetworkAttributionBundleId = self->_resolvedNetworkAttributionBundleId;
          self->_resolvedNetworkAttributionBundleId = v23;

          objc_storeStrong(&self->_resolvedBundleId, self->_resolvedNetworkAttributionBundleId);
        }
      }

      if (![(NSString *)self->_resolvedNetworkAttributionBundleId length])
      {
        v9 = SecTaskCopyValueForEntitlement(v4, @"application-identifier", 0);
        v11 = self->_resolvedNetworkAttributionBundleId;
        p_resolvedNetworkAttributionBundleId = &self->_resolvedNetworkAttributionBundleId;
        *p_resolvedNetworkAttributionBundleId = v9;

        objc_storeStrong(p_resolvedBundleId, *p_resolvedNetworkAttributionBundleId);
      }

      if (![(NSString *)*p_resolvedBundleId length])
      {
        v12 = SecTaskCopySigningIdentifier(v4, 0);
        v13 = *p_resolvedBundleId;
        *p_resolvedBundleId = &v12->isa;
      }

      CFRelease(v4);
    }

    if (![(NSString *)*p_resolvedBundleId length])
    {
      v14 = pid[1];
      v15 = proc_pidpath(pid[1], &token, 0x400u);
      if (v15 < 1)
      {
        v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unknown(%d)", v14];
        v16 = *p_resolvedBundleId;
        *p_resolvedBundleId = v19;
      }

      else
      {
        *(token.val + v15) = 0;
        v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&token];
        lastPathComponent = [v16 lastPathComponent];
        v18 = *p_resolvedBundleId;
        *p_resolvedBundleId = lastPathComponent;
      }
    }
  }

  v20 = *p_resolvedBundleId;

  return v20;
}

- (id)bundleId
{
  if ([(NSString *)self->_proxiedBundleId length])
  {
    _bundleIdForAuditToken = self->_proxiedBundleId;
  }

  else
  {
    v5 = self->_isolater;
    _geo_isolate_lock_data();
    _bundleIdForAuditToken = [(GEOApplicationAuditToken *)self _bundleIdForAuditToken];
    _geo_isolate_unlock();
  }

  return _bundleIdForAuditToken;
}

- (id)initCommon
{
  v7.receiver = self;
  v7.super_class = GEOApplicationAuditToken;
  v2 = [(GEOApplicationAuditToken *)&v7 init];
  if (v2)
  {
    v3 = geo_isolater_create();
    isolater = v2->_isolater;
    v2->_isolater = v3;

    v5 = v2;
  }

  return v2;
}

void __52__GEOApplicationAuditToken_currentProcessAuditToken__block_invoke()
{
  *task_info_out = 0u;
  v6 = 0u;
  task_info_outCnt = 8;
  if (!task_info(*MEMORY[0x1E69E9A60], 0xFu, task_info_out, &task_info_outCnt))
  {
    v0 = [GEOApplicationAuditToken alloc];
    v1 = [MEMORY[0x1E695DEF0] dataWithBytes:task_info_out length:32];
    v2 = [(GEOApplicationAuditToken *)v0 initWithAuditTokenData:v1];
    v3 = currentProcessAuditToken_result;
    currentProcessAuditToken_result = v2;
  }
}

+ (id)currentProcessAuditToken
{
  if (currentProcessAuditToken_once != -1)
  {
    dispatch_once(&currentProcessAuditToken_once, &__block_literal_global_165816);
  }

  v3 = currentProcessAuditToken_result;

  return v3;
}

- (NSString)offlineCohortId
{
  overrideOfflineCohortId = self->_overrideOfflineCohortId;
  if (overrideOfflineCohortId)
  {
    v3 = overrideOfflineCohortId;
  }

  else
  {
    v5 = [(GEOApplicationAuditToken *)self valueForEntitlement:@"com.apple.geoservices.offline.cohort-id"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v5 length])
    {
      bundleId = v5;
    }

    else
    {
      bundleId = [(GEOApplicationAuditToken *)self bundleId];
    }

    v3 = bundleId;
  }

  return v3;
}

- (id)publicLogDescription
{
  v3 = &stru_1EF7F3698;
  if (self->_proxiedExternalBundleId)
  {
    v3 = @" (ext)";
  }

  v4 = MEMORY[0x1E696AEC0];
  proxiedBundleId = self->_proxiedBundleId;
  v6 = v3;
  bundleId = [(GEOApplicationAuditToken *)self bundleId];
  v8 = [v4 stringWithFormat:@"ProxiedBundleId: %@%@, BundleId:%@, TokenData: %@", proxiedBundleId, v6, bundleId, self->_tokenData];

  return v8;
}

- (unint64_t)hash
{
  tokenData = self->_tokenData;
  if (tokenData || (tokenData = self->_proxiedBundleId) != 0)
  {

    return [(NSData *)tokenData hash];
  }

  else
  {
    v7 = v2;
    v8 = v3;
    v6.receiver = self;
    v6.super_class = GEOApplicationAuditToken;
    return [(GEOApplicationAuditToken *)&v6 hash];
  }
}

- (NSString)description
{
  if (self->_proxiedExternalBundleId)
  {
    v3 = @" (ext)";
  }

  else
  {
    v3 = &stru_1EF7F3698;
  }

  v4 = MEMORY[0x1E696AEC0];
  v5 = v3;
  v6 = objc_opt_class();
  proxiedBundleId = self->_proxiedBundleId;
  bundleId = [(GEOApplicationAuditToken *)self bundleId];
  v9 = [v4 stringWithFormat:@"<%@: %p> %@%@, %@, %@", v6, self, proxiedBundleId, v5, bundleId, self->_tokenData];

  return v9;
}

@end