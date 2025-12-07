@interface NEAppInfoCache
+ (id)sharedAppInfoCache;
- (BOOL)appInfo:(void *)info mismatchedWithUUID:(void *)d andBundleID:;
- (NEAppInfoCache)init;
- (id)bundleIDWithoutTeamID:(void *)d;
- (void)addAppInfoToCache:(void *)cache;
- (void)appInfoForPid:(void *)pid UUID:(void *)d bundleID:(void *)iD completionHandler:;
- (void)performCustomLookupIfNecessaryForPid:(void *)pid UUID:(void *)d bundleID:(void *)iD completionHandler:;
@end

@implementation NEAppInfoCache

- (NEAppInfoCache)init
{
  v9.receiver = self;
  v9.super_class = NEAppInfoCache;
  v2 = [(NEAppInfoCache *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedSourceAppInfo = v2->_cachedSourceAppInfo;
    v2->_cachedSourceAppInfo = v3;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("NEAppInfoCache queue", v5);
    cacheQueue = v2->_cacheQueue;
    v2->_cacheQueue = v6;
  }

  return v2;
}

+ (id)sharedAppInfoCache
{
  objc_opt_self();
  if (sharedAppInfoCache_onceToken != -1)
  {
    dispatch_once(&sharedAppInfoCache_onceToken, &__block_literal_global);
  }

  v1 = sharedAppInfoCache_sharedAppInfoCache;

  return v1;
}

uint64_t __36__NEAppInfoCache_sharedAppInfoCache__block_invoke()
{
  v0 = objc_alloc_init(NEAppInfoCache);
  v1 = sharedAppInfoCache_sharedAppInfoCache;
  sharedAppInfoCache_sharedAppInfoCache = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)appInfoForPid:(void *)pid UUID:(void *)d bundleID:(void *)iD completionHandler:
{
  v25 = *MEMORY[0x1E69E9840];
  pidCopy = pid;
  dCopy = d;
  iDCopy = iD;
  if (self)
  {
    if (a2 < 0)
    {
      v14 = ne_log_obj();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v22 = "[NEAppInfoCache appInfoForPid:UUID:bundleID:completionHandler:]";
        v23 = 1024;
        v24 = a2;
        _os_log_fault_impl(&dword_1BA83C000, v14, OS_LOG_TYPE_FAULT, "%s got invalid pid: %d", buf, 0x12u);
      }

      iDCopy[2](iDCopy, 0);
    }

    else
    {
      Property = objc_getProperty(self, v11, 24, 1);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke;
      block[3] = &unk_1E7F08BD0;
      v20 = a2;
      v16 = pidCopy;
      v17 = dCopy;
      selfCopy = self;
      v19 = iDCopy;
      dispatch_async(Property, block);
    }
  }
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  v2 = ne_log_obj();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v29 = *(a1 + 64);
    v30 = *(a1 + 32);
    v31 = *(a1 + 40);
    *buf = 67109634;
    v50 = v29;
    v51 = 2112;
    v52 = v30;
    v53 = 2112;
    v54 = v31;
    _os_log_debug_impl(&dword_1BA83C000, v2, OS_LOG_TYPE_DEBUG, "Fetching appInfo from cache for pid: %d uuid: %@ bundle id: %@", buf, 0x1Cu);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    Property = *(a1 + 48);
    if (Property)
    {
      Property = objc_getProperty(Property, v3, 16, 1);
    }

    v6 = Property;
    v7 = [v6 objectForKeyedSubscript:v4];
    v8 = v44[5];
    v44[5] = v7;
  }

  v9 = v44[5];
  if (!v9)
  {
    v10 = *(a1 + 64);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_2;
    v33[3] = &unk_1E7F069C0;
    v36 = &v43;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = *(a1 + 56);
    *&v16 = v14;
    *(&v16 + 1) = v15;
    *&v17 = v12;
    *(&v17 + 1) = v13;
    v34 = v17;
    v35 = v16;
    v37 = *(a1 + 64);
    [(NEAppInfoCache *)v12 performCustomLookupIfNecessaryForPid:v10 UUID:v13 bundleID:v11 completionHandler:v33];
    v18 = &v34 + 1;
    v19 = &v35;
    v20 = &v35 + 1;
LABEL_13:

    goto LABEL_14;
  }

  if (!*(v9 + 40))
  {
    v21 = *(a1 + 64);
    if (v21 >= 1)
    {
      v22 = *(a1 + 32);
      v23 = *(a1 + 40);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_52;
      v38[3] = &unk_1E7F069C0;
      v41 = &v43;
      v32 = *(a1 + 48);
      v24 = v32.i64[1];
      v25 = *(a1 + 32);
      v26 = *(a1 + 40);
      v27.i64[0] = v25;
      v27.i64[1] = v26;
      *&v28 = v32.i64[0];
      *(&v28 + 1) = v25;
      v39 = v28;
      v40 = vzip2q_s64(v27, v32);
      v42 = *(a1 + 64);
      [(NEAppInfoCache *)v32.i64[0] performCustomLookupIfNecessaryForPid:v21 UUID:v22 bundleID:v23 completionHandler:v38];
      v18 = &v40.i64[1];
      v19 = &v39 + 1;
      v20 = &v40;
      goto LABEL_13;
    }
  }

  (*(*(a1 + 56) + 16))();
