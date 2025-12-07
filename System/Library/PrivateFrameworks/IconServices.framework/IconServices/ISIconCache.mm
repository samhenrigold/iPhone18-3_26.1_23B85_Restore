@interface ISIconCache
+ (id)defaultIconCache;
- (BOOL)findStoreUnitForIcon:(id)icon descriptor:(id)descriptor UUID:(id *)d validationToken:(id *)token;
- (ISIconCache)initWithConfiguration:(id)configuration;
- (ISIconCache)initWithURL:(id)l storeIndex:(id)index sandboxExtensionToken:(unint64_t)token;
- (id)description;
- (id)storeUnitForUUID:(id)d;
- (void)dealloc;
@end

@implementation ISIconCache

+ (id)defaultIconCache
{
  if (+[ISIconCache defaultIconCache]::onceToken != -1)
  {
    +[ISIconCache defaultIconCache];
  }

  v3 = +[ISIconCache defaultIconCache]::defaultIconCache;

  return v3;
}

void __31__ISIconCache_defaultIconCache__block_invoke()
{
  v4 = objc_alloc_init(ISIconCacheConfiguration);
  v0 = +[ISDefaults sharedInstance];
  v1 = [v0 cacheURL];
  [(ISIconCacheConfiguration *)v4 setUrl:v1];

  v2 = [[ISIconCache alloc] initWithConfiguration:v4];
  v3 = +[ISIconCache defaultIconCache]::defaultIconCache;
  +[ISIconCache defaultIconCache]::defaultIconCache = v2;
}

- (ISIconCache)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  sandboxExtension = [configurationCopy sandboxExtension];
  v6 = [sandboxExtension length];

  if (v6)
  {
    sandboxExtension2 = [configurationCopy sandboxExtension];
    [sandboxExtension2 UTF8String];
    v6 = sandbox_extension_consume();
  }

  v8 = [configurationCopy url];
  v9 = [v8 URLByAppendingPathComponent:@"store.index" isDirectory:0];
  v10 = [[ISStoreIndex alloc] initWithStoreFileURL:v9];
  v11 = [(ISIconCache *)self initWithURL:v8 storeIndex:v10 sandboxExtensionToken:v6];

  return v11;
}

- (ISIconCache)initWithURL:(id)l storeIndex:(id)index sandboxExtensionToken:(unint64_t)token
{
  lCopy = l;
  indexCopy = index;
  v16.receiver = self;
  v16.super_class = ISIconCache;
  v11 = [(ISIconCache *)&v16 init];
  v12 = v11;
  if (v11)
  {
    v11->_sandboxToken = token;
    objc_storeStrong(&v11->_cacheURL, l);
    objc_storeStrong(&v12->_storeIndex, index);
    v13 = [[ISStore alloc] initWithURL:lCopy];
    store = v12->_store;
    v12->_store = v13;
  }

  return v12;
}

- (void)dealloc
{
  sandbox_extension_release();
  v3.receiver = self;
  v3.super_class = ISIconCache;
  [(ISIconCache *)&v3 dealloc];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  cachePath = [(ISIconCache *)self cachePath];
  [string appendFormat:@"Cache path: %@\n", cachePath];

  [string appendFormat:@"%@", self->_storeIndex];
  v5 = [MEMORY[0x1E696AEC0] stringWithString:string];

  return v5;
}

