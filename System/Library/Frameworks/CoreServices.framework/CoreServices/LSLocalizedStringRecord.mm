@interface LSLocalizedStringRecord
@end

@implementation LSLocalizedStringRecord

void __46___LSLocalizedStringRecord_defaultStringValue__block_invoke(uint64_t a1, _LSDatabase **a2, int a3, int a4, LaunchServices::LocalizedString *this)
{
  v6 = LaunchServices::LocalizedString::getDefaultValueUnsafely(this, *a2);
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v6 = LaunchServices::LocalizedString::localizeUnsafely(a5, *a2, *(a1 + 32));
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__allUnsanitizedStringValues];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = [v2 allKeys];
  v5 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__missingBundleLocs];
  if (v5)
  {
    v6 = [v4 arrayByAddingObjectsFromArray:v5];

    v4 = v6;
  }

  else
  {
    v7 = _LSDefaultLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      Name = sel_getName(*(a1 + 56));
      __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_1(Name, buf, v7);
    }
  }

  if (v4)
  {
    v9 = *(a1 + 40);
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [__LSDefaultsGetSharedInstance(0 v10)];
      if (!v11)
      {
        if ([__LSDefaultsGetSharedInstance(0 v12)])
        {
          v11 = 0;
        }

        else
        {
          if (_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::onceToken != -1)
          {
            __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_2();
          }

          os_unfair_lock_lock(&_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheLock);
          if (!_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cache || mach_absolute_time() - _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheTime > _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::maxCacheTimeAbsolute)
          {
            v33 = 0;
            v34[0] = &v33;
            v34[1] = 0x3032000000;
            v34[2] = __Block_byref_object_copy__35;
            v34[3] = __Block_byref_object_dispose__35;
            v35 = 0;
            v27 = 0;
            v28 = &v27;
            v29 = 0x3032000000;
            v30 = __Block_byref_object_copy__35;
            v31 = __Block_byref_object_dispose__35;
            v32 = 0;
            v21 = 11;
            while (1)
            {
              v22 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
              v26[0] = MEMORY[0x1E69E9820];
              v26[1] = 3221225472;
              v26[2] = ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke_43;
              v26[3] = &unk_1E6A1D2F0;
              v26[4] = &v27;
              v26[5] = &v33;
              [v22 getSessionLanguagesForImproperlyLocalizedProcessWithCompletionHandler:v26];
              if (v28[5] || !_LSNSErrorIsXPCConnectionInterrupted(*(v34[0] + 40)))
              {
                break;
              }

              if (--v21 <= 1)
              {
                goto LABEL_31;
              }
            }

LABEL_31:
            v24 = v28[5];
            if (!v24)
            {
              v25 = _LSDefaultLog(v23);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
              {
                __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_3(v34, v25);
              }

              v24 = v28[5];
            }

            objc_storeStrong(&_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cache, v24);
            _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheTime = mach_absolute_time();
            _Block_object_dispose(&v27, 8);

            _Block_object_dispose(&v33, 8);
          }

          v11 = _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cache;
          os_unfair_lock_unlock(&_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::cacheLock);
          if (v11)
          {
            goto LABEL_11;
          }
        }

        v13 = 0;
        goto LABEL_12;
      }
    }

LABEL_11:
    v13 = CFBundleCopyLocalizationsForPreferences(v4, v11);
LABEL_12:
    if ([(__CFArray *)v13 count])
    {
      v14 = [(__CFArray *)v13 objectAtIndexedSubscript:0];
      v15 = [v3 objectForKeyedSubscript:v14];
      v16 = *(*(a1 + 48) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v18 = [v3 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
    v19 = *(*(a1 + 48) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

LABEL_18:
}

void __43___LSLocalizedStringRecord_allStringValues__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) sanitizeString:?];
  [*(a1 + 32) setObject:? forKeyedSubscript:?];
}

void __46___LSLocalizedStringRecord_defaultStringValue__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _resolvedPropertyValueForGetter:sel__allUnsanitizedStringValues];
  if (v2)
  {
    v6 = v2;
    v3 = [v2 objectForKeyedSubscript:@"LSDefaultLocalizedValue"];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v2 = v6;
  }
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_1(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Could not find missing localizations computing string value in %s... resulting locale may be unexpected!", buf, 0xCu);
}

void __66___LSLocalizedStringRecord_stringValueWithPreferredLocalizations___block_invoke_2_cold_3(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "could not fetch preferred locales for LSLocalizedStringRecord: %@", &v3, 0xCu);
}

@end