LABEL_14:

  _Block_object_dispose(&v43, 8);
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_52(void *a1, void *a2)
{
  v4 = a2;
  v8 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if ([(NEAppInfoCache *)a1[4] appInfo:v4 mismatchedWithUUID:a1[5] andBundleID:a1[6]])
  {
    [(NEAppInfoCache *)a1[4] addAppInfoToCache:v8];
LABEL_4:
    v5 = a1[7];
    v6 = a1 + 8;
    goto LABEL_6;
  }

  v7 = a1[8];
  v6 = a1 + 8;
  objc_storeStrong((*(v7 + 8) + 40), a2);
  [(NEAppInfoCache *)*(v6 - 4) addAppInfoToCache:?];
  v5 = *(v6 - 1);
LABEL_6:
  (*(v5 + 16))(v5, *(*(*v6 + 8) + 40));
}

- (void)performCustomLookupIfNecessaryForPid:(void *)pid UUID:(void *)d bundleID:(void *)iD completionHandler:
{
  v44 = *MEMORY[0x1E69E9840];
  pidCopy = pid;
  dCopy = d;
  iDCopy = iD;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 8));
    if (WeakRetained)
    {
      v13 = ne_log_obj();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        *length = 67109634;
        *&length[4] = a2;
        *&length[8] = 2112;
        *&length[10] = pidCopy;
        v42 = 2112;
        v43 = dCopy;
        _os_log_debug_impl(&dword_1BA83C000, v13, OS_LOG_TYPE_DEBUG, "Calling delegate lookup handler with pid: %d, uuid: %@, bundleID: %@", length, 0x1Cu);
      }

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __87__NEAppInfoCache_performCustomLookupIfNecessaryForPid_UUID_bundleID_completionHandler___block_invoke;
      v39[3] = &unk_1E7F069E8;
      v39[4] = self;
      v40 = iDCopy;
      [WeakRetained fetchAppInfoForPID:a2 UUID:pidCopy bundleID:dCopy completionHandler:v39];

LABEL_38:
      goto LABEL_39;
    }

    v14 = dCopy;
    v15 = ne_log_obj();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *length = 67109378;
      *&length[4] = a2;
      *&length[8] = 2112;
      *&length[10] = v14;
      _os_log_debug_impl(&dword_1BA83C000, v15, OS_LOG_TYPE_DEBUG, "Origin lookup for pid %d, bundle id: %@", length, 0x12u);
    }

    if (v14)
    {
      v16 = [v14 length];
      if (v16)
      {
        v16 = [NEAppInfoCache bundleIDWithoutTeamID:v14];
      }
    }

    else
    {
      v16 = 0;
    }

    v37 = v16;
    [v37 UTF8String];
    v17 = NEHelperCopyAppInfo();
    v18 = v17;
    v38 = v14;
    v36 = pidCopy;
    if (v17)
    {
      uuid = xpc_dictionary_get_uuid(v17, "app-euuid");
      if (uuid)
      {
        v20 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
      }

      else
      {
        v20 = 0;
      }

      string = xpc_dictionary_get_string(v18, "app-identifier");
      if (string)
      {
        v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
      }

      else
      {
        v23 = 0;
      }

      v21 = xpc_dictionary_get_string(v18, "version-string");
      if (v21)
      {
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v21];
      }

      *length = 0;
      data = xpc_dictionary_get_data(v18, "app-cd-hash", length);
      if (*length)
      {
        v26 = data;
        v27 = objc_alloc(MEMORY[0x1E695DEF0]);
        v22 = [v27 initWithBytes:v26 length:*length];
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v20 = 0;
    }

    v28 = v20;
    if (!v20 && !v23 && !v21 && !v22)
    {
      v29 = 0;
LABEL_35:
      v35 = ne_log_large_obj();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        *length = 138412290;
        *&length[4] = v29;
        _os_log_debug_impl(&dword_1BA83C000, v35, OS_LOG_TYPE_DEBUG, "Origin lookup created appInfo:\n%@", length, 0xCu);
      }

      (*(iDCopy + 2))(iDCopy, v29);
      pidCopy = v36;
      goto LABEL_38;
    }

    v30 = objc_alloc_init(NEAppInfo);
    v29 = v30;
    if (a2 < 1)
    {
      if (!v30)
      {
        goto LABEL_35;
      }
    }

    else
    {
      if (!v30)
      {
        goto LABEL_35;
      }

      v30->_pid = a2;
    }

    objc_setProperty_nonatomic_copy(v30, v31, v28, 16);
    objc_setProperty_nonatomic_copy(v29, v32, v23, 24);
    objc_setProperty_nonatomic_copy(v29, v33, v21, 32);
    objc_setProperty_nonatomic_copy(v29, v34, v22, 40);
    goto LABEL_35;
  }

