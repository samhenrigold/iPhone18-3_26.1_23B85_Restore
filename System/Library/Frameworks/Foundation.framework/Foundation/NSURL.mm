@interface NSURL
+ (uint64_t)setIOPolicy:(uint64_t)policy type:(uint64_t)type scope:forBlock:;
@end

@implementation NSURL

void *__72__NSURL_NSURLPromisedItems__checkPromisedItemIsReachableAndReturnError___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(a1 + 48) + 8) + 40;
  if (v3 == a2)
  {
    result = [v3 checkResourceIsReachableAndReturnError:v4];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  else
  {
    result = [a2 checkResourceIsReachableAndReturnError:v4];
    *(*(*(a1 + 40) + 8) + 24) = result;
    if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
    {
      if (*(a1 + 56))
      {
        result = [*(a1 + 32) _fixedUpSideFaultError:*(*(*(a1 + 48) + 8) + 40)];
        *(*(*(a1 + 48) + 8) + 40) = result;
      }
    }
  }

  return result;
}

void __62__NSURL_NSURLPromisedItems___valueFromFaultDictionary_forKey___block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 256);
  if (v0)
  {
    v1 = v0;
    _MergedGlobals_96 = dlsym(v0, "UTTypeCreatePreferredIdentifierForTag");
    v2 = *dlsym(v1, "kUTTagClassFilenameExtension");
    qword_1ED43F5E8 = v2;
    if (_MergedGlobals_96)
    {
      v3 = v2 == 0;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      NSLog(@"NSURL_Promises couldn't load a MobileCoreServices symbol.");
    }
  }
}

void __71__NSURL_NSURLPromisedItems__getPromisedItemResourceValue_forKey_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  if (v3 == a2)
  {
    v9 = *(a1 + 64);
    v10 = *(*(a1 + 56) + 8);
LABEL_10:
    v11 = *(a1 + 40);
    v12 = v10 + 40;
    v13 = *(v9 + 8) + 40;
LABEL_11:
    *(*(*(a1 + 48) + 8) + 24) = [v3 getResourceValue:v12 forKey:v11 error:v13];
    return;
  }

  v5 = objc_msgSend(+[(WC objectForKey:](&unk_1EEF5A110, "objectForKey:", *(a1 + 40)), "unsignedIntegerValue");
  switch(v5)
  {
    case 3:
      v9 = *(a1 + 64);
      v10 = *(*(a1 + 56) + 8);
      v3 = *(a1 + 32);
      goto LABEL_10;
    case 2:
LABEL_7:
      *(*(*(a1 + 48) + 8) + 24) = 1;
      return;
    case 1:
      v6 = _CFURLCopyPropertiesOfPromiseAtURL();
      if (!v6)
      {
        return;
      }

      v7 = v6;
      *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _valueFromFaultDictionary:v6 forKey:*(a1 + 40)];
      v8 = *(*(*(a1 + 56) + 8) + 40);
      CFRelease(v7);
      goto LABEL_7;
  }

  v14 = *(a1 + 40);
  if (objc_msgSend_isEqualToString_(v14))
  {
    v15 = *MEMORY[0x1E695E298];
  }

  else
  {
    v15 = v14;
  }

  *(*(*(a1 + 48) + 8) + 24) = [a2 getResourceValue:*(*(a1 + 56) + 8) + 40 forKey:v15 error:*(*(a1 + 64) + 8) + 40];
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    *(*(*(a1 + 64) + 8) + 40) = [*(a1 + 32) _fixedUpSideFaultError:*(*(*(a1 + 64) + 8) + 40)];
    return;
  }

  v16 = *(*(a1 + 56) + 8);
  v17 = *(v16 + 40);
  v12 = v16 + 40;
  if (!v17)
  {
    v3 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = *(*(a1 + 64) + 8) + 40;
    goto LABEL_11;
  }
}

