@interface NSXPCConnection(FPAdditions)
- (BOOL)fp_hasSandboxAccessToFile:()FPAdditions accessType:logLevel:;
- (NSObject)fp_applicationGroups;
- (id)fp_bundleIdentifier;
- (id)fp_bundleRecord;
- (uint64_t)fp_hasOneOfEntitlements:()FPAdditions nonSandboxedAccess:logLevel:;
- (void)fp_annotateInvocation:()FPAdditions withLogSection:;
- (void)fp_applicationGroups;
- (void)fp_userInfo;
@end

@implementation NSXPCConnection(FPAdditions)

- (void)fp_userInfo
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  selfCopy = self;
  _os_log_fault_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_FAULT, "[CRIT] %{public}@", &v2, 0xCu);
}

- (id)fp_bundleIdentifier
{
  v2 = [self valueForEntitlement:@"application-identifier"];
  v3 = v2;
  if (!v2 || (FPAppIdentifierFromTeamAppTuple(v2), (bundleIdentifier = objc_claimAutoreleasedReturnValue()) == 0))
  {
    fp_bundleRecord = [self fp_bundleRecord];
    bundleIdentifier = [fp_bundleRecord bundleIdentifier];
  }

  return bundleIdentifier;
}

- (NSObject)fp_applicationGroups
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = [self valueForEntitlement:@"com.apple.security.application-groups"];
  if (!v1)
  {
LABEL_18:
    v7 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v2 = fp_current_or_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [NSXPCConnection(FPAdditions) fp_applicationGroups];
    }

LABEL_17:

    goto LABEL_18;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = v1;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v8 = fp_current_or_default_log();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [NSXPCConnection(FPAdditions) fp_applicationGroups];
          }

          goto LABEL_17;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = v2;
LABEL_19:

  return v7;
}

- (BOOL)fp_hasSandboxAccessToFile:()FPAdditions accessType:logLevel:
{
  v52 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v49 = 0u;
  v50 = 0u;
  objc_msgSend_auditToken(self);
  memset(buf, 0, 32);
  fileSystemRepresentation = [v7 fileSystemRepresentation];
  if (sandbox_check_by_audit_token())
  {
    v48 = 0;
    v8 = [v7 checkResourceIsReachableAndReturnError:{&v48, fileSystemRepresentation}];
    v9 = v48;
    if (v8)
    {
      v47 = 0;
      v10 = [v7 getResourceValue:&v47 forKey:*MEMORY[0x1E695DBC8] error:0];
      v11 = v47;
      uRLByDeletingLastPathComponent = v11;
      if (!v10 || !-[NSObject BOOLValue](v11, "BOOLValue") || ([v7 path], v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "stringByDeletingLastPathComponent"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "fileSystemRepresentation"), *buf = v49, *&buf[16] = v50, v43 = v15, v16 = sandbox_check_by_audit_token(), v14, v13, v16))
      {
        if (a5)
        {
          if (a5 == 2)
          {
            [self processIdentifier];
            v17 = FPExecutableNameForProcessIdentifier();
          }

          else
          {
            v17 = @"<restricted>";
          }

          v24 = fp_current_or_default_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            processIdentifier = [self processIdentifier];
            fp_shortDescription = [v7 fp_shortDescription];
            *buf = 67109634;
            *&buf[4] = processIdentifier;
            *&buf[8] = 2112;
            *&buf[10] = v17;
            *&buf[18] = 2112;
            *&buf[20] = fp_shortDescription;
            _os_log_debug_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) doesn't have sandbox access to %@", buf, 0x1Cu);
          }

          v21 = 0;
          goto LABEL_66;
        }

        v21 = 0;
LABEL_67:

        goto LABEL_68;
      }

      if (a5)
      {
        if (a5 == 2)
        {
          [self processIdentifier];
          v17 = FPExecutableNameForProcessIdentifier();
        }

        else
        {
          v17 = @"<restricted>";
        }

        v24 = fp_current_or_default_log();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
        {
          processIdentifier2 = [self processIdentifier];
          fp_shortDescription2 = [v7 fp_shortDescription];
          *buf = 67109634;
          *&buf[4] = processIdentifier2;
          *&buf[8] = 2112;
          *&buf[10] = v17;
          *&buf[18] = 2112;
          *&buf[20] = fp_shortDescription2;
          _os_log_debug_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) has sandbox access to the parent path of %@", buf, 0x1Cu);
        }

        v21 = 1;
        goto LABEL_66;
      }

