void OUTLINED_FUNCTION_8_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

uint64_t LSBundleMeetsBasicDefaultAppRequirements(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = v4;
  if ((*(a3 + 174) & 4) != 0)
  {
    v7 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LSBundleMeetsBasicDefaultAppRequirements_cold_1();
    }
  }

  else if (*(a3 + 168) == 2)
  {
    v6 = _LSBundleDataIsInUnsupportedLocation(v4, a3);
    if (v6)
    {
      v7 = _LSDefaultLog(v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LSBundleMeetsBasicDefaultAppRequirements_cold_3();
      }
    }

    else
    {
      UnsupportedFormatFlag = _LSBundleDataGetUnsupportedFormatFlag();
      if (!UnsupportedFormatFlag)
      {
        v8 = 1;
        goto LABEL_11;
      }

      v7 = _LSDefaultLog(UnsupportedFormatFlag);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        LSBundleMeetsBasicDefaultAppRequirements_cold_4();
      }
    }
  }

  else
  {
    v7 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      LSBundleMeetsBasicDefaultAppRequirements_cold_2();
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

uint64_t LSEnumerateDefaultAppCategories(uint64_t a1)
{
  v2 = 0;
  v5 = 0;
  v3 = &LSDefaultAppCategoryInfos;
  do
  {
    result = (*(a1 + 16))(a1, v3, &v5);
    if (v2 > 8)
    {
      break;
    }

    ++v2;
    v3 += 64;
  }

  while ((v5 & 1) == 0);
  return result;
}

__CFString *LSDefaultAppCategoryCopyName(unint64_t a1)
{
  if (a1 < 0xB && ((0x6FFu >> a1) & 1) != 0)
  {
    return off_1E6A1D150[a1];
  }

  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *LSDefaultAppCategoryCopyName(LSDefaultAppCategory)"];
  [v3 handleFailureInFunction:v4 file:@"LSDefaultAppsCore.mm" lineNumber:464 description:{@"bogus app category %lu", a1}];

  [MEMORY[0x1E696AEC0] stringWithFormat:@"appCategory(%ld)", a1];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t LSDefaultAppCategoryGetFromName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"LSDefaultAppCategoryInvalid"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryWebBrowser"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryMailClient"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryMessaging"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryPhoneCalls"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryNavigation"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryTranslation"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryInvalidPlaceholder"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryDialing"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"LSDefaultAppCategoryCarrierMessaging"])
  {
    v2 = 10;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id *LSDefaultAppCategoryGetInfoFromTypeIdentifier(uint64_t a1)
{
  v2 = &LSDefaultAppCategoryInfos;
  v3 = 640;
  while (![v2[1] isEqualToString:a1])
  {
    v2 += 8;
    v3 -= 64;
    if (!v3)
    {
      return 0;
    }
  }

  return v2;
}

BOOL LSIdentifierIsDefaultAppTypeIdentifier(void *a1)
{
  v1 = a1;
  if (([(__CFString *)v1 isEqualToString:@"com.apple.default-app-category"]& 1) != 0)
  {
    v2 = 1;
  }

  else
  {
    v3 = 8u;
    do
    {
      v4 = UTTypeEqual(*(&LSDefaultAppCategoryInfos + v3), v1);
      v2 = v4 != 0;
      if (v4)
      {
        break;
      }

      v5 = v3 == 584;
      v3 += 64;
    }

    while (!v5);
  }

  return v2;
}

id LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  v5 = v4;
  if (v4)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v4 = __LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes_block_invoke(v4, v8);
        if (v4)
        {
          v4 = [v2 addObject:{v8, v10}];
        }

        ++v7;
      }

      while (v5 != v7);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      v5 = v4;
    }

    while (v4);
  }

  return v2;
}

uint64_t __LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes_block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = 0;
    goto LABEL_23;
  }

  v3 = v2;
  v4 = objc_opt_class();
  v5 = [v3 objectForKey:@"LSItemContentTypes"];
  v6 = v5;
  if (v4 && v5)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_18;
    }

LABEL_8:
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            IsDefaultAppTypeIdentifier = LSIdentifierIsDefaultAppTypeIdentifier(v12);
            if (IsDefaultAppTypeIdentifier)
            {
              v14 = _LSDefaultLog(IsDefaultAppTypeIdentifier);
              if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
              {
                __LSCopyClaimListWithoutClaimsClaimingDefaultAppTypes_block_invoke_cold_1();
              }

              v7 = 0;
              goto LABEL_22;
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    goto LABEL_18;
  }

  if (v5)
  {
    goto LABEL_8;
  }

LABEL_18:
  v7 = 1;
LABEL_22:

LABEL_23:
  return v7;
}

uint64_t LSCopyDefaultAppsClaimForBundle(void *a1, uint64_t a2, const LSBundleData *a3, void *a4)
{
  v35[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  if (LSBundleMeetsBasicDefaultAppRequirements(v7, a2, a3))
  {
    v26 = 0;
    v27 = 0;
    v9 = 640;
    v10 = &off_1EEF63350;
    v28 = 0;
    do
    {
      if ((*v10)(v7, a2, a3, v8, 1))
      {
        v11 = *(v10 - 3);
        v12 = v27;
        if (v27 >= v28)
        {
          v14 = v27 - v26;
          if ((v14 + 1) >> 61)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v15 = (v28 - v26) >> 2;
          if (v15 <= v14 + 1)
          {
            v15 = v14 + 1;
          }

          if (v28 - v26 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          v33 = &v26;
          if (v16)
          {
            std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](&v26, v16);
          }

          v29 = 0;
          v30 = (8 * v14);
          v32 = 0;
          *v30 = v11;
          v31 = 8 * v14 + 8;
          std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer(&v26, &v29);
          v13 = v27;
          std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(&v29);
        }

        else
        {
          *v27 = v11;
          v13 = v12 + 1;
        }

        v27 = v13;
      }

      v10 += 8;
      v9 -= 64;
    }

    while (v9);
    if (v27 == v26)
    {
      v21 = 0;
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x1E695DF70]);
      v18 = [v17 initWithCapacity:v27 - v26];
      v19 = v26;
      v20 = v27;
      while (v19 != v20)
      {
        [v18 addObject:*v19++];
      }

      v34[0] = @"LSItemContentTypes";
      v22 = [v18 copy];
      v23 = *MEMORY[0x1E695E178];
      v35[0] = v22;
      v35[1] = @"Viewer";
      v24 = *MEMORY[0x1E695E170];
      v34[1] = v23;
      v34[2] = v24;
      v35[2] = @"Default Apps Claim";
      v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
    }

    v29 = &v26;
    std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v29);
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

void sub_181747670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&a12);

  _Unwind_Resume(a1);
}

uint64_t LSGetDefaultAppsClaimUnitIDForBundle(void *a1, uint64_t a2)
{
  v3 = a1;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  if (_LSBundleGet(v3, a2))
  {
    [(_LSDatabase *)v3 store];
    v6 = v3;
    _CSArrayEnumerateAllValues();
  }

  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return v4;
}

void sub_1817477E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LSGetDefaultAppsClaimUnitIDForBundle_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v5 = a3;
  result = _LSClaimGet(*(a1 + 32), a3);
  if (result)
  {
    if ((*(result + 9) & 0x20) != 0)
    {
      *(*(*(a1 + 40) + 8) + 24) = v5;
      *a4 = 1;
    }
  }

  return result;
}

uint64_t _LSServer_LSRemoveDefaultApp(uint64_t a1, uint64_t a2)
{
  v20 = *MEMORY[0x1E69E9840];
  _LSAssertRunningInServer("OSStatus _LSServer_LSRemoveDefaultApp(LSDefaultAppCategory)", a2);
  v3 = LSGetDefaultAppCategoryInfoForCategory(a1);
  v4 = _LSServer_RemoveContentTypeHandler(*(v3 + 1), 14);
  if (!v4)
  {
    if (!*(v3 + 6))
    {
      return 0;
    }

    v8 = 0;
    v9 = 1;
    while (1)
    {
      v10 = *(v3 + 5) + v8;
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v10 + 8)];
      v12 = v11;
      if (!*v10)
      {
        break;
      }

      if (*v10 == 1)
      {
        v13 = _LSServer_RemoveContentTypeHandler(v11, 14);
        goto LABEL_12;
      }

      v5 = 0;
LABEL_17:

      if (!v5)
      {
        v8 += 24;
        if (v9++ < *(v3 + 6))
        {
          continue;
        }
      }

      return v5;
    }

    v13 = _LSServer_RemoveSchemeHandler(v11);
LABEL_12:
    v5 = v13;
    if (v13)
    {
      v14 = _LSDefaultLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v17 = v12;
        v18 = 2048;
        v19 = v5;
        _os_log_error_impl(&dword_18162D000, v14, OS_LOG_TYPE_ERROR, "Couldn't remove handler for subordinate claim %@: %ld", buf, 0x16u);
      }
    }

    goto LABEL_17;
  }

  v5 = v4;
  v6 = _LSDefaultLog(v4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    _LSServer_LSRemoveDefaultApp_cold_1();
  }

  return v5;
}

uint64_t _LSServer_LSSetDefaultAppByTypeIdentifier(uint64_t a1, void *a2, _OWORD *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  _LSAssertRunningInServer("OSStatus _LSServer_LSSetDefaultAppByTypeIdentifier(LSDefaultAppCategory, NSString *__strong _Nonnull, LSVersionNumber)", v6);
  MayBeChanged = LSDefaultAppCategoryMayBeChanged(a1);
  if (!MayBeChanged)
  {
    v26 = _LSDefaultLog(MayBeChanged);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      _LSServer_LSSetDefaultAppByTypeIdentifier_cold_1();
    }

    v8 = 0;
    v13 = 4294967246;
LABEL_19:
    v18 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (v8)
      {
        v28 = *(v8 + 1);
      }

      else
      {
        v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"category %lu", a1];
      }

      *buf = 138412546;
      *&buf[4] = v28;
      *&buf[12] = 2048;
      *&buf[14] = v13;
      _os_log_error_impl(&dword_18162D000, v18, OS_LOG_TYPE_ERROR, "Couldn't set handler for %@: %ld", buf, 0x16u);
      if (!v8)
      {
        goto LABEL_28;
      }
    }

    goto LABEL_20;
  }

  v8 = LSGetDefaultAppCategoryInfoForCategory(a1);
  v9 = *(v8 + 1);
  v10 = a3[1];
  *buf = *a3;
  *&buf[16] = v10;
  v11 = _LSServer_SetContentTypeHandler(v9, 14, v5, buf);
  v13 = v11;
  if (v11)
  {
    goto LABEL_19;
  }

  if (!*(v8 + 6))
  {
LABEL_11:
    _LSAssertRunningInServer("void _LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)", v12);
    v23 = LaunchServices::_LSServer_DefaultAppsExtraStateManager(v22);
    *buf = &unk_1EEF635C0;
    *&buf[8] = a1;
    *&buf[24] = buf;
    v18 = LaunchServices::LSDefaultAppsExtraStateManager::modify(v23, buf);
    v24 = std::__function::__value_func<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::~__value_func[abi:nn200100](buf);
    if (v18)
    {
      v25 = _LSDefaultLog(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        _LSServer_LSSetDefaultAppByTypeIdentifier_cold_2();
      }
    }

    v13 = 0;
    goto LABEL_20;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = *(v8 + 5);
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*(v16 + v14 + 8)];
    v18 = v17;
    if (!*(v16 + v14))
    {
      break;
    }

    if (*(v16 + v14) == 1)
    {
      v19 = a3[1];
      *buf = *a3;
      *&buf[16] = v19;
      v20 = _LSServer_SetContentTypeHandler(v17, 14, v5, buf);
      goto LABEL_9;
    }

LABEL_10:

    ++v15;
    v14 += 24;
    if (v15 >= *(v8 + 6))
    {
      goto LABEL_11;
    }
  }

  v21 = a3[1];
  *buf = *a3;
  *&buf[16] = v21;
  v20 = _LSServer_SetSchemeHandler(v17, v5, buf);
LABEL_9:
  v13 = v20;
  if (!v20)
  {
    goto LABEL_10;
  }

  v28 = _LSDefaultLog(v20);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412546;
    *&buf[4] = v18;
    *&buf[12] = 2048;
    *&buf[14] = v13;
    _os_log_error_impl(&dword_18162D000, v28, OS_LOG_TYPE_ERROR, "Couldn't set handler for %@: %ld", buf, 0x16u);
  }

LABEL_28:

LABEL_20:
  return v13;
}

uint64_t _LSServer_LSMigratePreferencesForDefaultApps(void **a1, uint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  _LSAssertRunningInServer("NSError * _Nullable _LSServer_LSMigratePreferencesForDefaultApps(LSContext * _Nonnull)", a2);
  v4 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf._opaque = 0;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "Migrating preferences for default apps", buf._opaque, 2u);
  }

  v25 = 0;
  for (i = 0; i != 640; i += 64)
  {
    v6 = &LSDefaultAppCategoryInfos + i;
    v7 = *(&LSDefaultAppCategoryInfos + i + 8);
    StringForCFString = _LSDatabaseGetStringForCFString(*a1, v7, 1);
    v26 = StringForCFString;
    if (StringForCFString)
    {
      StringForCFString = LSHandlerPref::GetHandlerPref(*a1, StringForCFString, 0, 0);
      if (StringForCFString)
      {
        continue;
      }
    }

    memset(&buf, 0, sizeof(buf));
    v9 = *(v6 + 6);
    if (!v9)
    {
      continue;
    }

    v10 = (*(v6 + 5) + 8);
    v11 = 1;
    do
    {
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:*v10];
      v13 = _LSDatabaseGetStringForCFString(*a1, v12, 1);
      if (!v13)
      {
        goto LABEL_17;
      }

      if (*(v10 - 8))
      {
        v14 = 0;
        v15 = 0;
        if (*(v10 - 8) != 1)
        {
          goto LABEL_18;
        }
      }

      else
      {
        v14 = 5;
      }

      HandlerPref = LSHandlerPref::GetHandlerPref(*a1, v13, v14, 0);
      if (HandlerPref)
      {
        v15 = LSHandlerPref::roleHandler(HandlerPref, 0xEu, &buf);
        [(_LSDatabase *)*a1 store];
        v17 = _CSStringCopyCFString();
        v18 = _LSDefaultLog(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *v27._opaque = 138412802;
          *&v27._opaque[4] = v17;
          *&v27._opaque[12] = 2112;
          *&v27._opaque[14] = v12;
          *&v27._opaque[22] = 2112;
          *&v27._opaque[24] = v7;
          _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "found handler %@ for subordinate claim %@; will set handler for %@", v27._opaque, 0x20u);
        }
      }

      else
      {
LABEL_17:
        v15 = 0;
      }

LABEL_18:

      if (v11 >= v9)
      {
        break;
      }

      ++v11;
      v10 += 3;
    }

    while (!v15);
    if (v15)
    {
      v19 = *a1;
      v20 = _LSEffectivePreferenceRolesMaskForMask(14);
      v27 = buf;
      LSHandlerPref::SetRoleHandlerForTag(v19, v26, 0, v20, v15, &v27);
      v25 = 1;
    }
  }

  v21 = _LSDefaultLog(StringForCFString);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf._opaque = 67109120;
    *&buf._opaque[4] = v25 & 1;
    _os_log_impl(&dword_18162D000, v21, OS_LOG_TYPE_DEFAULT, "Done migrating preferences for default apps, made changes? %{BOOL}d", buf._opaque, 8u);
  }

  if (v25)
  {
    LSHandlerPref::Save(*a1, v22);
    _LSDatabaseCommit(*a1, v23);
  }

  return 0;
}

id LSDefaultAppCategoryPreferenceGetLastSetDate(uint64_t a1, void *a2)
{
  v3 = LSGetDefaultAppCategoryInfoForCategory(a1);
  v21 = -1;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  v5 = LaunchServices::Database::Context::_get(&v17, v4, 0);

  if (!v5)
  {
    if (a2)
    {
      v10 = +[_LSDServiceDomain defaultServiceDomain];
      v11 = LaunchServices::Database::Context::_get(&v17, v10, 0);

      if (v11)
      {
        v12 = 0;
      }

      else
      {
        v12 = v20;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  TagForContentType = LSHandlerPref::GetTagForContentType(*v5, *(v3 + 1), &v21);
  if (!TagForContentType)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 109, 0, "LSDefaultAppCategoryPreferenceGetLastSetDate", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/DefaultApps/LSDefaultAppsCore.mm", 823);
LABEL_15:
    v12 = v13;
LABEL_18:
    v9 = 0;
    *a2 = v12;
    goto LABEL_19;
  }

  HandlerPref = LSHandlerPref::GetHandlerPref(*v5, TagForContentType, v21, 0);
  if (!HandlerPref)
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 113, 0, "LSDefaultAppCategoryPreferenceGetLastSetDate", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/DefaultApps/LSDefaultAppsCore.mm", 819);
    goto LABEL_15;
  }

  v8 = *(HandlerPref + 232);
  if (!v8)
  {
    if (a2)
    {
      v13 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 113, 0, "LSDefaultAppCategoryPreferenceGetLastSetDate", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/DefaultApps/LSDefaultAppsCore.mm", 815);
      goto LABEL_15;
    }

LABEL_16:
    v9 = 0;
    goto LABEL_19;
  }

  v9 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:v8];
LABEL_19:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v14 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v15 = v20;
  v20 = 0;

  return v9;
}

uint64_t _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory(uint64_t a1, uint64_t a2)
{
  _LSAssertRunningInServer("BOOL _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory(LSDefaultAppCategory)", a2);
  v4 = LaunchServices::_LSServer_DefaultAppsExtraStateManager(v3);
  v12 = 0;
  LaunchServices::LSDefaultAppsExtraStateManager::read(v4, &v12, &v13);
  v5 = v12;
  v6 = v5;
  if (v14 == 1)
  {
    hasCategoryBeenSet = LaunchServices::LSDefaultAppsExtraState::hasCategoryBeenSet(&v13, a1);
  }

  else
  {
    LaunchServices::_LSServer_DefaultAppsExtraStateManager(v5);
    v11 = [MEMORY[0x1E695DFD8] set];
    hasCategoryBeenSet = LaunchServices::LSDefaultAppsExtraState::hasCategoryBeenSet(&v11, a1);

    v9 = _LSDefaultLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      _LSServer_HasPreferenceEverBeenSetForDefaultAppCategory_cold_1();
    }
  }

  if (v14 == 1)
  {
  }

  return hasCategoryBeenSet;
}

void sub_1817484AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, char a12)
{
  if (a12 == 1)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::LSDefaultAppsExtraState::hasCategoryBeenSet(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v4 = [v2 containsObject:v3];

  return v4;
}

uint64_t LSDefaultAppCategoryMaskForCategory(uint64_t a1)
{
  if (a1)
  {
    return 1 << a1;
  }

  else
  {
    return 0;
  }
}

BOOL BundleIsWebBrowserCandidate(_LSDatabase *a1, int a2, const LSBundleData *a3, NSDictionary *a4, int a5)
{
  v9 = a1;
  v10 = a4;
  v11 = v9;
  v12 = v11;
  v15.db = v11;
  v13 = (!a5 || (BundleHasEntitlementWithMaybePreloadedEntitlements(v11, a3, v10, &cfstr_ComAppleDevelo_4.isa) & 1) != 0) && _LSCanBundleHandleNodeOrSchemeOrUTI(&v15, a2, 0, @"https", 0, 14) && _LSCanBundleHandleNodeOrSchemeOrUTI(&v15, a2, 0, @"http", 0, 14) != 0;

  return v13;
}

BOOL BundleIsMailClientCandidate(_LSDatabase *a1, int a2, const LSBundleData *a3, NSDictionary *a4, int a5)
{
  v9 = a1;
  v10 = a4;
  v11 = v9;
  v12 = v11;
  v16.db = v11;
  if (a5 && (BundleHasEntitlementWithMaybePreloadedEntitlements(v11, a3, v10, &cfstr_ComAppleDevelo_5.isa) & 1) == 0)
  {
    v13 = 0;
    db = v12;
  }

  else
  {
    v13 = _LSCanBundleHandleNodeOrSchemeOrUTI(&v16, a2, 0, @"mailto", 0, 14) != 0;
    db = v16.db;
  }

  return v13;
}

uint64_t BundleIsPhoneAppCandidate(_LSDatabase *a1, unsigned int a2, const LSBundleData *a3, NSDictionary *a4)
{
  v6 = a1;
  v7 = a4;
  if (BundleCanBeCandidate(v6, a3, v7, &unk_1EEF8F1F0, @"com.apple.mobilephone"))
  {
    v8 = BundleEntitlementValueWithMaybePreloadedEntitlements(v6, a3, v7, &cfstr_ApplicationIde.isa);
    if ([v8 isEqualToString:@"com.apple.FaceTime"] && (v9 = MGGetBoolAnswer(), v9))
    {
      v10 = _LSDefaultLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 0;
        v11 = "FaceTime is not a candidate for default calling app on this device.";
        v12 = &v17;
LABEL_13:
        _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, v11, v12, 2u);
      }
    }

    else
    {
      if (![v8 isEqualToString:@"com.apple.mobilephone"] || MGGetSInt32Answer() != 3 || (v14 = _os_feature_enabled_impl(), (v14 & 1) != 0))
      {
        v13 = 1;
LABEL_15:

        goto LABEL_16;
      }

      v10 = _LSDefaultLog(v14);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 0;
        v11 = "MobilePhone is not a candidate for default calling app on this device.";
        v12 = &v16;
        goto LABEL_13;
      }
    }

    v13 = 0;
    goto LABEL_15;
  }

  v13 = 0;
LABEL_16:

  return v13;
}

uint64_t BundleHasEntitlementWithMaybePreloadedEntitlements(_LSDatabase *a1, const LSBundleData *a2, NSDictionary *a3, NSString *a4)
{
  v4 = BundleEntitlementValueWithMaybePreloadedEntitlements(a1, a2, a3, a4);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id BundleEntitlementValueWithMaybePreloadedEntitlements(_LSDatabase *a1, const LSBundleData *a2, NSDictionary *a3, NSString *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    v11 = [(NSDictionary *)v8 objectForKey:v9];
  }

  else
  {
    entitlements = a2->base.entitlements;
    v13 = v9;
    v14 = _LSPlistGet(v7, entitlements);
    v11 = _LSPlistDataGetValueForKey(v14, v13, 0);
  }

  return v11;
}

