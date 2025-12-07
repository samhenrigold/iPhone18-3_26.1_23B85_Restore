@interface NSDictionary(ExtensionKitAdditions)
+ (void)_EX_dictionaryWithSignedURL:()ExtensionKitAdditions error:;
- (id)_EX_arrayForKey:()ExtensionKitAdditions;
- (id)_EX_arrayForKeys:()ExtensionKitAdditions;
- (id)_EX_dictionaryByRemovingObjectForKey:()ExtensionKitAdditions;
- (id)_EX_dictionaryBySettingObject:()ExtensionKitAdditions forKey:;
- (id)_EX_dictionaryBySettingValuesForKeysWithDictionary:()ExtensionKitAdditions;
- (id)_EX_dictionaryForKey:()ExtensionKitAdditions;
- (id)_EX_dictionaryForKeys:()ExtensionKitAdditions;
- (id)_EX_objectForKey:()ExtensionKitAdditions ofClass:;
- (id)_EX_objectForKeys:()ExtensionKitAdditions ofClass:;
- (id)_EX_stringForKey:()ExtensionKitAdditions;
- (id)_EX_stringForKeys:()ExtensionKitAdditions;
- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions;
- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions defaultValue:;
- (uint64_t)_EX_integerForKey:()ExtensionKitAdditions;
@end

@implementation NSDictionary(ExtensionKitAdditions)

+ (void)_EX_dictionaryWithSignedURL:()ExtensionKitAdditions error:
{
  v108[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = _EXAuditTokenForCurrentProcess();
  v7 = objc_opt_class();
  v8 = _EXAuditTokenGetEntitlementValue(v6, @"com.apple.private.amfi.can-check-trust-cache", v7);
  bOOLValue = [v8 BOOLValue];

  if (!bOOLValue)
  {
    v13 = _EXDefaultLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_1847D1000, v13, OS_LOG_TYPE_DEFAULT, "Unable to check trust cache due to missing entitlement", &buf, 2u);
    }

    v20 = 0;
    v21 = 0;
    goto LABEL_8;
  }

  v11 = [v5 URLByAppendingPathExtension:@"sig"];
  v12 = v5;
  v13 = v11;
  cf = 0;
  staticCode = 0;
  v14 = SecStaticCodeCreateWithPath(v12, 0, &staticCode);
  if (v14)
  {
    v15 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    path = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create SecStaticCodeRef [%ld]", v14];
    *&buf = path;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:1];
    v18 = [v15 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v17];
LABEL_4:
    v19 = 0;
LABEL_17:

    v36 = 0;
    v37 = 0;
