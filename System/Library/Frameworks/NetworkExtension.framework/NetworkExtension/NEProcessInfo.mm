@interface NEProcessInfo
+ (BOOL)is64bitCapable;
+ (id)copyDNSUUIDs;
+ (id)copyNEHelperUUIDs;
+ (id)copyUUIDsForBundleID:(id)d uid:(unsigned int)uid;
+ (id)copyUUIDsForExecutable:(id)executable;
+ (id)copyUUIDsForExecutableWithoutCache:(id)cache;
+ (id)copyUUIDsForPID:(int)d;
+ (id)copyUUIDsFromExecutable:(uint64_t)executable;
+ (uint64_t)copyUUIDForSingleArch:(uint64_t)arch;
+ (void)clearUUIDCache;
+ (void)initGlobals;
@end

@implementation NEProcessInfo

+ (id)copyUUIDsForPID:(int)d
{
  v8 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (proc_pidpath(d, buffer, 0x400u) < 0)
  {
    return 0;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
  v5 = [NEProcessInfo copyUUIDsForExecutable:v4];

  return v5;
}

+ (BOOL)is64bitCapable
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v6 = 4;
  if (sysctlbyname("hw.cpu64bit_capable", &v7, &v6, 0, 0))
  {
    v2 = ne_log_obj();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = __error();
      v5 = strerror(*v4);
      *buf = 136315138;
      v9 = v5;
      _os_log_error_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_ERROR, "Failed to get 64 bit capability: %s", buf, 0xCu);
    }
  }

  return v7 != 0;
}

