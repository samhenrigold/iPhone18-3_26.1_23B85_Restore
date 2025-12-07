void sub_181785498(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [[FSNode alloc] initWithURL:a3 flags:0 error:0];
    v5 = v4;
    if (v4)
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke_2;
      v13[3] = &unk_1E6A1DEE8;
      v15 = *(a1 + 32);
      v6 = v4;
      v7 = *(a1 + 40);
      v14 = v6;
      v16 = v7;
      v8 = MEMORY[0x1865D71B0](v13);
      if ([__LSDefaultsGetSharedInstance(v8 v9)] && !*(a1 + 32))
      {
        v10 = +[LSDBExecutionContext sharedServerInstance];
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke_3;
        v11[3] = &unk_1E6A1A660;
        v12 = v8;
        [(LSDBExecutionContext *)v10 syncWrite:v11];
      }

      else
      {
        v8[2](v8);
      }
    }
  }
}

void ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke_2(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v32 = *(a1 + 40);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v32, v2, 0);

  if (v3 && (![*(a1 + 32) isDirectory] || _LSGetBundleClassForNode(v3, *(a1 + 32)) || _LSNodeIsPackage(v3, *(a1 + 32), 0)))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *v4;
    v7 = [v5 URL];
    v8 = XCFURLCopyRelativeFileSystemPath(v6, v7, kCFURLPOSIXPathStyle);

    if (!v8)
    {
LABEL_44:

      goto LABEL_45;
    }

    v9 = v4[2];
    v10 = MEMORY[0x1E695E480];
    if (v9)
    {
      Value = CFDictionaryGetValue(v9, @"_LSBundleLibraryItems");
      TypeID = CFArrayGetTypeID();
      if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
      {
        v13 = CFArrayGetTypeID();
        if (v13 == CFGetTypeID(Value))
        {
LABEL_14:
          CFArrayAppendValue(Value, v8);
          v14 = _LSGetBundleClassForNode(v3, v5);
          if (!v14)
          {
            v15 = v5;
            v17 = v15;
            if ((*(v4[4] + 19) & 0x10) == 0)
            {
              goto LABEL_22;
            }

            if (![__LSDefaultsGetSharedInstance(v15 v16)])
            {
              goto LABEL_22;
            }

            v18 = [v17 isSymbolicLink];
            if (!v18)
            {
              goto LABEL_22;
            }

            v19 = _LSRegistrationLog(v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v37 = v17;
              _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_INFO, "Symlink %@ will be hoisted into Core Types.", buf, 0xCu);
            }

            v17 = [v17 resolvedNodeWithFlags:0 error:0];
            if (v17)
            {
              v14 = _LSGetBundleClassForNode(v3, v17);
            }

            else
            {
LABEL_22:
              v14 = 0;
            }
          }

          v20 = *v10;
          v21 = MEMORY[0x1865D5790](v20, v8, 0, 1, *v4);
          v22 = v21;
          if (!v21)
          {
            goto LABEL_42;
          }

          v23 = CFURLCopyAbsoluteURL(v21);
          v24 = v23;
          if (v14 != 2 || !v23)
          {
LABEL_34:
            if (v14 && v14 == *(v4[1] + 4))
            {
              LSBundleProvider::LSBundleProvider(buf, v24);
              if (LSBundleProvider::bundleRef(buf, 1, "checking for validity"))
              {
                InfoDictionaryRef = LSBundleProvider::GetInfoDictionaryRef(buf);
                v29 = copyDeepMutableDictionary(InfoDictionaryRef);
                if (v29)
                {
                  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(buf, v29, @"UTExportedTypeDeclarations");
                  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(buf, v29, @"UTImportedTypeDeclarations");
                  _LSHoistDelegateDictionaries(v4[2], v29, @"UTExportedTypeDeclarations", v8);
                  _LSHoistDelegateDictionaries(v4[2], v29, @"UTImportedTypeDeclarations", v8);
                  _LSHoistDelegateDictionaries(v4[2], v29, *MEMORY[0x1E695E128], v8);
                  _LSHoistDelegateDictionaries(v4[2], v29, *MEMORY[0x1E695E198], v8);
                  CFRelease(v29);
                }
              }

              LSBundleProvider::~LSBundleProvider(buf);
            }

            if (v24)
            {
              CFRelease(v24);
            }

LABEL_42:
            CFRelease(v8);
            if (v22)
            {
              CFRelease(v22);
            }

            goto LABEL_44;
          }

          Mutable = v4[3];
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v20, 0, MEMORY[0x1E695E9C0]);
            v26 = Mutable;
            v27 = v4[3];
            if (v27 != Mutable)
            {
              v4[3] = Mutable;
              if (!v27)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }

            Mutable = v4[3];
            v27 = v26;
            if (v26)
            {
LABEL_32:
              CFRelease(v27);
              Mutable = v4[3];
            }
          }

LABEL_33:
          CFArrayAppendValue(Mutable, v24);
          goto LABEL_34;
        }
      }
    }

    else
    {
      CFArrayGetTypeID();
    }

    Value = CFArrayCreateMutable(*v10, 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(v4[2], @"_LSBundleLibraryItems", Value);
    CFRelease(Value);
    goto LABEL_14;
  }

LABEL_45:
  if (v32 && v34 == 1)
  {
    _LSContextDestroy(v32);
  }

  v30 = v33;
  v32 = 0;
  v33 = 0;

  v34 = 0;
  v31 = v35;
  v35 = 0;
}

CFArrayRef ___ZL26_LSGetBasicURLPropertyKeysv_block_invoke()
{
  v2[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695EB28];
  v2[0] = *MEMORY[0x1E695EBE8];
  v2[1] = v0;
  v2[2] = *MEMORY[0x1E695EB18];
  result = CFArrayCreate(*MEMORY[0x1E695E480], v2, 3, MEMORY[0x1E695E9C0]);
  _LSGetBasicURLPropertyKeys(void)::result = result;
  return result;
}

void _LSHoistDelegateDictionaries(__CFDictionary *a1, CFDictionaryRef theDict, const __CFString *key, const __CFString *a4)
{
  if (theDict && key)
  {
    Value = CFDictionaryGetValue(theDict, key);
    TypeID = CFArrayGetTypeID();
    if (!Value || TypeID && CFGetTypeID(Value) != TypeID)
    {
      return;
    }

    v10 = CFGetTypeID(Value);
    if (v10 != CFArrayGetTypeID())
    {
      return;
    }

    if (a1)
    {
      Mutable = CFDictionaryGetValue(a1, key);
      v12 = CFArrayGetTypeID();
      if (Mutable && (!v12 || CFGetTypeID(Mutable) == v12))
      {
        v13 = CFGetTypeID(Mutable);
        if (v13 != CFArrayGetTypeID())
        {
          return;
        }

LABEL_18:
        v14 = *MEMORY[0x1E695E4F0];
        if (*MEMORY[0x1E695E4F0])
        {
          v15 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4F0]);
          v16 = CFStringGetTypeID();
          if (!v15)
          {
            goto LABEL_27;
          }

          if (!v16 || CFGetTypeID(v15) == v16)
          {
            v17 = CFGetTypeID(v15);
            if (v17 != CFStringGetTypeID())
            {
              v15 = 0;
            }

            goto LABEL_27;
          }
        }

        else
        {
          CFStringGetTypeID();
        }

        v15 = 0;
LABEL_27:
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v19 = Count;
          for (i = 0; i != v19; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            v22 = CFDictionaryGetTypeID();
            if (ValueAtIndex && (!v22 || CFGetTypeID(ValueAtIndex) == v22))
            {
              CFDictionarySetValue(ValueAtIndex, @"_LSBundleLibraryDelegate", a4);
              if (v15)
              {
                CFDictionarySetValue(ValueAtIndex, v14, v15);
              }

              CFArrayAppendValue(Mutable, ValueAtIndex);
            }
          }
        }

        return;
      }
    }

    else
    {
      CFArrayGetTypeID();
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(a1, key, Mutable);
    CFRelease(Mutable);
    goto LABEL_18;
  }

  CFArrayGetTypeID();
}

void _LSHoistingState::~_LSHoistingState(CFTypeRef *this)
{
  v2 = this[3];
  if (v2)
  {
    CFRelease(v2);
  }

  this[3] = 0;
  v3 = this[2];
  if (v3)
  {
    CFRelease(v3);
  }

  this[2] = 0;
  if (*this)
  {
    CFRelease(*this);
  }

  *this = 0;
}

uint64_t (*initINSchemaURLsForIntentNamesWithBundle(__CFBundle *a1))(__CFBundle *)
{
  v2 = IntentsLibrary(void)::frameworkLibrary;
  if (!IntentsLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/Frameworks/Intents.framework/Intents", 2);
    IntentsLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "INSchemaURLsForIntentNamesWithBundle");
  softLinkINSchemaURLsForIntentNamesWithBundle = v3;
  if (v3)
  {
    v3 = v3(a1);
  }

  return v3;
}

{
  v2 = IntentsLibrary(void)::frameworkLibrary;
  if (!IntentsLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/Frameworks/Intents.framework/Intents", 2);
    IntentsLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "INSchemaURLsForIntentNamesWithBundle");
  softLinkINSchemaURLsForIntentNamesWithBundle = v3;
  if (v3)
  {
    v3 = v3(a1);
  }

  return v3;
}

uint64_t (*initLNIsLinkEnabled(__CFBundle *a1))(__CFBundle *)
{
  v2 = LinkServicesLibrary(void)::frameworkLibrary;
  if (!LinkServicesLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/LinkServices.framework/LinkServices", 2);
    LinkServicesLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "LNIsLinkEnabled");
  softLinkLNIsLinkEnabled = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

CFTypeRef __Block_byref_object_copy__619(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __Block_byref_object_dispose__620(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void ___ZL31createInstallationDictForPluginPK10__CFString_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKey:*MEMORY[0x1E695E4F0]];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    v5 = v8;
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 48);
    if (v7 != v5)
    {
      *(v6 + 48) = v5;
      v5 = v7;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

id init_ISIconDataForResourceProxy_1(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary_3;
  if (!IconServicesLibrary_frameworkLibrary_3)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary_3 = v6;
  }

  softLink_ISIconDataForResourceProxy_1 = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = softLink_ISIconDataForResourceProxy_1(v5, a2, a3);

  return v7;
}

void _LSSchemaTransferCache(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___LSSchemaTransferCache_block_invoke;
  v2[3] = &__block_descriptor_40_e9_v16__0_v8l;
  v2[4] = a2;
  _LSSchemaCacheWrite(a1, v2);
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::clear(uint64_t result)
{
  if (*(result + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__deallocate_node(result, *(result + 16));
    *(result + 16) = 0;
    v2 = *(result + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*result + 8 * i) = 0;
      }
    }

    *(result + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void _LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = v10;
  v16 = v11;
  v66 = v13;
  if (v16)
  {
    v17 = v16;
LABEL_3:
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-->%@", v17, v66];

    goto LABEL_7;
  }

  v19 = [v15 _xpcConnection];
  v20 = _LSCopyBundleURLForXPCConnection(v19, 0);

  if (v20)
  {
    v17 = [v20 path];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_7:

  if (v18)
  {
    v21 = CFPreferencesCopyValue(v18, @"com.apple.launchservices.schemeapproval", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    v64 = v21;
    if (v21)
    {
      v21 = _NSIsNSString();
      if (v21)
      {
        v21 = [v64 isEqual:v12];
        if (v21)
        {
          v14[2](v14, 1, 0);
LABEL_46:

          goto LABEL_47;
        }
      }
    }

    v62 = v14;
    v63 = v15;
    v22 = _LSSchemeApprovalGetBouncebackHistory(v21);
    objc_sync_enter(v22);
    v61 = v12;
    v23 = [v22 count];
    v24 = v23 - 2;
    if (v23 >= 2)
    {
      v25 = [v22 objectAtIndexedSubscript:v23 - 1];
      v26 = [v22 objectAtIndexedSubscript:v24];
      v27 = [v25 objectAtIndexedSubscript:0];
      v28 = [v26 objectAtIndexedSubscript:1];
      if ([v27 isEqual:v28])
      {
        v29 = [v25 objectAtIndexedSubscript:1];
        v30 = [v26 objectAtIndexedSubscript:0];
        v31 = [v29 isEqual:v30];

        objc_sync_exit(v22);
        v12 = v61;
        if (v31)
        {
          v14 = v62;
          v15 = v63;
          v62[2](v62, 1, 0);
          goto LABEL_46;
        }

LABEL_19:
        v14 = v62;
        v15 = v63;
        if ((a5 & 1) == 0)
        {
          v33 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -2026, 0, "_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 287);
          (v62)[2](v62, 0, v33);

          goto LABEL_46;
        }

        v67[0] = MEMORY[0x1E69E9820];
        v67[1] = 3221225472;
        v68 = ___ZL59_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke;
        v69 = &unk_1E6A1D448;
        v70 = v18;
        v71 = v12;
        v72 = v62;
        v55 = v63;
        v34 = v16;
        v60 = v71;
        v54 = v66;
        v57 = v34;
        v58 = v67;
        if (!v16)
        {
          v59 = 0;
LABEL_30:
          v56 = applicationBundleNameForIdentifier(v60);
          if (v56)
          {
            if (v59)
            {
              v40 = _LSSchemeApprovalGetLocalizedString(&cfstr_WantsToOpen.isa, &cfstr_SchemeApproval.isa);
              [MEMORY[0x1E696AEC0] stringWithFormat:v40, v59, v56];
            }

            else
            {
              v40 = _LSSchemeApprovalGetLocalizedString(&cfstr_OpenIn.isa, &cfstr_SchemeApproval_0.isa);
              [MEMORY[0x1E696AEC0] stringWithFormat:v40, v56];
            }
            v44 = ;

            if (_LSSchemeApprovalDebugMode(void)::once != -1)
            {
              _LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler();
            }

            if (_LSSchemeApprovalDebugMode(void)::result)
            {
              v45 = MEMORY[0x1E696AEC0];
              v46 = [v55 description];
              v47 = v57;
              if (!v16)
              {
                v15 = [v55 _xpcConnection];
                v47 = _LSCopyBundleURLForXPCConnection(v15, 0);
              }

              v48 = [v45 stringWithFormat:@"[Internal Build Detected]\n\nSource XPC: %@\nSource: %@\nTarget: %@\nScheme: %@\nOptions: %llx", v46, v47, v60, v54, a5];
              if (!v16)
              {
              }
            }

            else
            {
              v48 = 0;
            }

            v49 = _LSSchemeApprovalGetLocalizedString(&cfstr_Open.isa, &cfstr_SchemeApproval_1.isa);
            v50 = _LSSchemeApprovalGetLocalizedString(&cfstr_Cancel.isa, &cfstr_SchemeApproval_2.isa);
            v73[0] = MEMORY[0x1E69E9820];
            v73[1] = 3221225472;
            v73[2] = ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke;
            v73[3] = &unk_1E6A1DFF8;
            v41 = v44;
            v74 = v41;
            v51 = v48;
            v75 = v51;
            v52 = v49;
            v76 = v52;
            v77 = v50;
            v78 = v58;
            v79 = a5;
            v53 = v50;
            _LSAskForScreenUnlock(0, v73);

            v14 = v62;
            v15 = v63;
            v43 = v57;
            v42 = v55;
          }

          else
          {
            v41 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "_LSSchemeApprovalPromptWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 416);
            v68(v58, 0, v41);
            v42 = v55;
            v43 = v57;
          }

          v12 = v61;
          goto LABEL_46;
        }

        v35 = [LSApplicationProxy applicationProxyForIdentifier:v34 placeholder:0];
        v36 = v35;
        if (v35)
        {
          v37 = [v35 applicationType];
          if ([v37 isEqual:@"Hidden"])
          {

LABEL_27:
            v59 = 0;
LABEL_29:

            goto LABEL_30;
          }

          v38 = [v36 appTags];
          v39 = [v38 containsObject:@"hidden"];

          if (v39)
          {
            goto LABEL_27;
          }
        }

        v59 = applicationBundleNameForIdentifier(v57);
        goto LABEL_29;
      }

      v12 = v61;
    }

    objc_sync_exit(v22);

    goto LABEL_19;
  }

  v32 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4960, 0, "_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 291);
  (v14)[2](v14, 0, v32);

LABEL_47:
}

void ___ZL59_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    CFPreferencesSetValue(*(a1 + 32), *(a1 + 40), @"com.apple.launchservices.schemeapproval", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  (*(*(a1 + 48) + 16))();
}

id applicationBundleNameForIdentifier(NSString *a1)
{
  v1 = a1;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v1 allowPlaceholder:1 error:0];
  if (v2 || (v2 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v1 error:0]) != 0)
  {
    v3 = [(LSBundleRecord *)v2 localizedName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *_LSSchemeApprovalGetLocalizedString(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v6 = _LSGetBundle(v4, v5);
  v7 = CFBundleCopyLocalizedString(v6, v4, v4, @"SchemeApproval");
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v3;
  }

  v10 = v9;

  return v9;
}

void ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    MEMORY[0x1865D7C40]();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke_2;
    v13[3] = &unk_1E6A1DFD0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v14 = v8;
    v15 = v7;
    v16 = *(a1 + 64);
    v9 = MEMORY[0x1865D71B0](v13);
    v10 = *(a1 + 72);
    v11 = _LSSchemeApprovalGetPromptQueue(v9);
    v12 = v11;
    if ((v10 & 2) != 0)
    {
      dispatch_async(v11, v9);
    }

    else
    {
      dispatch_sync(v11, v9);
    }
  }
}

uint64_t ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v7 = 0;
  if (CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0, &v7))
  {
    v2 = *(a1 + 64);
LABEL_4:
    v3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10826, 0, "_LSSchemeApprovalPromptWithCompletionHandler_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 399);
    v4 = 0;
    goto LABEL_5;
  }

  v2 = *(a1 + 64);
  if ((v7 & 3) != 0)
  {
    goto LABEL_4;
  }

  v3 = 0;
  v4 = 1;
LABEL_5:
  v5 = (*(v2 + 16))(v2, v4, v3);
  if ((v4 & 1) == 0)
  {
  }

  return MEMORY[0x1865D7C50](v5);
}

void sub_181787DC8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(exception_object);
}

id _LSSchemeApprovalGetPromptQueue(uint64_t a1)
{
  if (_LSSchemeApprovalGetPromptQueue(void)::once != -1)
  {
    _LSSchemeApprovalGetPromptQueue();
  }

  v2 = _LSSchemeApprovalGetPromptQueue(void)::result;

  return v2;
}

void ___ZL26_LSSchemeApprovalDebugModev_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"_DebugMode", @"com.apple.launchservices.schemeapproval", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0)
  {
    v3 = v0;
    v2 = objc_opt_respondsToSelector();
    v1 = v3;
    if (v2)
    {
      _LSSchemeApprovalDebugMode(void)::result = [v3 BOOLValue];
      v1 = v3;
    }
  }
}

void ___ZL31_LSSchemeApprovalGetPromptQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS scheme approval prompt queue", v2);
  v1 = _LSSchemeApprovalGetPromptQueue(void)::result;
  _LSSchemeApprovalGetPromptQueue(void)::result = v0;
}

void ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v1 = _LSSchemeApprovalGetBouncebackHistory(void)::result;
  _LSSchemeApprovalGetBouncebackHistory(void)::result = v0;

  if ((atomic_load_explicit(_ZGVZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken, memory_order_acquire) & 1) == 0)
  {
    ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke_cold_1();
  }

  v2 = dispatch_get_global_queue(0, 0);
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(@"com.apple.backboardd.backlight.changed", v2, &__block_literal_global_64, &v5);
  LaunchServices::notifyd::NotifyToken::operator=(_ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken, &v5);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v5);
  if (FrontBoardServicesLibrary(void)::frameworkLibrary || (FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2)) != 0)
  {
    v3 = [objc_alloc(getFBSDisplayLayoutMonitorClass()) initWithDisplayType:0 handler:&__block_literal_global_67];
    v4 = _ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E7monitor;
    _ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E7monitor = v3;
  }
}

void sub_181788034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&a11);

  _Unwind_Resume(a1);
}

void ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke_2()
{
  State = LaunchServices::notifyd::NotifyToken::getState(_ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken);
  if ((v1 & 1) != 0 && !State)
  {

    _LSSchemeApprovalClearBouncebackHistory(0);
  }
}

void _LSSchemeApprovalClearBouncebackHistory(uint64_t a1)
{
  obj = _LSSchemeApprovalGetBouncebackHistory(a1);
  objc_sync_enter(obj);
  [obj removeAllObjects];
  objc_sync_exit(obj);
}

void sub_1817880F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

Class initFBSDisplayLayoutMonitor(void)
{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSDisplayLayoutMonitor");
  classFBSDisplayLayoutMonitor = result;
  getFBSDisplayLayoutMonitorClass = FBSDisplayLayoutMonitorFunction;
  return result;
}

void _LSAskForScreenUnlock(void *a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  _LSAssertRunningInServer("void _LSAskForScreenUnlock(__strong dispatch_queue_t _Nullable, void (^__strong _Nonnull)(BOOL, NSError *__strong))", v5);
  if (v3)
  {
    v6 = MEMORY[0x1865D71B0](v4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___LSAskForScreenUnlock_block_invoke;
    v12[3] = &unk_1E6A1E068;
    v13 = v3;
    v14 = v6;
    v7 = v6;
    v8 = MEMORY[0x1865D71B0](v12);

    v4 = v8;
  }

  if (softLinkSBSGetScreenLockStatus(0))
  {
    v9 = objc_alloc_init(_LSSpringBoardCall);
    [(_LSSpringBoardCall *)v9 setBundleIdentifier:@"com.apple.springboard"];
    v15[0] = getFBSOpenApplicationOptionKeyPromptUnlockDevice();
    v10 = MEMORY[0x1E695E118];
    v16[0] = MEMORY[0x1E695E118];
    v15[1] = getFBSOpenApplicationOptionKeyUnlockDevice();
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(_LSSpringBoardCall *)v9 setLaunchOptions:v11];

    [(_LSSpringBoardCall *)v9 setClientXPCConnection:0];
    [(_LSSpringBoardCall *)v9 setCallCompletionHandlerWhenFullyComplete:1];
    [(_LSSpringBoardCall *)v9 callWithCompletionHandler:v4];
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }
}

