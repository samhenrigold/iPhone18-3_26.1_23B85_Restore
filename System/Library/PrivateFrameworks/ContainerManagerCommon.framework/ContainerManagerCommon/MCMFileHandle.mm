@interface MCMFileHandle
+ (int64_t)compareDataProtectionClassTarget:(id)target withExisting:(id)existing;
- (BOOL)checkAppContainerProtection:(BOOL *)protection error:(id *)error;
- (BOOL)expectOpenWithError:(id *)error;
- (BOOL)openWithError:(id *)error;
- (BOOL)registerAppContainerForProtectionWithError:(id *)error;
- (BOOL)removeXattr:(id)xattr error:(id *)error;
- (BOOL)setPermissions:(unsigned __int16)permissions andOwner:(id)owner error:(id *)error;
- (BOOL)setXattr:(id)xattr valueAsNumber:(id)number error:(id *)error;
- (BOOL)setXattr:(id)xattr valueAsString:(id)string error:(id *)error;
- (BOOL)setXattr:(id)xattr valueAsUUID:(id)d error:(id *)error;
- (BOOL)withOpenFileDoBlock:(id)block;
- (MCMFileHandle)initWithPath:(id)path relativeToFileHandle:(id)handle direction:(unint64_t)direction symlinks:(unint64_t)symlinks createMode:(unsigned __int16)mode createDPClass:(id)class openLazily:(BOOL)lazily;
- (NSString)description;
- (id)copyValueAsNumberFromXattr:(id)xattr error:(id *)error;
- (id)copyValueAsStringFromXattr:(id)xattr maxLength:(unint64_t)length error:(id *)error;
- (id)copyValueAsUUIDFromXattr:(id)xattr error:(id *)error;
- (int)_computeFlags;
- (int)_openAbsolute;
- (int)_openRelative;
- (unsigned)_computeMode;
- (void)close;
- (void)dealloc;
- (void)setOpenError:(id)error;
- (void)setRelativeToFileHandle:(id)handle;
@end

@implementation MCMFileHandle