void __69__NSURL_NSURLPromisedItems__promisedItemResourceValuesForKeys_error___block_invoke(uint64_t a1, void *a2)
{
  v63 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  if (v3 == a2)
  {
    *(*(*(a1 + 48) + 8) + 40) = [v3 resourceValuesForKeys:*(a1 + 40) error:*(*(a1 + 56) + 8) + 40];
    return;
  }

  v51 = 0u;
  v52 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v4 = *(a1 + 40);
  v5 = [v4 countByEnumeratingWithState:&v47 objects:v46 count:16];
  if (v5)
  {
    v6 = *v48;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v48 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v47 + 1) + 8 * i);
        v9 = objc_msgSend(+[(WC objectForKey:](&unk_1EEF5A138, "objectForKey:", v8), "unsignedIntegerValue");
        v10 = *(&v51 + v9);
        if (!v10)
        {
          v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
          *(&v51 + v9) = v10;
        }

        [v10 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v47 objects:v46 count:16];
    }

    while (v5);
    v11 = *(&v52 + 1);
    v12 = [MEMORY[0x1E695DF90] dictionary];
    if (v11)
    {
      v13 = [*(a1 + 32) resourceValuesForKeys:v11 error:*(*(a1 + 56) + 8) + 40];
      if (!v13)
      {
        goto LABEL_58;
      }

      [v12 addEntriesFromDictionary:v13];
    }
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
  }

  v14 = *(&v51 + 1);
  if (*(&v51 + 1))
  {
    cf = 0;
    v15 = _CFURLCopyPropertiesOfPromiseAtURL();
    if (v15)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v16 = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
      if (v16)
      {
        v17 = *v43;
        do
        {
          for (j = 0; j != v16; ++j)
          {
            if (*v43 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v19 = *(*(&v42 + 1) + 8 * j);
            v20 = [*(a1 + 32) _valueFromFaultDictionary:v15 forKey:v19];
            if (v20)
            {
              [v12 setObject:v20 forKey:v19];
            }
          }

          v16 = [v14 countByEnumeratingWithState:&v42 objects:v41 count:16];
        }

        while (v16);
      }

      CFRelease(v15);
    }

    else
    {
      if (cf)
      {
        *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 32) _fixedUpSideFaultError:?];
        CFRelease(cf);
      }

      v12 = 0;
    }
  }

  v21 = v51;
  if (!v51)
  {
    goto LABEL_56;
  }

  cf = 0;
  p_cf = &cf;
  v55 = 0x3052000000;
  v56 = __Block_byref_object_copy__9;
  v57 = __Block_byref_object_dispose__9;
  v58 = 0;
  *&v59 = MEMORY[0x1E69E9820];
  *(&v59 + 1) = 3221225472;
  *&v60 = ___virtualizeURLKeysForAccessingFault_block_invoke;
  *(&v60 + 1) = &unk_1E69F44F8;
  *&v61 = v51;
  *(&v61 + 1) = &cf;
  [v51 enumerateObjectsUsingBlock:&v59];
  v22 = p_cf[5];
  v23 = v21;
  if (v22)
  {
    v23 = v22;
  }

  v39 = v21;
  _Block_object_dispose(&cf, 8);
  v24 = a1 + 56;
  v25 = [a2 resourceValuesForKeys:v23 error:*(*(a1 + 56) + 8) + 40];
  v26 = v25;
  if (v25)
  {
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v27 = [v25 countByEnumeratingWithState:&v59 objects:&cf count:16];
    if (v27)
    {
      v28 = 0;
      v29 = *v60;
      v30 = *MEMORY[0x1E695DB90];
      do
      {
        for (k = 0; k != v27; ++k)
        {
          if (*v60 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v59 + 1) + 8 * k);
          isEqualToString = objc_msgSend_isEqualToString_(v32);
          if (v30 == v32)
          {
            v34 = 0;
          }

          else
          {
            v34 = isEqualToString;
          }

          if (v34 == 1)
          {
            if (!v28)
            {
              v28 = [v26 mutableCopy];
            }

            [v28 setObject:objc_msgSend(v26 forKey:{"objectForKey:", v32), v30}];
            [v28 removeObjectForKey:v32];
          }
        }

        v27 = [v26 countByEnumeratingWithState:&v59 objects:&cf count:16];
      }

      while (v27);
      if (v28)
      {
        v26 = v28;
      }
    }

    [v12 addEntriesFromDictionary:v26];
    v35 = [v26 count];
    if (v35 < [v39 count])
    {
      v36 = [MEMORY[0x1E695DF70] arrayWithArray:v39];
      [v36 removeObjectsInArray:{objc_msgSend(v26, "allKeys")}];
      v37 = [*(a1 + 32) resourceValuesForKeys:v36 error:0];
      if (v37)
      {
        [v12 addEntriesFromDictionary:v37];
      }

      else
      {
        NSLog(@"[NSURL promisedItemResourceValuesForKeys:error:]: Unable to handle keys: %@", v36);
      }
    }