LABEL_18:
    if (staticCode)
    {
      CFRelease(staticCode);
    }

    v20 = 0;
    goto LABEL_21;
  }

  v94 = 0;
  v19 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v13 options:0 error:&v94];
  v31 = v94;
  if (!v19)
  {
    v64 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    v65 = MEMORY[0x1E696AEC0];
    path = [v13 path];
    v17 = [v65 stringWithFormat:@"Unable to read detached signature from %@", path];
    input[1] = *MEMORY[0x1E696AA08];
    *&buf = v17;
    *(&buf + 1) = v31;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:2];
    v66 = v5;
    v68 = v67 = a4;
    v18 = [v64 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v68];

    a4 = v67;
    v5 = v66;
    goto LABEL_4;
  }

  v32 = SecCodeSetDetachedSignature();
  if (v32)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = v5;
    v35 = a4;
    input[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set detached signature [%ld]", v32];
    path = LABEL_16:;
    *&buf = path;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:1];
    a4 = v35;
    v5 = v34;
    v18 = [v33 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v17];

    goto LABEL_17;
  }

  v69 = SecStaticCodeCheckValidity(staticCode, 6u, 0);
  if (v69 != -66996 && v69)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = v5;
    v35 = a4;
    input[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to verify code directory [%ld]", v69];
    goto LABEL_16;
  }

  v70 = SecCodeCopySigningInformation(staticCode, 0, &cf);
  if (v70)
  {
    v33 = MEMORY[0x1E696ABC0];
    v34 = v5;
    v35 = a4;
    input[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to get code signing information [%ld]", v70];
    goto LABEL_16;
  }

  v36 = cf;
  cf = 0;
  v37 = [v36 objectForKeyedSubscript:*MEMORY[0x1E697B098]];
  connect = 0;
  v71 = *MEMORY[0x1E696CD60];
  v72 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(v71, v72);
  v91 = a4;
  object = MatchingService;
  if (!MatchingService)
  {
    v78 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    *&buf = @"Unable to find AMFI";
    v79 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&buf forKeys:input count:1];
    v80 = [v78 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v79];
LABEL_59:
    v82 = 0;
    goto LABEL_60;
  }

  v74 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, &connect);
  if (v74)
  {
    v87 = MEMORY[0x1E696ABC0];
    input[0] = *MEMORY[0x1E696A578];
    v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to connect to AMFI [%ld]", v74];
    *&buf = v75;
    v76 = MEMORY[0x1E695DF20];
    v77 = input;
LABEL_58:
    v83 = [v76 dictionaryWithObjects:&buf forKeys:v77 count:1];
    v80 = [v87 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v83];

    v79 = v75;
    goto LABEL_59;
  }

  input[0] = 1;
  v81 = IOConnectCallMethod(connect, 6u, input, 1u, [v37 bytes], objc_msgSend(v37, "length"), 0, 0, 0, 0);
  if (v81 == -536870160)
  {
    v87 = MEMORY[0x1E696ABC0];
    v108[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"cdhash: %@ is not in trust cache", v37, v86];
    v75 = LABEL_57:;
    *&buf = v75;
    v76 = MEMORY[0x1E695DF20];
    v77 = v108;
    goto LABEL_58;
  }

  if (v81)
  {
    v87 = MEMORY[0x1E696ABC0];
    v108[0] = *MEMORY[0x1E696A578];
    [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown error (%ld) checking cdhash %@", v81, v37];
    goto LABEL_57;
  }

  v79 = _EXDefaultLog(v81);
  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v37;
    _os_log_impl(&dword_1847D1000, v79, OS_LOG_TYPE_DEFAULT, "cdhash: %@ is trusted", &buf, 0xCu);
  }

  v80 = 0;
  v82 = 1;
LABEL_60:

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (object)
  {
    IOObjectRelease(object);
  }

  if (v80)
  {
    v84 = v80;
    v85 = v80;
  }

  else
  {
    v85 = v31;
    if ((v82 & 1) == 0)
    {
      +[NSDictionary(ExtensionKitAdditions) _EX_dictionaryWithSignedURL:error:];
    }
  }

  v18 = v85;
  if (!v82)
  {
    a4 = v91;
    goto LABEL_18;
  }

  v20 = staticCode;
  staticCode = 0;
  a4 = v91;
LABEL_21:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v18)
  {
    v38 = v18;
  }

  v21 = v18;
  if (!v20)
  {
    if (!a4)
    {
      +[NSDictionary(ExtensionKitAdditions) _EX_dictionaryWithSignedURL:error:];
    }

    goto LABEL_29;
  }

  v39 = SecCodeMapMemory(v20, 0);
  if (v39)
  {
    v40 = MEMORY[0x1E696ABC0];
    v104 = *MEMORY[0x1E696A578];
    *objecta = v5;
    v41 = a4;
    v42 = MEMORY[0x1E696AEC0];
    v43 = v39;
    path2 = [(__CFURL *)v12 path];
    path3 = [v13 path];
    v46 = [v42 stringWithFormat:@"Unable to push signature to kernel [%ld]: plist: %@ signature: %@", v43, path2, path3];
    v105 = v46;
    v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
    v48 = [v40 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v47];

    a4 = v41;
    v5 = *objecta;

    v21 = v48;
LABEL_29:

    goto LABEL_30;
  }

LABEL_8:

  v93 = v21;
  v22 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v5 options:8 error:&v93];
  v23 = v93;

  if (!v22)
  {
    v26 = MEMORY[0x1E696ABC0];
    v102 = *MEMORY[0x1E696A578];
    v27 = MEMORY[0x1E696AEC0];
    path4 = [v5 path];
    v29 = [v27 stringWithFormat:@"Unable to read plist at %@", path4];
    v103 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v103 forKeys:&v102 count:1];
    v21 = [v26 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v30];