- (int)_computeFlags
{
  v2 = self->_direction - 1;
  if (v2 > 9)
  {
    v3 = 0x1000000;
  }

  else
  {
    v3 = dword_1DF3BE520[v2];
  }

  symlinks = self->_symlinks;
  v5 = v3 | 0x100;
  if (!symlinks)
  {
    v3 |= 0x20000000u;
  }

  if (symlinks == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (int)_openAbsolute
{
  [(MCMFileHandle *)self _computeMode];
  createDPClass = [(MCMFileHandle *)self createDPClass];

  v4 = *MEMORY[0x1E69E9988];
  if (createDPClass)
  {
    v5 = *(v4 + 520);
    path = [(MCMFileHandle *)self path];
    fileSystemRepresentation = [path fileSystemRepresentation];
    flags = [(MCMFileHandle *)self flags];
    createDPClass2 = [(MCMFileHandle *)self createDPClass];
    v10 = v5(fileSystemRepresentation, flags, [createDPClass2 intValue], 0);
  }

  else
  {
    v11 = *(v4 + 512);
    path = [(MCMFileHandle *)self path];
    v10 = v11([path fileSystemRepresentation], -[MCMFileHandle flags](self, "flags"));
  }

  return v10;
}

- (unsigned)_computeMode
{
  if ((self->_flags & 0x200) != 0)
  {
    return self->_createMode;
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v4 = *MEMORY[0x1E69E9840];
  [(MCMFileHandle *)self close];
  v3.receiver = self;
  v3.super_class = MCMFileHandle;
  [(MCMFileHandle *)&v3 dealloc];
}

- (void)close
{
  if ([(MCMFileHandle *)self isOpen])
  {
    (*(*MEMORY[0x1E69E9988] + 152))([(MCMFileHandle *)self fd]);
    [(MCMFileHandle *)self setOpen:0];

    [(MCMFileHandle *)self setInvalid:1];
  }
}

- (void)setOpenError:(id)error
{
  p_openError = &self->_openError;

  objc_storeStrong(p_openError, error);
}

- (void)setRelativeToFileHandle:(id)handle
{
  p_relativeToFileHandle = &self->_relativeToFileHandle;

  objc_storeStrong(p_relativeToFileHandle, handle);
}

- (int)_openRelative
{
  v19[1] = *MEMORY[0x1E69E9840];
  relativeToFileHandle = [(MCMFileHandle *)self relativeToFileHandle];
  v19[0] = 0;
  v4 = [relativeToFileHandle expectOpenWithError:v19];
  v5 = v19[0];

  if (!v4)
  {
    _os_crash();
    __break(1u);
  }

  [(MCMFileHandle *)self _computeMode];
  createDPClass = [(MCMFileHandle *)self createDPClass];

  v7 = *MEMORY[0x1E69E9988];
  if (createDPClass)
  {
    v8 = *(v7 + 536);
    relativeToFileHandle2 = [(MCMFileHandle *)self relativeToFileHandle];
    v10 = [relativeToFileHandle2 fd];
    path = [(MCMFileHandle *)self path];
    fileSystemRepresentation = [path fileSystemRepresentation];
    flags = [(MCMFileHandle *)self flags];
    createDPClass2 = [(MCMFileHandle *)self createDPClass];
    v15 = v8(v10, fileSystemRepresentation, flags, [createDPClass2 intValue], 0);
  }

  else
  {
    v16 = *(v7 + 528);
    relativeToFileHandle2 = [(MCMFileHandle *)self relativeToFileHandle];
    v17 = [relativeToFileHandle2 fd];
    path = [(MCMFileHandle *)self path];
    v15 = v16(v17, [path fileSystemRepresentation], -[MCMFileHandle flags](self, "flags"));
  }

  return v15;
}

- (NSString)description
{

  return [(MCMFileHandle *)self path];
}

- (BOOL)expectOpenWithError:(id *)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  if ([(MCMFileHandle *)self isOpen])
  {
    v5 = 0;
    v6 = 1;
LABEL_8:

    return v6;
  }

  if ([(MCMFileHandle *)self invalid])
  {
    _os_crash();
    __break(1u);
  }

  else if ([(MCMFileHandle *)self openLazily])
  {
    v8[0] = 0;
    v6 = [(MCMFileHandle *)self openWithError:v8];
    v5 = v8[0];
    if (error)
    {
      if (!v6)
      {
        v5 = v5;
        v6 = 0;
        *error = v5;
      }
    }

    goto LABEL_8;
  }

  result = _os_crash();
  __break(1u);
  return result;
}

- (BOOL)registerAppContainerForProtectionWithError:(id *)error
{
  v15[1] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  v5 = [(MCMFileHandle *)self expectOpenWithError:v15];
  v6 = v15[0];
  if (v5)
  {
    v7 = (*(*MEMORY[0x1E69E99A0] + 64))(self->_fd);
    if (v7)
    {
      v8 = v7 == 17;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      v9 = 1;
      goto LABEL_11;
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __60__MCMFileHandle_registerAppContainerForProtectionWithError___block_invoke;
    v13[3] = &unk_1E86B0618;
    v13[4] = self;
    v14 = v7;
    v10 = __60__MCMFileHandle_registerAppContainerForProtectionWithError___block_invoke(v13);

    v6 = v10;
  }

  if (error)
  {
    v11 = v6;
    v9 = 0;
    *error = v6;
  }

  else
  {
    v9 = 0;
  }

LABEL_11:

  return v9;
}

id __60__MCMFileHandle_registerAppContainerForProtectionWithError___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"sandbox_register_app_container() failed on path [%s]: error = (%d) %s", objc_msgSend(*(*(a1 + 32) + 24), "fileSystemRepresentation"), *(a1 + 40), strerror(*(a1 + 40))];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle registerAppContainerForProtectionWithError:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A76828;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  return v6;
}

- (BOOL)checkAppContainerProtection:(BOOL *)protection error:(id *)error
{
  v18 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v16 = 0;
  v7 = [(MCMFileHandle *)self expectOpenWithError:&v16];
  v8 = v16;
  if (!v7)
  {
    goto LABEL_4;
  }

  v9 = (**MEMORY[0x1E69E99A0])(self->_fd, &v17 + 1, &v17);
  if (v9)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__MCMFileHandle_checkAppContainerProtection_error___block_invoke;
    v14[3] = &unk_1E86B0618;
    v14[4] = self;
    v15 = v9;
    v10 = __51__MCMFileHandle_checkAppContainerProtection_error___block_invoke(v14);

    v8 = v10;
LABEL_4:
    if (error)
    {
      v11 = v8;
      v12 = 0;
      *error = v8;
    }

    else
    {
      v12 = 0;
    }

    goto LABEL_10;
  }

  if (protection)
  {
    *protection = HIBYTE(v17);
  }

  v12 = 1;
LABEL_10:

  return v12;
}

