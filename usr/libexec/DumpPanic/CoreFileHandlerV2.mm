@interface CoreFileHandlerV2
- (BOOL)getCorefileLogInfo:(unint64_t *)info :(unint64_t *)a4 :(unsigned int *)a5;
- (BOOL)isZeroes:(id)zeroes;
- (CoreFileHandlerV2)initWithCoreFilePath:(char *)path :(BOOL)a4 :(id)a5;
- (const)getCoreDumpNameWithIndex:(unint64_t)index;
- (id)getCoreDumpEncryptionKey:(unint64_t)key;
- (void)getCoreDumpInfoWithIndex:(unint64_t)index :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6;
@end

@implementation CoreFileHandlerV2

- (id)getCoreDumpEncryptionKey:(unint64_t)key
{
  if (self->_corefileHeader->num_files <= key)
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    encryptionPublicKey = self->_encryptionPublicKey;

    return encryptionPublicKey;
  }

  return result;
}

- (BOOL)getCorefileLogInfo:(unint64_t *)info :(unint64_t *)a4 :(unsigned int *)a5
{
  if (!info)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_9:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!a4)
  {
    goto LABEL_9;
  }

  corefileHeader = self->_corefileHeader;
  log_length = corefileHeader->log_length;
  *a4 = log_length;
  if (log_length)
  {
    *info = corefileHeader->log_offset;
    *a5 = 0;
    flags = corefileHeader->flags;
    if (flags)
    {
      if ((flags & 0x100) == 0)
      {
        v9 = qword_100042AF8;
        if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v14 = flags;
          _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unsupported encryption key format in corefile flags: %llu", buf, 0xCu);
        }

        v10 = [NSString stringWithFormat:@"%s must be implemented", "Encryption key format"];
        v11 = [NSException exceptionWithName:NSInvalidArgumentException reason:v10 userInfo:0];
        v12 = v11;

        objc_exception_throw(v11);
      }

      *a5 = 4;
    }
  }

  return log_length != 0;
}

- (void)getCoreDumpInfoWithIndex:(unint64_t)index :(unint64_t *)a4 :(unint64_t *)a5 :(unsigned int *)a6
{
  corefileHeader = self->_corefileHeader;
  if (corefileHeader->num_files <= index)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  if (!a4)
  {
LABEL_16:
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_17;
  }

  if (!a5)
  {
LABEL_17:
    _os_assert_log();
    _os_crash();
    __break(1u);
LABEL_18:
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = &corefileHeader->signature + 5 * index;
  v8 = v7[8];
  *a4 = v7[9];
  *a5 = v7[10];
  *a6 = 0;
  if ((v8 & 0x100) != 0)
  {
    v9 = 5;
    v10 = 1;
    goto LABEL_11;
  }

  if ((v8 & 0x200) != 0)
  {
    v9 = 6;
    v10 = 2;
LABEL_11:
    *a6 = v10;
    if ((v8 & 1) == 0)
    {
      return;
    }

    goto LABEL_12;
  }

  v9 = 4;
  if ((v8 & 1) == 0)
  {
    return;
  }

LABEL_12:
  flags = corefileHeader->flags;
  if ((flags & 0x100) == 0)
  {
    v12 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v17 = flags;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unsupported encryption key format in corefile flags: %llu", buf, 0xCu);
    }

    v13 = [NSString stringWithFormat:@"%s must be implemented", "Encryption key format"];
    v14 = [NSException exceptionWithName:NSInvalidArgumentException reason:v13 userInfo:0];
    v15 = v14;

    objc_exception_throw(v14);
  }

  *a6 = v9;
}