BOOL BundleCanBeCandidateAndMakesSubordinateClaims(void *a1, int a2, const LSBundleData *a3, void *a4, void *a5, void *a6, unsigned __int8 *a7)
{
  v13 = a1;
  if (BundleCanBeCandidate(v13, a3, a4, a5, a6))
  {
    v20.db = v13;
    v14 = *a7;
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:*(a7 + 1)];
    if (v14 == 1)
    {
      v16 = _LSCanBundleHandleNodeOrSchemeOrUTI(&v20, a2, 0, 0, v15, 14);
    }

    else
    {
      v16 = _LSCanBundleHandleNodeOrSchemeOrUTI(&v20, a2, 0, v15, 0, 14);
    }

    v18 = v16;

    v17 = v18 != 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t BundleCanBeCandidate(void *a1, const LSBundleData *a2, void *a3, void *a4, void *a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v14)
  {
    v15 = *v21;
    while (2)
    {
      v16 = 0;
      do
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (BundleHasEntitlementWithMaybePreloadedEntitlements(v9, a2, v10, *(*(&v20 + 1) + 8 * v16)))
        {
          v18 = 1;
          v17 = v13;
          goto LABEL_12;
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if (v12)
  {
    v17 = BundleEntitlementValueWithMaybePreloadedEntitlements(v9, a2, v10, &cfstr_ApplicationIde.isa);
    v18 = [v12 isEqual:{v17, v20}];
LABEL_12:
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t std::__function::__func<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0,std::allocator<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0>,LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF635C0;
  a2[1] = v2;
  return result;
}

void *std::__function::__func<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0,std::allocator<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0>,LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *(a2 + 8);
  if (v4 == 1)
  {
    v5 = *a2;
    *a2 = 0;
  }

  else
  {
    v5 = 0;
  }

  v6 = *a3;
  v7 = [MEMORY[0x1E695DFD8] set];
  v8 = v7;
  v14 = v7;
  if (v4)
  {
    v9 = v5;
  }

  else
  {
    v10 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      std::__function::__func<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0,std::allocator<_LSServer_NotePreferenceSetForCategory(LSDefaultAppCategory)::$_0>,LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()();
    }

    LaunchServices::_LSServer_DefaultAppsExtraStateManager(v11);
    v9 = [MEMORY[0x1E695DFD8] set];
  }

  v14 = v9;

  LaunchServices::LSDefaultAppsExtraState::setCategoryHasBeenSet(&v14, *(a1 + 8), 1);
  v12 = v14;
  if (v4)
  {
  }

  return v12;
}

void sub_181748FD0(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void LaunchServices::LSDefaultAppsExtraState::setCategoryHasBeenSet(void **a1, uint64_t a2, int a3)
{
  v5 = *a1;
  if (a3)
  {
    v11 = *a1;
    if (!v5)
    {
      v11 = [MEMORY[0x1E695DFD8] set];
    }

    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{a2, v11}];
    v7 = [v12 setByAddingObject:v6];
    v8 = *a1;
    *a1 = v7;

    if (!v5)
    {
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZN14LaunchServices23LSDefaultAppsExtraState21setCategoryHasBeenSetE20LSDefaultAppCategoryb_block_invoke;
    v13[3] = &__block_descriptor_40_e22_B24__0__NSNumber_8_B16l;
    v13[4] = a2;
    v9 = [v5 objectsPassingTest:v13];
    v10 = *a1;
    *a1 = v9;
  }
}

void sub_181749124(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9)
{
  if (!v9)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t ___ZN14LaunchServices23LSDefaultAppsExtraState21setCategoryHasBeenSetE20LSDefaultAppCategoryb_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 32)];
  v5 = [v3 isEqual:v4];

  return v5 ^ 1u;
}

uint64_t std::__function::__value_func<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void ___ZL48_LSHasPreferenceEverBeenSetForDefaultAppCategory20LSDefaultAppCategory_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_181749478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::~optional(va);

  _Unwind_Resume(a1);
}

void LaunchServices::FeatureFlagPredicateEvaluation::Predicate::parse_dictionary(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v41[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  if (_NSIsNSDictionary())
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x4812000000;
    v35 = __Block_byref_object_copy__32;
    v36 = __Block_byref_object_dispose__32;
    v37 = &unk_1818533FF;
    memset(v38, 0, sizeof(v38));
    v25 = 0;
    v26 = &v25;
    v27 = 0x4812000000;
    v28 = __Block_byref_object_copy__32;
    v29 = __Block_byref_object_dispose__32;
    v30 = &unk_1818533FF;
    memset(v31, 0, sizeof(v31));
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__80;
    v23 = __Block_byref_object_dispose__81;
    v24 = 0;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = ___ZN14LaunchServices30FeatureFlagPredicateEvaluation9Predicate16parse_dictionaryEP12NSDictionaryPU15__autoreleasingP7NSError_block_invoke;
    v18[3] = &unk_1E6A1D1B0;
    v18[4] = &v19;
    v18[5] = &v32;
    v18[6] = &v25;
    [v5 enumerateKeysAndObjectsUsingBlock:v18];
    v6 = v20[5];
    if (v6)
    {
      if (a2)
      {
        *a2 = v6;
      }

      *a3 = 0;
      *(a3 + 48) = 0;
    }

    else
    {
      v8 = v33;
      v9 = v33[8];
      v10 = *(v33 + 3);
      v33[7] = 0;
      v8[8] = 0;
      v8[6] = 0;
      v11 = v26;
      v12 = v26[8];
      v13 = *(v26 + 3);
      v26[7] = 0;
      v11[8] = 0;
      v11[6] = 0;
      memset(v15, 0, sizeof(v15));
      memset(v14, 0, sizeof(v14));
      *a3 = v10;
      *(a3 + 16) = v9;
      v16[0] = 0;
      v16[1] = 0;
      *(a3 + 24) = v13;
      *(a3 + 40) = v12;
      v16[2] = 0;
      memset(v17, 0, sizeof(v17));
      *(a3 + 48) = 1;
      v39 = v17;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v39);
      v39 = v16;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v39);
      v39 = v14;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v39);
      v39 = v15;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v39);
    }

    _Block_object_dispose(&v19, 8);

    _Block_object_dispose(&v25, 8);
    v19 = v31;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v19);
    _Block_object_dispose(&v32, 8);
    v25 = v38;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v25);
  }

  else
  {
    if (a2)
    {
      v40 = *MEMORY[0x1E696A278];
      v41[0] = @"Predicate was not a dictionary";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:&v40 count:1];
      *a2 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v7, "parse_dictionary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 106);
    }

    *a3 = 0;
    *(a3 + 48) = 0;
  }
}

uint64_t LaunchServices::DelayedInitable<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::emplace<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::DelayedInitable<LaunchServices::Predicate>::emplace(Args &&...) [T = LaunchServices::Predicate, Args = <LaunchServices::Predicate>]"}];
    [v5 handleFailureInFunction:v6 file:@"LSObjCPlusPlusHelpers.hpp" lineNumber:34 description:@"can't re-emplace a DelayedInitable"];
  }

  return std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::Predicate,void>(a1, a2);
}

uint64_t LaunchServices::FeatureFlagPredicateEvaluation::Predicate::evaluate(uint64_t **a1, void *a2)
{
  v3 = a2;
  v4 = *a1;
  v5 = a1[1];
  while (v4 != v5)
  {
    if (*(v4 + 47) >= 0)
    {
      v6 = v4 + 24;
    }

    else
    {
      v6 = *(v4 + 24);
    }

    if (*(v4 + 23) >= 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = *v4;
    }

    if (([v3 isFeature:v6 enabledInDomain:v7] & 1) == 0)
    {
      v15 = 0;
      goto LABEL_26;
    }

    v4 += 48;
  }

  v8 = a1[3];
  v9 = a1[4];
  if (v8 == v9)
  {
    v15 = 1;
  }

  else
  {
    v10 = v8 + 3;
    do
    {
      if (*(v10 + 23) >= 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = *v10;
      }

      if (*(v10 - 1) >= 0)
      {
        v12 = v10 - 3;
      }

      else
      {
        v12 = *(v10 - 3);
      }

      v13 = [v3 isFeature:v11 enabledInDomain:v12];
      if (v10 + 3 == v9)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      v10 += 6;
    }

    while (v14 != 1);
    v15 = v13 ^ 1u;
  }

LABEL_26:

  return v15;
}

uint64_t __Block_byref_object_copy__80(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN14LaunchServices30FeatureFlagPredicateEvaluation9Predicate16parse_dictionaryEP12NSDictionaryPU15__autoreleasingP7NSError_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  if ((_NSIsNSString() & 1) == 0)
  {
    v48 = *MEMORY[0x1E696A278];
    v49[0] = @"Predicate key not a feature flag";
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    v19 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "parse_dictionary_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 114);
    v20 = *(*(a1 + 32) + 8);
    v21 = *(v20 + 40);
    *(v20 + 40) = v19;

LABEL_10:
    *a4 = 1;
    goto LABEL_11;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v46 = *MEMORY[0x1E696A278];
    v47 = @"bad requirement value";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v23 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v22, "parse_dictionary_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 119);
    v24 = *(*(a1 + 32) + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = v23;

    goto LABEL_10;
  }

  v9 = LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::from_nsstring(v38, v7);
  if (v42)
  {
    v10 = [v8 BOOLValue];
    v11 = 48;
    if (v10)
    {
      v11 = 40;
    }

    v12 = *(*(a1 + v11) + 8);
    v13 = v12[7];
    v14 = v12[8];
    if (v13 >= v14)
    {
      v30 = v12[6];
      v31 = 0xAAAAAAAAAAAAAAABLL * ((v13 - v30) >> 4);
      v32 = v31 + 1;
      if (v31 + 1 > 0x555555555555555)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      v33 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v30) >> 4);
      if (2 * v33 > v32)
      {
        v32 = 2 * v33;
      }

      if (v33 >= 0x2AAAAAAAAAAAAAALL)
      {
        v34 = 0x555555555555555;
      }

      else
      {
        v34 = v32;
      }

      v43[4] = v12 + 6;
      if (v34)
      {
        std::allocator<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::allocate_at_least[abi:nn200100]((v12 + 6), v34);
      }

      v35 = 48 * v31;
      v43[0] = 0;
      v43[1] = v35;
      v43[3] = 0;
      v36 = *v38;
      *(v35 + 16) = v39;
      *v35 = v36;
      v38[1] = 0;
      v39 = 0;
      v38[0] = 0;
      v37 = *__p;
      *(v35 + 40) = v41;
      *(v35 + 24) = v37;
      __p[1] = 0;
      v41 = 0;
      __p[0] = 0;
      v43[2] = 48 * v31 + 48;
      std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__swap_out_circular_buffer(v12 + 6, v43);
      v17 = v12[7];
      std::__split_buffer<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~__split_buffer(v43);
    }

    else
    {
      v15 = *v38;
      *(v13 + 16) = v39;
      *v13 = v15;
      v38[0] = 0;
      v38[1] = 0;
      v16 = v41;
      *(v13 + 24) = *__p;
      *(v13 + 40) = v16;
      v39 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v41 = 0;
      v17 = v13 + 48;
    }

    v12[7] = v17;
  }

  else
  {
    v44 = *MEMORY[0x1E696A278];
    v45 = @"Predicate key unparseable";
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:{1, v9}];
    v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v26, "parse_dictionary_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSFeatureFlagPredicateEvaluator.mm", 125);
    v28 = *(*(a1 + 32) + 8);
    v29 = *(v28 + 40);
    *(v28 + 40) = v27;

    *a4 = 1;
  }

  if (v42 == 1)
  {
    if (SHIBYTE(v41) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v39) < 0)
    {
      operator delete(v38[0]);
    }
  }

LABEL_11:
}

void sub_181749FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__split_buffer<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~__split_buffer(va1);
  std::optional<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~optional(va);

  _Unwind_Resume(a1);
}

double LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::from_nsstring@<D0>(uint64_t *__return_ptr a1@<X8>, LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier *this@<X0>)
{
  v3 = [(LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier *)this UTF8String];
  if (!v3 || ((v5 = v3, v6 = strlen(v3), v7 = &v5[v6], (v8 = memchr(v5, 47, v6)) != 0) ? (v9 = v8) : (v9 = v7), v9 != v7 ? (v10 = v9 == v5) : (v10 = 1), !v10 ? (v11 = v9 == v7 - 1) : (v11 = 1), v11))
  {
    *a1 = 0;
    *(a1 + 48) = 0;
  }

  else
  {
    LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::FeatureFlagSpecifier(&v12, v5, v9 - v5, v9 + 1, v7 - (v9 + 1));
    *a1 = v12;
    a1[2] = v13;
    result = *&v14;
    *(a1 + 3) = v14;
    a1[5] = v15;
    *(a1 + 48) = 1;
  }

  return result;
}

void std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 48;
        std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void *LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier::FeatureFlagSpecifier(void *__dst, void *__src, size_t __len, void *a4, size_t a5)
{
  if (__len > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  *(__dst + 23) = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  *(__dst + __len) = 0;
  if (a5 > 0x7FFFFFFFFFFFFFF7)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  if (a5 >= 0x17)
  {
    operator new();
  }

  v10 = __dst + 3;
  *(__dst + 47) = a5;
  if (a5)
  {
    memmove(v10, a4, a5);
  }

  *(v10 + a5) = 0;
  return __dst;
}

void sub_18174A2F0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 16);
      *v8 = v9;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v10 = *(v7 + 24);
      *(v8 + 40) = *(v7 + 40);
      *(v8 + 24) = v10;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v7 += 48;
      v8 += 48;
    }

    while (v7 != v5);
    do
    {
      std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(v4);
      v4 += 48;
    }

    while (v4 != v5);
  }

  a2[1] = v6;
  v11 = *a1;
  *a1 = v6;
  a1[1] = v11;
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::allocator<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t std::__split_buffer<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::__destroy_at[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier,0>(i - 48);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::optional<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::~optional(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v3);
    v3 = a1;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  return a1;
}

uint64_t std::optional<LaunchServices::FeatureFlagPredicateEvaluation::Predicate>::emplace[abi:nn200100]<LaunchServices::FeatureFlagPredicateEvaluation::Predicate,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 48) == 1)
  {
    v5 = (a1 + 24);
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v5);
    v5 = a1;
    std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v5);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a1 + 48) = 1;
  return a1;
}

void sub_18174A908(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

void sub_18174C0A8(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_18174C224(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

void sub_18174C368(_Unwind_Exception *a1)
{
  v5 = v3;

  os_unfair_lock_unlock((v1 + v4));
  _Unwind_Resume(a1);
}

void sub_18174C508(_Unwind_Exception *a1)
{
  v4 = v3;
  os_unfair_lock_unlock((v2 + v4));

  _Unwind_Resume(a1);
}

id _LSLazyPropertyListWithLazyPropertyLists(void *a1)
{
  v1 = [_LSLazyPropertyList lazyPropertyListWithLazyPropertyLists:a1];

  return v1;
}

id _LSLazyPropertyListWithPropertyList(void *a1)
{
  v1 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:a1];

  return v1;
}

id _LSLazyPropertyListWithPropertyListData(void *a1)
{
  v1 = [_LSLazyPropertyList lazyPropertyListWithPropertyListData:a1];

  return v1;
}

unint64_t LaunchServices::LocalizedString::Create(void *a1, void *a2, void *a3)
{
  v51[1] = *MEMORY[0x1E69E9840];
  v35 = a1;
  v6 = a2;
  v7 = a3;
  v48 = 0;
  v47 = 0;
  v36 = v7;
  if (!v6 || (v7 = [v6 count], !v36))
  {
    if (!v7)
    {
      v8 = 0;
      goto LABEL_52;
    }
  }

  v9 = objc_autoreleasePoolPush();
  v10 = [v6 allKeys];
  v11 = v10;
  if (v10)
  {
    if ([v10 containsObject:@"LSDefaultLocalizedValue"])
    {
      v34 = v11;
    }

    else
    {
      v12 = [v11 arrayByAddingObject:@"LSDefaultLocalizedValue"];

      v34 = v12;
    }
  }

  else
  {
    v51[0] = @"LSDefaultLocalizedValue";
    v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:1];
  }

  objc_autoreleasePoolPop(v9);
  v13 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:0];
  v14 = +[_LSStringLocalizer missingLocalizationPlaceholder];
  v15 = 0;
  v8 = 0;
  if (!v34 || !v13)
  {
    goto LABEL_51;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v34;
  v16 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (!v16)
  {
    goto LABEL_25;
  }

  v17 = *v44;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v44 != v17)
      {
        objc_enumerationMutation(obj);
      }

      v19 = *(*(&v43 + 1) + 8 * i);
      v20 = [v6 objectForKeyedSubscript:v19];
      if ([v20 isEqual:v14])
      {
      }

      else if (v20)
      {
        goto LABEL_23;
      }

      if ([v19 isEqual:@"LSDefaultLocalizedValue"])
      {
        v20 = v36;
      }

      else
      {
        v20 = 0;
      }

LABEL_23:
      [v13 addPointer:v20];
    }

    v16 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  }

  while (v16);
LABEL_25:

  v21 = objc_alloc(MEMORY[0x1E695DFA8]);
  v22 = [v21 initWithCapacity:{objc_msgSend(v13, "count")}];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v23 = v13;
  v24 = [v23 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v24)
  {
    v25 = *v40;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v40 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v39 + 1) + 8 * j);
        v28 = v27;
        if (!v27)
        {
          v21 = [MEMORY[0x1E695DFB0] null];
          v28 = v21;
        }

        [v22 addObject:v28];
        if (!v27)
        {
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v24);
  }

  v38 = 0;
  if ([v22 count] == 1 && objc_msgSend(obj, "count") && objc_msgSend(v23, "count"))
  {
    v29 = [obj objectAtIndexedSubscript:0];
    StringForCFString = _LSDatabaseCreateStringForCFString(v35, v29, 0);
    LODWORD(v47) = StringForCFString;

    v30 = _LSDatabaseCreateStringForCFString(v35, [v23 pointerAtIndex:0], 0);
    HIDWORD(v47) = v30;
    LOBYTE(v48) = v48 | 2;
  }

  else
  {
    StringForCFString = _LSDatabaseCreateStringArray(v35, obj, 0, &v38 + 1);
    LODWORD(v47) = StringForCFString;
    v30 = _LSDatabaseCreateStringArrayWithNullValues(v35, v23, 0, &v38);
    HIDWORD(v47) = v30;
  }

  if ([obj count] == 1)
  {
    v31 = [obj objectAtIndexedSubscript:0];
    v32 = [v31 isEqual:@"LSDefaultLocalizedValue"];
    LOBYTE(v48) = v48 & 0xFE | v32;
  }

  else
  {
    LOBYTE(v48) = v48 & 0xFE;
  }

  v15 = 0;
  v8 = 0;
  if (StringForCFString && v30)
  {
    if (v38 & 0x100) != 0 || (v38)
    {
      v8 = 0;
      v15 = 0;
    }

    else
    {
      v8 = v47;
      StringForCFString = v47 >> 8;
      v15 = v48 | 0x100000000;
    }
  }

LABEL_51:
  if ((v15 & 0x100000000) == 0)
  {
LABEL_52:
    LaunchServices::LocalizedString::dispose(&v47, v35);
  }

  return v8 | (StringForCFString << 8);
}

void LaunchServices::LocalizedString::dispose(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(this + 8) & 2) != 0)
  {
    [(_LSDatabase *)v3 store];
    _CSStringRelease();
    [(_LSDatabase *)v4 store];
    _CSStringRelease();
  }

  else
  {
    _LSDatabaseDisposeStringArray(v3, *this);
    _LSDatabaseDisposeStringArray(v4, *(this + 1));
  }
}