- (BOOL)findStoreUnitForIcon:(id)icon descriptor:(id)descriptor UUID:(id *)d validationToken:(id *)token
{
  v80[2] = *MEMORY[0x1E69E9840];
  iconCopy = icon;
  descriptorCopy = descriptor;
  v74 = 0;
  v80[0] = 0;
  v80[1] = 0;
  digest = [iconCopy digest];
  selfCopy = self;
  [digest _IF_getUUIDBytes:v80 hash64:&v74];

  [descriptorCopy scale];
  v10 = v9;
  [descriptorCopy size];
  v12 = v11;
  digest2 = [descriptorCopy digest];
  v79[0] = 0;
  v79[1] = 0;
  v46 = digest2;
  v14 = [digest2 getUUIDBytes:v79];
  v68 = 0;
  v69 = &v68;
  v70 = 0x3032000000;
  v71 = __Block_byref_object_copy__2;
  v72 = __Block_byref_object_dispose__2;
  v73 = 0;
  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__2;
  v66 = __Block_byref_object_dispose__2;
  v67 = 0;
  if (descriptorCopy)
  {
    v15 = _ISPrepareISIconSignpostLog(v14);
    v16 = os_signpost_enabled(v15);

    if (v16)
    {
      [iconCopy _activeSignpostsForDescriptor:descriptorCopy];
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v17 = v59 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v58 objects:v78 count:16];
      if (v18)
      {
        v19 = *v59;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v59 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v58 + 1) + 8 * i);
            unsignedLongLongValue = [v21 unsignedLongLongValue];
            if (unsignedLongLongValue)
            {
              v23 = _ISPrepareISIconSignpostLog(unsignedLongLongValue);
              v24 = os_signpost_enabled(v23);

              if (v24)
              {
                v26 = _ISPrepareISIconSignpostLog(v25);
                unsignedLongLongValue2 = [v21 unsignedLongLongValue];
                if (unsignedLongLongValue2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
                {
                  *buf = 0;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v26, OS_SIGNPOST_EVENT, unsignedLongLongValue2, "PrepareISIcon", "STORE_LOOKUP", buf, 2u);
                }
              }
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v58 objects:v78 count:16];
        }

        while (v18);
      }
    }
  }

  storeIndex = [(ISIconCache *)selfCopy storeIndex];
  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke;
  v56[3] = &unk_1E77C6D50;
  v57 = v10;
  v56[6] = v12;
  v56[7] = v79;
  v56[8] = v80;
  v56[4] = &v68;
  v56[5] = &v62;
  [storeIndex enumerateValuesForUUID:v80 bock:v56];

  v29 = v69[5];
  if (v29 && v63[5])
  {
    *d = [v29 copy];
    v29 = [v63[5] copy];
    *token = v29;
    v48 = 1;
  }

  else
  {
    v48 = 0;
  }

  if (descriptorCopy)
  {
    v30 = _ISPrepareISIconSignpostLog(v29);
    v31 = os_signpost_enabled(v30);

    if (v31)
    {
      [iconCopy _activeSignpostsForDescriptor:descriptorCopy];
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v32 = v53 = 0u;
      v33 = [v32 countByEnumeratingWithState:&v52 objects:v77 count:16];
      if (v33)
      {
        v34 = *v53;
        if (v48)
        {
          v35 = "found";
        }

        else
        {
          v35 = "not-found";
        }

        do
        {
          for (j = 0; j != v33; ++j)
          {
            if (*v53 != v34)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v52 + 1) + 8 * j);
            unsignedLongLongValue3 = [v37 unsignedLongLongValue];
            if (unsignedLongLongValue3)
            {
              v39 = _ISPrepareISIconSignpostLog(unsignedLongLongValue3);
              v40 = os_signpost_enabled(v39);

              if (v40)
              {
                v42 = _ISPrepareISIconSignpostLog(v41);
                unsignedLongLongValue4 = [v37 unsignedLongLongValue];
                if (unsignedLongLongValue4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
                {
                  *buf = 136315138;
                  v76 = v35;
                  _os_signpost_emit_with_name_impl(&dword_1A77B8000, v42, OS_SIGNPOST_EVENT, unsignedLongLongValue4, "PrepareISIcon", "STORE_LOOKUP_RESULT: %s", buf, 0xCu);
                }
              }
            }
          }

          v33 = [v32 countByEnumeratingWithState:&v52 objects:v77 count:16];
        }

        while (v33);
      }
    }
  }

  _Block_object_dispose(&v62, 8);

  _Block_object_dispose(&v68, 8);
  return v48;
}

void __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 72) != *(a2 + 40) || (v5 = *(a1 + 48), v5 < *(a2 + 16)) || v5 > *(a2 + 24))
  {
    v6 = _ISDefaultLog(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke_cold_3(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_6:

    return;
  }

  v15 = uuid_compare((a2 + 44), *(a1 + 56));
  if (v15)
  {
    v6 = _ISDefaultLog(v15);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke_cold_1(v6, v16, v17, v18, v19, v20, v21, v22);
    }

    goto LABEL_6;
  }

  v23 = uuid_compare(a2, *(a1 + 64));
  if (v23)
  {
    v6 = _ISDefaultLog(v23);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __76__ISIconCache_lookup__findStoreUnitForIcon_descriptor_UUID_validationToken___block_invoke_cold_2(v6, v24, v25, v26, v27, v28, v29, v30);
    }

    goto LABEL_6;
  }

  v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:a2 + 60];
  v32 = *(*(a1 + 32) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;

  v34 = [MEMORY[0x1E695DEF0] dataWithBytes:a2 + 76 length:40];
  v35 = *(*(a1 + 40) + 8);
  v36 = *(v35 + 40);
  *(v35 + 40) = v34;

  *a3 = 1;
}

- (id)storeUnitForUUID:(id)d
{
  dCopy = d;
  store = [(ISIconCache *)self store];
  v6 = [store unitForUUID:dCopy];

  return v6;
}

@end