+ (id)copyNEHelperUUIDs
{
  v2 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/libexec/nehelper"];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v3 addObjectsFromArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (id)copyDNSUUIDs
{
  v2 = [NEProcessInfo copyUUIDsForExecutable:@"/usr/sbin/mDNSResponder"];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    [v3 addObjectsFromArray:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (void)clearUUIDCache
{
  +[NEProcessInfo initGlobals];
  v2 = g_queue;

  dispatch_sync(v2, &__block_literal_global_10_15549);
}

+ (void)initGlobals
{
  objc_opt_self();
  if (initGlobals_mapping_init != -1)
  {

    dispatch_once(&initGlobals_mapping_init, &__block_literal_global_15551);
  }
}

uint64_t __28__NEProcessInfo_initGlobals__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("NEProcessInfo queue", v0);
  v2 = g_queue;
  g_queue = v1;

  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  v4 = g_executableUUIDMapping;
  g_executableUUIDMapping = v3;

  return MEMORY[0x1EEE66BB8](v3, v4);
}

+ (id)copyUUIDsForExecutable:(id)executable
{
  executableCopy = executable;
  +[NEProcessInfo initGlobals];
  v4 = 0;
  if (executableCopy && g_executableUUIDMapping)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = g_queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __40__NEProcessInfo_copyUUIDsForExecutable___block_invoke;
    v12 = &unk_1E7F0A0E8;
    v13 = executableCopy;
    v7 = v5;
    v14 = v7;
    dispatch_sync(v6, &v9);
    if ([v7 count])
    {
      v4 = v7;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void __40__NEProcessInfo_copyUUIDsForExecutable___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [g_executableUUIDMapping objectForKeyedSubscript:v2];

  if (v3)
  {
    v4 = *(a1 + 40);
    v5 = [g_executableUUIDMapping objectForKeyedSubscript:v2];
    [v4 addObjectsFromArray:v5];

    v6 = ne_log_obj();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [g_executableUUIDMapping objectForKeyedSubscript:v2];
      v10 = 136315650;
      v11 = "+[NEProcessInfo copyUUIDsForExecutable:]_block_invoke";
      v12 = 2112;
      v13 = v2;
      v14 = 2112;
      v15 = v7;
      _os_log_debug_impl(&dword_1BA83C000, v6, OS_LOG_TYPE_DEBUG, "%s: cached %@ UUID %@", &v10, 0x20u);
    }
  }

  else
  {
    v8 = +[NEProcessInfo copyUUIDsFromExecutable:](NEProcessInfo, [v2 UTF8String]);
    if (v8)
    {
      v6 = v8;
      [g_executableUUIDMapping setObject:v8 forKeyedSubscript:v2];
      [*(a1 + 40) addObjectsFromArray:v6];
    }

    else
    {
      v9 = ne_log_obj();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315394;
        v11 = "+[NEProcessInfo copyUUIDsForExecutable:]_block_invoke";
        v12 = 2112;
        v13 = v2;
        _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%s: failed to get UUIDs for %@", &v10, 0x16u);
      }

      v6 = 0;
    }
  }
}

+ (id)copyUUIDsFromExecutable:(uint64_t)executable
{
  v53 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (!a2)
  {
    return 0;
  }

  v3 = open(a2, 0);
  if (v3 < 0)
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v27 = __error();
      v28 = strerror(*v27);
      host_info_out[0] = 136315650;
      *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
      LOWORD(host_info_out[3]) = 2080;
      *(&host_info_out[3] + 2) = a2;
      HIWORD(host_info_out[5]) = 2080;
      *&host_info_out[6] = v28;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "%s: cannot open %s: %s", host_info_out, 0x20u);
    }

    return 0;
  }

  v4 = v3;
  v41 = 0;
  if (read(v3, &v41, 4uLL) != 4)
  {
    v9 = ne_log_obj();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v29 = __error();
      v30 = strerror(*v29);
      host_info_out[0] = 136315650;
      *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
      LOWORD(host_info_out[3]) = 2080;
      *(&host_info_out[3] + 2) = a2;
      HIWORD(host_info_out[5]) = 2080;
      *&host_info_out[6] = v30;
      _os_log_error_impl(&dword_1BA83C000, v9, OS_LOG_TYPE_ERROR, "%s: cannot read magic for %s: %s", host_info_out, 0x20u);
    }

    goto LABEL_14;
  }

  lseek(v4, 0, 0);
  if ((v41 + 17958194) < 2)
  {
    v5 = [NEProcessInfo copyUUIDForSingleArch:v4];
    v6 = v5;
    if (v5)
    {
      v46 = v5;
      v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v46 count:1];
    }

    else
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        host_info_out[0] = 136315138;
        *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
        _os_log_error_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_ERROR, "%s: failed to get UUID for Single Arch", host_info_out, 0xCu);
      }

      v7 = 0;
    }

    goto LABEL_23;
  }

  v7 = 0;
  if (v41 != -1095041334)
  {
    goto LABEL_23;
  }

  v10 = objc_opt_self();
  v52 = 0u;
  memset(host_info_out, 0, sizeof(host_info_out));
  host_info_outCnt = 12;
  v11 = MEMORY[0x1BFAFA980](v10);
  if (host_info(v11, 1, host_info_out, &host_info_outCnt))
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v13 = "%s: cannot get host_info";
LABEL_43:
      _os_log_error_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_ERROR, v13, buf, 0xCu);
      goto LABEL_46;
    }

    goto LABEL_46;
  }

  v44 = 0;
  if (read(v4, &v44, 8uLL) != 8)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v13 = "%s: failed to read file";
      goto LABEL_43;
    }

LABEL_46:

LABEL_14:
    v7 = 0;
    goto LABEL_23;
  }

  v17 = HIDWORD(v44);
  v18 = bswap32(HIDWORD(v44));
  v19 = ne_log_obj();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
    v49 = 1024;
    LODWORD(v50[0]) = v18;
    _os_log_debug_impl(&dword_1BA83C000, v19, OS_LOG_TYPE_DEBUG, "%s: number of arch detected: %d", buf, 0x12u);
  }

  if (!v17)
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1BA83C000, v12, OS_LOG_TYPE_DEFAULT, "Number of architectures is 0", buf, 2u);
    }

    goto LABEL_46;
  }

  if (v18 >= 0x20)
  {
    v20 = 32;
  }

  else
  {
    v20 = v18;
  }

  v21 = malloc_type_malloc(4 * (v20 + 4 * v20), 0x1000040A86A77D5uLL);
  if (!v21)
  {
    goto LABEL_14;
  }

  v22 = v21;
  v23 = v21;
  v24 = v20;
  do
  {
    v42 = 0uLL;
    v43 = 0;
    if (read(v4, &v42, 0x14uLL) != 20)
    {
      v31 = ne_log_obj();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
        _os_log_error_impl(&dword_1BA83C000, v31, OS_LOG_TYPE_ERROR, "%s: failed to read arch info", buf, 0xCu);
      }

      v7 = 0;
      goto LABEL_74;
    }

    LODWORD(v42) = bswap32(v42);
    v25 = ne_log_obj();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v49 = 1024;
      LODWORD(v50[0]) = v42;
      WORD2(v50[0]) = 1024;
      *(v50 + 6) = v42;
      _os_log_debug_impl(&dword_1BA83C000, v25, OS_LOG_TYPE_DEBUG, "%s: cpu type %X (%d)", buf, 0x18u);
    }

    DWORD2(v42) = bswap32(DWORD2(v42));
    v26 = v42;
    v23[4] = v43;
    *v23 = v26;
    v23 += 5;
    --v24;
  }

  while (v24);
  v7 = 0;
  v32 = v22 + 2;
  do
  {
    v33 = *v32;
    if (!*v32)
    {
      v36 = ne_log_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 136315138;
      v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v37 = "%s: invalid offset";
      v38 = v36;
      v39 = 12;
LABEL_65:
      _os_log_error_impl(&dword_1BA83C000, v38, OS_LOG_TYPE_ERROR, v37, buf, v39);
      goto LABEL_73;
    }

    v34 = *(v32 - 2);
    if (lseek(v4, *v32, 0) == -1)
    {
      v36 = ne_log_obj();
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_73;
      }

      *buf = 136315394;
      v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
      v49 = 1024;
      LODWORD(v50[0]) = v33;
      v37 = "%s: failed to seek to offset %u";
      v38 = v36;
      v39 = 18;
      goto LABEL_65;
    }

    v35 = [NEProcessInfo copyUUIDForSingleArch:v4];
    if (!v35)
    {
      v40 = ne_log_obj();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
        v49 = 1024;
        LODWORD(v50[0]) = v33;
        _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%s: failed to get uuid for offset %u", buf, 0x12u);
      }

      v36 = 0;
      goto LABEL_72;
    }

    v36 = v35;
    if (!v7)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      if (!v7)
      {
        v40 = ne_log_obj();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
          _os_log_error_impl(&dword_1BA83C000, v40, OS_LOG_TYPE_ERROR, "%s: failed allocate UUID array", buf, 0xCu);
        }

        v7 = 0;
LABEL_72:

        goto LABEL_73;
      }
    }

    if (v34 == host_info_out[3])
    {
      [v7 insertObject:v36 atIndex:0];
    }

    else
    {
      [v7 addObject:v36];
    }

    v32 += 5;

    --v20;
  }

  while (v20);
  v36 = ne_log_obj();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    v48 = "+[NEProcessInfo copyUUIDsForFatBinary:]";
    v49 = 2112;
    v50[0] = v7;
    _os_log_debug_impl(&dword_1BA83C000, v36, OS_LOG_TYPE_DEBUG, "%s: uuids %@", buf, 0x16u);
  }

LABEL_73:

LABEL_74:
  free(v22);
LABEL_23:
  close(v4);
  v15 = ne_log_obj();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    host_info_out[0] = 136315394;
    *&host_info_out[1] = "+[NEProcessInfo copyUUIDsFromExecutable:]";
    LOWORD(host_info_out[3]) = 2112;
    *(&host_info_out[3] + 2) = v7;
    _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "%s: UUIDs %@", host_info_out, 0x16u);
  }

  return v7;
}