LABEL_39:
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v5 = *(*(*(a1 + 64) + 8) + 40);
  if (!v5)
  {
    v11 = ne_log_obj();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v13 = *(a1 + 72);
      v15 = *(a1 + 40);
      v14 = *(a1 + 48);
      *buf = 67109634;
      v20 = v13;
      v21 = 2112;
      v22 = v14;
      v23 = 2112;
      v24 = v15;
      _os_log_debug_impl(&dword_1BA83C000, v11, OS_LOG_TYPE_DEBUG, "Could not look up appInfo for pid: %d bundle id: %@ uuid: %@", buf, 0x1Cu);
    }

    v12 = *(*(a1 + 56) + 16);
    goto LABEL_8;
  }

  v6 = [(NEAppInfoCache *)*(a1 + 32) appInfo:v5 mismatchedWithUUID:*(a1 + 40) andBundleID:*(a1 + 48)];
  [(NEAppInfoCache *)*(a1 + 32) addAppInfoToCache:?];
  if (!v6)
  {
    v12 = *(*(a1 + 56) + 16);
LABEL_8:
    v12();
    goto LABEL_9;
  }

  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_3;
  v17[3] = &unk_1E7F06998;
  v17[4] = v7;
  v16 = *(a1 + 56);
  v10 = v16;
  v18 = v16;
  [(NEAppInfoCache *)v7 performCustomLookupIfNecessaryForPid:v8 UUID:v9 bundleID:v17 completionHandler:?];

LABEL_9:
}

- (BOOL)appInfo:(void *)info mismatchedWithUUID:(void *)d andBundleID:
{
  v7 = a2;
  infoCopy = info;
  dCopy = d;
  if (self)
  {
    self = 1;
    if (!infoCopy || [v7[2] isEqual:infoCopy])
    {
      if (!dCopy || (v10 = v7[3], v11 = dCopy, -[NEAppInfoCache bundleIDWithoutTeamID:](v10), v12 = objc_claimAutoreleasedReturnValue(), -[NEAppInfoCache bundleIDWithoutTeamID:](v11), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v12 isEqual:v13], v13, v12, v11, v10, v14))
      {
        self = 0;
      }
    }
  }

  return self;
}

- (void)addAppInfoToCache:(void *)cache
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (cache)
  {
    if (v3)
    {
      v5 = v3[2];
      if (v5)
      {
        v6 = v3;
        v7 = v5;
        v10 = [objc_getProperty(cache v8];
        if (v10)
        {
          v11 = v6;
          v12 = v10;
          v13 = v12;
          if (!v11[5] && v12[5])
          {
            v14 = v12[2];
            v15 = v14;
            if (v14)
            {
              v16 = v4[2] == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              v17 = [v14 isEqual:?];

              if (v17)
              {
                goto LABEL_15;
              }

              goto LABEL_14;
            }
          }
        }

LABEL_14:
        [objc_getProperty(cache v9];
LABEL_15:
      }
    }

    else
    {
      v18 = ne_log_obj();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        v19 = 136315138;
        v20 = "[NEAppInfoCache addAppInfoToCache:]";
        _os_log_fault_impl(&dword_1BA83C000, v18, OS_LOG_TYPE_FAULT, "%s called with null appInfo", &v19, 0xCu);
      }
    }
  }
}

void __64__NEAppInfoCache_appInfoForPid_UUID_bundleID_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = *(*(*(a1 + 48) + 8) + 40);
  if (v4)
  {
    [(NEAppInfoCache *)*(a1 + 32) addAppInfoToCache:v4];
  }

  (*(*(a1 + 40) + 16))();
}

- (id)bundleIDWithoutTeamID:(void *)d
{
  v12 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v2 = dCopy;
  if (dCopy)
  {
    v3 = [dCopy rangeOfString:@"." options:1];
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [v2 copy];
LABEL_4:
      v6 = v5;
      goto LABEL_11;
    }

    if (v4 == 1)
    {
      v7 = v3 + 1;
      if (v3 + 1 < [v2 length])
      {
        v5 = [v2 substringFromIndex:v7];
        goto LABEL_4;
      }
    }

    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 138412290;
      v11 = v2;
      _os_log_error_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_ERROR, "found invalid . in bundle id: %@", &v10, 0xCu);
    }
  }

  else
  {
    v8 = ne_log_obj();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v10 = 136315138;
      v11 = "[NEAppInfoCache bundleIDWithoutTeamID:]";
      _os_log_fault_impl(&dword_1BA83C000, v8, OS_LOG_TYPE_FAULT, "%s called with null bundleID", &v10, 0xCu);
    }
  }

  v6 = 0;
LABEL_11:

  return v6;
}

void __87__NEAppInfoCache_performCustomLookupIfNecessaryForPid_UUID_bundleID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    Property = objc_getProperty(v5, v3, 24, 1);
  }

  else
  {
    Property = 0;
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__NEAppInfoCache_performCustomLookupIfNecessaryForPid_UUID_bundleID_completionHandler___block_invoke_2;
  v9[3] = &unk_1E7F0B588;
  v7 = *(a1 + 40);
  v10 = v4;
  v11 = v7;
  v8 = v4;
  dispatch_async(Property, v9);
}

@end