void sub_181788364(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t initSBSGetScreenLockStatus(unsigned __int8 *a1)
{
  v2 = SpringBoardServicesLibrary(void)::frameworkLibrary;
  if (!SpringBoardServicesLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
    SpringBoardServicesLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "SBSGetScreenLockStatus");
  softLinkSBSGetScreenLockStatus = v3;

  return v3(a1);
}

uint64_t initFBSOpenApplicationOptionKeyPromptUnlockDevice(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  constantFBSOpenApplicationOptionKeyPromptUnlockDevice = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDevice = FBSOpenApplicationOptionKeyPromptUnlockDeviceFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyUnlockDevice(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyUnlockDevice");
  constantFBSOpenApplicationOptionKeyUnlockDevice = result;
  getFBSOpenApplicationOptionKeyUnlockDevice = FBSOpenApplicationOptionKeyUnlockDeviceFunction;
  return result;
}

id _LSServer_GetIOQueue(uint64_t a1)
{
  if (_LSServer_GetIOQueue::once != -1)
  {
    _LSServer_GetIOQueue_cold_1();
  }

  v2 = _LSServer_GetIOQueue::result;

  return v2;
}

id _LSServer_GetAsyncWorkQueue(uint64_t a1)
{
  if (_LSServer_GetAsyncWorkQueue::once != -1)
  {
    _LSServer_GetAsyncWorkQueue_cold_1();
  }

  v2 = _LSServer_GetAsyncWorkQueue::result;

  return v2;
}

uint64_t _LSServer_SetDatabaseIsSeeded(int a1)
{
  v5 = 0;
  _LSDatabaseSessionSetSeedingInProgress(a1 == 0);
  if (_LSContextInit(&v5))
  {
    v2 = 0;
  }

  else
  {
    if (v5 && [(_LSDatabase *)v5 isSeeded]!= a1)
    {
      [(_LSDatabase *)v5 setSeeded:?];
      _LSDatabaseCommit(v5, v3);
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }

    _LSContextDestroy(&v5);
  }

  return v2;
}

uint64_t _LSServer_RegisterItemInfo(void *a1, void *a2, void *a3, const __CFDictionary *a4, _DWORD *a5, uint64_t a6, unsigned __int8 *a7, CFTypeRef *a8)
{
  v48 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  _LSLogStepStart(v16, 0, 0, v17);
  _LSDatabaseSentinelIncrement();
  if (v15)
  {
    if (v15[2] == 7)
    {
      goto LABEL_6;
    }

    v19 = _LSDefaultLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      _LSServer_RegisterItemInfo_cold_1(v15, v19);
    }

    if (v15[2] == 7)
    {
LABEL_6:
      v20 = _LSContextInit(&v45);
      if (v20)
      {
        v31 = 0;
      }

      else
      {
        v20 = _LSServerItemInfoRegistration(&v45, v15, v16, a3, a4, &v44, a6, &v43, a7);
        if (v20)
        {
          goto LABEL_24;
        }

        v21 = _LSServer_CopyLocalDatabase(0);
        v22 = v21 == v45;

        if (!v22)
        {
          v36 = [MEMORY[0x1E696AAA8] currentHandler];
          v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSServer_RegisterItemInfo(const LSRegistrationInfo *__strong, NSData *__strong, CFDictionaryRef, CFDictionaryRef, CSStoreUnitID *, CSStoreUnitID *, Boolean *, CFStringRef *)"}];
          [v36 handleFailureInFunction:v37 file:@"LSServerInterface.mm" lineNumber:112 description:@"server local database differed from context after registration?"];
        }

        _LSDatabaseCommit(v45, v23);
        if (v15[3] != 203 || v44 == 0)
        {
          goto LABEL_24;
        }

        if (v43)
        {
          v26 = objc_autoreleasePoolPush();
          v27 = _LSBundleGetRegistrationNotification(v45, v44, v15[4], @"com.apple.LaunchServices.applicationRegistered");
          v28 = v27;
          if (v27)
          {
            v29 = _LSServer_GetIOQueue(v27);
            block = MEMORY[0x1E69E9820];
            v39 = 3221225472;
            v40 = ___LSServer_RegisterItemInfo_block_invoke;
            v41 = &unk_1E6A1A830;
            v42 = v28;
            dispatch_async(v29, &block);
          }

          objc_autoreleasePoolPop(v26);
        }

        else
        {
          v30 = _LSRegistrationLog(v24);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v47 = v44;
            _os_log_impl(&dword_18162D000, v30, OS_LOG_TYPE_DEFAULT, "Registration succeeded, but did not actually register anything new; returning existing bundle 0x%llx and not sending app-registered notification.", buf, 0xCu);
          }
        }

        if (!a8 || !_LSBundleGet(v45, v44))
        {
LABEL_24:
          v31 = 0;
        }

        else
        {
          [(_LSDatabase *)v45 store];
          v31 = _CSStringCopyCFString();
        }

        _LSContextDestroy(&v45);
        if (a8 && v31)
        {
          *a8 = CFRetain(v31);
        }

        if (a5)
        {
          *a5 = v44;
        }
      }
    }

    else
    {
      v31 = 0;
      v20 = 4294956474;
    }
  }

  else
  {
    v31 = 0;
    v20 = 4294967246;
  }

  v32 = v31;
  v33 = [MEMORY[0x1E696AD98] numberWithInt:v20];
  _LSLogStepFinished(v33, v20 == 0, v32, v34, v33, block, v39, v40, v41);

  _LSDatabaseSentinelDecrement();
  if (v32)
  {
    CFRelease(v32);
  }

  return v20;
}

void _LSIfCanModifyDefaultHandler(void *a1, void *a2, _DWORD *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v14 = 0;
  LODWORD(a2) = _LSCanModifyDefaultHandler(a1, a2, v9, &v14);
  v11 = v14;
  v12 = v11;
  if (a2)
  {
    v13 = v10[2](v10);
  }

  else
  {
    v13 = _LSGetOSStatusFromNSError(v11);
  }

  *a3 = v13;
}

uint64_t _LSCanModifyDefaultHandler(void *a1, void *a2, void *a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7 && ![v7 caseInsensitiveCompare:@"file"])
  {
    if (!a4)
    {
      goto LABEL_20;
    }

    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"inScheme";
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v16, "_LSCanModifyDefaultHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSServerInterface.mm", 195);
LABEL_19:
    *a4 = v17;

    a4 = 0;
    goto LABEL_20;
  }

  v10 = _LSCheckXPCConnectionEntitlementForChangingDefaultHandler(v9, v7, v8);
  if (v10)
  {
    _LSArmSaveTimer(3);
    a4 = 1;
    goto LABEL_20;
  }

  if (v7)
  {
    v11 = _LSDefaultLog(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      pid = xpc_connection_get_pid(v9);
      _LSCanModifyDefaultHandler_cold_1(v7, v22, pid);
    }
  }

  if (v8)
  {
    v13 = _LSDefaultLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = xpc_connection_get_pid(v9);
      _LSCanModifyDefaultHandler_cold_2(v8, v21, v14);
    }
  }

  if (a4)
  {
    v19 = *MEMORY[0x1E696A278];
    v15 = @"com.apple.private.launchservices.changedefaulthandlers";
    if (!@"com.apple.private.launchservices.changedefaulthandlers")
    {
      v15 = @"unknown entitlement";
    }

    v20 = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v16, "_LSCanModifyDefaultHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSServerInterface.mm", 207);
    goto LABEL_19;
  }

LABEL_20:

  return a4;
}

uint64_t _LSEffectivePreferenceRolesMaskForMask(uint64_t a1)
{
  v1 = a1;
  v8 = *MEMORY[0x1E69E9840];
  if (a1 != -1 && (~a1 & 0xE) == 0)
  {
    v2 = _LSDefaultLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134218240;
      v5 = v1;
      v6 = 2048;
      v7 = 0xFFFFFFFFLL;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Upgrading requested roles mask for preference write from %lx to %lx", &v4, 0x16u);
    }

    return 0xFFFFFFFFLL;
  }

  return v1;
}

uint64_t _LSServer_SetContentTypeHandler(LSContext *TagForContentType, uint64_t a2, const __CFString *a3, __int128 *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v7 = _LSEffectivePreferenceRolesMaskForMask(a2);
  v9 = _LSContextInit(&v16);
  if (!v9)
  {
    if (!TagForContentType)
    {
      goto LABEL_9;
    }

    if (!LSHandlerPref::ValidateHandler(v16, @"com.apple.uniform-type-identifier", TagForContentType, a3, v8))
    {
      v9 = 4294967242;
      goto LABEL_7;
    }

    v10 = LSHandlerPref::CreateTagForContentType(v16, TagForContentType, &v15);
    if (!v10)
    {
      v9 = 4294967246;
      goto LABEL_7;
    }

    StringForCFString = _LSDatabaseCreateStringForCFString(v16, a3, 0);
    if (StringForCFString)
    {
      v12 = a4[1];
      v17[0] = *a4;
      v17[1] = v12;
      LSHandlerPref::SetRoleHandlerForTag(v16, v10, v15, v7, StringForCFString, v17);
      _LSDatabaseCommit(v16, v13);
      v9 = 0;
    }

    else
    {
LABEL_9:
      v9 = 4294956479;
    }

LABEL_7:
    [(_LSDatabase *)v16 store];
    _CSStringRelease();
    [(_LSDatabase *)v16 store];
    _CSStringRelease();
    _LSContextDestroy(&v16);
  }

  return v9;
}

uint64_t _LSServer_RemoveContentTypeHandler(const __CFString *a1, uint64_t a2)
{
  v9 = 0;
  v8 = 0;
  v3 = _LSEffectivePreferenceRolesMaskForMask(a2);
  v4 = _LSContextInit(&v9);
  if (!v4)
  {
    if (a1)
    {
      TagForContentType = LSHandlerPref::GetTagForContentType(v9, a1, &v8);
      if (TagForContentType)
      {
        LSHandlerPref::RemoveRoleHandlerForTag(v9, TagForContentType, v8, v3);
        _LSDatabaseCommit(v9, v6);
        v4 = 0;
      }

      else
      {
        v4 = 4294967246;
      }
    }

    else
    {
      v4 = 4294956479;
    }

    _LSContextDestroy(&v9);
  }

  return v4;
}

uint64_t _LSServer_SetSchemeHandler(__CFString *a1, const __CFString *a2, __int128 *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v7 = _LSContextInit(&v13);
  if (!v7)
  {
    if (LSHandlerPref::ValidateHandler(v13, @"public.url-scheme", a1, a2, v6))
    {
      StringForCFString = _LSDatabaseCreateStringForCFString(v13, a1, 1);
      if (StringForCFString && (v9 = _LSDatabaseCreateStringForCFString(v13, a2, 0), v9))
      {
        v10 = a3[1];
        v14[0] = *a3;
        v14[1] = v10;
        LSHandlerPref::SetRoleHandlerForTag(v13, StringForCFString, 5, 0xFFFFFFFF, v9, v14);
        _LSDatabaseCommit(v13, v11);
        v7 = 0;
      }

      else
      {
        v7 = 4294956479;
      }
    }

    else
    {
      v7 = 4294967242;
    }

    [(_LSDatabase *)v13 store];
    _CSStringRelease();
    [(_LSDatabase *)v13 store];
    _CSStringRelease();
    _LSContextDestroy(&v13);
  }

  return v7;
}

uint64_t _LSServer_RemoveSchemeHandler(const __CFString *a1)
{
  v6 = 0;
  v2 = _LSContextInit(&v6);
  if (!v2)
  {
    StringForCFString = _LSDatabaseGetStringForCFString(v6, a1, 1);
    if (StringForCFString)
    {
      LSHandlerPref::RemoveHandlersForTag(v6, StringForCFString, 5);
      _LSDatabaseCommit(v6, v4);
      v2 = 0;
    }

    else
    {
      v2 = 4294956479;
    }

    _LSContextDestroy(&v6);
  }

  return v2;
}

BOOL _LSServer_RemoveAllHandlers(void *a1)
{
  v15 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v12, v2, 0);

  if (v3)
  {
    LSHandlerPref::RemoveAll(*v3, v4);
    _LSDatabaseCommit(*v3, v5);
    _LSArmSaveTimer(3);
  }

  else if (a1)
  {
    v6 = +[_LSDServiceDomain defaultServiceDomain];
    v7 = LaunchServices::Database::Context::_get(&v12, v6, 0);

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v15;
    }

    *a1 = v8;
  }

  if (v12 && v14 == 1)
  {
    _LSContextDestroy(v12);
  }

  v9 = v13;
  v12 = 0;
  v13 = 0;

  v14 = 0;
  v10 = v15;
  v15 = 0;

  return v3 != 0;
}

void _LSLogStep(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v11 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:a5];
  }

  else
  {
    v10 = 0;
  }

  [(objc_class *)getAITransactionLogClass() logStep:4 byParty:5 phase:a1 success:a2 forBundleID:v11 description:v10];
}

BOOL LaunchServices::LSDefaultAppsExtraStateManager::validatePlist(LaunchServices::LSDefaultAppsExtraStateManager *this, objc_object *a2)
{
  v2 = this;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(LaunchServices::LSDefaultAppsExtraStateManager *)v2 objectForKey:@"PreviouslySetCategories"];
    v5 = 1;
    if (v3)
    {
      v4 = objc_opt_class();
      if (!_LSIsArrayWithValuesOfClass(v3, v4))
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id LaunchServices::LSDefaultAppsExtraStateManager::plistFromState(void *a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"PreviouslySetCategories";
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x1E695DFD8] set];
  }

  v3 = [v2 allObjects];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  if (!a1)
  {
  }

  return v4;
}

uint64_t LaunchServices::LSDefaultAppsExtraStateManager::stateFromValidatedPlist(LaunchServices::LSDefaultAppsExtraStateManager *this, objc_object *a2)
{
  v2 = this;
  v3 = [(LaunchServices::LSDefaultAppsExtraStateManager *)v2 objectForKey:@"PreviouslySetCategories"];
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v3];
  v5 = [v4 copy];

  return v5;
}

void sub_181789B08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void LaunchServices::LSDefaultAppsExtraStateManager::read(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[8] = 0;
  v4 = LaunchServices::LSStatePlist::read(a1, a2);
  if (v4)
  {
    v6 = v4;
    *a3 = LaunchServices::LSDefaultAppsExtraStateManager::stateFromValidatedPlist(v4, v5);
    a3[8] = 1;
    v4 = v6;
  }
}

id LaunchServices::LSDefaultAppsExtraStateManager::modify(uint64_t a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1EEF64090;
  v4[1] = a2;
  v4[3] = v4;
  v2 = LaunchServices::LSStatePlist::modify(a1, v4);
  std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](v4);

  return v2;
}

void sub_181789C4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::_LSServer_DefaultAppsExtraStateManager(LaunchServices *this)
{
  if (LaunchServices::_LSServer_DefaultAppsExtraStateManager(void)::onceToken != -1)
  {
    LaunchServices::_LSServer_DefaultAppsExtraStateManager();
  }

  return LaunchServices::_LSServer_DefaultAppsExtraStateManager(void)::result;
}

LaunchServices::LSDefaultAppsExtraStateManager *LaunchServices::LSDefaultAppsExtraStateManager::LSDefaultAppsExtraStateManager(LaunchServices::LSDefaultAppsExtraStateManager *this, NSURL *a2)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v4[0] = &unk_1EEF61C50;
  v4[1] = LaunchServices::LSDefaultAppsExtraStateManager::validatePlist;
  v4[3] = v4;
  LaunchServices::LSStatePlist::LSStatePlist(this, a2, v4);
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](v4);
  return this;
}

void sub_181789DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0,std::allocator<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0>,objc_object * ()(objc_object *,NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF64090;
  a2[1] = v2;
  return result;
}

id std::__function::__func<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0,std::allocator<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0>,objc_object * ()(objc_object *,NSError *)>::operator()(uint64_t a1, id *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;
  v7 = v4;
  if (v5)
  {
    v8 = LaunchServices::LSDefaultAppsExtraStateManager::stateFromValidatedPlist(v5, v6);
    v9 = *(a1 + 8);
    v10 = v8;
    v15 = v10;
    v16 = 1;
  }

  else
  {
    v10 = 0;
    v9 = *(a1 + 8);
    LOBYTE(v15) = 0;
    v16 = 0;
  }

  v11 = std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()(v9, &v15, v7);
  if (v16 == 1)
  {
  }

  v12 = v11;
  v13 = LaunchServices::LSDefaultAppsExtraStateManager::plistFromState(v11);

  if (v5)
  {
  }

  return v13;
}

uint64_t std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v8);
  }

  v6 = (*(*v5 + 48))(v5, a2, &v9);

  return v6;
}

void _LSServerCleanEphemeralMobileContainersForFirstBoot(uint64_t *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning ephemeral mobile containers", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_LSDatabase *)*a1 store];
  [(_LSDatabase *)*a1 schema];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke;
  v17 = &unk_1E6A1E090;
  v19 = a1;
  v4 = v3;
  v18 = v4;
  _CSStoreEnumerateUnits();
  if ([v4 count])
  {
    _LSDatabaseSentinelIncrement();
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          _LSContainerRemove(a1, [*(*(&v10 + 1) + 8 * v9++) unsignedIntegerValue]);
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v21 count:16];
      }

      while (v7);
    }

    _LSArmSaveTimer(1);
    _LSDatabaseSentinelDecrement();
  }
}

uint64_t _LSServerMain(unsigned int a1, uint64_t a2)
{
  v158 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x1E696ABC0] _setFileNameLocalizationEnabled:0];
  v4 = setiopolicy_np(9, 0, 1);
  if ((v4 & 0x80000000) != 0)
  {
    v6 = __error();
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      _LSServerMain_cold_1();
    }
  }

  v8 = [__LSDefaultsGetSharedInstance(v4 v5)];
  if (a1 < 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    v11 = a1 - 1;
    v12 = (a2 + 8);
    do
    {
      v13 = *v12++;
      v8 = strcasecmp(v13, "systemSessionDaemon");
      v10 |= v8 == 0;
      --v11;
    }

    while (v11);
  }

  v14 = [__LSDefaultsGetSharedInstance(v8 v9)];
  v15 = _LSDefaultLog(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = getprogname();
    *&buf[12] = 2048;
    *&buf[14] = [__LSDefaultsGetSharedInstance(*&buf[4] v16)];
    *&buf[22] = 2048;
    v152 = _CFGetEUID();
    _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s starting with schema version %llu for effective user %llu", buf, 0x20u);
  }

  if (listenForSigterm_onceToken != -1)
  {
    _LSServerMain_cold_2();
  }

  HasDoneFirstBootWork = _LSServerHasDoneFirstBootWork();
  if (!HasDoneFirstBootWork)
  {
    v18 = _LSDefaultLog(HasDoneFirstBootWork);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "migrating old preference files on first start after reboot...", buf, 2u);
    }

    v19 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.MobileCoreServices/com.apple.launchservices.secure.plist" isDirectory:0];
    v20 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.MobileCoreServices/com.apple.LaunchServices.plist" isDirectory:0];
    v21 = [MEMORY[0x1E696AC08] defaultManager];
    v22 = [v19 path];
    v23 = [v21 fileExistsAtPath:v22];

    if (v23)
    {
      v26 = [__LSDefaultsGetSharedInstance(v24 v25)];
      moveItemAtURLToURL(v19, v26);
    }

    v27 = [MEMORY[0x1E696AC08] defaultManager];
    v28 = [v20 path];
    v29 = [v27 fileExistsAtPath:v28];

    if (v29)
    {
      v32 = [__LSDefaultsGetSharedInstance(v30 v31)];
      moveItemAtURLToURL(v20, v32);
    }

    if (([__LSDefaultsGetSharedInstance(v30 v31)] & 1) == 0)
    {
      v33 = [MEMORY[0x1E696AC08] defaultManager];
      v35 = [__LSDefaultsGetSharedInstance(v33 v34)];
      v36 = [v35 path];
      v37 = [v33 fileExistsAtPath:v36];

      if (v37)
      {
        v40 = [__LSDefaultsGetSharedInstance(v38 v39)];
        v42 = [__LSDefaultsGetSharedInstance(v40 v41)];
        moveItemAtURLToURL(v40, v42);

        v45 = [__LSDefaultsGetSharedInstance(v43 v44)];
        *&v154 = *MEMORY[0x1E695DAF0];
        *buf = *MEMORY[0x1E695DAF8];
        v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v154 count:1];
        *v148 = 0;
        v47 = [v45 setResourceValues:v46 error:v148];
        v48 = *v148;

        if ((v47 & 1) == 0)
        {
          v50 = _LSDefaultLog(v49);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_FAULT))
          {
            _LSServerMain_cold_3();
          }
        }
      }
    }

    v51 = [MEMORY[0x1E696AC08] defaultManager];
    v52 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var/db/lsd/com.apple.lsdschemes.plist" isDirectory:0];
    [v51 removeItemAtURL:v52 error:0];

    v54 = _LSDefaultLog(v53);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      *v147 = 0;
      _os_log_impl(&dword_18162D000, v54, OS_LOG_TYPE_DEFAULT, "Done migrating old preference files.", v147, 2u);
    }
  }

  v55 = objc_autoreleasePoolPush();
  v57 = [__LSDefaultsGetSharedInstance(v55 v56)];
  v58 = [v57 path];

  v59 = [MEMORY[0x1E696AC08] defaultManager];
  v60 = [v59 fileExistsAtPath:v58];

  if ((v60 & 1) == 0)
  {
    v61 = [MEMORY[0x1E696AC08] defaultManager];
    *&v154 = *MEMORY[0x1E696A370];
    *buf = &unk_1EEF8F098;
    v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v154 count:1];
    [v61 createDirectoryAtPath:v58 withIntermediateDirectories:1 attributes:v62 error:0];
  }

  objc_autoreleasePoolPop(v55);
  v143 = [MEMORY[0x1E696AC08] defaultManager];
  v64 = [__LSDefaultsGetSharedInstance(v143 v63)];
  v65 = [MEMORY[0x1E695DEC8] array];
  *v147 = 0;
  v142 = [v143 contentsOfDirectoryAtURL:v64 includingPropertiesForKeys:v65 options:0 error:v147];
  v145 = *v147;

  if (v145)
  {
    v67 = _LSDefaultLog(v66);
    v68 = v67;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      _LSServerMain_cold_4(v145, v67);
      v68 = v67;
    }

    goto LABEL_56;
  }

  v69 = getenv("LS_NAME_PREFIX");
  v71 = "com.apple.LaunchServices";
  if (v69)
  {
    v71 = v69;
  }

  v144 = v71;
  v72 = MEMORY[0x1E695DFD8];
  v73 = [__LSDefaultsGetSharedInstance(v69 v70)];
  v74 = [v73 lastPathComponent];
  v76 = [__LSDefaultsGetSharedInstance(v74 v75)];
  v77 = [v76 lastPathComponent];
  v145 = [v72 setWithObjects:{v74, v77, 0}];

  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v68 = v142;
  v78 = [v68 countByEnumeratingWithState:&v154 objects:buf count:16];
  if (v78)
  {
    v79 = *v155;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v155 != v79)
        {
          objc_enumerationMutation(v68);
        }

        v81 = *(*(&v154 + 1) + 8 * i);
        v82 = [v81 pathExtension];
        if (![v82 isEqualToString:@"csstore"])
        {
          goto LABEL_53;
        }

        v83 = [v81 lastPathComponent];
        v84 = [v145 containsObject:v83];

        if (v84)
        {
          continue;
        }

        v82 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SystemDataOnly-%s-", v144];
        v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-", v144];
        v86 = [v81 lastPathComponent];
        if ([v86 hasPrefix:v82])
        {

LABEL_48:
          v146 = 0;
          [v143 removeItemAtURL:v81 error:&v146];
          v89 = v146;
          if (v89)
          {
            v90 = v89;
            v91 = _LSDefaultLog(v89);
            if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
            {
              v92 = [v81 path];
              *v148 = 138412546;
              *&v148[4] = v92;
              v149 = 2112;
              v150 = v90;
              _os_log_error_impl(&dword_18162D000, v91, OS_LOG_TYPE_ERROR, "Error removing stale db file at path: %@ %@", v148, 0x16u);
            }
          }

          goto LABEL_52;
        }

        v87 = [v81 lastPathComponent];
        v88 = [v87 hasPrefix:v85];

        if (v88)
        {
          goto LABEL_48;
        }