uint64_t LaunchServices::LocalizedString::Add(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static _LSLocalizedStringID LaunchServices::LocalizedString::Add(_LSDatabase *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull, NSString *__strong _Nullable)"}];
    [v12 handleFailureInFunction:v13 file:@"LSLocalizedString.mm" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  v8 = LaunchServices::LocalizedString::Create(v5, v6, v7);
  if ((v9 & 0x100000000) != 0)
  {
    v14 = v8;
    v15 = v9;
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    v10 = CSStoreAllocUnitWithData();
    if (!v10)
    {
      LaunchServices::LocalizedString::dispose(&v14, v5);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void sub_18174D480(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void LaunchServices::LocalizedString::Remove(LaunchServices::LocalizedString *this, _LSDatabase *a2)
{
  v3 = this;
  v7 = v3;
  if (!v3)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static void LaunchServices::LocalizedString::Remove(_LSDatabase *__strong _Nonnull, _LSLocalizedStringID)"}];
    [v5 handleFailureInFunction:v6 file:@"LSLocalizedString.mm" lineNumber:143 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];

    v3 = 0;
  }

  v4 = LaunchServices::LocalizedString::Get(v3, a2);
  if (v4)
  {
    LaunchServices::LocalizedString::dispose(v4, v7);
    [(_LSDatabase *)v7 store];
    [(_LSDatabase *)v7 schema];
    CSStoreFreeUnit();
  }
}

void LaunchServices::LocalizedString::GetVisualizationFunctions(unsigned int *(**__return_ptr a1)(LaunchServices::LocalizedString **this, LSContext *a2, _LSDatabase *a3)@<X8>)
{
  *a1 = LaunchServices::Localization::getSummaryOfLocalizedString;
  a1[1] = LaunchServices::Localization::displayLocalizedString;
  a1[2] = 0;
}

unsigned int *LaunchServices::Localization::getSummaryOfLocalizedString(LaunchServices::LocalizedString **this, LSContext *a2, _LSDatabase *a3)
{
  v4 = LaunchServices::LocalizedString::Get(*this, a3);
  if (v4)
  {
    v4 = LaunchServices::LocalizedString::localizeUnsafely(v4, *this, 0);
  }

  return v4;
}

BOOL LaunchServices::Localization::displayLocalizedString(LaunchServices::LocalizedString **this, LSContext *a2, _LSDatabase *a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v9 = LaunchServices::LocalizedString::Get(*this, a3);
  if (v9)
  {
    *v12 = 0;
    v10 = LaunchServices::Localization::getLocalizedValuesForDisplay(this, v9, &v12[1], v12, v8);
    [v7 write:@"default only" BOOL:v12[1]];
    [v7 write:@"all values equal" BOOL:v12[0]];
    [v7 writeArray:v10];
  }

  return v9 != 0;
}

void LaunchServices::CanonicalString::Create(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v15 = a1;
  v7 = a2;
  v8 = a3;
  *a4 = 0;
  a4[16] = 0;
  if (!v15)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static std::optional<CanonicalString> LaunchServices::CanonicalString::Create(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
    [v11 handleFailureInFunction:v12 file:@"LSLocalizedString.mm" lineNumber:429 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }

LABEL_13:
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static std::optional<CanonicalString> LaunchServices::CanonicalString::Create(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
    [v13 handleFailureInFunction:v14 file:@"LSLocalizedString.mm" lineNumber:430 description:{@"Invalid parameter not satisfying: %@", @"canonical != nil"}];

    goto LABEL_3;
  }

  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = 0uLL;
  if (v8 && [v8 count] && (LODWORD(v16) = _LSDatabaseCreateStringForCFString(v15, v7, 0), v16) && (v9 = LaunchServices::LocalizedString::Create(v15, v8, v7), (v10 & 0x100000000) != 0))
  {
    *(&v16 + 4) = v9;
    HIDWORD(v16) = v10;
    *a4 = v16;
    a4[16] = 1;
  }

  else
  {
    LaunchServices::CanonicalString::dispose(&v16, v15);
  }
}

void LaunchServices::CanonicalString::dispose(LaunchServices::CanonicalString *this, _LSDatabase *a2)
{
  v3 = a2;
  [(_LSDatabase *)v3 store];
  _CSStringRelease();
  LaunchServices::LocalizedString::dispose((this + 4), v3);
}

uint64_t LaunchServices::CanonicalString::Add(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static _LSCanonicalStringID LaunchServices::CanonicalString::Add(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
    [v11 handleFailureInFunction:v12 file:@"LSLocalizedString.mm" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"canonical != nil"}];

    if (v7)
    {
      goto LABEL_4;
    }

LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static _LSCanonicalStringID LaunchServices::CanonicalString::Add(_LSDatabase *__strong _Nonnull, NSString *__strong _Nonnull, NSDictionary<NSString *, NSString *> *__strong _Nonnull)"}];
  [v9 handleFailureInFunction:v10 file:@"LSLocalizedString.mm" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];

  if (!v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!v7)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (![v7 count])
  {
    goto LABEL_10;
  }

  LaunchServices::CanonicalString::Create(v5, v6, v7, &v15);
  if (v16 != 1)
  {
    goto LABEL_10;
  }

  v14 = v15;
  [(_LSDatabase *)v5 store];
  [(_LSDatabase *)v5 schema];
  v8 = CSStoreAllocUnitWithData();
  if (!v8)
  {
    LaunchServices::CanonicalString::dispose(&v14, v5);
  }

LABEL_11:

  return v8;
}

void sub_18174DB70(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::CanonicalString::Get(LaunchServices::CanonicalString *this, _LSDatabase *a2)
{
  v2 = this;
  if (!v2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static const CanonicalString *LaunchServices::CanonicalString::Get(_LSDatabase *__strong _Nonnull, _LSCanonicalStringID)"}];
    [v5 handleFailureInFunction:v6 file:@"LSLocalizedString.mm" lineNumber:495 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  [(_LSDatabase *)v2 store];
  [(_LSDatabase *)v2 schema];
  Unit = CSStoreGetUnit();

  return Unit;
}

uint64_t LaunchServices::CanonicalString::Find(LaunchServices::CanonicalString *this, _LSDatabase *a2, NSString *a3)
{
  v4 = this;
  v5 = a2;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (_LSDatabaseGetStringForCFString(v4, v5, 0))
  {
    [(_LSDatabase *)v4 store];
    [(_LSDatabase *)v4 schema];
    _CSStoreEnumerateUnits();
  }

  v6 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v6;
}

void sub_18174DDC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

uint64_t ___ZN14LaunchServices15CanonicalString4FindEP11_LSDatabaseP8NSString_block_invoke(uint64_t result, uint64_t a2, _DWORD *a3, uint64_t a4, _BYTE *a5)
{
  if (*a3 == *(result + 40))
  {
    *(*(*(result + 32) + 8) + 24) = a3;
    *a5 = 1;
  }

  return result;
}

void LaunchServices::CanonicalString::GetVisualizationFunctions(unsigned int *(**__return_ptr a1)(LaunchServices::CanonicalString **this, LSContext *a2, _LSDatabase *a3)@<X8>)
{
  *a1 = LaunchServices::Localization::getSummaryOfCanonicalString;
  a1[1] = LaunchServices::Localization::displayCanonicalString;
  a1[2] = 0;
}

unsigned int *LaunchServices::Localization::getSummaryOfCanonicalString(LaunchServices::CanonicalString **this, LSContext *a2, _LSDatabase *a3)
{
  v4 = LaunchServices::CanonicalString::Get(*this, a3);
  if (v4)
  {
    [(_LSDatabase *)*this store];
    v4 = _CSStringCopyCFString();
  }

  return v4;
}

BOOL LaunchServices::Localization::displayCanonicalString(LaunchServices::CanonicalString **this, LSContext *a2, _LSDatabase *a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v7 = a4;
  v8 = LaunchServices::CanonicalString::Get(*this, a3);
  if (v8)
  {
    [(_LSDatabase *)*this store];
    v9 = _CSStringCopyCFString();
    [v7 write:@"canonical" string:v9];
    v11 = LaunchServices::Localization::getLocalizedValuesForDisplay(this, (v8 + 4), 0, 0, v10);
    [v7 write:@"localized" array:v11];
  }

  return v8 != 0;
}

id LaunchServices::Localization::getLocalizedValuesForDisplay(_LSDatabase **this, LSContext *a2, const LaunchServices::LocalizedString *a3, BOOL *a4, BOOL *a5)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = objc_alloc_init(MEMORY[0x1E695DF70]);
  context = objc_autoreleasePoolPush();
  v37 = +[_LSStringLocalizer missingLocalizationPlaceholder];
  v9 = LaunchServices::LocalizedString::getAllUnsafeLocalizations(a2, *this, v37, a3, a4);
  v10 = v9;
  if (!v9)
  {
    goto LABEL_34;
  }

  v11 = [v9 allValues];
  v12 = [objc_alloc(MEMORY[0x1E696AB50]) initWithArray:v11];
  v13 = v12;
  if (v12)
  {
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v14 = v12;
    v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      v18 = *v48;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v48 != v18)
          {
            objc_enumerationMutation(v14);
          }

          v20 = *(*(&v47 + 1) + 8 * i);
          if ([v14 countForObject:v20] == 1)
          {
            v21 = v20;

            ++v16;
            v17 = v21;
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
      }

      while (v15);

      if (v16 == 1 && [v14 count] != 1)
      {
        goto LABEL_18;
      }
    }

    else
    {

      v17 = 0;
    }
  }

  v17 = 0;
LABEL_18:

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v22 = [v10 allKeys];
  v23 = [v22 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v24)
  {
    v25 = *v44;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v44 != v25)
        {
          objc_enumerationMutation(v23);
        }

        v27 = *(*(&v43 + 1) + 8 * j);
        v28 = [v10 objectForKeyedSubscript:v27];
        v29 = v28;
        if (v28)
        {
          if ([(NSString *)v28 isEqual:v17])
          {
            v30 = objc_opt_new();
            [v30 setInsertsNewlines:0];
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v38[2] = ___ZN14LaunchServices12LocalizationL28getLocalizedValuesForDisplayEP9LSContextPKNS_15LocalizedStringEPbS6__block_invoke;
            v38[3] = &unk_1E6A1D228;
            v39 = v29;
            v40 = v37;
            v31 = v30;
            v41 = v31;
            v42 = v27;
            [v31 withTextColor:0 backgroundColor:16766073 block:v38];
            v32 = [v31 attributedString];
            [v36 addObject:v32];
          }

          else
          {
            v31 = [objc_alloc(MEMORY[0x1E696AD60]) initWithCapacity:{objc_msgSend(v27, "length") + -[NSString length](v29, "length") + 7}];
            [v31 appendString:@""];
            [v31 appendString:v27];
            if (v29 == v37)
            {
              v33 = @" = ?";
            }

            else
            {
              [v31 appendString:@" = "];
              [v31 appendString:v29];
              v33 = @"";
            }

            [v31 appendString:v33];
            [v36 addObject:v31];
          }
        }
      }

      v24 = [v23 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v24);
  }

LABEL_34:
  objc_autoreleasePoolPop(context);

  return v36;
}

uint64_t ___ZN14LaunchServices12LocalizationL28getLocalizedValuesForDisplayEP9LSContextPKNS_15LocalizedStringEPbS6__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  if (v2 == v3)
  {
    return [v4 writeFormat:@"%@ = ?", v5, v7];
  }

  else
  {
    return [v4 writeFormat:@"%@ = %@", v5, v2];
  }
}

void sub_18174E604(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = _LSEligibilityListenerNotificationToken;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void LaunchServices::EligibilityCache::removeEligibilityChangedListener(os_unfair_lock_s *this, objc_object *a2)
{
  v3 = a2;
  os_unfair_lock_lock(this);

  v4 = v3;
  std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__erase_unique<unsigned long>(&this[8], &v4);
  os_unfair_lock_unlock(this);
}

BOOL _LSServer_AcquiesceToDeputizationForDomain(unint64_t a1, uint64_t a2)
{
  _LSAssertRunningInServer("BOOL _LSServer_AcquiesceToDeputizationForDomain(os_eligibility_domain_t)", a2);
  result = 1;
  if (a1 > 0x3C || ((1 << a1) & 0x1000260001000050) == 0)
  {
    return a1 == 131;
  }

  return result;
}

id LaunchServices::EligibilityCache::getNotifyStateQueue(LaunchServices::EligibilityCache *this)
{
  if (LaunchServices::EligibilityCache::getNotifyStateQueue(void)::onceToken != -1)
  {
    LaunchServices::EligibilityCache::getNotifyStateQueue();
  }

  v2 = LaunchServices::EligibilityCache::getNotifyStateQueue(void)::result;

  return v2;
}

void ___ZN14LaunchServices16EligibilityCache19getNotifyStateQueueEv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.eligibilitycache", v2);
  v1 = LaunchServices::EligibilityCache::getNotifyStateQueue(void)::result;
  LaunchServices::EligibilityCache::getNotifyStateQueue(void)::result = v0;
}

id LaunchServices::EligibilityCache::getCallbackQueue(LaunchServices::EligibilityCache *this)
{
  if (LaunchServices::EligibilityCache::getCallbackQueue(void)::onceToken != -1)
  {
    LaunchServices::EligibilityCache::getCallbackQueue();
  }

  v2 = LaunchServices::EligibilityCache::getCallbackQueue(void)::result;

  return v2;
}

void ___ZN14LaunchServices16EligibilityCache16getCallbackQueueEv_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.eligibilitycache.callbacks", v2);
  v1 = LaunchServices::EligibilityCache::getCallbackQueue(void)::result;
  LaunchServices::EligibilityCache::getCallbackQueue(void)::result = v0;
}

void LaunchServices::EligibilityCache::ensureNotificationListener(uint64_t a1)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke;
    v5[3] = &__block_descriptor_48_e5_v8__0l;
    v5[4] = a1;
    v5[5] = a1;
    v6 = MEMORY[0x1865D71B0](v5);
    std::optional<LaunchServices::EligibilityCache::NotifyState>::emplace[abi:nn200100]<void({block_pointer} {__strong})(void),void>(a1 + 64, &v6);

    v3 = _LSDefaultLog(v2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "registered eligibility notification listener", v4, 2u);
    }
  }
}

uint64_t std::optional<LaunchServices::EligibilityCache::NotifyState>::emplace[abi:nn200100]<void({block_pointer} {__strong})(void),void>(uint64_t a1, void **a2)
{
  if (*(a1 + 16) == 1)
  {
    LaunchServices::notifyd::NotifyToken::~NotifyToken((a1 + 8));

    *(a1 + 16) = 0;
  }

  result = LaunchServices::EligibilityCache::NotifyState::NotifyState(a1, *a2);
  *(a1 + 16) = 1;
  return result;
}

void ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "eligibility changed for cache", buf, 2u);
  }

  v4 = *(a1 + 40);
  os_unfair_lock_lock(v4);
  v6 = *(v2 + 16);
  v5 = (v2 + 16);
  std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy((v5 - 1), v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
  *buf = 0;
  v16 = 0;
  v17 = 0;
  v8 = v5[2];
  if (v8 != v5 + 3)
  {
    do
    {
      v7 = std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::push_back[abi:nn200100](buf, v8 + 5);
      v9 = v8[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      v8 = v10;
    }

    while (v10 != v5 + 3);
  }

  v12 = LaunchServices::EligibilityCache::getCallbackQueue(v7);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke_12;
  block[3] = &__block_descriptor_56_ea8_32c70_ZTSNSt3__16vectorIU8__strongU13block_pointerFvvENS_9allocatorIS3_EEEE_e5_v8__0l;
  memset(v14, 0, sizeof(v14));
  std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:nn200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(v14, *buf, v16, (v16 - *buf) >> 3);
  dispatch_async(v12, block);

  v18 = v14;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v18);
  v18 = buf;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100](&v18);
  os_unfair_lock_unlock(v4);
}

void sub_18174EB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  *(v19 - 40) = &a17;
  std::vector<LSApplicationRecord * {__strong}>::__destroy_vector::operator()[abi:nn200100]((v19 - 40));
  os_unfair_lock_unlock(v17);
  _Unwind_Resume(a1);
}

uint64_t std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::push_back[abi:nn200100](void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v8 = (v5 - *a1) >> 3;
    if ((v8 + 1) >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    v10 = v9 >> 2;
    if (v9 >> 2 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v13[4] = a1;
    if (v11)
    {
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, v11);
    }

    v12 = (8 * v8);
    v13[0] = 0;
    v13[1] = v12;
    v13[3] = 0;
    *v12 = MEMORY[0x1865D71B0](*a2);
    v13[2] = v12 + 1;
    std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer(a1, v13);
    v7 = a1[1];
    result = std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(v13);
  }

  else
  {
    result = MEMORY[0x1865D71B0](*a2);
    *v5 = result;
    v7 = v5 + 1;
  }

  a1[1] = v7;
  return result;
}

void sub_18174EC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices16EligibilityCache26ensureNotificationListenerERKNSt3__110lock_guardINS_17unfair_lock_mutexEEE_block_invoke_12(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  while (v1 != v2)
  {
    v3 = MEMORY[0x1865D71B0](*v1);
    v3[2]();

    ++v1;
  }
}

uint64_t *__copy_helper_block_ea8_32c70_ZTSNSt3__16vectorIU8__strongU13block_pointerFvvENS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  return std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:nn200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

uint64_t LaunchServices::EligibilityCache::refreshAnswerForDomain(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  LaunchServices::EligibilityCache::ensureNotificationListener(a1);
  v7 = *(a1 + 56);
  v17 = 0;
  v8 = (*(*v7 + 16))(v7, a3, &v17);
  v10 = v9;
  v11 = v17;
  v12 = v11;
  if (v10)
  {
    *&v16 = a3;
    *(&v16 + 1) = v8;
    std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::__emplace_unique_key_args<os_eligibility_domain_t,std::pair<os_eligibility_domain_t,os_eligibility_answer_t>>(a1 + 8, &v16, &v16);
  }

  else
  {
    v13 = _LSDefaultLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::refreshAnswerForDomain();
    }

    if (a4)
    {
      v14 = v12;
      *a4 = v12;
    }
  }

  return v10 & 1;
}

BOOL LaunchServices::EligibilityCache::getEligibilityGatedBrowsersCanBind(LaunchServices::EligibilityCache *this)
{
  v9 = 0;
  v1 = LaunchServices::EligibilityCache::cachedAnswerForDomain(this, 4uLL, &v9);
  v3 = v2;
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = interpretEligibilityAnswerForBrowserDomain(v1);
  }

  else
  {
    v7 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::getEligibilityGatedBrowsersCanBind(v5, v7);
    }

    v6 = 0;
  }

  return v6;
}

BOOL interpretEligibilityAnswerForBrowserDomain(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 != 2 && a1 != 4)
  {
    v2 = _LSDefaultLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = "interpretEligibilityAnswerForBrowserDomain";
      v6 = 1024;
      v7 = a1;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "%s: currently not eligible for gated browser (answer %d)", &v4, 0x12u);
    }
  }

  return a1 == 4;
}

BOOL LaunchServices::EligibilityCache::getEligibilityGatedBrowserEngineEmbeddersCanBind(LaunchServices::EligibilityCache *this)
{
  v9 = 0;
  v1 = LaunchServices::EligibilityCache::cachedAnswerForDomain(this, 6uLL, &v9);
  v3 = v2;
  v4 = v9;
  v5 = v4;
  if (v3)
  {
    v6 = interpretEligibilityAnswerForBrowserDomain(v1);
  }

  else
  {
    v7 = _LSDefaultLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::getEligibilityGatedBrowserEngineEmbeddersCanBind(v5, v7);
    }

    v6 = 0;
  }

  return v6;
}

uint64_t LaunchServices::EligibilityCache::eligibleForDomainFailingClosed(uint64_t a1, unint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v3 = LaunchServices::EligibilityCache::cachedAnswerForDomain(a1, a2, &v12);
  v5 = v4;
  v6 = v12;
  v7 = v6;
  if ((v5 & 1) == 0)
  {
    v9 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::EligibilityCache::eligibleForDomainFailingClosed();
    }

    goto LABEL_11;
  }

  if (v3 == 2)
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (v3 != 4)
  {
    v10 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v14 = "eligibleForDomainFailingClosed";
      v15 = 2048;
      v16 = a2;
      v17 = 1024;
      v18 = v3;
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "%s: currently not eligible for %llu (answer %d)", buf, 0x1Cu);
    }

    goto LABEL_11;
  }

  v8 = 1;
LABEL_12:

  return v8;
}

_LSEligibilityListenerNotificationToken *LaunchServices::EligibilityCache::addEligibilityChangedListener(os_unfair_lock_s *a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(a1);
  LaunchServices::EligibilityCache::ensureNotificationListener(a1);
  v4 = [[_LSEligibilityListenerNotificationToken alloc] initWithEligibilityCache:a1];
  v6 = v4;
  v7 = [v3 copy];
  std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,objc_object * {__strong}>>(&a1[8], &v6, &v6);

  os_unfair_lock_unlock(a1);

  return v4;
}

void sub_18174F23C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v11);

  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices16EligibilityCache6sharedEv_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [__LSDefaultsGetSharedInstance(a1 a2)];
  if (v2 & 1) == 0 && ([__LSDefaultsGetSharedInstance(v2 v3)])
  {
    operator new();
  }

  operator new();
}

uint64_t LaunchServices::EligibilityCache::NotifyState::NotifyState(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LaunchServices::EligibilityCache::getNotifyStateQueue(v3);
  *a1 = v4;
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(@"com.apple.os-eligibility-domain.change", v4, v3, (a1 + 8));

  return a1;
}

uint64_t *std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__init_with_size[abi:nn200100]<void({block_pointer} {__strong}*)(void),void({block_pointer} {__strong}*)(void)>(uint64_t *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

unint64_t LaunchServices::DomainEvaluators::ServerDomainEvaluator::eligibilityForDomain(uint64_t a1, uint64_t a2, void *a3)
{
  _LSAssertRunningInServer("virtual std::optional<os_eligibility_answer_t> LaunchServices::ServerDomainEvaluator::eligibilityForDomain(os_eligibility_domain_t, NSError *__autoreleasing *)", a2);
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer && a3)
  {
    *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], domain_answer, 0, "eligibilityForDomain", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSEligibility.mm", 106);
  }

  return 0;
}

uint64_t LaunchServices::DomainEvaluators::ClientDomainEvaluator::eligibilityForDomain(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x4012000000;
  v20 = __Block_byref_object_copy__34;
  v21 = __Block_byref_object_dispose__34;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__28;
  v15 = __Block_byref_object_dispose__29;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZN14LaunchServices16DomainEvaluators21ClientDomainEvaluator20eligibilityForDomainE23os_eligibility_domain_tPU15__autoreleasingP7NSError_block_invoke;
  v10[3] = &unk_1E6A18DF0;
  v10[4] = &v11;
  v5 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v10];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = ___ZN14LaunchServices16DomainEvaluators21ClientDomainEvaluator20eligibilityForDomainE23os_eligibility_domain_tPU15__autoreleasingP7NSError_block_invoke_2;
  v9[3] = &unk_1E6A1D130;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 getEligibilityAnswerForDomain:a2 withCompletionHandler:v9];

  v6 = v18;
  if (a3 && (v18[7] & 1) == 0)
  {
    *a3 = v12[5];
    v6 = v18;
  }

  v7 = v6[6];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v7;
}

void sub_18174F740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices16DomainEvaluators21ClientDomainEvaluator20eligibilityForDomainE23os_eligibility_domain_tPU15__autoreleasingP7NSError_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = [v10 unsignedLongLongValue];
    v7 = *(*(a1 + 32) + 8);
    *(v7 + 48) = v6;
    *(v7 + 56) = 1;
  }

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
}

void std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::__map_value_compare<os_eligibility_domain_t,std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>,std::less<os_eligibility_domain_t>,true>,std::allocator<std::__value_type<os_eligibility_domain_t,os_eligibility_answer_t>>>::__emplace_unique_key_args<os_eligibility_domain_t,std::pair<os_eligibility_domain_t,os_eligibility_answer_t>>(uint64_t a1, unint64_t *a2, _OWORD *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,objc_object * {__strong}>>(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__erase_unique<unsigned long>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::erase(a1, v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::erase(uint64_t **a1, id *a2)
{
  v3 = std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__remove_node_pointer(a1, a2);

  operator delete(a2);
  return v3;
}

uint64_t *std::__tree<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,void({block_pointer} {__strong})(void)>>>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (*(v23 + 24))
  {
    v24 = *(v7 + 8);
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    *(v7 + 8) = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = *(v7 + 16);
    *(v24 + 16) = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    *(v7 + 16) = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t timeWorkBlock(void *a1)
{
  v1 = a1;
  v2 = mach_absolute_time();
  v1[2](v1);

  return mach_absolute_time() - v2;
}

uint64_t OUTLINED_FUNCTION_5_3(uint64_t a1, void *a2)
{

  return timeWorkBlock(a2);
}

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t a2)
{

  return _LSGetMachTimebase(a1, a2);
}

void sub_1817503B4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_18175083C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a15, 8);

  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

double ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke(uint64_t a1)
{
  v1 = _LSDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke_cold_1(v1);
  }

  v4 = _LSGetMachTimebase(v2, v3);
  result = 1.0e10 / (v4 / HIDWORD(v4));
  _LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcesses(void)::maxCacheTimeAbsolute = result;
  return result;
}

void ___ZL78_LSGetDefaultPreferredLocalizationsWithFallbackForImproperlyLocalizedProcessesv_block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v5 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v5, a3);
}

void sub_1817513A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](va);

  MEMORY[0x1865D6250](v4, v3);
  _Unwind_Resume(a1);
}