id __51__MCMFileHandle_checkAppContainerProtection_error___block_invoke(uint64_t a1)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"sandbox_check_protected_app_container() failed on path [%s]: error = %{darwin.errno}d", objc_msgSend(*(*(a1 + 32) + 24), "fileSystemRepresentation"), *(a1 + 40)];
  v8[0] = @"FunctionName";
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle checkAppContainerProtection:error:]_block_invoke"];
  v9[0] = v3;
  v9[1] = &unk_1F5A76810;
  v4 = *MEMORY[0x1E696A578];
  v8[1] = @"SourceFileLine";
  v8[2] = v4;
  v9[2] = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:3];

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v5];

  return v6;
}

- (BOOL)removeXattr:(id)xattr error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  xattrCopy = xattr;
  v18[0] = 0;
  v7 = [(MCMFileHandle *)self expectOpenWithError:v18];
  v8 = v18[0];
  if (!v7)
  {
    goto LABEL_6;
  }

  if (!(*(*MEMORY[0x1E69E9988] + 304))(-[MCMFileHandle fd](self, "fd"), [xattrCopy UTF8String], 0))
  {
    v10 = 1;
    goto LABEL_10;
  }

  v9 = *__error();
  v10 = 1;
  if (v9 && v9 != 93)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __35__MCMFileHandle_removeXattr_error___block_invoke;
    v14[3] = &unk_1E86B05A0;
    v15 = xattrCopy;
    selfCopy = self;
    v17 = v9;
    v11 = __35__MCMFileHandle_removeXattr_error___block_invoke(v14);

    v8 = v11;
LABEL_6:
    if (error)
    {
      v12 = v8;
      v10 = 0;
      *error = v8;
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_10:

  return v10;
}

id __35__MCMFileHandle_removeXattr_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not clear xattr [%@] from [%@]; error = %{darwin.errno}d", v3, v4, *(a1 + 48)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle removeXattr:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A767F8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  return v9;
}

- (BOOL)setXattr:(id)xattr valueAsNumber:(id)number error:(id *)error
{
  xattrCopy = xattr;
  stringValue = [number stringValue];
  LOBYTE(error) = [(MCMFileHandle *)self setXattr:xattrCopy valueAsString:stringValue error:error];

  return error;
}

- (BOOL)setXattr:(id)xattr valueAsUUID:(id)d error:(id *)error
{
  xattrCopy = xattr;
  uUIDString = [d UUIDString];
  LOBYTE(error) = [(MCMFileHandle *)self setXattr:xattrCopy valueAsString:uUIDString error:error];

  return error;
}