LABEL_52:

LABEL_53:
      }

      v78 = [v68 countByEnumeratingWithState:&v154 objects:buf count:16];
    }

    while (v78);
  }

LABEL_56:

  v93 = objc_autoreleasePoolPush();
  v95 = [__LSDefaultsGetSharedInstance(v93 v94)];
  setBackupAttributesForURL(v95);

  v98 = [__LSDefaultsGetSharedInstance(v96 v97)];
  if ((v98 & 1) == 0)
  {
    v100 = [__LSDefaultsGetSharedInstance(v98 v99)];
    setBackupAttributesForURL(v100);
  }

  objc_autoreleasePoolPop(v93);
  v101 = objc_autoreleasePoolPush();
  *&v154 = 0;
  *(&v154 + 1) = &v154;
  *&v155 = 0x2020000000;
  BYTE8(v155) = 0;
  SyncInterrupted = _LSDatabaseGetSyncInterrupted(v101, v102);
  v104 = SyncInterrupted;
  _LSDatabaseClearSyncInterrupted(SyncInterrupted, v105);
  if (v104)
  {
    v107 = _LSDefaultLog(v106);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
    {
      _LSServerMain_cold_5();
    }

    v110 = [__LSDefaultsGetSharedInstance(v108 v109)];
    _LSDatabaseDeleteRecoveryFile(v110);
  }

  v111 = +[LSDBExecutionContext sharedServerInstance];
  _LSServer_SetDatabaseExecutionContext(v111);

  v112 = _LSServer_DatabaseExecutionContext();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __seedDatabase_block_invoke;
  v152 = &unk_1E6A19988;
  v153 = &v154;
  [(LSDBExecutionContext *)v112 beginServerDBBootstrap:buf];

  if ((*(*(&v154 + 1) + 24) & 1) == 0)
  {
    if (v104 || (v113 = _LSDatabaseSentinelGet(), v113))
    {
      v114 = _LSServer_GetIOQueue(v113);
      dispatch_async(v114, &__block_literal_global_38_0);
    }
  }

  _Block_object_dispose(&v154, 8);
  objc_autoreleasePoolPop(v101);
  v115 = _LSServerHasDoneFirstBootWork();
  if (!v115)
  {
    v116 = _LSDefaultLog(v115);
    if (os_log_type_enabled(v116, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v116, OS_LOG_TYPE_DEFAULT, "Reboot detected, performing first boot work.", buf, 2u);
    }

    v117 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v117 syncWrite:?];

    v119 = _LSDefaultLog(v118);
    if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v119, OS_LOG_TYPE_DEFAULT, "Cleaning ephemeral mobile containers", buf, 2u);
    }

    LSNoteFirstBootForRestrictions(v120);
    v122 = _LSDefaultLog(v121);
    if (os_log_type_enabled(v122, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v122, OS_LOG_TYPE_DEFAULT, "First boot work complete!", buf, 2u);
    }

    v123 = sem_open("com.apple.lsd.firstboot", 512, 256, 0);
    if (v123 == -1)
    {
      v124 = _LSDefaultLog(-1);
      if (os_log_type_enabled(v124, OS_LOG_TYPE_ERROR))
      {
        _LSServerMain_cold_6();
      }
    }

    else
    {
      sem_close(v123);
    }
  }

  if (_os_feature_enabled_impl())
  {
    v125 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v125 syncWrite:?];
  }

  v126 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v126 syncWrite:?];

  v127 = objc_autoreleasePoolPush();
  _LSDServiceStartAllServices(v127, v128);
  v129 = +[LSDatabaseBlockingFetchServer sharedInstance];
  [v129 startRunningIfNecessary];

  if (([__LSDefaultsGetSharedInstance(v130 v131)] & 1) == 0)
  {
    +[_LSInstallProgressService beginListening];
    v132 = +[_LSPersonaDatabase sharedInstance];
    if (ExtensionFoundationLibrary_frameworkLibrary || (v132 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2), (ExtensionFoundationLibrary_frameworkLibrary = v132) != 0))
    {
      v132 = softLink_EXStartService(v132);
    }

    _LSServer_BeginProvidingVisualizationArchives(v132, v133);
  }

  objc_autoreleasePoolPop(v127);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, languagePrefChanged, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  _LSAppsAnalyticsStartListening(v135, v136);
  objc_autoreleasePoolPop(context);
  if ([__LSDefaultsGetSharedInstance(v137 v138)])
  {
    v139 = runLightweightServerMainRunLoop;
  }

  else
  {
    v139 = runServerMainRunLoop;
  }

  std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func();
  v139();
  return 0;
}

void __listenForSigterm_block_invoke()
{
  listenForSigterm_sigtermSet = 0x4000;
  v0 = sigprocmask(1, &listenForSigterm_sigtermSet, 0);
  if (v0)
  {
    v1 = _LSDefaultLog(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __listenForSigterm_block_invoke_cold_1();
    }
  }

  v2 = dispatch_queue_create("com.apple.lsd.sigact", 0);
  v3 = listenForSigterm_handlerQueue;
  listenForSigterm_handlerQueue = v2;

  v4 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, listenForSigterm_handlerQueue);
  v5 = listenForSigterm_sigtermSource;
  listenForSigterm_sigtermSource = v4;

  dispatch_source_set_event_handler(listenForSigterm_sigtermSource, &__block_literal_global_9);
  dispatch_resume(listenForSigterm_sigtermSource);
}

void __listenForSigterm_block_invoke_7(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Received SIGTERM.", buf, 2u);
  }

  _LSServer_NoteTerminationRequestForMISync(v2);
  v10 = 0;
  v3 = sigpending(&v10);
  if (v3)
  {
    v4 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __listenForSigterm_block_invoke_7_cold_1();
    }
  }

  v5 = sigprocmask(2, &listenForSigterm_sigtermSet, 0);
  if (v5)
  {
    v6 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __listenForSigterm_block_invoke_7_cold_2();
    }
  }

  if ((v10 & 0x4000) == 0)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "SIGTERM was consumed. Taking it upon ourselves to deliver it.", v9, 2u);
    }

    v8 = getpid();
    kill(v8, 15);
  }

  dispatch_source_cancel(listenForSigterm_sigtermSource);
}

BOOL _LSServerHasDoneFirstBootWork()
{
  v0 = sem_open("com.apple.lsd.firstboot", 0);
  v1 = v0;
  if (v0 != -1)
  {
    sem_close(v0);
  }

  return v1 != -1;
}

void moveItemAtURLToURL(void *a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v15 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v27 = v3;
      v28 = 2112;
      v29 = v5;
      v16 = "LaunchServices: failed trying to migrate file %@ to %@";
      v17 = v15;
      v18 = 22;
LABEL_10:
      _os_log_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEFAULT, v16, buf, v18);
    }

LABEL_11:
    v19 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v3 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (!v8)
  {
    v15 = _LSDefaultLog(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = v3;
      v16 = "LaunchServices: No file to migrate at URL %@";
      v17 = v15;
      v18 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = [MEMORY[0x1E696AC08] defaultManager];
  v11 = [v5 path];
  v12 = [v10 fileExistsAtPath:v11];

  if (v12)
  {
    v13 = 0;
    v14 = 1;
  }

  else
  {
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v25 = 0;
    v14 = [v20 copyItemAtURL:v3 toURL:v5 error:&v25];
    v13 = v25;
  }

  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v24 = v13;
  v22 = [v21 removeItemAtURL:v3 error:&v24];
  v19 = v24;

  if (!v22 || (v14 & 1) == 0)
  {
    v23 = [v19 code];
    if (v23 != 4)
    {
      v15 = _LSDefaultLog(v23);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v19;
        _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "LaunchServices: Migration move item step failed with error: %@", buf, 0xCu);
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

void setBackupAttributesForURL(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *MEMORY[0x1E695DB80];
    v10 = 0;
    v4 = [v1 setResourceValue:MEMORY[0x1E695E118] forKey:v3 error:&v10];
    v5 = v10;
    v6 = v5;
    if ((v4 & 1) == 0)
    {
      v7 = _LSDefaultLog(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 domain];
        v9 = [v6 code];
        *buf = 138478339;
        v12 = v2;
        v13 = 2114;
        v14 = v8;
        v15 = 2048;
        v16 = v9;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Error excluding %{private}@ from backup: %{public}@ %lli", buf, 0x20u);
      }
    }
  }
}

void __seedDatabase_block_invoke(uint64_t a1)
{
  v2 = [LSDatabaseBuilder alloc];
  v3 = _LSServer_GetIOQueue(v2);
  v7 = [(LSDatabaseBuilder *)v2 initWithIOQueue:v3];

  [(LSDatabaseBuilder *)v7 createAndSeedLocalDatabase:*(*(a1 + 32) + 8) + 24];
  v4 = *(*(a1 + 32) + 8);
  v6 = *(v4 + 24);
  v5 = v4 + 24;
  if ((v6 & 1) == 0)
  {
    [(LSDatabaseBuilder *)v7 seedCryptexContentIfNeeded:v5];
  }
}

void __performFirstBootWorkIfNecessary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = 0;
  v11 = 0;
  inited = _LSContextInitReturningError(&v11, &v10);
  v7 = v10;
  v8 = v7;
  if (inited)
  {
    _LSServerCleanEphemeralMobileContainersForFirstBoot(&v11);
    _LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot(&v11);
  }

  else
  {
    v9 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __performFirstBootWorkIfNecessary_block_invoke_cold_1();
    }
  }
}

void __migrateDefaultAppsToNewWorld_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v12 = 0;
  v13 = 0;
  inited = _LSContextInitReturningError(&v13, &v12);
  v7 = v12;
  v9 = v7;
  if (inited)
  {
    v10 = _LSServer_LSMigratePreferencesForDefaultApps(&v13, v8);
  }

  else
  {
    v11 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __migrateDefaultAppsToNewWorld_block_invoke_cold_1();
    }
  }
}

uint64_t (*init_EXStartService())(void)
{
  v0 = ExtensionFoundationLibrary_frameworkLibrary;
  if (!ExtensionFoundationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
    ExtensionFoundationLibrary_frameworkLibrary = v0;
  }

  result = dlsym(v0, "_EXStartService");
  softLink_EXStartService = result;
  if (result)
  {

    return (result)();
  }

  return result;
}

void languagePrefChanged()
{
  v0 = MEMORY[0x1865D7C40]();
  v2 = _LSDatabaseGetSeedingGroup(v0, v1);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v5 = _LSDatabaseGetInstallingGroup(v3, v4);
  dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);

  v8 = _LSDatabaseGetMobileInstallSyncupGroup(v6, v7);
  dispatch_group_wait(v8, 0xFFFFFFFFFFFFFFFFLL);

  v9 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v9 syncWrite:?];
}

void __languagePrefChanged_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  _LSSaveImmediately(1);
  v6 = MEMORY[0x1865D7C50]();
  v7 = _LSDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "LaunchServices: received languagePrefChanged notification, exiting.", v8, 2u);
  }

  exit(0);
}

void sub_18178BD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

Class initFBSOpenApplicationOptions(void)
{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSOpenApplicationOptions");
  classFBSOpenApplicationOptions = result;
  getFBSOpenApplicationOptionsClass = FBSOpenApplicationOptionsFunction;
  return result;
}

void sub_18178F8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void _LSStringLocalizerPrewarmAllLocalizations(_LSStringLocalizer *a1)
{
  v1 = a1;
  stringsContent = v1->_stringsContent;
  p_isa = &v1->super.isa;
  v3 = [(_LSStringLocalizer *)v1 bundleProvider];
  v4 = LSBundleProvider::bundleRef([v3 provider], 1, 0);
  [(_LSStringsFileContent *)stringsContent prewarmAllLocalizationsWithBundle:v4 forLocalizations:p_isa[3]];
}

id UTTypeDescriptionKeys(void)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = @"UTTypeDescription";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:1];

  return v0;
}

void sub_181790448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_181791E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_18179201C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18179244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v32 = v30;

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_181792A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18)
{
  if (a18 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void ___ZL18_LSSetCrashMessageP8NSString_block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    v3 = strdup([v1 UTF8String]);
    v4 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___ZL18_LSSetCrashMessageP8NSString_block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v6 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v6, v3, memory_order_relaxed, memory_order_relaxed);
  if (v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void ___ZL15_LSLoggingQueuev_block_invoke_1()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.logging", v2);
  v1 = _LSLoggingQueue(void)::logQueue;
  _LSLoggingQueue(void)::logQueue = v0;
}

void ___ZL20_LSClearCrashMessagev_block_invoke()
{
  v0 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v1 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v1, 0, memory_order_relaxed, memory_order_relaxed);
  if (v1 == v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  free(v2);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void ___ZL35enumerateProductPlatformKeySuffixesIU8__strongP8NSStringZL46checkPlatformKeysForKeysForSubscriptedLoctableP5NSSetIS1_EP12NSDictionaryIS1_P11objc_objectEE3__0ENSt3__18optionalIT_EES1_RKT0__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _LSGetProductNameSuffix(a1, a2);
  v3 = [v2 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v4 = enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::productThenPlatformSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::productThenPlatformSuffix = v3;

  v5 = _LSGetPlatformNameSuffix();
  v7 = [(__CFString *)v5 stringByAppendingString:_LSGetProductNameSuffix(v5, v6)];
  v8 = enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::platformThenProductSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::platformThenProductSuffix = v7;
}

void ___ZL35enumerateProductPlatformKeySuffixesIU8__strongP12NSDictionaryIP8NSStringP11objc_objectEZ53___LSStringsFileContent_subscriptLoctableWithLocale__E3__1ENSt3__18optionalIT_EES2_RKT0__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _LSGetProductNameSuffix(a1, a2);
  v3 = [v2 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v4 = enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::productThenPlatformSuffix;
  enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::productThenPlatformSuffix = v3;

  v5 = _LSGetPlatformNameSuffix();
  v7 = [(__CFString *)v5 stringByAppendingString:_LSGetProductNameSuffix(v5, v6)];
  v8 = enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::platformThenProductSuffix;
  enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::platformThenProductSuffix = v7;
}

void ___ZL35enumerateProductPlatformKeySuffixesIU8__strongP8NSStringZ60___LSStringsFileContent__queryLoadedPlist_forRawKey_locale__E3__2ENSt3__18optionalIT_EES1_RKT0__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _LSGetProductNameSuffix(a1, a2);
  v3 = [v2 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v4 = enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::productThenPlatformSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::productThenPlatformSuffix = v3;

  v5 = _LSGetPlatformNameSuffix();
  v7 = [(__CFString *)v5 stringByAppendingString:_LSGetProductNameSuffix(v5, v6)];
  v8 = enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::platformThenProductSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::platformThenProductSuffix = v7;
}

void LSBundleProvider::LSBundleProvider(LSBundleProvider *this, CFTypeRef cf)
{
  v11 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    *this = cf;
    *(this + 1) = 0;
    *(this + 5) = 0;
    *(this + 16) = 1;
    Unique = _CFBundleCreateUnique();
    v5 = *(this + 1);
    v6 = Unique;
    if (v5 != Unique)
    {
      *(this + 1) = Unique;
      v6 = v5;
    }

    if (v6)
    {
      CFRelease(v6);
      Unique = *(this + 1);
    }

    if (!Unique)
    {
      v7 = _LSRegistrationLog(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *this;
        v9 = 138477827;
        v10 = v8;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_ERROR, "Unable to create bundleRef for %{private}@", &v9, 0xCu);
      }
    }
  }

  else
  {
    *(this + 5) = 0;
    *this = 0;
    *(this + 1) = 0;
    *(this + 16) = 0;
  }
}

{
  LSBundleProvider::LSBundleProvider(this, cf);
}

void LSBundleProvider::LSBundleProvider(LSBundleProvider *this, void *cf)
{
  *(this + 5) = 0;
  *this = 0;
  *(this + 1) = 0;
  if (cf)
  {
    CFRetain(cf);
    v4 = *(this + 1);
    v5 = cf;
    if (v4 == cf || (*(this + 1) = cf, (v5 = v4) != 0))
    {
      CFRelease(v5);
    }

    v6 = CFBundleCopyBundleURL(cf);
    v7 = *this;
    if (*this != v6)
    {
      *this = v6;
      v6 = v7;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_18179345C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  *(v1 + 8) = 0;
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

void LSBundleProvider::~LSBundleProvider(LSBundleProvider *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;
  if (*this)
  {
    CFRelease(*this);
  }

  *this = 0;
}

__CFBundle *LSBundleProvider::bundleIdentifier(LSBundleProvider *this)
{
  Identifier = *(this + 1);
  if (Identifier)
  {
    Identifier = CFBundleGetIdentifier(Identifier);
    v1 = vars8;
  }

  return Identifier;
}

__CFBundle *LSBundleProvider::infoDictionary(LSBundleProvider *this)
{
  InfoDictionary = *(this + 1);
  if (InfoDictionary)
  {
    InfoDictionary = CFBundleGetInfoDictionary(InfoDictionary);
    v1 = vars8;
  }

  return InfoDictionary;
}

__CFBundle *LSBundleProvider::CFBundleCopyExecutableURL(LSBundleProvider *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFBundleCopyExecutableURL(result);
  }

  return result;
}

__CFBundle *LSBundleProvider::CFBundleCopyResourceURL(LSBundleProvider *this, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  result = *(this + 1);
  if (result)
  {
    return CFBundleCopyResourceURL(result, a2, a3, a4);
  }

  return result;
}

id LSBundleProvider::copyResourceRelativePath(LSBundleProvider *this, NSString *a2, NSString *a3, NSString *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(this + 1);
  if (v10 && (v11 = CFBundleCopyResourceURL(v10, v7, v8, v9)) != 0)
  {
    v12 = CFURLCopyFileSystemPath(*this, kCFURLPOSIXPathStyle);
    v13 = CFURLCopyFileSystemPath(v11, kCFURLPOSIXPathStyle);
    v14 = v13;
    v15 = 0;
    if (v12 && v13)
    {
      v15 = [FSNode relativePathToFullPath:v13 fromBasePath:v12];
    }

    CFRelease(v11);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_181793658(_Unwind_Exception *a1)
{
  CFRelease(v4);

  _Unwind_Resume(a1);
}

CFStringRef LSBundleProvider::CFBundleCopyDevelopmentRegion(LSBundleProvider *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  DevelopmentRegion = CFBundleGetDevelopmentRegion(v1);
  v3 = DevelopmentRegion;
  if (DevelopmentRegion)
  {
    CFRetain(DevelopmentRegion);
  }

  return v3;
}

__CFBundle *LSBundleProvider::CFBundleCopyBundleLocalizations(LSBundleProvider *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFBundleCopyBundleLocalizations(result);
  }

  return result;
}

__CFBundle *LSBundleProvider::copyIconResourceURL(LSBundleProvider *this, const __CFString *a2, const __CFString *a3)
{
  result = *(this + 1);
  if (result)
  {
    result = CFBundleCopyResourceURLForLocalization(result, a2, a3, 0, 0);
    if (!(a3 | result))
    {
      v7 = *(this + 1);

      return CFBundleCopyResourceURLForLocalization(v7, a2, @"icns", 0, 0);
    }
  }

  return result;
}

id LSBundleProvider::intentURLPaths(LSBundleProvider *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
LABEL_4:

    return v2;
  }

  if (softLinkINSchemaURLsForIntentNamesWithBundle)
  {
    v2 = softLinkINSchemaURLsForIntentNamesWithBundle(v2);
    v1 = vars8;
    goto LABEL_4;
  }

  v2 = 0;

  return v2;
}

__CFBundle *LSBundleProvider::XCFBundleCopyFolderURL(LSBundleProvider *this, const __CFString *a2)
{
  result = *(this + 1);
  if (result)
  {
    return XCFBundleCopyFolderURL(result, a2);
  }

  return result;
}

void sub_181793930(_Unwind_Exception *a1)
{
  MEMORY[0x1865D6250](v2, 0x1060C40D21511CDLL);

  _Unwind_Resume(a1);
}

void sub_1817939FC(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x1865D6250](v4, 0x1060C40D21511CDLL);

  _Unwind_Resume(a1);
}

void sub_181793DEC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 10);

  _Unwind_Resume(a1);
}

void sub_181794034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  os_unfair_lock_unlock(v18 + 10);

  _Unwind_Resume(a1);
}