uint64_t validateMarketplacesPreferences(objc_object *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [(objc_object *)v1 objectForKey:@"version"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = [(objc_object *)v1 objectForKey:@"preferredMarketplaces"];
      v4 = objc_opt_class();
      v5 = _LSIsArrayWithValuesOfClass(v3, v4);
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

uint64_t LaunchServices::LSStatePlist::LSStatePlist(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  std::__function::__value_func<BOOL ()(objc_object *)>::__value_func[abi:nn200100](v9, a3);
  v6 = v5;
  *a1 = v6;
  *(a1 + 8) = 0;
  v7 = v10;
  if (v10)
  {
    if (v10 == v9)
    {
      *(a1 + 40) = a1 + 16;
      (*(*v7 + 24))(v7);
    }

    else
    {
      *(a1 + 40) = v10;
      v10 = 0;
    }
  }

  else
  {
    *(a1 + 40) = 0;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 60) = 0;
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](v9);

  return a1;
}

uint64_t std::__function::__value_func<BOOL ()(objc_object *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

id _LSRegistrationLog(uint64_t a1)
{
  if (_LSRegistrationLog_onceToken != -1)
  {
    _LSRegistrationLog_cold_1();
  }

  v2 = _LSRegistrationLog_log;

  return v2;
}

id _LSAppProtectionLog(uint64_t a1)
{
  if (_LSAppProtectionLog_once != -1)
  {
    _LSAppProtectionLog_cold_1();
  }

  v2 = _LSAppProtectionLog_result;

  return v2;
}

id _LSPluginFaultLog(uint64_t a1)
{
  if (_LSPluginFaultLog_once != -1)
  {
    _LSPluginFaultLog_cold_1();
  }

  v2 = _LSPluginFaultLog_result;

  return v2;
}

id loggableURL(void *a1)
{
  v1 = a1;
  v2 = [v1 isFileURL];
  v3 = MEMORY[0x1E696AEC0];
  if (v2)
  {
    v4 = [v1 fileSystemRepresentation];

    v5 = [v3 stringWithUTF8String:v4];
  }

  else
  {
    v6 = [v1 scheme];

    v5 = [v3 stringWithFormat:@"%@:...", v6];
  }

  return v5;
}

id _LSGetInboxURLForBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = [LSApplicationProxy applicationProxyForIdentifier:v1];
  v3 = [v2 containerURL];

  if (v3)
  {
    v4 = [v3 path];
    v5 = [v4 isEqual:@"/var/mobile"];

    if (v5)
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Library/Application Support/Containers/%@/Documents/Inbox/", v1];
      v7 = [v3 URLByAppendingPathComponent:v6 isDirectory:1];
    }

    else
    {
      v7 = [v3 URLByAppendingPathComponent:@"Documents/Inbox/" isDirectory:1];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void _LSCopyOrMoveFileResource(void *a1, void *a2, void *a3, void *a4, char a5, void *a6)
{
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v15 = a6;
  _LSAssertRunningInServer("void _LSCopyOrMoveFileResource(NSURL *__strong, NSFileHandle *__strong, NSString *__strong, NSURL *__strong, BOOL, void (^__strong)(NSURL *__strong, NSError *__strong))", v16);
  if (!v15)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSCopyOrMoveFileResource(NSURL *__strong, NSFileHandle *__strong, NSString *__strong, NSURL *__strong, BOOL, void (^__strong)(NSURL *__strong, NSError *__strong))"}];
    [v23 handleFailureInFunction:v24 file:@"LSMobileDataTransitSupport.mm" lineNumber:371 description:{@"Invalid parameter not satisfying: %@", @"completionHandler != nil"}];
  }

  MEMORY[0x1865D7C40]();
  v17 = MEMORY[0x1E696AF00];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = ___LSCopyOrMoveFileResource_block_invoke;
  v25[3] = &unk_1E6A1D318;
  v18 = v11;
  v26 = v18;
  v31 = a5;
  v19 = v12;
  v27 = v19;
  v20 = v14;
  v28 = v20;
  v21 = v13;
  v29 = v21;
  v22 = v15;
  v30 = v22;
  [v17 detachNewThreadWithBlock:v25];
}

void sub_181752030(_Unwind_Exception *a1)
{
  v8 = v3;
  v9 = v2;
  v10 = v1;

  _Unwind_Resume(a1);
}

void sub_181752B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, void *a20, char a21, CFTypeRef cf)
{
  if (a21 == 1)
  {
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

void _LSCopierCallback(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = [v8 setCallbackType:a2];
  if (a2 == 1)
  {
    goto LABEL_9;
  }

  if (a2 == 2)
  {
LABEL_8:
    a3 = 0;
LABEL_9:
    [v8 setDestURL:a3];
    a4 = 0;
    goto LABEL_10;
  }

  if (a2 != 3)
  {
    v10 = _LSDefaultLog(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _LSCopierCallback(a2, v10);
    }

    goto LABEL_8;
  }

  [v8 setDestURL:0];
LABEL_10:
  [v8 setError:a4];
  Current = CFRunLoopGetCurrent();
  CFRunLoopStop(Current);
}

void copyProvidedResourceToStagingContainerRegularFile(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  *a4 = 0;
  v9 = +[LSOpenStagingDirectoryManager sharedServerInstance];
  v10 = [v9 mainDataVolumeStagingURLWithError:a3];

  if (v10)
  {
    v11 = [MEMORY[0x1E696AFB0] UUID];
    v12 = [v11 UUIDString];
    v13 = [v10 URLByAppendingPathComponent:v12 isDirectory:1];

    v14 = getFileProtectionValueForFileHandle(v8, a3);
    if (v14)
    {
      v15 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = *MEMORY[0x1E695DAF0];
      v24[0] = v14;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v17 = [v15 createDirectoryAtURL:v13 withIntermediateDirectories:0 attributes:v16 error:a3];

      if (v17)
      {
        v18 = [v7 lastPathComponent];
        v19 = [v13 URLByAppendingPathComponent:v18];

        v20 = v19;
        v21 = open([v19 fileSystemRepresentation], 16777729, 420);
        if ((v21 & 0x80000000) == 0 && !fcopyfile([v8 fileDescriptor], v21, 0, 0xFu))
        {
          operator new();
        }

        if (a3)
        {
          v22 = __error();
          *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v22, 0, "copyProvidedResourceToStagingContainerRegularFile", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 277);
        }

        if ((v21 & 0x80000000) == 0)
        {
          close(v21);
        }
      }
    }
  }
}

void sub_1817530E0(_Unwind_Exception *a1)
{
  *v3 = 0;

  _Unwind_Resume(a1);
}

id getFileProtectionValueForFileHandle(void *a1, void *a2)
{
  v3 = a1;
  v9[1] = 0;
  v9[2] = 0;
  v9[0] = 0x4000000000000005;
  if (fgetattrlist([v3 fileDescriptor], v9, &v8, 8uLL, 1u))
  {
    if (a2)
    {
      v4 = __error();
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v4, 0, "getFileProtectionValueForFileHandle", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 140);
      *a2 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    switch(HIDWORD(v8))
    {
      case 1:
        v6 = MEMORY[0x1E695DAD8];
        break;
      case 2:
        v6 = MEMORY[0x1E695DAE0];
        break;
      case 3:
        v6 = MEMORY[0x1E695DAE8];
        break;
      default:
        v6 = MEMORY[0x1E695DAF8];
        break;
    }

    v5 = *v6;
  }

  return v5;
}

void anonymous namespace::StagedFileResource::~StagedFileResource(_anonymous_namespace_::StagedFileResource *this)
{
  *this = &unk_1EEF639D0;
  v3 = (this + 16);
  v2 = *(this + 2);
  if (v2)
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v5 = *v3;
    v10 = 0;
    v6 = [v4 removeItemAtURL:v5 error:&v10];
    v7 = v10;

    if ((v6 & 1) == 0)
    {
      v9 = _LSDefaultLog(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
      }
    }

    v2 = *v3;
  }
}

{

  JUMPOUT(0x1865D6250);
}

void anonymous namespace::StagedFileResource::sandboxExtensionForTransfer(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  [*(a1 + 16) fileSystemRepresentation];
  v5 = sandbox_extension_issue_file();
  if (!v5)
  {
    if (a2)
    {
      v9 = *MEMORY[0x1E696A798];
      v10 = __error();
      *a2 = _LSMakeNSErrorImpl(v9, *v10, 0, "sandboxExtensionForContainer", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSMobileDataTransitSupport.mm", 209);
    }

    goto LABEL_6;
  }

  v6 = v5;
  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:v5];
  free(v6);
  if (!v7)
  {
LABEL_6:
    v8 = 0;
    *a3 = 0;
    goto LABEL_7;
  }

  *a3 = v7;
  v8 = 1;
LABEL_7:
  a3[8] = v8;
}

void anonymous namespace::FileResource::~FileResource(id *this)
{
}

{

  JUMPOUT(0x1865D6250);
}

void std::__optional_storage_base<NSString * {__strong},false>::__assign_from[abi:nn200100]<std::__optional_move_assign_base<NSString * {__strong},false>>(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 8) == *(a2 + 8))
  {
    if (*(a1 + 8))
    {
      v3 = *a2;
      *a2 = 0;
      v4 = *a1;
      *a1 = v3;
    }
  }

  else if (*(a1 + 8))
  {

    *(a1 + 8) = 0;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    *a1 = v5;
    *(a1 + 8) = 1;
  }
}

id makeStagingDirectoryURLInContainer(void *a1)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = *MEMORY[0x1E696A388];
  v3 = *MEMORY[0x1E695DB80];
  v43[0] = *MEMORY[0x1E696A3A0];
  v43[1] = v3;
  v44[0] = v2;
  v44[1] = MEMORY[0x1E695E118];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:2];
  v5 = [v1 URLByAppendingPathComponent:@"OpenOperationStaging"];
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v36 = 0;
  v7 = [v6 createDirectoryAtURL:v5 withIntermediateDirectories:0 attributes:v4 error:&v36];
  v8 = v36;

  if (v7)
  {
    v9 = v5;
    goto LABEL_24;
  }

  v10 = [v8 domain];
  if (![v10 isEqualToString:*MEMORY[0x1E696A250]])
  {

    goto LABEL_7;
  }

  v11 = [v8 code] == 516;

  if (!v11)
  {
LABEL_7:
    v13 = _LSDefaultLog(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      makeStagingDirectoryURLInContainer();
    }
  }

  v14 = [MEMORY[0x1E696AC08] defaultManager];
  v35 = 0;
  v15 = [v14 URLForDirectory:99 inDomain:1 appropriateForURL:v5 create:1 error:&v35];
  v16 = v35;

  if (v15)
  {
    v18 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = [v15 path];
    v34 = v16;
    v20 = [v18 setAttributes:v4 ofItemAtPath:v19 error:&v34];
    v21 = v34;

    if ((v20 & 1) == 0)
    {
      v23 = _LSDefaultLog(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        makeStagingDirectoryURLInContainer();
      }
    }

    v24 = v15;
    v25 = [v15 fileSystemRepresentation];
    v26 = v5;
    if (renamex_np(v25, [v5 fileSystemRepresentation], 2u))
    {
      v27 = __error();
      v28 = *v27;
      v29 = _LSDefaultLog(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v38 = v5;
        v39 = 2114;
        v40 = v15;
        v41 = 1024;
        v42 = v28;
        _os_log_error_impl(&dword_18162D000, v29, OS_LOG_TYPE_ERROR, "could not swap old (%{public}@) and new (%{public}@) staging directories: %{darwin.errno}d", buf, 0x1Cu);
      }

      v9 = 0;
    }

    else
    {
      v30 = dispatch_get_global_queue(-32768, 0);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = ___ZL34makeStagingDirectoryURLInContainerP5NSURLPU15__autoreleasingP7NSError_block_invoke;
      v32[3] = &unk_1E6A1A830;
      v33 = v15;
      dispatch_async(v30, v32);

      v9 = v5;
      v29 = v33;
    }
  }

  else
  {
    v29 = _LSDefaultLog(v17);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      makeStagingDirectoryURLInContainer();
    }

    v9 = 0;
    v21 = v16;
  }

LABEL_24:

  return v9;
}

void sub_181753F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (*(v13 + 24) == 1)
  {
    LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(v13);
  }

  _Unwind_Resume(a1);
}

id *std::optional<LaunchServices::OpenStaging::StagingDirectoryInfo>::emplace[abi:nn200100]<NSString * {__strong}&,FSNode * {__strong}&,long long &,void>(id *this, void **a2, void **a3, uint64_t *a4)
{
  if (*(this + 24) == 1)
  {
    LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(this);
    *(this + 24) = 0;
  }

  v8 = *a2;
  v9 = *a3;
  v10 = *a4;
  v11 = v8;
  v12 = v9;
  *this = v11;
  this[1] = v12;
  *(this + 4) = v10;
  *(this + 24) = 1;
  return this;
}

void *std::unordered_map<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>::insert_or_assign[abi:nn200100]<LaunchServices::OpenStaging::StagingDirectoryInfo>(void *a1, unint64_t *a2, LaunchServices::OpenStaging::StagingDirectoryInfo *a3)
{
  v4 = std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,LaunchServices::OpenStaging::StagingDirectoryInfo>(a1, a2, a2, a3);
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    LaunchServices::OpenStaging::StagingDirectoryInfo::swap((v4 + 3), a3);
  }

  return v5;
}

void ___ZL34makeStagingDirectoryURLInContainerP5NSURLPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AC08] defaultManager];
  v3 = *(a1 + 32);
  v8 = 0;
  v4 = [v2 removeItemAtURL:v3 error:&v8];
  v5 = v8;

  if ((v4 & 1) == 0)
  {
    v7 = _LSDefaultLog(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ZL34makeStagingDirectoryURLInContainerP5NSURLPU15__autoreleasingP7NSError_block_invoke_cold_1();
    }
  }
}

void LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(id *this)
{
  if (*(this + 4) != -1)
  {
    sandbox_extension_release();
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__emplace_unique_key_args<unsigned long long,unsigned long long &,LaunchServices::OpenStaging::StagingDirectoryInfo>(void *a1, unint64_t *a2, void *a3, LaunchServices::OpenStaging::StagingDirectoryInfo *a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_181755950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(v2 + 3);
    }

    operator delete(v2);
  }

  return a1;
}

void LaunchServices::OpenStaging::StagingDirectoryInfo::swap(LaunchServices::OpenStaging::StagingDirectoryInfo *this, LaunchServices::OpenStaging::StagingDirectoryInfo *a2)
{
  v4 = *this;
  *this = 0;
  v5 = *a2;
  *a2 = 0;
  v6 = *this;
  *this = v5;

  v7 = *a2;
  *a2 = v4;

  v8 = *(this + 1);
  *(this + 1) = 0;
  v9 = *(a2 + 1);
  *(a2 + 1) = 0;
  v10 = *(this + 1);
  *(this + 1) = v9;

  v11 = *(a2 + 1);
  *(a2 + 1) = v8;

  v12 = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v12;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (result[2] == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,LaunchServices::OpenStaging::StagingDirectoryInfo>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      LaunchServices::OpenStaging::StagingDirectoryInfo::~StagingDirectoryInfo(v2 + 3);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t LaunchServices::notifyd::NotifyToken::cancel(atomic_uint *this)
{
  v1 = atomic_exchange(this, 0xFFFFFFFF);
  result = notify_is_valid_token(v1);
  if (result)
  {

    return notify_cancel(v1);
  }

  return result;
}

void ___ZN14LaunchServices7notifyd11NotifyToken16RegisterDispatchEP8NSStringPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void LaunchServices::notifyd::NotifyToken::Post(LaunchServices::notifyd::NotifyToken *this, NSString *a2)
{
  v4 = this;
  v2 = objc_autoreleasePoolPush();
  v3 = v4;
  notify_post([(LaunchServices::notifyd::NotifyToken *)v4 UTF8String]);
  objc_autoreleasePoolPop(v2);
}

uint64_t LaunchServices::notifyd::NotifyToken::getState(LaunchServices::notifyd::NotifyToken *this)
{
  state64 = 0;
  v1 = atomic_load(this);
  if (notify_get_state(v1, &state64))
  {
    return 0;
  }

  else
  {
    return state64;
  }
}

void sub_181755D10(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = LSObserver;
  [(_Unwind_Exception *)&a9 dealloc:a3];
  _Unwind_Resume(a1);
}

void sub_181755DFC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181755E28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_181755EF0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181755F1C(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_181755FE0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1817561BC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v2 + 32));
  _Unwind_Resume(a1);
}

void sub_1817568C0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

Class initBSServiceConnectionEndpoint(void)
{
  if (!BoardServicesLibrary(void)::frameworkLibrary)
  {
    BoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/BoardServices.framework/BoardServices", 2);
  }

  result = objc_getClass("BSServiceConnectionEndpoint");
  classBSServiceConnectionEndpoint = result;
  getBSServiceConnectionEndpointClass = BSServiceConnectionEndpointFunction;
  return result;
}

{
  if (!BoardServicesLibrary(void)::frameworkLibrary)
  {
    BoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/BoardServices.framework/BoardServices", 2);
  }

  result = objc_getClass("BSServiceConnectionEndpoint");
  classBSServiceConnectionEndpoint = result;
  getBSServiceConnectionEndpointClass = BSServiceConnectionEndpointFunction;
  return result;
}

Class initUISClickAttribution(void)
{
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    UIKitServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
  }

  result = objc_getClass("UISClickAttribution");
  classUISClickAttribution = result;
  getUISClickAttributionClass = UISClickAttributionFunction;
  return result;
}

Class initUISPasteSharingToken(void)
{
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    UIKitServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
  }

  result = objc_getClass("UISPasteSharingToken");
  classUISPasteSharingToken = result;
  getUISPasteSharingTokenClass = UISPasteSharingTokenFunction;
  return result;
}

id LSDatabaseBlockingFetchInterface(uint64_t a1)
{
  if (LSDatabaseBlockingFetchInterface_onceToken != -1)
  {
    LSDatabaseBlockingFetchInterface_cold_1();
  }

  v2 = LSDatabaseBlockingFetchInterface_result;

  return v2;
}

uint64_t __LSDatabaseBlockingFetchInterface_block_invoke()
{
  v0 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1EEFA75F0];
  v1 = LSDatabaseBlockingFetchInterface_result;
  LSDatabaseBlockingFetchInterface_result = v0;

  v2 = [LSDatabaseBlockingFetchInterface_result setClass:_CSStoreGetXPCClass() forSelector:sel_getServerStoreBlockingWithCompletionHandler_ argumentIndex:0 ofReply:1];
  v3 = LSDatabaseBlockingFetchInterface_result;
  v5 = _FSNodeGetClasses(v2, v4);
  [v3 setClasses:v5 forSelector:sel_getServerStoreBlockingWithCompletionHandler_ argumentIndex:1 ofReply:1];

  v6 = LSDatabaseBlockingFetchInterface_result;
  v7 = objc_opt_class();

  return [v6 setClass:v7 forSelector:sel_getServerStoreBlockingWithCompletionHandler_ argumentIndex:2 ofReply:1];
}

void sub_181756F28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __LAUNCH_SERVICES_CLIENTS_ARE_WAITING_FOR_THE_DATABASE_TO_FINISH_SEEDING__(uint64_t a1, uint64_t a2)
{
  v2 = _LSDatabaseGetSeedingGroup(a1, a2);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

void __LAUNCH_SERVICES_CLIENTS_ARE_WAITING_FOR_A_MANUAL_DATABASE_REBUILD_TO_COMPLETE__(uint64_t a1, uint64_t a2)
{
  v2 = _LSDatabaseGetSeedingGroup(a1, a2);
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
}

id _LSOpenResourceOperationDelegateGetXPCInterface(uint64_t a1)
{
  if (_LSOpenResourceOperationDelegateGetXPCInterface::once != -1)
  {
    _LSOpenResourceOperationDelegateGetXPCInterface_cold_1();
  }

  v2 = _LSOpenResourceOperationDelegateGetXPCInterface::result;

  return v2;
}

void __LAUNCH_SERVICES_IS_BEING_USED_SYNCHRONOUSLY_ON_THE_MAIN_THREAD_OF_THE_SHELL_APP_AND_WILL_DEADLOCK__()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getprogname();
  v1 = _LSDefaultLog(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    v2 = 136446466;
    v3 = v0;
    v4 = 2082;
    v5 = v0;
    _os_log_fault_impl(&dword_18162D000, v1, OS_LOG_TYPE_FAULT, "This Launch Services API is synchronous and makes an XPC call to %{public}s. It will always deadlock when used within %{public}s. You must use asynchronous API instead to avoid a deadlock and subsequent panic. This is a bug in Launch Services' client.", &v2, 0x16u);
  }
}

void _LSFaultIfRunningOnMainThreadOfShellApp()
{
  v0 = pthread_main_np();
  if (v0)
  {
    if ([__LSDefaultsGetSharedInstance(v0 v1)])
    {
      if (FrontBoardServicesLibrary(void)::frameworkLibrary || (FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2)) != 0)
      {
        if ([(objc_class *)getFBSOpenApplicationServiceClass() currentProcessServicesDefaultShellEndpoint])
        {

          __LAUNCH_SERVICES_IS_BEING_USED_SYNCHRONOUSLY_ON_THE_MAIN_THREAD_OF_THE_SHELL_APP_AND_WILL_DEADLOCK__();
        }
      }
    }
  }
}

void _LSServer_OpenApplication(void *a1, void *a2, void *a3, int a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = [v11 _xpcConnection];
  if (_LSXPCConnectionMayMapDatabase(v13))
  {
    goto LABEL_7;
  }

  v14 = [v10 objectForKey:getFBSOpenApplicationOptionKeyActivateSuspended()];
  if (!v14 || (objc_opt_respondsToSelector() & 1) == 0)
  {

LABEL_7:
    goto LABEL_8;
  }

  v15 = [v14 BOOLValue];

  if (v15)
  {
    v16 = MEMORY[0x1865D71B0](v12);
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___LSServer_OpenApplication_block_invoke;
    v20[3] = &unk_1E6A1D448;
    v21 = v9;
    v22 = v11;
    v23 = v16;
    v17 = v16;
    v18 = MEMORY[0x1865D71B0](v20);

    v12 = v18;
  }

LABEL_8:
  if (a4)
  {
    v19 = 0;
  }

  else
  {
    v19 = 2;
  }

  _LSServer_OpenApplicationCommon(v9, 0, 0, 0, 0, v11, v19, v10, v12);
}

void _LSServer_OpenApplicationCommon(void *a1, void *a2, unsigned int a3, void *a4, void *a5, void *a6, unint64_t a7, void *a8, void *a9)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v16 = a1;
  v17 = a2;
  v28 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  v22 = objc_autoreleasePoolPush();
  if (a7)
  {
    _LSSchemeApprovalRememberForBouncebackCheck(v19, v16);
  }

  if (v16 && [v16 length])
  {
    if (!v17 || FrontBoardServicesLibrary(void)::frameworkLibrary || (FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2)) != 0)
    {
      v23 = _LSGetOptionsDictionaryContainingSourceApplication(v19, v17, 0, a3, v28, v18, 1, v20);
      v24 = objc_alloc_init(_LSSpringBoardCall);
      [(_LSSpringBoardCall *)v24 setBundleIdentifier:v16];
      [(_LSSpringBoardCall *)v24 setLaunchOptions:v23];
      if ((a7 & 2) == 0)
      {
        [(_LSSpringBoardCall *)v24 setClientXPCConnection:v19];
      }

      [(_LSSpringBoardCall *)v24 setCallCompletionHandlerWhenFullyComplete:(a7 >> 2) & 1];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = ___ZL31_LSServer_OpenApplicationCommonP8NSStringP8BSActionbP9LSAppLinkP19_LSAppLinkOpenStateP15NSXPCConnectionmP12NSDictionaryIS0_P11objc_objectEU13block_pointerFvbP7NSErrorE_block_invoke;
      v29[3] = &unk_1E6A190B8;
      v30 = v21;
      [(_LSSpringBoardCall *)v24 callWithCompletionHandler:v29];
    }

    else if (v21)
    {
      v27 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 45, 0, "_LSServer_OpenApplicationCommon", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1452);
      (*(v21 + 2))(v21, 0, v27);
    }
  }

  else if (v21)
  {
    v31 = *MEMORY[0x1E696A278];
    v32[0] = @"invalid input parameters";
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:&v31 count:1];
    v26 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "_LSServer_OpenApplicationCommon", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSOpenOperation.mm", 1447);
    (*(v21 + 2))(v21, 0, v26);
  }

  objc_autoreleasePoolPop(v22);
}

void _LSServer_OpenUserActivity(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7, void *a8, void *a9, void *a10)
{
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a5;
  v44 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v43 = a10;
  if (!(v16 | v17))
  {
    v30 = v20;
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    v32 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSServer_OpenUserActivity(NSUUID *__strong, NSData *__strong, NSString *__strong, BOOL, NSString *__strong, LSAppLink *__strong, _LSAppLinkOpenState *__strong, NSDictionary<NSString *, id> *__strong, NSXPCConnection *__strong, __strong _LSDOpenServiceCompletionHandler)"}];
    [v31 handleFailureInFunction:v32 file:@"LSOpenOperation.mm" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"uuidOrNil != nil || activityDataOrNil != nil"}];

    v20 = v30;
  }

  v23 = v44;
  if (!v18)
  {
    v33 = v20;
    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    v35 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSServer_OpenUserActivity(NSUUID *__strong, NSData *__strong, NSString *__strong, BOOL, NSString *__strong, LSAppLink *__strong, _LSAppLinkOpenState *__strong, NSDictionary<NSString *, id> *__strong, NSXPCConnection *__strong, __strong _LSDOpenServiceCompletionHandler)"}];
    [v34 handleFailureInFunction:v35 file:@"LSOpenOperation.mm" lineNumber:318 description:{@"Invalid parameter not satisfying: %@", @"activityType != nil"}];

    v23 = v44;
    v20 = v33;
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_7:
    v36 = v20;
    v37 = [MEMORY[0x1E696AAA8] currentHandler];
    v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSServer_OpenUserActivity(NSUUID *__strong, NSData *__strong, NSString *__strong, BOOL, NSString *__strong, LSAppLink *__strong, _LSAppLinkOpenState *__strong, NSDictionary<NSString *, id> *__strong, NSXPCConnection *__strong, __strong _LSDOpenServiceCompletionHandler)"}];
    [v37 handleFailureInFunction:v38 file:@"LSOpenOperation.mm" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"bundleID != nil"}];

    v23 = v44;
    v20 = v36;
    goto LABEL_5;
  }

  if (!v19)
  {
    goto LABEL_7;
  }

LABEL_5:
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = ___LSServer_OpenUserActivity_block_invoke;
  v45[3] = &unk_1E6A1D470;
  v41 = v16;
  v46 = v41;
  v40 = v17;
  v47 = v40;
  v39 = v18;
  v48 = v39;
  v24 = v19;
  v49 = v24;
  v55 = a4;
  v25 = v23;
  v50 = v25;
  v26 = v20;
  v51 = v26;
  v27 = v22;
  v52 = v27;
  v28 = v21;
  v53 = v28;
  v29 = v43;
  v54 = v29;
  _LSAsyncOpenContext(v45);
}

void sub_1817581FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17)
{
  v26 = v24;
  v27 = v25;

  _Unwind_Resume(a1);
}

Class initFBSOpenApplicationService(void)
{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSOpenApplicationService");
  classFBSOpenApplicationService = result;
  getFBSOpenApplicationServiceClass = FBSOpenApplicationServiceFunction;
  return result;
}

{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSOpenApplicationService");
  classFBSOpenApplicationService = result;
  getFBSOpenApplicationServiceClass = FBSOpenApplicationServiceFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyActivateSuspended(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyActivateSuspended");
  constantFBSOpenApplicationOptionKeyActivateSuspended = result;
  getFBSOpenApplicationOptionKeyActivateSuspended = FBSOpenApplicationOptionKeyActivateSuspendedFunction;
  return result;
}

void ___ZL24_LSOpenOperationGetQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS open operation queue", v2);
  v1 = _LSOpenOperationGetQueue(void)::result;
  _LSOpenOperationGetQueue(void)::result = v0;
}

void ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_116(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = _LSOpenLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Extend bookmark operation complete", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_117;
  v22[3] = &unk_1E6A1D498;
  v8 = v5;
  v23 = v8;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  *&v13 = v11;
  *(&v13 + 1) = v12;
  *&v14 = v9;
  *(&v14 + 1) = v10;
  v24 = v14;
  v25 = v13;
  v31 = *(a1 + 128);
  v15 = *(a1 + 64);
  v16 = *(a1 + 72);
  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  *&v19 = v17;
  *(&v19 + 1) = v18;
  *&v20 = v15;
  *(&v20 + 1) = v16;
  v26 = v20;
  v27 = v19;
  v29 = *(a1 + 96);
  v21 = v6;
  v28 = v21;
  v30 = *(a1 + 104);
  _LSAsyncOpenContext(v22);
}

void ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_117(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _LSOpenLog(a1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      *buf = 138412290;
      v15 = v3;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "bookmark extension successful, got FP string %@", buf, 0xCu);
    }

    v4 = [*(a1 + 40) mutableCopy];
    [v4 setObject:*(a1 + 32) forKeyedSubscript:@"FileProviderString"];
    [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"RequireOpenInPlace"];
    _LSOpenOperationPerformContinueAfterAsyncGather(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 128), *(a1 + 72), *(a1 + 80), v4, *(a1 + 88), *(a1 + 96), *(a1 + 112));
  }

  else
  {
    v5 = *(a1 + 104) == 0;
    v6 = _LSOpenLog(a1);
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "no FP string but no error, continuing", buf, 2u);
      }

      (*(*(a1 + 120) + 16))();
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        ___ZL23_LSOpenOperationPerformP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_117_cold_1((a1 + 104), v7, v8, v9, v10, v11, v12, v13);
      }

      (*(*(a1 + 120) + 16))();
    }
  }
}

uint64_t __copy_helper_block_ea8_112c64_ZTSNSt3__110shared_ptrIN14LaunchServices18LSSandboxExtensionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 120);
  *(result + 112) = *(a2 + 112);
  *(result + 120) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_112c64_ZTSNSt3__110shared_ptrIN14LaunchServices18LSSandboxExtensionEEE(uint64_t a1)
{
  v1 = *(a1 + 120);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

void ___ZL47_LSOpenOperationPerformContinueAfterAsyncGatherP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [a1[4] openResourceOperation:0 didFinishCopyingResource:v5];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL47_LSOpenOperationPerformContinueAfterAsyncGatherP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_2;
    v13[3] = &unk_1E6A1D4C0;
    v14 = a1[5];
    v15 = v5;
    v7 = a1[6];
    v8 = a1[7];
    v9 = a1[8];
    v10 = a1[9];
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v16 = v12;
    v17 = v11;
    _LSAsyncOpenContext(v13);
  }

  else
  {
    (*(a1[9] + 2))();
  }
}

void ___ZL47_LSOpenOperationPerformContinueAfterAsyncGatherP5NSURLP12NSFileHandleP8NSStringbS4_P12NSDictionaryIS4_P11objc_objectES9_PU42objcproto31LSOpenResourceOperationDelegate11objc_objectP15NSXPCConnectionU13block_pointerFvbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v4 = _LSGetOptionsDictionaryContainingSourceApplication(*(a1 + 32), 0, *(a1 + 40), 0, 0, 0, 0, *(a1 + 48));
  [v4 setObject:*(a1 + 40) forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadURL()];
  v2 = *(a1 + 56);
  if (v2)
  {
    [v4 setObject:v2 forKeyedSubscript:getFBSOpenApplicationOptionKeyPayloadAnnotation()];
  }

  [v4 setObject:MEMORY[0x1E695E110] forKeyedSubscript:getFBSOpenApplicationOptionKeyActivateSuspended()];
  [v4 setObject:MEMORY[0x1E695E118] forKeyedSubscript:getFBSOpenApplicationOptionKeyDocumentOpen4LS()];
  v3 = objc_alloc_init(_LSSpringBoardCall);
  [(_LSSpringBoardCall *)v3 setBundleIdentifier:*(a1 + 64)];
  [(_LSSpringBoardCall *)v3 setLaunchOptions:v4];
  [(_LSSpringBoardCall *)v3 setClientXPCConnection:*(a1 + 32)];
  [(_LSSpringBoardCall *)v3 setCallCompletionHandlerWhenFullyComplete:0];
  [(_LSSpringBoardCall *)v3 callWithCompletionHandler:*(a1 + 72)];
}

void ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_cold_1();
  }

  MEMORY[0x1865D7C50]();
}

void ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_161(uint64_t a1, int a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 32) bundleIdentifier];
      v9 = 138477827;
      v10 = v8;
      _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEFAULT, "Set default handler to %{private}@", &v9, 0xCu);
    }
  }

  else
  {
    v7 = _LSDefaultLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      ___ZL23_LSUpdateDefaultHandlerP18LSApplicationProxyP5NSURL_block_invoke_cold_1();
    }
  }

  MEMORY[0x1865D7C50]();
}

uint64_t initFBSOpenApplicationOptionKeyPayloadIsValid4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadIsValid4LS");
  constantFBSOpenApplicationOptionKeyPayloadIsValid4LS = result;
  getFBSOpenApplicationOptionKeyPayloadIsValid4LS = FBSOpenApplicationOptionKeyPayloadIsValid4LSFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyActions(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyActions");
  constantFBSOpenApplicationOptionKeyActions = result;
  getFBSOpenApplicationOptionKeyActions = FBSOpenApplicationOptionKeyActionsFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyAppLink4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyAppLink4LS");
  constantFBSOpenApplicationOptionKeyAppLink4LS = result;
  getFBSOpenApplicationOptionKeyAppLink4LS = FBSOpenApplicationOptionKeyAppLink4LSFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyBrowserAppLinkState4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyBrowserAppLinkState4LS");
  constantFBSOpenApplicationOptionKeyBrowserAppLinkState4LS = result;
  getFBSOpenApplicationOptionKeyBrowserAppLinkState4LS = FBSOpenApplicationOptionKeyBrowserAppLinkState4LSFunction;
  return result;
}

uint64_t initUISOpenApplicationOptionClickAttribution(void)
{
  v0 = UIKitServicesLibrary(void)::frameworkLibrary;
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionClickAttribution");
  constantUISOpenApplicationOptionClickAttribution = result;
  getUISOpenApplicationOptionClickAttribution = UISOpenApplicationOptionClickAttributionFunction;
  return result;
}

uint64_t initUISOpenApplicationOptionPasteSharingToken(void)
{
  v0 = UIKitServicesLibrary(void)::frameworkLibrary;
  if (!UIKitServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/UIKitServices.framework/UIKitServices", 2);
    UIKitServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "UISOpenApplicationOptionPasteSharingToken");
  constantUISOpenApplicationOptionPasteSharingToken = result;
  getUISOpenApplicationOptionPasteSharingToken = UISOpenApplicationOptionPasteSharingTokenFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyPayloadAnnotation(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPayloadAnnotation");
  constantFBSOpenApplicationOptionKeyPayloadAnnotation = result;
  getFBSOpenApplicationOptionKeyPayloadAnnotation = FBSOpenApplicationOptionKeyPayloadAnnotationFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyDocumentOpen4LS(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyDocumentOpen4LS");
  constantFBSOpenApplicationOptionKeyDocumentOpen4LS = result;
  getFBSOpenApplicationOptionKeyDocumentOpen4LS = FBSOpenApplicationOptionKeyDocumentOpen4LSFunction;
  return result;
}

void ___ZL31_LSServer_OpenApplicationCommonP8NSStringP8BSActionbP9LSAppLinkP19_LSAppLinkOpenStateP15NSXPCConnectionmP12NSDictionaryIS0_P11objc_objectEU13block_pointerFvbP7NSErrorE_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 code];
    v7 = v6;
    if (v6)
    {
      v8 = _LSDefaultLog(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = softLinkFBSOpenApplicationErrorCodeToString(v7);
        v10 = 138412290;
        v11 = v9;
        _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_DEFAULT, "application launch failed - received error %@", &v10, 0xCu);
      }
    }
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t initFBSOpenApplicationErrorCodeToString(uint64_t a1)
{
  v2 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "FBSOpenApplicationErrorCodeToString");
  softLinkFBSOpenApplicationErrorCodeToString = v3;

  return v3(a1);
}

Class initUIActivityContinuationAction(void)
{
  if (!UIKitLibrary(void)::frameworkLibrary)
  {
    UIKitLibrary(void)::frameworkLibrary = dlopen("/System/Library/Frameworks/UIKit.framework/UIKit", 2);
  }

  result = objc_getClass("UIActivityContinuationAction");
  classUIActivityContinuationAction = result;
  getUIActivityContinuationActionClass = UIActivityContinuationActionFunction;
  return result;
}

uint64_t _LSPersistentIdentifierCompare(void *a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [a1 length];
  v5 = [a2 length];
  v6 = 0;
  if (v4 >= 0x1C && v4 == v5)
  {
    v7 = [a1 bytes];
    v8 = [a2 bytes];
    v9 = memcmp(v7, v8, v4);
    if (!v9)
    {
      v14 = LaunchServices::PersistentIdentifier::getLog(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        _LSPersistentIdentifierCompare_cold_2();
      }

      v6 = 100;
      goto LABEL_13;
    }

    if (*v7 == *v8)
    {
      v10 = v7 + 12;
      v11 = v8 + 12;
      v12 = uuid_compare(v10, v8 + 12);
      v13 = v12;
      v14 = LaunchServices::PersistentIdentifier::getLog(v12);
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (!v13)
      {
        if (v15)
        {
          _LSPersistentIdentifierCompare_cold_1();
        }

        v6 = 200;
        goto LABEL_13;
      }

      if (v15)
      {
        v22 = 134219266;
        v23 = a1;
        v24 = 2048;
        v25 = a2;
        v26 = 1040;
        v27 = 16;
        v28 = 2096;
        v29 = v10;
        v30 = 1040;
        v31 = 16;
        v32 = 2096;
        v33 = v11;
        v16 = "Persistent identifiers %p and %p have different databases (%{uuid_t}.16P vs. %{uuid_t}.16P)";
        v17 = v14;
        v18 = 54;
LABEL_19:
        _os_log_debug_impl(&dword_18162D000, v17, OS_LOG_TYPE_DEBUG, v16, &v22, v18);
      }
    }

    else
    {
      v14 = LaunchServices::PersistentIdentifier::getLog(v9);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v20 = *v7;
        v21 = *v8;
        v22 = 134218752;
        v23 = a1;
        v24 = 2048;
        v25 = a2;
        v26 = 1024;
        v27 = v20;
        v28 = 1024;
        LODWORD(v29) = v21;
        v16 = "Persistent identifiers %p and %p have different versions (%u vs. %u)";
        v17 = v14;
        v18 = 34;
        goto LABEL_19;
      }
    }

    v6 = 0;
LABEL_13:
  }

  return v6;
}

id LaunchServices::PersistentIdentifier::getLog(LaunchServices::PersistentIdentifier *this)
{
  if (LaunchServices::PersistentIdentifier::getLog(void)::once != -1)
  {
    LaunchServices::PersistentIdentifier::getLog();
  }

  v2 = LaunchServices::PersistentIdentifier::getLog(void)::result;

  return v2;
}

__CFString *_LSPersistentIdentifierGetDebugDescription(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [a1 length];
  if (v2 < 0x1C)
  {
    v9 = 0;
  }

  else
  {
    v3 = v2;
    v4 = [a1 bytes];
    memset(out, 0, 37);
    uuid_unparse(v4 + 12, out);
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"<LSPersistentIdentifier %p> { v = %u, t = 0x%llx, u = 0x%llx, db = %s", a1, *v4, *(v4 + 2), *(v4 + 1), out];
    v6 = v3 - 28;
    if (v6)
    {
      v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:v4 + 28 length:v6 freeWhenDone:0];
      v8 = [v7 description];
      [v5 appendFormat:@", %@", v8];
    }

    [v5 appendString:@" }"];
    v9 = [v5 copy];
  }

  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &stru_1EEF65710;
  }

  v11 = v10;

  return v10;
}

void sub_181759B54(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

id _LSPersistentIdentifierGetKnowledgeUUIDInternal(void *a1)
{
  if ([a1 length] <= 0x1B)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSUUID *_LSPersistentIdentifierGetKnowledgeUUIDInternal(const __strong LSPersistentIdentifier _Nonnull)"];
    [v5 handleFailureInFunction:v6 file:@"LSPersistentIdentifier.mm" lineNumber:102 description:{@"persistent identifier of length %zu is too short to extract database UUID!", objc_msgSend(a1, "length")}];
  }

  v2 = [a1 bytes];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:v2 + 12];

  return v3;
}

id _LSPersistentIdentifierGetKnowledgeUUID4CoreDevice(void *a1)
{
  if ([a1 length] < 0x1C)
  {
    v2 = 0;
  }

  else
  {
    v2 = _LSPersistentIdentifierGetKnowledgeUUIDInternal(a1);
  }

  return v2;
}

id _LSPersistentIdentifierGetSequenceNumber4CoreDevice(void *a1)
{
  if ([a1 length] < 0x24)
  {
    v2 = 0;
  }

  else
  {
    v2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:_LSApplicationRecordPersistentIdentifierGetSequenceNumberInternal(a1)];
  }

  return v2;
}

void ___ZN14LaunchServices20PersistentIdentifierL6getLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "record-pi");
  v1 = LaunchServices::PersistentIdentifier::getLog(void)::result;
  LaunchServices::PersistentIdentifier::getLog(void)::result = v0;
}

uint64_t _LSPlistAdd(void *a1, void *a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (a1 && a2)
  {
    if (_NSIsNSDictionary())
    {
      v6 = _LSPlistCompact(a2);
      if (v6)
      {
        [(_LSDatabase *)a1 store];
        [(_LSDatabase *)a1 schema];
        [v6 length];
        [v6 bytes];
        v5 = CSStoreAllocUnitWithData();
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
  }

  objc_autoreleasePoolPop(v4);
  return v5;
}

void *_LSPlistRemove(void *result, uint64_t a2)
{
  if (result && a2)
  {
    v2 = result;
    [(_LSDatabase *)result store];
    [(_LSDatabase *)v2 schema];

    return CSStoreFreeUnit();
  }

  return result;
}

void _LSPlistGetVisualizationFunctions(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = LaunchServices::PropertyLists::display;
  a1[2] = 0;
}

BOOL LaunchServices::PropertyLists::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v8 = _LSPlistGet(*this, a3);
  v9 = _LSPlistDataGetDictionary(v8, 0);

  v10 = [v9 mutableCopy];
  if (v10)
  {
    [v10 removeObjectForKey:*MEMORY[0x1E695E128]];
    v11 = [v10 count];
    v12 = [a4 link:*(-[_LSDatabase schema](*this) + 1600) unit:a3];
    [a4 writeFormat:@"%lu values (%@)", v11, v12];

    v13 = [v10 description];
    if (v13)
    {
      [a4 write:v13];
    }
  }

  return v10 != 0;
}

id _LSPlistCompact(void *a1)
{
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v9 = 0;
    v3 = _LSPlistCreateTransformed(a1, _LSPlistCompactString, &v9);
    v4 = [MEMORY[0x1E696AE40] dataWithPropertyList:v3 format:200 options:0 error:0];
    v5 = v4;
    if (v4 && v9 == 1)
    {
      v6 = [MEMORY[0x1E695DF88] dataWithCapacity:{objc_msgSend(v4, "length") + 4}];
      [v6 appendBytes:&_LSPlistCompactedMarker length:4];
      [v6 appendData:v5];
      v7 = [v6 copy];

      v5 = v7;
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id _LSGetPluginNotificationAndIconCacheQueue(uint64_t a1)
{
  if (_LSGetPluginNotificationAndIconCacheQueue::once != -1)
  {
    _LSGetPluginNotificationAndIconCacheQueue_cold_1();
  }

  v2 = _LSGetPluginNotificationAndIconCacheQueue::result;

  return v2;
}

void LSPluginSendNotification(void *a1, uint64_t a2, const void *a3)
{
  v5 = a1;
  if (CFDictionaryGetCount(a3) >= 1 && [(_LSDatabase *)v5 isSeeded])
  {
    _LSDatabaseCommit(v5, v6);
    v7 = CFRetain(a3);
    v8 = _LSGetPluginNotificationAndIconCacheQueue(v7);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __LSPluginSendNotification_block_invoke;
    v9[3] = &__block_descriptor_48_e5_v8__0l;
    v9[4] = a2;
    v9[5] = a3;
    dispatch_async(v8, v9);
  }
}

void __LSPluginSendNotification_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_INFO, "sending plugin notification %@ with %@", &v7, 0x16u);
  }

  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterPostNotificationWithOptions(DistributedCenter, *(a1 + 32), 0, *(a1 + 40), 2uLL);
  CFRelease(*(a1 + 40));
  objc_autoreleasePoolPop(v2);
}

void LSPluginAddInfoToPayloadDict(void *a1, __CFDictionary *a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = v8;
  if (a5)
  {
    v10 = v8;
    if (_LSGetPlugin(v10, a3))
    {
      [(_LSDatabase *)v10 store];
      v11 = _CSStringCopyCFString();
      if (_LSIsNewsWidgetBundleIdentifier(v11))
      {
        v12 = +[LSApplicationRestrictionsManager sharedInstance];
        v13 = [(LSApplicationRestrictionsManager *)v12 isAppExtensionRestricted:v11];

        if (v13)
        {
          v15 = _LSDefaultLog(v14);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v28[0]) = 138412290;
            *(v28 + 4) = v11;
            _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "plugin %@ is restricted for notifications", v28, 0xCu);
          }

          goto LABEL_33;
        }
      }
    }
  }

  v16 = v9;
  if (_LSGetPlugin(v16, a3))
  {
    [(_LSDatabase *)v16 store];
    v17 = _CSStringCopyCFString();
  }

  else
  {
    v17 = 0;
  }

  v18 = v16;
  v19 = _LSGetPlugin(v18, a3);
  if (v19)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    [(_LSDatabase *)v18 store];
    v21 = _CSStringCopyCFString();
    [(_LSDatabase *)v18 store];
    v22 = _CSStringCopyCFString();
    [(_LSDatabase *)v18 store];
    v23 = _CSStringCopyCFString();
    v24 = *(v19 + 11);
    v28[0] = *(v19 + 7);
    v28[1] = v24;
    v25 = _LSVersionNumberCopyStringRepresentation(v28);
    v26 = _LSAliasGetPath(v18, *v19);
    if (v26)
    {
      CFDictionaryAddValue(Mutable, @"_LSBundlePath", v26);
    }

    if (v21)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E4F0], v21);
      CFRelease(v21);
    }

    if (v22)
    {
      CFDictionaryAddValue(Mutable, @"NSExtensionIdentifier", v22);
      CFRelease(v22);
    }

    if (v23)
    {
      CFDictionaryAddValue(Mutable, @"LSEffectiveIdentifier", v23);
      CFRelease(v23);
    }

    if (v25)
    {
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E695E500], v25);
      CFRelease(v25);
    }

    v27 = Mutable != 0;
    if (v17 && Mutable)
    {
      CFDictionaryAddValue(a2, v17, Mutable);
      v27 = 1;
    }

    else if (!v17)
    {
      goto LABEL_31;
    }
  }

  else
  {

    if (!v17)
    {
      goto LABEL_33;
    }

    Mutable = 0;
    v27 = 0;
  }

  CFRelease(v17);
LABEL_31:
  if (v27)
  {
    CFRelease(Mutable);
  }

LABEL_33:
}

uint64_t _LSPluginAdd(void *a1, _DWORD *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && [(_LSDatabase *)v3 store])
  {
    a2[6] = CFAbsoluteTimeGetCurrent();
    [(_LSDatabase *)v4 store];
    [(_LSDatabase *)v4 schema];
    v5 = CSStoreAllocUnitWithData();
    if (v5)
    {
      if (!_LSBindableActivate(v4, v5, 9u, a2[43], _LSPluginComparePriority_BindableComparitor, 0))
      {
        v6 = a2[44];
        if ((!v6 || !_LSBindableActivate(v4, v5, 9u, v6, _LSPluginComparePriority_BindableComparitor, 0)) && !_LSBindableActivate(v4, v5, 0xAu, a2[46], _LSPluginComparePriority_BindableComparitor, 0) && !_LSBindableActivate(v4, v5, 0xAu, a2[45], _LSPluginComparePriority_BindableComparitor, 0))
        {
          _LSBindableActivate(v4, v5, 0xBu, a2[55], _LSPluginComparePriority_BindableComparitor, 0);
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void _LSPluginRemove(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    if (a2)
    {
      if ([(_LSDatabase *)v3 store])
      {
        v5 = _LSGetPlugin(v4, a2);
        if (v5)
        {
          v20 = v5[24];
          v21 = *v5;
          v14 = v5[26];
          v15 = v5[28];
          v13 = v5[29];
          v16 = v5[34];
          v17 = v5[23];
          v18 = v5[36];
          v19 = v5[35];
          v11 = v5[42];
          v12 = v5[38];
          v22 = v5[44];
          v6 = v5[46];
          v7 = v5[55];
          v8 = v5[58];
          _LSBindableDeactivate(v4, a2, 9u, v5[43], 0);
          if (v22)
          {
            _LSBindableDeactivate(v4, a2, 9u, v22, 0);
          }

          _LSBindableDeactivate(v4, a2, 0xAu, v6, 0);
          _LSBindableDeactivate(v4, a2, 0xBu, v7, 0);
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          if (v8)
          {
            v24 = MEMORY[0x1E69E9820];
            v25 = 3221225472;
            v26 = ___LSPluginRemove_block_invoke;
            v27 = &unk_1E6A18FC8;
            v28 = v4;
            _CSArrayEnumerateAllValues();
            _CSArrayDispose();
          }

          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          _LSPlistRemove(v4, v19);
          _LSPlistRemove(v4, v18);
          _LSDatabaseDisposeStringArray(v4, v17);
          _LSPlistRemove(v4, v16);
          if (v21)
          {
            _LSAliasRemove(v4, v21);
          }

          if (v20)
          {
            _LSAliasRemove(v4, v20);
          }

          LaunchServices::LocalizedString::Remove(v4, v15);
          LaunchServices::LocalizedString::Remove(v4, v14);
          LaunchServices::LocalizedString::Remove(v4, v13);
          _LSPlistRemove(v4, v12);
          [(_LSDatabase *)v4 schema];
          CSStoreFreeUnit();
          if ((v11 & 4) != 0)
          {
            [(_LSDatabase *)v4 store];
            v9 = _CSStringCopyCFString();
            if (v9)
            {
              v23 = 0;
              v10 = _LSPluginFindWithPlatformInfo(v4, 0, v9, 1, 0, 0, &v23, 0);
              if (v10 && (*(v10 + 168) & 0xC) == 8)
              {
                [(_LSDatabase *)v4 schema];
                _CSStoreWriteToUnit();
              }

              CFRelease(v9);
            }
          }
        }
      }
    }
  }
}

uint64_t _LSPluginUnregister(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(_LSGetPlugin(v3, a2) + 224);
  [(_LSDatabase *)v3 store];
  v5 = _CSStringCopyCFString();
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v7 = _LSBundleGet(v3, v4);
  if (v7)
  {
    v8 = *(v7 + 480);
    if (v8)
    {
      [(_LSDatabase *)v3 store];
      v11[5] = MEMORY[0x1E69E9820];
      v11[6] = 3221225472;
      v11[7] = ___LSPluginUnregister_block_invoke;
      v11[8] = &unk_1E6A1A7B8;
      v13 = a2;
      v12 = v3;
      v14 = v8;
      v15 = v4;
      _CSArrayEnumerateAllValues();
    }
  }

  if (v5)
  {
    if (IconServicesLibrary(void)::frameworkLibrary || (v7 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2), (IconServicesLibrary(void)::frameworkLibrary = v7) != 0))
    {
      v9 = _LSGetPluginNotificationAndIconCacheQueue(v7);
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___LSPluginUnregister_block_invoke_2;
      v11[3] = &__block_descriptor_40_e5_v8__0l;
      v11[4] = v5;
      dispatch_async(v9, v11);
    }

    else
    {
      CFRelease(v5);
    }
  }

  LSPluginAddInfoToPayloadDict(v3, Mutable, a2, 0, 0);
  _LSPluginRemove(v3, a2);
  if (Mutable)
  {
    LSPluginSendNotification(v3, @"com.apple.LaunchServices.pluginsunregistered", Mutable);
    CFRelease(Mutable);
  }

  return 0;
}

void _LSPluginGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2, uint64_t a3)@<X8>)
{
  *a1 = LaunchServices::Plugins::getSummary;
  a1[1] = LaunchServices::Plugins::display;
  a1[2] = 0;
}

