@interface NSExtension(ExtensionKitAdditions)
+ (id)extensionRepresentedBy:()ExtensionKitAdditions error:;
+ (void)evaluateActivationRule:()ExtensionKitAdditions withExtensionItemsRepresentation:error:;
- (BOOL)requiresMacCatalystBehavior;
- (_EXExtensionIdentity)extensionIdentityWithError:()ExtensionKitAdditions;
- (id)URL;
- (id)containingBundleIdentifier;
- (id)extensionRecord;
- (id)preferredLanguages;
- (id)uuid;
- (void)setPreferredLanguages:()ExtensionKitAdditions;
@end

@implementation NSExtension(ExtensionKitAdditions)

+ (void)evaluateActivationRule:()ExtensionKitAdditions withExtensionItemsRepresentation:error:
{
  v8 = a3;
  v9 = a4;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [self _evaluateActivationRule:v8 withExtensionItemsRepresentation:v9 error:a5];
  }

  else
  {
    v11 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      +[NSExtension(ExtensionKitAdditions) evaluateActivationRule:withExtensionItemsRepresentation:error:];
    }

    __break(1u);
  }
}

+ (id)extensionRepresentedBy:()ExtensionKitAdditions error:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v20 = _EXDefaultLog(isKindOfClass);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [NSExtension(ExtensionKitAdditions) extensionRepresentedBy:v5 error:v20];
    }

    __break(1u);
  }

  v7 = v5;
  uUID = [v7 UUID];

  if (uUID)
  {
    defaultHost = [MEMORY[0x1E69C4A88] defaultHost];
    uUID2 = [v7 UUID];
    v12 = [defaultHost findPlugInByUUID:uUID2 withError:a4];

    if (v12)
    {
      v14 = [[EXConcreteExtension alloc] _initWithPKPlugin:v12 identity:v7];
    }

    else
    {
      v16 = _EXLegacyLog(v13);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        uUID3 = [v7 UUID];
        uUIDString = [uUID3 UUIDString];
        v21 = 138412290;
        v22 = uUIDString;
        _os_log_impl(&dword_1847D1000, v16, OS_LOG_TYPE_DEFAULT, "Couldn't find pkplugin with uuid: %@", &v21, 0xCu);
      }

      v14 = 0;
    }
  }

  else
  {
    v15 = _EXLegacyLog(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [NSExtension(ExtensionKitAdditions) extensionRepresentedBy:v7 error:v15];
    }

    if (a4)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.extensionKit.errorDomain" code:5 userInfo:MEMORY[0x1E695E0F8]];
      *a4 = v14 = 0;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (_EXExtensionIdentity)extensionIdentityWithError:()ExtensionKitAdditions
{
  v17 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([self _identity], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x1E69635D0]);
    uuid = [self uuid];
    v8 = [v6 initWithUUID:uuid error:a3];

    if (v8)
    {
      v5 = [[_EXExtensionIdentity alloc] initWithApplicationExtensionRecord:v8];
    }

    else
    {
      v10 = _EXDefaultLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [self uuid];
        v13 = 138412546;
        selfCopy = self;
        v15 = 2112;
        v16 = uuid2;
      }

      v5 = 0;
    }
  }

  return v5;
}

- (id)preferredLanguages
{
  _plugIn = [self _plugIn];
  preferredLanguages = [_plugIn preferredLanguages];

  return preferredLanguages;
}

- (void)setPreferredLanguages:()ExtensionKitAdditions
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _plugIn = [self _plugIn];
  v6 = _EXLegacyLog(_plugIn);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uuid = [_plugIn uuid];
    v8 = 138543618;
    v9 = uuid;
    v10 = 2114;
    v11 = v4;
    _os_log_impl(&dword_1847D1000, v6, OS_LOG_TYPE_DEFAULT, "Setting preferred languages on %{public}@: %{public}@", &v8, 0x16u);
  }

  [_plugIn setPreferredLanguages:v4];
}

- (BOOL)requiresMacCatalystBehavior
{
  v14 = *MEMORY[0x1E69E9840];
  _plugIn = [self _plugIn];
  uuid = [_plugIn uuid];

  v9 = 0;
  v3 = [objc_alloc(MEMORY[0x1E69635D0]) initWithUUID:uuid error:&v9];
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    extensionPointRecord = [v3 extensionPointRecord];
    v7 = [extensionPointRecord platform]== 6;
  }

  else
  {
    extensionPointRecord = _EXLegacyLog(v4);
    if (os_log_type_enabled(extensionPointRecord, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v11 = 0;
      v12 = 2114;
      v13 = v5;
      _os_log_impl(&dword_1847D1000, extensionPointRecord, OS_LOG_TYPE_DEFAULT, "Extension point not found for: %{public}@ with error: %{public}@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)containingBundleIdentifier
{
  v2 = objc_alloc(MEMORY[0x1E69635D0]);
  identifier = [self identifier];
  v4 = [v2 initWithBundleIdentifier:identifier error:0];

  if (v4)
  {
    containingBundleRecord = [v4 containingBundleRecord];
    bundleIdentifier = [containingBundleRecord bundleIdentifier];
  }

  else
  {
    bundleIdentifier = 0;
  }

  return bundleIdentifier;
}

- (id)uuid
{
  _plugIn = [self _plugIn];
  uuid = [_plugIn uuid];

  return uuid;
}

- (id)URL
{
  _plugIn = [self _plugIn];
  v2 = [_plugIn url];

  return v2;
}

- (id)extensionRecord
{
  v2 = objc_alloc(MEMORY[0x1E69635D0]);
  uuid = [self uuid];
  v4 = [v2 initWithUUID:uuid error:0];

  return v4;
}

+ (void)evaluateActivationRule:()ExtensionKitAdditions withExtensionItemsRepresentation:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = 136315906;
  v2 = "[self isKindOfClass:EXConcreteExtension.class]";
  v3 = 2080;
  v4 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/NSExtension+ExtensionKitAdditions.m";
  v5 = 1024;
  OUTLINED_FUNCTION_0_3();
}

+ (void)extensionRepresentedBy:()ExtensionKitAdditions error:.cold.1(uint64_t a1, NSObject *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_opt_class();
  v3 = 136315906;
  v4 = "[extensionRep isKindOfClass:_EXExtensionIdentity.class]";
  v5 = 2080;
  v6 = "/Library/Caches/com.apple.xbs/Sources/ExtensionFoundation/ExtensionFoundation/Source/NSExtension/NSExtensionSupport/NSExtension+ExtensionKitAdditions.m";
  v7 = 1024;
  OUTLINED_FUNCTION_0_3();
}

+ (void)extensionRepresentedBy:()ExtensionKitAdditions error:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_1847D1000, a2, OS_LOG_TYPE_ERROR, "UUID not found for extension representation: %{public}@", &v2, 0xCu);
}

@end