LABEL_56:
    v24 = a1 + 48;
    goto LABEL_57;
  }

  v12 = [*(a1 + 32) _fixedUpSideFaultError:*(*(*(a1 + 56) + 8) + 40)];
LABEL_57:
  *(*(*v24 + 8) + 40) = v12;
LABEL_58:
  for (m = 0; m != 32; m += 8)
  {
  }
}

+ (uint64_t)setIOPolicy:(uint64_t)policy type:(uint64_t)type scope:forBlock:
{
  v13 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  getpid();
  if (sandbox_check())
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[NSURL setIOPolicy:] sandbox_check: current process does not allow iopolicy syscalls", buf, 2u);
    }

    return (*(type + 16))(type);
  }

  v4 = getiopolicy_np(3, 1);
  if (v4 == 1)
  {
    v6 = *(type + 16);

    return v6(type);
  }

  else
  {
    v5 = v4;
    if (v4 == -1)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *buf = 67109632;
        v8 = 1;
        v9 = 1024;
        v10 = 3;
        v11 = 1024;
        v12 = 1;
        _os_log_error_impl(&dword_18075C000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "[NSURL setIOPolicy:] getiopolicy_np failed when setting policy: %d, type: %d, scope: %d", buf, 0x14u);
      }

      return (*(type + 16))(type);
    }

    setiopolicy_np(3, 1, 1);
    result = (*(type + 16))(type);
    if ((v5 & 0x80000000) == 0)
    {

      return setiopolicy_np(3, 1, v5);
    }
  }

  return result;
}

void *__50__NSURL_NSURL__initFileURLWithPath_relativeToURL___block_invoke(void *a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  result = [*(*(a1[6] + 8) + 24) getResourceValue:v3 forKey:*MEMORY[0x1E695DB78] error:0];
  if (result)
  {
    result = [v3[0] BOOLValue];
    if (result)
    {
      CFRelease(*(*(a1[6] + 8) + 24));
      result = MEMORY[0x1865CEC70](*MEMORY[0x1E695E480], a1[4], 0, 1, a1[5]);
      *(*(a1[6] + 8) + 24) = result;
    }
  }

  return result;
}

void __31__NSURL_NSURL__parameterString__block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = _NSOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v4 = 138477827;
    v5 = v3;
    _os_log_debug_impl(&dword_18075C000, v2, OS_LOG_TYPE_DEBUG, "NSURL parameterString is deprecated and now always returns nil. The path component now includes the part of the URL string which parameterString used to return.\nURL = %{private}@", &v4, 0xCu);
  }
}

void *__57__NSURL_NSURLPathUtilities__URLByAppendingPathComponent___block_invoke(uint64_t a1)
{
  result = [*(*(*(a1 + 48) + 8) + 40) getResourceValue:*(*(a1 + 56) + 8) + 40 forKey:*MEMORY[0x1E695DB78] error:0];
  if (result)
  {
    result = [*(*(*(a1 + 56) + 8) + 40) BOOLValue];
    if (result)
    {
      result = [*(a1 + 32) URLByAppendingPathComponent:*(a1 + 40) isDirectory:1];
      *(*(*(a1 + 48) + 8) + 40) = result;
    }
  }

  return result;
}

uint64_t __68__NSURL_NSURLPathUtilities__checkResourceIsReachableAndReturnError___block_invoke(uint64_t a1)
{
  result = CFURLResourceIsReachable(*(a1 + 40), *(a1 + 48));
  *(*(*(a1 + 32) + 8) + 24) = result != 0;
  return result;
}

@end