unsigned int *LaunchServices::Plugins::getSummary(void **this, LSContext *a2, uint64_t a3)
{
  v4 = _LSGetPlugin(*this, a3);
  if (v4)
  {
    v5 = v4;
    v6 = LaunchServices::LocalizedString::Get(*this, v4[26]);
    if (!v6 || (LaunchServices::LocalizedString::localizeUnsafely(v6, *this, 0), (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      [(_LSDatabase *)*this store];
      v4 = _CSStringCopyCFString();
      if (!v4)
      {
        v4 = _LSAliasGetPath(*this, *v5);
      }
    }
  }

  return v4;
}

BOOL LaunchServices::Plugins::display(void **this, LSContext *a2, uint64_t a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = _LSGetPlugin(*this, a3);
  if (v8)
  {
    v9 = *this;
    v33 = 0;
    IsValid = _LSPluginIsValid(v9, a3, v8, 0, 0, &v33);
    v11 = v33;
    if (!IsValid)
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = ___ZN14LaunchServices7PluginsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
      v30[3] = &unk_1E6A1ABE8;
      v31 = v7;
      v32 = v11;
      [v31 withWarningColors:v30];
    }

    v12 = [v7 link:*(-[_LSDatabase schema](*this) + 1580) unit:v8[1]];
    [v7 write:@"container" string:v12];

    v13 = _LSContainerGet(*this, v8[1]);
    v14 = v13;
    if (v13)
    {
      v15 = _LSContainerStateGetDescription(*(v13 + 2));
      [v7 write:@"mount state" string:v15];
      [v7 write:@"isOnRootVolume" BOOL:(*v14 >> 1) & 1];
      [v7 write:@"isSystemManaged" BOOL:(*v14 >> 4) & 1];
    }

    [v7 write:@"Mach-O UUIDs" arrayStringID:v8[23]];
    [v7 write:@"Platform" platform:v8[5]];
    _LSSliceMaskWriteDescription(v7, *(v8 + 78));
    _LSBundleBaseFlagsWriteDescription(v7, *(v8 + 164));
    [v7 write:@"identifier" stringID:v8[43]];
    [v7 write:@"bundleID" stringID:v8[3]];
    [v7 write:@"effectiveID" stringID:v8[44]];
    [v7 write:@"teamID" stringID:v8[4]];
    [v7 write:@"name" stringID:v8[25]];
    [v7 write:@"displayName" stringID:v8[27]];
    [v7 childUnit:@"localizedNames" table:*(-[_LSDatabase schema](*this) + 1604) unit:v8[28]];
    [v7 childUnit:@"localizedShortNames" table:*(-[_LSDatabase schema](*this) + 1604) unit:v8[26]];
    [v7 childUnit:@"localizedMicrophoneUsage" table:*(-[_LSDatabase schema](*this) + 1604) unit:v8[29]];
    v16 = [v7 link:*(-[_LSDatabase schema](*this) + 4) unit:v8[56]];
    [v7 write:@"parent" string:v16];

    v17 = [v7 link:*(-[_LSDatabase schema](*this) + 1584) unit:*v8];
    [v7 write:@"path" string:v17];

    [v7 write:@"directory" directoryClass:*(v8 + 148)];
    v18 = [v7 link:*(-[_LSDatabase schema](*this) + 1584) unit:v8[24]];
    [v7 write:@"dataContainer" string:v18];

    v29 = 0;
    v28 = 0;
    _LSExtensionPointFindWithStringID(*this, v8[45], v8[5], 0, &v29, &v28);
    v19 = [(_LSDatabase *)*this schema];
    v20 = [v7 link:*(v19 + 1592) unit:v29];
    [v7 write:@"extension point ID" string:v20];

    [v7 write:@"raw extension point ID" stringID:v8[45]];
    [v7 write:@"extension point name" stringID:v8[46]];
    v21 = *(v8 + 11);
    v34 = *(v8 + 7);
    v35 = v21;
    [v7 write:@"version" version:&v34];
    v22 = *(v8 + 19);
    v34 = *(v8 + 15);
    v35 = v22;
    [v7 write:@"sdkVersion" version:&v34];
    [v7 write:@"UUID" stringID:v8[55]];
    [v7 write:@"CodeInfoID" stringID:v8[31]];
    [v7 write:@"signerOrg" stringID:v8[32]];
    [v7 write:@"signer identity" stringID:v8[33]];
    v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8[40]];
    [v7 write:@"code signature version" number:v23];

    v24 = v7;
    [v24 beginFlags:@"flags" flags:v8[42]];
    [v24 flag:2 name:@"is-in-framework" color:255];
    [v24 flag:4 name:@"is-override"];
    [v24 flag:8 name:@"has-override"];
    [v24 flag:16 name:@"app-protection-optout"];
    [v24 flag:32 name:@"is-legacy-plugin"];
    [v24 endFlags];

    if (*(v8 + 149))
    {
      v25 = _LSProfileValidationStateGetVisualizationDescription(*(v8 + 149));
      [v24 write:@"validation" string:v25];
    }

    [v24 write:@"reg date" interval:v8[6]];
    [v24 write:@"appProtectionEffectiveContainer" stringID:v8[57]];
    if (v8[35])
    {
      [v24 childUnit:@"entitlements" table:*(-[_LSDatabase schema](*this) + 1600) unit:v8[35]];
    }

    if (v8[36])
    {
      [v24 childUnit:@"grpContainers" table:*(-[_LSDatabase schema](*this) + 1600) unit:v8[36]];
    }

    if (v8[34])
    {
      [v24 childUnit:@"PKDict" table:*(-[_LSDatabase schema](*this) + 1600) unit:v8[34]];
    }

    if (v8[45])
    {
      if (v29)
      {
        v26 = [(_LSDatabase *)*this schema];
        [v24 childUnit:@"SDKData" table:*(v26 + 1600) unit:*(v28 + 48)];
      }

      else
      {
        [v24 write:@"SDKData" string:&stru_1EEF65710];
      }
    }
  }

  return v8 != 0;
}

void sub_18175C4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_18175C8B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  LaunchServices::BindingEvaluator::~BindingEvaluator(&a12);

  if (a56 == 1)
  {
    LaunchServices::BindingEvaluator::~BindingEvaluator(&a34);
  }

  _Unwind_Resume(a1);
}

void sub_18175CD10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void sub_18175D2E0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_18175DEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, char *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  __p = &a20;
  std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&__p);
  LaunchServices::BindingEvaluator::~BindingEvaluator(v20);
  _Unwind_Resume(a1);
}

void LaunchServices::ClaimBindingConfiguration::FilterStack::addFilter(__int128 **a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 copy];
  v9 = a1[1];
  v8 = a1[2];
  if (v9 >= v8)
  {
    v11 = (v9 - *a1) >> 4;
    if ((v11 + 1) >> 60)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v12 = v8 - *a1;
    v13 = v12 >> 3;
    if (v12 >> 3 <= (v11 + 1))
    {
      v13 = v11 + 1;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v13;
    }

    v16[4] = a1;
    if (v14)
    {
      std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](a1, v14);
    }

    v15 = (16 * v11);
    v16[0] = 0;
    v16[1] = v15;
    v16[3] = 0;
    *v15 = v7;
    v15[1] = v5;
    v16[2] = v15 + 2;
    std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__swap_out_circular_buffer(a1, v16);
    v10 = a1[1];
    std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::~__split_buffer(v16);
  }

  else
  {
    *v9 = v7;
    v9[1] = v5;
    v10 = (v9 + 2);
  }

  a1[1] = v10;
}

id LaunchServices::ClaimBindingConfiguration::FilterStack::buildDescription(LaunchServices::ClaimBindingConfiguration::FilterStack *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this == v2)
  {
LABEL_5:
    v4 = 0;
  }

  else
  {
    v3 = *this;
    while (!*(v3 + 8))
    {
      v3 += 16;
      if (v3 == v2)
      {
        goto LABEL_5;
      }
    }

    v5 = 0;
    do
    {
      v6 = MEMORY[0x1865D71B0](*v1);
      v7 = *(v1 + 8);
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = @"(no filter description)";
      }

      v10 = v9;
      v11 = v10;
      if (v5)
      {
        [v5 appendFormat:@", then %@", v10];
      }

      else
      {
        v5 = [(__CFString *)v10 mutableCopy];
      }

      v1 += 16;
    }

    while (v1 != v2);
    v4 = [v5 copy];
  }

  return v4;
}

void std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__swap_out_circular_buffer(__int128 **a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = (v4 + *a1 - v6);
  if (v6 != *a1)
  {
    v8 = *a1;
    v9 = v7;
    do
    {
      v10 = *v8;
      *v8 = 0;
      *(v8++ + 1) = 0;
      *v9++ = v10;
    }

    while (v8 != v6);
  }

  std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(a1, v5, v6);
  a2[1] = v7;
  v11 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v11;
  v12 = a1[1];
  a1[1] = a2[2];
  a2[2] = v12;
  v13 = a1[2];
  a1[2] = a2[3];
  a2[3] = v13;
  *a2 = a2[1];
}

void std::__allocator_destroy[abi:nn200100]<std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(uint64_t a1, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    do
    {

      v5 = *v4;
      v4 += 2;
    }

    while (v4 != a3);
  }
}

uint64_t std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destruct_at_end[abi:nn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destruct_at_end[abi:nn200100](uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
  }
}

uint64_t ___ZNK14LaunchServices25ClaimBindingConfiguration11FilterStack11buildFilterEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v4 = *v3;
  v5 = v3[1];
  if (*v3 == v5)
  {
    return 1;
  }

  do
  {
    v8 = MEMORY[0x1865D71B0](*v4);
    v9 = *(v4 + 8);
    v10 = v8[2](v8, a2, a3);

    v4 += 16;
    if (v4 == v5)
    {
      v11 = 0;
    }

    else
    {
      v11 = v10;
    }
  }

  while ((v11 & 1) != 0);
  return v10;
}

uint64_t __copy_helper_block_ea8_32c141_ZTSNSt3__110shared_ptrINS_6vectorINS_4pairIU8__strongU13block_pointerFbP9LSContextRK9LSBindingEU8__strongP8NSStringEENS_9allocatorISE_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c141_ZTSNSt3__110shared_ptrINS_6vectorINS_4pairIU8__strongU13block_pointerFbP9LSContextRK9LSBindingEU8__strongP8NSStringEENS_9allocatorISE_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v1);
  }
}

uint64_t std::__shared_ptr_emplace<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>>::__shared_ptr_emplace[abi:nn200100]<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>> const&,std::allocator<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>>,0>(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_1EEF63C30;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>((a1 + 24), *a2, a2[1], (a2[1] - *a2) >> 4);
  return a1;
}

void std::__shared_ptr_emplace<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EEF63C30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865D6250);
}

uint64_t *std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__init_with_size[abi:nn200100]<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void *std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*,std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>*>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *a4 = MEMORY[0x1865D71B0](*v6);
      a4[1] = *(v6 + 8);
      v6 += 16;
      a4 += 2;
    }

    while (v6 != a3);
  }

  return a4;
}

void std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::clear[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {

    v4 = *(i - 16);
  }

  a1[1] = v2;
}

void sub_18175F9A0(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_1817603FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

id LaunchServices::LSStatePlist::loadIfNeeded(void *a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = (a1 + 6);
  v4 = a1[6];
  if (!v4)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*a1 options:0 error:a3];
    if (v7)
    {
      v8 = [MEMORY[0x1E696AE40] propertyListWithData:v7 options:0 format:0 error:a3];
      if (v8)
      {
        if (std::function<BOOL ()(objc_object *)>::operator()((a1 + 2), v8))
        {
          objc_storeStrong(v5, v8);
        }

        else if (a3)
        {
          v11 = *MEMORY[0x1E696A278];
          v12[0] = @"parsed plist failed validation";
          v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
          *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A250], 4864, v9, "loadIfNeeded", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSStatePlist.mm", 22);
        }
      }
    }

    v4 = *v5;
  }

  return v4;
}

uint64_t std::function<BOOL ()(objc_object *)>::operator()(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    v6 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v6);
  }

  v4 = (*(*v3 + 48))(v3, &v7);

  return v4;
}

id LaunchServices::LSStatePlist::saveToDisk(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v24 = 0;
  v3 = [MEMORY[0x1E696AE40] dataWithPropertyList:v2 format:200 options:0 error:&v24];
  v4 = v24;
  if (v3)
  {
    v5 = [*a1 URLByAppendingPathExtension:@".safesave"];
    v6 = v5;
    v7 = open_dprotected_np([v5 fileSystemRepresentation], 513, 4, 0, 484);
    if ((v7 & 0x80000000) != 0)
    {
      v19 = *__error();
      v25 = *MEMORY[0x1E696A278];
      v26 = @"open_dprotected_np failed";
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v20 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], v19, v8, "saveToDisk", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSStatePlist.mm", 57);

      v4 = v20;
      goto LABEL_9;
    }

    v8 = [objc_alloc(MEMORY[0x1E696AC00]) initWithFileDescriptor:v7 closeOnDealloc:1];
    v23 = 0;
    v9 = [v8 writeData:v3 error:&v23];
    v10 = v23;

    if (v9)
    {
      v22 = 0;
      v11 = [v8 closeAndReturnError:&v22];
      v4 = v22;

      if (!v11)
      {
LABEL_9:

        goto LABEL_10;
      }

      v12 = v5;
      v13 = [v5 fileSystemRepresentation];
      v14 = [*a1 fileSystemRepresentation];
      rename(v13, v14, v15);
      if (!v16)
      {
        *(a1 + 60) = 0;
        goto LABEL_9;
      }

      v17 = *__error();
      v27 = *MEMORY[0x1E696A278];
      v28[0] = @"rename failed";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
      v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], v17, v18, "saveToDisk", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSStatePlist.mm", 52);
    }

    v4 = v10;
    goto LABEL_9;
  }

LABEL_10:

  return v4;
}

void sub_1817609E8(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id LaunchServices::LSStatePlist::read(uint64_t a1, void *a2)
{
  os_unfair_lock_lock((a1 + 8));
  v5 = LaunchServices::LSStatePlist::loadIfNeeded(a1, v4, a2);
  os_unfair_lock_unlock((a1 + 8));

  return v5;
}

id LaunchServices::LSStatePlist::modify(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 8));
  v14 = 0;
  v5 = LaunchServices::LSStatePlist::loadIfNeeded(a1, v4, &v14);
  v6 = v14;
  v7 = std::function<objc_object * ()(objc_object *,NSError *)>::operator()(a2, v5, v6);
  v8 = v7;
  if (v5 && !v7)
  {
    v9 = _LSDefaultLog(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      LaunchServices::LSStatePlist::modify(v9);
    }

    v10 = 0;
    v11 = *(a1 + 48);
    *(a1 + 48) = 0;
LABEL_6:

    goto LABEL_11;
  }

  objc_storeStrong((a1 + 48), v7);
  if (!v8 || ([v5 isEqual:v8] & 1) != 0 || (*(a1 + 60) = 1, *(a1 + 56)))
  {
    v10 = 0;
  }

  else
  {
    v13 = LaunchServices::LSStatePlist::saveToDisk(a1);
    v10 = v13;
    if (v13)
    {
      v11 = _LSDefaultLog(v13);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LaunchServices::LSStatePlist::modify(v10, v11);
      }

      goto LABEL_6;
    }
  }

LABEL_11:

  os_unfair_lock_unlock((a1 + 8));

  return v10;
}

void sub_181760C10(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

id std::function<objc_object * ()(objc_object *,NSError *)>::operator()(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v9 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v8);
  }

  v6 = (*(*v5 + 48))(v5, &v10, &v9);

  return v6;
}

id LaunchServices::LSStatePlist::save(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 2);
  if (LOBYTE(this[15]._os_unfair_lock_opaque) == 1)
  {
    v2 = LaunchServices::LSStatePlist::saveToDisk(this);
    v3 = v2;
    if (v2)
    {
      v4 = _LSDefaultLog(v2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        LaunchServices::LSStatePlist::save(this, v3, v4);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(this + 2);

  return v3;
}

void sub_181760DC0(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v1 + 2);

  _Unwind_Resume(a1);
}

void sub_18176106C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817613FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181761624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181761EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181763100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v20 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t initIMMessagePayloadProviderExtensionPointName()
{
  v0 = IMSharedUtilitiesLibrary_frameworkLibrary;
  if (!IMSharedUtilitiesLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/IMSharedUtilities.framework/IMSharedUtilities", 2);
    IMSharedUtilitiesLibrary_frameworkLibrary = v0;
  }

  result = *dlsym(v0, "IMMessagePayloadProviderExtensionPointName");
  constantIMMessagePayloadProviderExtensionPointName = result;
  getIMMessagePayloadProviderExtensionPointName = IMMessagePayloadProviderExtensionPointNameFunction;
  return result;
}

id init_ISIconDataForResourceProxy_0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary_2;
  if (!IconServicesLibrary_frameworkLibrary_2)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary_2 = v6;
  }

  softLink_ISIconDataForResourceProxy_0 = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = softLink_ISIconDataForResourceProxy_0(v5, a2, a3);

  return v7;
}

void sub_181763FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a16, 8);

  _Unwind_Resume(a1);
}

void sub_181764B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  _Block_object_dispose((v16 - 48), 8);

  _Unwind_Resume(a1);
}

void sub_181764F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181765128(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_18176567C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose((v36 - 168), 8);
  _Block_object_dispose((v36 - 136), 8);

  _Unwind_Resume(a1);
}

void ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke()
{
  v0 = misLibrary(void)::libLibrary;
  if (misLibrary(void)::libLibrary || (v0 = dlopen("/usr/lib/libmis.dylib", 2), (misLibrary(void)::libLibrary = v0) != 0))
  {
    getkMISMinSupportedSignatureVersion_ptr(void)::ptr = dlsym(v0, "kMISMinSupportedSignatureVersion");
    if (getkMISMinSupportedSignatureVersion_ptr(void)::ptr)
    {
      return;
    }

    v1 = dlerror();
    v2 = _LSDefaultLog(v1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke_cold_1(v1, v2);
    }
  }

  else
  {
    v3 = dlerror();
    v2 = _LSDefaultLog(v3);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      ___ZL39getkMISMinSupportedSignatureVersion_ptrv_block_invoke_cold_2(v3, v2);
    }
  }
}

void sub_181766714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a18, 8);

  _Unwind_Resume(a1);
}

uint64_t LSHandlerPref::Add(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1;
  [(_LSDatabase *)v5 store];
  [(_LSDatabase *)v5 schema];
  v6 = CSStoreAllocUnit();
  if (v6)
  {
    v27 = 0u;
    v26 = 0u;
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v12[2] = a2;
    v12[3] = *([(_LSDatabase *)v5 schema]+ 104 * a3 + 216);
    v15 = 0;
    v13 = 0;
    v14 = 0;
    for (i = 10; i != 58; i += 8)
    {
      v8 = &v12[i];
      *v8 = kLSVersionNumberNull;
      v8[1] = unk_1817E90C0;
    }

    v9 = [(_LSDatabase *)v5 store];
    v10 = [(_LSDatabase *)v5 schema];
    v12[0] = CSBindableKeyMapNextKey(v9, v10 + 24);
    v12[1] = 1;
    Current = CFAbsoluteTimeGetCurrent();
    [(_LSDatabase *)v5 store];
    _CSStringRetain();
    [(_LSDatabase *)v5 store];
    _CSStringRetain();
    [(_LSDatabase *)v5 store];
    [(_LSDatabase *)v5 schema];
    _CSStoreWriteToUnit();
    _LSBindableActivate(v5, v6 | 1, a3, a2, _LSBindableComparePriority, 0);
  }

  return v6;
}

void LSHandlerPref::Remove(LSHandlerPref *this, _LSDatabase *a2)
{
  v6 = this;
  if (v6 && a2 && [(_LSDatabase *)v6 store])
  {
    v3 = LSHandlerPref::Get(v6, a2);
    [(_LSDatabase *)v6 store];
    [(_LSDatabase *)v6 schema];
    CSMapRemoveValue();
    BindingMapIndex = _LSDatabaseFindBindingMapIndex(v6, *(v3 + 12));
    if (BindingMapIndex != -1)
    {
      _LSBindableDeactivate(v6, a2 | 1, BindingMapIndex, *(v3 + 8), 0);
    }

    [(_LSDatabase *)v6 store];
    _CSStringRelease();
    [(_LSDatabase *)v6 store];
    _CSStringRelease();
    for (i = 0; i != 24; i += 4)
    {
      [(_LSDatabase *)v6 store];
      _CSStringRelease();
    }

    [(_LSDatabase *)v6 schema];
    CSStoreFreeUnit();
  }
}

uint64_t LSHandlerPref::Get(LSHandlerPref *this, _LSDatabase *a2)
{
  v2 = a2;
  v3 = this;
  v4 = v3;
  Unit = 0;
  if (v3 && v2)
  {
    [(_LSDatabase *)v3 store];
    [(_LSDatabase *)v4 schema];
    Unit = CSStoreGetUnit();
  }

  return Unit;
}

void LSHandlerPref::UpdateBindingGenerationForTag(void *a1, uint64_t a2, int a3)
{
  v5 = a1;
  [(_LSDatabase *)v5 store];
  v6 = CSStoreGetGeneration() + 1;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___ZN13LSHandlerPref29UpdateBindingGenerationForTagEP11_LSDatabasej14LSBindingMapID_block_invoke;
  v8[3] = &unk_1E6A1D868;
  v7 = v5;
  v9 = v7;
  v10 = v6;
  _LSDatabaseEnumeratingBindingMap(v7, a3, a2, v8);
}

void LSHandlerPref::SetRoleHandlerForTag(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, __int128 *a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v14 = 0;
  LSHandlerPref::GetOrAddHandlerPref(v11, a2, a3, 1, &v14);
  v12 = a6[1];
  v15[0] = *a6;
  v15[1] = v12;
  LSHandlerPref::SetRoleHandler(v11, v14, a4, a5, v15, v13);
  LSHandlerPref::UpdateBindingGenerationForTag(v11, a2, a3);
}