- (const)getCoreDumpNameWithIndex:(unint64_t)index
{
  corefileHeader = self->_corefileHeader;
  if (corefileHeader->num_files > index)
  {
    return (&corefileHeader[1].pub_key_offset + 5 * index);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

- (CoreFileHandlerV2)initWithCoreFilePath:(char *)path :(BOOL)a4 :(id)a5
{
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v5 = [(CoreFileHandler *)self initWithCoreFilePath:path];
  if (!v5)
  {
    goto LABEL_39;
  }

  v6 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v55 = *(&v53 + 1);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "opened corefile, header indicates %llu files present", buf, 0xCu);
  }

  v7 = *(&v51 + 1);
  v8 = v52;
  if (__CFADD__(*(&v51 + 1), v52) || (v9 = v5->super._corefileSize, *(&v51 + 1) + v52 > v9))
  {
    v10 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      corefileSize = v5->super._corefileSize;
      *buf = 134218496;
      v55 = v7;
      v56 = 1024;
      *v57 = v8;
      *&v57[4] = 2048;
      *&v57[6] = corefileSize;
      v37 = "Corefile corrupted. Public key (offset %llu, length %hu) extends past end of file (length %zu).";
      v38 = v10;
      v39 = 28;
      goto LABEL_36;
    }

    goto LABEL_7;
  }

  v13 = *(&v52 + 1);
  v12 = v53;
  if (__CFADD__(*(&v52 + 1), v53) || *(&v52 + 1) + v53 > v9)
  {
    v36 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v55 = v13;
      v56 = 2048;
      *v57 = v12;
      *&v57[8] = 2048;
      *&v57[10] = v9;
      v37 = "Corefile corrupted. Log (offset %llu, length %llu) extends past end of file (length %zu).";
      v38 = v36;
      v39 = 32;
      goto LABEL_36;
    }

    goto LABEL_7;
  }

  v14 = *(&v53 + 1);
  v15 = 40 * *(&v53 + 1) + 64;
  if (!is_mul_ok(*(&v53 + 1), 0x28uLL) || (40 * *(&v53 + 1)) >= 0xFFFFFFFFFFFFFFC0 || v15 > v9)
  {
    v40 = qword_100042AF8;
    if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218752;
      v55 = 64;
      v56 = 2048;
      *v57 = v14;
      *&v57[8] = 2048;
      *&v57[10] = 40;
      v58 = 2048;
      v59 = v9;
      v37 = "Corefile corrupted. Header (size %zu) and %llu file headers (each of size %zu) extend past end of file (length %zu).";
      v38 = v40;
      v39 = 42;
      goto LABEL_36;
    }

    goto LABEL_7;
  }

  v16 = [(CoreFileHandler *)v5 getCoreDumpContentsWithOffset:0 AndLength:40 * *(&v53 + 1) + 64];
  headerData = v5->_headerData;
  v5->_headerData = v16;

  corefileHeader = [(NSData *)v5->_headerData bytes];
  v5->_corefileHeader = corefileHeader;
  v19 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v55 = v15;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Successfully read %llu bytes for the corefile headers", buf, 0xCu);
    corefileHeader = v5->_corefileHeader;
  }

  if (!corefileHeader->num_files)
  {
LABEL_22:
    pub_key_offset = corefileHeader->pub_key_offset;
    if (pub_key_offset && (pub_key_length = corefileHeader->pub_key_length) != 0)
    {
      v28 = qword_100042AF8;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Reading public encryption key from corefile", buf, 2u);
        v29 = v5->_corefileHeader;
        pub_key_offset = v29->pub_key_offset;
        pub_key_length = v29->pub_key_length;
      }

      v30 = [(CoreFileHandler *)v5 getCoreDumpContentsWithOffset:pub_key_offset AndLength:pub_key_length];
      p_encryptionPublicKey = &v5->_encryptionPublicKey;
      encryptionPublicKey = v5->_encryptionPublicKey;
      v5->_encryptionPublicKey = v30;

      v33 = qword_100042AF8;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
      {
        v34 = v5->_corefileHeader->pub_key_length;
        *buf = 67109120;
        LODWORD(v55) = v34;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Successfully read %hu bytes for the public encryption key", buf, 8u);
      }

      if (![(CoreFileHandlerV2 *)v5 isZeroes:*p_encryptionPublicKey])
      {
        flags = v5->_corefileHeader->flags;
        if ((flags & 0x100) == 0)
        {
          v49 = qword_100042AF8;
          if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            v55 = flags;
            _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Unsupported encryption key format in corefile flags: %llu", buf, 0xCu);
          }

          v11 = 0;
          v5->super._zero_on_close = 0;
          goto LABEL_40;
        }

LABEL_39:
        v11 = v5;
        goto LABEL_40;
      }

      v35 = qword_100042AF8;
      if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Public encryption key is empty. Corefile is not encrypted", buf, 2u);
      }
    }

    else
    {
      p_encryptionPublicKey = &v5->_encryptionPublicKey;
    }

    v42 = *p_encryptionPublicKey;
    *p_encryptionPublicKey = 0;

    goto LABEL_39;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    if (strnlen(&corefileHeader[1].pub_key_offset + v20, 0x10uLL) == 16)
    {
      v44 = qword_100042AF8;
      if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 134217984;
      v55 = v21;
      v37 = "Corefile corrupted. File %zu's name was not terminated.";
LABEL_45:
      v38 = v44;
      v39 = 12;
      goto LABEL_36;
    }

    v22 = [NSString stringWithUTF8String:&corefileHeader[1].pub_key_offset + v20];

    if (!v22)
    {
      v44 = qword_100042AF8;
      if (!os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_7;
      }

      *buf = 134217984;
      v55 = v21;
      v37 = "Corefile corrupted. File %zu's name is not a valid string.";
      goto LABEL_45;
    }

    v23 = corefileHeader + v20;
    v25 = *(&corefileHeader[1].version + v20);
    v24 = *(&corefileHeader[1].flags + v20);
    if (__CFADD__(v25, v24))
    {
      goto LABEL_47;
    }

    if (v25 + v24 > v5->super._corefileSize)
    {
      break;
    }

    ++v21;
    corefileHeader = v5->_corefileHeader;
    v20 += 40;
    if (v21 >= corefileHeader->num_files)
    {
      goto LABEL_22;
    }
  }

  v23 = corefileHeader + v20;
LABEL_47:
  v45 = v23 + 88;
  v46 = qword_100042AF8;
  if (os_log_type_enabled(qword_100042AF8, OS_LOG_TYPE_ERROR))
  {
    v47 = v5->super._corefileSize;
    *buf = 134219010;
    v55 = v21;
    v56 = 2080;
    *v57 = v45;
    *&v57[8] = 2048;
    *&v57[10] = v25;
    v58 = 2048;
    v59 = v24;
    v60 = 2048;
    v61 = v47;
    v37 = "Corefile corrupted. File %zu's (name %s, offset %llu, length %llu) extends past end of file (length %zu).";
    v38 = v46;
    v39 = 52;
LABEL_36:
    _os_log_error_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
  }

LABEL_7:
  v11 = 0;
LABEL_40:

  return v11;
}

- (BOOL)isZeroes:(id)zeroes
{
  zeroesCopy = zeroes;
  bytes = [zeroesCopy bytes];
  if ([zeroesCopy length])
  {
    v5 = 0;
    while (1)
    {
      v6 = bytes[v5] == 0;
      if (bytes[v5])
      {
        break;
      }

      if (++v5 >= [zeroesCopy length])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v6 = 1;
  }

  return v6;
}

@end