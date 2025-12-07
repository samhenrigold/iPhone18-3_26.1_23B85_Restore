@interface _LSDatabase
- (BOOL)cryptexContentChanged;
- (id)_init;
- (id)description;
- (uint64_t)accessContext;
- (uint64_t)isSeeded;
- (uint64_t)isSeedingComplete;
- (uint64_t)schema;
- (uint64_t)store;
- (void)dealloc;
- (void)isSeeded;
- (void)setAccessContext:(uint64_t)context;
- (void)setApplicationsChanged:(_LSDatabase *)changed;
- (void)setDocumentTypesChanged:(_LSDatabase *)changed;
- (void)setSeeded:(_LSDatabase *)seeded;
- (void)setSeedingComplete:(_LSDatabase *)complete;
- (void)setTypeDeclarationsChanged:(_LSDatabase *)changed;
- (void)setURLTypesChanged:(_LSDatabase *)changed;
@end

@implementation _LSDatabase

- (uint64_t)store
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

- (uint64_t)schema
{
  if (self)
  {
    return self + 48;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isSeedingComplete
{
  v5 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    bzero(v3, 0xD0uLL);
    _LSDatabaseGetHeader(v3, v1);
    if ((v4 & 2) != 0)
    {
      v2 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v3[0]) = 0;
        _os_log_error_impl(&dword_18162D000, v2, OS_LOG_TYPE_ERROR, "Database seeding is incomplete, need to rebuild", v3, 2u);
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (uint64_t)isSeeded
{
  v25 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  _LSDatabaseGetHeader(v20, self);
  LSDBHeader::GetCurrentBuildVersion(&__p, v1, v2);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    _LSDatabaseGetLog();
    objc_claimAutoreleasedReturnValue();
    [_LSDatabase isSeeded];
    v13 = v23;
LABEL_36:

    goto LABEL_37;
  }

  *__dst = 0;
  *&__dst[8] = 0;
  strlcpy(__dst, v21, 0x10uLL);
  std::string::basic_string[abi:nn200100]<0>(&v23, __dst);
  v4 = BYTE7(v24);
  if ((SBYTE7(v24) & 0x80u) == 0)
  {
    v5 = BYTE7(v24);
  }

  else
  {
    v5 = *(&v23 + 1);
  }

  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = __p.__r_.__value_.__l.__size_;
  }

  if (v5 == v6)
  {
    v7 = (SBYTE7(v24) & 0x80u) == 0 ? &v23 : v23;
    v8 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
    if (!memcmp(v7, v8, v5))
    {
      v12 = 0;
      if (v4 < 0)
      {
        goto LABEL_32;
      }

LABEL_29:
      if (v12)
      {
        goto LABEL_37;
      }

      goto LABEL_33;
    }
  }

  if (!v5)
  {
    v12 = 1;
    if (v4 < 0)
    {
      goto LABEL_32;
    }

    goto LABEL_29;
  }

  v9 = _LSDatabaseGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = &v23;
    if (SBYTE7(v24) < 0)
    {
      v10 = v23;
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *__dst = 136446466;
    *&__dst[4] = v10;
    *&__dst[12] = 2082;
    *&__dst[14] = p_p;
    _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "Local database thinks system build version is %{public}s, but the OS really is %{public}s.", __dst, 0x16u);
  }

  v12 = 1;
  if ((BYTE7(v24) & 0x80) == 0)
  {
    goto LABEL_29;
  }

LABEL_32:
  operator delete(v23);
  if (v12)
  {
LABEL_37:
    v16 = 0;
    goto LABEL_38;
  }

LABEL_33:
  _LSGetCurrentSystemVersion(v19);
  v23 = *(v20 + 8);
  v24 = *(&v20[1] + 8);
  *__dst = v19[0];
  *&__dst[16] = v19[1];
  if (_LSVersionNumberCompare(&v23, __dst))
  {
    v13 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(v20 + 8);
      v24 = *(&v20[1] + 8);
      v14 = _LSVersionNumberGetStringRepresentation(&v23);
      _LSGetCurrentSystemVersion(&v23);
      v15 = _LSVersionNumberGetStringRepresentation(&v23);
      *__dst = 138543618;
      *&__dst[4] = v14;
      *&__dst[12] = 2114;
      *&__dst[14] = v15;
      _os_log_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEFAULT, "Local database thinks system version is %{public}@, but the OS really is %{public}@.", __dst, 0x16u);
    }

    goto LABEL_36;
  }

  v16 = 1;