uint64_t std::optional<NSError * {__strong}>::operator=[abi:nn200100]<NSError * {__strong}&,void>(uint64_t a1, id *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  if (v3 == 1)
  {
    v5 = *a1;
    *a1 = v4;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_181795120(_Unwind_Exception *a1)
{
  LaunchServices::Database::Context::~Context((v5 - 160));

  _Unwind_Resume(a1);
}

id registrationCleanupQueue(uint64_t a1)
{
  if (registrationCleanupQueue(void)::onceToken != -1)
  {
    registrationCleanupQueue();
  }

  v2 = registrationCleanupQueue(void)::queue;

  return v2;
}

void sub_181795898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v36 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__136(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1865D71B0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18179627C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v34 - 144), 8);

  _Block_object_dispose((v34 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1817969F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_181797350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

void sub_181797F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_181798710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_181798C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);

  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_18179AC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__286(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__287(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL24registrationCleanupQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.lsd.registration.postprocessing", v2);
  v1 = registrationCleanupQueue(void)::queue;
  registrationCleanupQueue(void)::queue = v0;
}

uint64_t LaunchServices::StrongBinding::isAllowedForNode(id *a1, void *a2, _BYTE *a3, void *a4)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (!v7)
  {
    if (a4)
    {
      v21 = *MEMORY[0x1E696A278];
      v22[0] = @"inNode";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "isAllowedForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 353);
    }

    goto LABEL_11;
  }

  v20 = 0;
  if ([v7 getResourceValue:&v20 forKey:@"_NSURLCanSetStrongBindingKey" options:0 error:0])
  {
    IsPackage = [v20 BOOLValue];
    goto LABEL_4;
  }

  if (_LSGetBundleClassForNode(0, v8) == 2 || ([v8 isVolume] & 1) != 0)
  {
LABEL_14:
    LOBYTE(v10) = 0;
    goto LABEL_15;
  }

  if (![v8 isRegularFile])
  {
    if (![v8 isDirectory])
    {
      goto LABEL_14;
    }

    v18 = LaunchServices::Database::Context::operator LSContext *(a1);
    if (v18)
    {
      IsPackage = _LSNodeIsPackage(v18, v8, 0);
LABEL_4:
      LOBYTE(v10) = IsPackage;
      if (IsPackage)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }

    if (a4)
    {
      *a4 = LaunchServices::Database::Context::error(a1);
    }

LABEL_11:
    v16 = 0;
    goto LABEL_18;
  }

  if ([v8 isResolvable])
  {
    goto LABEL_14;
  }

  v10 = [v8 isSideFault] ^ 1;
  if (v10)
  {
LABEL_5:
    v11 = +[_LSDServiceDomain defaultServiceDomain];
    v12 = LaunchServices::Database::Context::_get(a1, v11, 0);

    LaunchServices::TypeEvaluator::TypeEvaluator(v19, v8);
    v14 = LaunchServices::TypeEvaluator::getTypeIdentifier(v19, &v12->db, 0);
    if (v14 && !LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(v12, v14, v13))
    {
      LOBYTE(v10) = 0;
    }
  }

LABEL_15:

  if (a3)
  {
    *a3 = v10;
  }

  v16 = 1;
LABEL_18:

  return v16;
}

uint64_t LaunchServices::CopyStrongBindingForNode(id *a1, void *a2, int a3, id *a4, uint64_t a5, void *a6)
{
  v64 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = v10;
  if (!v10)
  {
    if (a6)
    {
      v55 = *MEMORY[0x1E696A278];
      v56 = @"inNode";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "CopyStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 140);
    }

    goto LABEL_72;
  }

  v50 = a1;
  v12 = v10;
  if (a4)
  {
    v13 = *a4;
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    v14 = *(a5 + 32);
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;

    v15 = *(a5 + 40);
    *(a5 + 40) = 0;

    *(a5 + 48) = 0;
  }

  v16 = v12;
  *&v62 = 0;
  if ([v16 getTemporaryResourceValue:&v62 forKey:@"com.apple.LSStrongBindingDictionaryKey"])
  {
    if (_NSIsNSDictionary())
    {
      v17 = v62;
    }

    else if (a6)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 93, 0, "getDictionaryFromAttributeOfNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 409);
      *a6 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_35;
  }

  v19 = [v16 extendedAttributeWithName:@"com.apple.LaunchServices.OpenWith" options:1 error:a6];
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = [MEMORY[0x1E696AE40] propertyListWithData:v19 options:0 format:0 error:a6];
  if (!v20)
  {
    goto LABEL_30;
  }

  if (!_NSIsNSDictionary())
  {
    if (a6)
    {
      v24 = 431;
      v25 = -10817;
LABEL_29:
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v25, 0, "getDictionaryFromAttributeOfNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", v24);
    }

LABEL_30:

LABEL_31:
    v28 = [MEMORY[0x1E695DFB0] null];
    v17 = 0;
    v27 = 1;
    goto LABEL_32;
  }

  v17 = v20;
  v21 = objc_opt_class();
  v22 = [v17 objectForKey:@"version"];
  v23 = v22;
  if (v21 && v22)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_26:
LABEL_27:
      if (a6)
      {
        v24 = 427;
        v25 = -10650;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (!v22)
  {
    goto LABEL_26;
  }

  v26 = [v23 unsignedLongLongValue] == 0;

  if (!v26)
  {
    goto LABEL_27;
  }

  v27 = 0;
  v28 = v17;
LABEL_32:
  [v16 setTemporaryResourceValue:v28 forKey:@"com.apple.LSStrongBindingDictionaryKey"];
  if (v27)
  {
  }

LABEL_35:
  if (!v17)
  {

    goto LABEL_72;
  }

  v52 = v17;
  if (!(a4 | a5))
  {
    if (a6)
    {
      v57 = *MEMORY[0x1E696A278];
      v58 = @"invalid input parameters";
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v38, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 532);
    }

    else
    {
    }

    goto LABEL_72;
  }

  v59 = kLSVersionNumberNull;
  v60 = unk_1817E90C0;
  v29 = objc_opt_class();
  v30 = [v52 objectForKey:@"bundleidentifier"];
  v31 = v30;
  if (v29 && v30 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v31 = 0;
  }

  v32 = +[_LSDServiceDomain defaultServiceDomain];
  v33 = LaunchServices::Database::Context::_get(v50, v32, 0);

  if (!v33)
  {
    if (a6)
    {
      v39 = +[_LSDServiceDomain defaultServiceDomain];
      v40 = LaunchServices::Database::Context::_get(v50, v39, 0);

      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = v50[3];
      }

      *a6 = v41;
    }

    goto LABEL_72;
  }

  v54 = 0;
  v53 = 0;
  v62 = v59;
  v63 = v60;
  v34 = _LSBundleFindWithInfo(v33, 0, v31, 0, &v62, 2, a3, &v54, &v53);
  if (v34)
  {
    v62 = v59;
    v63 = v60;
    memset(v61, 0, sizeof(v61));
    if (!_LSVersionNumberCompare(&v62, v61) || (v62 = kLSVersionNumberNull, v63 = unk_1817E90C0, (v34 = _LSBundleFindWithInfo(v33, 0, v31, 0, &v62, 2, a3, &v54, &v53)) != 0))
    {
      if (a6)
      {
        v35 = [MEMORY[0x1E695DF90] dictionary];
        v36 = *MEMORY[0x1E696A768];
        v37 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v34, 0, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 522);
        [v35 setObject:v37 forKeyedSubscript:*MEMORY[0x1E696AA08]];

        *a6 = _LSMakeNSErrorImpl(v36, -10814, 0, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 524);
      }

      goto LABEL_72;
    }
  }

  *&v62 = 0;
  v42 = _LSBundleCopyNode(v33->db, v54, 0, 1, &v62);
  if (v42)
  {
    if (a6)
    {
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v42, 0, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 515);
    }
  }

  else
  {
    if (a4)
    {
      objc_storeStrong(a4, v62);
    }

    if (a5)
    {
      v43 = v53;
      *a5 = v54;
      *(a5 + 8) = v43;
      *(a5 + 16) = 0;
      v44 = *(a5 + 32);
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;

      v45 = *(a5 + 40);
      *(a5 + 40) = 0;

      *(a5 + 48) = 2;
    }
  }

  if (v42)
  {
    goto LABEL_72;
  }

  LOBYTE(v62) = 0;
  isAllowedForNode = LaunchServices::StrongBinding::isAllowedForNode(v50, v16, &v62, a6);
  v47 = isAllowedForNode;
  if (v62)
  {
    v48 = 0;
  }

  else
  {
    v48 = isAllowedForNode;
  }

  if (v48 == 1)
  {
    if (a6)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "CopyStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 134);
      *a6 = v47 = 0;
      goto LABEL_73;
    }

LABEL_72:
    v47 = 0;
  }

LABEL_73:

  return v47;
}

uint64_t LaunchServices::SetStrongBindingForNode(id *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  if (!v8)
  {
    if (a5)
    {
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"inNode";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "SetStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 170);
    }

    goto LABEL_18;
  }

  v29 = 0;
  isAllowedForNode = LaunchServices::StrongBinding::isAllowedForNode(a1, v8, &v29, a5);
  if (v29)
  {
    v11 = 0;
  }

  else
  {
    v11 = isAllowedForNode;
  }

  if (v11 != 1)
  {
    if (!isAllowedForNode)
    {
      goto LABEL_18;
    }

    v14 = v8;
    v15 = v9;
    v16 = v15;
    if (v15)
    {
      v28 = [v15 pathWithError:a5];
      if (v28)
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        v18 = v17;
        if (v17)
        {
          [v17 setObject:&unk_1EEF8F0B0 forKeyedSubscript:@"version"];
          v19 = +[_LSDServiceDomain defaultServiceDomain];
          v20 = LaunchServices::Database::Context::_get(a1, v19, 0);

          if (v20)
          {
            v31 = 0;
            v30 = 0;
            v21 = _LSBundleFindWithNode(v20, v16, &v31, &v30);
            if (v21)
            {
              if (a5)
              {
                *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v21, 0, "setForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 632);
              }
            }

            else
            {
              [(_LSDatabase *)v20->db store];
              v26 = _CSStringCopyCFString();
              if (v26)
              {
                [v18 setObject:v26 forKeyedSubscript:@"bundleidentifier"];
              }
            }

            v27 = [MEMORY[0x1E696AE40] dataWithPropertyList:v18 format:200 options:0 error:a5];
            if (v27)
            {
              v12 = [v14 setExtendedAttribute:v27 name:@"com.apple.LaunchServices.OpenWith" options:1 error:a5];
            }

            else
            {
              v12 = 1;
            }

            goto LABEL_37;
          }

          if (a5)
          {
            v24 = +[_LSDServiceDomain defaultServiceDomain];
            v25 = LaunchServices::Database::Context::_get(a1, v24, 0);

            if (v25)
            {
              v23 = 0;
            }

            else
            {
              v23 = a1[3];
            }

            goto LABEL_36;
          }
        }

        else if (a5)
        {
          v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "setForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 658);
LABEL_36:
          v12 = 0;
          *a5 = v23;
          goto LABEL_37;
        }

        v12 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v12 = 0;
    }

    else
    {
      v12 = [v14 setExtendedAttribute:0 name:@"com.apple.LaunchServices.OpenWith" options:1 error:a5];
    }

LABEL_38:
    [v14 removeCachedResourceValueForKey:@"com.apple.LSStrongBindingDictionaryKey"];

    goto LABEL_19;
  }

  if (!a5)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10823, 0, "SetStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 162);
  *a5 = v12 = 0;
LABEL_19:

  return v12;
}

id LaunchServices::Database::Context::operator LSContext *(id *a1)
{
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(a1, v2, 0);

  return v3;
}

BOOL _LSIsSWCAvailable()
{
  if (SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    return 1;
  }

  SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  return SharedWebCredentialsLibrary(void)::frameworkLibrary != 0;
}

uint64_t init_SWCServiceTypeActivityContinuation(void)
{
  v0 = SharedWebCredentialsLibrary(void)::frameworkLibrary;
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
    SharedWebCredentialsLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "_SWCServiceTypeActivityContinuation");
  constant_SWCServiceTypeActivityContinuation = result;
  get_SWCServiceTypeActivityContinuation = _SWCServiceTypeActivityContinuationFunction;
  return result;
}

uint64_t init_SWCServiceTypeAppLinks(void)
{
  v0 = SharedWebCredentialsLibrary(void)::frameworkLibrary;
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
    SharedWebCredentialsLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "_SWCServiceTypeAppLinks");
  constant_SWCServiceTypeAppLinks = result;
  get_SWCServiceTypeAppLinks = _SWCServiceTypeAppLinksFunction;
  return result;
}

uint64_t init_SWCErrorDomain(void)
{
  v0 = SharedWebCredentialsLibrary(void)::frameworkLibrary;
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
    SharedWebCredentialsLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "_SWCErrorDomain");
  constant_SWCErrorDomain = result;
  get_SWCErrorDomain = _SWCErrorDomainFunction;
  return result;
}

Class init_SWCServiceDetails(void)
{
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  }

  result = objc_getClass("_SWCServiceDetails");
  class_SWCServiceDetails = result;
  get_SWCServiceDetailsClass = _SWCServiceDetailsFunction;
  return result;
}

Class init_SWCServiceSettings(void)
{
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  }

  result = objc_getClass("_SWCServiceSettings");
  class_SWCServiceSettings = result;
  get_SWCServiceSettingsClass = _SWCServiceSettingsFunction;
  return result;
}

Class init_SWCServiceSpecifier(void)
{
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  }

  result = objc_getClass("_SWCServiceSpecifier");
  class_SWCServiceSpecifier = result;
  get_SWCServiceSpecifierClass = _SWCServiceSpecifierFunction;
  return result;
}

void sub_18179CF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id _LSServer_GetiCloudHostNames()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/mobile/Library/Caches/CloudKit/com.apple.cloudkit.launchservices.hostnames.plist" isDirectory:0];
  v1 = LaunchServices::URLOverrides::getLog(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    _LSServer_GetiCloudHostNames_cold_1();
  }

  v3 = LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL(v0, v2);
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/CoreServices/com.apple.cloudkit.launchservices.hostnames.plist" isDirectory:0];
    v5 = LaunchServices::URLOverrides::getLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _LSServer_GetiCloudHostNames_cold_1();
    }

    v3 = LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL(v4, v6);

    if (!v3)
    {
      v8 = LaunchServices::URLOverrides::getLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        _LSServer_GetiCloudHostNames_cold_3();
      }

      v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EEF8F268];
    }
  }

  return v3;
}

id LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL(LaunchServices::URLOverrides *this, NSURL *a2)
{
  v2 = this;
  v12 = 0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v2 error:&v12];
  v4 = v12;
  v5 = v4;
  if (!v3)
  {
    v9 = LaunchServices::URLOverrides::getLog(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL();
    }

    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = [v3 objectForKey:@"host-names"];
  v8 = v7;
  if (v6 && v7)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_10;
    }

LABEL_9:
    v9 = [(LaunchServices::URLOverrides *)v8 valueForKey:@"lowercaseString"];

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    goto LABEL_13;
  }

  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = LaunchServices::URLOverrides::getLog(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL();
  }

LABEL_12:
  v10 = 0;
LABEL_13:

  return v10;
}

id LaunchServices::URLOverrides::getURLOverrideCommon(LaunchServices::URLOverrides *this, NSURL *a2)
{
  v3 = this;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__50;
  v25 = __Block_byref_object_dispose__50;
  v26 = 0;
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    p_super = LaunchServices::URLOverrides::getLog(v4);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
    }
  }

  else
  {
    MayMapDatabase = _LSCurrentProcessMayMapDatabase();
    if (MayMapDatabase && ([__LSDefaultsGetSharedInstance(MayMapDatabase v7)] & 1) == 0)
    {
      v10 = [[_LSURLOverride alloc] initWithOriginalURL:v3];
      p_super = &v10->super;
      if (v10)
      {
        v11 = [(_LSURLOverride *)v10 overrideURL];
        v12 = v22[5];
        v22[5] = v11;
      }
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke;
      v19[3] = &unk_1E6A192C8;
      v8 = v3;
      v20 = v8;
      v9 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v19];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233;
      v16[3] = &unk_1E6A1E578;
      v18 = &v21;
      v17 = v8;
      [v9 getURLOverrideForURL:v17 completionHandler:v16];

      p_super = v20;
    }
  }

  v13 = v22[5];
  if (!v13)
  {
    objc_storeStrong(v22 + 5, this);
    v13 = v22[5];
  }

  v14 = v13;
  _Block_object_dispose(&v21, 8);

  return v14;
}

void sub_18179D5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

BOOL LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(id *this, NSString *a2)
{
  v3 = a2;
  v4 = [*this path];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rangeOfString:v3 options:9] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_18179DB0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

LaunchServices::URLOverrides::State *LaunchServices::URLOverrides::State::State(LaunchServices::URLOverrides::State *this, NSURL *a2, char a3)
{
  v5 = a2;
  *this = 0;
  *(this + 6) = 0;
  v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:1];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  }

  LaunchServices::URLOverrides::State::State(&obj, v6, a3);
  objc_storeStrong(this, obj);
  *(this + 2) = v9;
  *(this + 6) = v10;

  return this;
}

uint64_t LaunchServices::URLOverrides::State::isNooverride(id *this)
{
  v1 = [*this fragment];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 hasSuffix:@":nooverride"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___ZN14LaunchServices12URLOverridesL6getLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "urloverrides");
  v1 = LaunchServices::URLOverrides::getLog(void)::result;
  LaunchServices::URLOverrides::getLog(void)::result = v0;
}

void ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LaunchServices::URLOverrides::getLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_cold_1(a1);
  }
}

void ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v9 = LaunchServices::URLOverrides::getLog(v7);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233_cold_1(a1);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233_cold_2();
    }
  }
}

void ___ZN14LaunchServices12URLOverridesL18checkForiCloudHostEP15NSURLComponents_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    ___ZN14LaunchServices12URLOverridesL18checkForiCloudHostEP15NSURLComponents_block_invoke_cold_1();
  }

  v4 = [v2 copy];
  v5 = LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts;
  LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts = v4;
}

LaunchServices::URLPropertyProvider *_LSReplaceURLPropertyValueForEncoding(void *a1)
{
  v1 = a1;
  if (LaunchServices::URLPropertyProvider::getUTTypeClass(v1) && (objc_opt_isKindOfClass() & 1) != 0 && [v1 _shouldURLPropertyProviderEncodeTypeRecord])
  {
    v2 = [v1 _typeRecord];

    v1 = v2;
  }

  return v1;
}

LaunchServices::URLPropertyProvider *_LSReplaceURLPropertyValueForDecoding(void *a1)
{
  v1 = a1;
  UTTypeClass = LaunchServices::URLPropertyProvider::getUTTypeClass(v1);
  if (UTTypeClass)
  {
    v3 = UTTypeClass;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 _typeForURLPropertyProviderWithTypeRecord:v1];

      v1 = v4;
    }
  }

  return v1;
}

uint64_t LaunchServices::URLPropertyProvider::setIsPackageValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a5 || ![a2 isDirectory])
  {
    return 1;
  }

  result = [a2 getFinderInfo:v12 error:a7];
  if (result)
  {
    v11 = _LSGetBooleanFromCFType(a5) != 0;
    v13 = v13 & 0xDFFF | (v11 << 13);
    return [a2 setFinderInfo:v12 error:a7];
  }

  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareDistinctLocalizedNameValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v9 = [a2 canIssueIO];
  if (v9)
  {
    v21 = 0;
    v22 = 0;
    if ([a2 getResourceValue:&v22 forKey:*MEMORY[0x1E695DC30] options:1 error:a6] && objc_msgSend(a2, "getResourceValue:forKey:options:error:", &v21, *MEMORY[0x1E695DC10], 1, a6))
    {
      if ([v22 isEqual:v21])
      {
        v10 = 0;
      }

      else
      {
        v10 = v21;
      }

      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E280], v10);
      a6 = 1;
    }

    else
    {
      a6 = 0;
    }
  }

  else
  {
    v11 = _LSDefaultLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareDistinctLocalizedNameValue(v11, v12, v13, v14, v15, v16, v17, v18);
    }

    if (a6)
    {
      v23 = *MEMORY[0x1E696A278];
      v24[0] = @"can't provide with mimic";
      v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v19, "prepareDistinctLocalizedNameValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 788);

      return 0;
    }
  }

  return a6;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedNameComponentsValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = LaunchServices::URLPropertyProvider::getDisplayNameConstructor(a1, a2, a5, a6);
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    if (v9)
    {
      v17 = 0;
      v15 = 0;
      v16 = 0;
      [v8 getUnlocalizedBaseName:&v16 extension:&v15 requiresAdditionalBiDiControlCharacters:&v17];
      v10 = v16;
      v11 = v15;
      if (v10)
      {
        [v9 addObject:v10];
      }

      if (v11)
      {
        [v9 addObject:v11];
      }

      v12 = [v9 copy];
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E370], v12);

      v13 = 1;
    }

    else if (a6)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "prepareLocalizedNameComponentsValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 907);
      *a6 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    LaunchServices::BindingEvaluator::CreateWithNode(a2, v18);
    v12 = LaunchServices::BindingEvaluator::getLocalizedKindString(v18, v11, 0, a6);
    if (v12)
    {
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EBD0], v12);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    LaunchServices::BindingEvaluator::~BindingEvaluator(v18);
  }

  else if (a6)
  {
    v14 = +[_LSDServiceDomain defaultServiceDomain];
    v15 = LaunchServices::Database::Context::_get(a1, v14, 0);

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = a1[3];
    }

    v13 = 0;
    *a6 = v16;
  }

  else
  {
    return 0;
  }

  return v13;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionDictionaryValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v10 = [a2 canIssueIO];
  if ((v10 & 1) == 0)
  {
    v15 = _LSDefaultLog(v10);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionDictionaryValue(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    if (a6)
    {
      v29 = *MEMORY[0x1E696A278];
      v30[0] = @"can't provide with mimic";
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v23, "prepareLocalizedTypeDescriptionDictionaryValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1239);
    }

    return 0;
  }

  v11 = +[_LSDServiceDomain defaultServiceDomain];
  v12 = LaunchServices::Database::Context::_get(a1, v11, 0);

  if (v12)
  {
    LaunchServices::BindingEvaluator::CreateWithNode(a2, v28);
    v13 = LaunchServices::BindingEvaluator::getLocalizedKindStringDictionary(v28, v12, a6);
    if (v13)
    {
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E388], v13);
      v14 = 1;
    }

    else
    {
      v14 = 0;
    }

    LaunchServices::BindingEvaluator::~BindingEvaluator(v28);
    return v14;
  }

  if (!a6)
  {
    return 0;
  }

  v24 = +[_LSDServiceDomain defaultServiceDomain];
  v25 = LaunchServices::Database::Context::_get(a1, v24, 0);

  if (v25)
  {
    v26 = 0;
  }

  else
  {
    v26 = a1[3];
  }

  v14 = 0;
  *a6 = v26;
  return v14;
}

uint64_t LaunchServices::URLPropertyProvider::prepareBundleIdentifierValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (!v11)
  {
    if (a6)
    {
      v14 = +[_LSDServiceDomain defaultServiceDomain];
      v15 = LaunchServices::Database::Context::_get(a1, v14, 0);

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = a1[3];
        v19 = v16;
      }

      goto LABEL_14;
    }

    return 0;
  }

  v21 = 0;
  v20 = 0;
  v12 = _LSFindOrFindOrRegisterBundleNode(v11, a2, 0, 0x2000000, 0, &v21, &v20);
  if (v12 == -10811)
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E248], 0);
    return 1;
  }

  if (!v12)
  {
    [(_LSDatabase *)*v11 store];
    v13 = _CSStringCopyCFString();
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E248], v13);

    return 1;
  }

  if (!a6)
  {
    return 0;
  }

  v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "prepareBundleIdentifierValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1558);
  v18 = v16;