void LSHandlerPref::SetRoleHandler(LSHandlerPref *this, _LSDatabase *a2, unsigned int a3, uint64_t a4, __int128 *a5, LSVersionNumber *a6)
{
  v7 = a4;
  v63 = *MEMORY[0x1E69E9840];
  v10 = this;
  v11 = v10;
  if (v10)
  {
    if (a2)
    {
      v12 = LSHandlerPref::Get(v10, a2);
      if (v12)
      {
        v13 = *v12;
        v14 = v12[2];
        v47[1] = v12[1];
        v48 = v14;
        v47[0] = v13;
        v15 = v12[3];
        v16 = v12[4];
        v17 = v12[6];
        v51 = v12[5];
        v52 = v17;
        v49 = v15;
        v50 = v16;
        v18 = v12[7];
        v19 = v12[8];
        v20 = v12[10];
        v55 = v12[9];
        v56 = v20;
        v53 = v18;
        v54 = v19;
        v21 = v12[11];
        v22 = v12[12];
        v23 = v12[13];
        *&v58[28] = *(v12 + 220);
        *v58 = v22;
        *&v58[16] = v23;
        v57 = v21;
        if (a3 != -1)
        {
          v24 = 8;
          v25 = 168;
          while (1)
          {
            if ((a3 >> (v24 - 4)))
            {
              v26 = *(v47 + v24);
              if (v7)
              {
                if (v26)
                {
                  if (v7 == v26)
                  {
                    v27 = a5[1];
                    v61 = *a5;
                    v62 = v27;
                    v28 = *(&v47[1] + v25);
                    v59 = *(v47 + v25);
                    v60 = v28;
                    if (!_LSVersionNumberCompare(&v61, &v59))
                    {
                      goto LABEL_21;
                    }
                  }

                  if (v7 == DWORD1(v48))
                  {
                    v7 = 0;
                    *a5 = kLSVersionNumberNull;
                    a5[1] = unk_1817E90C0;
                  }

                  v29 = v11;
                  [(_LSDatabase *)v11 store];
                  _CSStringRelease();
                  v30 = v11;
                  [(_LSDatabase *)v11 store];
                  _CSStringRetain();
                }

                else
                {
                  if (v7 == DWORD1(v48))
                  {
                    v35 = a5[1];
                    v61 = *a5;
                    v62 = v35;
                    v36 = *(&v47[1] + v25);
                    v59 = *(v47 + v25);
                    v60 = v36;
                    if (!_LSVersionNumberCompare(&v61, &v59))
                    {
                      goto LABEL_21;
                    }
                  }

                  v37 = v11;
                  [(_LSDatabase *)v11 store];
                  _CSStringRetain();
                }

                *(v47 + v24) = v7;
                v32 = (v47 + v25);
                v33 = *a5;
                v34 = a5[1];
              }

              else
              {
                if (!v26)
                {
                  v7 = 0;
                  goto LABEL_21;
                }

                v31 = v11;
                [(_LSDatabase *)v11 store];
                _CSStringRelease();
                v7 = 0;
                *(v47 + v24) = 0;
                v32 = (v47 + v25);
                v33 = kLSVersionNumberNull;
                v34 = unk_1817E90C0;
              }

              *v32 = v33;
              v32[1] = v34;
            }

LABEL_21:
            --v24;
            v25 -= 32;
            if (v24 == 3)
            {
              goto LABEL_31;
            }
          }
        }

        for (i = 0; i != -10; i -= 2)
        {
          if (*(&v47[2] + i * 2))
          {
            [(_LSDatabase *)v11 store];
            _CSStringRelease();
            *(&v47[2] + i * 2) = 0;
            v39 = &v47[i];
            *(v39 + 168) = kLSVersionNumberNull;
            *(v39 + 184) = unk_1817E90C0;
          }
        }

        if (DWORD1(v48) != v7 || (v61 = *&v58[8], v62 = *&v58[24], v40 = a5[1], v59 = *a5, v60 = v40, _LSVersionNumberCompare(&v61, &v59)))
        {
          v41 = v11;
          [(_LSDatabase *)v11 store];
          _CSStringRelease();
          v42 = v11;
          [(_LSDatabase *)v11 store];
          _CSStringRetain();
          DWORD1(v48) = v7;
          v43 = a5[1];
          *&v58[8] = *a5;
          *&v58[24] = v43;
        }

LABEL_31:
        v44 = v11;
        [(_LSDatabase *)v11 store];
        DWORD1(v47[0]) = CSStoreGetGeneration() + 1;
        *&v58[40] = CFAbsoluteTimeGetCurrent();
        v45 = v11;
        [(_LSDatabase *)v11 store];
        v46 = v11;
        [(_LSDatabase *)v11 schema];
        _CSStoreWriteToUnit();
      }
    }
  }
}

void LSHandlerPref::RemoveHandlersForTag(void *a1, uint64_t a2, uint64_t a3)
{
  *&v7[44] = *MEMORY[0x1E69E9840];
  v5 = a1;
  *v7 = 0;
  if (LSHandlerPref::GetOrAddHandlerPref(v5, a2, a3, 0, v7))
  {
    memset(&v7[4], 0, 32);
    LSHandlerPref::SetRoleHandler(v5, *v7, 0xFFFFFFFF, 0, &v7[4], v6);
    LSHandlerPref::UpdateBindingGenerationForTag(v5, a2, a3);
  }
}

void LSHandlerPref::RemoveRoleHandlerForTag(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v7 = a1;
  v28 = 0;
  if (LSHandlerPref::GetOrAddHandlerPref(v7, a2, a3, 0, &v28))
  {
    v8 = LSHandlerPref::Get(v7, v28);
    if (v8)
    {
      v9 = *v8;
      v10 = *(v8 + 32);
      v25[1] = *(v8 + 16);
      v25[2] = v10;
      v25[0] = v9;
      v11 = *(v8 + 48);
      v12 = *(v8 + 64);
      v13 = *(v8 + 96);
      v25[5] = *(v8 + 80);
      v25[6] = v13;
      v25[3] = v11;
      v25[4] = v12;
      v14 = *(v8 + 112);
      v15 = *(v8 + 128);
      v16 = *(v8 + 160);
      v25[9] = *(v8 + 144);
      v25[10] = v16;
      v25[7] = v14;
      v25[8] = v15;
      v17 = *(v8 + 176);
      v18 = *(v8 + 192);
      v19 = *(v8 + 208);
      v26 = *(v8 + 224);
      v25[12] = v18;
      v25[13] = v19;
      v25[11] = v17;
      v20 = 8;
      v21 = 168;
      do
      {
        if ((a4 >> (v20 - 4)))
        {
          *(v25 + v20) = 0;
          v22 = (v25 + v21);
          *v22 = kLSVersionNumberNull;
          v22[1] = unk_1817E90C0;
        }

        --v20;
        v21 -= 32;
      }

      while (v20 != 3);
      Current = CFAbsoluteTimeGetCurrent();
      v23 = 1;
      for (i = 32; i != 12; i -= 4)
      {
        if (*(v25 + i))
        {
          v23 = 0;
        }
      }

      if (v23)
      {
        LSHandlerPref::Remove(v7, v28);
      }

      else
      {
        [(_LSDatabase *)v7 store];
        [(_LSDatabase *)v7 schema];
        if (_CSStoreWriteToUnit())
        {
          LSHandlerPref::UpdateBindingGenerationForTag(v7, a2, a3);
        }
      }
    }
  }
}

void LSHandlerPref::RemoveRoleHandlersMatchingBundleID(LSHandlerPref *this, _LSDatabase *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = this;
  v16 = 0;
  v17 = &v16;
  v18 = 0x4812000000;
  v19 = __Block_byref_object_copy__42;
  v20 = __Block_byref_object_dispose__42;
  v21 = &unk_1818533FF;
  v23 = 0;
  v24 = 0;
  __p = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = v2;
  [(_LSDatabase *)v2 store];
  v4 = v2;
  [(_LSDatabase *)v2 schema];
  v5 = v2;
  _CSStoreEnumerateUnits();
  if (*(v13 + 6))
  {
    do
    {
      v7 = v5;
      [(_LSDatabase *)v5 store];
      _CSStringRelease();
      v8 = *(v13 + 6) - 1;
      *(v13 + 6) = v8;
    }

    while (v8);
  }

  v9 = v17[6];
  for (i = v17[7]; v9 != i; ++v9)
  {
    v11 = *v9;
    memset(v25, 0, sizeof(v25));
    LSHandlerPref::SetRoleHandler(v5, v11, 0xFFFFFFFF, 0, v25, v6);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  if (__p)
  {
    v23 = __p;
    operator delete(__p);
  }
}

void sub_181767898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29)
{
  _Block_object_dispose(&a18, 8);
  _Block_object_dispose(&a22, 8);
  if (__p)
  {
    a29 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN13LSHandlerPref34RemoveRoleHandlersMatchingBundleIDEP11_LSDatabasej_block_invoke(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4 = a2;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a3[13];
  v35[10] = a3[12];
  v36[0] = v9;
  *(v36 + 12) = *(a3 + 220);
  v10 = a3[9];
  v35[6] = a3[8];
  v35[7] = v10;
  v11 = a3[11];
  v35[8] = a3[10];
  v35[9] = v11;
  v12 = a3[5];
  v35[2] = a3[4];
  v35[3] = v12;
  v13 = a3[7];
  v35[4] = a3[6];
  v35[5] = v13;
  v34 = a3[1];
  v14 = a3[3];
  v35[0] = a3[2];
  v35[1] = v14;
  while (1)
  {
    v15 = *(a1 + 56);
    v16 = &v35[-1] + v6;
    if (v15 != *v16)
    {
      break;
    }

LABEL_6:
    ++*(*(*(a1 + 40) + 8) + 24);
    *v16 = 0;
    v18 = (&v35[2 * v6] + 8);
    *v18 = kLSVersionNumberNull;
    v18[1] = unk_1817E90C0;
    ++v6;
    v7 = 1;
    if (v6 == 6)
    {
      if ((v8 & 1) == 0)
      {
        v19 = *(*(a1 + 48) + 8);
        v21 = v19[7];
        v20 = v19[8];
        if (v21 >= v20)
        {
          v23 = v19[6];
          v24 = v21 - v23;
          v25 = (v21 - v23) >> 2;
          v26 = v25 + 1;
          if ((v25 + 1) >> 62)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v27 = v20 - v23;
          if (v27 >> 1 > v26)
          {
            v26 = v27 >> 1;
          }

          v28 = v27 >= 0x7FFFFFFFFFFFFFFCLL;
          v29 = 0x3FFFFFFFFFFFFFFFLL;
          if (!v28)
          {
            v29 = v26;
          }

          if (v29)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v19 + 6), v29);
          }

          v30 = (v21 - v23) >> 2;
          v31 = (4 * v25);
          v32 = (4 * v25 - 4 * v30);
          *v31 = v4;
          v22 = v31 + 1;
          memcpy(v32, v23, v24);
          v33 = v19[6];
          v19[6] = v32;
          v19[7] = v22;
          v19[8] = 0;
          if (v33)
          {
            operator delete(v33);
          }
        }

        else
        {
          *v21 = a2;
          v22 = v21 + 4;
        }

        v19[7] = v22;
        return;
      }

LABEL_11:
      [(_LSDatabase *)*(a1 + 32) store];
      [(_LSDatabase *)*(a1 + 32) schema];
      _CSStoreWriteToUnit();
      return;
    }
  }

  while (v6 != 5)
  {
    v17 = v16[1];
    ++v16;
    ++v6;
    if (v15 == v17)
    {
      v8 = 1;
      goto LABEL_6;
    }
  }

  if (v7)
  {
    goto LABEL_11;
  }
}

void LSHandlerPref::SetModificationDate(LSHandlerPref *this, _LSDatabase *a2, double a3)
{
  v4 = this;
  if (LSHandlerPref::Get(v4, a2))
  {
    [(_LSDatabase *)v4 store];
    [(_LSDatabase *)v4 schema];
    _CSStoreWriteToUnit();
  }
}

uint64_t LSHandlerPref::roleHandler(LSHandlerPref *this, unsigned int a2, LSVersionNumber *a3)
{
  if (a2 != -1 || (v4 = this + 36, !*(this + 9)))
  {
    v3 = (this + 168);
    v4 = this + 32;
    v5 = 5;
    while (((a2 >> (v5 - 1)) & 1) == 0 || !*v4)
    {
      v3 -= 2;
      v4 -= 4;
      if (!--v5)
      {
        if (a3)
        {
          v6 = *(this + 216);
          *a3->_opaque = *(this + 200);
          *&a3->_opaque[16] = v6;
        }

        v4 = this + 36;
        return *v4;
      }
    }

    if (!a3)
    {
      return *v4;
    }

    v7 = *v3;
    v8 = v3[1];
    goto LABEL_14;
  }

  if (a3)
  {
    v7 = *(this + 200);
    v8 = *(this + 216);
LABEL_14:
    *a3->_opaque = v7;
    *&a3->_opaque[16] = v8;
  }

  return *v4;
}

void LSHandlerPref::GetVisualizationFunctions(unsigned int *(**__return_ptr a1)(LSHandlerPref **this, LSContext *a2, _LSDatabase *a3)@<X8>)
{
  *a1 = LaunchServices::HandlerPrefs::getSummary;
  a1[1] = LaunchServices::HandlerPrefs::display;
  a1[2] = 0;
}

unsigned int *LaunchServices::HandlerPrefs::getSummary(LSHandlerPref **this, LSContext *a2, _LSDatabase *a3)
{
  v4 = LSHandlerPref::Get(*this, a3);
  if (v4)
  {
    [(_LSDatabase *)*this store];
    v4 = _CSStringCopyCFString();
  }

  return v4;
}

BOOL LaunchServices::HandlerPrefs::display(LSHandlerPref **this, LSContext *a2, _LSDatabase *a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = LSHandlerPref::Get(*this, a3);
  if (!v8)
  {
    goto LABEL_28;
  }

  {
    LaunchServices::HandlerPrefs::display();
  }

  BindingMapIndex = _LSDatabaseFindBindingMapIndex(*this, *(v8 + 12));
  if (BindingMapIndex < 1)
  {
    if (!BindingMapIndex)
    {
      *v27._opaque = 0;
      _UTGetActiveTypeForIdentifier(*this, *(v8 + 8), &v27);
      v23 = [(_LSDatabase *)*this schema];
      v24 = [v7 link:*(v23 + 16) unit:*v27._opaque];
      [v7 write:@"unknown" string:v24];

      v25 = @"unknown";
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (BindingMapIndex > 4)
  {
LABEL_8:
    v10 = @"unknown";
    goto LABEL_9;
  }

  v10 = *(&LaunchServices::HandlerPrefs::display(LSContext *,unsigned int,unsigned int,CSStoreAttributedStringWriter *)::labels + BindingMapIndex);
LABEL_9:
  v25 = v10;
  [v7 write:? stringID:?];
LABEL_10:
  v11 = *(v8 + 36);
  if (v11)
  {
LABEL_15:
    v14 = (v8 + 200);
  }

  else
  {
    v12 = -168;
    v13 = 32;
    while (1)
    {
      v11 = *(v8 + v13);
      if (v11)
      {
        break;
      }

      v12 += 32;
      v13 -= 4;
      if (v12 == -8)
      {
        v11 = 0;
        goto LABEL_15;
      }
    }

    v14 = (v8 - v12);
  }

  v15 = 0;
  v16 = v14[1];
  *v29._opaque = *v14;
  *&v29._opaque[16] = v16;
  do
  {
    v27 = *ymmword_1E6A1DA40;
    v28 = @"importer";
    memset(&v26, 0, sizeof(v26));
    v17 = LSHandlerPref::roleHandler(v8, 1 << v15, &v26);
    if (v17)
    {
      if (v17 != v11)
      {
        [v7 write:*&v27._opaque[8 * v15] stringID:v17];
        memset(&v31, 0, sizeof(v31));
        v30 = v26;
        if (_LSVersionNumberCompare(&v31, &v30))
        {
          v18 = [*&v27._opaque[8 * v15] stringByAppendingString:@" (bundle ver)"];
          v31 = v26;
          v19 = _LSVersionNumberGetStringRepresentation(&v31);
          [v7 write:v18 string:v19];
        }
      }
    }

    for (i = 32; i != -8; i -= 8)
    {
    }

    ++v15;
  }

  while (v15 != 5);
  if (v11)
  {
    [v7 write:@"all roles" stringID:v11];
    memset(&v27, 0, sizeof(v27));
    v31 = v29;
    if (_LSVersionNumberCompare(&v27, &v31))
    {
      v27 = v29;
      v21 = _LSVersionNumberGetStringRepresentation(&v27);
      [v7 write:@"all roles (bundle ver)" string:v21];
    }
  }

  [v7 write:@"mod date" interval:*(v8 + 232)];

LABEL_28:
  return v8 != 0;
}

void LSHandlerPref::RemoveAll(LSHandlerPref *this, _LSDatabase *a2)
{
  v2 = this;
  v5 = 0;
  v6 = &v5;
  v7 = 0x4812000000;
  v8 = __Block_byref_object_copy__42;
  v9 = __Block_byref_object_dispose__42;
  v10 = &unk_1818533FF;
  v12 = 0;
  v13 = 0;
  __p = 0;
  [(_LSDatabase *)v2 store];
  [(_LSDatabase *)v2 schema];
  _CSStoreEnumerateUnits();
  v3 = v6[6];
  v4 = v6[7];
  while (v3 != v4)
  {
    LSHandlerPref::Remove(v2, *v3++);
  }

  _Block_object_dispose(&v5, 8);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_1817681EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  _Block_object_dispose(&a14, 8);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ___ZN13LSHandlerPref9RemoveAllEP11_LSDatabase_block_invoke(uint64_t a1, int a2)
{
  v3 = *(*(a1 + 32) + 8);
  v5 = v3[7];
  v4 = v3[8];
  if (v5 >= v4)
  {
    v7 = v3[6];
    v8 = v5 - v7;
    v9 = (v5 - v7) >> 2;
    v10 = v9 + 1;
    if ((v9 + 1) >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100]((v3 + 6), v13);
    }

    v14 = (v5 - v7) >> 2;
    v15 = (4 * v9);
    v16 = (4 * v9 - 4 * v14);
    *v15 = a2;
    v6 = v15 + 1;
    memcpy(v16, v7, v8);
    v17 = v3[6];
    v3[6] = v16;
    v3[7] = v6;
    v3[8] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = a2;
    v6 = v5 + 4;
  }

  v3[7] = v6;
}

uint64_t LSHandlerPref::CopyHandlers(LSHandlerPref *this)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___ZN13LSHandlerPref12CopyHandlersEv_block_invoke;
  v6[3] = &unk_1E6A1D8E0;
  v6[4] = &v7;
  _LSWithSecurePreferences(v6);
  v2 = v8[3];
  if (!v2)
  {
    v3 = _LSDefaultLog(v1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = _CFGetEUID();
      *buf = 67109120;
      v12 = v4;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "Handler prefs NOT found, will use empty array; uid = %d\n", buf, 8u);
    }

    v2 = MEMORY[0x1E695E0F0];
    v8[3] = MEMORY[0x1E695E0F0];
  }

  _Block_object_dispose(&v7, 8);
  return v2;
}

void sub_181768438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

const __CFArray *___ZN13LSHandlerPref12CopyHandlersEv_block_invoke(uint64_t a1, CFDictionaryRef theDict)
{
  v9 = *MEMORY[0x1E69E9840];
  result = CFDictionaryGetValue(theDict, @"LSHandlers");
  if (result)
  {
    v4 = result;
    v5 = _LSDefaultLog(result);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v6 = _CFGetEUID();
      Count = CFArrayGetCount(v4);
      ___ZN13LSHandlerPref12CopyHandlersEv_block_invoke_cold_1(v8, v6, Count, v5);
    }

    result = CFRetain(v4);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

uint64_t LSHandlerPref::ValidateHandler(LSHandlerPref *this, const __CFString *a2, LSContext *a3, const __CFString *a4, const __CFString *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = this;
  if (!UTTypeEqual(a2, @"public.url-scheme"))
  {
    goto LABEL_9;
  }

  v9 = 0;
  while (!CFEqual(LSHandlerPref::ValidateHandler(_LSDatabase *,__CFString const*,__CFString const*,__CFString const*)::OTPSchemes[v9], a3))
  {
    if (++v9 == 4)
    {
      goto LABEL_9;
    }
  }

  if (!a4 || !a3 || (v10 = CFEqual(a4, @"com.apple.Preferences"), !v10))
  {
LABEL_9:
    v11 = UTTypeEqual(a2, @"com.apple.uniform-type-identifier");
    v12 = 1;
    if (!a3 || !v11)
    {
      goto LABEL_16;
    }

    *v17 = v8;
    v14 = LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(v17, a3, v13);

    if (v14)
    {
      v12 = 1;
      goto LABEL_16;
    }
  }

  v15 = _LSDefaultLog(v10);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *v17 = 138543874;
    *&v17[4] = a4;
    v18 = 2114;
    v19 = a2;
    v20 = 2114;
    v21 = a3;
    _os_log_impl(&dword_18162D000, v15, OS_LOG_TYPE_DEFAULT, "handler preference for %{public}@ for %{public}@ %{public}@ failed validation", v17, 0x20u);
  }

  v12 = 0;
LABEL_16:

  return v12;
}