LABEL_23:
      v21 = 1;
      goto LABEL_67;
    }

    if (!_CFURLIsItemPromiseAtURL())
    {
      v18 = _CFURLCopyPromiseURLOfLogicalURL();
      uRLByDeletingLastPathComponent = v18;
      if (v18)
      {
        fileSystemRepresentation2 = [v18 fileSystemRepresentation];
        *buf = v49;
        *&buf[16] = v50;
        v44 = fileSystemRepresentation2;
        v20 = sandbox_check_by_audit_token();
        v21 = v20 == 0;
        if (!v20)
        {
          if (!a5)
          {
            goto LABEL_67;
          }

          if (a5 == 2)
          {
            [self processIdentifier];
            v17 = FPExecutableNameForProcessIdentifier();
          }

          else
          {
            v17 = @"<restricted>";
          }

          v24 = fp_current_or_default_log();
          if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_66;
          }

          processIdentifier3 = [self processIdentifier];
          fp_shortDescription3 = [v7 fp_shortDescription];
          *buf = 67109634;
          *&buf[4] = processIdentifier3;
          *&buf[8] = 2112;
          *&buf[10] = v17;
          *&buf[18] = 2112;
          *&buf[20] = fp_shortDescription3;
          v30 = "[DEBUG] PID %d (%@) has sandbox access to the promise of %@";
LABEL_60:
          _os_log_debug_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_DEBUG, v30, buf, 0x1Cu);

LABEL_66:
          goto LABEL_67;
        }

        v46 = v9;
        v22 = [uRLByDeletingLastPathComponent checkResourceIsReachableAndReturnError:&v46, v44];
        v23 = v46;

        if (v22)
        {
          if (a5)
          {
            if (a5 == 2)
            {
              [self processIdentifier];
              v17 = FPExecutableNameForProcessIdentifier();
            }

            else
            {
              v17 = @"<restricted>";
            }

            v24 = fp_current_or_default_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
            {
              processIdentifier4 = [self processIdentifier];
              fp_shortDescription4 = [v7 fp_shortDescription];
              *buf = 67109634;
              *&buf[4] = processIdentifier4;
              *&buf[8] = 2112;
              *&buf[10] = v17;
              *&buf[18] = 2112;
              *&buf[20] = fp_shortDescription4;
              _os_log_debug_impl(&dword_1AAAE1000, v24, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) doesn't have sandbox access to %@ or its fault", buf, 0x1Cu);
            }

            v9 = v23;
            goto LABEL_66;
          }

          v9 = v23;
          goto LABEL_67;
        }

        v9 = v23;
      }

      else
      {
        v25 = fp_current_or_default_log();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          [NSXPCConnection(FPAdditions) fp_hasSandboxAccessToFile:v7 accessType:v25 logLevel:?];
        }
      }
    }

    uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
    fileSystemRepresentation3 = [uRLByDeletingLastPathComponent fileSystemRepresentation];
    *buf = v49;
    *&buf[16] = v50;
    v45 = fileSystemRepresentation3;
    v27 = sandbox_check_by_audit_token();
    v21 = v27 == 0;
    if (v27)
    {
      if (!a5)
      {
        goto LABEL_67;
      }

      if (a5 == 2)
      {
        [self processIdentifier];
        v17 = FPExecutableNameForProcessIdentifier();
      }

      else
      {
        v17 = @"<restricted>";
      }

      v24 = fp_current_or_default_log();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      processIdentifier5 = [self processIdentifier];
      fp_shortDescription3 = [v7 fp_shortDescription];
      *buf = 67109634;
      *&buf[4] = processIdentifier5;
      *&buf[8] = 2112;
      *&buf[10] = v17;
      *&buf[18] = 2112;
      *&buf[20] = fp_shortDescription3;
      v30 = "[DEBUG] PID %d (%@) doesn't have sandbox access to %@ or its fault";
    }

    else
    {
      if (!a5)
      {
        goto LABEL_67;
      }

      if (a5 == 2)
      {
        [self processIdentifier];
        v17 = FPExecutableNameForProcessIdentifier();
      }

      else
      {
        v17 = @"<restricted>";
      }

      v24 = fp_current_or_default_log();
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_66;
      }

      processIdentifier6 = [self processIdentifier];
      fp_shortDescription3 = [v7 fp_shortDescription];
      *buf = 67109634;
      *&buf[4] = processIdentifier6;
      *&buf[8] = 2112;
      *&buf[10] = v17;
      *&buf[18] = 2112;
      *&buf[20] = fp_shortDescription3;
      v30 = "[DEBUG] PID %d (%@) has sandbox access to non-existent %@";
    }

    goto LABEL_60;
  }

  if (a5)
  {
    if (a5 == 2)
    {
      [self processIdentifier];
      v9 = FPExecutableNameForProcessIdentifier();
    }

    else
    {
      v9 = @"<restricted>";
    }

    uRLByDeletingLastPathComponent = fp_current_or_default_log();
    if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_DEBUG))
    {
      processIdentifier7 = [self processIdentifier];
      fp_shortDescription5 = [v7 fp_shortDescription];
      *buf = 67109634;
      *&buf[4] = processIdentifier7;
      *&buf[8] = 2112;
      *&buf[10] = v9;
      *&buf[18] = 2112;
      *&buf[20] = fp_shortDescription5;
      _os_log_debug_impl(&dword_1AAAE1000, uRLByDeletingLastPathComponent, OS_LOG_TYPE_DEBUG, "[DEBUG] PID %d (%@) has sandbox access to %@", buf, 0x1Cu);
    }

    goto LABEL_23;
  }

  v21 = 1;
LABEL_68:

  return v21;
}