LABEL_14:
  result = 0;
  *a6 = v16;
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareHFSTypeCodeValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  valuePtr = 0;
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11 && (_LSGetNodeTypeCreatorInfo(v11, a2, 0, &valuePtr + 1, &valuePtr), (v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr + 4)) != 0))
  {
    v13 = v12;
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E2D8], v12);
    CFRelease(v13);
    return 1;
  }

  else
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E2D8], 0);
    if (a6)
    {
      v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "prepareHFSTypeCodeValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1586);
      v16 = v15;
      result = 0;
      *a6 = v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareArchitecturesValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v37[1] = *MEMORY[0x1E69E9840];
  v10 = [a2 canIssueIO];
  if (v10)
  {
    v35 = 0;
    v11 = [a2 getResourceValue:&v35 forKey:*MEMORY[0x1E695DB70] options:3 error:0];
    if (!v35)
    {
      v11 = 0;
    }

    if (v11 == 1 && [v35 BOOLValue])
    {
      v12 = +[_LSDServiceDomain defaultServiceDomain];
      v13 = LaunchServices::Database::Context::_get(a1, v12, 0);

      if (!v13)
      {
        if (a6)
        {
          v31 = +[_LSDServiceDomain defaultServiceDomain];
          v32 = LaunchServices::Database::Context::_get(a1, v31, 0);

          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = a1[3];
          }

          goto LABEL_31;
        }

LABEL_27:
        v29 = 0;
        goto LABEL_19;
      }

      v34 = 0;
      v14 = _LSFindOrRegisterBundleNode(v13, a2, 0, 0x2000000u, 0, &v34, 0);
      if (v14 != -10811)
      {
        if (!v14)
        {
          v15 = _LSBundleCopyArchitecturesAvailable(*v13, v34);
          v16 = _LSBundleCopyArchitecturesValidOnCurrentSystem(*v13, v34);
          v17 = v16;
          v18 = *MEMORY[0x1E695E210];
          if (v15 && v16)
          {
            MEMORY[0x1865D5CD0](a3, v18, v15);
            v19 = v17;
          }

          else
          {
            v19 = MEMORY[0x1E695E0F0];
            MEMORY[0x1865D5CD0](a3, v18, MEMORY[0x1E695E0F0]);
          }

          MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E238], v19);

          goto LABEL_18;
        }

        if (a6)
        {
          v33 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "prepareArchitecturesValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2030);
LABEL_31:
          v29 = 0;
          *a6 = v33;
          goto LABEL_19;
        }

        goto LABEL_27;
      }

      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E210], 0);
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E238], 0);
    }

    else
    {
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E210], 0);
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E238], 0);
    }

LABEL_18:
    v29 = 1;
LABEL_19:

    return v29;
  }

  v20 = _LSDefaultLog(v10);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLPropertyProvider::prepareArchitecturesValue(v20, v21, v22, v23, v24, v25, v26, v27);
  }

  if (a6)
  {
    v36 = *MEMORY[0x1E696A278];
    v37[0] = @"can't provide with mimic";
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v28, "prepareArchitecturesValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1982);
  }

  return 0;
}

uint64_t LaunchServices::URLPropertyProvider::prepareCanSetStrongBindingValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v10 = [a2 canIssueIO];
  if (v10)
  {
    if (_LSCurrentProcessMayMapDatabase())
    {
      v22 = 0;
      result = LaunchServices::IsStrongBindingAllowedForNode(a1, a2, 0, &v22, a6);
      if (!result)
      {
        return result;
      }

      v12 = MEMORY[0x1E695E4D0];
      if (!v22)
      {
        v12 = MEMORY[0x1E695E4C0];
      }

      MEMORY[0x1865D5CD0](a3, @"_NSURLCanSetStrongBindingKey", *v12);
    }

    else
    {
      MEMORY[0x1865D5CD0](a3, @"_NSURLCanSetStrongBindingKey", *MEMORY[0x1E695E4C0]);
    }

    return 1;
  }

  else
  {
    v13 = _LSDefaultLog(v10);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareCanSetStrongBindingValue(v13, v14, v15, v16, v17, v18, v19, v20);
    }

    if (a6)
    {
      v23 = *MEMORY[0x1E696A278];
      v24[0] = @"can't provide with mimic";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v21, "prepareCanSetStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2053);
    }

    return 0;
  }
}

uint64_t LaunchServices::URLPropertyProvider::prepareStrongBindingValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v10 = [a2 canIssueIO];
  if (v10)
  {
    v27 = 0;
    v28 = 0;
    v11 = LaunchServices::CopyStrongBindingForNode(a1, a2, 0, &v28, 0, &v27);
    v12 = v27;
    v13 = v12;
    if (v11)
    {
      if (v28)
      {
        v14 = [v28 URL];
        MEMORY[0x1865D5CD0](a3, @"_NSURLStrongBindingKey", v14);

LABEL_12:
        v24 = 1;
LABEL_18:

        return v24;
      }

      if (a6)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "prepareStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2100);
        *a6 = v24 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      if (_LSGetOSStatusFromNSError(v12) == -10814)
      {
        MEMORY[0x1865D5CD0](a3, @"_NSURLStrongBindingKey", 0);
        goto LABEL_12;
      }

      if (a6)
      {
        v25 = v13;
        v24 = 0;
        *a6 = v13;
        goto LABEL_18;
      }
    }

    v24 = 0;
    goto LABEL_18;
  }

  v15 = _LSDefaultLog(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLPropertyProvider::prepareStrongBindingValue(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  if (a6)
  {
    v29 = *MEMORY[0x1E696A278];
    v30[0] = @"can't provide with mimic";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v23, "prepareStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2083);
  }

  return 0;
}

uint64_t LaunchServices::URLPropertyProvider::setStrongBindingValue(id *a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, void *a7)
{
  v17[1] = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return 1;
  }

  TypeID = CFNullGetTypeID();
  if (TypeID == CFGetTypeID(a5))
  {
    return LaunchServices::SetStrongBindingForNode(a1, a2, 0, 0, a7);
  }

  v12 = CFURLGetTypeID();
  if (v12 == CFGetTypeID(a5))
  {
    v13 = [[FSNode alloc] initWithURL:a5 flags:16 error:a7];
    if (v13)
    {
      a7 = LaunchServices::SetStrongBindingForNode(a1, a2, 0, v13, a7);
    }

    else
    {
      a7 = 0;
    }
  }

  else if (a7)
  {
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"value";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    *a7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "setStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2135);

    return 0;
  }

  return a7;
}

uint64_t LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  {
    LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue();
  }

  if (LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::onceToken != -1)
  {
    LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue();
  }

  if ([0 BOOLValue])
  {
    MEMORY[0x1865D5CD0](a3, a4, *MEMORY[0x1E695E4D0]);
    return 1;
  }

  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = LaunchServices::Database::Context::_get(a1, v12, 0);

  if (v13)
  {
    v32 = 0;
    v31 = 0;
    v14 = _LSFindOrFindOrRegisterBundleNode(v13, a2, 0, 0x2000000, 0, &v31, &v32);
    if (v14 == -10811)
    {
      MEMORY[0x1865D5CD0](a3, a4, 0);
      return 1;
    }

    if (!v14)
    {
      bundleFlags_high = HIDWORD(v32->_bundleFlags);
      v16 = MEMORY[0x1E695E4D0];
      if ((bundleFlags_high & 0x2000000) != 0)
      {
        v23 = +[LSEligibilityPredicateEvaluator sharedCachingEligibilityPredicateEvaluator];
        v24 = [v23 evaluateBundle:v31 bundleData:v32 database:*v13 error:a6];

        v18 = v24 != 0;
        if (v24)
        {
          v25 = [v24 BOOLValue];
          v26 = MEMORY[0x1E695E4C0];
          if (!v25)
          {
            v26 = v16;
          }

          v17 = *v26;
        }

        else
        {
          v17 = 0;
        }

        bundleFlags_high = HIDWORD(v32->_bundleFlags);
      }

      else
      {
        v17 = 0;
        v18 = 1;
      }

      if ((bundleFlags_high & 0x4000000) != 0 && v18 && (v28 = *v16, v17 != *v16))
      {
        v29 = +[LSFeatureFlagPredicateEvaluator defaultEvaluator];
        v30 = [v29 evaluateBundle:v31 bundleData:v32 database:*v13 error:a6];

        if (v30)
        {
          if ([v30 BOOLValue])
          {
            v17 = *MEMORY[0x1E695E4C0];
          }

          else
          {
            v17 = v28;
          }

          goto LABEL_37;
        }
      }

      else if (v18)
      {
LABEL_37:
        MEMORY[0x1865D5CD0](a3, a4, v17);
        return 1;
      }

      return 0;
    }

    if (a6)
    {
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "prepareIsHiddenBySystemValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2281);
      v22 = v21;
LABEL_24:
      result = 0;
      *a6 = v21;
      return result;
    }
  }

  else if (a6)
  {
    v19 = +[_LSDServiceDomain defaultServiceDomain];
    v20 = LaunchServices::Database::Context::_get(a1, v19, 0);

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = a1[3];
      v27 = v21;
    }

    goto LABEL_24;
  }

  return 0;
}

uint64_t LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemNotificationsValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = +[_LSDServiceDomain defaultServiceDomain];
  v12 = LaunchServices::Database::Context::_get(a1, v11, 0);

  if (!v12)
  {
    if (a6)
    {
      v15 = +[_LSDServiceDomain defaultServiceDomain];
      v16 = LaunchServices::Database::Context::_get(a1, v15, 0);

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = a1[3];
        v20 = v17;
      }

      goto LABEL_17;
    }

    return 0;
  }

  v22 = 0;
  v21 = 0;
  v13 = _LSFindOrFindOrRegisterBundleNode(v12, a2, 0, 0x2000000, 0, &v21, &v22);
  if (v13 == -10811)
  {
    MEMORY[0x1865D5CD0](a3, a4, 0);
    return 1;
  }

  if (!v13)
  {
    if ((v22->_bundleFlags & 0x200000000000000) != 0)
    {
      v14 = [MEMORY[0x1E695E0F0] arrayByAddingObject:@"kLSHiddenAppsEligibilityChangedNotification"];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    MEMORY[0x1865D5CD0](a3, @"_NSURLIsHiddenBySystemChangedNotificationsKey", v14);

    return 1;
  }

  if (!a6)
  {
    return 0;
  }

  v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v13, 0, "prepareIsHiddenBySystemNotificationsValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2319);
  v18 = v17;
LABEL_17:
  result = 0;
  *a6 = v17;
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareApplicationDeviceManagementPolicyValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v10 = [a2 canIssueIO];
  if ((v10 & 1) == 0)
  {
    v17 = _LSDefaultLog(v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareApplicationDeviceManagementPolicyValue(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    if (a6)
    {
      v31 = *MEMORY[0x1E696A278];
      v32[0] = @"can't provide with mimic";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "prepareApplicationDeviceManagementPolicyValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2335);
    }

    return 0;
  }

  v11 = +[_LSDServiceDomain defaultServiceDomain];
  v12 = LaunchServices::Database::Context::_get(a1, v11, 0);

  if (!v12)
  {
    if (a6)
    {
      v26 = +[_LSDServiceDomain defaultServiceDomain];
      v27 = LaunchServices::Database::Context::_get(a1, v26, 0);

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = a1[3];
      }

      goto LABEL_19;
    }

    return 0;
  }

  v30 = 0;
  v13 = _LSFindOrFindOrRegisterBundleNode(v12, a2, 0, 0x2000000, 0, 0, &v30);
  if (v13 == -10811)
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E218], 0);
    return 1;
  }

  if (v13)
  {
    if (a6)
    {
      v28 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v13, 0, "prepareApplicationDeviceManagementPolicyValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2361);
LABEL_19:
      v16 = 0;
      *a6 = v28;
      return v16;
    }

    return 0;
  }

  [(_LSDatabase *)*v12 store];
  v14 = _CSStringCopyCFString();
  v15 = _LSGetDMFPolicyNoCache(v14, a6);

  if (v15)
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E218], v15);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

void ___ZN14LaunchServices19URLPropertyProviderL43beginTranslatingHiddenBySystemNotificationsEv_block_invoke(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Starting listening to hidden-by-system notifications", buf, 2u);
  }

  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("com.apple.launchservices.hiddenPreferenceNotification", v2);
  v4 = LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::hiddenPreferenceNotificationQueue;
  LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::hiddenPreferenceNotificationQueue = v3;

  LaunchServices::notifyd::NotifyToken::RegisterDispatch(@"com.apple.launchservices.setsystemhidden", LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::hiddenPreferenceNotificationQueue, &__block_literal_global_65, &v9);
  LaunchServices::notifyd::NotifyToken::operator=(LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::preferenceDistributedNotificationToken, &v9);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v9);
  v6 = LaunchServices::EligibilityCache::shared(v5);
  v7 = LaunchServices::EligibilityCache::addEligibilityChangedListener(v6, &__block_literal_global_71);
  v8 = LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::eligibilityChangeListenerToken;
  LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::eligibilityChangeListenerToken = v7;
}

void ___ZN14LaunchServices19URLPropertyProviderL43beginTranslatingHiddenBySystemNotificationsEv_block_invoke_63(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Received com.apple.launchservices.setsystemhidden, reposting eligibility notification", v3, 2u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kLSHiddenAppsEligibilityChangedNotification", 0, 0, 1u);
}

void ___ZN14LaunchServices19URLPropertyProviderL43beginTranslatingHiddenBySystemNotificationsEv_block_invoke_69(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_DEFAULT, "Eligibility changed, reposting eligibility notification", v3, 2u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kLSHiddenAppsEligibilityChangedNotification", 0, 0, 1u);
}

void LaunchServices::URLPropertyProvider::normalizeError(const void *a1, uint64_t a2, id *a3)
{
  if (a1 && a3)
  {
    v6 = *a3;
    v11 = v6;
    if (v6)
    {
      v7 = [v6 domain];
      v8 = [v7 isEqual:*MEMORY[0x1E696A250]];

      if ((v8 & 1) == 0)
      {
        v9 = CFGetAllocator(a1);
        v10 = [v11 domain];
        *a3 = MEMORY[0x1865D5C70](v9, v10, [v11 code], a2, a1, 0);
      }
    }

    else
    {
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "normalizeError", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 222);
    }
  }
}

void _LSRegistrationWarning(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (_LSRegistrationWarning::lastNode != v4)
  {
    objc_storeStrong(&_LSRegistrationWarning::lastNode, a1);
    if (v4)
    {
      v5 = [v4 pathWithError:0];
      v6 = v5;
      v7 = @"<unknown>";
      if (v5)
      {
        v7 = v5;
      }

      v8 = v7;

      v10 = _LSDefaultLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138477827;
        v16 = v8;
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "*** Registration warnings for %{private}@:", &v15, 0xCu);
      }
    }
  }

  if (a2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = a2;
      v14 = [a2 UTF8String];
      v15 = 136446210;
      v16 = v14;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "    %{public}s", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

void _LSRegistrationWarningPath(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138477827;
    v10 = a1;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "*** Registration warnings for %{private}@:", &v9, 0xCu);
  }

  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2;
      v8 = [a2 UTF8String];
      v9 = 136446210;
      v10 = v8;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "    %{public}s", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }
}

const __CFString *_LSGetBooleanFromCFType(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFBooleanGetTypeID())
    {
      if (v2 == CFStringGetTypeID())
      {
        result = CFStringGetLength(v1);
        if (!result)
        {
          return result;
        }

        result = CFStringCompare(v1, @"NO", 1uLL);
        if (!result)
        {
          return result;
        }

        result = CFStringCompare(v1, @"0", 0x40uLL);
        if (!result)
        {
          return result;
        }

        v3 = CFStringCompare(v1, @"FALSE", 1uLL) == kCFCompareEqualTo;
      }

      else
      {
        if (v2 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
        v3 = valuePtr == 0;
      }

      return !v3;
    }

    return CFBooleanGetValue(v1);
  }

  return result;
}

const __CFString *_LSGetBooleanFromDict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);

  return _LSGetBooleanFromCFType(Value);
}

const __CFString *_LSGetRawOSTypeForPossibleString(const __CFString *result)
{
  *buffer = 0;
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v1) && ((Length = CFStringGetLength(v1), Length >= 4) ? (v4 = 4) : (v4 = Length), v6.location = 0, v6.length = v4, v4 == CFStringGetBytes(v1, v6, 0, 0, 0, buffer, 4, 0)))
    {
      return bswap32(*buffer);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _LSPathMatchesPath_NoIO(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSPathMatchesPath_NoIO(NSString *__strong, NSString *__strong, LSPathMatchType)"}];
    [v19 handleFailureInFunction:v20 file:@"LSUtils.mm" lineNumber:790 description:{@"Invalid parameter not satisfying: %@", @"path1 != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSPathMatchesPath_NoIO(NSString *__strong, NSString *__strong, LSPathMatchType)"}];
  [v21 handleFailureInFunction:v22 file:@"LSUtils.mm" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"path2 != nil"}];

LABEL_3:
  v8 = objc_autoreleasePoolPush();
  if (a3)
  {
    v9 = v7;
  }

  else
  {
    while (([v5 hasSuffix:@"/"] & 1) != 0)
    {
      v10 = [v5 stringByReplacingCharactersInRange:objc_msgSend(v5 withString:{"length") - 1, 1, &stru_1EEF65710}];

      v5 = v10;
    }

    for (i = v7; [i hasSuffix:@"/"]; i = v12)
    {
      v12 = [i stringByReplacingCharactersInRange:objc_msgSend(i withString:{"length") - 1, 1, &stru_1EEF65710}];
    }

    v9 = i;
  }

  v13 = v5;
  v14 = v5;
  v15 = v9;
  if (a3 == 2)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v14 = v9;
    v15 = v5;
LABEL_16:
    v16 = [v14 hasPrefix:v15];
    goto LABEL_17;
  }

  if (a3)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v16 = [v5 isEqual:v9];
LABEL_17:
  v17 = v16;
LABEL_19:
  objc_autoreleasePoolPop(v8);

  return v17;
}

uint64_t _LSGetBundle(uint64_t a1, uint64_t a2)
{
  if (_LSGetBundle::once != -1)
  {
    _LSGetBundle_cold_1();
  }

  return _LSGetBundle::gBundleRef;
}

uint64_t _LSGetDirectoryClassForNode(void *a1)
{
  v1 = a1;
  if (![(FSNode *)v1 isOnLocalVolume])
  {
    goto LABEL_21;
  }

  if (_LSNodeIsInDirectoryPath(v1, "/System/Cryptexes/App/System/Applications"))
  {
    v2 = 1;
    goto LABEL_22;
  }

  if (_LSNodeIsInDirectoryPath(v1, "/System/Cryptexes/App/System/Library/CoreServices") & 1) != 0 || (_LSNodeIsInDirectoryPath(v1, "/System/Library/CoreServices/"))
  {
    v2 = 4;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSLibraryDirectory, 8))
  {
    v2 = 3;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSApplicationDirectory, 2))
  {
    v2 = 0;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSLibraryDirectory, 2))
  {
    v2 = 2;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSApplicationDirectory, 1))
  {
    v2 = 5;
    goto LABEL_22;
  }

  v3 = _LSNodeIsInSearchPath(v1, NSLibraryDirectory, 1);
  if (v3)
  {
    v2 = 6;
    goto LABEL_22;
  }

  if (![__LSDefaultsGetSharedInstance(v3 v4)])
  {
LABEL_21:
    v2 = -1;
    goto LABEL_22;
  }

  if (_LSNodeIsInDirectoryPath(v1, "/AppleInternal/"))
  {
    v2 = 8;
  }

  else
  {
    v2 = -1;
  }

LABEL_22:

  return v2;
}

uint64_t _LSNodeIsInDirectoryPath(FSNode *a1, const char *a2)
{
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:a2 isDirectory:1 relativeToURL:0];
  v5 = _LSNodeIsInDirectoryURL(v3, v4);

  return v5;
}

uint64_t _LSNodeIsInSearchPath(FSNode *a1, NSSearchPathDirectory a2, uint64_t a3)
{
  v5 = a1;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 URLsForDirectory:a2 inDomains:a3];
  v8 = [v7 firstObject];

  v9 = _LSNodeIsInDirectoryURL(v5, v8);
  return v9;
}

void sub_1817A27EC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

BOOL _LSIconDictionarySupportsAssetCatalogs(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 objectForKey:@"CFBundlePrimaryIcon"];
  if (_NSIsNSString())
  {
    v4 = 1;
  }

  else if (_NSIsNSDictionary())
  {
    v5 = [v3 objectForKey:@"CFBundleIconName"];
    v4 = v5 != 0;
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

id _LSIconDictionaryGetPrimaryIconName(void *a1)
{
  v1 = [a1 objectForKey:@"CFBundlePrimaryIcon"];
  if (_NSIsNSDictionary())
  {
    v2 = [v1 objectForKey:@"CFBundleIconName"];
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  if (_NSIsNSString())
  {
    v2 = v1;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t _LSGetProductNameSuffix(uint64_t a1, uint64_t a2)
{
  if (_LSGetProductNameSuffix::onceToken != -1)
  {
    _LSGetProductNameSuffix_cold_1();
  }

  return _LSGetProductNameSuffix::suffix;
}

uint64_t _LSEntitledForPluginQuery()
{
  if (!_LSCurrentProcessMayMapDatabase() && _LSEntitledForPluginQuery::onceToken != -1)
  {
    _LSEntitledForPluginQuery_cold_1();
  }

  if (!_os_feature_enabled_impl())
  {
    return 1;
  }

  MayMapDatabase = _LSCurrentProcessMayMapDatabase();
  if (MayMapDatabase)
  {
    return 1;
  }

  v2 = _LSDefaultLog(MayMapDatabase);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    _LSEntitledForPluginQuery_cold_2(v2);
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    abort();
  }

  return result;
}

id _LSGetDataForUserActivity(void *a1, void *a2)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__52;
  v26 = __Block_byref_object_dispose__52;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__52;
  v20 = __Block_byref_object_dispose__52;
  v21 = 0;
  v3 = a1;
  v4 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___LSGetDataForUserActivity_block_invoke;
  v12[3] = &unk_1E6A1E6A8;
  v14 = &v22;
  v15 = &v16;
  v5 = v4;
  v13 = v5;
  v6 = [v3 _createUserActivityDataWithOptions:0 completionHandler:v12];

  if (v6)
  {
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "_LSGetDataForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSUtils.mm", 1716);
    v8 = v17[5];
    v17[5] = v7;
  }

  v9 = v23[5];
  if (a2 && !v9)
  {
    *a2 = v17[5];
    v9 = v23[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void sub_1817A3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSNodeIsInDirectoryURL(FSNode *a1, NSURL *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = 2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [(FSNode *)v3 URL];
    v7 = [v5 getRelationship:&v10 ofDirectoryAtURL:v4 toItemAtURL:v6 error:0];

    if (v10 < 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1817A3214(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

int *___ZL17_LSGetProductNamev_block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = getenv("CLASSIC_SUFFIX");
  if (v0)
  {
    v1 = v0;
    result = strncmp(v0, "iphone", 6uLL);
    if (!result)
    {
      goto LABEL_13;
    }

    result = strncmp(v1, "ipad", 4uLL);
    if (!result)
    {
LABEL_34:
      v4 = @"ipad";
      goto LABEL_36;
    }
  }

  memset(v9, 0, sizeof(v9));
  v8 = 256;
  result = sysctlbyname("hw.machine", v9, &v8, 0, 0);
  if (result)
  {
    if (result != -1)
    {
      return result;
    }

    result = __error();
    if (*result != 12)
    {
      return result;
    }
  }

  if (v8 >= 6)
  {
    if (LODWORD(v9[0]) != 1869107305 || WORD2(v9[0]) != 25966)
    {
      goto LABEL_15;
    }

LABEL_13:
    v4 = @"iphone";
LABEL_36:
    _LSGetProductName(void)::_cfBundlePlatform = v4;
    return result;
  }

  if (v8 < 4)
  {
    return result;
  }

LABEL_15:
  if (LODWORD(v9[0]) == 1685016681)
  {
    v4 = @"ipod";
    goto LABEL_36;
  }

  if (LODWORD(v9[0]) == 1684099177)
  {
    goto LABEL_34;
  }

  if (v8 < 5)
  {
    return result;
  }

  if (LODWORD(v9[0]) == 1668571479 && BYTE4(v9[0]) == 104)
  {
    v4 = @"watch";
    goto LABEL_36;
  }

  if (v8 < 7)
  {
    return result;
  }

  if (LODWORD(v9[0]) == 1819308097 && *(v9 + 3) == 1448371564)
  {
    v4 = @"appletv";
    goto LABEL_36;
  }

  if (v8 >= 0xD && *&v9[0] == 0x447974696C616552 && *(v9 + 5) == 0x6563697665447974)
  {
    v4 = @"reality";
    goto LABEL_36;
  }

  return result;
}

void sub_1817A39CC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

double _LSVersionNumberGetCurrentSystemVersion@<D0>(_OWORD *a1@<X8>)
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  result = *&_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion;
  v3 = *algn_1ED444F90;
  *a1 = _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion;
  a1[1] = v3;
  return result;
}

CFStringRef _LSVersionNumberCopyStringRepresentation(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return LaunchServices::VersionNumber::copyStringRepresentation(v3);
}

uint64_t _LSMakeVersionNumber@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  return result;
}

uint64_t _LSVersionNumberMakeWithDYLDVersion@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = WORD1(result);
  a2[1] = BYTE1(result);
  a2[2] = result;
  a2[3] = 0;
  return result;
}

uint64_t _LSVersionNumberGetDYLDVersion(uint64x2_t *a1)
{
  v1 = a1[1].u64[0];
  if (v1 >= 0xFF)
  {
    LODWORD(v1) = 255;
  }

  v2 = vshlq_u64(vbslq_s8(vcgtq_u64(xmmword_1817E9090, *a1), *a1, xmmword_1817E9090), xmmword_1817E90A0);
  return vorrq_s8(vdupq_laneq_s64(v2, 1), v2).u32[0] | v1;
}

double _LSGetCurrentCryptexVersion@<D0>(_OWORD *a1@<X8>)
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  result = *&_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexVersion;
  v3 = unk_1EA8313E8;
  *a1 = _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexVersion;
  a1[1] = v3;
  return result;
}

uint64_t _LSGetCurrentCryptexBuildVersionString()
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  return _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexBuildVersion;
}

void _LSGetVersionForArchitecture(const __CFDictionary *a1@<X0>, const void *a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = 0u;
  a3[1] = 0u;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {

      _LSGetVersionFromString(v5, a3);
    }
  }
}