- (BOOL)setXattr:(id)xattr valueAsString:(id)string error:(id *)error
{
  v24[1] = *MEMORY[0x1E69E9840];
  xattrCopy = xattr;
  stringCopy = string;
  v24[0] = 0;
  v10 = [(MCMFileHandle *)self expectOpenWithError:v24];
  v11 = v24[0];
  if (v10)
  {
    uTF8String = [stringCopy UTF8String];
    v13 = strlen(uTF8String);
    if (!(*(*MEMORY[0x1E69E9988] + 328))(-[MCMFileHandle fd](self, "fd"), [xattrCopy UTF8String], uTF8String, v13, 0, 0) || (v14 = *__error()) == 0)
    {
      v17 = 1;
      goto LABEL_9;
    }

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__MCMFileHandle_setXattr_valueAsString_error___block_invoke;
    v19[3] = &unk_1E86B05F0;
    v20 = xattrCopy;
    selfCopy = self;
    v22 = stringCopy;
    v23 = v14;
    v15 = __46__MCMFileHandle_setXattr_valueAsString_error___block_invoke(v19);

    v11 = v15;
  }

  if (error)
  {
    v16 = v11;
    v17 = 0;
    *error = v11;
  }

  else
  {
    v17 = 0;
  }

LABEL_9:

  return v17;
}

id __46__MCMFileHandle_setXattr_valueAsString_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not set xattr [%@] on [%@] to [%@]; error = %{darwin.errno}d", v3, v4, *(a1 + 48), *(a1 + 56)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle setXattr:valueAsString:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A767E0;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 56) userInfo:v8];

  return v9;
}

- (id)copyValueAsNumberFromXattr:(id)xattr error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  xattrCopy = xattr;
  v19[0] = 0;
  v7 = [(MCMFileHandle *)self copyValueAsStringFromXattr:xattrCopy maxLength:20 error:v19];
  v8 = v19[0];
  if (v7)
  {
    __endptr = 0;
    v9 = strtoull([v7 UTF8String], &__endptr, 10);
    if (__endptr && !*__endptr)
    {
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9];
      if (!error)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __50__MCMFileHandle_copyValueAsNumberFromXattr_error___block_invoke;
      v14[3] = &unk_1E86B05C8;
      v15 = xattrCopy;
      selfCopy = self;
      v17 = v7;
      v10 = __50__MCMFileHandle_copyValueAsNumberFromXattr_error___block_invoke(v14);

      v11 = 0;
      v8 = v10;
      if (!error)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v11 = 0;
    if (!error)
    {
      goto LABEL_11;
    }
  }

  if (!v11)
  {
    v12 = v8;
    *error = v8;
  }

LABEL_11:

  return v11;
}

id __50__MCMFileHandle_copyValueAsNumberFromXattr_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Xattr [%@] on [%@] was not a number; value = [%@]", v3, v4, *(a1 + 48)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle copyValueAsNumberFromXattr:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A767C8;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v8];

  return v9;
}

- (id)copyValueAsUUIDFromXattr:(id)xattr error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  xattrCopy = xattr;
  v18[0] = 0;
  v7 = [(MCMFileHandle *)self copyValueAsStringFromXattr:xattrCopy maxLength:36 error:v18];
  v8 = v18[0];
  if (v7)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v7];
    if (v9)
    {
      v10 = v9;
      goto LABEL_8;
    }

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__MCMFileHandle_copyValueAsUUIDFromXattr_error___block_invoke;
    v14[3] = &unk_1E86B05C8;
    v15 = xattrCopy;
    selfCopy = self;
    v17 = v7;
    v11 = __48__MCMFileHandle_copyValueAsUUIDFromXattr_error___block_invoke(v14);

    v8 = v11;
  }

  if (error)
  {
    v12 = v8;
    v10 = 0;
    *error = v8;
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

id __48__MCMFileHandle_copyValueAsUUIDFromXattr_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Xattr [%@] on [%@] was not a UUID; value = [%@]", v3, v4, *(a1 + 48)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle copyValueAsUUIDFromXattr:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A767B0;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v8];

  return v9;
}