LABEL_30:
    v24 = 0;
    v22 = 0;
    v25 = 0;
    goto LABEL_34;
  }

  v92 = 0;
  v24 = [MEMORY[0x1E696AE40] propertyListWithData:v22 options:0 format:0 error:&v92];
  v21 = v92;

  if (v24)
  {
    v90 = a4;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v24;
      v25 = v24;
    }

    else
    {
      v55 = MEMORY[0x1E696ABC0];
      v98 = *MEMORY[0x1E696A578];
      v56 = MEMORY[0x1E696AEC0];
      path5 = [v5 path];
      v58 = [v56 stringWithFormat:@"Extension cache at path [%@] not a dictionary: %@", path5, v24];
      v99 = v58;
      v59 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v99 forKeys:&v98 count:1];
      v60 = [v55 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v59];

      v25 = 0;
      v21 = v60;
    }

    a4 = v90;
  }

  else
  {
    v49 = MEMORY[0x1E696ABC0];
    v100 = *MEMORY[0x1E696A578];
    v50 = MEMORY[0x1E696AEC0];
    path6 = [v5 path];
    v52 = [v50 stringWithFormat:@"Unable to deserialize %@", path6];
    v101 = v52;
    v53 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v101 forKeys:&v100 count:1];
    v54 = [v49 errorWithDomain:@"com.apple.extensionKit.errorDomain" code:12 userInfo:v53];

    v24 = 0;
    v25 = 0;
    v21 = v54;
  }

LABEL_34:
  if (v20)
  {
    CFRelease(v20);
  }

  if (a4 && v21)
  {
    v61 = v21;
    *a4 = v21;
  }

  v62 = v25;

  return v25;
}

- (id)_EX_objectForKey:()ExtensionKitAdditions ofClass:
{
  v4 = [self objectForKey:a3];
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_EX_objectForKeys:()ExtensionKitAdditions ofClass:
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v13 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = [self objectForKey:{*(*(&v12 + 1) + 8 * v9), v12}];
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (id)_EX_dictionaryForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_dictionaryForKeys:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKeys:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_arrayForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_arrayForKeys:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKeys:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_stringForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKey:v4 ofClass:objc_opt_class()];

  return v5;
}

- (id)_EX_stringForKeys:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKeys:v4 ofClass:objc_opt_class()];

  return v5;
}

- (uint64_t)_EX_integerForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKey:v4 ofClass:objc_opt_class()];

  integerValue = [v5 integerValue];
  return integerValue;
}

- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self _EX_objectForKey:v4 ofClass:objc_opt_class()];

  bOOLValue = [v5 BOOLValue];
  return bOOLValue;
}

- (uint64_t)_EX_BOOLForKey:()ExtensionKitAdditions defaultValue:
{
  v6 = a3;
  v7 = [self _EX_objectForKey:v6 ofClass:objc_opt_class()];

  if (v7)
  {
    a4 = [v7 BOOLValue];
  }

  return a4;
}

- (id)_EX_dictionaryByRemovingObjectForKey:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 removeObjectForKey:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 copy];
  }

  v7 = v6;

  return v7;
}

- (id)_EX_dictionaryBySettingObject:()ExtensionKitAdditions forKey:
{
  v6 = a4;
  v7 = a3;
  v8 = [self mutableCopy];
  [v8 setObject:v7 forKey:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = [v8 copy];
  }

  v10 = v9;

  return v10;
}

- (id)_EX_dictionaryBySettingValuesForKeysWithDictionary:()ExtensionKitAdditions
{
  v4 = a3;
  v5 = [self mutableCopy];
  [v5 setValuesForKeysWithDictionary:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = [v5 copy];
  }

  v7 = v6;

  return v7;
}

+ (void)_EX_dictionaryWithSignedURL:()ExtensionKitAdditions error:.cold.1()
{
  _os_assert_log();
  _os_crash();
  __break(1u);
}

@end