uint64_t _LSIsDictionaryWithKeysAndValuesOfClass(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v8 = a3;
  v9 = a2;
  if (a2)
  {
    a2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v9 count:{1, v8}];
  }

  if (a3)
  {
    a3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v8 count:1];
  }

  v6 = _LSIsDictionaryWithKeysAndValuesOfClasses(v5, a2, a3);

  return v6;
}

CFStringRef _UTTypeCreateDynamicIdentifierForTaggedPointerObject(__CFString *a1, int a2)
{
  v2 = &kUTTypePackage;
  if (!a2)
  {
    v2 = &kUTTypeData;
  }

  return _UTTypeCreateDynamicIdentifierForTagCommon(@"public.filename-extension", a1, *v2, 1);
}

void _UTDynamicEnumerateTagsFoundInDatabase(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  TagSpecification = _UTDynamicGetTagSpecification(a2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UTDynamicEnumerateTagsFoundInDatabase_block_invoke;
  v6[3] = &unk_1E6A1E720;
  v6[4] = a1;
  v6[5] = a3;
  [TagSpecification enumerateKeysAndObjectsUsingBlock:v6];
}

uint64_t _UTDynamicGetParentIdentifiers(const __CFString *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___UTDynamicGetParentIdentifiers_block_invoke;
    v7[3] = &unk_1E6A1E748;
    v4 = v2;
    v8 = v4;
    _UTDynamicEnumerateParentIdentifiers(a1, v7);
    if ([v4 count])
    {
      v5 = [v4 copy];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFArrayRef UTTypeCreateAllIdentifiersForTag(CFStringRef inTagClass, CFStringRef inTag, CFStringRef inConformingToUTI)
{
  v3 = 0;
  v20 = *MEMORY[0x1E69E9840];
  if (inTagClass && inTag)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [UTTypeRecord typeRecordsWithTag:inTag ofClass:inTagClass conformingToIdentifier:inConformingToUTI];
    if (v8)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v10)
      {
        v11 = *v16;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v16 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = [*(*(&v15 + 1) + 8 * i) identifier];
            [v3 addObject:v13];
          }

          v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v3 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  return v3;
}

CFStringRef _UTTypeCreateSuggestedFilename(__CFString *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = v4;
  v6 = 0;
  if (a1 && a2)
  {
    v7 = [_LSGetUTTypeClass(v4) typeWithIdentifier:a2];
    if (v7)
    {
      v6 = [(__CFString *)a1 stringByAppendingPathExtensionForType:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  objc_autoreleasePoolPop(v5);
  if (!a1 || v6)
  {
    return v6;
  }

  v8 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v8, a1);
}

void _UTTypePrecachePropertiesOfIdentifiers(uint64_t a1, uint64_t a2)
{
  v2 = [__LSDefaultsGetSharedInstance(a1 a2)];
  if (v2)
  {
    v3 = _LSDefaultLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      _UTTypePrecachePropertiesOfIdentifiers_cold_1(v3);
    }
  }
}

uint64_t _UTTypeIsWildcard(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isWildcard];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t UTTypeCopyChildIdentifiers(const __CFString *a1)
{
  if (!a1 || !_UTTypeIdentifierIsDeclarable(a1))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 childTypeIdentifiers];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 allObjects];
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

  objc_autoreleasePoolPop(v2);
  return v7;
}

CFStringRef UTTypeCopyDescription(CFStringRef inUTI)
{
  if (!inUTI || !_UTTypeIdentifierIsDeclarable(inUTI))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedDescription];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t _UTTypeGetStatus(const __CFString *a1)
{
  if (!_UTTypeIdentifierIsValid(a1))
  {
    return -1;
  }

  if (_UTTypeIdentifierIsDynamic(a1))
  {
    return 2;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v5 = v4;
  if (v4)
  {
    v2 = [v4 isDeclared];
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

CFURLRef UTTypeCopyDeclaringBundleURL(CFStringRef inUTI)
{
  if (!inUTI || !_UTTypeIdentifierIsDeclarable(inUTI))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _resolvedPropertyValueForGetter:sel_declaringBundleRecord];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 URL];
    }

    else
    {
      v8 = [v4 _declaringBundleBookmark];
      if (v8 && (v9 = [[FSNode alloc] initByResolvingBookmarkData:v8 relativeToNode:0 bookmarkDataIsStale:0 error:0]) != 0)
      {
        v10 = [v4 _delegatePath];
        if (v10)
        {
          v11 = [v9 childNodeWithRelativePath:v10 flags:8 error:0];

          v9 = v11;
        }

        v7 = [v9 URL];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v7;
}

uint64_t _UTTypeCopyGlyphName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconDictionary];
    v6 = [v5 objectForKeyedSubscript:@"UTTypeGlyphName"];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t _UTTypeCopyIconName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconDictionary];
    v6 = [v5 objectForKeyedSubscript:@"UTTypeIconName"];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

CFArrayRef _UTTypeCopyDynamicIdentifiersForTags(__CFString *a1)
{
  values = a1;
  if (_UTTypeIdentifierIsDynamic(a1))
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [UTTypeRecord typeRecordWithIdentifier:a1];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = @"public.data";
    if (([v4 conformsToTypeIdentifier:@"public.data"] & 1) == 0)
    {
      v6 = @"com.apple.package";
      if (([v4 conformsToTypeIdentifier:@"com.apple.package"] & 1) == 0)
      {
        if ([v4 conformsToTypeIdentifier:@"public.folder"])
        {
          v6 = @"public.folder";
        }

        else
        {
          v6 = 0;
        }
      }
    }

    v7 = [v4 tagSpecification];
    v8 = [v7 _expensiveDictionaryRepresentation];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UTTypeCopyDynamicIdentifiersForTags_block_invoke;
    v11[3] = &unk_1E6A1E7C0;
    v13 = v6;
    v9 = v5;
    v12 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];
    if ([v9 count])
    {
      v2 = [v9 allObjects];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

uint64_t _UTTypeCopyPedigree(const __CFString *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _UTTypeCopyPedigreeSet(a1);
  if (v3)
  {
    v4 = v3;
    if ([v3 count] == 1 && _UTTypeIdentifierIsDynamic(a1))
    {

LABEL_7:
      v4 = [MEMORY[0x1E695DFD8] set];
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    if (_UTTypeIdentifierIsValid(a1))
    {
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E695DFD8] setWithObject:a1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v5 = [v4 allObjects];

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t _UTTypeCopyPedigreeSet(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pedigree];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

void **_UTCopyDeclaredTypeIdentifiers()
{
  v0 = objc_autoreleasePoolPush();
  if (_LSCurrentProcessMayMapDatabase())
  {
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v1 = +[_LSDServiceDomain defaultServiceDomain];
    v2 = LaunchServices::Database::Context::_get(&v12, v1, 0);

    if (v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4 = *v2;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___UTCopyDeclaredTypeIdentifiers_block_invoke;
      v9[3] = &unk_1E6A1E7E8;
      v11 = v2;
      v5 = v3;
      v10 = v5;
      _UTEnumerateActiveTypes(v4, v9);
      v2 = v5;
    }

    if (v12 && v14 == 1)
    {
      _LSContextDestroy(v12);
    }

    v6 = v13;
    v12 = 0;
    v13 = 0;

    v14 = 0;
    v7 = v15;
    v15 = 0;
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

void *_UTTypeCopyDescriptionLocalizationDictionary(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _localizedDescription];
    v6 = [v5 allStringValues];

    if (v6)
    {
      v7 = v6;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t _UTTypeCopyKindStringForNonMaterializedItem(LaunchServices::BindingEvaluator *a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  LaunchServices::BindingEvaluator::CreateWithUTI(v12, a1, 0);
  v11 = 0;
  v7 = LaunchServices::BindingEvaluator::getLocalizedKindString(v12, 0, a2, &v11);
  v8 = v11;
  v9 = v8;
  if (a3 && !v7)
  {
    *a3 = v8;
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(v12);
  objc_autoreleasePoolPop(v6);

  return v7;
}

uint64_t _UTTypeCopyKindStringDictionaryForNonMaterializedItem(LaunchServices::BindingEvaluator *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  LaunchServices::BindingEvaluator::CreateWithUTI(v10, a1, 0);
  v9 = 0;
  v5 = LaunchServices::BindingEvaluator::getLocalizedKindStringDictionary(v10, 0, &v9);
  v6 = v9;
  v7 = v6;
  if (a2 && !v5)
  {
    *a2 = v6;
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(v10);
  objc_autoreleasePoolPop(v4);

  return v5;
}

CFTypeRef _LSCreateDeviceTypeIdentifierWithModelCodeAndColorComponents(LaunchServices::URLPropertyProvider *a1, unsigned __int8 *a2)
{
  v4 = _LSGetUTTypeClass(a1);
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      if (a2)
      {
        v6 = softLink_UTHardwareColorMakeWithRGBComponents ? softLink_UTHardwareColorMakeWithRGBComponents(*a2, a2[1], a2[2]) : 0;
        v7 = [v5 _typeWithDeviceModelCode:a1 enclosureColor:v6];
      }

      else
      {
        v7 = [v4 _typeWithDeviceModelCode:a1];
      }
    }

    else
    {
      v7 = [v4 _typeOfCurrentDevice];
    }

    v8 = v7;
    if (v7)
    {
      v9 = [v7 identifier];

      if (v9)
      {
        return v9;
      }
    }
  }

  return CFRetain(@"public.device");
}

uint64_t (*init_UTHardwareColorMakeWithRGBComponents(uint64_t a1, uint64_t a2, uint64_t a3))(unsigned __int8, unsigned __int8, unsigned __int8)
{
  v6 = UniformTypeIdentifiersLibrary(void)::frameworkLibrary;
  if (!UniformTypeIdentifiersLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/Frameworks/UniformTypeIdentifiers.framework/UniformTypeIdentifiers", 2);
    UniformTypeIdentifiersLibrary(void)::frameworkLibrary = v6;
  }

  result = dlsym(v6, "_UTHardwareColorMakeWithRGBComponents");
  softLink_UTHardwareColorMakeWithRGBComponents = result;
  if (result)
  {

    return result(a1, a2, a3);
  }

  return result;
}

id LSGetCSUIAUpcallManager(void *a1)
{
  if (LSGetCSUIAUpcallManager_onceToken != -1)
  {
    LSGetCSUIAUpcallManager_cold_1();
  }

  v2 = LSGetCSUIAUpcallManager_manager;
  if (a1 && !LSGetCSUIAUpcallManager_manager)
  {
    *a1 = LSGetCSUIAUpcallManager_error;
    v2 = LSGetCSUIAUpcallManager_manager;
  }

  return v2;
}

void __LSGetCSUIAUpcallManager_block_invoke()
{
  v16[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/CSUIAUpcallBundle.bundle"];
  v1 = [v0 principalClass];
  if (!v1)
  {
    v10 = *MEMORY[0x1E696A798];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"couldn't load upcall bundle principal class";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v6 = v10;
    v7 = 5;
    v8 = v5;
    v9 = 20;
    goto LABEL_5;
  }

  v2 = objc_alloc_init(v1);
  v3 = LSGetCSUIAUpcallManager_manager;
  LSGetCSUIAUpcallManager_manager = v2;

  if (!LSGetCSUIAUpcallManager_manager)
  {
    v4 = *MEMORY[0x1E696A798];
    v13 = *MEMORY[0x1E696A278];
    v14 = @"couldn't instantiate upcall bundle principal class";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v6 = v4;
    v7 = 45;
    v8 = v5;
    v9 = 25;
LABEL_5:
    v11 = _LSMakeNSErrorImpl(v6, v7, v8, "LSGetCSUIAUpcallManager_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/CSUIUpcall/CoreServicesUIUpcallEmbedded.m", v9);
    v12 = LSGetCSUIAUpcallManager_error;
    LSGetCSUIAUpcallManager_error = v11;
  }
}

uint64_t _UTTypeAdd(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5 && [(_LSDatabase *)v5 store])
  {
    v7 = [(_LSDatabase *)v6 store];
    v8 = [(_LSDatabase *)v6 schema];
    CSBindableKeyMapNextKey(v7, v8 + 24);
    [(_LSDatabase *)v6 store];
    [(_LSDatabase *)v6 schema];
    v9 = CSStoreAllocUnitWithData();
    if (v9)
    {
      [(_LSDatabase *)v6 store];
      [(_LSDatabase *)v6 schema];
      CSMapSetValue();
      [(_LSDatabase *)v6 setTypeDeclarationsChanged:?];
      if (a3)
      {
        *a3 = v9;
      }

      if ((*(a2 + 8) & 0x20) != 0)
      {
        [(_LSDatabase *)v6 store];
        _CSStoreGarbageCollect();
      }

      v10 = 0;
    }

    else
    {
      v10 = 4294957803;
    }
  }

  else
  {
    v10 = 4294967246;
  }

  return v10;
}

uint64_t _UTTypeAddWithDeclarationDictionary(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v120 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  cf = v9;
  v152 = *MEMORY[0x1E69E9840];
  v10 = v1;
  v121 = v8;
  v139 = 0;
  v149 = kLSVersionNumberNull;
  v150 = unk_1817E90C0;
  v122 = v10;
  if ((v6 & 0x2000) != 0)
  {
    v11 = _LSGetPlugin(v10, v4);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    v119 = 0;
    goto LABEL_6;
  }

  v11 = _LSBundleGet(v10, v4);
  if (!v11)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = *(v11 + 76);
  v149 = *(v11 + 60);
  v150 = v12;
  v119 = *(v11 + 12);
LABEL_6:
  _LSBindingListBufferInit(v10, v138);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  *v132 = 0u;
  v133 = 0u;
  if (!cf || (v13 = CFGetTypeID(cf), v13 != CFDictionaryGetTypeID()))
  {
    active = 0;
    goto LABEL_135;
  }

  v132[2] = v6;
  TypeID = CFStringGetTypeID();
  Value = CFDictionaryGetValue(cf, @"UTTypeIdentifier");
  v16 = Value;
  if (!Value || CFGetTypeID(Value) != TypeID || !_UTTypeIdentifierIsDeclarable(v16))
  {
    goto LABEL_134;
  }

  v132[3] = _LSDatabaseCreateStringForCFString(v10, v16, 1);
  if ((v132[2] & 0x20) != 0)
  {
    v17 = v10;
    [(_LSDatabase *)v10 store];
    _CSStringMakeConst();
  }

  v18 = &dword_1E6A1EDC8;
  v19 = 48;
  do
  {
    v20 = *(v18 - 1);
    Length = CFStringGetLength(v20);
    if (CFStringGetLength(v16) > Length)
    {
      v153.location = 0;
      v153.length = Length;
      if (CFStringCompareWithOptions(v16, v20, v153, 1uLL) == kCFCompareEqualTo)
      {
        v132[2] |= *v18;
      }
    }

    v18 += 4;
    v19 -= 16;
  }

  while (v19);
  v22 = CFNumberGetTypeID();
  v23 = CFDictionaryGetValue(cf, @"UTTypeVersion");
  v24 = v23;
  if (v23 && CFGetTypeID(v23) == v22)
  {
    LODWORD(v140) = 0;
    CFNumberGetValue(v24, kCFNumberSInt32Type, &v140);
    LODWORD(v133) = v140;
    v132[2] |= 0x100u;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }
  }

  else
  {
    LODWORD(v133) = 0;
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_27;
    }
  }

  v25 = CFBooleanGetTypeID();
  v26 = CFDictionaryGetValue(cf, @"UTTypeIsWildcard");
  v27 = v26;
  if (v26 && CFGetTypeID(v26) == v25 && CFBooleanGetValue(v27))
  {
    v132[2] |= 0x200u;
  }

LABEL_27:
  v28 = CFDictionaryGetValue(cf, @"UTTypeOneTapOpenable");
  v29 = v28;
  if (v28)
  {
    v30 = CFGetTypeID(v28);
    v31 = v30 == CFBooleanGetTypeID() && CFBooleanGetValue(v29) != 0;
    v32 = CFGetTypeID(v29);
    if (v32 == CFArrayGetTypeID())
    {
      v33 = MEMORY[0x1E696AD98];
      dyld_get_active_platform();
      v34 = [v33 numberWithUnsignedInt:dyld_get_base_platform()];
      v35 = [(__CFBoolean *)v29 containsObject:v34];

      if (((v35 | v31) & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v31)
    {
LABEL_35:
      v132[2] |= 0x8000u;
    }
  }

LABEL_36:
  v36 = CFArrayGetTypeID();
  v37 = CFDictionaryGetValue(cf, @"UTTypeIconFiles");
  v38 = v37;
  if (v37 && CFGetTypeID(v37) == v36)
  {
    Count = CFArrayGetCount(v38);
    if (Count >= 1)
    {
      v40 = 0;
      v41 = 1;
      do
      {
        v42 = CFStringGetTypeID();
        ValueAtIndex = CFArrayGetValueAtIndex(v38, v41 - 1);
        v44 = ValueAtIndex;
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v42)
        {
          *(&v133 + v40++ + 3) = _LSDatabaseCreateStringForCFString(v122, v44, 0);
        }

        if (v41 >= Count)
        {
          break;
        }

        ++v41;
      }

      while (v40 < 8);
    }
  }

  else
  {
    v45 = CFStringGetTypeID();
    v46 = CFDictionaryGetValue(cf, @"UTTypeIconFile");
    v47 = v46;
    if (v46 && CFGetTypeID(v46) == v45)
    {
      HIDWORD(v133) = _LSDatabaseCreateStringForCFString(v122, v47, 0);
    }
  }

  v48 = CFStringGetTypeID();
  v49 = CFDictionaryGetValue(cf, @"UTTypeIconName");
  v50 = v49;
  if (v49 && CFGetTypeID(v49) == v48)
  {
    HIDWORD(v135) = _LSDatabaseCreateStringForCFString(v122, v50, 0);
  }

  v51 = CFStringGetTypeID();
  v52 = CFDictionaryGetValue(cf, @"UTTypeGlyphName");
  v53 = v52;
  if (v52 && CFGetTypeID(v52) == v51)
  {
    LODWORD(v136) = _LSDatabaseCreateStringForCFString(v122, v53, 0);
  }

  v54 = CFDictionaryGetTypeID();
  v55 = CFDictionaryGetValue(cf, @"UTTypeIcons");
  v56 = v55;
  if (v55)
  {
    if (CFGetTypeID(v55) == v54)
    {
      v57 = v56;
    }

    else
    {
      v57 = 0;
    }
  }

  else
  {
    v57 = 0;
  }

  DWORD1(v136) = _LSPlistAdd(v122, v57);
  v58 = v122;
  v59 = v121;
  v60 = v58;
  v61 = v59;
  v62 = CFStringGetTypeID();
  v63 = CFDictionaryGetValue(cf, @"UTTypeDescription");
  v64 = v63;
  if (v63 && CFGetTypeID(v63) == v62)
  {
    v65 = v64;
    v66 = [v61 objectForKeyedSubscript:v65];
    v67 = LaunchServices::LocalizedString::Add(v60, v66, v65);
  }

  else
  {
    v67 = 0;
  }

  *(&v133 + 4) = __PAIR64__(v67, v4);
  v68 = CFDictionaryGetValue(cf, @"_LSBundleLibraryDelegate");
  v69 = CFDictionaryGetValue(cf, @"UTKEXTIdentifier");
  if (v69)
  {
    v132[2] |= 0x80u;
  }

  DWORD2(v136) = _LSDatabaseCreateStringForCFString(v60, v68, 0);
  HIDWORD(v136) = _LSDatabaseCreateStringForCFString(v60, v69, 0);
  if (DWORD2(v136))
  {
    v70 = CFStringGetTypeID();
    v71 = CFDictionaryGetValue(cf, *MEMORY[0x1E695E4F0]);
    v72 = v71;
    if (v71 && CFGetTypeID(v71) == v70)
    {
      v73 = v132[2];
      v74 = CFStringGetLength(v72);
      if (v74 > CFStringGetLength(@"com.apple."))
      {
        v154.length = CFStringGetLength(@"com.apple.");
        v154.location = 0;
        if (CFStringCompareWithOptions(v72, @"com.apple.", v154, 1uLL) == kCFCompareEqualTo)
        {
          v75 = v132[2] | 4;
LABEL_74:
          v132[2] = v75;
          goto LABEL_75;
        }
      }
    }

    else
    {
      v73 = v132[2];
    }

    v75 = v73 & 0xFFFFFFFB;
    goto LABEL_74;
  }

LABEL_75:
  *&v137 = 0;
  v76 = CFDictionaryGetTypeID();
  v77 = CFDictionaryGetValue(cf, @"UTTypeTagSpecification");
  v78 = v77;
  if (!v77 || CFGetTypeID(v77) != v76)
  {
    LOBYTE(v79) = 0;
LABEL_98:
    _LSBindingListBufferReset(v60, v138);
    v96 = CFDictionaryGetValue(cf, @"UTTypeConformsTo");
    if (!v96)
    {
      goto LABEL_114;
    }

    v97 = v60;
    v98 = *([(_LSDatabase *)v60 schema]+ 216);
    v99 = CFGetTypeID(v96);
    if (v99 == CFStringGetTypeID())
    {
      if ((_LSBindingListBufferAppendNSString(v60, v138, v98, v96, 1) & 1) == 0)
      {
        goto LABEL_134;
      }

      v100 = 1;
      if ((v79 & 1) == 0)
      {
        goto LABEL_122;
      }

      goto LABEL_115;
    }

    v101 = CFGetTypeID(v96);
    if (v101 == CFArrayGetTypeID())
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v102 = v96;
      v103 = [v102 countByEnumeratingWithState:&v124 objects:v147 count:16];
      v100 = v103 != 0;
      if (v103)
      {
        v104 = *v125;
        while (2)
        {
          for (i = 0; i != v103; ++i)
          {
            if (*v125 != v104)
            {
              objc_enumerationMutation(v102);
            }

            if ((_LSBindingListBufferAppendNSString(v60, v138, v98, *(*(&v124 + 1) + 8 * i), 1) & 1) == 0)
            {

              goto LABEL_134;
            }
          }

          v103 = [v102 countByEnumeratingWithState:&v124 objects:v147 count:16];
          if (v103)
          {
            continue;
          }

          break;
        }
      }

      if ((v79 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

    else
    {
LABEL_114:
      v100 = 0;
      if ((v79 & 1) == 0)
      {
        goto LABEL_122;
      }
    }

LABEL_115:
    if ((v132[2] & 4) != 0 || (_LSMakeVersionNumber(13, 1, 0, v146), v140 = v149, v141 = v150, v151[0] = v146[0], v151[1] = v146[1], _LSVersionNumberCompare(&v140, v151) != -1) || v100)
    {
LABEL_122:
      active = _LSBindingListCreate(v60, v138, &v137 + 1);
      if (!active)
      {
        v111 = CFStringGetTypeID();
        v112 = CFDictionaryGetValue(cf, @"UTTypeReferenceURL");
        v113 = v112;
        if (v112 && CFGetTypeID(v112) == v111)
        {
          DWORD2(v137) = _LSDatabaseCreateStringForCFString(v60, v113, 0);
        }

        v114 = CFStringGetTypeID();
        v115 = CFDictionaryGetValue(cf, @"_LSReferenceAccessoryResourcePath");
        v116 = v115;
        if (v115 && CFGetTypeID(v115) == v114)
        {
          HIDWORD(v137) = _LSDatabaseCreateStringForCFString(v60, v116, 0);
        }

        v142 = v134;
        v143 = v135;
        v144 = v136;
        v145 = v137;
        v140 = *v132;
        v141 = v133;
        active = _UTTypeAdd(v60, &v140, &v139);
        if (!active)
        {
          active = _LSBindableActivate(v60, v139, 0, v132[3], _LSBindableComparePriority, 1);
          if (!active)
          {
            active = _UTUpdateActiveTypeForIdentifier(v60, v132[3]);
          }
        }
      }

      goto LABEL_135;
    }

    v106 = _LSDefaultLog(-1);
    if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
    {
      v107 = _LSDatabaseGetNSStringFromString(v60, v119);
      v108 = _LSDatabaseGetNSStringFromString(v60, v132[3]);
      _UTTypeAddWithDeclarationDictionary_cold_1(v107, v108, v151, v106);
    }

    v109 = v60;
    v110 = [(_LSDatabase *)v60 schema];
    if (_LSBindingListBufferAppendNSString(v60, v138, *(v110 + 216), @"public.data", 1))
    {
      v132[2] |= 0x400u;
      goto LABEL_122;
    }

LABEL_134:
    active = 4294956479;
    goto LABEL_135;
  }

  v79 = 0;
  v80 = 1;
  v118 = v78;
  do
  {
    v81 = v60;
    v82 = *([(_LSDatabase *)v60 schema]+ 104 * v80 + 216);
    v83 = v60;
    v84 = *([(_LSDatabase *)v60 schema]+ 104 * v80 + 220);
    v85 = v60;
    [(_LSDatabase *)v60 store];
    v86 = _CSStringCopyCFString();
    if (v86)
    {
      v87 = CFDictionaryGetValue(v78, v86);
      v88 = v87;
      if (v87)
      {
        v89 = CFGetTypeID(v87);
        if (v89 == CFStringGetTypeID())
        {
          if ((_LSBindingListBufferAppendNSString(v60, v138, v82, v88, v84 != 0) & 1) == 0)
          {
LABEL_133:
            CFRelease(v86);
            goto LABEL_134;
          }

          v79 |= v80 == 1;
        }

        else
        {
          v90 = CFGetTypeID(v88);
          if (v90 == CFArrayGetTypeID())
          {
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v91 = v88;
            v92 = [v91 countByEnumeratingWithState:&v128 objects:v148 count:16];
            if (v92)
            {
              v93 = *v129;
              while (2)
              {
                for (j = 0; j != v92; ++j)
                {
                  if (*v129 != v93)
                  {
                    objc_enumerationMutation(v91);
                  }

                  if ((_LSBindingListBufferAppendNSString(v60, v138, v82, *(*(&v128 + 1) + 8 * j), v84 != 0) & 1) == 0)
                  {

                    goto LABEL_133;
                  }

                  v79 |= v80 == 1;
                }

                v92 = [v91 countByEnumeratingWithState:&v128 objects:v148 count:16];
                if (v92)
                {
                  continue;
                }

                break;
              }
            }

            v78 = v118;
          }
        }
      }

      CFRelease(v86);
    }

    ++v80;
  }

  while (v80 != 5);
  active = _LSBindingListCreate(v60, v138, &v137);
  if (!active)
  {
    goto LABEL_98;
  }

LABEL_135:
  if (v120)
  {
    *v120 = v139;
  }

  _LSBindingListBufferReset(v122, v138);

  return active;
}

uint64_t _UTUpdateActiveTypeForIdentifier(void *a1, uint64_t a2)
{
  v3 = a1;
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = ___UTUpdateActiveTypeForIdentifier_block_invoke;
  v20[3] = &unk_1E6A1EE98;
  v20[4] = &v25;
  v20[5] = &v21;
  v20[6] = &v33;
  v20[7] = &v29;
  v20[8] = &v37;
  _UTEnumerateTypesForIdentifier(v3, a2, v20);
  v4 = *(v34 + 6);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (*(v26 + 6))
  {
    v5 = v30;
    v6 = *(v30 + 6);
    if ((v6 & 0x820) == 0)
    {
      v7 = v6 | 0x800;
      *(v30 + 6) = v7;
      *(v5 + 6) = v22[3] & 0x8000 | v7;
      [(_LSDatabase *)v3 store];
      [(_LSDatabase *)v3 schema];
      _CSStoreWriteToUnit();
      v4 = *(v34 + 6);
    }
  }

  if (v4 == *(v38 + 6))
  {
LABEL_22:
    v11 = 0;
    goto LABEL_23;
  }

  v8 = v3;
  v9 = _UTTypeGet(v8, v4);
  if (!v9)
  {
    goto LABEL_34;
  }

  v10 = v9[2];
  if (v10)
  {

LABEL_18:
    v13 = *(v38 + 6);
    if (v13)
    {
      v14 = v8;
      v15 = _UTTypeGet(v14, v13);
      if (v15)
      {
        v16 = v15[2];
        if ((v16 & 1) == 0)
        {
          v11 = 0;
          goto LABEL_33;
        }

        v42 = v16 & 0xFFFFFFFE;
        if (!v15[20])
        {
          goto LABEL_37;
        }

        v11 = _LSBindingListDeactivate(v14);
        if (v11)
        {
          goto LABEL_33;
        }

        v15 = _UTTypeGet(v14, v13);
        if (v15)
        {
LABEL_37:
          if (!v15[21] || (v11 = _LSBindingListDeactivate(v14), !v11))
          {
            v19 = objc_autoreleasePoolPush();
            v41 = 0;
            [(_LSDatabase *)v14 store];
            [(_LSDatabase *)v14 schema];
            if (_CSStoreWriteToUnit())
            {
              v11 = 0;
            }

            else
            {
              v11 = _LSGetOSStatusFromNSError(v41);
            }

            objc_autoreleasePoolPop(v19);
          }

          goto LABEL_33;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_22;
  }

  v42 = v10 | 1;
  if (v9[20])
  {
    v11 = _LSBindingListActivate(v8);
    if (v11)
    {
LABEL_33:

      goto LABEL_23;
    }

    v9 = _UTTypeGet(v8, v4);
    if (!v9)
    {
LABEL_34:
      v11 = 4294956481;
      goto LABEL_33;
    }
  }

  if (v9[21])
  {
    v11 = _LSBindingListActivate(v8);
    if (v11)
    {
      goto LABEL_33;
    }
  }

  v12 = objc_autoreleasePoolPush();
  v41 = 0;
  [(_LSDatabase *)v8 store];
  [(_LSDatabase *)v8 schema];
  if (_CSStoreWriteToUnit())
  {
    v11 = 0;
  }

  else
  {
    v11 = _LSGetOSStatusFromNSError(v41);
  }

  objc_autoreleasePoolPop(v12);
  if (!v11)
  {
    goto LABEL_18;
  }

LABEL_23:
  v17 = [(_LSDatabase *)v3 schema];
  _LSSchemaCacheWrite(v17, &__block_literal_global_77);
  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);

  return v11;
}

void sub_1817A7718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 144), 8);
  _Block_object_dispose((v28 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t _UTTypeRemove(void *a1, uint64_t a2)
{
  v3 = a1;
  [(_LSDatabase *)v3 store];
  v4 = _UTTypeGet(v3, a2);
  if (v4)
  {
    v5 = v4[3];
    v15 = v4[2];
    v16 = v5;
    v6 = v4[5];
    v17 = v4[4];
    v18 = v6;
    v13 = *v4;
    *v14 = v4[1];
    [(_LSDatabase *)v3 store];
    [(_LSDatabase *)v3 schema];
    CSMapRemoveValue();
    if (HIDWORD(v13))
    {
      active = _LSBindableDeactivate(v3, a2, 0, HIDWORD(v13), 1);
      if (BYTE8(v13))
      {
        active = _UTUpdateActiveTypeForIdentifier(v3, HIDWORD(v13));
      }

      v8 = active;
    }

    else
    {
      v8 = 0;
    }

    if (v18)
    {
      v8 = _LSBindingListDeactivate(v3);
      _LSBindingListDestroy(v3);
    }

    if (DWORD1(v18))
    {
      v8 = _LSBindingListDeactivate(v3);
      _LSBindingListDestroy(v3);
    }

    [(_LSDatabase *)v3 store];
    _CSStringRelease();
    v9 = v3;
    v10 = v9;
    if (BYTE10(v13))
    {
      [(_LSDatabase *)v9 store];
      v19 = MEMORY[0x1E69E9820];
      v20 = 3221225472;
      v21 = ___ZN14LaunchServicesL47UTTypeReleaseLocalizedDescriptionOrDescriptionsEP11_LSDatabasePK11_UTTypeData_block_invoke;
      v22 = &unk_1E6A18FC8;
      v23 = v10;
      _CSArrayEnumerateAllValues();
      [(_LSDatabase *)v23 store];
      _CSArrayDispose();
    }

    else
    {
      LaunchServices::LocalizedString::Remove(v9, LODWORD(v14[1]));
    }

    for (i = 0; i != 32 && *(&v14[1] + i + 4); i += 4)
    {
      [(_LSDatabase *)v10 store];
      _CSStringRelease();
    }

    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    if (DWORD1(v17))
    {
      _LSPlistRemove(v10, DWORD1(v17));
    }

    [(_LSDatabase *)v10 schema];
    CSStoreFreeUnit();
    [(_LSDatabase *)v10 setTypeDeclarationsChanged:?];
  }

  else
  {
    v8 = 4294957797;
  }

  return v8;
}

uint64_t _UTTypeComparePriority(void *a1, _DWORD *a2, void *a3, _DWORD *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  if (a2 == a4)
  {
LABEL_36:
    v11 = 0;
    goto LABEL_37;
  }

  v9 = a2[2];
  v10 = a4[2];
  if ((v9 & 0x1000) != 0 && (v10 & 0x1000) == 0)
  {
    goto LABEL_4;
  }

  if ((v9 & 0x1000) == 0 && (v10 & 0x1000) != 0)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_37;
  }

  if (((v10 ^ v9) & 0x40) != 0)
  {
    v16 = (a2[2] & 0x40) == 0;
    goto LABEL_17;
  }

  v12 = a2[2] & 0x820;
  v13 = v10 & 0x820;
  if (a2[3] != a4[3])
  {
    goto LABEL_23;
  }

  v14 = a2[2] & 0x10;
  v15 = v10 & 0x10;
  if (v14 != v15)
  {
    if (!v12 || v14)
    {
      if (!v13 || v15)
      {
        goto LABEL_11;
      }

      if (v14)
      {
        if (_UTTypeTagsAreSuperset(v7, a2, a4))
        {
          goto LABEL_7;
        }

        if (!v12)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }
    }

    if ((_UTTypeTagsAreSuperset(v7, a4, a2) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_4:
    v11 = -1;
    goto LABEL_37;
  }

LABEL_11:
  if (v14 && !v15)
  {
    goto LABEL_7;
  }

  if (v15 && !v14)
  {
    goto LABEL_4;
  }

LABEL_23:
  if ((v12 != 0) != (v13 != 0))
  {
LABEL_24:
    if (v12)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    goto LABEL_37;
  }

LABEL_32:
  v17 = a4[2] ^ a2[2];
  if ((v17 & 2) != 0)
  {
    v16 = (a2[2] & 2) == 0;
    goto LABEL_17;
  }

  if ((v17 & 4) != 0)
  {
    v16 = (a2[2] & 4) == 0;
LABEL_17:
    if (v16)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_37;
  }

  if (a2[5] == a4[5] && (v17 & 0x2000) == 0)
  {
    goto LABEL_36;
  }

  LaunchServices::BindingEvaluator::BindingEvaluator(v26);
  v19 = v7;
  v25.db = v19;
  v24 = 0;
  UltimateDeclaringBundle = _UTTypeGetUltimateDeclaringBundle(v19, a2, &v24);
  v23 = 0;
  v21 = _UTTypeGetUltimateDeclaringBundle(v8, a4, &v23);
  if (UltimateDeclaringBundle && v21)
  {
    v11 = LaunchServices::BindingEvaluator::compareBundles(v26, &v25, v24, UltimateDeclaringBundle, v23, v21);

    LaunchServices::BindingEvaluator::~BindingEvaluator(v26);
    goto LABEL_37;
  }

  v22 = (UltimateDeclaringBundle | v21) != 0;
  v11 = UltimateDeclaringBundle ? 1 : -1;

  LaunchServices::BindingEvaluator::~BindingEvaluator(v26);
  if (!v22)
  {
    goto LABEL_36;
  }

LABEL_37:

  return v11;
}

void sub_1817A7D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

uint64_t _UTTypeTagsAreSuperset(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x5812000000;
  v17[3] = __Block_byref_object_copy__54;
  v17[4] = __Block_byref_object_dispose__54;
  v17[5] = &unk_1818533FF;
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v7 = *(a2 + 80);
  if (v7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___UTTypeTagsAreSuperset_block_invoke;
    v16[3] = &unk_1E6A1C740;
    v16[4] = v17;
    _LSBindingListEnumerate(v5, v7, v16);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = 1;
  v15 = 1;
  v9 = *(a3 + 80);
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UTTypeTagsAreSuperset_block_invoke_2;
    v11[3] = &unk_1E6A1EFB0;
    v11[4] = v17;
    v11[5] = &v12;
    _LSBindingListEnumerate(v6, v9, v11);
    v8 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v17, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::~__hash_table(v18);

  return v8 & 1;
}

void sub_1817A7EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::~__hash_table(v14 + 48);

  _Unwind_Resume(a1);
}

uint64_t _UTTypeGetUltimateDeclaringBundle(void *a1, uint64_t a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = (a2 + 20);
  if ((*(a2 + 9) & 0x20) != 0)
  {
    v7 = (_LSGetPlugin(v5, *v7) + 224);
  }

  v8 = *v7;
  if (!*v7)
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = _LSBundleGet(v6, *v7);
  if (a3)
  {
LABEL_5:
    *a3 = v8;
  }

LABEL_6:

  return v9;
}

uint64_t _UTGetActiveTypeWithIconForNSStringIdentifier(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  active = _UTGetActiveTypeForCFStringIdentifier(v5, v6, &v22);
  v7 = v16[3];
  if (v7 && !*(v7 + 28))
  {
    v8 = _UTTypeSearchConformsToTypesCommon(v5, *(v20 + 6), 32, typeHasIconFile, 0, v20 + 6);
    v16[3] = v8;
  }

  else if (UTTypeIsDynamic(v6))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UTGetActiveTypeWithIconForNSStringIdentifier_block_invoke;
    v11[3] = &unk_1E6A1EE70;
    v13 = &v15;
    v12 = v5;
    v14 = &v19;
    _UTDynamicEnumerateParentIdentifiers(v6, v11);
  }

  v9 = v16[3];
  if (v9 && !*(v9 + 28))
  {
    v9 = 0;
    v16[3] = 0;
  }

  else if (a3)
  {
    *a3 = *(v20 + 6);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void sub_1817A816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v18 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t _UTTypeGetTypeUnixExecutable(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.unix-executable", (*(v2 + 1616) + 92));

  return CachedType;
}

uint64_t _UTTypeGetTypeLocalizableNameBundle(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.localizable-name-bundle", (*(v2 + 1616) + 100));

  return CachedType;
}

uint64_t _UTTypeGetTypePackage(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.package", (*(v2 + 1616) + 112));

  return CachedType;
}

uint64_t _UTTypeGetTypeResolvable(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.resolvable", (*(v2 + 1616) + 120));

  return CachedType;
}

uint64_t _UTTypeGetTypeAVCHDCollection(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.avchd-collection", (*(v2 + 1616) + 128));

  return CachedType;
}

uint64_t _UTTypeGetTypeVolume(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.volume", (*(v2 + 1616) + 136));

  return CachedType;
}

uint64_t _UTTypeGetTypeSymbolicLink(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.symlink", (*(v2 + 1616) + 140));

  return CachedType;
}

uint64_t _UTTypeGetTypeAliasFile(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.alias-file", (*(v2 + 1616) + 144));

  return CachedType;
}

uint64_t _UTTypeSetGeneration(void *a1, uint64_t a2, int a3)
{
  result = _UTTypeGet(a1, a2);
  if (result)
  {
    *(result + 4) = a3;
  }

  return result;
}

void _UTEnumerateActiveTypes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [(_LSDatabase *)v3 store];
  [(_LSDatabase *)v3 schema];
  v5 = v4;
  _CSStoreEnumerateUnits();
}

void _UTTypeGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2, uint64_t a3)@<X8>)
{
  *a1 = LaunchServices::UTIs::getSummary;
  a1[1] = LaunchServices::UTIs::display;
  a1[2] = LaunchServices::UTIs::copyBindingForVisualization;
}

unsigned int *LaunchServices::UTIs::getSummary(void **this, LSContext *a2, uint64_t a3)
{
  v4 = _UTTypeGet(*this, a3);
  if (v4)
  {
    [(_LSDatabase *)*this store];
    v4 = _CSStringCopyCFString();
  }

  return v4;
}

BOOL LaunchServices::UTIs::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = _UTTypeGet(*this, a3);
  if (v8)
  {
    v9 = *this;
    if ((*(v8 + 9) & 0x20) != 0)
    {
      v10 = [v7 link:*(-[_LSDatabase schema](v9) + 1588) unit:*(v8 + 20)];
      [v7 write:@"plugin" string:v10];
    }

    else
    {
      v10 = [v7 link:*(-[_LSDatabase schema](v9) + 4) unit:*(v8 + 20)];
      [v7 write:@"bundle" string:v10];
    }

    [v7 write:@"uti" stringID:*(v8 + 12)];
    v11 = [MEMORY[0x1E696AD98] numberWithInt:*(v8 + 16)];
    [v7 write:@"version" number:v11];

    v12 = *this;
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = ___ZN14LaunchServices4UTIsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
    v27 = &unk_1E6A1EFD8;
    v13 = v7;
    v28 = v13;
    v29 = this;
    v30 = MEMORY[0x1865D71B0](&v24);
    v14 = v12;
    v15 = v14;
    if (*(v8 + 10))
    {
      [(_LSDatabase *)v14 store];
      if (_CSArrayGetCount() != 1)
      {
        v22 = [MEMORY[0x1E696AAA8] currentHandler];
        v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::UTTypeEnumerateFlavoredDisplayNames(__strong LSDatabaseRef, const _UTTypeData *, const F &) [F = void (^)(unsigned int, const LaunchServices::UTTypeDisplayNameFlavor &, unsigned char *)]"}];
        [(_LSDatabase *)v15 store];
        [v22 handleFailureInFunction:v23 file:@"UTTypeCore.mm" lineNumber:143 description:{@"bogus array in %s, %zu elements", "UTTypeEnumerateFlavoredDisplayNames", _CSArrayGetCount(), v24, v25, v26, v27}];
      }

      [(_LSDatabase *)v15 store];
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = ___ZN14LaunchServicesL35UTTypeEnumerateFlavoredDisplayNamesIU8__strongU13block_pointerFvjRKNS_23UTTypeDisplayNameFlavorEPhEEEvP11_LSDatabasePK11_UTTypeDataRKT__block_invoke;
      v31[3] = &__block_descriptor_40_e14_v24__0I8I12_16l;
      v31[4] = &v30;
      _CSArrayEnumerateAllValues();
    }

    else
    {
      LOBYTE(v31[0]) = 0;
      (v30)[2](v30, *(v8 + 24), &LaunchServices::_UTTypeAllDisplayNameFlavors, v31);
    }

    v16 = v13;
    [v16 beginFlags:@"flags" flags:*(v8 + 8)];
    [v16 flag:16 name:@"exported"];
    [v16 missingFlag:16 name:@"imported"];
    [v16 flag:1 name:@"active" color:32512];
    [v16 missingFlag:1 name:@"inactive" color:8355711];
    [v16 flag:2 name:@"public"];
    [v16 flag:32 name:@"core"];
    [v16 flag:4 name:@"apple-internal" color:255];
    [v16 flag:64 name:@"trusted" color:32512];
    [v16 missingFlag:64 name:@"untrusted" color:16711680];
    [v16 flag:8 name:@"rel-icon-path"];
    [v16 flag:128 name:@"KEXT-icon"];
    [v16 flag:256 name:@"has-version"];
    [v16 flag:512 name:@"is-wildcard"];
    [v16 flag:1024 name:@"synth-conformance" color:16744192];
    [v16 flag:2048 name:@"overrides-core-types" color:32614];
    [v16 flag:4096 name:@"invalid-redeclaration" color:16711680];
    [v16 flag:0x2000 name:@"declared-by-extension" color:16776960];
    [v16 flag:0x4000 name:@"vocabulary" color:0xFFFFLL];
    [v16 flag:0x8000 name:@"one-tap-openable" color:16711935];
    [v16 flag:0x10000 name:@"multiple-descriptions" color:16753920];
    [v16 endFlags];

    [v16 write:@"iconFiles" arrayIDs:v8 + 28 count:8];
    [v16 write:@"iconName" stringID:*(v8 + 60)];
    [v16 write:@"glyphName" stringID:*(v8 + 64)];
    [v16 childUnit:@"icons" table:*(-[_LSDatabase schema](*this) + 1600) unit:*(v8 + 68)];
    [v16 write:@"referenceAccessoryPath" stringID:*(v8 + 92)];
    [v16 write:@"delegate" stringID:*(v8 + 72)];
    [v16 write:@"kextName" stringID:*(v8 + 76)];
    if (!*(v8 + 88))
    {
      goto LABEL_17;
    }

    [(_LSDatabase *)*this store];
    v17 = _CSStringCopyCFString();
    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v17];
      v19 = v17;
      if (v18)
      {
        v20 = [v16 linkURL:{v18, v17}];
        [v16 write:@"reference URL" string:v20];

LABEL_16:
LABEL_17:
        [v16 childUnit:@"conforms to" table:*(-[_LSDatabase schema](*this) + 1596) unit:*(v8 + 84)];
        [v16 childUnit:@"tags" table:*(-[_LSDatabase schema](*this) + 1596) unit:*(v8 + 80)];

        goto LABEL_18;
      }
    }

    else
    {
      v19 = @"-nil-";
    }

    [v16 write:@"reference URL" string:v19];
    goto LABEL_16;
  }

LABEL_18:

  return v8 != 0;
}

void ___ZN14LaunchServicesL47UTTypeReleaseLocalizedDescriptionOrDescriptionsEP11_LSDatabasePK11_UTTypeData_block_invoke(uint64_t a1, int a2, _LSDatabase *a3)
{
  if (a3)
  {
    LaunchServices::LocalizedString::Remove(*(a1 + 32), a3);
  }
}

uint64_t ___ZN14LaunchServicesL35UTTypeEnumerateFlavoredDisplayNamesIZNS_L54UTTypeEnumerateAvailableAndPresentFlavoredDisplayNamesIZL30_UTGetLocalizedDescriptionImplPK16UTTypeSearchInfoE3__0EEvP11_LSDatabasePK11_UTTypeDataRKT_EUljRKNS_23UTTypeDisplayNameFlavorEPhE_EEvS7_SA_SD__block_invoke(uint64_t result, int a2, _LSDatabase *a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = **(result + 32);
    result = LaunchServices::LocalizedString::Get(***v6, a3);
    if (result)
    {
      **(v6 + 8) = v5;
      *a4 = 1;
    }
  }

  return result;
}

void ___ZN14LaunchServices4UTIsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"localizedDescription%s", *(a3 + 16)];
  [*(a1 + 32) childUnit:v5 table:*(-[_LSDatabase schema](**(a1 + 40)) + 1604) unit:a2];
}

id LaunchServices::TypeEvaluator::Result::getTypeRecord(LaunchServices::TypeEvaluator::Result *this, LSContext *a2)
{
  if (*this)
  {
    v2 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:a2 tableID:*([(_LSDatabase *)a2->db schema]+ 16) unitID:*this];
  }

  else
  {
    v2 = [[_UTDynamicTypeRecord alloc] _initWithContext:a2 dynamicUTI:*(this + 2)];
  }

  return v2;
}

void LaunchServices::TypeEvaluator::setSniffIfNeeded(id *this, int a2)
{
  if (a2)
  {
    v2 = a2;
    v4 = [*this canIssueIO];
    if (v4)
    {
      *(this + 8) = v2;
    }

    else
    {
      v5 = _LSDefaultLog(v4);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
      {
        LaunchServices::TypeEvaluator::setSniffIfNeeded(v5);
      }
    }
  }
}

uint64_t LaunchServices::TypeEvaluator::getTypeUnit(uint64_t a1, void **a2, _DWORD *a3, void *a4)
{
  LaunchServices::TypeEvaluation::runEvaluator(a2, a1, a4, &v9);
  v6 = v12;
  if (v12 == 1)
  {
    if (a3)
    {
      *a3 = v9;
    }

    v7 = v10;
    v6 = 1;
    if (a4 && !v10)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, 0, "getTypeUnit", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 139);
      *a4 = v7 = 0;
      if ((v12 & 1) == 0)
      {
        return v7;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
LABEL_10:
  }

  return v7;
}

void sub_1817A9380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

id LaunchServices::TypeEvaluator::getTypeIdentifier(uint64_t a1, void **a2, void *a3)
{
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v17, v5, 0);

  if (!v6)
  {
    if (a3)
    {
      v8 = +[_LSDServiceDomain defaultServiceDomain];
      v9 = LaunchServices::Database::Context::_get(&v17, v8, 0);

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v20;
      }

      v7 = 0;
      *a3 = v10;
      goto LABEL_11;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  LaunchServices::TypeEvaluation::runEvaluator(&v6->db, a1, a3, v14);
  if (v16 != 1)
  {
    goto LABEL_8;
  }

  v7 = LaunchServices::TypeEvaluator::Result::getTypeIdentifier(v14, v6);
  if (v16)
  {
  }

LABEL_11:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v11 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v12 = v20;
  v20 = 0;

  return v7;
}

void sub_1817A9508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

id LaunchServices::TypeEvaluator::getTypeRecord(uint64_t a1, void **a2, void *a3)
{
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v17, v5, 0);

  if (!v6)
  {
    if (a3)
    {
      v8 = +[_LSDServiceDomain defaultServiceDomain];
      v9 = LaunchServices::Database::Context::_get(&v17, v8, 0);

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v20;
      }

      v7 = 0;
      *a3 = v10;
      goto LABEL_11;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  LaunchServices::TypeEvaluation::runEvaluator(&v6->db, a1, a3, v14);
  if (v16 != 1)
  {
    goto LABEL_8;
  }

  v7 = LaunchServices::TypeEvaluator::Result::getTypeRecord(v14, v6);
  if (v16)
  {
  }

LABEL_11:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v11 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v12 = v20;
  v20 = 0;

  return v7;
}

void sub_1817A96D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices14TypeEvaluationL15resolveBaseTypeERNS0_5StateEPU15__autoreleasingP7NSError_block_invoke()
{
  v5[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695DB10];
  v4[0] = *MEMORY[0x1E695DB28];
  v4[1] = v0;
  v5[0] = @"public.named-pipe";
  v5[1] = @"public.character-special";
  v1 = *MEMORY[0x1E695DB38];
  v4[2] = *MEMORY[0x1E695DB08];
  v4[3] = v1;
  v5[2] = @"public.block-special";
  v5[3] = @"public.socket";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:v4 count:4];
  v3 = LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State &,NSError * {__autoreleasing}*)::posixUTIs;
  LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State &,NSError * {__autoreleasing}*)::posixUTIs = v2;
}