- (id)copyValueAsStringFromXattr:(id)xattr maxLength:(unint64_t)length error:(id *)error
{
  __s[1] = *MEMORY[0x1E69E9840];
  xattrCopy = xattr;
  v23 = 0;
  __s[0] = 0;
  v9 = [(MCMFileHandle *)self expectOpenWithError:&v23];
  v10 = v23;
  if (!v9)
  {
    v12 = 0;
    goto LABEL_12;
  }

  if (length + 1 > 1)
  {
    v11 = length + 1;
  }

  else
  {
    v11 = 1;
  }

  v12 = malloc_type_calloc(v11, 1uLL, 0x100004077774924uLL);
  __s[0] = v12;
  if (!v12)
  {
LABEL_12:
    v14 = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v13 = (*(*MEMORY[0x1E69E9988] + 264))(-[MCMFileHandle fd](self, "fd"), [xattrCopy UTF8String], v12, length, 0, 0);
  if (v13 < 1)
  {
    if (*__error() != 93)
    {
      v17 = *__error();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __60__MCMFileHandle_copyValueAsStringFromXattr_maxLength_error___block_invoke;
      v19[3] = &unk_1E86B05A0;
      v20 = xattrCopy;
      selfCopy = self;
      v22 = v17;
      v18 = __60__MCMFileHandle_copyValueAsStringFromXattr_maxLength_error___block_invoke(v19);

      v14 = 0;
      v10 = v18;
      if (!error)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v13 < length)
  {
    v12[v13] = 0;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v12];
  if (error)
  {
LABEL_13:
    if (!v14)
    {
      v15 = v10;
      *error = v10;
    }
  }

LABEL_15:
  if (v12)
  {
    free(v12);
    memset_s(__s, 8uLL, 0, 8uLL);
  }

  return v14;
}

id __60__MCMFileHandle_copyValueAsStringFromXattr_maxLength_error___block_invoke(uint64_t a1)
{
  v12[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) path];
  v5 = [v2 initWithFormat:@"Could not read xattr [%@] from [%@]; error = %{darwin.errno}d", v3, v4, *(a1 + 48)];

  v11[0] = @"FunctionName";
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle copyValueAsStringFromXattr:maxLength:error:]_block_invoke"];
  v12[0] = v6;
  v12[1] = &unk_1F5A76798;
  v7 = *MEMORY[0x1E696A578];
  v11[1] = @"SourceFileLine";
  v11[2] = v7;
  v12[2] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];

  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v8];

  return v9;
}

- (BOOL)setPermissions:(unsigned __int16)permissions andOwner:(id)owner error:(id *)error
{
  permissionsCopy = permissions;
  v24[1] = *MEMORY[0x1E69E9840];
  ownerCopy = owner;
  v24[0] = 0;
  v9 = [(MCMFileHandle *)self expectOpenWithError:v24];
  v10 = v24[0];
  if (v9)
  {
    v11 = MEMORY[0x1E69E9988];
    if ((*(*MEMORY[0x1E69E9988] + 208))([(MCMFileHandle *)self fd], permissionsCopy) && (v12 = *__error()) != 0)
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke;
      v21[3] = &unk_1E86B0578;
      v21[4] = self;
      v23 = permissionsCopy;
      v22 = v12;
      v13 = __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke(v21);
    }

    else
    {
      if (!ownerCopy || !(*(*v11 + 224))(-[MCMFileHandle fd](self, "fd"), [ownerCopy UID], objc_msgSend(ownerCopy, "primaryGID")) || (v14 = *__error()) == 0)
      {
        v16 = 1;
        goto LABEL_14;
      }

      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke_26;
      v18[3] = &unk_1E86B05A0;
      v18[4] = self;
      v19 = ownerCopy;
      v20 = v14;
      v13 = __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke_26(v18);

      v10 = v19;
    }

    v10 = v13;
  }

  if (error)
  {
    v15 = v10;
    v16 = 0;
    *error = v10;
  }

  else
  {
    v16 = 0;
  }

LABEL_14:

  return v16;
}

id __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not chmod [%@] to [0%o]; error = %{darwin.errno}d", v3, *(a1 + 44), *(a1 + 40)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle setPermissions:andOwner:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76768;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 40) userInfo:v7];

  return v8;
}

id __47__MCMFileHandle_setPermissions_andOwner_error___block_invoke_26(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Could not chown [%@] to [%@]; error = %{darwin.errno}d", v3, *(a1 + 40), *(a1 + 48)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle setPermissions:andOwner:error:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76780;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*(a1 + 48) userInfo:v7];

  return v8;
}