LABEL_38:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v16;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _LSDatabase;
  if ([(_LSDatabase *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  store = self->_store;
  if (store)
  {
    CFRelease(store);
    self->_store = 0;
  }

  accessContext = self->accessContext;
  if (accessContext)
  {
    CFRelease(accessContext);
    self->accessContext = 0;
  }

  cache = self->_schema._cache;
  if (cache)
  {
    _LSSchemaCache::~_LSSchemaCache(cache);
    MEMORY[0x1865D6250]();
  }

  v6.receiver = self;
  v6.super_class = _LSDatabase;
  [(_LSDatabase *)&v6 dealloc];
}

- (id)description
{
  v3 = [(FSNode *)self->node pathWithError:0];
  v4 = v3;
  v5 = @"?";
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  if (self->sessionKey.systemSession)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = @"<LSDatabase %p> { system session, path = '%@' }";
LABEL_7:
    v9 = [v7 stringWithFormat:v8, self, v6];
    goto LABEL_9;
  }

  v7 = MEMORY[0x1E696AEC0];
  if (self->sessionKey.uid == -2)
  {
    v8 = @"<LSDatabase %p> { path = '%@' }";
    goto LABEL_7;
  }

  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<LSDatabase %p> { userID = %llu, path = '%@' }", self, self->sessionKey.uid, v6];
LABEL_9:
  v10 = v9;

  return v10;
}

- (void)setSeeded:(_LSDatabase *)seeded
{
  v33 = *MEMORY[0x1E69E9840];
  if (seeded)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(v24, 0, sizeof(v24));
    _LSDatabaseGetHeader(v24, seeded);
    if (a2)
    {
      _LSGetCurrentSystemVersion((v24 + 8));
      LSDBHeader::GetCurrentBuildVersion(__p, v4, v5);
      v26 = 0uLL;
      if ((SBYTE7(v12) & 0x80u) == 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      strlcpy(&v26, v6, 0x10uLL);
      if (SBYTE7(v12) < 0)
      {
        operator delete(__p[0]);
      }

      LSDBHeader::GetCurrentModelCode(__p);
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      if ((SBYTE7(v12) & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      strlcpy(&v27, v7, 0x40uLL);
      if (SBYTE7(v12) < 0)
      {
        operator delete(__p[0]);
      }

      _LSGetCurrentCryptexVersion(__p);
      *(&v24[2] + 8) = *__p;
      *(&v24[3] + 8) = v12;
      LSDBHeader::GetCurrentCryptexVersion(__p);
      *(&v24[4] + 1) = 0;
      *&v25 = 0;
      if ((SBYTE7(v12) & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }
    }

    else
    {
      memset(v24 + 8, 0, 32);
      std::string::basic_string[abi:nn200100]<0>(__p, "");
      v26 = 0uLL;
      if ((SBYTE7(v12) & 0x80u) == 0)
      {
        v9 = __p;
      }

      else
      {
        v9 = __p[0];
      }

      strlcpy(&v26, v9, 0x10uLL);
      if (SBYTE7(v12) < 0)
      {
        operator delete(__p[0]);
      }

      std::string::basic_string[abi:nn200100]<0>(__p, "");
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      if ((SBYTE7(v12) & 0x80u) == 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      strlcpy(&v27, v10, 0x40uLL);
      if (SBYTE7(v12) < 0)
      {
        operator delete(__p[0]);
      }

      memset(&v24[2] + 8, 0, 32);
      std::string::basic_string[abi:nn200100]<0>(__p, "");
      *(&v24[4] + 1) = 0;
      *&v25 = 0;
      if ((SBYTE7(v12) & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }
    }

    strlcpy(&v24[4] + 8, v8, 0x10uLL);
    if (SBYTE7(v12) < 0)
    {
      operator delete(__p[0]);
    }

    v21 = v30;
    v22 = v31;
    v23 = v32;
    v17 = v26;
    v18 = v27;
    v19 = v28;
    v20 = v29;
    v13 = v24[2];
    v14 = v24[3];
    v15 = v24[4];
    v16 = v25;
    *__p = v24[0];
    v12 = v24[1];
    _LSDatabaseSetHeader(seeded, __p);
  }
}

- (uint64_t)accessContext
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

- (void)setAccessContext:(uint64_t)context
{
  if (context)
  {
    OUTLINED_FUNCTION_14();
    v4 = *(v3 + 24);
    if (v4 != v5)
    {
      v2[3] = v1;
      if (v1)
      {
        CFRetain(v1);
      }

      if (v4)
      {
        CFRelease(v4);
      }

      v6 = v2;
      v7 = v2[5];

      MEMORY[0x1EEE009A0](v7, v1);
    }
  }
}

- (BOOL)cryptexContentChanged
{
  selfCopy = self;
  v8 = *MEMORY[0x1E69E9840];
  if (self)
  {
    bzero(v6, 0xD0uLL);
    _LSDatabaseGetHeader(v6, selfCopy);
    _LSGetCurrentCryptexVersion(v5);
    v4[0] = v7[0];
    v4[1] = v7[1];
    v2 = _LSVersionNumberCompare(v5, v4);
    selfCopy = v2 != 0;
    if (v2)
    {
      _LSGetCurrentCryptexVersion(v7);
    }
  }

  return selfCopy;
}

- (void)setSeedingComplete:(_LSDatabase *)complete
{
  if (complete)
  {
    _LSDatabaseSetHeaderFlag(complete, 2, a2 ^ 1);
  }
}

- (void)setApplicationsChanged:(_LSDatabase *)changed
{
  if (changed)
  {
    _LSDatabaseSetHeaderFlag(changed, 0x1000000, a2);
  }
}

- (void)setDocumentTypesChanged:(_LSDatabase *)changed
{
  if (changed)
  {
    _LSDatabaseSetHeaderFlag(changed, 0x2000000, a2);
  }
}

- (void)setURLTypesChanged:(_LSDatabase *)changed
{
  if (changed)
  {
    _LSDatabaseSetHeaderFlag(changed, 0x4000000, a2);
  }
}

- (void)setTypeDeclarationsChanged:(_LSDatabase *)changed
{
  if (changed)
  {
    _LSDatabaseSetHeaderFlag(changed, 0x8000000, a2);
  }
}

- (void)isSeeded
{
  OUTLINED_FUNCTION_14();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 0;
    OUTLINED_FUNCTION_10_0(&dword_18162D000, v3, v4, "Could not get OS build version.", v5, v6, v7, v8, v9);
  }

  *v0 = v1;
}

@end