void ___ZN14LaunchServices14TypeEvaluationL14gnitsFileNamesEv_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1EEF8F280];
  v1 = LaunchServices::TypeEvaluation::gnitsFileNames(void)::result;
  LaunchServices::TypeEvaluation::gnitsFileNames(void)::result = v0;
}

void sub_1817AA5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);

  LaunchServices::Database::Context::~Context(va);
  _Block_object_dispose((v22 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1817AAAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  LaunchServices::Database::Context::~Context(&a17);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1817AACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LaunchServices::Database::Context::~Context(&a9);

  _Unwind_Resume(a1);
}

void sub_1817AB500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  *(v26 + 120) = v25;
  std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__destroy_vector::operator()[abi:nn200100]((v27 - 96));
  _Block_object_dispose((v27 - 144), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__23(__n128 *a1, __n128 *a2)
{
  a1[3] = 0uLL;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3] = 0uLL;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1817ABAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817ADAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817AE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817AE4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(&a39);
  _Unwind_Resume(a1);
}

void sub_1817AEED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1817AF114(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1817B1AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1817B1FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817B237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1817B2644(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

unint64_t computeEffectiveUnitsForPhase(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v7 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (a4 > 0.0 && v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    v11 = [v7 objectForKeyedSubscript:v10];
    [v11 doubleValue];
    v13 = v12;

    v14 = v13 / a4 * 100.0;
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    if (v13 <= 0.0)
    {
      a2 = v14;
    }

    else
    {
      a2 = v15;
    }
  }

  return a2;
}

void sub_1817B3614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  objc_sync_exit(obj);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817B4E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_sync_exit(v16);
  _Unwind_Resume(a1);
}

void addPluginDataToNotificationDict(void *a1, void *a2)
{
  v12 = a1;
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 UUIDString];

  if (v5)
  {
    v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
    v7 = [v3 bundleIdentifier];
    if (v7)
    {
      [v6 setObject:v7 forKey:*MEMORY[0x1E695E4F0]];
    }

    v8 = [v3 effectiveBundleIdentifier];
    if (v8)
    {
      [v6 setObject:v8 forKey:@"NSExtensionIdentifier"];
    }

    v9 = [v3 bundleVersion];
    if (v9)
    {
      [v6 setObject:v9 forKey:*MEMORY[0x1E695E500]];
    }

    v10 = [v3 URL];
    v11 = [v10 path];

    if (v11)
    {
      [v6 setObject:v11 forKey:@"_LSBundlePath"];
    }

    if ([v6 count])
    {
      [v12 setObject:v6 forKey:v5];
    }
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v11 = 0;
    v6 = 0;
  }
}

void sub_1817B7124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817B7EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817B8344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v28 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__333(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1865D71B0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_1817BA2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initMKBDeviceUnlockedSinceBoot()
{
  v0 = MobileKeyBagLibrary_frameworkLibrary;
  if (!MobileKeyBagLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/MobileKeyBag.framework/MobileKeyBag", 2);
    MobileKeyBagLibrary_frameworkLibrary = v0;
  }

  v1 = dlsym(v0, "MKBDeviceUnlockedSinceBoot");
  softLinkMKBDeviceUnlockedSinceBoot = v1;

  return v1();
}

SEL __recordSelectorsForPluginNotification_block_invoke()
{
  v0 = 0;
  recordSelectorsForPluginNotification_registeredSels = malloc_type_malloc(0x30uLL, 0x80040B8603338uLL);
  *(recordSelectorsForPluginNotification_registeredSels + 40) = 0;
  do
  {
    result = sel_registerName(recordSelectorsForPluginNotification_unregisteredSels[v0]);
    *(recordSelectorsForPluginNotification_registeredSels + v0 * 8) = result;
    ++v0;
  }

  while (v0 != 5);
  return result;
}

void OUTLINED_FUNCTION_5_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0xCu);
}