- (BOOL)withOpenFileDoBlock:(id)block
{
  v9[1] = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v9[0] = 0;
  v5 = [(MCMFileHandle *)self openWithError:v9];
  v6 = v9[0];
  v7 = v5 & blockCopy[2](blockCopy, v6);
  [(MCMFileHandle *)self close];

  return v7;
}

- (BOOL)openWithError:(id *)error
{
  v11[5] = *MEMORY[0x1E69E9840];
  if (![(MCMFileHandle *)self isOpen])
  {
    if ([(MCMFileHandle *)self invalid])
    {
      result = _os_crash();
      __break(1u);
      return result;
    }

    openError = [(MCMFileHandle *)self openError];

    if (!openError)
    {
      relativeToFileHandle = [(MCMFileHandle *)self relativeToFileHandle];

      if (relativeToFileHandle)
      {
        _openRelative = [(MCMFileHandle *)self _openRelative];
      }

      else
      {
        _openRelative = [(MCMFileHandle *)self _openAbsolute];
      }

      self->_fd = _openRelative;
      if (_openRelative < 0)
      {
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __31__MCMFileHandle_openWithError___block_invoke;
        v11[3] = &unk_1E86B0B98;
        v11[4] = self;
        v8 = __31__MCMFileHandle_openWithError___block_invoke(v11);
        [(MCMFileHandle *)self setOpenError:v8];
      }

      else
      {
        [(MCMFileHandle *)self setOpen:1];
      }
    }
  }

  isOpen = [(MCMFileHandle *)self isOpen];
  if (error)
  {
    if (!isOpen)
    {
      *error = [(MCMFileHandle *)self openError];
    }
  }

  return [(MCMFileHandle *)self isOpen];
}

id __31__MCMFileHandle_openWithError___block_invoke(uint64_t a1)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [*(a1 + 32) path];
  v4 = [v2 initWithFormat:@"Failed to open [%@] with [%@]", v3, *(a1 + 32)];

  v10[0] = @"FunctionName";
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[MCMFileHandle openWithError:]_block_invoke"];
  v11[0] = v5;
  v11[1] = &unk_1F5A76750;
  v6 = *MEMORY[0x1E696A578];
  v10[1] = @"SourceFileLine";
  v10[2] = v6;
  v11[2] = v4;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:*__error() userInfo:v7];

  return v8;
}

- (MCMFileHandle)initWithPath:(id)path relativeToFileHandle:(id)handle direction:(unint64_t)direction symlinks:(unint64_t)symlinks createMode:(unsigned __int16)mode createDPClass:(id)class openLazily:(BOOL)lazily
{
  v26 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  handleCopy = handle;
  classCopy = class;
  v25.receiver = self;
  v25.super_class = MCMFileHandle;
  v19 = [(MCMFileHandle *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_path, path);
    objc_storeStrong(&v20->_relativeToFileHandle, handle);
    v20->_direction = direction;
    v20->_symlinks = symlinks;
    v20->_openLazily = lazily;
    v20->_fd = -1;
    v20->_invalid = 0;
    openError = v20->_openError;
    v20->_openError = 0;

    v20->_open = 0;
    _computeFlags = [(MCMFileHandle *)v20 _computeFlags];
    createDPClass = v20->_createDPClass;
    v20->_flags = _computeFlags;
    v20->_createMode = 0;
    v20->_createDPClass = 0;

    if ((v20->_flags & 0x200) != 0)
    {
      v20->_createMode = mode;
      objc_storeStrong(&v20->_createDPClass, class);
    }
  }

  return v20;
}

+ (int64_t)compareDataProtectionClassTarget:(id)target withExisting:(id)existing
{
  existingCopy = existing;
  intValue = [target intValue];
  intValue2 = [existingCopy intValue];

  if ((intValue2 | intValue) > 7 || intValue - 5 < 2)
  {
    return 0;
  }

  v9 = MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[intValue2];
  if ((intValue2 - 5) < 2)
  {
    v9 = 2;
  }

  if (MCMCompareDataProtectionClassTarget_kDataProtectionClassPrecedence[intValue] <= v9)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

@end