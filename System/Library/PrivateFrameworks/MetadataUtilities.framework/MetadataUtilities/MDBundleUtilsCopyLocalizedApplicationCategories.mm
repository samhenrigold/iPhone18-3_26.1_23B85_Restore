@interface MDBundleUtilsCopyLocalizedApplicationCategories
@end

@implementation MDBundleUtilsCopyLocalizedApplicationCategories

double ___MDBundleUtilsCopyLocalizedApplicationCategories_block_invoke()
{
  v17 = *MEMORY[0x1E69E9840];
  v0 = si_tracing_current_span();
  v1 = *(v0 + 16);
  v14 = *v0;
  v15 = v1;
  v16 = *(v0 + 32);
  v2 = si_tracing_calc_traceid();
  spanid = si_tracing_calc_next_spanid();
  *v0 = v2;
  *(v0 + 8) = spanid;
  *(v0 + 16) = 0;
  *(v0 + 24) = -1;
  *(v0 + 28) = 102;
  *(v0 + 32) = "locAppCategories";
  si_tracing_log_span_begin();
  v4 = copyAppCategoryMap();
  _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap = v4;
  if (v4)
  {
    Count = CFDictionaryGetCount(v4);
    v6 = _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap;
    if (_MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategoriesMap)
    {
      v7 = Count;
      MEMORY[0x1EEE9AC00](Count);
      v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      bzero(v9, v8);
      CFDictionaryGetKeysAndValues(v6, v9, 0);
      if (getCoreTypesBundleURL_onceToken != -1)
      {
        copyAppCategoryMap_cold_1();
      }

      v10 = gCoreTypesBundleLocalizations;
      if (gCoreTypesBundleLocalizations && CFArrayGetCount(gCoreTypesBundleLocalizations))
      {
        os_unfair_lock_lock(&coreTypesLocalizedPropertiesCopy_sCoreTypesLock);
        if (getCoreTypesBundleURL_onceToken != -1)
        {
          copyAppCategoryMap_cold_1();
        }

        v11 = localizedPropertyCopy(v9, v7, gCoreTypesLocTableURL, 0, v10, 0);
        os_unfair_lock_unlock(&coreTypesLocalizedPropertiesCopy_sCoreTypesLock);
      }

      else
      {
        v11 = 0;
      }

      _MDBundleUtilsCopyLocalizedApplicationCategories_sLocalizedApplicationCategories = v11;
    }
  }

  si_tracing_log_span_end(*v0);
  result = *&v14;
  v13 = v15;
  *v0 = v14;
  *(v0 + 16) = v13;
  *(v0 + 32) = v16;
  return result;
}

@end