- (uint64_t)fp_hasOneOfEntitlements:()FPAdditions nonSandboxedAccess:logLevel:
{
  v30 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = a3;
  v8 = [(__CFString *)v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [self fp_valueForEntitlement:{*(*(&v19 + 1) + 8 * v11), v19}];
        if (v12)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([v12 BOOLValue]& 1) != 0)
          {
            v14 = 1;
            v13 = v7;
            goto LABEL_26;
          }
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [(__CFString *)v7 countByEnumeratingWithState:&v19 objects:v29 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = [self fp_valueForEntitlement:@"com.apple.internal.fileprovider.debug"];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([(__CFString *)v13 BOOLValue])
      {
        if (!a5)
        {
          v14 = 1;
          goto LABEL_27;
        }

        if (a5 == 2)
        {
          [self processIdentifier];
          v12 = FPExecutableNameForProcessIdentifier();
        }

        else
        {
          v12 = @"<restricted>";
        }

        v16 = fp_current_or_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          processIdentifier = [self processIdentifier];
          *buf = 67109634;
          v24 = processIdentifier;
          v25 = 2112;
          v26 = v12;
          v27 = 2112;
          v28 = @"com.apple.internal.fileprovider.debug";
          _os_log_impl(&dword_1AAAE1000, v16, OS_LOG_TYPE_DEFAULT, "[NOTICE] Allowing request from PID %d (%@) because it has the %@ entitlement.", buf, 0x1Cu);
        }

        v14 = 1;
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }
    }
  }

  if (a5)
  {
    if (a5 == 2)
    {
      [self processIdentifier];
      v13 = FPExecutableNameForProcessIdentifier();
    }

    else
    {
      v13 = @"<restricted>";
    }

    v12 = fp_current_or_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [self processIdentifier];
      *buf = 67109634;
      v24 = processIdentifier2;
      v25 = 2112;
      v26 = v13;
      v27 = 2112;
      v28 = v7;
      _os_log_error_impl(&dword_1AAAE1000, v12, OS_LOG_TYPE_ERROR, "[ERROR] Rejecting request from PID %d (%@) because it does not have any of these entitlements: %@", buf, 0x1Cu);
    }

    v14 = 0;
    goto LABEL_26;
  }

  v14 = 0;
LABEL_28:

  return v14;
}

- (id)fp_bundleRecord
{
  v2 = objc_getAssociatedObject(self, kFPBundleRecordAssociatedObjectKey);
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = MEMORY[0x1E6963620];
    objc_msgSend_auditToken(self);
    v4 = [v5 bundleRecordForAuditToken:&v7 error:0];
    objc_setAssociatedObject(self, kFPBundleRecordAssociatedObjectKey, v4, 0x301);
  }

  return v4;
}

- (void)fp_annotateInvocation:()FPAdditions withLogSection:
{
  v5 = a3;
  methodSignature = [v5 methodSignature];
  v7 = [methodSignature fp_indexOfLastArgumentWithType:"@?"];
  selector = [v5 selector];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [(NSXPCConnection(FPAdditions) *)selector fp_annotateInvocation:a4 withLogSection:v9];
    }
  }

  else
  {
    v24 = 0;
    [v5 getArgument:&v24 atIndex:v7];
    v10 = _Block_copy(v24);
    _Block_signature(v10);
    v11 = fp_current_or_default_log();
    v18 = 0;
    v19 = &v18;
    v20 = 0x3042000000;
    v21 = __Block_byref_object_copy__23;
    v22 = __Block_byref_object_dispose__23;
    v23 = 0;
    v14 = MEMORY[0x1E69E9820];
    v15 = v11;
    v16 = v10;
    obj = __NSMakeSpecialForwardingCaptureBlock();
    [v5 _addAttachedObject:{obj, v14, 3221225472, __69__NSXPCConnection_FPAdditions__fp_annotateInvocation_withLogSection___block_invoke, &unk_1E793DB28}];
    [v5 setArgument:&obj atIndex:v7];
    objc_storeWeak(v19 + 5, obj);
    WeakRetained = objc_loadWeakRetained(v19 + 5);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a4];
    objc_setAssociatedObject(WeakRetained, &kFileProviderLogSectionKey, v13, 0x301);

    _Block_object_dispose(&v18, 8);
    objc_destroyWeak(&v23);
  }
}

- (void)fp_hasSandboxAccessToFile:()FPAdditions accessType:logLevel:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_DEBUG, "[DEBUG] can't create physical URL from %@", &v2, 0xCu);
}

- (void)fp_applicationGroups
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412546;
  v2 = @"com.apple.security.application-groups";
  OUTLINED_FUNCTION_16();
  _os_log_error_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_ERROR, "[ERROR] malformed %@ entitlement on %@", &v1, 0x16u);
}

- (void)fp_annotateInvocation:()FPAdditions withLogSection:.cold.1(const char *a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromSelector(a1);
  v6 = 134218242;
  v7 = a2;
  OUTLINED_FUNCTION_16();
  _os_log_debug_impl(&dword_1AAAE1000, a3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┳%llx ipc to %@ without reply", &v6, 0x16u);
}

@end