uint64_t LSHandlerPref::Load(LSHandlerPref *this, _LSDatabase *a2, const __CFArray *a3)
{
  v128 = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E695DF70] array];
  v94 = a2;
  [(_LSDatabase *)v4 store];
  [(_LSDatabase *)v4 schema];
  v113[0] = MEMORY[0x1E69E9820];
  v113[1] = 3221225472;
  v113[2] = ___ZN13LSHandlerPref4LoadEP11_LSDatabasePK9__CFArray_block_invoke;
  v113[3] = &unk_1E6A18FA0;
  v114 = v6;
  _CSStoreEnumerateUnits();
  v111 = 0u;
  v112 = 0u;
  v109 = 0u;
  v110 = 0u;
  v7 = v114;
  v8 = [v7 countByEnumeratingWithState:&v109 objects:v126 count:16];
  if (v8)
  {
    v9 = *v110;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v110 != v9)
        {
          objc_enumerationMutation(v7);
        }

        LSHandlerPref::Remove(v4, [*(*(&v109 + 1) + 8 * i) unsignedLongLongValue]);
      }

      v8 = [v7 countByEnumeratingWithState:&v109 objects:v126 count:16];
    }

    while (v8);
  }

  v11 = v94;
  objc_autoreleasePoolPop(v5);
  if (v94)
  {
    v12 = CFGetTypeID(v94);
    if (v12 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v94);
      v14 = Count;
      if (Count >= 1)
      {
        v15 = 0;
        v95 = Count;
        do
        {
          v96 = v15;
          ValueAtIndex = CFArrayGetValueAtIndex(v11, v15);
          v17 = ValueAtIndex;
          v98[0] = 0;
          if (!ValueAtIndex)
          {
            goto LABEL_108;
          }

          v18 = CFGetTypeID(ValueAtIndex);
          if (v18 != CFDictionaryGetTypeID())
          {
            goto LABEL_108;
          }

          v97 = v4;
          if (CFDictionaryContainsKey(v17, @"LSHandlerURLScheme"))
          {
            TypeID = CFStringGetTypeID();
            Value = CFDictionaryGetValue(v17, @"LSHandlerURLScheme");
            v21 = Value;
            if (!Value)
            {
              goto LABEL_50;
            }

            v22 = CFGetTypeID(Value) == TypeID ? v21 : 0;
            v23 = @"public.url-scheme";
            if (!@"public.url-scheme")
            {
              goto LABEL_50;
            }
          }

          else if (CFDictionaryContainsKey(v17, @"LSHandlerContentType"))
          {
            v24 = CFStringGetTypeID();
            v25 = CFDictionaryGetValue(v17, @"LSHandlerContentType");
            v26 = v25;
            if (!v25)
            {
              goto LABEL_50;
            }

            v22 = CFGetTypeID(v25) == v24 ? v26 : 0;
            v23 = @"com.apple.uniform-type-identifier";
            if (!@"com.apple.uniform-type-identifier")
            {
              goto LABEL_50;
            }
          }

          else
          {
            v27 = CFStringGetTypeID();
            v28 = CFDictionaryGetValue(v17, @"LSHandlerContentTagClass");
            v29 = v28;
            if (v28)
            {
              if (CFGetTypeID(v28) == v27)
              {
                v23 = v29;
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }

            v30 = CFStringGetTypeID();
            v31 = CFDictionaryGetValue(v17, @"LSHandlerContentTag");
            v32 = v31;
            if (!v31)
            {
              goto LABEL_50;
            }

            v22 = CFGetTypeID(v31) == v30 ? v32 : 0;
            if (!v23)
            {
              goto LABEL_50;
            }
          }

          if (v22)
          {
            if (CFEqual(v23, @"com.apple.uniform-type-identifier"))
            {
              if (!LSDefaultAppCategoryGetInfoForTypeIdentifierOrSubordinateTypeIdentifier(v22))
              {
                v87 = CFNumberGetTypeID();
                v88 = CFDictionaryGetValue(v17, @"LSHandlerModificationDate");
                if (!v88 || (v88 = CFGetTypeID(v88), v88 != v87))
                {
                  v89 = _LSDefaultLog(v88);
                  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                  {
                    *valuePtr = 138412546;
                    *&valuePtr[4] = v23;
                    *&valuePtr[12] = 2112;
                    *&valuePtr[14] = v22;
                    _os_log_impl(&dword_18162D000, v89, OS_LOG_TYPE_DEFAULT, "discarding old handler preference for %@/%@ (no modification timestamp)", valuePtr, 0x16u);
                  }

                  goto LABEL_108;
                }
              }
            }

            v33 = 5u;
            do
            {
              v34 = kLSHandlerRoleKeys[v33];
              v35 = CFStringGetTypeID();
              v36 = CFDictionaryGetValue(v17, v34);
              v37 = v36;
              if (v36 && CFGetTypeID(v36) == v35)
              {
                v39 = LSHandlerPref::ValidateHandler(v97, v23, v22, v37, v38);
                if (!(v33 * 8))
                {
                  break;
                }
              }

              else
              {
                v39 = 1;
                if (!(v33 * 8))
                {
                  break;
                }
              }

              --v33;
            }

            while (v39);

            v14 = v95;
            if (!v39)
            {
              goto LABEL_108;
            }

            goto LABEL_51;
          }

LABEL_50:

LABEL_51:
          if (CFDictionaryContainsKey(v17, @"LSHandlerContentType"))
          {
            v40 = v97;
            v41 = CFStringGetTypeID();
            v42 = CFDictionaryGetValue(v17, @"LSHandlerContentType");
            StringForCFString = v42;
            if (v42)
            {
              if (CFGetTypeID(v42) == v41)
              {
                StringForCFString = _LSDatabaseCreateStringForCFString(v40, StringForCFString, 1);
                BindingMapIndex = 0;
LABEL_62:

                goto LABEL_63;
              }

              StringForCFString = 0;
            }

            BindingMapIndex = 0xFFFFFFFFLL;
            goto LABEL_62;
          }

          if (CFDictionaryContainsKey(v17, @"LSHandlerContentTag"))
          {
            v45 = CFStringGetTypeID();
            v46 = CFDictionaryGetValue(v17, @"LSHandlerContentTagClass");
            v47 = v46;
            if (v46)
            {
              if (CFGetTypeID(v46) == v45)
              {
                v48 = v47;
              }

              else
              {
                v48 = 0;
              }
            }

            else
            {
              v48 = 0;
            }

            v82 = _LSDatabaseGetStringForCFString(v97, v48, 1);
            if (v82)
            {
              BindingMapIndex = _LSDatabaseFindBindingMapIndex(v97, v82);
              if (BindingMapIndex != -1)
              {
                v83 = CFStringGetTypeID();
                v84 = CFDictionaryGetValue(v17, @"LSHandlerContentTag");
                v85 = v84;
                if (v84)
                {
                  if (CFGetTypeID(v84) == v83)
                  {
                    v86 = v85;
                  }

                  else
                  {
                    v86 = 0;
                  }
                }

                else
                {
                  v86 = 0;
                }

                v91 = v97;
                v92 = [(_LSDatabase *)v97 schema];
                StringForCFString = _LSDatabaseCreateStringForCFString(v97, v86, *(v92 + 104 * BindingMapIndex + 220));
                goto LABEL_63;
              }
            }
          }

          else if (CFDictionaryContainsKey(v17, @"LSHandlerURLScheme"))
          {
            v78 = CFStringGetTypeID();
            v79 = CFDictionaryGetValue(v17, @"LSHandlerURLScheme");
            v80 = v79;
            if (v79)
            {
              if (CFGetTypeID(v79) == v78)
              {
                v81 = v80;
              }

              else
              {
                v81 = 0;
              }
            }

            else
            {
              v81 = 0;
            }

            StringForCFString = _LSDatabaseCreateStringForCFString(v97, v81, 1);
            BindingMapIndex = 5;
LABEL_63:
            if (StringForCFString)
            {
              LSHandlerPref::GetOrAddHandlerPref(v97, StringForCFString, BindingMapIndex, 1, v98);
              v49 = valuePtr;
              for (j = 7; j > 1; --j)
              {
                *v49 = kLSVersionNumberNull;
                v49[1] = unk_1817E90C0;
                v49 += 2;
              }

              if (BindingMapIndex == 5)
              {
                v51 = 5;
              }

              else
              {
                v51 = 0;
              }

              v52 = CFDictionaryGetValue(v17, @"LSHandlerPreferredVersions");
              v53 = v52;
              if (v52)
              {
                v54 = CFGetTypeID(v52);
                if (v54 == CFDictionaryGetTypeID())
                {
                  v55 = 0;
                  v56 = valuePtr;
                  do
                  {
                    v57 = CFDictionaryGetValue(v53, kLSHandlerRoleKeys[v55]);
                    v58 = v57;
                    if (v57)
                    {
                      v59 = CFGetTypeID(v57);
                      if (v59 == CFStringGetTypeID())
                      {
                        _LSGetVersionFromString(v58, v127);
                        v60 = v127[1];
                        *v56 = v127[0];
                        v56[1] = v60;
                      }
                    }

                    v56 += 2;
                    ++v55;
                  }

                  while (v55 != 6);
                }
              }

              v106 = v122;
              v107 = v123;
              v108[0] = v124;
              v108[1] = v125;
              v102 = v118;
              v103 = v119;
              v104 = v120;
              v105 = v121;
              *&v98[1] = *valuePtr;
              v99 = *&valuePtr[16];
              v61 = v108;
              v62 = 5;
              v100 = v116;
              v101 = v117;
              do
              {
                v63 = kLSHandlerRoleKeys[v62];
                v64 = CFStringGetTypeID();
                v65 = CFDictionaryGetValue(v17, v63);
                v66 = v65;
                if (v65 && CFGetTypeID(v65) == v64)
                {
                  v67 = _LSDatabaseCreateStringForCFString(v97, v66, 0);
                  if (v62 == 5)
                  {
                    v69 = -1;
                  }

                  else
                  {
                    v69 = 1 << v62;
                  }

                  v70 = v61[1];
                  *valuePtr = *v61;
                  *&valuePtr[16] = v70;
                  LSHandlerPref::SetRoleHandler(v97, v98[0], v69, v67, valuePtr, v68);
                }

                v61 -= 2;
              }

              while (v62-- > v51);
              v11 = v94;
              v14 = v95;
              v72 = CFNumberGetTypeID();
              v73 = CFDictionaryGetValue(v17, @"LSHandlerModificationDate");
              v74 = v73;
              if (v73 && CFGetTypeID(v73) == v72)
              {
                v75 = v98[0];
                *valuePtr = 0;
                v76 = CFNumberGetValue(v74, kCFNumberLongLongType, valuePtr);
                v77 = *valuePtr;
                if (!v76)
                {
                  v77 = 0.0;
                }
              }

              else
              {
                v77 = 0.0;
                v75 = v98[0];
              }

              LSHandlerPref::SetModificationDate(v97, v75, v77);
            }
          }

LABEL_108:
          v90 = v4;
          [(_LSDatabase *)v4 store];
          _CSStringRelease();
          v15 = v96 + 1;
        }

        while (v96 + 1 != v14);
      }
    }
  }

  return 0;
}

void ___ZN13LSHandlerPref4LoadEP11_LSDatabasePK9__CFArray_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  [v2 addObject:?];
}

uint64_t LSHandlerPref::Save(LSHandlerPref *this, _LSDatabase *a2)
{
  v2 = this;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3812000000;
  v17[3] = __Block_byref_object_copy__42;
  v17[4] = __Block_byref_object_dispose__43;
  v17[5] = &unk_1818533FF;
  v18 = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"static OSStatus LSHandlerPref::Save(__strong LSDatabaseRef)"];
    [v4 handleFailureInFunction:v5 file:@"LSPrefs.mm" lineNumber:1111 description:@"Failed to create empty CFArray."];
  }

  [(_LSDatabase *)v2 store];
  [(_LSDatabase *)v2 schema];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3321888768;
  v12 = ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke;
  v13 = &unk_1EEF63D10;
  v6 = v2;
  v14 = v6;
  v15 = v17;
  v16 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  _CSStoreEnumerateUnits();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3321888768;
  v8[2] = ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke_59;
  v8[3] = &__block_descriptor_40_ea8_32c29_ZTS10CFReleaserIP9__CFArrayE_e25_v16__0____CFDictionary__8l;
  cf = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  _LSWithMutableSecurePreferences(v8);
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v16)
  {
    CFRelease(v16);
  }

  v16 = 0;

  _Block_object_dispose(v17, 8);
  if (v18)
  {
    CFRelease(v18);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return 0;
}

void sub_18176934C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, CFTypeRef a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, CFTypeRef a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, CFTypeRef cf)
{
  _Block_object_dispose(&a22, 8);
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(a1);
}

CFTypeRef __Block_byref_object_copy__42(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  if (!a3[9])
  {
    v11 = 8;
    while (!a3[v11])
    {
      if (--v11 == 3)
      {
        return;
      }
    }
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    BindingMapIndex = _LSDatabaseFindBindingMapIndex(*(a1 + 32), a3[3]);
    [(_LSDatabase *)*(a1 + 32) store];
    v9 = _CSStringCopyCFString();
    if (!v9)
    {
LABEL_34:
      CFRelease(v7);
      return;
    }

    value = v9;
    if (BindingMapIndex == 5)
    {
      v10 = @"LSHandlerURLScheme";
    }

    else
    {
      if (BindingMapIndex)
      {
        [(_LSDatabase *)*(a1 + 32) store];
        v12 = _CSStringCopyCFString();
        if (!v12)
        {
LABEL_33:
          CFRelease(value);
          goto LABEL_34;
        }

        v13 = v12;
        CFDictionarySetValue(v7, @"LSHandlerContentTag", value);
        CFDictionarySetValue(v7, @"LSHandlerContentTagClass", v13);
        CFRelease(v13);
LABEL_15:
        v14 = CFDictionaryCreateMutable(v5, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 48);
        if (v16 != v14)
        {
          *(v15 + 48) = v14;
          v14 = v16;
        }

        if (v14)
        {
          CFRelease(v14);
        }

        v17 = 0;
        v18 = kLSHandlerRoleKeys;
        do
        {
          if (a3[v17 / 4 + 4])
          {
            [(_LSDatabase *)*(a1 + 32) store];
            v19 = _CSStringCopyCFString();
            if (!v19)
            {
              goto LABEL_33;
            }

            v20 = &a3[2 * v17];
            v21 = *(v20 + 14);
            valuePtr[0] = *(v20 + 10);
            valuePtr[1] = v21;
            v22 = _LSVersionNumberCopyStringRepresentation(valuePtr);
            v23 = *(*(*(a1 + 40) + 8) + 48);
            v24 = *v18;
            if (v22)
            {
              CFDictionarySetValue(v23, *v18, v22);
            }

            else
            {
              CFDictionarySetValue(v23, *v18, @"-");
            }

            CFDictionarySetValue(v7, v24, v19);
            CFRelease(v19);
            if (v22)
            {
              CFRelease(v22);
            }
          }

          ++v18;
          v17 += 4;
        }

        while (v17 != 24);
        if (CFDictionaryGetCount(*(*(*(a1 + 40) + 8) + 48)) >= 1)
        {
          CFDictionarySetValue(v7, @"LSHandlerPreferredVersions", *(*(*(a1 + 40) + 8) + 48));
        }

        *&valuePtr[0] = a3[58];
        v25 = CFNumberCreate(v5, kCFNumberLongLongType, valuePtr);
        CFDictionarySetValue(v7, @"LSHandlerModificationDate", v25);
        if (v25)
        {
          CFRelease(v25);
        }

        CFArrayAppendValue(*(a1 + 48), v7);
        goto LABEL_33;
      }

      v10 = @"LSHandlerContentType";
    }

    CFDictionarySetValue(v7, v10, v9);
    goto LABEL_15;
  }
}

void sub_181769734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

CFTypeRef __copy_helper_block_ea8_48c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_48c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void ___ZN13LSHandlerPref4SaveEP11_LSDatabase_block_invoke_59(uint64_t a1, CFMutableDictionaryRef theDict)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFDictionarySetValue(theDict, @"LSHandlers", v2);
  }

  else
  {
    CFDictionaryRemoveValue(theDict, @"LSHandlers");
  }
}

CFTypeRef __copy_helper_block_ea8_32c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_ea8_32c29_ZTS10CFReleaserIP9__CFArrayE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 32) = 0;
}

void _LSHandlerPrefRemoveAllWithBundleID(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = os_transaction_create();
  v7 = [__LSDefaultsGetSharedInstance(v5 v6)];
  if ((v7 & 1) != 0 || ([__LSDefaultsGetSharedInstance(v7 v8)] & 1) == 0)
  {
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke;
    v30[3] = &unk_1E6A1D958;
    v31 = v3;
    v33 = v4;
    v32 = v5;
    v12 = MEMORY[0x1865D71B0](v30);
    v13 = &v31;
    v14 = &v33;
    v15 = &v32;
    if (![__LSDefaultsGetSharedInstance(v12 v18)])
    {
      v12[2](v12);
      goto LABEL_8;
    }

    v17 = +[LSDBExecutionContext sharedServerInstance];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_66;
    v28[3] = &unk_1E6A1A660;
    v19 = v12;
    v29 = v19;
    [(LSDBExecutionContext *)v17 performAsyncWrite:v28];
    v16 = &v29;
    v12 = v19;
  }

  else
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_2;
    v24[3] = &unk_1E6A1D980;
    v9 = v3;
    v25 = v9;
    v10 = v4;
    v27 = v10;
    v11 = v5;
    v26 = v11;
    v12 = [(_LSDService *)_LSDModifyService XPCProxyWithErrorHandler:v24];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = ___LSHandlerPrefRemoveAllWithBundleID_block_invoke_70;
    v20[3] = &unk_1E6A1D9A8;
    v21 = v9;
    v23 = v10;
    v22 = v11;
    [v12 removeAllHandlerPrefsForBundleID:v21 completionHandler:v20];
    v13 = &v25;
    v14 = &v27;
    v15 = &v26;
    v16 = &v21;

    v17 = v23;
  }

LABEL_8:
}

LaunchServices::PrefsStorage *LaunchServices::PrefsStorage::PrefsStorage(LaunchServices::PrefsStorage *this)
{
  *this = 0xFFFFFFFF00000000;
  *(this + 1) = 0;
  *(this + 4) = 0;
  v2 = [MEMORY[0x1E695DF90] dictionary];
  *(this + 3) = v2;
  v4 = [__LSDefaultsGetSharedInstance(v2 v3)];
  LaunchServices::notifyd::NotifyToken::RegisterCheck(&v9, v4);
  LaunchServices::notifyd::NotifyToken::operator=(this + 1, &v9);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v9);

  State = LaunchServices::notifyd::NotifyToken::getState((this + 4));
  if (v6)
  {
    v7 = State;
    os_unfair_lock_lock(this);
    *(this + 1) = v7;
    os_unfair_lock_unlock(this);
  }

  LaunchServices::PrefsStorage::_update(this, v6);
  return this;
}

void LaunchServices::PrefsStorage::_update(os_unfair_lock_s *this, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__76;
  v14 = __Block_byref_object_dispose__77;
  v15 = 0;
  v3 = [__LSDefaultsGetSharedInstance(this a2)];
  if ((v3 & 1) != 0 || ([__LSDefaultsGetSharedInstance(v3 v4)] & 1) == 0)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke;
    v9[3] = &unk_1E6A1D8E0;
    v9[4] = &v10;
    _LSWithInsecurePreferences(v9);
  }

  else
  {
    v5 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:?];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_79;
    v8[3] = &unk_1E6A1D9D0;
    v8[4] = &v10;
    [v5 getPreferencesWithCompletionHandler:v8];
  }

  if (v11[5])
  {
    os_unfair_lock_lock(this + 4);
    DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], v11[5], 1uLL);
    v7 = *&this[6]._os_unfair_lock_opaque;
    *&this[6]._os_unfair_lock_opaque = DeepCopy;

    os_unfair_lock_unlock(this + 4);
  }

  _Block_object_dispose(&v10, 8);
}

void sub_18176A2B0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 64), 8);

  _Unwind_Resume(a1);
}

BOOL LaunchServices::PrefsStorage::_needsUpdate(os_unfair_lock_s *this)
{
  State = LaunchServices::notifyd::NotifyToken::getState(&this[1]);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = State;
  os_unfair_lock_lock(this);
  v6 = *&this[2]._os_unfair_lock_opaque;
  v7 = v6 != v4;
  if (v6 != v4)
  {
    v8 = LaunchServices::PrefsStorage::_GetLog(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      LaunchServices::PrefsStorage::_needsUpdate();
    }

    *&this[2]._os_unfair_lock_opaque = v4;
  }

  os_unfair_lock_unlock(this);
  return v7;
}

id LaunchServices::PrefsStorage::_GetLog(LaunchServices::PrefsStorage *this)
{
  if (LaunchServices::PrefsStorage::_GetLog(void)::once != -1)
  {
    LaunchServices::PrefsStorage::_GetLog();
  }

  v2 = LaunchServices::PrefsStorage::_GetLog(void)::result;

  return v2;
}

uint64_t __Block_byref_object_copy__76(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = LaunchServices::PrefsStorage::_GetLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_2_cold_1();
  }
}

void ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  else
  {
    v9 = LaunchServices::PrefsStorage::_GetLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      ___ZN14LaunchServices12PrefsStorage7_updateEv_block_invoke_2_cold_1();
    }
  }
}

void LaunchServices::PrefsStorage::_updateOtherProcesses(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  State = LaunchServices::notifyd::NotifyToken::getState(&this[1]);
  if (v3)
  {
    v4 = LaunchServices::notifyd::NotifyToken::setState(&this[1], State + 1);
    v5 = LaunchServices::PrefsStorage::_GetLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      LaunchServices::PrefsStorage::_updateOtherProcesses();
    }
  }

  os_unfair_lock_unlock(this);
}

void LaunchServices::PrefsStorage::_setNeedsUpdate(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this);
  *&this[2]._os_unfair_lock_opaque = -1;
  v3 = LaunchServices::PrefsStorage::_GetLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    LaunchServices::PrefsStorage::_setNeedsUpdate(v3);
  }

  os_unfair_lock_unlock(this);
}

__CFString *LaunchServices::PrefsStorage::_GetBundleIdentifierWithAppNode(void *a1, void *a2)
{
  v3 = a1;
  v13 = 0;
  v4 = [v3 bundleIdentifierWithError:&v13];
  v5 = v13;
  v6 = v5;
  if (!v4)
  {
    if ([v5 code] == -10813 && (objc_msgSend(v6, "domain"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", *MEMORY[0x1E696A768]), v7, v8))
    {
      v10 = LaunchServices::PrefsStorage::_GetLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LaunchServices::PrefsStorage::_GetBundleIdentifierWithAppNode();
      }

      v4 = &stru_1EEF65710;
    }

    else if (a2)
    {
      v11 = v6;
      v4 = 0;
      *a2 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t LaunchServices::PrefsStorage::_GetIndexOfValueForNodeInPrefsArray(LaunchServices::PrefsStorage *this, NSArray *a2, FSNode *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = this;
  v5 = a2;
  if (!v5)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static NSInteger LaunchServices::PrefsStorage::_GetIndexOfValueForNodeInPrefsArray(NSArray *__strong, FSNode *__strong)"}];
    [v16 handleFailureInFunction:v17 file:@"LSPrefs.mm" lineNumber:1426 description:{@"Invalid parameter not satisfying: %@", @"appNode != nil"}];
  }

  v6 = v5;
  v7 = v4;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static NSInteger LaunchServices::PrefsStorage::_GetIndexOfValueInPrefsArrayWithPredicate(NSArray *__strong, const Pred &) [Pred = (lambda at /Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSPrefs.mm:1428:63)]"}];
    [v18 handleFailureInFunction:v19 file:@"LSPrefs.mm" lineNumber:1404 description:{@"Invalid parameter not satisfying: %@", @"prefsArray != nil"}];
  }

  v8 = [(LaunchServices::PrefsStorage *)v7 count];
  if (v8)
  {
    for (i = 0; i < v8; i += 2)
    {
      v10 = [(LaunchServices::PrefsStorage *)v7 objectAtIndexedSubscript:i];
      if (v10 && _NSIsNSData() && (v11 = _LSAliasMatchesNode(v10, v6), v11) && (v12 = i + 1, i + 1 < v8))
      {
        v13 = LaunchServices::PrefsStorage::_GetLog(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [(LaunchServices::PrefsStorage *)v7 objectAtIndexedSubscript:i + 1];
          *buf = 134218243;
          v21 = i;
          v22 = 2113;
          v23 = v14;
          _os_log_debug_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEBUG, "Found matched pref in prefs array at index %llu. Current value is %{private}@", buf, 0x16u);
        }
      }

      else
      {
        v12 = 0x7FFFFFFFFFFFFFFFLL;
      }

      if (v12 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }
    }
  }

  else
  {
    v12 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v12;
}

BOOL LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(void *a1, void *a2, void *a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v10 = a3;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static BOOL LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(NSMutableArray *__strong, FSNode *__strong, __strong id, NSError *__autoreleasing *)"}];
    [v17 handleFailureInFunction:v18 file:@"LSPrefs.mm" lineNumber:1475 description:{@"Invalid parameter not satisfying: %@", @"prefsArray != nil"}];

    if (v8)
    {
      goto LABEL_3;
    }
  }

  v19 = [MEMORY[0x1E696AAA8] currentHandler];
  v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"static BOOL LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(NSMutableArray *__strong, FSNode *__strong, __strong id, NSError *__autoreleasing *)"}];
  [v19 handleFailureInFunction:v20 file:@"LSPrefs.mm" lineNumber:1476 description:{@"Invalid parameter not satisfying: %@", @"appNode != nil"}];

LABEL_3:
  IndexOfValueForNodeInPrefsArray = LaunchServices::PrefsStorage::_GetIndexOfValueForNodeInPrefsArray(v7, v8, v9);
  v12 = LaunchServices::PrefsStorage::_GetLog(IndexOfValueForNodeInPrefsArray);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
  if (IndexOfValueForNodeInPrefsArray == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (v10)
    {
      if (v13)
      {
        LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray();
      }

      v12 = [(NSArray *)v8 bookmarkDataRelativeToNode:0 error:a4];
      v14 = v12 != 0;
      if (!v12)
      {
        goto LABEL_16;
      }

      [(LaunchServices::PrefsStorage *)v7 addObject:v12];
      [(LaunchServices::PrefsStorage *)v7 addObject:v10];
    }

    else if (v13)
    {
      LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray();
    }

    v14 = 1;
LABEL_16:

    goto LABEL_21;
  }

  if (v10)
  {
    if (v13)
    {
      v16 = [(LaunchServices::PrefsStorage *)v7 objectAtIndexedSubscript:IndexOfValueForNodeInPrefsArray];
      *buf = 138478339;
      v22 = v16;
      v23 = 2113;
      v24 = v8;
      v25 = 2113;
      v26 = v10;
      _os_log_debug_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEBUG, "Replacing value %{private}@ for app node %{private}@ with value %{private}@.", buf, 0x20u);
    }

    [(LaunchServices::PrefsStorage *)v7 setObject:v10 atIndexedSubscript:IndexOfValueForNodeInPrefsArray];
  }

  else
  {
    if (v13)
    {
      LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray();
    }

    [(LaunchServices::PrefsStorage *)v7 removeObjectAtIndex:IndexOfValueForNodeInPrefsArray];
    [(LaunchServices::PrefsStorage *)v7 removeObjectAtIndex:IndexOfValueForNodeInPrefsArray - 1];
  }

  v14 = 1;
LABEL_21:

  return v14;
}