+ (uint64_t)copyUUIDForSingleArch:(uint64_t)arch
{
  v17[2] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v9[0] = 0;
  v9[1] = 0;
  v11 = 0;
  v10 = 0;
  if (read(a2, v9, 0x1CuLL) == 28)
  {
    if (LODWORD(v9[0]) == -17958193)
    {
      lseek(a2, 4, 1);
    }

    if (v10)
    {
      for (i = 0; i < v10; ++i)
      {
        v8 = 0;
        if (read(a2, &v8, 8uLL) != 8)
        {
          break;
        }

        if (v8 == 27)
        {
          v16 = 0;
          v17[0] = 0;
          v17[1] = 0;
          v6 = read(a2, v17, 0x10uLL);
          v4 = 0;
          if (v6 == 16)
          {
            v4 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v17];
            v7 = ne_log_obj();
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
            {
              *buf = 136315394;
              v13 = "+[NEProcessInfo copyUUIDForSingleArch:]";
              v14 = 2112;
              v15 = v4;
              _os_log_debug_impl(&dword_1BA83C000, v7, OS_LOG_TYPE_DEBUG, "%s: got UUID %@", buf, 0x16u);
            }
          }

          return v4;
        }

        lseek(a2, HIDWORD(v8) - 8, 1);
      }
    }
  }

  return 0;
}

+ (id)copyUUIDsForExecutableWithoutCache:(id)cache
{
  cacheCopy = cache;
  +[NEProcessInfo initGlobals];
  if (cacheCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = g_queue;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __52__NEProcessInfo_copyUUIDsForExecutableWithoutCache___block_invoke;
    v12 = &unk_1E7F0A0E8;
    v13 = cacheCopy;
    v6 = v4;
    v14 = v6;
    dispatch_sync(v5, &v9);
    if ([v6 count])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __52__NEProcessInfo_copyUUIDsForExecutableWithoutCache___block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = +[NEProcessInfo copyUUIDsFromExecutable:](NEProcessInfo, [v2 UTF8String]);
  if (v3)
  {
    [g_executableUUIDMapping setObject:v3 forKeyedSubscript:v2];
    [*(a1 + 40) addObjectsFromArray:v3];
  }

  else
  {
    v4 = ne_log_obj();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      v6 = "+[NEProcessInfo copyUUIDsForExecutableWithoutCache:]_block_invoke";
      v7 = 2112;
      v8 = v2;
      _os_log_error_impl(&dword_1BA83C000, v4, OS_LOG_TYPE_ERROR, "%s: failed to get UUIDs for %@", &v5, 0x16u);
    }
  }
}

+ (id)copyUUIDsForBundleID:(id)d uid:(unsigned int)uid
{
  v4 = MEMORY[0x1E695DF70];
  dCopy = d;
  v6 = objc_alloc_init(v4);
  [dCopy UTF8String];
  v7 = NEHelperCacheCopyAppUUIDMappingForUIDExtended();
  v8 = v7;
  if (v7 && MEMORY[0x1BFAFC5E0](v7) == MEMORY[0x1E69E9E50])
  {
    applier[0] = MEMORY[0x1E69E9820];
    applier[1] = 3221225472;
    applier[2] = __42__NEProcessInfo_copyUUIDsForBundleID_uid___block_invoke;
    applier[3] = &unk_1E7F09530;
    v11 = v6;
    xpc_array_apply(v8, applier);
  }

  return v6;
}

uint64_t __42__NEProcessInfo_copyUUIDsForBundleID_uid___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if (v4 && MEMORY[0x1BFAFC5E0](v4) == MEMORY[0x1E69E9F20])
  {
    v6 = *(a1 + 32);
    v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v5)];
    [v6 addObject:v7];
  }

  return 1;
}

@end