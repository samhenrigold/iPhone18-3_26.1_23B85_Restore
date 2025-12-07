@interface STDynamicActivityAttribution
+ (id)attributionForClientAuditToken:(id *)token clientExecutablePath:(id)path bundleID:(id)d localizationKey:(id)key;
+ (id)attributionForClientAuditToken:(id *)token maskingClientAuditToken:(id *)auditToken clientExecutablePath:(id)path maskingClientExecutablePath:(id)executablePath localizationKey:(id)key;
+ (id)attributionForClientAuditToken:(id *)token maskingClientAuditToken:(id *)auditToken clientExecutablePath:(id)path maskingClientExecutablePath:(id)executablePath stringWithFormat:(id)format;
+ (id)attributionForClientAuditToken:(id *)token maskingClientAuditToken:(id *)auditToken clientExecutablePath:(id)path maskingClientExecutablePath:(id)executablePath website:(id)website;
- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken;
- ($115C4C562B26FF47E01F9F4EA65B5887)maskingClientAuditToken;
- (BOOL)isEqual:(id)equal;
- (STDynamicActivityAttribution)initWithCoder:(id)coder;
- (id)description;
- (void)_initWithClientAuditToken:(void *)token clientExecutablePath:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STDynamicActivityAttribution

+ (id)attributionForClientAuditToken:(id *)token clientExecutablePath:(id)path bundleID:(id)d localizationKey:(id)key
{
  v37 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  dCopy = d;
  keyCopy = key;
  if (keyCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v23 = NSStringFromSelector(a2);
        v24 = objc_opt_class();
        v25 = NSStringFromClass(v24);
        *buf = 138544642;
        *&buf[4] = v23;
        *&buf[12] = 2114;
        *&buf[14] = v25;
        *&buf[22] = 2048;
        *&buf[24] = self;
        v31 = 2114;
        v32 = @"STDynamicActivityAttribution.m";
        v33 = 1024;
        v34 = 17;
        v35 = 2114;
        v36 = v22;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v22 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FC440);
    }

    if (!dCopy)
    {
      goto LABEL_8;
    }
  }

  else if (!dCopy)
  {
    v16 = 0;
    goto LABEL_11;
  }

  NSClassFromString(&cfstr_Nsstring.isa);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      *&buf[4] = v27;
      *&buf[12] = 2114;
      *&buf[14] = v29;
      *&buf[22] = 2048;
      *&buf[24] = self;
      v31 = 2114;
      v32 = @"STDynamicActivityAttribution.m";
      v33 = 1024;
      v34 = 18;
      v35 = 2114;
      v36 = v26;
      _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1DA9FC538);
  }

LABEL_8:
  v14 = [STDynamicActivityAttribution alloc];
  v15 = *&token->var0[4];
  *buf = *token->var0;
  *&buf[16] = v15;
  v16 = [(STDynamicActivityAttribution *)v14 _initWithClientAuditToken:buf clientExecutablePath:pathCopy];
  if (v16)
  {
    v17 = [dCopy copy];
    v18 = v16[1];
    v16[1] = v17;

    v19 = [keyCopy copy];
    v20 = v16[2];
    v16[2] = v19;
  }

LABEL_11:

  return v16;
}

- (void)_initWithClientAuditToken:(void *)token clientExecutablePath:
{
  tokenCopy = token;
  if (self)
  {
    v7 = [self init];
    self = v7;
    if (v7)
    {
      v8 = *a2;
      *(v7 + 72) = a2[1];
      *(v7 + 56) = v8;
      objc_storeStrong((v7 + 40), token);
    }
  }

  return self;
}

