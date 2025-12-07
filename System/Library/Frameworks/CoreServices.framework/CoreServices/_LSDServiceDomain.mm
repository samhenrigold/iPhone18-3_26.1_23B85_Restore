@interface _LSDServiceDomain
+ (_LSDServiceDomain)currentUserSessionDomain;
+ (id)defaultServiceDomain;
+ (id)systemSessionDomain;
- (_WORD)resolvedDomainUID;
- (double)connectionConfigurationStateForServiceClass:(uint64_t)class@<X8>;
- (id).cxx_construct;
- (id)debugDescription;
- (uint64_t)initWithUID:(void *)d;
- (uint64_t)resolvedSessionKey;
- (void)resolvedDomainUID;
@end

@implementation _LSDServiceDomain

+ (id)defaultServiceDomain
{
  objc_opt_self();
  if (+[_LSDServiceDomain defaultServiceDomain]::once != -1)
  {
    +[_LSDServiceDomain defaultServiceDomain];
  }

  v0 = +[_LSDServiceDomain defaultServiceDomain]::target;

  return v0;
}

- (uint64_t)resolvedSessionKey
{
  if (result)
  {
    if (*(result + 16) == 3)
    {
      return 0x100000000;
    }

    else
    {
      return [(_LSDServiceDomain *)result resolvedDomainUID];
    }
  }

  return result;
}

- (_WORD)resolvedDomainUID
{
  v8 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v2 = result;
    if (*(result + 12) == 1)
    {
      return *(result + 2);
    }

    else
    {
      v3 = result[8];
      if (result[8])
      {
        if (v3 == 3)
        {
          return 0;
        }

        else
        {
          if (v3 != 1)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:sel_resolvedDomainUID object:v2 file:@"LSDService.mm" lineNumber:157 description:{@"Resolving effective UID for domain had bogus type %d", v2[8]}];
          }

          if (xpc_user_sessions_enabled())
          {
            foreground_uid = xpc_user_sessions_get_foreground_uid();
          }

          else
          {
            foreground_uid = _CFGetEUID();
          }

          result = [__LSDefaultsGetSharedInstance(foreground_uid v6)];
          *(v2 + 2) = result;
          *(v2 + 12) = 1;
        }
      }

      else
      {
        SharedInstance = __LSDefaultsGetSharedInstance(result, a2);

        return [SharedInstance proxyUIDForCurrentEffectiveUID];
      }
    }
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 8) = 0;
  *(self + 12) = 0;
  return self;
}

- (uint64_t)initWithUID:(void *)d
{
  if (!d)
  {
    return 0;
  }

  if (a2)
  {
    v3 = [__LSDefaultsGetSharedInstance(d a2)];
    v7.receiver = d;
    v7.super_class = _LSDServiceDomain;
    v4 = objc_msgSendSuper2(&v7, sel_init);
    v5 = v4;
    if (v4)
    {
      v4[2] = v3;
      *(v4 + 12) = 1;
      *(v4 + 8) = 2;
    }
  }

  else
  {
    v5 = +[_LSDServiceDomain systemSessionDomain];
  }

  return v5;
}

+ (id)systemSessionDomain
{
  objc_opt_self();
  if (+[_LSDServiceDomain systemSessionDomain]::once != -1)
  {
    +[_LSDServiceDomain systemSessionDomain];
  }

  v1 = +[_LSDServiceDomain systemSessionDomain]::target;

  return v1;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p type %d resolvedDomainUID %d>", v4, self, self->_specifierType, -[_LSDServiceDomain resolvedDomainUID](self, v5)];
}

- (double)connectionConfigurationStateForServiceClass:(uint64_t)class@<X8>
{
  if (!self)
  {
    result = 0.0;
    *class = 0u;
    *(class + 16) = 0u;
    return result;
  }

  v6 = self[8];
  v7 = [__LSDefaultsGetSharedInstance(self a2)];
  *class = 0;
  *(class + 8) = v7;
  *(class + 16) = configureUIDVanilla;
  v15 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{(v6 << 32) | (objc_msgSend(a2, "connectionType") << 48) | v7}];
  *(class + 24) = v15;
  v9 = self[8];
  if (v9 == 2)
  {
    if (![(_LSDServiceDomain *)self resolvedDomainUID])
    {
LABEL_7:
      *class = 4096;
      goto LABEL_8;
    }

    v9 = self[8];
  }

  if (v9 == 3 || [a2 XPCConnectionIsAlwaysPrivileged])
  {
    goto LABEL_7;
  }

LABEL_8:
  v10 = self[8];
  if (v10 == 1)
  {
    if (xpc_user_sessions_enabled())
    {
      v11 = configureUIDForUserSession;
      resolvedDomainUID = [(_LSDServiceDomain *)self resolvedDomainUID];
LABEL_18:
      v13 = resolvedDomainUID;
      goto LABEL_19;
    }

    v10 = self[8];
  }

  if (v10 == 2)
  {
    goto LABEL_17;
  }

  if (v10 == 3)
  {
    v11 = configureUIDNull;
    resolvedDomainUID = [(_LSDServiceDomain *)self resolvedDomainUID];
    goto LABEL_18;
  }

  if (([a2 XPCConnectionIsAlwaysPrivileged] & 1) == 0)
  {
LABEL_17:
    v11 = configureUIDVanilla;
    resolvedDomainUID = [(_LSDServiceDomain *)self resolvedDomainUID];
    goto LABEL_18;
  }

  v11 = configureUIDVanilla;
  v13 = 0;
LABEL_19:
  *(class + 8) = v13;
  *(class + 16) = v11;
  *(class + 24) = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:{(objc_msgSend(a2, "connectionType") << 48) | (self[8] << 32) | v13}];

  return result;
}

+ (_LSDServiceDomain)currentUserSessionDomain
{
  objc_opt_self();
  v1 = [_LSDServiceDomain alloc];
  if (v1)
  {
    v3.receiver = v1;
    v3.super_class = _LSDServiceDomain;
    v1 = objc_msgSendSuper2(&v3, sel_init);
    if (v1)
    {
      v1->_resolvedDomainUID.__engaged_ = 0;
      v1->_resolvedDomainUID.var0.__val_ = 0;
      v1->_specifierType = 1;
    }
  }

  return v1;
}

- (void)resolvedDomainUID
{
  *buf = 136315650;
  *(buf + 4) = "[_LSDServiceDomain resolvedDomainUID]";
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  *(buf + 9) = 2080;
  *(buf + 20) = self;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "%s: xpc_user_sessions_get_foreground_uid() failed with error %d - %s", buf, 0x1Cu);
}

@end