uint64_t LSPersonaTypeForPersonaAttributes(void *a1)
{
  v1 = a1;
  if ([v1 isSystemPersona])
  {
    v2 = 3;
  }

  else if ([v1 isPersonalPersona])
  {
    v2 = 1;
  }

  else if ([v1 isEnterprisePersona])
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _AppleIDAuthenticationAddAppleIDWithBlock(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5)
{
  v7 = AppleIDGetLogHandle(a1, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "AddAppleID: This operation is not supported anymore\n", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___AppleIDAuthenticationAddAppleIDWithBlock_block_invoke;
  block[3] = &unk_1E6A1F498;
  block[4] = a5;
  dispatch_async(a4, block);
  return 1;
}

uint64_t _AppleIDAuthenticationAddAppleID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v6 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___AppleIDAuthenticationAddAppleID_block_invoke;
  v12[3] = &unk_1EEF64868;
  v12[4] = &v15;
  v12[5] = a4;
  object = v5;
  v14 = 1;
  dispatch_retain(v5);
  _AppleIDAuthenticationAddAppleIDWithBlock(v7, v8, v9, v6, v12);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (v14 == 1)
  {
    dispatch_release(object);
  }

  v10 = *(v16 + 24);
  dispatch_release(v5);
  _Block_object_dispose(&v15, 8);
  return v10;
}

void __copy_helper_block_8_48c14_ZTS9Semaphore(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 48) = v2;
  *(a1 + 56) = 1;
  dispatch_retain(v2);
}

void __destroy_helper_block_8_48c14_ZTS9Semaphore(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    dispatch_release(*(a1 + 48));
  }
}

uint64_t _AppleIDAuthenticationForgetAppleIDWithBlock(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v6 = AppleIDGetLogHandle(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "ForgetAppleID: This operation is not supported anymore\n", buf, 2u);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___AppleIDAuthenticationForgetAppleIDWithBlock_block_invoke;
  block[3] = &unk_1E6A1F4C0;
  block[4] = a4;
  dispatch_async(a3, block);
  return 1;
}

uint64_t _AppleIDAuthenticationForgetAppleID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v5 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___AppleIDAuthenticationForgetAppleID_block_invoke;
  v10[3] = &unk_1EEF648A0;
  v10[4] = &v13;
  v10[5] = a3;
  object = v4;
  v12 = 1;
  dispatch_retain(v4);
  _AppleIDAuthenticationForgetAppleIDWithBlock(v6, v7, v5, v10);
  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  if (v12 == 1)
  {
    dispatch_release(object);
  }

  v8 = *(v14 + 24);
  dispatch_release(v4);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t _AppleIDAuthenticationCopyAppleIDsWithBlock(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = AppleIDGetLogHandle(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v5, OS_LOG_TYPE_DEFAULT, "CopyAppleIDs: Deferring to sharingd. \n", buf, 2u);
  }

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = ___AppleIDAuthenticationCopyAppleIDsWithBlock_block_invoke;
  v7[3] = &unk_1E6A1F4E8;
  v7[4] = a3;
  softLinkSFAppleIDClientCopyMyAppleID(a2, v7);
  return 1;
}

uint64_t _AppleIDAuthenticationCopyAppleIDs(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v3 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v4 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1174405120;
  v8[2] = ___AppleIDAuthenticationCopyAppleIDs_block_invoke;
  v8[3] = &unk_1EEF648D8;
  v8[4] = &v11;
  v8[5] = a2;
  object = v3;
  v10 = 1;
  dispatch_retain(v3);
  _AppleIDAuthenticationCopyAppleIDsWithBlock(v5, v4, v8);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v10 == 1)
  {
    dispatch_release(object);
  }

  v6 = v12[3];
  dispatch_release(v3);
  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t _AppleIDAuthenticationCopyCertificateInfoWithBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = AppleIDGetLogHandle(a1, a2);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "CopyCertificateInfo: Deferring to sharingd. \n", buf, 2u);
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 0x40000000;
  v10[2] = ___AppleIDAuthenticationCopyCertificateInfoWithBlock_block_invoke;
  v10[3] = &unk_1E6A1F510;
  v10[4] = a5;
  softLinkSFAppleIDClientCopyCertificateInfo(a1, a4, v10);
  return 1;
}

uint64_t _AppleIDAuthenticationCopyCertificateInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v6 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v7 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___AppleIDAuthenticationCopyCertificateInfo_block_invoke;
  v12[3] = &unk_1EEF64910;
  v12[4] = &v15;
  v12[5] = a4;
  object = v6;
  v14 = 1;
  dispatch_retain(v6);
  _AppleIDAuthenticationCopyCertificateInfoWithBlock(a1, v8, v9, v7, v12);
  dispatch_semaphore_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  if (v14 == 1)
  {
    dispatch_release(object);
  }

  v10 = v16[3];
  dispatch_release(v6);
  _Block_object_dispose(&v15, 8);
  return v10;
}

uint64_t _AppleIDAuthenticationCopyMyInfoWithBlock(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  v6 = AppleIDGetLogHandle(a1, a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "CopyMyInfo: this operation is not supported anymore.\n", buf, 2u);
  }

  result = 0;
  if (a3)
  {
    if (a4)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___AppleIDAuthenticationCopyMyInfoWithBlock_block_invoke;
      block[3] = &unk_1E6A1F538;
      block[4] = a4;
      dispatch_async(a3, block);
      return 1;
    }
  }

  return result;
}

uint64_t _AppleIDAuthenticationCopyMyInfo(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v4 = dispatch_semaphore_create(0);
  if (getAppleIDAuthDispatchQueue(void)::sOnce != -1)
  {
    _AppleIDAuthenticationAddAppleID_cold_1();
  }

  v5 = getAppleIDAuthDispatchQueue(void)::sAppleIDAuthDispatchQueue;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1174405120;
  v10[2] = ___AppleIDAuthenticationCopyMyInfo_block_invoke;
  v10[3] = &unk_1EEF64948;
  v10[4] = &v13;
  v10[5] = a3;
  object = v4;
  v12 = 1;
  dispatch_retain(v4);
  if (_AppleIDAuthenticationCopyMyInfoWithBlock(v6, v7, v5, v10))
  {
    dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (a3)
  {
    *a3 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -99, 0);
  }

  if (v12 == 1)
  {
    dispatch_release(object);
  }

  v8 = v14[3];
  dispatch_release(v4);
  _Block_object_dispose(&v13, 8);
  return v8;
}

uint64_t _AppleIDAuthenticationFindPersonWithBlock(const __CFDictionary *ValueAtIndex, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = ValueAtIndex;
  v7 = AppleIDGetLogHandle(ValueAtIndex, a2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "FindPerson: Deferring to sharingd.", buf, 2u);
  }

  if (v6)
  {
    Value = CFDictionaryGetValue(v6, @"email");
    TypeID = CFArrayGetTypeID();
    if (Value && TypeID && CFGetTypeID(Value) != TypeID)
    {
      Value = 0;
    }

    v10 = CFDictionaryGetValue(v6, @"phone");
    v11 = CFArrayGetTypeID();
    if (v10 && v11 && CFGetTypeID(v10) != v11)
    {
      v10 = 0;
    }

    if (!Value || !CFArrayGetCount(Value) || (v6 = CFArrayGetValueAtIndex(Value, 0), v12 = CFStringGetTypeID(), !v6) || v12 && CFGetTypeID(v6) != v12)
    {
      if (!v10 || !CFArrayGetCount(v10) || (v6 = CFArrayGetValueAtIndex(v10, 0), v13 = CFStringGetTypeID(), v6) && v13 && CFGetTypeID(v6) != v13)
      {
        v6 = 0;
      }
    }
  }

  else
  {
    CFArrayGetTypeID();
    CFArrayGetTypeID();
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 0x40000000;
  v15[2] = ___AppleIDAuthenticationFindPersonWithBlock_block_invoke;
  v15[3] = &unk_1E6A1F560;
  v15[4] = a4;
  softLinkSFAppleIDClientCopyPersonInfo(v6, a3, v15);
  return 1;
}

void _AppleIDAuthenticationFindPerson(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = 0;
  v3[1] = v3;
  v3[2] = 0x2000000000;
  v3[3] = 0;
  operator new();
}

uint64_t _AppleIDCopySecIdentityForAppleIDAccount(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v5 = dispatch_semaphore_create(0);
  v7 = AppleIDGetLogHandle(v5, v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "CopySecIdentity: Deferring to sharingd. \n", v12, 2u);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1174405120;
  v12[2] = ___ZL41__AppleIDCopySecIdentityForAppleIDAccountPK10__CFStringPK14__CFDictionaryPP9__CFError_block_invoke;
  v12[3] = &unk_1EEF64A48;
  v12[4] = &v15;
  v12[5] = &v19;
  object = v5;
  v14 = 1;
  dispatch_retain(v5);
  softLinkSFAppleIDClientCopyIdentity(a1, global_queue, v12);
  dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  if (a3)
  {
    v9 = *(v20 + 6);
    if (v9)
    {
      *a3 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], v9, 0);
    }
  }

  v10 = v16[3];
  if (v14 == 1)
  {
    dispatch_release(object);
  }

  dispatch_release(v5);
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);
  return v10;
}

CFStringRef _AppleIDCopyDSIDForCertificate(uint64_t a1, CFErrorRef *a2)
{
  v4 = AppleIDGetLogHandle(a1, a2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "AppleIDCopyDSIDForCertificate\n", v23, 2u);
  }

  if (a1)
  {
    v5 = SecCertificateCopyCommonNames();
    v6 = v5;
    if (v5 && CFArrayGetCount(v5) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v6, 0), TypeID = CFStringGetTypeID(), ValueAtIndex) && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID) && (v9 = CFRetain(ValueAtIndex)) != 0)
    {
      v10 = v9;
      Length = CFStringGetLength(v9);
      v12 = 0;
      v13 = 1;
      while (1)
      {
        v14 = v13;
        v15 = off_1E6A1F5A8[v12];
        if (CFStringHasPrefix(v10, v15))
        {
          break;
        }

        v13 = 0;
        v12 = 1;
        if ((v14 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      v19 = CFStringGetLength(v15);
      if (v19 < Length)
      {
        v20 = v19;
        v21 = *MEMORY[0x1E695E480];
        v22 = CFStringGetLength(v10);
        v24.location = v20 + 1;
        v24.length = v22 + ~v20;
        v17 = CFStringCreateWithSubstring(v21, v10, v24);
        v13 = 0;
        goto LABEL_36;
      }

      v13 = 0;
LABEL_35:
      v17 = 0;
LABEL_36:
      v16 = 0;
      if (!a2)
      {
LABEL_18:
        if (v6)
        {
          CFRelease(v6);
        }

        if ((v13 & 1) == 0)
        {
          CFRelease(v10);
        }

        if (!a2)
        {
          goto LABEL_28;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v16 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E638], -1, 0);
      v10 = 0;
      v17 = 0;
      v13 = 1;
      if (!a2)
      {
        goto LABEL_18;
      }
    }

    if (!v17 && !v16)
    {
      v16 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -10, 0);
    }

    goto LABEL_18;
  }

  if (!a2)
  {
    return 0;
  }

  v16 = CFErrorCreate(*MEMORY[0x1E695E480], @"CSIdentityErrorDomain", -99, 0);
  v17 = 0;
LABEL_26:
  if (!v17)
  {
    *a2 = v16;
    return v17;
  }

LABEL_28:
  if (v16)
  {
    CFRelease(v16);
  }

  return v17;
}