+ (id)attributionForClientAuditToken:(id *)token maskingClientAuditToken:(id *)auditToken clientExecutablePath:(id)path maskingClientExecutablePath:(id)executablePath localizationKey:(id)key
{
  v37 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  executablePathCopy = executablePath;
  keyCopy = key;
  if (keyCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        *&buf[22] = 2048;
        *&buf[24] = self;
        v31 = 2114;
        v32 = @"STDynamicActivityAttribution.m";
        v33 = 1024;
        v34 = 32;
        v35 = 2114;
        v36 = v26;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FC7E0);
    }

    v16 = [STDynamicActivityAttribution alloc];
    v17 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v17;
    v18 = [(STDynamicActivityAttribution *)v16 _initWithClientAuditToken:buf clientExecutablePath:pathCopy];
    v19 = v18;
    if (v18)
    {
      v20 = *auditToken->var0;
      *(v18 + 104) = *&auditToken->var0[4];
      *(v18 + 88) = v20;
      v21 = [executablePathCopy copy];
      v22 = v19[6];
      v19[6] = v21;

      v23 = [keyCopy copy];
      v24 = v19[2];
      v19[2] = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)attributionForClientAuditToken:(id *)token maskingClientAuditToken:(id *)auditToken clientExecutablePath:(id)path maskingClientExecutablePath:(id)executablePath stringWithFormat:(id)format
{
  v37 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  executablePathCopy = executablePath;
  formatCopy = format;
  if (formatCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        *&buf[22] = 2048;
        *&buf[24] = self;
        v31 = 2114;
        v32 = @"STDynamicActivityAttribution.m";
        v33 = 1024;
        v34 = 47;
        v35 = 2114;
        v36 = v26;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FCA1CLL);
    }

    v16 = [STDynamicActivityAttribution alloc];
    v17 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v17;
    v18 = [(STDynamicActivityAttribution *)v16 _initWithClientAuditToken:buf clientExecutablePath:pathCopy];
    v19 = v18;
    if (v18)
    {
      v20 = *auditToken->var0;
      *(v18 + 104) = *&auditToken->var0[4];
      *(v18 + 88) = v20;
      v21 = [executablePathCopy copy];
      v22 = v19[6];
      v19[6] = v21;

      v23 = [formatCopy copy];
      v24 = v19[3];
      v19[3] = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (id)attributionForClientAuditToken:(id *)token maskingClientAuditToken:(id *)auditToken clientExecutablePath:(id)path maskingClientExecutablePath:(id)executablePath website:(id)website
{
  v37 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  executablePathCopy = executablePath;
  websiteCopy = website;
  if (websiteCopy)
  {
    NSClassFromString(&cfstr_Nsstring.isa);
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[_bs_assert_object isKindOfClass:NSStringClass]"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v27 = NSStringFromSelector(a2);
        v28 = objc_opt_class();
        v29 = NSStringFromClass(v28);
        *buf = 138544642;
        *&buf[4] = v27;
        *&buf[12] = 2114;
        *&buf[14] = v29;
        *&buf[22] = 2048;
        *&buf[24] = self;
        v31 = 2114;
        v32 = @"STDynamicActivityAttribution.m";
        v33 = 1024;
        v34 = 62;
        v35 = 2114;
        v36 = v26;
        _os_log_error_impl(&dword_1DA9C2000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      [v26 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x1DA9FCC58);
    }

    v16 = [STDynamicActivityAttribution alloc];
    v17 = *&token->var0[4];
    *buf = *token->var0;
    *&buf[16] = v17;
    v18 = [(STDynamicActivityAttribution *)v16 _initWithClientAuditToken:buf clientExecutablePath:pathCopy];
    v19 = v18;
    if (v18)
    {
      v20 = *auditToken->var0;
      *(v18 + 104) = *&auditToken->var0[4];
      *(v18 + 88) = v20;
      v21 = [executablePathCopy copy];
      v22 = v19[6];
      v19[6] = v21;

      v23 = [websiteCopy copy];
      v24 = v19[4];
      v19[4] = v23;
    }
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = BSVersionedPIDForAuditToken(), v4 == BSVersionedPIDForAuditToken()) && (v5 = BSVersionedPIDForAuditToken(), v5 == BSVersionedPIDForAuditToken()) && BSEqualStrings() && BSEqualStrings() && BSEqualStrings() && BSEqualStrings() && BSEqualStrings())
  {
    v6 = BSEqualStrings();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  selfCopy = self;
  if (self)
  {
    v3 = MEMORY[0x1E696AEC0];
    lastPathComponent = [(NSString *)self->_clientExecutablePath lastPathComponent];
    v5 = [v3 stringWithFormat:@"%@:%d", lastPathComponent, BSPIDForAuditToken()];

    v6 = MEMORY[0x1E696AEC0];
    lastPathComponent2 = [*(selfCopy + 48) lastPathComponent];
    v8 = [v6 stringWithFormat:@"%@:%d", lastPathComponent2, BSPIDForAuditToken()];

    v9 = [MEMORY[0x1E698E680] builderWithObject:selfCopy];
    v10 = [v9 appendObject:v5 withName:@"client"];
    v11 = [v9 appendObject:v8 withName:@"maskingClient"];
    v12 = [v9 appendObject:*(selfCopy + 8) withName:@"bundleID" skipIfNil:1];
    v13 = [v9 appendObject:*(selfCopy + 16) withName:@"locKey" skipIfNil:1];
    v14 = [v9 appendObject:*(selfCopy + 24) withName:@"formattedString" skipIfNil:1];
    if (*(selfCopy + 32))
    {
      v15 = @"YES";
    }

    else
    {
      v15 = 0;
    }

    v16 = [v9 appendObject:v15 withName:@"websiteNonNil" skipIfNil:1];

    selfCopy = [v9 build];
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E698E620];
  v5 = *&self->_clientAuditToken.val[4];
  v10 = *self->_clientAuditToken.val;
  v11 = v5;
  coderCopy = coder;
  v7 = [v4 tokenFromAuditToken:&v10];
  [coderCopy encodeObject:v7 forKey:{@"_clientAuditToken", v10, v11}];

  [coderCopy encodeObject:self->_clientExecutablePath forKey:@"_clientExecutablePath"];
  v8 = *&self->_maskingClientAuditToken.val[4];
  v10 = *self->_maskingClientAuditToken.val;
  v11 = v8;
  v9 = [MEMORY[0x1E698E620] tokenFromAuditToken:&v10];
  [coderCopy encodeObject:v9 forKey:@"_maskingClientAuditToken"];

  [coderCopy encodeObject:self->_maskingClientExecutablePath forKey:@"_maskingClientExecutablePath"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"_bundleIdentifier"];
  [coderCopy encodeObject:self->_localizationKey forKey:@"_localizationKey"];
  [coderCopy encodeObject:self->_formattedString forKey:@"_formattedString"];
  [coderCopy encodeObject:self->_website forKey:@"_website"];
}

- (STDynamicActivityAttribution)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientAuditToken"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_clientExecutablePath"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    selfCopy = 0;
  }

  else
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maskingClientAuditToken"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_maskingClientExecutablePath"];
    v12 = v11;
    if (v10 && v11)
    {
      objc_msgSend_realToken(v5);
      objc_msgSend_realToken(v10);
      v13 = v7;
      v14 = v12;
      if (self)
      {
        v15 = [(STDynamicActivityAttribution *)self init];
        self = v15;
        if (v15)
        {
          v16 = v29[1];
          *v15->_clientAuditToken.val = v29[0];
          *&v15->_clientAuditToken.val[4] = v16;
          objc_storeStrong(&v15->_clientExecutablePath, v7);
          v17 = v28;
          *self->_maskingClientAuditToken.val = v27;
          *&self->_maskingClientAuditToken.val[4] = v17;
          objc_storeStrong(&self->_maskingClientExecutablePath, v12);
        }
      }
    }

    else
    {
      objc_msgSend_realToken(v5);
      self = [(STDynamicActivityAttribution *)self _initWithClientAuditToken:v29 clientExecutablePath:v7];
    }

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
    bundleIdentifier = self->_bundleIdentifier;
    self->_bundleIdentifier = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizationKey"];
    localizationKey = self->_localizationKey;
    self->_localizationKey = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_formattedString"];
    formattedString = self->_formattedString;
    self->_formattedString = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_website"];
    website = self->_website;
    self->_website = v24;

    self = self;
    selfCopy = self;
  }

  return selfCopy;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)clientAuditToken
{
  v3 = *&self[2].var0[2];
  *retstr->var0 = *&self[1].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)maskingClientAuditToken
{
  v3 = *&self[3].var0[2];
  *retstr->var0 = *&self[2].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

@end