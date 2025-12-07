void ___ZN14LaunchServices12PrefsStorage7_GetLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "prefs-storage");
  v1 = LaunchServices::PrefsStorage::_GetLog(void)::result;
  LaunchServices::PrefsStorage::_GetLog(void)::result = v0;
}

uint64_t LaunchServices::PrefsStorage::GetShared(LaunchServices::PrefsStorage *this)
{
  if (LaunchServices::PrefsStorage::GetShared(void)::once != -1)
  {
    LaunchServices::PrefsStorage::GetShared();
  }

  if (LaunchServices::PrefsStorage::_needsUpdate(LaunchServices::PrefsStorage::GetShared(void)::result))
  {
    LaunchServices::PrefsStorage::_update(LaunchServices::PrefsStorage::GetShared(void)::result, v1);
  }

  return LaunchServices::PrefsStorage::GetShared(void)::result;
}

id LaunchServices::PrefsStorage::getAllPreferences(LaunchServices::PrefsStorage *this)
{
  os_unfair_lock_lock(this + 4);
  DeepCopy = CFPropertyListCreateDeepCopy(*MEMORY[0x1E695E480], *(this + 3), 0);
  os_unfair_lock_unlock(this + 4);

  return DeepCopy;
}

uint64_t LaunchServices::PrefsStorage::setValueForNode(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v13 = [__LSDefaultsGetSharedInstance(v11 v12)];
  if ((v13 & 1) != 0 || ![__LSDefaultsGetSharedInstance(v13 v14)])
  {
    if (v9 && v10)
    {
      v17 = LaunchServices::PrefsStorage::_GetBundleIdentifierWithAppNode(v10, a5);
      if (v17)
      {
        os_unfair_lock_lock((a1 + 16));
        v18 = [*(a1 + 24) objectForKeyedSubscript:v9];
        v19 = [v18 objectForKeyedSubscript:v17];
        v20 = [v19 mutableCopy];

        if (!v20)
        {
          v20 = [MEMORY[0x1E695DF70] array];
        }

        v21 = LaunchServices::PrefsStorage::_SetValueForNodeInPrefsArray(v20, v10, v11, a5);
        *(v37 + 24) = v21;
        if (v21)
        {
          v22 = [*(a1 + 24) objectForKeyedSubscript:v9];
          if (!v22)
          {
            v23 = LaunchServices::PrefsStorage::_GetLog(0);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              LaunchServices::PrefsStorage::setValueForNode();
            }

            v22 = [MEMORY[0x1E695DF90] dictionary];
            [*(a1 + 24) setObject:? forKeyedSubscript:?];
          }

          v24 = [v20 copy];
          [v22 setObject:v24 forKeyedSubscript:v17];

          v31[0] = MEMORY[0x1E69E9820];
          v31[1] = 3221225472;
          v31[2] = ___ZN14LaunchServices12PrefsStorage15setValueForNodeEP8NSStringP6FSNodeP11objc_objectPU15__autoreleasingP7NSError_block_invoke_103;
          v31[3] = &unk_1E6A1DA20;
          v32 = v9;
          v25 = v22;
          v33 = v25;
          _LSWithMutableInsecurePreferences(v31);
          LaunchServices::PrefsStorage::_updateOtherProcesses(a1);
        }

        os_unfair_lock_unlock((a1 + 16));
        if (*(v37 + 24) == 1)
        {
          v27 = LaunchServices::PrefsStorage::_GetLog(v26);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543875;
            *&buf[4] = v9;
            *&buf[12] = 2113;
            *&buf[14] = v17;
            *&buf[22] = 2113;
            v43 = v11;
            _os_log_debug_impl(&dword_18162D000, v27, OS_LOG_TYPE_DEBUG, "SET prefs[%{public}@][%{private}@] = %{private}@", buf, 0x20u);
          }
        }
      }
    }

    else if (a5)
    {
      v40 = *MEMORY[0x1E696A278];
      v41 = @"invalid input parameters";
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v28, "setValueForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSPrefs.mm", 1658);
    }
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v43 = __Block_byref_object_copy__76;
    v44 = __Block_byref_object_dispose__77;
    v45 = 0;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = ___ZN14LaunchServices12PrefsStorage15setValueForNodeEP8NSStringP6FSNodeP11objc_objectPU15__autoreleasingP7NSError_block_invoke;
    v35[3] = &unk_1E6A18DF0;
    v35[4] = buf;
    v15 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v35];
    v16 = [v10 URL];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = ___ZN14LaunchServices12PrefsStorage15setValueForNodeEP8NSStringP6FSNodeP11objc_objectPU15__autoreleasingP7NSError_block_invoke_2;
    v34[3] = &unk_1E6A1D9F8;
    v34[4] = &v36;
    v34[5] = buf;
    [v15 setPreferenceValue:v11 forKey:v9 forApplicationAtURL:v16 completionHandler:v34];

    if (*(v37 + 24) == 1)
    {
      LaunchServices::PrefsStorage::_setNeedsUpdate(a1);
    }

    else if (a5)
    {
      *a5 = *(*&buf[8] + 40);
    }

    _Block_object_dispose(buf, 8);
  }

  v29 = *(v37 + 24);
  _Block_object_dispose(&v36, 8);

  return v29 & 1;
}

void sub_18176B380(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t std::array<NSString * {__strong},5ul>::~array(uint64_t a1)
{
  for (i = 32; i != -8; i -= 8)
  {
  }

  return a1;
}

void _LSWithMutableInsecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithMutableInsecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSPreferences::With(_BYTE *a1, void *a2)
{
  v4 = a2;
  if (a1 && v4)
  {
    if (_LSPreferences::With(_LSPreferences::SecurityContext const*,void({block_pointer})(void const*))::once != -1)
    {
      _LSPreferences::With();
    }

    v3 = &_LSPreferences::With(_LSPreferences::SecurityContext const*,void({block_pointer})(void const*))::securePrefs;
    if (!*a1)
    {
      v3 = &_LSPreferences::With(_LSPreferences::SecurityContext const*,void({block_pointer})(void const*))::insecurePrefs;
    }

    _LSPreferences::with(*v3, a1, v4);
  }
}

void _LSWithInsecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 256;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithInsecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSWithMutableSecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 1;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithMutableSecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSWithSecurePreferences(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = objc_autoreleasePoolPush();
    v5 = 257;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = ___LSWithSecurePreferences_block_invoke;
    v3[3] = &unk_1E6A1DA78;
    v4 = v1;
    _LSPreferences::With(&v5, v3);

    objc_autoreleasePoolPop(v2);
  }
}

void _LSPreferences::_LSPreferences(_LSPreferences *this, char a2)
{
  v12 = *MEMORY[0x1E69E9840];
  *this = a2;
  *(this + 8) = -1;
  v3 = (this + 32);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  snprintf(__str, 0x100uLL, "com.apple.launchservices.prefs-%p", this);
  v4 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v5 = dispatch_queue_create(__str, v4);
  v6 = *(this + 3);
  *(this + 3) = v5;

  _LSPreferences::load(this, 0);
  v7 = objc_autoreleasePoolPush();
  v9 = [__LSDefaultsGetSharedInstance(v7 v8)];
  LaunchServices::notifyd::NotifyToken::RegisterCheck(&v10, v9);
  LaunchServices::notifyd::NotifyToken::operator=(v3, &v10);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v10);

  objc_autoreleasePoolPop(v7);
}

void sub_18176BA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&a12);

  LaunchServices::notifyd::NotifyToken::~NotifyToken(v13);
  _Unwind_Resume(a1);
}

void _LSPreferences::load(dispatch_queue_t *this, int a2)
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___ZN14_LSPreferences4loadEb_block_invoke;
  v7[3] = &__block_descriptor_40_e5_v8__0l;
  v7[4] = this;
  v4 = MEMORY[0x1865D71B0](v7);
  v5 = v4;
  if (a2)
  {
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v4);

    dispatch_barrier_async(this[3], v6);
    v5 = v6;
  }

  else
  {
    v4[2](v4);
  }
}

void ___ZN14_LSPreferences4loadEb_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if ([__LSDefaultsGetSharedInstance(a1 a2)])
  {
    v3 = *(v2 + 1);
    *(v2 + 1) = 0;

    v4 = objc_autoreleasePoolPush();
    v5 = *v2;
    SharedInstance = __LSDefaultsGetSharedInstance(v4, v6);
    if (v5 == 1)
    {
      [SharedInstance securePreferencesFileURL];
    }

    else
    {
      [SharedInstance preferencesFileURL];
    }
    v8 = ;
    v9 = *(v2 + 2);
    *(v2 + 2) = v8;

    objc_autoreleasePoolPop(v4);
    applyStorageACLToURL(*v2, *(v2 + 2));
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc(MEMORY[0x1E695DF20]);
    v12 = *(v2 + 2);
    v26 = 0;
    v13 = [v11 initWithContentsOfURL:v12 error:&v26];
    v14 = v26;
    v15 = *(v2 + 1);
    *(v2 + 1) = v13;

    if (!*(v2 + 1))
    {
      v16 = *v2;
      v17 = *(v2 + 2);
      v18 = dispatch_get_global_queue(-2, 0);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = ___ZN14_LSPreferences4loadEb_block_invoke_2;
      v22[3] = &unk_1E6A1CF98;
      v25 = v16;
      v23 = v17;
      v24 = v14;
      v19 = v17;
      dispatch_async(v18, v22);
    }

    objc_autoreleasePoolPop(v10);
  }

  if (!*(v2 + 1))
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF20]);
    v21 = *(v2 + 1);
    *(v2 + 1) = v20;
  }
}

void applyStorageACLToURL(int a1, NSURL *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  acl_p = 0;
  if (!a1 || ([__LSDefaultsGetSharedInstance(v3 v4)] & 1) != 0)
  {
    v6 = 0;
    v7 = 0;
LABEL_4:
    v8 = 1;
    goto LABEL_24;
  }

  permset_p = 0;
  entry_p = 0;
  *uu = 0;
  *&uu[8] = 0;
  acl_p = acl_init(1);
  if (acl_p)
  {
    if (acl_create_entry(&acl_p, &entry_p))
    {
      v9 = __error();
      v10 = *MEMORY[0x1E696A798];
      v11 = 72;
    }

    else if (mbr_identifier_to_uuid(5, "systemusers", 0xBuLL, uu))
    {
      v9 = __error();
      v10 = *MEMORY[0x1E696A798];
      v11 = 82;
    }

    else if (acl_get_permset(entry_p, &permset_p))
    {
      v9 = __error();
      v10 = *MEMORY[0x1E696A798];
      v11 = 88;
    }

    else if (acl_add_perm(permset_p, ACL_CHANGE_OWNER|ACL_WRITE_SECURITY|ACL_READ_SECURITY|ACL_WRITE_EXTATTRIBUTES|ACL_READ_EXTATTRIBUTES|ACL_WRITE_ATTRIBUTES|ACL_READ_ATTRIBUTES|ACL_ADD_SUBDIRECTORY|ACL_DELETE|ACL_ADD_FILE|ACL_LIST_DIRECTORY))
    {
      v9 = __error();
      v10 = *MEMORY[0x1E696A798];
      v11 = 94;
    }

    else if (acl_set_permset(entry_p, permset_p))
    {
      v9 = __error();
      v10 = *MEMORY[0x1E696A798];
      v11 = 100;
    }

    else if (acl_set_tag_type(entry_p, ACL_EXTENDED_ALLOW))
    {
      v9 = __error();
      v10 = *MEMORY[0x1E696A798];
      v11 = 106;
    }

    else
    {
      if (!acl_set_qualifier(entry_p, uu))
      {
        v7 = 0;
        v6 = acl_p;
        goto LABEL_4;
      }

      v9 = __error();
      v10 = *MEMORY[0x1E696A798];
      v11 = 112;
    }
  }

  else
  {
    v9 = __error();
    v10 = *MEMORY[0x1E696A798];
    v11 = 66;
  }

  v7 = _LSMakeNSErrorImpl(v10, *v9, 0, "copyPreferencesACL", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSPrefsSupport.mm", v11);
  v12 = v7;
  if (acl_p)
  {
    acl_free(acl_p);
  }

  v8 = 0;
  v6 = 0;
LABEL_24:

  v13 = v7;
  v14 = v13;
  if (v8)
  {
    if (v6)
    {
      v15 = [(NSURL *)v5 path];
      v16 = v15;
      v17 = acl_set_file([v15 fileSystemRepresentation], ACL_TYPE_EXTENDED, v6) == 0;

      if (!v17)
      {
        v18 = __error();
        v19 = *v18;
        v20 = _LSDefaultLog(v18);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          applyStorageACLToURL(v5, v19, v20);
        }
      }

      acl_free(v6);
    }
  }

  else
  {
    v21 = _LSDefaultLog(v13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *uu = 138412802;
      *&uu[4] = v5;
      *&uu[12] = 1024;
      *&uu[14] = a1;
      v26 = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_18162D000, v21, OS_LOG_TYPE_ERROR, "could not create ACL to apply to %@ (secure: %d): %@", uu, 0x1Cu);
    }
  }
}

void sub_18176C05C(_Unwind_Exception *a1)
{
  acl_free(v3);

  _Unwind_Resume(a1);
}

void ___ZN14_LSPreferences4loadEb_block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a1 + 48);
    v5 = [*(a1 + 32) path];
    v6 = *(a1 + 40);
    v7[0] = 67109634;
    v7[1] = v4;
    v8 = 2112;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_error_impl(&dword_18162D000, v3, OS_LOG_TYPE_ERROR, "Failed to read LS preferences (secure? %{BOOL}i) from %@: %@", v7, 0x1Cu);
  }

  objc_autoreleasePoolPop(v2);
}

void _LSPreferences::with(dispatch_queue_t *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = LaunchServices::notifyd::NotifyToken::checkValue((a1 + 4));
    if ((v6 & 0x100000000) != 0 && v6)
    {
      _LSPreferences::load(a1, 1);
    }

    if (*(a2 + 1) == 1)
    {
      v14 = 0;
      v15 = &v14;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__43;
      v18 = __Block_byref_object_dispose__43;
      v19 = 0;
      v7 = a1[3];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke;
      block[3] = &unk_1E6A1BE80;
      block[4] = &v14;
      block[5] = a1;
      dispatch_sync(v7, block);
      if (v15[5])
      {
        v5[2](v5);
      }

      _Block_object_dispose(&v14, 8);
      v8 = v19;
    }

    else
    {
      v9 = a1[3];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke_2;
      v10[3] = &unk_1E6A1BE30;
      v12 = a1;
      v11 = v5;
      dispatch_barrier_sync(v9, v10);
      v8 = v11;
    }
  }
}

void sub_18176C360(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

void ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 40) + 8);
  if (v1)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v1);
  }
}

void ___ZN14_LSPreferences4withEPKNS_15SecurityContextEU13block_pointerFvPKvE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2[1];
  if (v3)
  {
    v4 = [v3 mutableCopy];
    if (v4)
    {
      (*(*(a1 + 32) + 16))();
      if (([v2[1] isEqual:v4] & 1) == 0)
      {
        _LSPreferences::save(v2, v4);
      }
    }
  }
}

void _LSPreferences::save(_LSPreferences *this, NSDictionary *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = *(this + 1);
    if (v6)
    {
      v7 = v6 == v3;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v3 copyItems:1];
      v9 = *(this + 1);
      *(this + 1) = v8;
    }

    if (*(this + 2) && [__LSDefaultsGetSharedInstance(v3 v4)])
    {
      v24 = 0;
      v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:&v24];
      v11 = v24;
      v12 = v11;
      if (v10)
      {
        v13 = [MEMORY[0x1E696AC08] defaultManager];
        [v13 removeItemAtURL:*(this + 2) error:0];

        v14 = *(this + 2);
        v23 = v12;
        LOBYTE(v13) = [v10 writeToURL:v14 options:268435457 error:&v23];
        v15 = v23;

        v12 = v15;
        if ((v13 & 1) == 0)
        {
          v17 = _LSDefaultLog(v16);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v21 = *this;
            v22 = [*(this + 2) path];
            *buf = 67109634;
            v26 = v21;
            v27 = 2112;
            v28 = v22;
            v29 = 2112;
            v30 = v12;
            _os_log_error_impl(&dword_18162D000, v17, OS_LOG_TYPE_ERROR, "Failed to save LS preferences (secure? %{BOOL}i) to %@: %@", buf, 0x1Cu);
          }
        }

        applyStorageACLToURL(*this, *(this + 2));
      }

      else
      {
        v18 = _LSDefaultLog(v11);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *this;
          v20 = [*(this + 2) path];
          *buf = 67109634;
          v26 = v19;
          v27 = 2112;
          v28 = v20;
          v29 = 2112;
          v30 = v12;
          _os_log_error_impl(&dword_18162D000, v18, OS_LOG_TYPE_ERROR, "Failed to serialize LS preferences (secure? %{BOOL}i) to %@: %@", buf, 0x1Cu);
        }
      }
    }
  }
}

uint64_t _LSGetProfileValidationStateFromInstallDictionary(const __CFDictionary *a1)
{
  result = _LSGetBooleanFromDict(a1, @"ProfileValidated");
  if (result)
  {
    if (_LSGetBooleanFromDict(a1, @"UPPValidated"))
    {
      return 2;
    }

    else if (_LSGetBooleanFromDict(a1, @"FreeProfileValidated"))
    {
      return 3;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

__CFString *_LSProfileValidationStateGetVisualizationDescription(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return off_1E6A1DA98[a1];
  }
}

void sub_18176E6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id a38)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_18176EF78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id a29)
{
  _Block_object_dispose(&a24, 8);

  _Unwind_Resume(a1);
}

void bundleUnitsClaimingDefaultAppCategory(LSContext *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (_os_feature_enabled_impl())
  {
    v6 = LSGetDefaultAppCategoryInfoForCategory(a2);
    LaunchServices::BindingEvaluator::CreateWithUTI(&v36, *(v6 + 1), 0);
    v31 = 0;
    LaunchServices::BindingEvaluator::evaluateBindings(&v36, a1, &v31, v32);
    v7 = v31;
    v8 = v7;
    v9 = v32[0];
    v10 = v32[1];
    v34 = a3;
    while (v9 != v10)
    {
      v33 = *v9;
      v7 = std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:nn200100](&v34, &v33);
      v9 += 14;
    }

    if (v8)
    {
      v11 = _LSDefaultLog(v7);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        bundleUnitsClaimingDefaultAppCategory();
      }
    }

    v35 = v32;
    std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v35);

    LaunchServices::BindingEvaluator::~BindingEvaluator(&v36);
    return;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v24 = nonPlaceholderBundleUnitIDForIdentifier(a1, &cfstr_ComAppleMobile_1.isa);
      v13 = v24;
      if ((v24 & 0x100000000) == 0)
      {
        return;
      }

      v15 = a3[1];
      v25 = a3[2];
      if (v15 >= v25)
      {
        v16 = *a3;
        v17 = v15 - *a3;
        v18 = v17 >> 2;
        v27 = (v17 >> 2) + 1;
        if (v27 >> 62)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v28 = v25 - v16;
        if (v28 >> 1 > v27)
        {
          v27 = v28 >> 1;
        }

        v21 = v28 >= 0x7FFFFFFFFFFFFFFCLL;
        v22 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v22 = v27;
        }

        if (v22)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:nn200100](a3, v22);
        }

        goto LABEL_39;
      }
    }

    else
    {
      if (a2 != 4)
      {
        return;
      }

      v12 = nonPlaceholderBundleUnitIDForIdentifier(a1, &cfstr_ComAppleMobile_2.isa);
      v13 = v12;
      if ((v12 & 0x100000000) == 0)
      {
        return;
      }

      v15 = a3[1];
      v14 = a3[2];
      if (v15 >= v14)
      {
        v16 = *a3;
        v17 = v15 - *a3;
        v18 = v17 >> 2;
        v19 = (v17 >> 2) + 1;
        if (v19 >> 62)
        {
          std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
        }

        v20 = v14 - v16;
        if (v20 >> 1 > v19)
        {
          v19 = v20 >> 1;
        }

        v21 = v20 >= 0x7FFFFFFFFFFFFFFCLL;
        v22 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v21)
        {
          v22 = v19;
        }

        if (v22)
        {
          std::allocator<unsigned int>::allocate_at_least[abi:nn200100](a3, v22);
        }

LABEL_39:
        v29 = (4 * v22);
        *(4 * v18) = v13;
        v26 = (4 * v18 + 4);
        memcpy(0, v16, v17);
        v30 = *a3;
        *a3 = 0;
        a3[1] = v26;
        a3[2] = v29;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_41;
      }
    }

    *v15 = v13;
    v26 = v15 + 4;
LABEL_41:
    a3[1] = v26;
    return;
  }

  if (a2 == 1)
  {
    bundleUnitIDsForBindingScheme(&v36, @"https", a1, &__block_literal_global_63);
  }

  else
  {
    if (a2 != 2)
    {
      return;
    }

    bundleUnitIDsForBindingScheme(&v36, @"mailto", a1, &__block_literal_global_62_0);
  }

  v23 = *a3;
  if (*a3)
  {
    a3[1] = v23;
    operator delete(v23);
  }

  *a3 = v36;
  a3[2] = v37;
}

void sub_18176F9BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void bundleUnitIDsForBindingScheme(uint64_t *__return_ptr a1@<X8>, LaunchServices::BindingEvaluator *this@<X1>, LSContext *a3@<X0>, void *a4@<X2>)
{
  v18[22] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  LaunchServices::BindingEvaluator::CreateWithURLScheme(this, v18);
  LaunchServices::BindingEvaluator::setFilter(v18, a4);
  v12 = 0;
  LaunchServices::BindingEvaluator::evaluateBindings(v18, a3, &v12, &v13);
  v7 = v12;
  v8 = v7;
  v10 = v13;
  v9 = v14;
  if (v14 == v13)
  {
    v11 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      bundleUnitIDsForBindingScheme();
    }
  }

  else
  {
    v16 = a1;
    do
    {
      v15 = *v10;
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:nn200100](&v16, &v15);
      v10 += 14;
    }

    while (v10 != v9);
  }

  v17 = &v13;
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](&v17);

  LaunchServices::BindingEvaluator::~BindingEvaluator(v18);
}

void sub_181770180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  va_copy(va2, va1);
  va_arg(va2, void);
  va_copy(v13, va);
  std::vector<LSBinding>::__destroy_vector::operator()[abi:nn200100](va1);

  LaunchServices::BindingEvaluator::~BindingEvaluator(va2);
  v6 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(a1);
}

uint64_t nonPlaceholderBundleUnitIDForIdentifier(LSContext *a1, NSString *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v7 = 0;
  memset(v8, 0, sizeof(v8));
  v3 = _LSBundleFindWithInfo(a1, 0, a2, 0, v8, 2, 128, &v7, 0);
  if (!v3)
  {
    return v7 | 0x100000000;
  }

  v4 = v3;
  v5 = _LSDefaultLog(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    nonPlaceholderBundleUnitIDForIdentifier(a2, v4, v5);
  }

  return 0;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:nn200100](uint64_t *a1, int *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v11 = v5 - v8;
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
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

void std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t **a4)
{
  v6 = a2;
  v7 = a1;
  v8 = *a2;
  v9 = *a1;
  v10 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a2);
  v11 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v9);
  v12 = v11;
  if (v8)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {

    if (!v8)
    {
      goto LABEL_15;
    }

LABEL_7:
    v14 = *a3;
    v15 = *v6;
    v16 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a3);
    v17 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v15);
    v18 = v17;
    if (v14 && v15)
    {
      v19 = [v16 localizedStandardCompare:v17];

      if (v19 != -1)
      {
LABEL_10:
        v20 = *v7;
        *v7 = *v6;
        *v6 = v20;
        v21 = *a3;
        v22 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a3);
        v23 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v20);
        v24 = v23;
        if (v20 && v21)
        {
          v25 = [v22 localizedStandardCompare:v23];

          v7 = v6;
          v6 = a3;
          if (v25 != -1)
          {
            return;
          }
        }

        else
        {

          v7 = v6;
          v6 = a3;
          if (!v21)
          {
            return;
          }
        }

        goto LABEL_27;
      }
    }

    else
    {

      if (!v14)
      {
        goto LABEL_10;
      }
    }

    v6 = a3;
    goto LABEL_27;
  }

  v26 = [v10 localizedStandardCompare:v11];

  if (v26 == -1)
  {
    goto LABEL_7;
  }

LABEL_15:
  v27 = *a3;
  v28 = *v6;
  v29 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *a3);
  v30 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v28);
  v31 = v30;
  if (v27 && v28)
  {
    v32 = [v29 localizedStandardCompare:v30];

    if (v32 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v27)
    {
      return;
    }
  }

  v33 = *v6;
  *v6 = *a3;
  *a3 = v33;
  v34 = *v6;
  v35 = *v7;
  v36 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, *v6);
  v37 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a4, v35);
  v38 = v37;
  if (v34 && v35)
  {
    v39 = [v36 localizedStandardCompare:v37];

    if (v39 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v34)
    {
      return;
    }
  }

LABEL_27:
  v40 = *v7;
  *v7 = *v6;
  *v6 = v40;
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, uint64_t **a5)
{
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a2, a3, a5);
  v10 = *a4;
  v11 = *a3;
  v12 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, *a4);
  v13 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, v11);
  v14 = v13;
  if (v10)
  {
    v15 = v11 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {

    if (!v10)
    {
      return;
    }
  }

  else
  {
    v16 = [v12 localizedStandardCompare:v13];

    if (v16 != -1)
    {
      return;
    }
  }

  v17 = *a3;
  *a3 = *a4;
  *a4 = v17;
  v18 = *a3;
  v19 = *a2;
  v20 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, *a3);
  v21 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, v19);
  v22 = v21;
  if (v18 && v19)
  {
    v23 = [v20 localizedStandardCompare:v21];

    if (v23 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v18)
    {
      return;
    }
  }

  v24 = *a2;
  *a2 = *a3;
  *a3 = v24;
  v25 = *a2;
  v26 = *a1;
  v27 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, *a2);
  v28 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a5, v26);
  v29 = v28;
  if (v25 && v26)
  {
    v30 = [v27 localizedStandardCompare:v28];

    if (v30 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v25)
    {
      return;
    }
  }

  v31 = *a1;
  *a1 = *a2;
  *a2 = v31;
}

void std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5, uint64_t **a6)
{
  std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a2, a3, a4, a6);
  v12 = *a5;
  v13 = *a4;
  v14 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a5);
  v15 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v13);
  v16 = v15;
  if (v12)
  {
    v17 = v13 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {

    if (!v12)
    {
      return;
    }
  }

  else
  {
    v18 = [v14 localizedStandardCompare:v15];

    if (v18 != -1)
    {
      return;
    }
  }

  v19 = *a4;
  *a4 = *a5;
  *a5 = v19;
  v20 = *a4;
  v21 = *a3;
  v22 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a4);
  v23 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v21);
  v24 = v23;
  if (v20 && v21)
  {
    v25 = [v22 localizedStandardCompare:v23];

    if (v25 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v20)
    {
      return;
    }
  }

  v26 = *a3;
  *a3 = *a4;
  *a4 = v26;
  v27 = *a3;
  v28 = *a2;
  v29 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a3);
  v30 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v28);
  v31 = v30;
  if (v27 && v28)
  {
    v32 = [v29 localizedStandardCompare:v30];

    if (v32 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v27)
    {
      return;
    }
  }

  v33 = *a2;
  *a2 = *a3;
  *a3 = v33;
  v34 = *a2;
  v35 = *a1;
  v36 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, *a2);
  v37 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a6, v35);
  v38 = v37;
  if (v34 && v35)
  {
    v39 = [v36 localizedStandardCompare:v37];

    if (v39 != -1)
    {
      return;
    }
  }

  else
  {

    if (!v34)
    {
      return;
    }
  }

  v40 = *a1;
  *a1 = *a2;
  *a2 = v40;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *>(unsigned int *a1, unsigned int *a2, uint64_t **a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = *a1;
      v9 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v7);
      v10 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v8);
      v11 = v10;
      if (v7 && v8)
      {
        v12 = [v9 localizedStandardCompare:v10];

        if (v12 != -1)
        {
          return 1;
        }
      }

      else
      {

        if (!v7)
        {
          return 1;
        }
      }

      v31 = *a1;
      *a1 = *(v4 - 1);
      *(v4 - 1) = v31;
      return 1;
    }
  }

  v13 = a1 + 2;
  std::__sort3[abi:nn200100]<std::_ClassicAlgPolicy,+[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_1 &,unsigned int *,0>(a1, a1 + 1, a1 + 2, a3);
  v14 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v15 = 0;
  v34 = 0;
  v33 = v4;
  while (2)
  {
    v16 = *v14;
    v17 = *v13;
    v18 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, *v14);
    v19 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v17);
    v20 = v19;
    if (v16)
    {
      v21 = v17 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (v21)
    {

      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v22 = [v18 localizedStandardCompare:v19];

      if (v22 != -1)
      {
        goto LABEL_33;
      }
    }

    v23 = *v14;
    *v14 = *v13;
    v24 = v15;
    while (1)
    {
      v25 = *(a1 + v24 + 4);
      v26 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v23);
      v27 = +[LSApplicationRecord(Enumeration) displayOrderEnumeratorForViableDefaultAppsForCategory:options:]::$_0::getAndCacheName(*a3, v25);
      v28 = v27;
      if (!v23 || !v25)
      {
        break;
      }

      v29 = [v26 localizedStandardCompare:v27];

      if (v29 != -1)
      {
        goto LABEL_31;
      }

LABEL_29:
      *(a1 + v24 + 8) = *(a1 + v24 + 4);
      v24 -= 4;
      if (v24 == -8)
      {
        v30 = a1;
        goto LABEL_32;
      }
    }

    if (v23)
    {
      goto LABEL_29;
    }

LABEL_31:
    v30 = (a1 + v24 + 8);
LABEL_32:
    *v30 = v23;
    ++v34;
    v4 = v33;
    if (v34 != 8)
    {
LABEL_33:
      v13 = v14;
      v15 += 4;
      if (++v14 == v4)
      {
        return 1;
      }

      continue;
    }

    return v14 + 1 == v33;
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int,NSString * {__strong}>>(uint64_t a1, unsigned int *a2, uint64_t a3)
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
      v6 = *(v3 + 32);
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

void std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,NSString * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,NSString * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,NSString * {__strong}>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

unsigned __int8 *_LSCheckRecordPISizeAndVersionReturningPIInnerBytes(void *a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if ([a1 length] < 0x1C)
  {
    v13 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"data length %zu is too short", objc_msgSend(a1, "length")];
    v14 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, v9, "_LSCheckRecordPISizeAndVersionReturningPIInnerBytes", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 226);
  }

  else
  {
    v4 = [a1 bytes];
    v5 = *v4;
    if (v5 == _LSPersistentIdentifierVersion)
    {
      v6 = v4;
      v7 = 0;
      goto LABEL_9;
    }

    v15 = *MEMORY[0x1E696A278];
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"identifier version %d is unknown", v5];
    v16[0] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10650, v9, "_LSCheckRecordPISizeAndVersionReturningPIInnerBytes", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Record/LSRecord.mm", 223);
  }

  v7 = v10;

  if (a2)
  {
    v11 = v7;
    v6 = 0;
    *a2 = v7;
  }

  else
  {
    v6 = 0;
  }

LABEL_9:

  return v6;
}

_DWORD *LaunchServices::Record::findSubclassForTable(LaunchServices::Record *this, LSContext *a2)
{
  v2 = a2;
  v3 = [(_LSDatabase *)*this schema];
  if (v3)
  {
    if (v3[1] == v2 || v3[397] == v2 || v3[4] == v2 || v3[2] == v2 || v3[398] == v2 || v3[401] == v2)
    {
      v3 = objc_opt_class();
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void sub_1817729A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LaunchServices::Database::Context::~Context(&a9);

  _Unwind_Resume(a1);
}

void sub_181772E14(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181772F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_181773078(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1817731E4(_Unwind_Exception *a1)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

void sub_18177334C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773518(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773AB0(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a2)
  {
    MEMORY[0x1865D6250](v10, 0x10A0C408EF24B1CLL, a3, a4, a5, a6, a7, a8);

    objc_begin_catch(exception_object);
    os_unfair_recursive_lock_unlock();
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181773BE8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773CDC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_181773ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void __copy_helper_block_ea8_32c58_ZTSNSt3__16vectorIU6__weakP8LSRecordNS_9allocatorIS3_EEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v2 = (a1 + 32);
  v2[2] = 0;
  std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*>(v2, *(a2 + 32), *(a2 + 40), (*(a2 + 40) - *(a2 + 32)) >> 3);
}

void std::vector<LSRecord *>::resize(void *result, unint64_t a2, uint64_t *a3)
{
  v3 = (result[1] - *result) >> 3;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<LSRecord *>::__append(result, a2 - v3, a3);
  }
}

void sub_181774A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id a17)
{
  LaunchServices::Database::Context::~Context(&a13);

  _Unwind_Resume(a1);
}

void sub_181774FF4(_Unwind_Exception *a1)
{
  if (v2)
  {
    CFRelease(v2);
  }

  _Unwind_Resume(a1);
}

void __LSRECORD_IS_CRASHING_DUE_TO_A_CALLER_BUG__(const char *a1, const char *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v11 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v3 = MEMORY[0x1E69E9C10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v12 = 138412290;
    v13 = a1;
    _os_log_send_and_compose_impl(v4, &v11, &v16, 80, &dword_18162D000, v3, 16, "The LSRecord client attempted to perform new work after detaching from the Launch Services database. This is a bug in the caller.\nRecord Object: %@", &v12, 12);
    _os_crash_msg();
    __break(1u);
  }

  v5 = a2;
  v11 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v6 = MEMORY[0x1E69E9C10];
  v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  Name = sel_getName(v5);
  if (v7)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  v12 = 136315394;
  v13 = Name;
  v14 = 2112;
  v15 = a1;
  LODWORD(v10) = 22;
  _os_log_send_and_compose_impl(v9, &v11, &v16, 80, &dword_18162D000, v6, 16, "The LSRecord client attempted to invoke -%s after detaching from the Launch Services database. This is a bug in the caller.\nRecord Object: %@", &v12, v10);
  _os_crash_msg();
  __break(1u);
}

void __LAUNCH_SERVICES_CLIENT_MAY_BE_EXFILTRATING_PRIVACY_SENSITIVE_INFORMATION__(uint64_t a1)
{
  v1 = _LSRecordLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, v1, OS_LOG_TYPE_FAULT, "Process is attempting to encode sensitive data from Launch Services in order to send it to a non-privileged client. This is a privacy bug in this process; please file a bug report.", v2, 2u);
  }
}

uint64_t *std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * const*,LSRecord * const*>(uint64_t *result, void **a2, void **a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](result, a4);
  }

  return result;
}

void std::vector<LSRecord * {__weak}>::__init_with_size[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*>(uint64_t *a1, id *a2, id *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<void({block_pointer} {__strong})(void),std::allocator<void({block_pointer} {__strong})(void)>>::__vallocate[abi:nn200100](a1, a4);
  }
}

void std::vector<LSRecord *>::__append(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v6) >> 3)
  {
    if (a2)
    {
      v12 = 0;
      v13 = v6 + 8 * a2;
      v14 = *a3;
      v15 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v16 = vdupq_n_s64(v15);
      v17 = (v6 + 8);
      do
      {
        v18 = vmovn_s64(vcgeq_u64(v16, vorrq_s8(vdupq_n_s64(v12), xmmword_1817E8EF0)));
        if (v18.i8[0])
        {
          *(v17 - 1) = v14;
        }

        if (v18.i8[4])
        {
          *v17 = v14;
        }

        v12 += 2;
        v17 += 2;
      }

      while (v15 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v12);
    }

    else
    {
      v13 = *(a1 + 8);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    v7 = v6 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v9 = v7 >> 3;
    v10 = v5 - *a1;
    if (v10 >> 2 > v8)
    {
      v8 = v10 >> 2;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v11 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v8;
    }

    if (v11)
    {
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](a1, v11);
    }

    v19 = 0;
    v20 = 8 * v9;
    v21 = 8 * v9 + 8 * a2;
    v22 = *a3;
    v23 = (a2 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v24 = v23 - ((a2 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v25 = vdupq_n_s64(v23);
    v26 = (v20 + 8);
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v19), xmmword_1817E8EF0)));
      if (v27.i8[0])
      {
        *(v26 - 1) = v22;
      }

      if (v27.i8[4])
      {
        *v26 = v22;
      }

      v19 += 2;
      v26 += 2;
    }

    while (v24 != v19);
    v28 = *(a1 + 8) - *a1;
    v29 = v20 - v28;
    memcpy((v20 - v28), *a1, v28);
    v30 = *a1;
    *a1 = v29;
    *(a1 + 8) = v21;
    *(a1 + 16) = 0;
    if (v30)
    {

      operator delete(v30);
    }
  }
}

uint64_t std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__erase_unique<objc_selector *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](v4);
    return 1;
  }

  return result;
}

uint64_t ___ZN14LaunchServices6RecordL24checkForExfiltrationRiskEP7NSCoder_block_invoke(uint64_t a1, uint64_t a2)
{
  result = [__LSDefaultsGetSharedInstance(a1 a2)];
  if (result & 1) != 0 || (result = [__LSDefaultsGetSharedInstance(result v3)], (result) || (v5 = _LSGetAuditTokenForSelf(result, v4), result = _LSCheckEntitlementForAuditToken(v5, @"com.apple.private.launchservices.canEncodeSensitiveData"), result) || (v7 = _LSGetAuditTokenForSelf(result, v6), result = _LSIsAuditTokenPlatformBinary(v7), !result))
  {
    LaunchServices::Record::checkForExfiltrationRisk(NSCoder *)::isSafeToSendData = 1;
  }

  return result;
}

id *std::vector<LSRecord * {__weak}>::__move_range(uint64_t a1, id *a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = (v6 + a2 - a4);
  v8 = v6;
  if (v7 < a3)
  {
    v10 = (v6 + a2 - a4);
    v8 = *(a1 + 8);
    do
    {
      objc_moveWeak(v8++, v10++);
    }

    while (v10 < a3);
  }

  *(a1 + 8) = v8;
  return std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,LSRecord * {__weak}*>(&v12, a2, v7, v6);
}

id *std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<LSRecord * {__weak}*,LSRecord * {__weak}*,LSRecord * {__weak}*>(uint64_t a1, id *a2, id *a3, id *a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      WeakRetained = objc_loadWeakRetained(--v7);
      objc_storeWeak(--a4, WeakRetained);
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t std::unordered_map<objc_selector *,objc_object * {__strong}>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,std::pair<objc_selector * const,objc_object * {__strong}> const&>(a1, i + 2, i + 2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,objc_object * {__strong}>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,objc_object * {__strong}>>>::__emplace_unique_key_args<objc_selector *,std::pair<objc_selector * const,objc_object * {__strong}> const&>(void *a1, void *a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v7.u32[0] > 1uLL)
    {
      if (v11 >= *&v6)
      {
        v11 %= *&v6;
      }
    }

    else
    {
      v11 &= *&v6 - 1;
    }

    if (v11 != v8)
    {
      goto LABEL_18;
    }

LABEL_17:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10[2] != *a2)
  {
    goto LABEL_17;
  }

  return v10;
}

void sub_181775BE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<void const*,std::vector<std::pair<objc_selector *,void (*)(objc_object *,objc_selector *)>>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[3];
    if (v3)
    {
      __p[4] = v3;
      operator delete(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

id _LSGetCollapsedMIDictionaryForAppAndContentsDictionaries(void *a1)
{
  v1 = a1;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__47;
  v17 = __Block_byref_object_dispose__47;
  v18 = [MEMORY[0x1E695DF90] dictionary];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__47;
  v11 = __Block_byref_object_dispose__47;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___LSGetCollapsedMIDictionaryForAppAndContentsDictionaries_block_invoke;
  v6[3] = &unk_1E6A1DC20;
  v6[4] = &v13;
  v6[5] = &v7;
  [v1 enumerateObjectsUsingBlock:v6];
  v2 = v14[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___LSGetCollapsedMIDictionaryForAppAndContentsDictionaries_block_invoke_2;
  v5[3] = &unk_1E6A1B058;
  v5[4] = &v7;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v8[5];
  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);

  return v3;
}

void sub_1817765A4(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_181776740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id _LSGetTeamIdentifierFromInstallDict(void *a1)
{
  v1 = a1;
  v15 = 0;
  v2 = objc_opt_class();
  v3 = [v1 objectForKey:@"Entitlements"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {

      v4 = 0;
      goto LABEL_24;
    }

LABEL_9:
    v7 = objc_opt_class();
    v8 = [v4 objectForKey:@"com.apple.developer.team-identifier"];
    v9 = v8;
    if (v7 && v8)
    {
      if (objc_opt_isKindOfClass())
      {
        v15 = v9;
        goto LABEL_24;
      }

      v15 = 0;
    }

    else
    {
      v15 = v8;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    v10 = objc_opt_class();
    v11 = [v4 objectForKey:@"application-identifier"];
    v12 = v11;
    if (v10 && v11)
    {
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {

        v12 = 0;
LABEL_23:

        goto LABEL_24;
      }
    }

    else if (!v11)
    {
      goto LABEL_23;
    }

    _LSSplitApplicationIdentifier(v12, &v15, 0);
    goto LABEL_23;
  }

  if (v3)
  {
    goto LABEL_9;
  }

LABEL_24:

  v13 = v15;

  return v13;
}

CFTypeRef _LSCopyBundleInfoDictionary(__CFBundle *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  DeepPropertyListCopy = InfoDictionary;
  if (!InfoDictionary)
  {
    goto LABEL_7;
  }

  if (CFDictionaryGetCount(InfoDictionary) >= 1)
  {
    v5 = CFGetAllocator(DeepPropertyListCopy);
    DeepPropertyListCopy = dictionaryCreateDeepPropertyListCopy(v5, DeepPropertyListCopy);
    if (DeepPropertyListCopy)
    {
      goto LABEL_7;
    }

    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFMutableDictionaryRef _LSCopyBundleInfoDictionary(CFBundleRef)"];
    [v6 handleFailureInFunction:v7 file:@"LSRegistration.mm" lineNumber:779 description:{@"Failed to create mutable copy of dictionary, cannot safely proceed, aborting"}];
  }

  DeepPropertyListCopy = 0;
LABEL_7:
  objc_autoreleasePoolPop(v2);
  if (!DeepPropertyListCopy)
  {
    return 0;
  }

  v8 = CFRetain(DeepPropertyListCopy);
  CFRelease(DeepPropertyListCopy);
  return v8;
}

__CFDictionary *dictionaryCreateDeepPropertyListCopy(const __CFAllocator *a1, const __CFDictionary *a2)
{
  Mutable = CFDictionaryCreateMutable(a1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  Count = CFDictionaryGetCount(a2);
  v6 = MEMORY[0x1865D4CB0](a1, 8 * Count, 0x80040B8603338, 0);
  v7 = MEMORY[0x1865D4CB0](a1, 8 * Count, 0x80040B8603338, 0);
  CFDictionaryGetKeysAndValues(a2, v6, v7);
  if (Count >= 1)
  {
    v8 = v6;
    v9 = v7;
    while (1)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(a1, *v8, 1uLL);
      v11 = CFPropertyListCreateDeepCopy(a1, *v9, 1uLL);
      v12 = v11;
      if (DeepCopy && v11 != 0)
      {
        break;
      }

      if (DeepCopy)
      {
        goto LABEL_13;
      }

      if (v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      ++v9;
      ++v8;
      if (!--Count)
      {
        goto LABEL_15;
      }
    }

    CFDictionaryAddValue(Mutable, DeepCopy, v11);
LABEL_13:
    CFRelease(DeepCopy);
    if (!v12)
    {
      goto LABEL_11;
    }

LABEL_10:
    CFRelease(v12);
    goto LABEL_11;
  }

LABEL_15:
  CFAllocatorDeallocate(a1, v6);
  CFAllocatorDeallocate(a1, v7);
  return Mutable;
}

__CFDictionary *copyDeepMutableDictionary(__CFDictionary *result)
{
  if (result)
  {
    result = dictionaryCreateDeepPropertyListCopy(*MEMORY[0x1E695E480], result);
    if (!result)
    {
      v1 = [MEMORY[0x1E696AAA8] currentHandler];
      v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"CFMutableDictionaryRef copyDeepMutableDictionary(CFDictionaryRef)"];
      [v1 handleFailureInFunction:v2 file:@"LSRegistration.mm" lineNumber:793 description:{@"Failed to create mutable copy of dictionary, cannot safely proceed, aborting"}];

      return 0;
    }
  }

  return result;
}

CFPropertyListRef _LSCopyiTunesMetadataDictionaryForAppContainerURL(CFURLRef url)
{
  if (!url)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E480];
  v2 = CFURLCreateCopyAppendingPathComponent(*MEMORY[0x1E695E480], url, @"iTunesMetadata.plist", 0);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFReadStreamCreateWithFile(v1, v2);
  if (v4)
  {
    v5 = v4;
    if (CFReadStreamOpen(v4))
    {
      v6 = CFPropertyListCreateWithStream(v1, v5, 0, 0, 0, 0);
      if (v6)
      {
        TypeID = CFDictionaryGetTypeID();
        if (TypeID != CFGetTypeID(v6))
        {
          CFRelease(v6);
          v6 = 0;
        }
      }

      CFReadStreamClose(v5);
    }

    else
    {
      v6 = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v6 = 0;
  }

  CFRelease(v3);
  return v6;
}

void _LSPromoteiTunesMetadataKeys(const __CFDictionary *a1, __CFDictionary *a2)
{
  if (a1 && a2)
  {
    Value = CFDictionaryGetValue(a1, @"initialODRSize");
    TypeID = CFNumberGetTypeID();
    if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
    {
      CFDictionaryAddValue(a2, @"initialODRSize", Value);
    }

    v6 = CFDictionaryGetValue(a1, @"itemId");
    v7 = CFNumberGetTypeID();
    if (v6 && (!v7 || CFGetTypeID(v6) == v7))
    {
      CFDictionaryAddValue(a2, @"itemId", v6);
    }

    v8 = CFDictionaryGetValue(a1, @"artistName");
    v9 = CFStringGetTypeID();
    if (v8 && (!v9 || CFGetTypeID(v8) == v9))
    {
      CFDictionaryAddValue(a2, @"artistName", v8);
    }

    v10 = CFDictionaryGetValue(a1, @"itemName");
    v11 = CFStringGetTypeID();
    if (v10 && (!v11 || CFGetTypeID(v10) == v11))
    {
      CFDictionaryAddValue(a2, @"itemName", v10);
    }

    v12 = CFDictionaryGetValue(a1, @"storeCohort");
    v13 = CFStringGetTypeID();
    if (v12 && (!v13 || CFGetTypeID(v12) == v13))
    {
      CFDictionaryAddValue(a2, @"storeCohort", v12);
    }

    v14 = CFDictionaryGetValue(a1, @"s");
    v15 = CFNumberGetTypeID();
    if (v14 && (!v15 || CFGetTypeID(v14) == v15))
    {
      CFDictionaryAddValue(a2, @"s", v14);
    }

    v16 = CFDictionaryGetValue(a1, @"softwareVersionExternalIdentifier");
    v17 = CFNumberGetTypeID();
    if (v16 && (!v17 || CFGetTypeID(v16) == v17))
    {
      CFDictionaryAddValue(a2, @"softwareVersionExternalIdentifier", v16);
    }

    v18 = CFDictionaryGetValue(a1, @"betaExternalVersionIdentifier");
    v19 = CFNumberGetTypeID();
    if (v18 && (!v19 || CFGetTypeID(v18) == v19))
    {
      CFDictionaryAddValue(a2, @"betaExternalVersionIdentifier", v18);
    }

    v20 = CFDictionaryGetValue(a1, @"DeviceBasedVPP");
    v21 = CFBooleanGetTypeID();
    if (v20 && (!v21 || CFGetTypeID(v20) == v21))
    {
      CFDictionaryAddValue(a2, @"DeviceBasedVPP", v20);
    }

    v22 = CFDictionaryGetValue(a1, @"is-purchased-redownload");
    v23 = CFBooleanGetTypeID();
    if (v22 && (!v23 || CFGetTypeID(v22) == v23))
    {
      CFDictionaryAddValue(a2, @"is-purchased-redownload", v22);
    }

    v24 = CFDictionaryGetValue(a1, @"gameCenterEnabled");
    v25 = CFBooleanGetTypeID();
    if (v24 && (!v25 || CFGetTypeID(v24) == v25))
    {
      CFDictionaryAddValue(a2, @"gameCenterEnabled", v24);
    }

    v26 = CFDictionaryGetValue(a1, @"gameCenterEverEnabled");
    v27 = CFBooleanGetTypeID();
    if (v26 && (!v27 || CFGetTypeID(v26) == v27))
    {
      CFDictionaryAddValue(a2, @"gameCenterEverEnabled", v26);
    }

    v28 = CFDictionaryGetValue(a1, @"sourceApp");
    v29 = CFStringGetTypeID();
    if (v28 && (!v29 || CFGetTypeID(v28) == v29))
    {
      CFDictionaryAddValue(a2, @"sourceApp", v28);
    }

    v30 = CFDictionaryGetValue(a1, @"variantID");
    v31 = CFStringGetTypeID();
    if (v30 && (!v31 || CFGetTypeID(v30) == v31))
    {
      CFDictionaryAddValue(a2, @"variantID", v30);
    }

    v32 = CFDictionaryGetValue(a1, @"managementDeclarationIdentifier");
    v33 = CFStringGetTypeID();
    if (v32 && (!v33 || CFGetTypeID(v32) == v33))
    {
      CFDictionaryAddValue(a2, @"managementDeclarationIdentifier", v32);
    }

    v34 = CFDictionaryGetValue(a1, @"genre");
    v35 = CFStringGetTypeID();
    if (v34 && (!v35 || CFGetTypeID(v34) == v35))
    {
      CFDictionaryAddValue(a2, @"genre", v34);
    }

    v36 = CFDictionaryGetValue(a1, @"genreId");
    v37 = CFNumberGetTypeID();
    if (v36 && (!v37 || CFGetTypeID(v36) == v37))
    {
      CFDictionaryAddValue(a2, @"genreId", v36);
    }

    v38 = CFDictionaryGetValue(a1, @"subgenres");
    v39 = CFArrayGetTypeID();
    if (v38 && (!v39 || CFGetTypeID(v38) == v39))
    {
      CFDictionaryAddValue(a2, @"subgenres", v38);
    }

    v40 = CFDictionaryGetValue(a1, @"distributorInfo");
    v41 = CFDictionaryGetTypeID();
    if (v40 && (!v41 || CFGetTypeID(v40) == v41))
    {
      CFDictionaryAddValue(a2, @"distributorInfo", v40);
    }

    v42 = CFArrayGetTypeID();
    v43 = CFDictionaryGetValue(a1, @"categories");
    if (v43)
    {
      v44 = v43;
      if (CFGetTypeID(v43) == v42)
      {
        CFDictionaryAddValue(a2, @"categories", v44);
      }
    }

    v45 = CFDictionaryGetValue(a1, @"com.apple.iTunesStore.downloadInfo");
    v46 = CFDictionaryGetTypeID();
    if (v45 && (!v46 || CFGetTypeID(v45) == v46))
    {
      v47 = CFGetTypeID(v45);
      if (v47 == CFDictionaryGetTypeID())
      {
        v48 = CFDictionaryGetValue(v45, @"accountInfo");
        v49 = CFDictionaryGetTypeID();
        if (v48)
        {
          if (!v49 || CFGetTypeID(v48) == v49)
          {
            v50 = CFGetTypeID(v48);
            if (v50 == CFDictionaryGetTypeID())
            {
              if ((AsNumber = CFDictionaryGetValue(v48, @"PurchaserID"), v52 = CFNumberGetTypeID(), AsNumber) && (!v52 || CFGetTypeID(AsNumber) == v52) || (v53 = CFDictionaryGetValue(v48, @"DSPersonID"), (AsNumber = CFTypeGetAsNumber(v53)) != 0))
              {
                CFDictionaryAddValue(a2, @"PurchaserID", AsNumber);
              }
            }
          }
        }
      }
    }

    v54 = CFDictionaryGetValue(a1, @"rating");
    v55 = CFDictionaryGetTypeID();
    if (v54 && (!v55 || CFGetTypeID(v54) == v55))
    {
      v56 = CFDictionaryGetValue(v54, @"rank");
      v57 = CFNumberGetTypeID();
      if (v56 && (!v57 || CFGetTypeID(v56) == v57))
      {
        CFDictionaryAddValue(a2, @"rank", v56);
      }

      v58 = CFDictionaryGetValue(v54, @"label");
      v59 = CFStringGetTypeID();
      if (v58 && (!v59 || CFGetTypeID(v58) == v59))
      {

        CFDictionaryAddValue(a2, @"label", v58);
      }
    }
  }
}

uint64_t _LSServer_URLIsOnTrustedCryptex(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v1 = [[FSNode alloc] initWithURL:a1 flags:0 error:&v20];
  v2 = v20;
  v3 = v2;
  if (v1)
  {
    v4 = v1;
    _LSAssertRunningInServer("Boolean _LSServer_NodeIsOnTrustedCryptex(FSNode *__strong)", v5);
    v23 = 0;
    v6 = [(FSNode *)v4 volumeNodeWithFlags:0 error:&v23];
    v7 = v23;
    v8 = v7;
    if (v6)
    {
      v9 = +[FSNode rootVolumeNode];
      if ([v6 isEqual:v9])
      {
      }

      else
      {
        v13 = +[FSNode prebootVolumeNode];
        v11 = [v6 isEqual:v13];

        if (!v11)
        {
LABEL_21:

          goto LABEL_22;
        }
      }

      v22 = v8;
      v14 = [(FSNode *)v4 getFileSystemRepresentation:v24 error:&v22];
      v15 = v22;

      if (v14)
      {
        v21[0] = 0;
        v21[1] = 0;
        if (fsctl(v24, 0xC0104A66uLL, v21, 0))
        {
          v17 = __error();
          v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], *v17, 0, "_LSServer_NodeIsOnTrustedCryptex", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 1992);

LABEL_15:
          v11 = 0;
          goto LABEL_21;
        }

        v11 = BYTE4(v21[0]);
      }

      else
      {
        v18 = _LSDefaultLog(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          _LSServer_URLIsOnTrustedCryptex_cold_1();
        }

        v11 = 0;
      }

      v8 = v15;
      goto LABEL_21;
    }

    v12 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      _LSServer_URLIsOnTrustedCryptex_cold_2();
    }

    goto LABEL_15;
  }

  v10 = _LSDefaultLog(v2);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    _LSServer_URLIsOnTrustedCryptex_cold_3();
  }

  v11 = 0;
LABEL_22:

  return v11;
}

uint64_t _LSRegisterPluginNode(LSContext *a1, void *a2, FSNode *a3, unsigned int a4, unsigned int a5, void *a6)
{
  v19 = *MEMORY[0x1E69E9840];
  v11 = a2;
  v12 = objc_alloc_init(LSRegistrationInfo);
  v17 = a5;
  v13 = [(FSNode *)v11 bookmarkDataRelativeToNode:0 error:a6];
  if (!v13 || !_LSContainerFindOrRegisterWithNode(&a1->db, v11, a4, &v17 + 1, 0, 0, a6))
  {
    goto LABEL_11;
  }

  v12->bundleClass = 12;
  v12->version = 7;
  v12->action = 204;
  v12->options = a4;
  v12->containerUnit = HIDWORD(v17);
  if (a5 || (_LSPluginFindWithInfo(a1->db, 0, 0, 0, v11, &v17, 0), (a5 = v17) != 0))
  {
    v12->bundleUnit = a5;
  }

  if (![(FSNode *)v11 getFileSystemRepresentation:v18 error:a6])
  {
    goto LABEL_11;
  }

  v14 = _LSRegisterDirectoryNode(a1, v11, v12, v13, a3, 0, 0, &v17, v17);
  if (!v14)
  {
    v15 = 1;
    goto LABEL_12;
  }

  if (!a6)
  {
LABEL_11:
    v15 = 0;
    goto LABEL_12;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "_LSRegisterPluginNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2070);
  *a6 = v15 = 0;
LABEL_12:

  return v15;
}

uint64_t _LSRegisterDirectoryNode(LSContext *a1, FSNode *a2, FSNode *a3, LSRegistrationInfo *a4, FSNode *a5, const __CFArray **a6, const __CFArray **a7, const __CFURL *a8, unsigned int *a9)
{
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = [(FSNode *)v16 URL];

  v20 = _LSDispatchRegistration(a1, v17, v18, v19, a5, a8, a6, a7, v22, v23);
  return v20;
}

BOOL _LSRegisterBundleURL(void **a1, void *a2, uint64_t a3, FSNode *a4, void *a5)
{
  v7 = a3;
  v9 = a2;
  v10 = v9;
  if (v7)
  {
    v11 = [v9 copy];

    v10 = v11;
  }

  v12 = [[FSNode alloc] initWithURL:v10 flags:0 error:a5];
  if (v12)
  {
    v13 = _LSRegisterBundleNode(a1, v12, v7, a4, a5);
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

BOOL _LSRegisterBundleNode(void **a1, void *a2, unsigned int a3, FSNode *a4, void *a5)
{
  v9 = a2;
  v23 = a1;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(&v23, v10, 0);

  if (!v11)
  {
    if (a5)
    {
      v14 = +[_LSDServiceDomain defaultServiceDomain];
      v15 = LaunchServices::Database::Context::_get(&v23, v14, 0);

      if (v15)
      {
        v16 = 0;
      }

      else
      {
        v16 = v26;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

  v12 = _LSFindOrRegisterBundleNode(v11, v9, 0, a3, a4, 0, 0);
  if (v12 == -10811)
  {
    v22 = -1;
    v17 = _LSGetLibraryBundleIdentifierAndItemIndexForNode(v11, v9, &v22);
    if (v17 && v22 == -1)
    {
      v13 = _LSRegisterLibrary(v11, v17, 1u, a5);
      goto LABEL_19;
    }

    if (a5)
    {
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10811, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2622);
      goto LABEL_15;
    }

LABEL_16:
    v13 = 0;
    goto LABEL_19;
  }

  if (v12)
  {
    if (a5)
    {
      v18 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2627);
LABEL_15:
      v16 = v18;
LABEL_18:
      v13 = 0;
      *a5 = v16;
      goto LABEL_19;
    }

    goto LABEL_16;
  }

  v13 = 1;
LABEL_19:
  if (v23 && v25 == 1)
  {
    _LSContextDestroy(v23);
  }

  v19 = v24;
  v23 = 0;
  v24 = 0;

  v25 = 0;
  v20 = v26;
  v26 = 0;

  return v13;
}

void sub_181778708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

uint64_t _LSGetLibraryBundleIdentifierAndItemIndexForNode(LSContext *a1, FSNode *a2, uint64_t *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v28 = 0;
  v27 = 0;
  bzero(v30, 0x400uLL);
  *a3 = -1;
  if (![(FSNode *)v5 getFileSystemRepresentation:v30 error:0])
  {
    goto LABEL_8;
  }

  v6 = strlen(v30);
  v8 = v6;
  v9 = 0;
  while (1)
  {
    getLibIDs(v6, v7);
    v6 = _LSPathForBundleLibraryIdentifier(*&_MergedGlobals_2[v9 + 8]);
    v10 = v6;
    if (v6)
    {
      v11 = *v6;
      if (v8 > v11)
      {
        v6 = strncasecmp(v30, *(v6 + 8), *v6);
        if (!v6 && v30[v11] == 47)
        {
          break;
        }
      }
    }

    v9 += 8;
    if (v9 == 32)
    {
      goto LABEL_8;
    }
  }

  getLibIDs(v6, v7);
  v14 = *&_MergedGlobals_2[v9 + 8];
  memset(v29, 0, sizeof(v29));
  v15 = _LSBundleFindWithInfo(a1, 0, v14, 0, v29, 8, 128, &v28, &v27);
  if (v15)
  {
LABEL_8:
    v12 = 0;
  }

  else
  {
    getLibIDs(v15, v16);
    v12 = *&_MergedGlobals_2[v9 + 8];
    if (v28)
    {
      v17 = *v10;
      v18 = &v30[v17 + 1];
      v19 = ~v17 + v8;
      v20 = &off_1E6A1DD40;
      v21 = 240;
      while (1)
      {
        v22 = *(v20 - 2);
        if (v19 > v22 && !strncasecmp(v18, *v20, *(v20 - 2)) && v18[v22] == 47)
        {
          break;
        }

        v20 += 3;
        v21 -= 24;
        if (!v21)
        {
          goto LABEL_8;
        }
      }

      if (*(v27 + 468))
      {
        v23 = [(FSNode *)v5 isDirectory];
        if (v23)
        {
          MEMORY[0x1EEE9AC00](v23);
          strlcpy(v25 - ((v19 + 17) & 0xFFFFFFFFFFFFFFF0), v18, v19 + 2);
          *(v25 + v19 - ((v19 + 17) & 0xFFFFFFFFFFFFFFF0)) = 47;
          [(_LSDatabase *)a1->db store];
          v24 = _CSGetStringForCharacters();
        }

        else
        {
          [(_LSDatabase *)a1->db store];
          v24 = _CSGetStringForCharacters();
        }

        if (v24)
        {
          [(_LSDatabase *)a1->db store];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = ___ZL48_LSGetLibraryBundleIdentifierAndItemIndexForNodeP9LSContextP6FSNodePl_block_invoke;
          v25[3] = &__block_descriptor_44_e14_v24__0I8I12_16l;
          v26 = v24;
          v25[4] = a3;
          _CSArrayEnumerateAllValues();
        }
      }
    }
  }

  return v12;
}

BOOL _LSRegisterLibrary(LSContext *a1, void *a2, unsigned int a3, void *a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = _LSPathForBundleLibraryIdentifier(v7);
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (!v8)
  {
    if (a4)
    {
      v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -43, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3154);
      v9 = 0;
      goto LABEL_19;
    }

    v9 = 0;
    goto LABEL_30;
  }

  v9 = [[FSNode alloc] initWithFileSystemRepresentation:*(v8 + 8) flags:8 error:a4];
  if (!v9)
  {
    goto LABEL_30;
  }

  v10 = _LSBundleFindWithNode(a1, v9, &v24, &v23);
  if (v10 != -9499)
  {
    if (v10)
    {
      if (a4)
      {
        v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v10, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3161);
LABEL_19:
        v16 = 0;
        *a4 = v17;
        goto LABEL_31;
      }

LABEL_30:
      v16 = 0;
      goto LABEL_31;
    }

    if (!_LSBundleNeedsRegistration(a1, v9, a3, v24, v23))
    {
      goto LABEL_30;
    }
  }

  if (!_LSContainerFindOrRegisterWithNode(&a1->db, v9, a3, &v22, 0, &v21, a4))
  {
    goto LABEL_30;
  }

  if (!v24)
  {
    v18 = _LSBundleFindWithNode(a1, v9, &v24, &v23);
    if (v18 != -9499)
    {
      if (!v18)
      {
        if (!_LSBundleNeedsRegistration(a1, v9, a3, v24, v23))
        {
          goto LABEL_30;
        }

        goto LABEL_8;
      }

      if (a4)
      {
        v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v18, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3175);
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

LABEL_8:
  v11 = objc_alloc_init(LSRegistrationInfo);
  v11->version = 7;
  v11->action = 205;
  v11->options = a3;
  v11->containerUnit = v22;
  v11->bundleUnit = v24;
  v11->bundleClass = 8;
  if (_LSGetItemInfoFlagsForNode(a1, v9, &v11->itemFlags, a4) && [(FSNode *)v9 getContentModificationDate:&v11->contentModDate error:a4]&& [(FSNode *)v9 getInodeNumber:&v11->inoBundle error:a4]&& ([(FSNode *)v9 bookmarkDataRelativeToNode:v21 error:a4], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v25 = *MEMORY[0x1E695E4F0];
    v26[0] = v7;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v14 = [(FSNode *)v9 URL];
    v15 = _LSDispatchRegistration(a1, v11, v12, v14, v13, &v11->bundleUnit, 0, 0, v20, v21);

    v16 = v15 == 0;
    if (a4 && v15)
    {
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v15, 0, "_LSRegisterLibrary", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 3215);
    }
  }

  else
  {
    v16 = 0;
  }

LABEL_31:
  return v16;
}

id getNeedsRegistrationLog(uint64_t a1)
{
  if (getNeedsRegistrationLog(void)::once != -1)
  {
    getNeedsRegistrationLog();
  }

  v2 = getNeedsRegistrationLog(void)::result;

  return v2;
}

uint64_t _LSRegisterBundleNode(LSContext *a1, unsigned int a2, void *a3, void *a4, unsigned int a5, FSNode *a6, const __CFArray **a7, const __CFArray **a8, const __CFURL *a9, id *a10)
{
  v34 = *MEMORY[0x1E69E9840];
  v31 = a3;
  v17 = a4;
  v18 = objc_alloc_init(LSRegistrationInfo);
  v18->bundleClass = _LSGetBundleClassForNode(a1, v17);
  bundleClass = v18->bundleClass;
  if (bundleClass == 3 || bundleClass == 0)
  {
    if (a10)
    {
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10811, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2145);
      v22 = 0;
      v23 = 0;
      goto LABEL_26;
    }

LABEL_28:
    v22 = 0;
    v23 = 0;
    if (!a6)
    {
      goto LABEL_45;
    }

    goto LABEL_33;
  }

  if ((a5 & 0x40) != 0 && bundleClass == 2)
  {
    v18->bundleClass = 16;
  }

  v18->version = 7;
  v18->action = 203;
  v18->options = a5;
  v18->containerUnit = a2;
  if (*a9)
  {
    v18->bundleUnit = *a9;
  }

  if (!_LSGetItemInfoFlagsForNode(a1, v17, &v18->itemFlags, a10) || ![(FSNode *)v17 getContentModificationDate:&v18->contentModDate error:a10])
  {
    goto LABEL_28;
  }

  v23 = [(FSNode *)v17 bookmarkDataRelativeToNode:v31 error:a10];
  if (v23 && [(FSNode *)v17 getInodeNumber:&v18->inoBundle error:a10]&& [(FSNode *)v17 getFileSystemRepresentation:v33 error:a10])
  {
    if ((v18->options & 4) == 0)
    {
      v32 = -2;
      if (![(FSNode *)v17 getOwnerUID:&v32 error:a10])
      {
        goto LABEL_32;
      }

      if (!v32 && _LSPathIsTrusted(v33))
      {
        v18->options |= 2u;
      }
    }

    v24 = objc_autoreleasePoolPush();
    v25 = _LSRegisterDirectoryNode(a1, v17, v18, v23, a6, a7, a8, a9, v30);
    objc_autoreleasePoolPop(v24);
    if (!v25)
    {
      v22 = 1;
      if (!a6)
      {
        goto LABEL_45;
      }

      goto LABEL_33;
    }

    if (a10)
    {
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v25, 0, "_LSRegisterBundleNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSRegistration.mm", 2245);
      v22 = 0;
LABEL_26:
      *a10 = v21;
      if (!a6)
      {
        goto LABEL_45;
      }

LABEL_33:
      if (*MEMORY[0x1E695E4F0])
      {
        Value = CFDictionaryGetValue(a6, *MEMORY[0x1E695E4F0]);
        TypeID = CFStringGetTypeID();
        if (!Value || !TypeID || CFGetTypeID(Value) == TypeID)
        {
          if (v22)
          {
LABEL_38:
            v28 = @"success";
LABEL_44:
            _LSLogStepFinished(4, v22, Value, &cfstr_RegisteredBund.isa, v28);

            goto LABEL_45;
          }

LABEL_41:
          if (a10)
          {
            v28 = [*a10 description];
          }

          else
          {
            v28 = @"untracked error";
          }

          goto LABEL_44;
        }
      }

      else
      {
        CFStringGetTypeID();
      }

      Value = 0;
      if (v22)
      {
        goto LABEL_38;
      }

      goto LABEL_41;
    }
  }

LABEL_32:
  v22 = 0;
  if (a6)
  {
    goto LABEL_33;
  }

LABEL_45:

  return v22;
}

uint64_t _LSPathForBundleLibraryIdentifier(const __CFString *a1)
{
  if (CFEqual(a1, @"com.apple.system-library"))
  {
    v2 = 0;
    return &libPaths + 16 * v2;
  }

  if (CFEqual(a1, @"com.apple.local-library"))
  {
    v2 = 1;
    return &libPaths + 16 * v2;
  }

  if (CFEqual(a1, @"com.apple.network-library"))
  {
    v2 = 2;
    return &libPaths + 16 * v2;
  }

  if (CFEqual(a1, @"com.apple.apple-internal-library"))
  {
    v2 = 3;
    return &libPaths + 16 * v2;
  }

  return 0;
}

uint64_t _LSDispatchRegistration(LSContext *a1, char *a2, LSRegistrationInfo *a3, NSData *a4, FSNode *a5, const __CFURL *a6, const __CFArray **a7, unsigned __int8 *a8, const __CFArray **a9, unsigned __int8 *a10)
{
  v29 = *MEMORY[0x1E69E9840];
  v17 = a2;
  v18 = a3;
  context = objc_autoreleasePoolPush();
  if ([__LSDefaultsGetSharedInstance(context v19)])
  {
    if ((v17[19] & 1) == 0)
    {
      v20 = _LSRegisterItemInfo(v17, v18, 0, a4, a5, a6, a7, a8);
      goto LABEL_14;
    }
  }

  else if (!v17)
  {
    v21 = objc_alloc_init(LSRegistrationInfo);
    goto LABEL_7;
  }

  v21 = [v17 mutableCopy];
LABEL_7:
  v22 = v21;
  BundleDataAndRegister = _LSServerCreateBundleDataAndRegister(a1, v21, v18, a4, a5, a6, a7, a8);
  v20 = BundleDataAndRegister;
  if (BundleDataAndRegister == -10675)
  {
    if ((v22->options & 2) != 0)
    {
      v20 = 4294956621;
    }

    else
    {
      v24 = _LSInstallLog(BundleDataAndRegister);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = a4;
        _os_log_impl(&dword_18162D000, v24, OS_LOG_TYPE_DEFAULT, "Retrying registration of %@ with trusted bit", buf, 0xCu);
      }

      v22->options |= 2u;
      v20 = _LSServerCreateBundleDataAndRegister(a1, v22, v18, a4, a5, a6, a7, a8);
    }
  }

LABEL_14:
  objc_autoreleasePoolPop(context);

  return v20;
}

uint64_t _LSUnregisterBundle(_LSDatabase **a1, uint64_t a2, uint64_t a3)
{
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = -10810;
  v6 = objc_autoreleasePoolPush();
  v8 = [__LSDefaultsGetSharedInstance(v6 v7)];
  if (v8 & 1) == 0 && ([__LSDefaultsGetSharedInstance(v8 v9)])
  {
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = ___LSUnregisterBundle_block_invoke_186;
    v36[3] = &unk_1E6A18DF0;
    v36[4] = &v47;
    v10 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v36];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = ___LSUnregisterBundle_block_invoke_2;
    v35[3] = &unk_1E6A1CE28;
    v35[4] = &v47;
    [v10 unregisterBundleUnit:a2 options:a3 completionHandler:v35];
    if ((a3 & 0x3000000) == 0x2000000 && !*(v48 + 6))
    {
      v34 = 0;
      v11 = _LSContextUpdate(a1, 1, &v34);
      v12 = v34;
      v13 = v12;
      if (v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = _LSGetOSStatusFromNSError(v12);
      }

      *(v48 + 6) = v14;
    }

    goto LABEL_37;
  }

  v43 = a1;
  v44 = 0;
  v45 = 0;
  v46 = 0;
  v15 = +[_LSDServiceDomain defaultServiceDomain];
  v16 = LaunchServices::Database::Context::_get(&v43, v15, 0);

  if (!v16)
  {
    v25 = +[_LSDServiceDomain defaultServiceDomain];
    v26 = LaunchServices::Database::Context::_get(&v43, v25, 0);

    if (v26)
    {
      v27 = 0;
    }

    else
    {
      v29 = v46;
      v27 = v29;
      if (v29)
      {
        v28 = _LSGetOSStatusFromNSError(v29);
        goto LABEL_28;
      }
    }

    v28 = 0;
LABEL_28:

    goto LABEL_29;
  }

  *(v48 + 6) = 0;
  v17 = *v16;
  if ((a3 & 0x20000000) != 0)
  {
    [(_LSDatabase *)v17 store];
    [(_LSDatabase *)*v16 schema];
    if (CSStoreGetUnit())
    {
      v24 = _LSPluginUnregister(*v16, a2);
LABEL_22:
      *(v48 + 6) = v24;
      if (!v24)
      {
        _LSDatabaseGetSequenceNumber(*v16);
        _LSDatabaseSetSequenceNumber();
        if (!*(v48 + 6))
        {
          _LSArmSaveTimer(5);
        }
      }

      goto LABEL_30;
    }
  }

  else
  {
    [(_LSDatabase *)v17 store];
    [(_LSDatabase *)*v16 schema];
    if (CSStoreGetUnit())
    {
      v18 = _LSBundleGet(*v16, a2);
      v19 = v18;
      if (*(v18 + 168) == 2)
      {
        v20 = *(v18 + 12);
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0;
        v21 = *v16;
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = ___LSUnregisterBundle_block_invoke;
        v37[3] = &unk_1E6A1DC48;
        v38 = a2;
        v37[5] = v16;
        v37[6] = v19;
        v37[4] = &v39;
        _LSDatabaseEnumeratingBindingMap(v21, 6, v20, v37);
        if ((v40[3] & 1) == 0)
        {
          v22 = _LSDatabaseGetNSStringFromString(*v16, *(v19 + 12));
          v23 = _LSAppProtectionLog(v22);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            _LSUnregisterBundle_cold_1();
          }

          [_LSDAppProtectionClient cleanupDeletedApplication:v22];
        }

        _Block_object_dispose(&v39, 8);
      }

      v24 = _LSBundleRemove(*v16, a2, 1);
      goto LABEL_22;
    }
  }

  v28 = -9499;
LABEL_29:
  *(v48 + 6) = v28;
LABEL_30:
  if (v43 && v45 == 1)
  {
    _LSContextDestroy(v43);
  }

  v30 = v44;
  v43 = 0;
  v44 = 0;

  v45 = 0;
  v31 = v46;
  v46 = 0;

LABEL_37:
  objc_autoreleasePoolPop(v6);
  v32 = *(v48 + 6);
  _Block_object_dispose(&v47, 8);
  return v32;
}

void sub_181779AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);

  _Block_object_dispose(va, 8);
  LaunchServices::Database::Context::~Context((v29 - 144));
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSUpdateContainerState(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v65 = 0;
  v66 = &v65;
  v67 = 0x2020000000;
  v68 = -10810;
  if (v5)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSUpdateContainerState(__strong LSDatabaseRef, LSContainerID, LSContainerData *)"}];
    [v42 handleFailureInFunction:v43 file:@"LSRegistration.mm" lineNumber:3468 description:{@"Invalid parameter not satisfying: %@", @"inDB != NULL"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v44 = [MEMORY[0x1E696AAA8] currentHandler];
  v45 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSUpdateContainerState(__strong LSDatabaseRef, LSContainerID, LSContainerData *)"}];
  [v44 handleFailureInFunction:v45 file:@"LSRegistration.mm" lineNumber:3469 description:{@"Invalid parameter not satisfying: %@", @"inContainerUnit != kCSStoreNullID"}];

LABEL_3:
  v6 = objc_autoreleasePoolPush();
  v7 = _LSContainerGet(v5, a2);
  v8 = v7;
  if (v7)
  {
    v57 = 0;
    v58 = &v57;
    v59 = 0x4812000000;
    v60 = __Block_byref_object_copy__198;
    v61 = __Block_byref_object_dispose__199;
    v62 = &unk_1818533FF;
    v9 = *v7;
    v64 = *(v7 + 16);
    v63 = v9;
    v10 = _LSContainerDataNeedsUpdate(&v63);
    if (v10)
    {
      v12 = [__LSDefaultsGetSharedInstance(v10 v11)];
      if ((v12 & 1) != 0 || ([__LSDefaultsGetSharedInstance(v12 v13)] & 1) == 0)
      {
        v56 = 0;
        v15 = *(v8 + 12);
        if (v15)
        {
          v16 = _LSAliasGet(v5, v15);
          if (v16)
          {
            v55 = 0;
            v17 = [FSNode getVolumeIdentifier:&v56 forBookmarkData:v16 error:&v55];
            v18 = v55;
            v19 = v18;
            if (v17)
            {
              v20 = 0;
            }

            else
            {
              v20 = _LSGetOSStatusFromNSError(v18);
            }

            *(v66 + 6) = v20;
          }

          else
          {
            *(v66 + 6) = -41;
          }
        }

        else if ((*v8 & 2) != 0)
        {
          v21 = +[FSNode rootVolumeNode];
          v54 = 0;
          v22 = [v21 getVolumeIdentifier:&v56 error:&v54];
          v23 = v54;

          if (v22)
          {
            v24 = 0;
          }

          else
          {
            v24 = _LSGetOSStatusFromNSError(v23);
          }

          *(v66 + 6) = v24;
        }

        else
        {
          *(v66 + 6) = -35;
        }

        v25 = v66;
        v26 = *(v66 + 6);
        if (v56)
        {
          v27 = v26 == 0;
        }

        else
        {
          v27 = 0;
        }

        v28 = v58;
        if (v27)
        {
          v29 = 1;
        }

        else
        {
          v29 = -1;
        }

        if (v26)
        {
          v30 = 0;
        }

        else
        {
          v30 = v56;
        }

        *(v58 + 50) = v29;
        *(v28 + 52) = v30;
        *(v25 + 6) = 0;
        v31 = v28[6];
        v32 = v28[7];
        v33 = *(v28 + 16);
        if (v31 != *v8 || v32 != *(v8 + 8) || v33 != *(v8 + 16))
        {
          v50[0] = MEMORY[0x1E69E9820];
          v50[1] = 3221225472;
          v50[2] = ___LSUpdateContainerState_block_invoke;
          v50[3] = &unk_1E6A1DC70;
          v52 = &v57;
          v51 = v5;
          v53 = a2;
          v36 = MEMORY[0x1865D71B0](v50);
          if ([__LSDefaultsGetSharedInstance(v36 v37)])
          {
            v38 = +[LSDBExecutionContext sharedServerInstance];
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = ___LSUpdateContainerState_block_invoke_2;
            v48[3] = &unk_1E6A1A660;
            v49 = v36;
            [(LSDBExecutionContext *)v38 performAsyncWrite:v48];
          }

          else
          {
            v36[2](v36);
          }
        }
      }

      else
      {
        v47[0] = MEMORY[0x1E69E9820];
        v47[1] = 3221225472;
        v47[2] = ___LSUpdateContainerState_block_invoke_3;
        v47[3] = &unk_1E6A18DF0;
        v47[4] = &v65;
        v14 = [(_LSDService *)_LSDModifyService synchronousXPCProxyWithErrorHandler:v47];
        v46[0] = MEMORY[0x1E69E9820];
        v46[1] = 3221225472;
        v46[2] = ___LSUpdateContainerState_block_invoke_4;
        v46[3] = &unk_1E6A1DC98;
        v46[4] = &v65;
        v46[5] = &v57;
        [v14 updateContainerUnit:a2 completionHandler:v46];
      }
    }

    else
    {
      *(v66 + 6) = 0;
    }

    if (a3 && !*(v66 + 6))
    {
      v39 = *(v58 + 16);
      *a3 = *(v58 + 3);
      *(a3 + 16) = v39;
    }

    _Block_object_dispose(&v57, 8);
  }

  else
  {
    *(v66 + 6) = -10817;
  }

  objc_autoreleasePoolPop(v6);
  v40 = *(v66 + 6);
  _Block_object_dispose(&v65, 8);

  return v40;
}

void sub_18177A274(_Unwind_Exception *a1)
{
  _Block_object_dispose((v4 - 128), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__198(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[4].n128_u32[0] = a2[4].n128_u32[0];
  a1[3] = result;
  return result;
}

uint64_t _LSRegisterTypeDeclarationsForBundle(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a5;
  if (!a3)
  {
    __assert_rtn("_LSRegisterTypeDeclarationsForBundle", "LSRegistration.mm", 3674, "inBundleData");
  }

  if (*(a3 + 168) == 16)
  {
    v13 = 0;
  }

  else
  {
    v13 = _LSRegisterTypeDeclarationsCommon(v11, a2, *(a3 + 476), a4, v12, a6);
  }

  return v13;
}

uint64_t _LSRegisterTypeDeclarationsCommon(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, uint64_t a6)
{
  v8 = a3;
  v9 = a1;
  v10 = a5;
  v11 = 0;
  if (v9 && v8 && a4)
  {
    v12 = CFGetTypeID(a4);
    if (v12 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(a4);
      if (Count < 1)
      {
        v11 = 0;
      }

      else
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a4, i);
          TypeID = CFDictionaryGetTypeID();
          if (ValueAtIndex && TypeID)
          {
            CFGetTypeID(ValueAtIndex);
          }

          v11 = _UTTypeAddWithDeclarationDictionary(v9);
          if (!v11)
          {
            [(_LSDatabase *)v9 store];
            _CSArrayAppendValue();
          }
        }
      }
    }

    else
    {
      v11 = 4294956479;
    }
  }

  return v11;
}

uint64_t _LSRegisterTypeDeclarationsForPlugin(void *a1, uint64_t a2, uint64_t a3, const void *a4, void *a5, int a6)
{
  v11 = a1;
  v12 = a5;
  if (!a3)
  {
    __assert_rtn("_LSRegisterTypeDeclarationsForPlugin", "LSRegistration.mm", 3694, "inPluginData");
  }

  v13 = _LSRegisterTypeDeclarationsCommon(v11, a2, *(a3 + 232), a4, v12, a6 | 0x2000u);

  return v13;
}

uint64_t _LSRegisterDocumentTypes(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v136 = v10;
  v161 = *MEMORY[0x1E69E9840];
  v141 = v1;
  v140 = v5;
  if (v7 && (theArray = v7, v11 = CFGetTypeID(v7), v11 == CFArrayGetTypeID()))
  {
    Count = CFArrayGetCount(v7);
    _LSBindingListBufferInit(v141, v145);
    if (Count >= 1)
    {
      v13 = 0;
      v137 = v3 | 0x20;
      v129 = v3 | 0x820;
      v133 = *MEMORY[0x1E695E178];
      key = *MEMORY[0x1E695E170];
      v126 = *MEMORY[0x1E695E168];
      v128 = *MEMORY[0x1E695E4F0];
      v127 = *MEMORY[0x1E695E160];
      *&v12 = 138412290;
      v125 = v12;
      do
      {
        idx = v13;
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
        TypeID = CFDictionaryGetTypeID();
        if (ValueAtIndex && ((v16 = TypeID) == 0 || (TypeID = CFGetTypeID(ValueAtIndex), TypeID == v16)))
        {
          v17 = objc_autoreleasePoolPush();
          v144 = [MEMORY[0x1E695DF70] array];
          v18 = objc_opt_class();
          v142 = [ValueAtIndex objectForKey:@"LSHandlerRank"];
          if (v18 && v142 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v142 = 0;
          }

          v19 = objc_opt_class();
          v20 = [ValueAtIndex objectForKey:@"LSItemContentTypes"];
          v21 = v20;
          if (v19 && v20 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v21 = 0;
          }

          if ([v142 isEqualToString:{@"Owner", v125}] && objc_msgSend(v21, "count"))
          {
            v22 = [MEMORY[0x1E695DF70] array];
            v23 = [MEMORY[0x1E695DF70] array];
            v138 = v17;
            v149 = 0u;
            v148 = 0u;
            v147 = 0u;
            v146 = 0u;
            v24 = v21;
            v25 = [v24 countByEnumeratingWithState:&v146 objects:v151 count:16];
            if (v25)
            {
              v26 = *v147;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v147 != v26)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v28 = *(*(&v146 + 1) + 8 * i);
                  if (_NSIsNSString())
                  {
                    if (_UTTypeIsWildcard(v28))
                    {
                      v29 = v22;
                    }

                    else
                    {
                      v29 = v23;
                    }

                    [v29 addObject:v28];
                  }
                }

                v25 = [v24 countByEnumeratingWithState:&v146 objects:v151 count:16];
              }

              while (v25);
            }

            v17 = v138;
            v30 = v23;
            v31 = v22;
          }

          else
          {
            v30 = 0;
            v31 = 0;
          }

          v34 = [v31 count];
          if (v34)
          {
            v35 = _LSDefaultLog(v34);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
              LODWORD(v158) = v125;
              *(&v158 + 4) = v31;
              _os_log_debug_impl(&dword_18162D000, v35, OS_LOG_TYPE_DEBUG, "Decomposeing docuemnt claim for types: %@", &v158, 0xCu);
            }

            v36 = [ValueAtIndex mutableCopy];
            [v36 setObject:v31 forKey:@"LSItemContentTypes"];
            [v36 setObject:@"Default" forKey:@"LSHandlerRank"];
            [(__CFArray *)v144 addObject:v36];
            if ([v30 count])
            {
              v37 = [ValueAtIndex mutableCopy];
              [v37 setObject:v30 forKey:@"LSItemContentTypes"];
              [(__CFArray *)v144 addObject:v37];
            }
          }

          else
          {
            [(__CFArray *)v144 addObject:ValueAtIndex];
          }

          objc_autoreleasePoolPop(v17);
          if (v144)
          {
            for (j = 0; ; ++j)
            {
              if (j >= CFArrayGetCount(v144))
              {
                CFRelease(v144);
                goto LABEL_200;
              }

              v39 = CFArrayGetValueAtIndex(v144, j);
              v40 = CFDictionaryGetTypeID();
              if (v39 && v40 && CFGetTypeID(v39) != v40)
              {
                v39 = 0;
              }

              v41 = v141;
              v42 = v140;
              v143 = v42;
              v150 = 0;
              v153 = 0;
              v152 = 0u;
              memset(v151, 0, sizeof(v151));
              *&v158 = 0;
              *(&v158 + 1) = &v158;
              v159 = 0x2020000000;
              v160 = 0;
              if (*(v9 + 20) == 6 && (*(v9 + 176) & 2) == 0)
              {
                v43 = _LSRegistrationLog(v42);
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_98;
                }

                *buf = 134217984;
                v155 = v136;
                v44 = v43;
                v45 = OS_LOG_TYPE_INFO;
                v46 = "Skipping document claims for bundle %llu because it is Mac Catalyst but does not support open-in-place";
LABEL_96:
                v67 = 12;
                goto LABEL_97;
              }

              if (*(v9 + 168) == 16)
              {
                v43 = _LSDefaultLog(v42);
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_98;
                }

                *buf = 134217984;
                v155 = v136;
                v44 = v43;
                v45 = OS_LOG_TYPE_INFO;
                v46 = "Skipping document claims for bundle %llu because it is a remote placeholder";
                goto LABEL_96;
              }

              if ((*(v9 + 179) & 0x10) != 0)
              {
                v43 = _LSDefaultLog(v42);
                if (!os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_98;
                }

                *buf = 134217984;
                v155 = v136;
                v44 = v43;
                v45 = OS_LOG_TYPE_INFO;
                v46 = "Skipping document claims for bundle %llu because it is an App Clip";
                goto LABEL_96;
              }

              if (v39)
              {
                v47 = CFGetTypeID(v39);
                if (v47 == CFDictionaryGetTypeID())
                {
                  DWORD2(v151[0]) = v137;
                  v48 = v137;
                  if (_LSGetBooleanFromDict(v39, @"LSDefaultShareModeCollaboration"))
                  {
                    v48 = v129;
                    DWORD2(v151[0]) = v129;
                  }

                  if (_LSGetBooleanFromDict(v39, @"LSTypeIsPackage"))
                  {
                    v48 |= 8u;
                    DWORD2(v151[0]) = v48;
                  }

                  if (_LSGetBooleanFromDict(v39, @"LSIsAppleDefaultForType"))
                  {
                    v48 |= 1u;
                    DWORD2(v151[0]) = v48;
                    *(*(&v158 + 1) + 24) = 1;
                  }

                  if ((*(v9 + 164) & 0x10) != 0 || (v49 = v41, -[_LSDatabase store](v41), v50 = _CSStringCopyCFString(), v51 = [v50 isEqualToString:@"System"], v50, v51))
                  {
                    if (_LSGetBooleanFromDict(v39, @"LSIsAppleDefaultNoOverrideForType"))
                    {
                      v48 |= 3u;
                      DWORD2(v151[0]) = v48;
                      *(*(&v158 + 1) + 24) = 1;
                    }
                  }

                  if (*(v9 + 164))
                  {
                    DWORD2(v151[0]) = v48 | 4;
                  }

                  WORD6(v151[0]) = _LSGetHandlerRankFromDictKey(v39, v52);
                  v139 = _LSGetRoleFromDictKey(v39, v133);
                  HIWORD(v151[0]) = v139;
                  v53 = *(v9 + 168);
                  if (!v139)
                  {
                    if (v53 == 2)
                    {
                      v54 = 2;
                    }

                    else
                    {
                      v54 = 1;
                    }

                    LOBYTE(v139) = v54;
                    HIWORD(v151[0]) = v54;
                  }

                  if (v53 == 2 || (v139 & 0x11) != 0)
                  {
                    break;
                  }
                }
              }

LABEL_99:
              _Block_object_dispose(&v158, 8);

              _LSBindingListBufferReset(v41, v145);
            }

            v55 = CFStringGetTypeID();
            Value = CFDictionaryGetValue(v39, key);
            v57 = Value;
            if (Value && CFGetTypeID(Value) == v55)
            {
              v58 = v57;
              v59 = [v143 objectForKeyedSubscript:v58];
              DWORD1(v151[1]) = LaunchServices::LocalizedString::Add(v41, v59, v58);
            }

            if (!_LSGetBooleanFromDict(v39, @"CFBundleTypeIconSystemGenerated"))
            {
              v60 = CFDictionaryGetValue(v39, @"CFBundleTypeIconFiles");
              v61 = CFArrayGetTypeID();
              if (v60 && (!v61 || CFGetTypeID(v60) == v61))
              {
                v62 = CFArrayGetCount(v60);
                if (v62 >= 1)
                {
                  v63 = 0;
                  v64 = 0;
                  do
                  {
                    v65 = CFArrayGetValueAtIndex(v60, v64);
                    v66 = CFStringGetTypeID();
                    if (v65 && (!v66 || CFGetTypeID(v65) == v66))
                    {
                      *(&v151[1] + v63++ + 3) = _LSDatabaseCreateStringForCFString(v41, v65, 0);
                    }

                    ++v64;
                  }

                  while (v64 < v62 && v63 < 8);
                }
              }

              else if (v126)
              {
                v68 = CFDictionaryGetValue(v39, v126);
                v69 = CFStringGetTypeID();
                if (v68 && (!v69 || CFGetTypeID(v68) == v69))
                {
                  HIDWORD(v151[1]) = _LSDatabaseCreateStringForCFString(v41, v68, 0);
                }
              }

              else
              {
                CFStringGetTypeID();
              }

              v70 = CFDictionaryGetValue(v39, @"LSIconName");
              v71 = CFStringGetTypeID();
              if (v70 && (!v71 || CFGetTypeID(v70) == v71))
              {
                HIDWORD(v152) = _LSDatabaseCreateStringForCFString(v41, v70, 0);
              }
            }

            if (_LSGetBooleanFromDict(v39, @"NSResolvesUbiquitousConflicts") || CFDictionaryContainsKey(v39, @"NSDocumentClass"))
            {
              DWORD2(v151[0]) |= 0x200u;
            }

            v72 = CFDictionaryGetValue(v39, @"_LSBundleLibraryDelegate");
            v73 = CFStringGetTypeID();
            if (v72 && v73 && CFGetTypeID(v72) != v73)
            {
              v72 = 0;
            }

            LODWORD(v153) = _LSDatabaseCreateStringForCFString(v41, v72, 0);
            if (!v153)
            {
              goto LABEL_129;
            }

            if (v128)
            {
              v74 = CFDictionaryGetValue(v39, v128);
              v75 = CFStringGetTypeID();
              if (v74 && (!v75 || CFGetTypeID(v74) == v75))
              {
                v76 = DWORD2(v151[0]);
                Length = CFStringGetLength(v74);
                if (Length > CFStringGetLength(@"com.apple."))
                {
                  v162.length = CFStringGetLength(@"com.apple.");
                  v162.location = 0;
                  if (CFStringCompareWithOptions(v74, @"com.apple.", v162, 1uLL) == kCFCompareEqualTo)
                  {
                    v78 = v76 | 4;
                    goto LABEL_128;
                  }
                }

LABEL_127:
                v78 = v76 & 0xFFFFFFFB;
LABEL_128:
                DWORD2(v151[0]) = v78;
LABEL_129:
                LODWORD(v151[1]) = v136;
                HIDWORD(v153) = 0;
                v79 = CFDictionaryGetValue(v39, @"LSItemContentTypes");
                v80 = CFArrayGetTypeID();
                if (v79)
                {
                  v81 = v80;
                  if (!v80 || (v80 = CFGetTypeID(v79), v80 == v81))
                  {
                    v82 = CFGetTypeID(v79);
                    if (v82 == CFArrayGetTypeID())
                    {
                      v83 = CFArrayGetCount(v79);
                      if (v83 >= 1)
                      {
                        v84 = 0;
                        v134 = 0;
                        do
                        {
                          v85 = CFArrayGetValueAtIndex(v79, v84);
                          v86 = CFStringGetTypeID();
                          if (v85 && (!v86 || CFGetTypeID(v85) == v86))
                          {
                            v87 = CFStringGetTypeID();
                            if (v87 == CFGetTypeID(v85) && ((v139 & 8) == 0 || !UTTypeEqual(v85, @"com.apple.application")))
                            {
                              active = _UTGetActiveTypeForCFStringIdentifier(v41, v85, 0);
                              if (active && (*(active + 9) & 2) != 0)
                              {
                                DWORD2(v151[0]) |= 0x400u;
                                v134 = 1;
                              }

                              StringForCFString = _LSDatabaseCreateStringForCFString(v41, v85, 1);
                              if (StringForCFString)
                              {
                                v90 = v41;
                                v91 = [(_LSDatabase *)v41 schema];
                                if (!_LSBindingListBufferAppend(v41, v145, *(v91 + 216), StringForCFString))
                                {
                                  goto LABEL_99;
                                }

                                v92 = v41;
                                [(_LSDatabase *)v41 store];
                                _CSStringRelease();
                              }
                            }
                          }

                          ++v84;
                        }

                        while (v83 != v84);
                        goto LABEL_189;
                      }
                    }

                    goto LABEL_191;
                  }
                }

                if (*(v9 + 20) >= 2u)
                {
                  v107 = _LSDefaultLog(v80);
                  if (os_log_type_enabled(v107, OS_LOG_TYPE_INFO))
                  {
                    v108 = *(v9 + 20);
                    *buf = 134218240;
                    v155 = v136;
                    v156 = 2048;
                    v157 = v108;
                    _os_log_impl(&dword_18162D000, v107, OS_LOG_TYPE_INFO, "Skipping legacy claim registration for bundle %llu because it's the wrong platform (is %llu)", buf, 0x16u);
                  }

                  goto LABEL_191;
                }

                if (v127)
                {
                  v93 = CFDictionaryGetValue(v39, v127);
                  v94 = CFArrayGetTypeID();
                  if (v93 && (!v94 || CFGetTypeID(v93) == v94))
                  {
                    v95 = CFArrayGetCount(v93);
                    if (v95 >= 1)
                    {
                      v96 = 0;
                      v134 = 0;
                      do
                      {
                        v97 = CFArrayGetValueAtIndex(v93, v96);
                        v98 = CFStringGetTypeID();
                        if (v97 && (!v98 || CFGetTypeID(v97) == v98))
                        {
                          v99 = CFStringGetTypeID();
                          if (v99 == CFGetTypeID(v97) && (CFStringCompare(v97, @"app", 1uLL) || (v139 & 8) == 0))
                          {
                            v100 = _LSDatabaseCreateStringForCFString(v41, v97, 1);
                            if (v100)
                            {
                              v101 = v41;
                              v102 = [(_LSDatabase *)v41 schema];
                              if (!_LSBindingListBufferAppend(v41, v145, *(v102 + 320), v100))
                              {
                                goto LABEL_99;
                              }

                              v103 = v41;
                              [(_LSDatabase *)v41 store];
                              _CSStringRelease();
                            }

                            if (CFStringCompare(v97, @"*", 0))
                            {
                              if (*(*(&v158 + 1) + 24))
                              {
                                v104 = v41;
                                [(_LSDatabase *)v41 store];
                                v105 = v41;
                                [(_LSDatabase *)v41 schema];
                                *&v146 = MEMORY[0x1E69E9820];
                                *(&v146 + 1) = 3221225472;
                                *&v147 = ___ZL23_LSRegisterDocumentTypeP11_LSDatabasejPK12LSBundleDataPK14__CFDictionaryP12NSDictionaryIP8NSStringPS7_IS9_S9_EEjP19LSBindingListBuffer_block_invoke;
                                *(&v147 + 1) = &unk_1E6A19430;
                                v106 = v41;
                                *&v149 = v145;
                                *&v148 = v106;
                                *(&v148 + 1) = &v158;
                                _CSStringBindingEnumerate();
                              }
                            }

                            else
                            {
                              DWORD2(v151[0]) |= 0x10u;
                              v134 = 1;
                            }
                          }
                        }

                        ++v96;
                      }

                      while (v95 != v96);
LABEL_176:
                      v109 = CFDictionaryGetValue(v39, @"CFBundleTypeMIMETypes");
                      v110 = CFArrayGetTypeID();
                      if (v109 && (!v110 || CFGetTypeID(v109) == v110))
                      {
                        v111 = CFArrayGetCount(v109);
                        if (v111 >= 1)
                        {
                          for (k = 0; k != v111; ++k)
                          {
                            v113 = CFArrayGetValueAtIndex(v109, k);
                            v114 = CFStringGetTypeID();
                            if (v113 && v114 && CFGetTypeID(v113) != v114)
                            {
                              v113 = 0;
                            }

                            v115 = _LSDatabaseCreateStringForCFString(v41, v113, 1);
                            if (v115)
                            {
                              v116 = v41;
                              v117 = [(_LSDatabase *)v41 schema];
                              if (!_LSBindingListBufferAppend(v41, v145, *(v117 + 424), v115))
                              {
                                goto LABEL_99;
                              }

                              v118 = v41;
                              [(_LSDatabase *)v41 store];
                              _CSStringRelease();
                            }
                          }
                        }
                      }

LABEL_189:
                      if (v134)
                      {
                        v119 = _LSBundleGet(v41, v136);
                        _LSBundleSetFlags(v41, v136, *(v119 + 172) | 0x10000000);
                      }

LABEL_191:
                      v120 = _LSBindingListCreate(v41, v145, &v150);
                      v121 = v120;
                      if (v120 || (HIDWORD(v153) = v150, v120 = _LSClaimAdd(v41, v151, &v150 + 1), (v121 = v120) != 0) || (v122 = v41, [(_LSDatabase *)v41 store], _CSArrayAppendValue(), v150) && !_LSBundleDataIsInUnsupportedLocation(v41, v9) && !_LSBundleDataGetUnsupportedFormatFlag() && (v120 = _LSBindingListActivate(v41), (v121 = v120) != 0))
                      {
                        v43 = _LSRegistrationLog(v120);
                        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 67109120;
                          LODWORD(v155) = v121;
                          v44 = v43;
                          v45 = OS_LOG_TYPE_ERROR;
                          v46 = "Failed to register document type with error code: %d";
                          v67 = 8;
LABEL_97:
                          _os_log_impl(&dword_18162D000, v44, v45, v46, buf, v67);
                        }

LABEL_98:

                        goto LABEL_99;
                      }

                      goto LABEL_99;
                    }
                  }
                }

                else
                {
                  CFArrayGetTypeID();
                }

                v134 = 0;
                goto LABEL_176;
              }
            }

            else
            {
              CFStringGetTypeID();
            }

            v76 = DWORD2(v151[0]);
            goto LABEL_127;
          }
        }

        else
        {
          v32 = _LSRegistrationLog(TypeID);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v33 = CFArrayGetValueAtIndex(theArray, idx);
            LODWORD(v151[0]) = 138477827;
            *(v151 + 4) = v33;
            _os_log_impl(&dword_18162D000, v32, OS_LOG_TYPE_ERROR, "Unexpected value in document types array, not dictionary as expected, but %{private}@", v151, 0xCu);
          }
        }

LABEL_200:
        v13 = idx + 1;
      }

      while (idx + 1 != Count);
    }

    v123 = 0;
  }

  else
  {
    v123 = 4294956479;
  }

  return v123;
}

uint64_t _LSRegisterDefaultAppsClaims(void *a1, uint64_t a2, const LSBundleData *a3, void *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a4;
  v9 = LSCopyDefaultAppsClaimForBundle(v7, a2, a3, v8);
  v10 = v9;
  if (v9)
  {
    v11 = _LSDefaultLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "Registering synthesized claim for default app categories: %@", buf, 0xCu);
    }

    v14 = v10;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v14 count:1];
    v12 = _LSRegisterDocumentTypes(v7);
    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_18177BCC8(_Unwind_Exception *a1)
{
  CFRelease(v3);

  _Unwind_Resume(a1);
}

uint64_t _LSRegisterURLTypes(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v61 = v6;
  v71 = *MEMORY[0x1E69E9840];
  v7 = v1;
  v8 = v7;
  v64 = 0;
  if (*(v5 + 168) == 16)
  {
    v9 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v61;
      v10 = "Skipping URL claims for bundle %llu because it is a remote placeholder";
LABEL_96:
      _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_INFO, v10, &buf, 0xCu);
      goto LABEL_97;
    }

    goto LABEL_97;
  }

  if ((*(v5 + 179) & 0x10) != 0)
  {
    v9 = _LSDefaultLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v61;
      v10 = "Skipping URL claims for bundle %llu because it is an App Clip";
      goto LABEL_96;
    }

LABEL_97:

    v14 = 0;
    goto LABEL_98;
  }

  _LSBindingListBufferInit(v7, v65);
  v11 = v8;
  [(_LSDatabase *)v8 store];
  cf = _CSStringCopyCFString();
  if (!v3)
  {
LABEL_99:
    v14 = 0;
    goto LABEL_100;
  }

  v12 = CFGetTypeID(v3);
  if (v12 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v62 = Count;
      v14 = 0;
      v15 = 0;
      v60 = *MEMORY[0x1E695E178];
      key = *MEMORY[0x1E695E188];
      v55 = *MEMORY[0x1E695E180];
      v57 = *MEMORY[0x1E695E4F0];
      v58 = *MEMORY[0x1E695E190];
      while (1)
      {
        v70 = 0;
        v68 = 0u;
        v69 = 0u;
        buf = 0u;
        v67 = 0u;
        v63 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v3, v15);
        TypeID = CFDictionaryGetTypeID();
        if (ValueAtIndex && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID))
        {
          v18 = CFGetTypeID(ValueAtIndex);
          if (v18 == CFDictionaryGetTypeID())
          {
            DWORD2(buf) |= 0x40u;
            if (_LSGetBooleanFromDict(ValueAtIndex, @"LSIsAppleDefaultForScheme"))
            {
              DWORD2(buf) |= 1u;
            }

            if (*(v5 + 164))
            {
              DWORD2(buf) |= 4u;
            }

            WORD6(buf) = _LSGetHandlerRankFromDictKey(ValueAtIndex, v19);
            v20 = _LSGetRoleFromDictKey(ValueAtIndex, v60);
            v21 = v20 ? v20 : 2;
            HIWORD(buf) = v21;
            v22 = *(v5 + 168);
            if (v22 == 2 || v22 == 14 || v21 == 1)
            {
              Value = CFDictionaryGetValue(ValueAtIndex, @"CFBundleRequiredCapabilities");
              v24 = CFArrayGetTypeID();
              if (!Value || v24 && CFGetTypeID(Value) != v24)
              {
                Value = CFDictionaryGetValue(ValueAtIndex, @"SBRequiredCapabilities");
                v25 = CFArrayGetTypeID();
                if (!Value || v25 && CFGetTypeID(Value) != v25)
                {
                  goto LABEL_32;
                }
              }

              v26 = CFGetTypeID(Value);
              if (v26 != CFArrayGetTypeID())
              {
                goto LABEL_32;
              }

              DWORD2(v67) = _LSDatabaseCreateStringArray(v8, Value, 0, 0);
              if (DWORD2(v67))
              {
                v14 = 0;
LABEL_32:
                v27 = CFStringGetTypeID();
                v28 = CFDictionaryGetValue(ValueAtIndex, key);
                v29 = v28;
                if (v28 && CFGetTypeID(v28) == v27)
                {
                  v30 = v29;
                  DWORD1(v67) = LaunchServices::LocalizedString::Add(v8, MEMORY[0x1E695E0F8], v30);
                }

                if (!_LSGetBooleanFromDict(ValueAtIndex, @"CFBundleTypeIconSystemGenerated"))
                {
                  v31 = CFDictionaryGetValue(ValueAtIndex, @"_LSIconPath");
                  v32 = CFStringGetTypeID();
                  if (v31 && (!v32 || CFGetTypeID(v31) == v32))
                  {
                    v33 = CFStringGetTypeID();
                    if (v33 == CFGetTypeID(v31))
                    {
                      DWORD2(buf) |= 0x1000u;
                      goto LABEL_48;
                    }
                  }

                  if (v55)
                  {
                    v31 = CFDictionaryGetValue(ValueAtIndex, v55);
                    v34 = CFStringGetTypeID();
                    if (!v31 || !v34 || CFGetTypeID(v31) == v34)
                    {
LABEL_48:
                      HIDWORD(v67) = _LSDatabaseCreateStringForCFString(v8, v31, 0);
                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    CFStringGetTypeID();
                  }

                  v31 = 0;
                  goto LABEL_48;
                }

LABEL_49:
                v35 = CFDictionaryGetValue(ValueAtIndex, @"_LSBundleLibraryDelegate");
                v36 = CFStringGetTypeID();
                if (v35 && v36 && CFGetTypeID(v35) != v36)
                {
                  v35 = 0;
                }

                LODWORD(v70) = _LSDatabaseCreateStringForCFString(v8, v35, 0);
                if (!v70)
                {
                  goto LABEL_65;
                }

                if (v57)
                {
                  v37 = CFDictionaryGetValue(ValueAtIndex, v57);
                  v38 = CFStringGetTypeID();
                  if (v37 && (!v38 || CFGetTypeID(v37) == v38))
                  {
                    v39 = DWORD2(buf);
                    Length = CFStringGetLength(v37);
                    if (Length > CFStringGetLength(@"com.apple."))
                    {
                      v72.length = CFStringGetLength(@"com.apple.");
                      v72.location = 0;
                      if (CFStringCompareWithOptions(v37, @"com.apple.", v72, 1uLL) == kCFCompareEqualTo)
                      {
                        v41 = v39 | 4;
                        goto LABEL_64;
                      }
                    }

LABEL_63:
                    v41 = v39 & 0xFFFFFFFB;
LABEL_64:
                    DWORD2(buf) = v41;
LABEL_65:
                    LODWORD(v67) = v61;
                    HIDWORD(v70) = 0;
                    if (!_LSGetBooleanFromDict(ValueAtIndex, @"CFBundleURLIsPrivate") || (v42 = BYTE8(buf), DWORD2(buf) |= 0x80u, (v42 & 4) != 0))
                    {
                      if (_LSGetBooleanFromDict(ValueAtIndex, @"CFBundleURLAlwaysAvailable"))
                      {
                        DWORD2(buf) |= 0x100u;
                      }

                      if (v58)
                      {
                        v43 = CFDictionaryGetValue(ValueAtIndex, v58);
                        v44 = CFArrayGetTypeID();
                        if (v43 && (!v44 || CFGetTypeID(v43) == v44))
                        {
                          v45 = CFArrayGetCount(v43);
                          if (v45 >= 1)
                          {
                            for (i = 0; i != v45; ++i)
                            {
                              v47 = CFArrayGetValueAtIndex(v43, i);
                              v48 = CFStringGetTypeID();
                              if (v47 && (!v48 || CFGetTypeID(v47) == v48))
                              {
                                StringForCFString = _LSDatabaseCreateStringForCFString(v8, v47, 1);
                                if (StringForCFString)
                                {
                                  v50 = v8;
                                  v51 = [(_LSDatabase *)v8 schema];
                                  if (!_LSBindingListBufferAppend(v8, v65, *(v51 + 736), StringForCFString))
                                  {
                                    goto LABEL_90;
                                  }

                                  v52 = v8;
                                  [(_LSDatabase *)v8 store];
                                  _CSStringRelease();
                                }
                              }
                            }
                          }
                        }
                      }

                      else
                      {
                        CFArrayGetTypeID();
                      }

                      v14 = _LSBindingListCreate(v8, v65, &v63);
                      if (!v14)
                      {
                        HIDWORD(v70) = v63;
                        v14 = _LSClaimAdd(v8, &buf, &v64);
                        if (!v14)
                        {
                          v53 = v8;
                          [(_LSDatabase *)v8 store];
                          _CSArrayAppendValue();
                          if (!v63 || _LSBundleDataIsInUnsupportedLocation(v8, v5) || _LSBundleDataGetUnsupportedFormatFlag())
                          {
                            v14 = 0;
                          }

                          else
                          {
                            v14 = _LSBindingListActivate(v8);
                          }
                        }
                      }
                    }

                    goto LABEL_90;
                  }
                }

                else
                {
                  CFStringGetTypeID();
                }

                v39 = DWORD2(buf);
                goto LABEL_63;
              }

              v14 = 4294957803;
            }
          }
        }

LABEL_90:
        _LSBindingListBufferReset(v8, v65);
        if (++v15 == v62)
        {
          goto LABEL_100;
        }
      }
    }

    goto LABEL_99;
  }

  v14 = 4294956479;
LABEL_100:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_98:

  return v14;
}

uint64_t _LSRegisterExtensionPoint(void *a1, uint64_t a2, __CFString *a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  v125 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v13 = [__LSDefaultsGetSharedInstance(v11 v12)];
  if (!v13)
  {
    if (![__LSDefaultsGetSharedInstance(v13 v14)])
    {
      v15 = 0;
      goto LABEL_100;
    }

    v79 = v11;
    v102 = 0;
    v16 = _LSRegistrationLog(v79);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138413058;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = a4;
      *&buf[18] = 2112;
      *&buf[20] = a6;
      *&buf[28] = 2112;
      *&buf[30] = a5;
      _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_INFO, "Registering extension point: %@ platform: %u declaring framework: %@ SDK: %@", buf, 0x26u);
    }

    v80 = v79;
    if (!v79)
    {
      v15 = _LSContextInit(&v102);
      v80 = v102;
      if (v15)
      {
LABEL_99:

        goto LABEL_100;
      }
    }

    v123 = kLSVersionNumberNull;
    v124 = unk_1817E90C0;
    v100 = 0;
    v101 = 0;
    v121 = 0u;
    v122 = 0u;
    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"NSExtension");
      TypeID = CFDictionaryGetTypeID();
      if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
      {
        v19 = CFDictionaryGetValue(Value, @"NSExtensionAttributes");
        v20 = CFDictionaryGetTypeID();
        if (!v19 || !v20 || CFGetTypeID(v19) == v20)
        {
LABEL_20:
          v21 = objc_opt_class();
          v22 = [(__CFDictionary *)a5 objectForKey:@"EXExtensionPointIsPublic"];
          v23 = v22;
          if (v21 && v22 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v23 = 0;
          }

          v77 = [v23 BOOLValue];

          v24 = objc_opt_class();
          v25 = [(__CFDictionary *)a5 objectForKey:@"EXRequiresLegacyInfrastructure"];
          v26 = v25;
          if (v24 && v25 && (objc_opt_isKindOfClass() & 1) == 0)
          {

            v26 = 0;
          }

          v27 = [v26 BOOLValue];

          if (v27)
          {
            v76 = 1;
          }

          else
          {
            v28 = objc_opt_class();
            v29 = [(__CFDictionary *)a5 objectForKey:@"EXTCCPolicy"];
            v30 = v29;
            if (v28 && v29 && (objc_opt_isKindOfClass() & 1) == 0)
            {

              v30 = 0;
            }

            if ([v30 isEqualToString:@"prompt-container-personality"])
            {
              v31 = 1;
            }

            else if ([v30 isEqualToString:@"prompt-host-personality"])
            {
              v31 = 2;
            }

            else
            {
              v31 = 0;
            }

            v76 = v31;
          }

          if (v19 && (v32 = CFDictionaryGetValue(v19, @"NSExtensionPointVersion"), v33 = CFStringGetTypeID(), v32) && (!v33 || CFGetTypeID(v32) == v33))
          {
            _LSGetVersionFromString(v32, buf);
            v74 = 0;
          }

          else
          {
            v32 = 0;
            memset(buf, 0, 32);
            v74 = 1;
          }

          v123 = *buf;
          v124 = *&buf[16];
          v34 = _LSExtensionPointFindWithIdentifier(v80, a3, a4, a2, &v101, &v100);
          if (!v34 && v101)
          {
            v35 = *(v100 + 24);
            *buf = *(v100 + 8);
            *&buf[16] = v35;
            v103 = v123;
            v104 = v124;
            if (_LSVersionNumberCompare(buf, &v103))
            {
              v36 = *(v100 + 24);
              *buf = *(v100 + 8);
              *&buf[16] = v36;
              v103 = v123;
              v104 = v124;
              v37 = _LSVersionNumberCompare(buf, &v103);
              if (v37 != -1)
              {
                log = _LSRegistrationLog(v37);
                if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
                {
                  v38 = *(v100 + 24);
                  v103 = *(v100 + 8);
                  v104 = v38;
                  v39 = _LSVersionNumberGetStringRepresentation(&v103);
                  *buf = 138412802;
                  *&buf[4] = a3;
                  *&buf[12] = 2112;
                  *&buf[14] = v32;
                  *&buf[22] = 2112;
                  *&buf[24] = v39;
                  _os_log_impl(&dword_18162D000, log, OS_LOG_TYPE_ERROR, "Not registering extension point %@, it has a lower version (%@) than existing registered extension point with that identifer (%@)", buf, 0x20u);
                }

                v15 = 0;
                goto LABEL_97;
              }
            }

            _LSExtensionPointRemove(v80, v101);
          }

          if (!v19 || (v40 = CFDictionaryGetValue(v19, @"NSExtensionPointName"), v34 = CFStringGetTypeID(), !v40) || (v41 = v34) != 0 && (v34 = CFGetTypeID(v40), v34 != v41))
          {
            v42 = _LSRegistrationLog(v34);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              *&buf[4] = a3;
              _os_log_impl(&dword_18162D000, v42, OS_LOG_TYPE_ERROR, "ExtensionPoint %@ does not specify NSExtensionPointName", buf, 0xCu);
            }

            v40 = a3;
          }

          v43 = CFEqual(v40, a3);
          if (!v43)
          {
            v44 = _LSRegistrationLog(v43);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              *&buf[4] = a3;
              *&buf[12] = 2112;
              *&buf[14] = v40;
            }
          }

          v45 = _LSBundleGet(v79, a2);
          if (v45)
          {
            v46 = [_LSLazyPropertyList lazyPropertyListWithDatabase:v79 unit:*(v45 + 140)];
            v47 = [v46 objectForKey:@"com.apple.private.coreservices.definesExtensionPoint" ofClass:objc_opt_class()];
            v48 = v47 == 0;

            if (v48 || ([(__CFString *)a3 hasPrefix:@"com.apple."]& 1) == 0)
            {

              v77 = 2;
            }

            else
            {
            }
          }

          log = a5;
          StringForCFString = _LSDatabaseCreateStringForCFString(v80, a3, 0);
          v50 = _LSDatabaseCreateStringForCFString(v80, v40, 0);
          if (v74)
          {
            memset(buf, 0, 32);
          }

          else
          {
            _LSGetVersionFromString(v32, buf);
          }

          v121 = *buf;
          v122 = *&buf[16];
          v75 = _LSPlistAdd(v80, log);
          v73 = [log objectForKey:@"EXDiscoverFromHiddenApps"];
          v51 = [v73 BOOLValue];
          if (a6)
          {
            v99 = 0;
            LODWORD(a6) = _LSAliasAddURL(v80, a6, &v99);
            v52 = v99;
            v53 = v52;
            if (v52)
            {
              v54 = _LSRegistrationLog(v52);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                *&buf[4] = a3;
                *&buf[12] = 2112;
                *&buf[14] = v53;
                _os_log_impl(&dword_18162D000, v54, OS_LOG_TYPE_ERROR, "couldn't set declaring framework of extension point %@: %@", buf, 0x16u);
              }
            }
          }

          *&buf[8] = v121;
          v55 = v51;
          *buf = 0;
          *&buf[4] = StringForCFString;
          *&buf[24] = v122;
          v106 = __PAIR64__(a4, v50);
          v107 = __PAIR64__(a6, v75);
          v108 = a2;
          v109 = v77;
          LODWORD(v110) = v76;
          *(&v110 + 4) = v51;
          HIDWORD(v101) = _LSExtensionPointAdd(v80, buf);
          if (!HIDWORD(v101))
          {
            v15 = 4294956477;
LABEL_96:

LABEL_97:
            if (!v79)
            {
              _LSContextDestroy(&v102);
            }

            goto LABEL_99;
          }

          v56 = _LSBundleGet(v80, a2);
          if (v56)
          {
            if (*(v56 + 488))
            {
              v57 = v80;
              [(_LSDatabase *)v80 store];
              _CSArrayAppendValue();
            }

            else
            {
              v70 = v80;
              [(_LSDatabase *)v80 store];
              LODWORD(v103) = _CSArrayCreate();
              if (v103)
              {
                *buf = 0;
                v71 = v80;
                [(_LSDatabase *)v80 store];
                v72 = v80;
                [(_LSDatabase *)v80 schema];
                if (_CSStoreWriteToUnit())
                {
                  v15 = 0;
                }

                else
                {
                  v15 = _LSGetOSStatusFromNSError(*buf);
                }

                goto LABEL_88;
              }
            }
          }

          else
          {
            v58 = _LSRegistrationLog(0);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              *&buf[4] = a2;
              *&buf[12] = 2112;
              *&buf[14] = a3;
              _os_log_impl(&dword_18162D000, v58, OS_LOG_TYPE_ERROR, "Failed to fetch app bundle unit: %llu for extension point: %@", buf, 0x16u);
            }
          }

          v15 = 0;
LABEL_88:
          v93 = 0;
          v94 = &v93;
          v95 = 0x3032000000;
          v96 = __Block_byref_object_copy__47;
          v97 = __Block_byref_object_dispose__47;
          v98 = [MEMORY[0x1E695DFA8] set];
          v87 = 0;
          v88 = &v87;
          v89 = 0x3032000000;
          v90 = __Block_byref_object_copy__47;
          v91 = __Block_byref_object_dispose__47;
          v92 = [MEMORY[0x1E695DF90] dictionary];
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke;
          *&buf[24] = &unk_1E6A1DE30;
          v108 = 0;
          v109 = StringForCFString;
          v110 = v121;
          v111 = v122;
          v112 = v50;
          v113 = a4;
          v114 = v75;
          v115 = a6;
          v116 = a2;
          v117 = v77;
          v119 = v55;
          v118 = v76;
          v120 = v50;
          v106 = &v87;
          v107 = &v93;
          v59 = v80;
          *&buf[32] = v59;
          v60 = MEMORY[0x1865D71B0](buf);
          v61 = v59;
          [(_LSDatabase *)v59 store];
          v62 = v59;
          [(_LSDatabase *)v59 schema];
          _CSStoreEnumerateUnits();
          v63 = v88[5];
          v85[0] = MEMORY[0x1E69E9820];
          v85[1] = 3221225472;
          v85[2] = ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke_2;
          v85[3] = &unk_1E6A1DE58;
          v64 = v59;
          v86 = v64;
          [v63 enumerateKeysAndObjectsUsingBlock:v85];
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v65 = v94[5];
          v66 = [v65 countByEnumeratingWithState:&v81 objects:&v103 count:16];
          if (v66)
          {
            v67 = *v82;
            do
            {
              for (i = 0; i != v66; ++i)
              {
                if (*v82 != v67)
                {
                  objc_enumerationMutation(v65);
                }

                _LSBindableActivate(v64, [*(*(&v81 + 1) + 8 * i) intValue], 0xAu, v50, _LSPluginComparePriority_BindableComparitor, 0);
              }

              v66 = [v65 countByEnumeratingWithState:&v81 objects:&v103 count:16];
            }

            while (v66);
          }

          _Block_object_dispose(&v87, 8);
          _Block_object_dispose(&v93, 8);

          goto LABEL_96;
        }
      }
    }

    else
    {
      CFDictionaryGetTypeID();
    }

    v19 = 0;
    goto LABEL_20;
  }

  v15 = _LSRegisterExtensionPointClient(a3, a4, a5, a6);
LABEL_100:

  return v15;
}

uint64_t _LSRegisterFrameworkExtensionPointIfNecessary(void *a1, int a2, __CFString *a3, uint64_t a4, const __CFDictionary *a5, void *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a1;
  v12 = v11;
  if (!a2 && a6)
  {
    v24 = 0;
    v23 = 0;
    if (_LSExtensionPointFindWithIdentifier(v11, a3, a4, 0, &v24, &v23) || !v23 || !*(v23 + 52))
    {
      goto LABEL_25;
    }

    if (a5)
    {
      Value = CFDictionaryGetValue(a5, @"NSExtension");
      TypeID = CFDictionaryGetTypeID();
      if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
      {
        v15 = CFDictionaryGetValue(Value, @"NSExtensionAttributes");
        v16 = CFDictionaryGetTypeID();
        if (v15)
        {
          if (!v16 || CFGetTypeID(v15) == v16)
          {
            v17 = CFDictionaryGetValue(v15, @"NSExtensionPointVersion");
            v18 = CFStringGetTypeID();
            if (v17)
            {
              if (!v18 || CFGetTypeID(v17) == v18)
              {
                v25 = 0u;
                v26 = 0u;
                _LSGetVersionFromString(v17, &v25);
LABEL_22:
                v21 = *(v23 + 24);
                *buf = *(v23 + 8);
                v29 = v21;
                v27[0] = v25;
                v27[1] = v26;
                if (!_LSVersionNumberCompare(buf, v27) && v24)
                {
                  v20 = 0;
                  goto LABEL_26;
                }

LABEL_25:
                v20 = _LSRegisterExtensionPoint(v12, 0, a3, a4, a5, a6);
                goto LABEL_26;
              }
            }
          }
        }
      }
    }

    else
    {
      CFDictionaryGetTypeID();
    }

    v25 = kLSVersionNumberNull;
    v26 = unk_1817E90C0;
    goto LABEL_22;
  }

  v19 = _LSRegistrationLog(v11);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v19, OS_LOG_TYPE_ERROR, "No declaringFrameworkURL or parentBundleUnit != nullID, so returning kLSApplicationNotFoundErr", buf, 2u);
  }

  v20 = 4294956482;
LABEL_26:

  return v20;
}

uint64_t _LSUnregisterExtensionPoint(void *a1, const __CFString *a2, uint64_t a3, uint64_t a4, __CFString *a5)
{
  v23 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v11 = [__LSDefaultsGetSharedInstance(v9 v10)];
  if (v11)
  {
    v13 = _LSUnregisterExtensionPointClient(a2, a3, a5, a4);
  }

  else if ([__LSDefaultsGetSharedInstance(v11 v12)])
  {
    v14 = v9;
    v20 = 0;
    v15 = v14;
    if (v14 || (v13 = _LSContextInit(&v20), v15 = v20, !v13))
    {
      v19 = 0;
      v18 = 0;
      v13 = _LSExtensionPointFindWithIdentifier(v15, a2, a3, a4, &v19, &v18);
      if (!v13)
      {
        if (!a5 || (v16 = *(v18 + 24), v22[0] = *(v18 + 8), v22[1] = v16, _LSGetVersionFromString(a5, v21), !_LSVersionNumberCompare(v22, v21)))
        {
          _LSExtensionPointRemove(v15, v19);
        }
      }

      if (!v14)
      {
        _LSContextDestroy(&v20);
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t _LSRegisterPlugins(void *a1, int a2, unsigned int a3, const __CFDictionary *a4, const __CFDictionary *a5, int a6)
{
  v13 = a1;
  if (a4 && (Count = CFDictionaryGetCount(a4), Count >= 1))
  {
    v9 = CFGetTypeID(a4);
    if (v9 == CFDictionaryGetTypeID())
    {
      if (!a5 || (v10 = CFGetTypeID(a5), v10 == CFDictionaryGetTypeID()))
      {
        CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (a5)
        {
          CFDictionaryGetCount(a5);
        }

        memset(keys, 0, sizeof(keys));
        std::vector<void const*>::__vallocate[abi:nn200100](keys, Count);
      }
    }

    v11 = 4294956479;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void sub_18177E934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, void *a44)
{
  LSPluginInfo::~LSPluginInfo(&STACK[0x280]);

  if (__p)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

uint64_t _LSCopyPluginsWithURL(uint64_t *a1, const __CFURL *a2, char a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v5 = objc_autoreleasePoolPush();
  if (a2)
  {
    v6 = CFURLCopyFileSystemPath(a2, kCFURLPOSIXPathStyle);
    [(_LSDatabase *)*a1 store];
    [(_LSDatabase *)*a1 schema];
    v9 = v6;
    _CSStoreEnumerateUnits();
  }

  objc_autoreleasePoolPop(v5);
  v7 = v11[3];
  _Block_object_dispose(&v10, 8);
  return v7;
}

void sub_18177EB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSServerBundleRegistration(LSContext *a1, void *a2, void *a3, void *a4, const __CFDictionary *a5, unsigned int *a6, uint64_t a7, char *a8, unsigned __int8 *a9)
{
  v88 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v75 = 0;
  v74 = 0;
  v73 = 0;
  v15 = [LSRecordBuilder recordBuilderForType:0];
  v16 = 0;
  v17 = 4294956479;
  if (!a1 || !v13)
  {
    goto LABEL_81;
  }

  v18 = v13[3];
  if (v18 == 203)
  {
    if (!v14)
    {
      v16 = 0;
      goto LABEL_81;
    }
  }

  else
  {
    v16 = 0;
    if (!v14 || v18 != 205)
    {
      goto LABEL_81;
    }
  }

  v19 = a1->db;
  v16 = v19;
  if (!v19)
  {
    goto LABEL_81;
  }

  v20 = [(_LSDatabase *)v19 store];
  if (!a4)
  {
    goto LABEL_81;
  }

  if (!v20)
  {
    goto LABEL_81;
  }

  TypeID = CFDictionaryGetTypeID();
  if (TypeID != CFGetTypeID(a4))
  {
    goto LABEL_81;
  }

  [v15 setRegistrationInfo:v13 alias:v14];
  [v15 setDatabase:v16];
  if (a5)
  {
    v22 = _LSGetBooleanFromDict(a5, @"IsPlaceholder");
    Value = CFDictionaryGetValue(a5, @"ApplicationType");
    v24 = CFStringGetTypeID();
    v25 = !Value || v24 && CFGetTypeID(Value) != v24 || CFStringCompare(Value, @"SystemAppPlaceholder", 1uLL) != kCFCompareEqualTo;
    v67 = v25;
    v66 = _LSGetBooleanFromDict(a5, @"LSAppDowngrade");
    v26 = v22 == 0;
  }

  else
  {
    v26 = 1;
    v66 = 0;
    v67 = 1;
  }

  v69 = v26;
  [(_LSDatabase *)v16 store];
  [(_LSDatabase *)v16 schema];
  if (CSStoreGetUnit())
  {
    v74 = v13[7];
    v27 = _LSBundleGet(v16, v74);
    v28 = v27;
  }

  else
  {
    v64 = v13[6];
    v29 = v16;
    v76 = 0;
    v77 = &v76;
    v78 = 0x2020000000;
    v79 = 0;
    v65 = v14;
    v30 = [FSNode nameForBookmarkData:"nameForBookmarkData:error:" error:?];
    if (v30)
    {
      StringForCFString = _LSDatabaseGetStringForCFString(v29, v30, 1);

      if (StringForCFString)
      {
        v32 = v29;
        [(_LSDatabase *)v29 store];
        v33 = v29;
        [(_LSDatabase *)v29 schema];
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&v81 = ___ZL61_LSFindExistingRegisteredBundleWithContainerMatchingAliasDataP11_LSDatabasejP6NSDataPj_block_invoke;
        *(&v81 + 1) = &unk_1E6A1DE80;
        v86 = StringForCFString;
        v87 = v64;
        v82 = v29;
        v34 = v65;
        v85 = &v74;
        v83 = v34;
        v84 = &v76;
        _CSStoreEnumerateUnits();
      }
    }

    v28 = v77[3];
    _Block_object_dispose(&v76, 8);
  }

  v75 = v28;
  if (v28)
  {
    if (v69 && ((v27 = _LSGetBooleanFromDict(a4, @"_LSInfoPlistIsMissing"), v27) || (v27 = _LSGetBooleanFromDict(a4, @"_LSNoExecutableInfo"), v27)) && (*(v75 + 172) & 0x20000000000200) == 0)
    {
      v57 = _LSInstallLog(v27);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v57, OS_LOG_TYPE_DEFAULT, "skipping registration of an incomplete bundle", buf, 2u);
      }

      v35 = 1;
    }

    else
    {
      v35 = 0;
    }

    if ((*(v75 + 172) & 0x80) == 0 && (v13[4] & 2) == 0)
    {
      v36 = _LSInstallLog(v27);
      _LSServerBundleRegistration_cold_1(v36);
      v17 = 4294956621;
      goto LABEL_81;
    }

    if (_LSBundleDataIsIncomplete(a1->db, v75))
    {
      v37 = *(v75 + 513);
      if (v37 < 0x3C)
      {
        LOBYTE(v37) = v37 + 1;
      }

      [v15 setRetries:v37];
    }

    if (v35)
    {
      if (v75)
      {
        v38 = 0;
LABEL_74:
        if (a6)
        {
          *a6 = v74;
        }

        if (a8)
        {
          if (!v74)
          {
            v38 = 0;
          }

          *a8 = v38;
        }

        _LSDatabaseSetSequenceNumber();
        v17 = 0;
        goto LABEL_81;
      }
    }

    else
    {
      [v15 setPreviousInstallType:*(v75 + 336)];
      v17 = _LSBundleRemove(v16, v74, 0);
      if (v17)
      {
        goto LABEL_81;
      }

      v75 = 0;
      v74 = 0;
    }
  }

  v39 = v16;
  [(_LSDatabase *)v16 store];
  v40 = v16;
  [(_LSDatabase *)v16 schema];
  if (!CSStoreGetUnit())
  {
    v17 = 4294957797;
    goto LABEL_81;
  }

  if (!*MEMORY[0x1E695E4F0])
  {
    v42 = CFStringGetTypeID();
LABEL_51:
    v41 = 0;
    goto LABEL_52;
  }

  v41 = CFDictionaryGetValue(a4, *MEMORY[0x1E695E4F0]);
  v42 = CFStringGetTypeID();
  if (v41)
  {
    v44 = v42;
    if (v42)
    {
      v42 = CFGetTypeID(v41);
      if (v42 != v44)
      {
        goto LABEL_51;
      }
    }
  }

LABEL_52:
  _LSLogStepStart(v42, 0, v41, v43);
  if (!v41)
  {
    goto LABEL_64;
  }

  v45 = CFGetTypeID(v41);
  v46 = CFStringGetTypeID();
  if (v45 != v46)
  {
    goto LABEL_64;
  }

  v74 = 0;
  v72 = 0;
  v76 = 0;
  if (!v67 || (*buf = kLSVersionNumberNull, v81 = unk_1817E90C0, v68 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, v41, 0, buf, 2, 128, 0, 0, &v74, &v75, 0), *buf = kLSVersionNumberNull, v81 = unk_1817E90C0, v46 = _LSBundleFindWithInfoAndNo_IOFilter(a1, 0, v41, 0, buf, 2, 1152, 0, 0, &v72, &v76, 0), ((v68 | v46) & 1) == 0))
  {
    v49 = _LSInstallLog(v46);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v41;
      _os_log_impl(&dword_18162D000, v49, OS_LOG_TYPE_DEFAULT, "No bundles to remove for %@", buf, 0xCu);
    }

    goto LABEL_64;
  }

  if (!v46)
  {
    v17 = 0;
    v76 = 0;
    v72 = 0;
    if (!v68)
    {
      v75 = 0;
      v74 = 0;
      goto LABEL_64;
    }

    goto LABEL_86;
  }

  v47 = _LSBundleGet(v16, v72);
  [v15 setPreviousInstallType:*(v47 + 336)];
  [v15 addBundleFlag:*(v47 + 172) & 0x80000];
  v17 = _LSBundleRemove(v16, v72, 0);
  v48 = _LSInstallLog(v17);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v41;
    _os_log_impl(&dword_18162D000, v48, OS_LOG_TYPE_DEFAULT, "Removed existing registered placeholder for %@", buf, 0xCu);
  }

  v76 = 0;
  v72 = 0;
  if (v68)
  {
LABEL_86:
    if (v66)
    {
      v58 = 1;
    }

    else
    {
      v58 = v69;
    }

    if (v58)
    {
      [v15 setPreviousInstallType:{*(_LSBundleGet(v16, v74) + 336)}];
      v17 = _LSBundleRemove(v16, v74, v66);
      v59 = _LSInstallLog(v17);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v41;
        _os_log_impl(&dword_18162D000, v59, OS_LOG_TYPE_DEFAULT, "Removed existing registered bundle for %@", buf, 0xCu);
      }
    }

    else
    {
      [v15 addBundleFlag:0x80000];
      *buf = *(v75 + 172) | 0x400000000000;
      v60 = v16;
      [(_LSDatabase *)v16 store];
      v61 = v16;
      [(_LSDatabase *)v16 schema];
      _CSStoreWriteToUnit();
      if ([a4 _LS_BoolForKey:@"LSRequiresPostProcessing"])
      {
        v62 = v16;
        [(_LSDatabase *)v16 store];
        v63 = v16;
        [(_LSDatabase *)v16 schema];
        _CSStoreWriteToUnit();
      }
    }
  }

  v75 = 0;
  v74 = 0;
  if (v17 && v17 != -10814)
  {
    goto LABEL_81;
  }

LABEL_64:
  v50 = _LSDatabaseGetSequenceNumber(v16) + 1;
  v73 = v50;
  [v15 setSequenceNumber:v50];
  if ([v15 parseInfoPlist:a4] && (objc_msgSend(v15, "parseInstallationInfo:", a5) & 1) != 0)
  {
    v17 = 0;
    v51 = 1;
  }

  else
  {
    v51 = 0;
    v17 = 4294967246;
  }

  [v15 parseActivityTypesFromDictionary:a4];
  [v15 parseNSExtensionSDKDefinitionsFromDictionary:a4];
  _LSLogStepFinished(5, v51, v41, &cfstr_BuiltBundleRec.isa);
  v74 = [v15 registerBundleRecord:v16 error:0];
  v52 = [v15 registerChildItemsTrusted];
  if (a9)
  {
    *a9 = v52;
  }

  if (v51)
  {
    if (v50 < v74)
    {
      v73 = v74;
      v53 = v16;
      [(_LSDatabase *)v16 store];
      v54 = v16;
      [(_LSDatabase *)v16 schema];
      _CSStoreWriteToUnit();
    }

    v55 = v16;
    [(_LSDatabase *)v16 store];
    _CSStoreGarbageCollect();
    v38 = 1;
    goto LABEL_74;
  }

LABEL_81:

  return v17;
}

void _LSLogStepStart(uint64_t a1, uint64_t a2, NSString *a3, NSString *a4, ...)
{
  va_start(va, a4);
  _LSLogStep(5, 1, 1, a3, @"Building bundle record for app", va);
}

{
  va_start(va, a4);
  _LSLogStep(1, 0, a3, @"_LSServerRegisterItemInfo begin", va);
}

{
  va_start(va, a4);
  _LSLogStep(a1, 1, 1, a3, a4, va);
}

void _LSLogStepFinished(uint64_t a1, uint64_t a2, NSString *a3, NSString *a4, ...)
{
  va_start(va, a4);
  _LSLogStep(a1, 2, a2, a3, a4, va);
}

{
  va_start(va, a4);
  _LSLogStep(2, a2, a3, @"_LSServerRegisterItemInfo result = %@", va);
}

{
  va_start(va, a4);
  _LSLogStep(a1, 2, a2, a3, a4, va);
}

uint64_t _LSSliceMaskForSliceArray(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v1 = a1;
  v2 = 0;
  v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = *v14;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v14 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v13 + 1) + 8 * i);
        v7 = [v6 type];
        if (v7 <= 16777222)
        {
          switch(v7)
          {
            case 7:
              v2 |= 4u;
              break;
            case 12:
              v11 = [v6 subtype] & 0xFFFFFF;
              if (v11 <= 0xA)
              {
                switch(v11)
                {
                  case 6:
                    v2 |= 0x20u;
                    break;
                  case 9:
                    v2 |= 0x40u;
                    break;
                  case 10:
                    v2 |= 0x200u;
                    break;
                }
              }

              else if (v11 > 14)
              {
                if (v11 == 15)
                {
                  v2 |= 0x1000u;
                }

                else if (v11 == 16)
                {
                  v2 |= 0x2000u;
                }
              }

              else if (v11 == 11)
              {
                v2 |= 0x400u;
              }

              else if (v11 == 12)
              {
                v2 |= 0x800u;
              }

              break;
            case 18:
              v2 |= 1u;
              break;
          }
        }

        else if (v7 > 16777233)
        {
          if (v7 == 16777234)
          {
            v2 |= 2u;
          }

          else if (v7 == 33554444)
          {
            v9 = [v6 subtype] & 0xFFFFFF;
            if (v9 == 1)
            {
              v2 |= 0xFFFF8000;
            }

            else if (!v9)
            {
              v2 |= 0x4000u;
            }
          }
        }

        else if (v7 == 16777223)
        {
          v10 = [v6 subtype] & 0xFFFFFF;
          if (v10 == 3)
          {
            v2 |= 8u;
          }

          else if (v10 == 8)
          {
            v2 |= 0x10u;
          }
        }

        else if (v7 == 16777228)
        {
          v8 = [v6 subtype] & 0xFFFFFF;
          if (v8 == 2)
          {
            v2 |= 0x100u;
          }

          else if (!v8)
          {
            v2 |= 0x80u;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v3);
  }

  return v2;
}

void _LSGetMinimumOSVersionStringAndReferencePlatformForPlatformSDKLinkage(void *a1, uint64_t a2, _OWORD *a3, id *a4, _DWORD *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v8 = a1;
  v9 = a3[1];
  v20[0] = *a3;
  v20[1] = v9;
  _LSMakeVersionNumber(14, 5, 0, v19);
  if (_LSVersionNumberCompare(v20, v19) == -1)
  {
    v14 = objc_opt_class();
    v15 = [v8 objectForKey:@"LSMinimumSystemVersion"];
    v13 = v15;
    if (v14 && v15)
    {
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_17;
      }
    }

    else if (v15)
    {
      goto LABEL_17;
    }

    v16 = objc_opt_class();
    v17 = [v8 objectForKey:@"MinimumOSVersion"];
    v13 = v17;
    if (v16 && v17 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }
  }

  else
  {
    v10 = objc_opt_class();
    v11 = [v8 objectForKey:@"MinimumOSVersion"];
    v12 = v11;
    if (v10 && v11 && (objc_opt_isKindOfClass() & 1) == 0)
    {

      v13 = 0;
    }

    else
    {
      v13 = v12;
    }
  }

LABEL_17:
  active_platform = dyld_get_active_platform();
  if (a4)
  {
    objc_storeStrong(a4, v13);
  }

  if (a5)
  {
    *a5 = active_platform;
  }
}

__CFDictionary *_LSCreateRegistrationData(LSContext *a1, void *a2, void *a3, FSNode *a4, const __CFArray **a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v9 = a2;
  if (a1 && [(_LSDatabase *)a1->db accessContext])
  {
    _CSStoreAccessContextAssertReading();
  }

  v10 = v9[3];
  if ((v10 - 203) < 2)
  {
    v11 = v9;
    v12 = v11;
    if (a3)
    {
      v13 = [[FSNode alloc] initWithURL:a3 flags:48 error:0];
      v14 = v13;
      if (v13)
      {
        if ([(FSNode *)v13 isDirectory])
        {
          cf = [(_LSBundleProvider *)v14 copyCFBundleWithError:0];
          if (cf)
          {
            v15 = [[_LSBundleProvider alloc] initWithURL:a3 useCacheIfPossible:1];
            theDict = _LSCreateRegistrationDataForDirectoryNode(a1, v12, v15, v14, a4, a5, v16);
            v17 = [(_LSBundleProvider *)v15 usingCachedItem];
            if (v17)
            {
              v18 = _LSRegistrationLog(v17);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138477827;
                v68 = a3;
                _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEBUG, "Validating item %{private}@, which used the cache for registration", buf, 0xCu);
              }

              v56 = [[_LSBundleProvider alloc] initWithURL:a3 useCacheIfPossible:0];
              v20 = _LSCreateRegistrationDataForDirectoryNode(a1, v12, v56, v14, a4, a5, v19);
              v66[0] = MEMORY[0x1E69E9820];
              v66[1] = 3221225472;
              v66[2] = ___ZL34_LSCreateRegistrationDataForBundleP9LSContextP18LSRegistrationInfoPK7__CFURLPK14__CFDictionaryPPK9__CFArray_block_invoke;
              v66[3] = &__block_descriptor_40_e13_B24__0_v8_v16l;
              v66[4] = theDict;
              v21 = CFDictionaryApplyBlock(v20, v66);
              if (v21)
              {
                v22 = _LSRegistrationLog(v21);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                {
                  *buf = 138739971;
                  v68 = a3;
                  _os_log_impl(&dword_18162D000, v22, OS_LOG_TYPE_INFO, "REGISTRATION: Successfully registered %{sensitive}@ using the boot cache", buf, 0xCu);
                }
              }

              if (v20)
              {
                CFRelease(v20);
              }
            }

            if (theDict)
            {
              v23 = *MEMORY[0x1E695E480];
              MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
              if (softLinkLNIsLinkEnabled)
              {
                v25 = softLinkLNIsLinkEnabled(cf);
                v26 = *MEMORY[0x1E695E4C0];
                if (v25)
                {
                  v27 = *MEMORY[0x1E695E4D0];
                }

                else
                {
                  v27 = *MEMORY[0x1E695E4C0];
                }
              }

              else
              {
                v26 = *MEMORY[0x1E695E4C0];
                v27 = *MEMORY[0x1E695E4C0];
              }

              CFDictionaryAddValue(MutableCopy, @"_LSIsLinkEnabled", v27);
              CFRelease(theDict);
              CFRelease(cf);
              if (MutableCopy)
              {
                if (CFDictionaryContainsKey(MutableCopy, @"bundlePersonas") || CFDictionaryContainsKey(MutableCopy, @"_LSUsesSystemPersona"))
                {
                  Copy = CFDictionaryCreateMutableCopy(v23, 0, MutableCopy);
                  CFDictionaryRemoveValue(Copy, @"bundlePersonas");
                  CFDictionaryRemoveValue(Copy, @"_LSUsesSystemPersona");
                  CFRelease(MutableCopy);
                  if (!Copy)
                  {
                    goto LABEL_36;
                  }
                }

                else
                {
                  Copy = MutableCopy;
                }

                v37 = *MEMORY[0x1E695E4F0];
                if (!CFDictionaryContainsKey(Copy, *MEMORY[0x1E695E4F0]) || v12->action != 203)
                {
                  goto LABEL_36;
                }

                if (v37)
                {
                  Value = CFDictionaryGetValue(Copy, v37);
                  TypeID = CFStringGetTypeID();
                  if (!Value || !TypeID || CFGetTypeID(Value) == TypeID)
                  {
                    goto LABEL_58;
                  }
                }

                else
                {
                  CFStringGetTypeID();
                }

                Value = 0;
LABEL_58:
                v40 = Value;
                v41 = CFSetGetTypeID();
                v42 = CFDictionaryGetValue(a4, @"LSPersonaUniqueStrings");
                v43 = v42;
                v57 = v26;
                if (v42 && CFGetTypeID(v42) == v41)
                {
                  v44 = v43;
                  v45 = [v44 allObjects];
                }

                else
                {
                  v46 = +[_LSPersonaDatabase sharedInstance];
                  v45 = [(_LSPersonaDatabase *)v46 personasWithAttributesForBundleIdentifier:v40];
                  v44 = v46;
                }

                v47 = [v45 count];
                if (v47)
                {
                  theDicta = v40;
                  v48 = _LSRegistrationLog(v47);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138543874;
                    v68 = v45;
                    v69 = 2114;
                    v70 = a3;
                    v71 = 2114;
                    v72 = v40;
                    _os_log_impl(&dword_18162D000, v48, OS_LOG_TYPE_INFO, "- Got personas %{public}@ for application at %{public}@/%{public}@", buf, 0x20u);
                  }

                  v64 = 0u;
                  v65 = 0u;
                  v62 = 0u;
                  v63 = 0u;
                  v49 = v45;
                  v50 = [v49 countByEnumeratingWithState:&v62 objects:buf count:16];
                  cfa = v45;
                  v51 = 0;
                  if (v50)
                  {
                    v52 = *v63;
                    do
                    {
                      for (i = 0; i != v50; ++i)
                      {
                        if (*v63 != v52)
                        {
                          objc_enumerationMutation(v49);
                        }

                        v51 |= [(_LSPersonaWithAttributes *)*(*(&v62 + 1) + 8 * i) personaType]== 3;
                      }

                      v50 = [v49 countByEnumeratingWithState:&v62 objects:buf count:16];
                    }

                    while (v50);
                  }

                  v45 = cfa;
                  v40 = theDicta;
                  v54 = CFDictionaryCreateMutableCopy(v23, 0, Copy);
                  CFDictionarySetValue(v54, @"bundlePersonas", v49);
                  if (v51)
                  {
                    v55 = *MEMORY[0x1E695E4D0];
                  }

                  else
                  {
                    v55 = v57;
                  }

                  CFDictionarySetValue(v54, @"_LSUsesSystemPersona", v55);
                  CFRelease(Copy);
                  Copy = CFDictionaryCreateCopy(v23, v54);
                  CFRelease(v54);
                }

                goto LABEL_36;
              }
            }

            else
            {
              CFRelease(cf);
            }
          }
        }
      }
    }

    else
    {
      v14 = _LSRegistrationLog(v11);
      if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, &v14->super, OS_LOG_TYPE_ERROR, "Unexpected nil bundle URL when registering.", buf, 2u);
      }
    }

    Copy = 0;
LABEL_36:

    goto LABEL_40;
  }

  if (v10 == 205)
  {
    v28 = v9;
    if (a4)
    {
      v29 = *MEMORY[0x1E695E4F0];
      if (*MEMORY[0x1E695E4F0])
      {
        v30 = CFDictionaryGetValue(a4, *MEMORY[0x1E695E4F0]);
        v31 = CFStringGetTypeID();
        if (v30 && (!v31 || CFGetTypeID(v30) == v31))
        {
          v32 = _LSPathForBundleLibraryIdentifier(v30);
          v33 = *MEMORY[0x1E695E480];
          Copy = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CFDictionarySetValue(Copy, v29, v30);
          v35 = CFURLCreateFromFileSystemRepresentation(v33, v32[1], *v32, 1u);
          _LSAddBundleLibraryInfo(a1, v35, 0, v28, Copy, 1, 0);
          if (v35)
          {
            CFRelease(v35);
          }

          goto LABEL_39;
        }
      }

      else
      {
        CFStringGetTypeID();
      }
    }

    Copy = 0;
LABEL_39:

    goto LABEL_40;
  }

  Copy = 0;
LABEL_40:

  return Copy;
}

uint64_t _LSServerItemInfoRegistration(LSContext *a1, void *a2, void *a3, void *a4, const __CFDictionary *a5, unsigned int *a6, uint64_t a7, char *a8, unsigned __int8 *a9)
{
  v64 = *MEMORY[0x1E69E9840];
  v15 = a2;
  v17 = a3;
  v18 = v15[3];
  if (v18 == 203 || v18 == 205)
  {
    v21 = _LSServerBundleRegistration(a1, v15, v17, a4, a5, a6, v16, a8, a9);
  }

  else
  {
    if (v18 == 204)
    {
      v51 = v15;
      v19 = v17;
      v56 = 0;
      v55 = 0;
      theDict = a4;
      keys = 0;
      v49 = v19;
      v20 = 0;
      if (!a1)
      {
        v50 = 0;
        v21 = 4294956479;
        goto LABEL_73;
      }

      v21 = 4294956479;
      if (!v19)
      {
        v50 = 0;
        goto LABEL_73;
      }

      v50 = 0;
      if (v51[3] != 204)
      {
LABEL_73:

        goto LABEL_74;
      }

      v22 = a1->db;
      if (!v22)
      {
        v20 = 0;
        v50 = 0;
        goto LABEL_73;
      }

      v50 = v22;
      if (![(_LSDatabase *)v50 store])
      {
        v20 = 0;
        goto LABEL_73;
      }

      v52 = 0;
      v20 = [[FSNode alloc] initByResolvingBookmarkData:v49 relativeToNode:0 bookmarkDataIsStale:0 error:&v52];
      v23 = v52;
      v24 = v23;
      if (v20)
      {
      }

      else
      {
        v21 = _LSGetOSStatusFromNSError(v23);

        if (v21)
        {
          goto LABEL_71;
        }
      }

      v25 = [v20 URL];
      string = CFURLCopyFileSystemPath(v25, kCFURLPOSIXPathStyle);

      if (!string)
      {
        v21 = 0;
        if (!a5)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      v26 = theDict;
      if (!theDict)
      {
LABEL_29:
        if (a5)
        {
          CFRetain(a5);
        }

        else
        {
          if (!keys)
          {
            goto LABEL_62;
          }

          *&buffer = 0;
          *(&buffer + 1) = &buffer;
          v59 = 0x3812000000;
          v60 = __Block_byref_object_copy__619;
          v61 = __Block_byref_object_dispose__620;
          v62 = &unk_1818533FF;
          cf = 0;
          v57[0] = MEMORY[0x1E69E9820];
          v57[1] = 3221225472;
          v57[2] = ___ZL31createInstallationDictForPluginPK10__CFString_block_invoke;
          v57[3] = &unk_1E6A1DF30;
          v57[4] = &buffer;
          v57[5] = keys;
          softLinkMobileInstallationEnumerateAllInstalledItemDictionaries(0, v57);
          v40 = *(*(&buffer + 1) + 48);
          if (v40)
          {
            a5 = CFRetain(v40);
          }

          else
          {
            a5 = 0;
          }

          _Block_object_dispose(&buffer, 8);
          v26 = cf;
          if (cf)
          {
            CFRelease(cf);
          }

          if (!a5)
          {
LABEL_62:
            v44 = _LSRegistrationLog(v26);
            if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buffer) = 138412290;
              *(&buffer + 4) = keys;
              _os_log_impl(&dword_18162D000, v44, OS_LOG_TYPE_ERROR, "Cannot register app extension %@ without MobileInstallation data. Installation dictionary was NULL", &buffer, 0xCu);
            }

            v34 = 0;
            v39 = 0;
            v47 = 0;
            a5 = 0;
            v21 = 4294956479;
            goto LABEL_65;
          }
        }

        if (theDict && keys)
        {
          v47 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &theDict, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        }

        else
        {
          FileSystemRepresentation = CFStringGetFileSystemRepresentation(string, &buffer, 1024);
          if (FileSystemRepresentation)
          {
            v30 = _LSDefaultLog(FileSystemRepresentation);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              _LSServerItemInfoRegistration_cold_1();
            }
          }

          v47 = 0;
        }

        v31 = _LSGetPlugin(v50, v51[7]);
        if (v31)
        {
          v32 = v51[7];
          v46 = *(v31 + 224);
          v55 = v46;
          _LSUnregisterBundle(&a1->db, v32, 0x20000000);
          v33 = [v20 URL];
          v34 = _LSCopyPluginsWithURL(a1, v33, 1);

          if (v34)
          {
            Count = CFArrayGetCount(v34);
            if (Count >= 1)
            {
              for (i = 0; i != Count; ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v34, i);
                TypeID = CFNumberGetTypeID();
                if (ValueAtIndex && (!TypeID || CFGetTypeID(ValueAtIndex) == TypeID))
                {
                  _LSUnregisterBundle(&a1->db, [ValueAtIndex unsignedLongLongValue], 0x20000000);
                }
              }
            }

            CFRelease(v34);
            v39 = 0;
            v34 = 0;
          }

          else
          {
            v39 = 0;
          }

          v43 = v46;
        }

        else
        {
          v41 = CFStringFind(string, @".app/", 4uLL);
          if (v41.location == -1)
          {
            v43 = 0;
            v39 = 0;
            v34 = 0;
          }

          else
          {
            v42 = *MEMORY[0x1E695E480];
            v65.length = v41.location + v41.length;
            v65.location = 0;
            v39 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], string, v65);
            v34 = CFURLCreateWithFileSystemPath(v42, v39, kCFURLPOSIXPathStyle, 1u);
            FSNodeCreateWithURL(v34, 0, &v56);
            _LSBundleFindWithNode(a1, v56, &v55, 0);
            v43 = v55;
          }
        }

        v21 = _LSRegisterPlugins(v50, v51[6], v43, v47, a5, 0);
LABEL_65:
        CFRelease(string);
        if (v34)
        {
          CFRelease(v34);
        }

        if (v39)
        {
          CFRelease(v39);
        }

        if (v47)
        {
          CFRelease(v47);
        }

LABEL_71:
        if (a5)
        {
LABEL_72:
          CFRelease(a5);
          goto LABEL_73;
        }

        goto LABEL_73;
      }

      if (*MEMORY[0x1E695E4F0])
      {
        Value = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4F0]);
        v26 = CFStringGetTypeID();
        if (!Value)
        {
          goto LABEL_28;
        }

        v28 = v26;
        if (!v26)
        {
          goto LABEL_28;
        }

        v26 = CFGetTypeID(Value);
        if (v26 == v28)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v26 = CFStringGetTypeID();
      }

      Value = 0;
LABEL_28:
      keys = Value;
      goto LABEL_29;
    }

    v21 = 4294967246;
  }

LABEL_74:

  return v21;
}

const void *CFTypeGetAsNumber(const void *a1)
{
  TypeID = CFNumberGetTypeID();
  if (a1 && TypeID && CFGetTypeID(a1) != TypeID)
  {
    return 0;
  }

  return a1;
}

uint64_t _LSPathIsTrusted(const char *a1)
{
  v2 = 0;
  while (1)
  {
    v3 = strlen(_LSPathIsTrusted(char const*)::trustedPaths[v2]);
    if (!strncmp(a1, _LSPathIsTrusted(char const*)::trustedPaths[v2], v3))
    {
      break;
    }

    if (++v2 == 10)
    {
      return 0;
    }
  }

  return 1;
}

void getLibIDs(uint64_t result, uint64_t a2)
{
  if ((atomic_load_explicit(_MergedGlobals_2, memory_order_acquire) & 1) == 0)
  {
    getLibIDs();
  }
}

uint64_t ___ZL48_LSGetLibraryBundleIdentifierAndItemIndexForNodeP9LSContextP6FSNodePl_block_invoke(uint64_t result, unsigned int a2, int a3, _BYTE *a4)
{
  if (*(result + 40) == a3)
  {
    **(result + 32) = a2;
    *a4 = 1;
  }

  return result;
}

void ___ZL23getNeedsRegistrationLogv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "needs-reg");
  v1 = getNeedsRegistrationLog(void)::result;
  getNeedsRegistrationLog(void)::result = v0;
}

uint64_t _LSServerCreateBundleDataAndRegister(LSContext *a1, LSRegistrationInfo *a2, NSData *a3, const __CFURL *a4, FSNode *a5, unsigned int *a6, const __CFArray **a7, unsigned __int8 *a8)
{
  v15 = a2;
  v16 = a3;
  kdebug_trace();
  v17 = _LSCreateRegistrationData(a1, v15, a4, a5, a7);
  kdebug_trace();
  kdebug_trace();
  v19 = _LSServerItemInfoRegistration(a1, v15, v16, v17, a5, a6, v18, 0, a8);
  v21 = v19;
  if (a1 && !v19)
  {
    _LSDatabaseCommit(a1->db, v20);
  }

  kdebug_trace();

  return v21;
}

uint64_t ___ZL23_LSRegisterDocumentTypeP11_LSDatabasejPK12LSBundleDataPK14__CFDictionaryP12NSDictionaryIP8NSStringPS7_IS9_S9_EEjP19LSBindingListBuffer_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  if ((a3 & 3) == 0)
  {
    v4 = a3 & 0xFFFFFFFC;
    if (v4)
    {
      v6 = result;
      v7 = *(result + 32);
      v8 = *(result + 48);
      v9 = *([(_LSDatabase *)v7 schema]+ 216);
      v10 = _UTTypeGet(*(v6 + 32), v4);
      result = _LSBindingListBufferAppend(v7, v8, v9, *(v10 + 12));
      if (result)
      {
        *(*(*(v6 + 40) + 8) + 24) = 0;
        *a4 = 1;
      }
    }
  }

  return result;
}

uint64_t ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke(uint64_t result, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    v3 = result;
    if (a3[45] == *(result + 60) && a3[5] == *(result + 100))
    {
      v5 = a3[46];
      if (v5 != *(result + 132))
      {
        if (v5)
        {
          v7 = *(*(*(result + 40) + 8) + 40);
          v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
          v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
          [v7 setObject:v8 forKey:v9];
        }

        v10 = *(*(*(v3 + 48) + 8) + 40);
        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
        [v10 addObject:v11];

        [(_LSDatabase *)*(v3 + 32) store];
        _CSStringRetain();
        [(_LSDatabase *)*(v3 + 32) store];
        [(_LSDatabase *)*(v3 + 32) schema];

        return _CSStoreWriteToUnit();
      }
    }
  }

  return result;
}

void ___ZL31_LSServerRegisterExtensionPointP11_LSDatabasejPK10__CFStringjPK14__CFDictionaryPK7__CFURL_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  _LSBindableDeactivate(*(a1 + 32), [v7 intValue], 0xAu, objc_msgSend(v5, "intValue"), 0);
  v6 = *(a1 + 32);
  [v5 intValue];
  [(_LSDatabase *)v6 store];
  _CSStringRelease();
}

void std::vector<void const*>::__vallocate[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<void const*>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::allocator<void const*>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void ___ZL25_LSPluginRegisterWithInfoP11_LSDatabasePK14__CFDictionaryS3_hPS1_jj_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (_NSIsNSString() && ([v6 hasPrefix:@"DT"] & 1) == 0 && (objc_msgSend(v6, "isEqual:", @"_LSLocalizedStringsDictionary") & 1) == 0 && (objc_msgSend(v6, "isEqual:", @"_LSSliceInfosKey") & 1) == 0)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v6];
  }
}

void ___ZL25_LSPluginRegisterWithInfoP11_LSDatabasePK14__CFDictionaryS3_hPS1_jj_block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v8 = a3;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  if ((_LSIsDictionaryWithKeysAndValuesOfClass(v8, v6, v7) & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void _LSPluginRegistration_CFDictionaryApplier(const __CFString *a1, CFDictionaryRef theDict, char *a3)
{
  v11 = 0;
  if (!theDict)
  {
    CFDictionaryGetTypeID();
LABEL_7:
    Value = 0;
    goto LABEL_8;
  }

  Value = CFDictionaryGetValue(theDict, @"NSExtensionAttributes");
  TypeID = CFDictionaryGetTypeID();
  if (Value && TypeID && CFGetTypeID(Value) != TypeID)
  {
    goto LABEL_7;
  }

LABEL_8:
  v7 = _LSRegisterPlugin(*a3, (a3 + 8), Value, a1, *(a3 + 27), *(a3 + 28), *(a3 + 58), &v11);
  if (v7 || (v8 = v11) == 0)
  {
    if (v7 == -10651)
    {
      return;
    }

    goto LABEL_15;
  }

  if (a3[236])
  {
LABEL_15:
    *(a3 + 62) = v7;
    return;
  }

  v9 = *a3;
  v10 = *(a3 + 30);

  LSPluginAddInfoToPayloadDict(v9, v10, v8, 1, 1);
}

uint64_t _LSRegisterPlugin(_LSDatabase *a1, const LSPluginInfo *a2, __CFString *a3, const __CFString *a4, const __CFString *a5, const __CFDictionary *a6, unsigned int a7, unsigned int *a8)
{
  v148 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v143 = 0u;
  memset(v144, 0, 60);
  v141 = 0u;
  v142 = 0u;
  v139 = 0u;
  v140 = 0u;
  memset(v138, 0, sizeof(v138));
  v136 = kLSVersionNumberNull;
  v137 = unk_1817E90C0;
  v119 = 0;
  v14 = *a2;
  v105 = *(a2 + 1);
  v118 = 0;
  v117 = 0;
  if (!a6 || (v104 = a5, v106 = v14, a3) && (v15 = CFGetTypeID(a3), v15 != CFDictionaryGetTypeID()))
  {
    v47 = 0;
    v34 = 4294967246;
    goto LABEL_147;
  }

  cf = CFDictionaryGetValue(a6, @"NSExtensionPointIdentifier");
  TypeID = CFStringGetTypeID();
  if (!cf || TypeID && CFGetTypeID(cf) != TypeID)
  {
    cf = 0;
  }

  if (a3)
  {
    if (!CFDictionaryContainsKey(a3, @"NSExtensionPointName") || (Value = CFDictionaryGetValue(a3, @"NSExtensionPointName"), v18 = CFStringGetTypeID(), Value) && v18 && CFGetTypeID(Value) != v18)
    {
      Value = 0;
    }

    if (!CFDictionaryContainsKey(a3, @"NSExtensionIdentifier") || (v19 = CFDictionaryGetValue(a3, @"NSExtensionIdentifier"), v20 = CFStringGetTypeID(), v19) && v20 && CFGetTypeID(v19) != v20)
    {
      v19 = 0;
    }

    if (!CFDictionaryContainsKey(a3, @"NSExtensionVersion") || (v21 = CFDictionaryGetValue(a3, @"NSExtensionVersion"), v22 = CFStringGetTypeID(), v21) && v22 && CFGetTypeID(v21) != v22)
    {
      v21 = 0;
    }

    if (!CFDictionaryContainsKey(a3, @"NSExtensionPointVersion") || (a3 = CFDictionaryGetValue(a3, @"NSExtensionPointVersion"), v23 = CFStringGetTypeID(), a3) && v23 && CFGetTypeID(a3) != v23)
    {
      a3 = 0;
    }
  }

  else
  {
    Value = 0;
    v21 = 0;
    v19 = 0;
  }

  if (v19)
  {
    v24 = v19;
  }

  else
  {
    v24 = a4;
  }

  v107 = v24;
  v25 = _LSBundleGet(v13, a7);
  if (!v25 || (*(v25 + 179) & 0x10) == 0)
  {
    goto LABEL_39;
  }

  if (cf)
  {
    v26 = cf;
    if ([(__CFString *)v26 isEqualToString:@"com.apple.widgetkit-extension"])
    {

      goto LABEL_39;
    }

    v27 = [(__CFString *)v26 isEqualToString:@"com.apple.background-asset-downloader-extension"];

    if (v27)
    {
LABEL_39:
      v28 = *(a2 + 3);
      v116 = 0;
      v29 = _LSAliasAddURL(v13, v28, &v116);
      v30 = v116;
      v31 = v30;
      if (v29)
      {
      }

      else
      {
        v34 = _LSGetOSStatusFromNSError(v30);

        if (v34)
        {
          goto LABEL_103;
        }
      }

      *&v138[0] = __PAIR64__(*(a2 + 48), v29);
      if ([__LSDefaultsGetSharedInstance(v32 v33)])
      {
        goto LABEL_46;
      }

      v35 = *(a2 + 4);
      if (!v35)
      {
        goto LABEL_46;
      }

      v115 = 0;
      v36 = _LSAliasAddURL(v13, v35, &v115);
      v37 = v115;
      v38 = v37;
      LODWORD(v139) = v36;
      if (v36)
      {

        goto LABEL_46;
      }

      v34 = _LSGetOSStatusFromNSError(v37);

      if (!v34)
      {
LABEL_46:
        HIDWORD(v138[0]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 5), 0);
        v39 = *(a2 + 7);
        if (!v39)
        {
          if ((*(a2 + 204) & 1) == 0)
          {
            goto LABEL_50;
          }

          v39 = @"0000000000";
        }

        LODWORD(v138[1]) = _LSDatabaseCreateStringForCFString(v13, v39, 0);
LABEL_50:
        if (cf)
        {
          v40 = cf;
        }

        else
        {
          v40 = Value;
        }

        StringForCFString = _LSDatabaseCreateStringForCFString(v13, v107, 0);
        if (v21)
        {
          v42 = v21;
        }

        else
        {
          v42 = v104;
        }

        HIDWORD(v143) = StringForCFString;
        _LSGetVersionFromString(v42, buf);
        *(&v138[1] + 12) = *buf;
        *(&v138[2] + 12) = *&buf[16];
        if (a3)
        {
          _LSGetVersionFromString(a3, buf);
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        *(v144 + 12) = *buf;
        *(&v144[1] + 12) = *&buf[16];
        DWORD1(v138[1]) = v105;
        if (Value)
        {
          v43 = _LSDatabaseCreateStringForCFString(v13, Value, 0);
          goto LABEL_76;
        }

        v44 = _LSExtensionPointFindWithIdentifier(v13, v40, v105, 0, &v118, &v117);
        if (v44 == -10814)
        {
          v45 = _LSRegistrationLog(v44);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            *&buf[4] = v107;
            *&buf[12] = 2112;
            *&buf[14] = v40;
            _os_log_impl(&dword_18162D000, v45, OS_LOG_TYPE_INFO, "Registering extension %@ but haven't yet registered extension point %@", buf, 0x16u);
          }
        }

        else
        {
          if (!a3 || (*buf = *(v144 + 12), *&buf[16] = *(&v144[1] + 12), v48 = *(v117 + 24), v146 = *(v117 + 8), v147 = v48, (v49 = _LSVersionNumberCompare(buf, &v146)) == 0))
          {
LABEL_72:
            if (v117 && (v52 = v13, [(_LSDatabase *)v13 store], _CSStringRetain(), v117))
            {
              v43 = *(v117 + 40);
            }

            else
            {
              v43 = 0;
            }

LABEL_76:
            DWORD2(v144[0]) = v43;
            DWORD1(v144[0]) = _LSDatabaseCreateStringForCFString(v13, v40, 0);
            DWORD1(v139) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 8), 0);
            HIDWORD(v139) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 9), 0);
            DWORD2(v138[0]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 15), 0);
            HIDWORD(v140) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 10), 0);
            LODWORD(v141) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 11), 0);
            DWORD1(v141) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 12), 0);
            v47 = [*(a2 + 1) sortedArrayUsingSelector:sel_compare_];
            if ((*(a2 + 204) & 0x20) != 0)
            {
              v56 = _LSAliasGet(v13, LODWORD(v138[0]));
              v57 = [v56 mutableCopy];

              v113 = 0u;
              v114 = 0u;
              v111 = 0u;
              v112 = 0u;
              v58 = v47;
              v59 = [v58 countByEnumeratingWithState:&v111 objects:v135 count:16];
              if (v59)
              {
                v60 = *v112;
                do
                {
                  for (i = 0; i != v59; ++i)
                  {
                    if (*v112 != v60)
                    {
                      objc_enumerationMutation(v58);
                    }

                    v62 = [*(*(&v111 + 1) + 8 * i) dataUsingEncoding:4];
                    [v57 appendData:v62];
                  }

                  v59 = [v58 countByEnumeratingWithState:&v111 objects:v135 count:16];
                }

                while (v59);
              }

              v63 = [MEMORY[0x1E696AFB0] _LS_UUIDWithData:v57 digestType:1];
              v55 = [v63 UUIDString];
            }

            else
            {
              v53 = *MEMORY[0x1E695E480];
              v54 = CFUUIDCreate(*MEMORY[0x1E695E480]);
              v55 = CFUUIDCreateString(v53, v54);
              CFRelease(v54);
            }

            HIDWORD(v144[2]) = _LSDatabaseCreateStringForCFString(v13, v55, 0);
            if ([v47 count])
            {
              StringArray = _LSDatabaseCreateStringArray(v13, *(a2 + 1), 0, 0);
            }

            else
            {
              StringArray = 0;
            }

            v65 = *(a2 + 2);
            if (v65)
            {
              _LSGetVersionFromString(v65, buf);
              v136 = *buf;
              v137 = *&buf[16];
            }

            *(&v138[3] + 12) = v136;
            *(&v138[4] + 12) = v137;
            v66 = _LSPlistAdd(v13, *(a2 + 13));
            HIDWORD(v141) = v66;
            if (([__LSDefaultsGetSharedInstance(v66 v67)] & 1) == 0)
            {
              LODWORD(v142) = _LSPlistAdd(v13, *(a2 + 14));
            }

            DWORD2(v141) = _LSPlistAdd(v13, *(a2 + 16));
            HIDWORD(v138[5]) = StringArray;
            LODWORD(v144[3]) = a7;
            if ((*a2 & 4) != 0)
            {
              v68 = _LSPluginFindWithInfo(v13, 0, *(a2 + 6), 0, 0, &v119, 0);
              v69 = v68;
              if (v68 && *(v68 + 184) != DWORD2(v144[0]))
              {
                v34 = 0;
                v106 &= ~4u;
              }

              else
              {
                LODWORD(v144[0]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 6), 0);
                if (v69)
                {
                  LODWORD(v146) = *(v69 + 168) | 8;
                  *buf = 0;
                  v70 = v13;
                  [(_LSDatabase *)v13 store];
                  v71 = v13;
                  [(_LSDatabase *)v13 schema];
                  if (_CSStoreWriteToUnit())
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = _LSGetOSStatusFromNSError(*buf);
                  }
                }

                else
                {
                  v34 = 0;
                }
              }
            }

            else
            {
              v34 = 0;
              LODWORD(v144[0]) = 0;
            }

            WORD6(v142) = _LSSliceMaskForSliceArray(*(a2 + 20));
            LODWORD(v143) = *(a2 + 50);
            DWORD2(v143) = v106;
            BYTE4(v143) = *(a2 + 204);
            v72 = objc_autoreleasePoolPush();
            v73 = [[FSNode alloc] initWithURL:*(a2 + 3) flags:0 error:0];
            BYTE4(v142) = _LSGetDirectoryClassForNode(v73);

            objc_autoreleasePoolPop(v72);
            v74 = objc_autoreleasePoolPush();
            v75 = [*(a2 + 17) objectForKeyedSubscript:*MEMORY[0x1E695E120]];
            LODWORD(v140) = LaunchServices::LocalizedString::Add(v13, v75, *(a2 + 9));

            objc_autoreleasePoolPop(v74);
            v76 = objc_autoreleasePoolPush();
            v77 = [*(a2 + 17) objectForKeyedSubscript:*MEMORY[0x1E695E4F8]];
            DWORD2(v139) = LaunchServices::LocalizedString::Add(v13, v77, *(a2 + 9));

            objc_autoreleasePoolPop(v76);
            v78 = objc_autoreleasePoolPush();
            v79 = [*(a2 + 17) objectForKeyedSubscript:@"NSMicrophoneUsageDescription"];
            DWORD1(v140) = LaunchServices::LocalizedString::Add(v13, v79, *(a2 + 18));

            objc_autoreleasePoolPop(v78);
            DWORD2(v142) = _LSPlistAdd(v13, *(a2 + 19));
            BYTE5(v142) = *(a2 + 196);
            v133 = *(&v138[3] + 12);
            v134 = *(&v138[4] + 12);
            v80 = DWORD1(v138[1]) - 1;
            if ((DWORD1(v138[1]) - 1) > 0xA)
            {
              v81 = -1;
              v82 = -1;
              v83 = -1;
            }

            else
            {
              v81 = qword_1817E8F20[v80];
              v82 = qword_1817E8F78[v80];
              v83 = qword_1817E8FD0[v80];
            }

            _LSMakeVersionNumber(v81, v82, v83, v145);
            *buf = v133;
            *&buf[16] = v134;
            v146 = v145[0];
            v147 = v145[1];
            if (_LSVersionNumberCompare(buf, &v146) > 1)
            {
              v86 = 0;
            }

            else
            {
              v84 = *(a2 + 22);
              if (v84)
              {
                Count = CFArrayGetCount(v84);
              }

              else
              {
                Count = 0;
              }

              v87 = *(a2 + 23);
              if (v87)
              {
                v87 = CFArrayGetCount(v87);
              }

              v86 = v87 + Count;
            }

            DWORD1(v144[3]) = _LSDatabaseCreateStringForCFString(v13, *(a2 + 21), 0);
            if (v86)
            {
              v88 = v13;
              [(_LSDatabase *)v13 store];
              v89 = _CSArrayCreateWithCapacity();
            }

            else
            {
              v89 = 0;
            }

            DWORD2(v144[3]) = v89;
            v131 = v144[1];
            v132[0] = v144[2];
            *(v132 + 12) = *(&v144[2] + 12);
            v127 = v141;
            v128 = v142;
            v129 = v143;
            v130 = v144[0];
            v123 = v138[4];
            v124 = v138[5];
            v125 = v139;
            v126 = v140;
            *buf = v138[0];
            *&buf[16] = v138[1];
            v121 = v138[2];
            v122 = v138[3];
            v90 = _LSPluginAdd(v13, buf);
            HIDWORD(v119) = v90;
            if (v90)
            {
              if (DWORD2(v144[3]))
              {
                if (BYTE4(v143))
                {
                  v91 = 8196;
                }

                else
                {
                  v91 = 0x2000;
                }

                if (a7)
                {
                  v92 = _LSBundleGet(v13, a7);
                  if (v92)
                  {
                    if ((*(v92 + 172) & 0x80) == 0)
                    {
                      v91 |= 0x40u;
                    }
                  }
                }

                _LSRegisterTypeDeclarationsForPlugin(v13, v90, v138, *(a2 + 23), *(a2 + 17), v91);
                _LSRegisterTypeDeclarationsForPlugin(v13, v90, v138, *(a2 + 22), *(a2 + 17), v91 | 0x10);
              }

              appended = _LSBundleGet(v13, a7);
              if (!appended)
              {
                goto LABEL_138;
              }

              if (*(appended + 480))
              {
                v95 = v13;
                [(_LSDatabase *)v13 store];
                appended = _CSArrayAppendValue();
LABEL_138:
                if (([__LSDefaultsGetSharedInstance(appended v94)] & 1) == 0)
                {
                  if (IconServicesLibrary(void)::frameworkLibrary)
                  {
                    v99 = 1;
                  }

                  else
                  {
                    IconServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
                    v99 = IconServicesLibrary(void)::frameworkLibrary != 0;
                  }

                  if (v107 && v99)
                  {
                    v100 = v107;
                    v101 = _LSGetPluginNotificationAndIconCacheQueue(v100);
                    _LSRegisterPlugin(v101, v110, v100);
                  }
                }

                goto LABEL_145;
              }

              *buf = 0;
              v96 = v13;
              [(_LSDatabase *)v13 store];
              LODWORD(v146) = _CSArrayCreate();
              if (!v146 && (v34 = _LSGetOSStatusFromNSError(*buf), v34))
              {
              }

              else
              {
                v97 = v13;
                [(_LSDatabase *)v13 store];
                v98 = v13;
                [(_LSDatabase *)v13 schema];
                if (_CSStoreWriteToUnit())
                {

LABEL_137:
                  v34 = 0;
                  goto LABEL_138;
                }

                v34 = _LSGetOSStatusFromNSError(*buf);

                if (!v34)
                {
                  goto LABEL_137;
                }
              }
            }

            else
            {
              v34 = 4294956479;
            }

LABEL_145:
            if (v55)
            {
              CFRelease(v55);
            }

            goto LABEL_147;
          }

          v45 = _LSRegistrationLog(v49);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
          {
            v50 = *(v117 + 24);
            v146 = *(v117 + 8);
            v147 = v50;
            v51 = _LSVersionNumberGetStringRepresentation(&v146);
            *buf = 138413058;
            *&buf[4] = v107;
            *&buf[12] = 2112;
            *&buf[14] = a3;
            *&buf[22] = 2112;
            *&buf[24] = v40;
            LOWORD(v121) = 2112;
            *(&v121 + 2) = v51;
            _os_log_impl(&dword_18162D000, v45, OS_LOG_TYPE_INFO, "Extension %@ specified NSExtensionPointVersion %@ that does not match the active extensionPoint <%@:%@>", buf, 0x2Au);
          }
        }

        goto LABEL_72;
      }

LABEL_103:
      v47 = 0;
      goto LABEL_147;
    }
  }

  v46 = _LSInstallLog(v25);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    _LSRegisterPlugin();
  }

  v47 = 0;
  v34 = 4294956645;
LABEL_147:
  if (HIDWORD(v119))
  {
    *a8 = HIDWORD(v119);
  }

  return v34;
}

void ___ZL17_LSRegisterPluginP11_LSDatabaseRK12LSPluginInfoPK14__CFDictionaryPK10__CFStringS9_S6_jPj_block_invoke(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  softLink_ISInvalidateCacheEntriesForBundleIdentifier(*(a1 + 32));

  objc_autoreleasePoolPop(v2);
}

void ___ZL61_LSFindExistingRegisteredBundleWithContainerMatchingAliasDataP11_LSDatabasejP6NSDataPj_block_invoke(uint64_t a1, int a2, unsigned int *a3, uint64_t a4, _BYTE *a5)
{
  if (!a3)
  {
    return;
  }

  if (a3[81] != *(a1 + 64))
  {
    return;
  }

  v9 = *(a1 + 68);
  if (v9)
  {
    if (v9 != a3[1])
    {
      return;
    }
  }

  v10 = _LSAliasGet(*(a1 + 32), *a3);
  if (v10)
  {
    v17 = v10;
    v11 = [FSNode compareBookmarkData:*(a1 + 40) toBookmarkData:v10];
    v10 = v17;
    if (!v11)
    {
LABEL_12:
      v16 = *(a1 + 56);
      if (v16)
      {
        *v16 = a2;
      }

      *(*(*(a1 + 48) + 8) + 24) = a3;
      *a5 = 1;
      goto LABEL_17;
    }

    if (v11 == 2)
    {
      v12 = [FSNode pathForBookmarkData:*(a1 + 40) error:0];
      v13 = [FSNode pathForBookmarkData:v17 error:0];
      v14 = v13;
      if (*(a1 + 68) == a3[1] && v12 && v13)
      {
        v15 = [v12 isEqualToString:v13];

        v10 = v17;
        if (v15)
        {
          goto LABEL_12;
        }
      }

      else
      {

        v10 = v17;
      }
    }
  }

LABEL_17:
}

void _LSLogStep(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v13 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:a6];
  }

  else
  {
    v12 = 0;
  }

  [(objc_class *)getAITransactionLogClass() logStep:a1 byParty:5 phase:a2 success:a3 forBundleID:v13 description:v12];
}

{
  v13 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v11 arguments:a6];
  }

  else
  {
    v12 = 0;
  }

  [(objc_class *)getAITransactionLogClass() logStep:a1 byParty:5 phase:a2 success:a3 forBundleID:v13 description:v12];
}

Class initAITransactionLog(void)
{
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    MobileInstallationLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass = AITransactionLogFunction;
  return result;
}

{
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    MobileInstallationLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass = AITransactionLogFunction;
  return result;
}

{
  if (!MobileInstallationLibrary(void)::frameworkLibrary)
  {
    MobileInstallationLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/MobileInstallation.framework/MobileInstallation", 2);
  }

  result = objc_getClass("AITransactionLog");
  classAITransactionLog = result;
  getAITransactionLogClass = AITransactionLogFunction;
  return result;
}

id AITransactionLogFunction(void)
{
  return classAITransactionLog;
}

{
  return classAITransactionLog;
}

{
  return classAITransactionLog;
}

__CFDictionary *_LSCreateRegistrationDataForDirectoryNode(LSContext *a1, LSRegistrationInfo *a2, const __CFURL *a3, _LSBundleProvider *a4, FSNode *a5, const __CFArray **a6, const __CFArray **a7)
{
  v207 = *MEMORY[0x1E69E9840];
  v181 = a2;
  v182 = a3;
  v183 = a4;
  v9 = [(__CFURL *)v182 infoDictionary];
  Mutable = copyDeepMutableDictionary(v9);

  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  theDict = Mutable;
  if (!CFDictionaryGetCount(Mutable))
  {
    CFDictionaryAddValue(Mutable, @"_LSInfoPlistIsMissing", *MEMORY[0x1E695E4D0]);
  }

  CFDictionaryRemoveValue(Mutable, @"LSIsSecuredSystemContent");
  if ([(_LSBundleProvider *)v183 isSecuredSystemContent])
  {
    CFDictionaryAddValue(Mutable, @"LSIsSecuredSystemContent", *MEMORY[0x1E695E4D0]);
  }

  v11 = v183;
  *buf = MEMORY[0x1E695E110];
  *&v201 = 0;
  _LSNodeIsOnCryptex(v11, buf, &v201);
  v12 = *buf;
  v13 = v201;
  v205[0] = v12;
  v200 = v13;
  v14 = _LSNodeIsOnCryptex(v11, v205, &v200);
  v15 = v205[0];

  v16 = v200;
  if ((v14 & 1) == 0)
  {
    v18 = _LSRegistrationLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _LSCreateRegistrationDataForDirectoryNode();
    }
  }

  CFDictionarySetValue(theDict, @"_LSIsOnCryptex", v15);

  v19 = v11;
  if (a5 && (Value = CFDictionaryGetValue(a5, @"BundleContainer"), TypeID = CFStringGetTypeID(), Value) && (!TypeID || CFGetTypeID(Value) == TypeID))
  {
    v22 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], Value, kCFURLPOSIXPathStyle, 1u);
    v23 = _LSCopyiTunesMetadataDictionaryForAppContainerURL(v22);
    if (v22)
    {
      CFRelease(v22);
    }

    if (v23)
    {
      _LSPromoteiTunesMetadataKeys(v23, theDict);
      CFRelease(v23);
    }
  }

  else
  {
  }

  v24 = objc_autoreleasePoolPush();
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:_LSGetDirectoryClassForNode(v19)];
  CFDictionaryAddValue(theDict, @"_LSDirectoryClass", v25);
  objc_autoreleasePoolPop(v24);
  v26 = v182;
  v27 = *[(_LSBundleProvider *)v26 provider];
  if (v27)
  {
    v28 = CFRetain(v27);
    v29 = v28;
    if (v28)
    {
      v31 = CFURLCopyFileSystemPath(v28, kCFURLPOSIXPathStyle);
      if (v31)
      {
        _LSPathifyIconKey(v26, theDict, *MEMORY[0x1E695E130], v30);
        _LSPathifyIconKeysInPlistKey(v26, theDict, *MEMORY[0x1E695E128], *MEMORY[0x1E695E168], v32);
        _LSPathifyIconKeysInPlistKey(v26, theDict, *MEMORY[0x1E695E198], *MEMORY[0x1E695E180], v33);
        _LSPathifyIconKeysInPlistKey(v26, theDict, @"UTExportedTypeDeclarations", @"UTTypeIconFile", v34);
        _LSPathifyIconKeysInPlistKey(v26, theDict, @"UTImportedTypeDeclarations", @"UTTypeIconFile", v35);
        CFRelease(v31);
      }

      CFRelease(v29);
    }
  }

  v36 = [(_LSBundleProvider *)v26 provider];
  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(v36, theDict, @"UTExportedTypeDeclarations");
  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(v36, theDict, @"UTImportedTypeDeclarations");

  v192 = v19;
  *buf = 0;
  LODWORD(v201) = 0;
  v37 = *MEMORY[0x1E695E138];
  if (theDict)
  {
    v38 = v37 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = !v38;
  if (v38)
  {
    CFStringGetTypeID();
  }

  else
  {
    v40 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E138]);
    v41 = CFStringGetTypeID();
    if (!v40 || !v41 || CFGetTypeID(v40) == v41)
    {
      goto LABEL_38;
    }
  }

  v40 = 0;
LABEL_38:
  v42 = _LSGetRawOSTypeForPossibleString(v40);
  v43 = *MEMORY[0x1E695E150];
  if (theDict)
  {
    v44 = v43 == 0;
  }

  else
  {
    v44 = 1;
  }

  v45 = !v44;
  v193 = v45;
  if (v44)
  {
    CFStringGetTypeID();
LABEL_50:
    v46 = 0;
    goto LABEL_51;
  }

  v46 = CFDictionaryGetValue(theDict, v43);
  v47 = CFStringGetTypeID();
  if (v46 && v47 && CFGetTypeID(v46) != v47)
  {
    goto LABEL_50;
  }

LABEL_51:
  v48 = _LSGetRawOSTypeForPossibleString(v46);
  if (([(_LSBundleProvider *)v192 getHFSType:buf creator:&v201 error:0]& 1) == 0)
  {
    goto LABEL_106;
  }

  v49 = [(_LSBundleProvider *)v192 isDirectory];
  if (*buf != v42)
  {
    if (v39)
    {
      v50 = CFDictionaryGetValue(theDict, v37);
      v51 = CFStringGetTypeID();
      if (!v50 || !v51 || CFGetTypeID(v50) == v51)
      {
LABEL_60:
        if (!gLogRegistrationErrors)
        {
LABEL_75:
          if (*buf)
          {
            v62 = _LSCopyStringForOSType(*buf);
            if (v62)
            {
              CFDictionarySetValue(theDict, v37, v62);
              CFRelease(v62);
            }
          }

          else
          {
            CFDictionaryRemoveValue(theDict, v37);
          }

          goto LABEL_79;
        }

        v52 = _LSCopyStringForOSType(*buf);
        v53 = v52;
        if (v50)
        {
          v54 = _LSCopyStringForOSType(v42);
          v55 = v54;
          v56 = *MEMORY[0x1E695E480];
          v57 = "file";
          if (v49)
          {
            v57 = "PkgInfo";
          }

          v58 = CFStringCreateWithFormat(v56, 0, @"Type mismatch: %s type = '%@', plist CFBundlePackageType = '%@'", v57, v53, v54);

          if (!v58)
          {
            goto LABEL_70;
          }
        }

        else
        {
          v56 = *MEMORY[0x1E695E480];
          v59 = "file";
          if (v49)
          {
            v59 = "PkgInfo";
          }

          v58 = CFStringCreateWithFormat(v56, 0, @"Type mismatch: %s type = '%@', plist CFBundlePackageType is missing", v59, v52);
          if (!v58)
          {
            goto LABEL_70;
          }
        }

        _LSRegistrationWarning(v192, v58);
        CFRelease(v58);
LABEL_70:
        if (v50)
        {
          if (CFStringGetLength(v50) != 4)
          {
            Length = CFStringGetLength(v50);
            v61 = CFStringCreateWithFormat(v56, 0, @"Value for CFBundlePackageType key has incorrect length %ld (should be 4)", Length);
            if (v61)
            {
              _LSRegistrationWarning(v192, v61);
              CFRelease(v61);
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      CFStringGetTypeID();
    }

    v50 = 0;
    goto LABEL_60;
  }

LABEL_79:
  if (v201 == v48)
  {
    goto LABEL_106;
  }

  if ((v193 & 1) == 0)
  {
    CFStringGetTypeID();
LABEL_86:
    v63 = 0;
    goto LABEL_87;
  }

  v63 = CFDictionaryGetValue(theDict, v43);
  v64 = CFStringGetTypeID();
  if (v63 && v64 && CFGetTypeID(v63) != v64)
  {
    goto LABEL_86;
  }

LABEL_87:
  if (gLogRegistrationErrors)
  {
    v65 = _LSCopyStringForOSType(v201);
    v66 = v65;
    if (v63)
    {
      v67 = _LSCopyStringForOSType(v48);
      v68 = v67;
      v69 = *MEMORY[0x1E695E480];
      v70 = "file";
      if (v49)
      {
        v70 = "PkgInfo";
      }

      v71 = CFStringCreateWithFormat(v69, 0, @"Signature mismatch: %s signature = '%@', plist CFBundleSignature = '%@'", v70, v66, v67);

      if (!v71)
      {
        goto LABEL_97;
      }
    }

    else
    {
      v69 = *MEMORY[0x1E695E480];
      v72 = "file";
      if (v49)
      {
        v72 = "PkgInfo";
      }

      v71 = CFStringCreateWithFormat(v69, 0, @"Signature mismatch: %s signature = '%@', plist CFBundleSignature is missing", v72, v65);
      if (!v71)
      {
        goto LABEL_97;
      }
    }

    _LSRegistrationWarning(v192, v71);
    CFRelease(v71);
LABEL_97:
    if (v63)
    {
      if (CFStringGetLength(v63) != 4)
      {
        v73 = CFStringGetLength(v63);
        v74 = CFStringCreateWithFormat(v69, 0, @"Value for CFBundleSignature key has incorrect length %ld (should be 4)", v73);
        if (v74)
        {
          _LSRegistrationWarning(v192, v74);
          CFRelease(v74);
        }
      }
    }
  }

  if (v201)
  {
    v75 = _LSCopyStringForOSType(v201);
    if (v75)
    {
      CFDictionarySetValue(theDict, v43, v75);
      CFRelease(v75);
    }
  }

  else
  {
    CFDictionaryRemoveValue(theDict, v43);
  }

LABEL_106:

  v76 = v26;
  v191 = v181;
  v194 = v76;
  v77 = *[(_LSBundleProvider *)v76 provider];
  if (v77)
  {
    v78 = CFRetain(v77);
    if (v78)
    {
      if (a5)
      {
        v79 = CFDictionaryGetValue(a5, @"IsPlaceholder");
        v80 = CFBooleanGetTypeID();
        if (v79)
        {
          if (!v80 || CFGetTypeID(v79) == v80)
          {
            v81 = CFBooleanGetValue(v79);
            if (v81)
            {
              v82 = _LSRegistrationLog(v81);
              _LSCreateRegistrationDataForDirectoryNode(v82);
LABEL_153:
              CFRelease(v78);
              goto LABEL_154;
            }
          }
        }
      }

      v83 = LSBundleProvider::CFBundleCopyExecutableURL([(_LSBundleProvider *)v194 provider]);
      if (!v83)
      {
        v89 = _LSRegistrationLog(0);
        _LSCreateRegistrationDataForDirectoryNode(v89);
        goto LABEL_153;
      }

      if (theDict && *MEMORY[0x1E695E4E8])
      {
        v84 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4E8]);
        v85 = CFStringGetTypeID();
        if (v84 && (!v85 || CFGetTypeID(v84) == v85))
        {
          PathComponent = CFURLCopyLastPathComponent(v83);
          v87 = PathComponent;
          if (PathComponent)
          {
            if (CFEqual(PathComponent, v84) || (v88 = _CFBundleCopyExecutableURLInDirectory()) == 0)
            {
              v88 = v83;
            }

            else
            {
              CFRelease(v83);
            }

            v83 = v88;
            CFRelease(v87);
          }
        }
      }

      else
      {
        CFStringGetTypeID();
      }

      v90 = CFURLCopyAbsoluteURL(v78);
      v91 = CFURLCopyFileSystemPath(v90, kCFURLPOSIXPathStyle);
      v92 = CFURLCopyAbsoluteURL(v83);
      if (v90)
      {
        CFRelease(v90);
      }

      v93 = CFURLCopyFileSystemPath(v92, kCFURLPOSIXPathStyle);
      v94 = v93;
      if (v91)
      {
        if (v93)
        {
          v95 = [FSNode relativePathToFullPath:v93 fromBasePath:v91];
          if (v95)
          {
            CFDictionaryAddValue(theDict, @"_LSExecutablePath", v95);
          }

          v96 = [[FSNode alloc] initWithURL:v83 flags:1 error:0];
          v97 = v96;
          if (v96)
          {
            if ([(FSNode *)v96 isResolvable])
            {
              v98 = [(FSNode *)v97 resolvedNodeWithFlags:0 error:0];
              v99 = v98;
              if (v98)
              {
                v100 = v98;

                v97 = v100;
              }
            }

            _LSAddExecutableFormatInfo(v97);
            v101 = [(FSNode *)v97 getInodeNumber:&v191->inoExec error:0];
            if ((v101 & 1) == 0)
            {
              v102 = _LSRegistrationLog(v101);
              if (os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
              {
                *buf = 138739971;
                *&buf[4] = v97;
                _os_log_impl(&dword_18162D000, v102, OS_LOG_TYPE_ERROR, "Unable to get iNode for executable %{sensitive}@", buf, 0xCu);
              }
            }

            v103 = [(FSNode *)v97 getContentModificationDate:&v191->executableModDate error:0];
            if ((v103 & 1) == 0)
            {
              v104 = _LSRegistrationLog(v103);
              _LSCreateRegistrationDataForDirectoryNode(v104);
            }
          }

          if (v95)
          {
            CFRelease(v95);
          }

          CFRelease(v94);
        }

        v94 = v91;
      }

      else if (!v93)
      {
        goto LABEL_150;
      }

      CFRelease(v94);
LABEL_150:
      if (v92)
      {
        CFRelease(v92);
      }

      CFRelease(v83);
      goto LABEL_153;
    }
  }

LABEL_154:

  v105 = [(_LSBundleProvider *)v192 URL];
  v106 = v105;
  if (softLink_GSIsDocumentRevision)
  {
    v107 = softLink_GSIsDocumentRevision(v105) == 0;

    if (!v107)
    {
      CFDictionaryAddValue(theDict, @"_LSBundleIsInGenerationalStorage", *MEMORY[0x1E695E4D0]);
    }
  }

  else
  {
  }

  v108 = LSBundleProvider::intentURLPaths([(_LSBundleProvider *)v194 provider]);
  if (v108)
  {
    CFDictionaryAddValue(theDict, @"_LSIntentDefinitionURLs", v108);
  }

  v109 = LSBundleProvider::XCFBundleCopyFolderURL([(_LSBundleProvider *)v194 provider], @"Library/");
  if (v109)
  {
    _LSAddBundleLibraryInfo(a1, v109, v194, v191, theDict, 0, a6);
    CFRelease(v109);
  }

  if (a6 && !*a6 && (v191->options & 0x10000000) != 0)
  {
    v110 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], @"/System/Library/CoreServices/CoreTypes.bundle/", kCFURLPOSIXPathStyle, 1u);
    v111 = [[_LSBundleProvider alloc] initWithURL:v110 useCacheIfPossible:1];
    v112 = v111;
    if (v111)
    {
      v113 = LSBundleProvider::XCFBundleCopyFolderURL([(_LSBundleProvider *)v111 provider], @"Library/");
      if (v113)
      {
        _LSAddBundleLibraryInfo(a1, v113, v112, v191, theDict, 0, a6);
        CFRelease(v113);
      }
    }

    if (v110)
    {
      CFRelease(v110);
    }
  }

  if (LSBundleProvider::CFBundleGetIdentifier([(_LSBundleProvider *)v194 provider]))
  {
    if ((v114 = CFStringGetTypeID(), v115 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E500]), (v116 = v115) != 0) && CFGetTypeID(v115) == v114 || (v117 = CFStringGetTypeID(), v118 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E148]), (v116 = v118) != 0) && CFGetTypeID(v118) == v117)
    {
      _LSGetVersionFromString(v116, buf);
    }
  }

  v119 = LSUseLegacyLocalizationList(theDict);
  [_LSStringLocalizer gatherLocalizedStringsForCFBundle:LSBundleProvider::bundleRef([(_LSBundleProvider *)v194 provider] infoDictionary:1 domains:"making string localizer") delegatesMightBeMainBundle:theDict legacyLocalizationList:0xFFFFFFFFLL, 0, v119];
  cfa = LSBundleProvider::XCFBundleCopyFolderURL([(_LSBundleProvider *)v194 provider], @"Extensions/");
  if (cfa)
  {
    context = objc_autoreleasePoolPush();
    v197 = objc_opt_new();
    v120 = *MEMORY[0x1E695DBB8];
    v205[0] = *MEMORY[0x1E695DBB8];
    v179 = [MEMORY[0x1E695DEC8] arrayWithObjects:v205 count:1];
    v121 = [MEMORY[0x1E696AC08] defaultManager];
    v122 = [v121 enumeratorAtURL:cfa includingPropertiesForKeys:v179 options:1 errorHandler:0];

    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v123 = v122;
    v124 = [v123 countByEnumeratingWithState:&v201 objects:buf count:16];
    if (v124)
    {
      v125 = *v202;
      do
      {
        for (i = 0; i != v124; ++i)
        {
          if (*v202 != v125)
          {
            objc_enumerationMutation(v123);
          }

          v127 = *(*(&v201 + 1) + 8 * i);
          v128 = objc_autoreleasePoolPush();
          v200 = 0;
          v129 = [v127 getResourceValue:&v200 forKey:v120 error:0];
          v130 = v200;
          v131 = v130;
          if (v130)
          {
            v132 = v129;
          }

          else
          {
            v132 = 0;
          }

          if (v132 != 1 || ([v130 BOOLValue] & 1) != 0)
          {
            v133 = [v127 pathExtension];
            v134 = v133;
            if (v133 && (![v133 caseInsensitiveCompare:@"appexpt"] || !objc_msgSend(v134, "caseInsensitiveCompare:", @"appextensionpoint") || !objc_msgSend(v134, "caseInsensitiveCompare:", @"appextensionpoints")))
            {
              [(__CFDictionary *)v197 addObject:v127];
            }
          }

          objc_autoreleasePoolPop(v128);
        }

        v124 = [v123 countByEnumeratingWithState:&v201 objects:buf count:16];
      }

      while (v124);
    }

    if ([(__CFDictionary *)v197 count])
    {
      v135 = [(__CFDictionary *)v197 copy];
      [(__CFDictionary *)theDict setObject:v135 forKey:@"_LSBundleExtensionPoints"];
    }

    objc_autoreleasePoolPop(context);
    CFRelease(cfa);
  }

  if (v191->action == 204)
  {
    v136 = *[(_LSBundleProvider *)v194 provider];
    if (v136)
    {
      v137 = CFRetain(v136);
      v138 = v137;
      if (v137)
      {
        v139 = CFURLCopyFileSystemPath(v137, kCFURLPOSIXPathStyle);
        CFDictionarySetValue(theDict, @"Path", v139);
        CFRelease(v138);
        CFRelease(v139);
      }
    }

    goto LABEL_222;
  }

  v140 = a5;
  if (a5)
  {
    v198 = v140;
    v141 = [(FSNode *)v140 objectForKey:@"_LSBundlePlugins"];
    if (!v141 || !_NSIsNSDictionary() || ![v141 count])
    {

      goto LABEL_222;
    }

    cfb = *MEMORY[0x1E695E480];
    v142 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v189 = v141;
    v143 = [v141 allValues];
    v203 = 0u;
    v204 = 0u;
    v201 = 0u;
    v202 = 0u;
    v144 = v143;
    v145 = [v144 countByEnumeratingWithState:&v201 objects:buf count:16];
    if (v145)
    {
      v146 = *v202;
      do
      {
        for (j = 0; j != v145; ++j)
        {
          if (*v202 != v146)
          {
            objc_enumerationMutation(v144);
          }

          v148 = [*(*(&v201 + 1) + 8 * j) objectForKey:@"Path"];
          v149 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:v148 isDirectory:1];
          LSBundleProvider::LSBundleProvider(v205, v149);
          if (LSBundleProvider::bundleRef(v205, 1, "checking for validity"))
          {
            v150 = LSBundleProvider::bundleRef(v205, 1, 0);
            CFArrayAppendValue(v142, v150);
          }

          LSBundleProvider::~LSBundleProvider(v205);
        }

        v145 = [v144 countByEnumeratingWithState:&v201 objects:buf count:16];
      }

      while (v145);
    }

    if (v142)
    {
      if (theDict)
      {
        v180 = CFDictionaryGetValue(theDict, @"_LSBundlePlugins");
        v151 = CFDictionaryGetTypeID();
        if (v180 && (!v151 || CFGetTypeID(v180) == v151))
        {
          goto LABEL_227;
        }
      }

      else
      {
        CFDictionaryGetTypeID();
      }

      if (CFArrayGetCount(v142) < 1)
      {
        v180 = 0;
      }

      else
      {
        v180 = CFDictionaryCreateMutable(cfb, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(theDict, @"_LSBundlePlugins", v180);
        CFRelease(v180);
      }

LABEL_227:
      v153 = CFDictionaryGetTypeID();
      v154 = CFDictionaryGetValue(v198, @"_LSBundlePlugins");
      v155 = v154;
      if (v154)
      {
        if (CFGetTypeID(v154) == v153)
        {
          v156 = v155;
        }

        else
        {
          v156 = 0;
        }

        v199 = v156;
      }

      else
      {
        v199 = 0;
      }

      if (CFArrayGetCount(v142) < 1)
      {
LABEL_268:
        CFRelease(v142);
        goto LABEL_222;
      }

      v157 = 0;
      cfc = *MEMORY[0x1E695E4D0];
      v190 = *MEMORY[0x1E695E4C0];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v142, v157);
        v159 = _LSCopyBundleInfoDictionary(ValueAtIndex);
        v160 = objc_autoreleasePoolPush();
        CFAutorelease(v159);
        v161 = [v159 _ls_normalizedPluginPlist];
        v162 = [v161 mutableCopy];

        objc_autoreleasePoolPop(v160);
        Identifier = CFBundleGetIdentifier(ValueAtIndex);
        v164 = CFBundleCopyBundleURL(ValueAtIndex);
        v165 = CFBundleCopyExecutableURL(ValueAtIndex);
        if (v164)
        {
          v166 = [[FSNode alloc] initWithURL:v164 flags:0 error:0];
          if ([(FSNode *)v166 isSecuredSystemContent])
          {
            CFDictionarySetValue(v162, @"LSIsSecuredSystemContent", cfc);
          }

          v167 = CFURLCopyFileSystemPath(v164, kCFURLPOSIXPathStyle);
          CFDictionarySetValue(v162, @"Path", v167);
          CFRelease(v164);
          CFRelease(v167);
        }

        if (v165)
        {
          v168 = [[FSNode alloc] initWithURL:v165 flags:1 error:0];
          if (v168)
          {
            bzero(buf, 0x400uLL);
            if ([(FSNode *)v168 getFileSystemRepresentation:buf error:0])
            {
              *&v201 = 0;
              v169 = open(buf, 0, 511);
              if ((v169 & 0x80000000) == 0)
              {
                v170 = [(FSNode *)v168 getLength:&v201 error:0];
                if (v201)
                {
                  v171 = v170;
                }

                else
                {
                  v171 = 0;
                }

                if (v171)
                {
                  fcntl(v169, 48, 1);
                  v172 = objc_autoreleasePoolPush();
                  v173 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  _LSParseLoadCommands(v169);
                  [(__CFDictionary *)v162 setObject:v173 forKey:@"_LSSliceInfosKey"];

                  objc_autoreleasePoolPop(v172);
                }

                close(v169);
              }
            }
          }

          CFRelease(v165);
        }

        if (v199)
        {
          CFDictionaryGetTypeID();
          v174 = CFDictionaryGetValue(v199, Identifier);
          if (v174)
          {
            CFGetTypeID(v174);
          }
        }

        [_LSStringLocalizer gatherLocalizedStringsForCFBundle:ValueAtIndex infoDictionary:v162 domains:3 legacyLocalizationList:LSUseLegacyLocalizationList(v162)];
        v175 = v190;
        if (softLinkLNIsLinkEnabled)
        {
          if (softLinkLNIsLinkEnabled(ValueAtIndex))
          {
            v175 = cfc;
          }

          else
          {
            v175 = v190;
          }
        }

        CFDictionaryAddValue(v162, @"_LSIsLinkEnabled", v175);
        v176 = objc_autoreleasePoolPush();
        if (softLinkINSchemaURLsForIntentNamesWithBundle)
        {
          v177 = softLinkINSchemaURLsForIntentNamesWithBundle(ValueAtIndex);
        }

        else
        {
          v177 = 0;
        }

        if ([v177 count])
        {
          CFDictionarySetValue(v162, @"_LSIntentDefinitionURLs", v177);
        }

        objc_autoreleasePoolPop(v176);
        if (Identifier)
        {
          if (v162)
          {
            break;
          }
        }

        if (v162)
        {
          goto LABEL_266;
        }

LABEL_267:
        if (CFArrayGetCount(v142) <= ++v157)
        {
          goto LABEL_268;
        }
      }

      CFDictionaryAddValue(v180, Identifier, v162);
LABEL_266:
      CFRelease(v162);
      goto LABEL_267;
    }
  }

LABEL_222:

  return theDict;
}

void sub_1817840A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  CFRelease(v35);
  CFRelease(v34);

  _Unwind_Resume(a1);
}

uint64_t ___ZL34_LSCreateRegistrationDataForBundleP9LSContextP18LSRegistrationInfoPK7__CFURLPK14__CFDictionaryPPK9__CFArray_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = CFDictionaryContainsKey(*(a1 + 32), a2);
  if (v6)
  {
    Value = CFDictionaryGetValue(*(a1 + 32), a2);
    v8 = CFEqual(a3, Value);
    if (v8)
    {
      return 1;
    }

    v10 = _LSRegistrationLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v14 = CFDictionaryGetValue(*(a1 + 32), a2);
      v15 = 138543874;
      v16 = a2;
      v17 = 2114;
      v18 = a3;
      v19 = 2114;
      v20 = v14;
      v11 = "REGISTRATION CACHE ERROR: Difference, %{public}@   %{public}@ vs (wrong) %{public}@";
      v12 = v10;
      v13 = 32;
      goto LABEL_8;
    }
  }

  else
  {
    v10 = _LSRegistrationLog(v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543618;
      v16 = a2;
      v17 = 2114;
      v18 = a3;
      v11 = "REGISTRATION CACHE ERROR: Missing, %{public}@   %{public}@";
      v12 = v10;
      v13 = 22;
LABEL_8:
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_ERROR, v11, &v15, v13);
    }
  }

  return 0;
}

void _LSAddBundleLibraryInfo(LSContext *a1, const __CFURL *a2, _LSBundleProvider *a3, LSRegistrationInfo *a4, __CFDictionary *a5, int a6, const __CFArray **a7)
{
  v13 = a3;
  v14 = a4;
  if ((v14->options & 0x10000000) != 0)
  {
    v31 = 0;
    if (FSNodeCreateWithURL(a2, 1, &v31))
    {
LABEL_31:

      goto LABEL_32;
    }

    if (a6)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:_LSGetDirectoryClassForNode(v31)];
      CFDictionaryAddValue(a5, @"_LSDirectoryClass", v15);
    }

    v30 = 0;
    *cf = 0u;
    *v29 = 0u;
    v16 = CFRetain(a2);
    if (v16)
    {
      cf[0] = v16;
    }

    v17 = CFRetain(a5);
    v18 = v29[0];
    if (v29[0] != v17)
    {
      v29[0] = v17;
      v17 = v18;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    objc_storeStrong(&v30, a4);
    if (v13)
    {
      v19 = *[(_LSBundleProvider *)v13 provider];
      if (v19)
      {
        v20 = CFRetain(v19);
        v21 = v20;
        if (v20)
        {
          v22 = XCFURLCopyRelativeFileSystemPath(v20, a2, kCFURLPOSIXPathStyle);
          if (!v22)
          {
            CFRelease(v21);
            if (a7)
            {
LABEL_22:
              v25 = v29[1];
              if (v29[1])
              {
                v25 = CFRetain(v29[1]);
              }

              *a7 = v25;
            }

LABEL_25:

            if (v29[1])
            {
              CFRelease(v29[1]);
            }

            v29[1] = 0;
            if (v29[0])
            {
              CFRelease(v29[0]);
            }

            v29[0] = 0;
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            goto LABEL_31;
          }

          CFDictionarySetValue(a5, @"_LSBundleLibraryPath", v22);
          CFRelease(v22);
          CFRelease(v21);
        }
      }
    }

    if ((v14->options & 0x10000000) != 0)
    {
      v26 = xmmword_1817E8F08;
      v27 = 1;
      cf[1] = &v26;
      _LSHoistLibraryItems(a1, cf);
    }

    else
    {
      v23 = &kLibrarySubfolders;
      v24 = 240;
      do
      {
        cf[1] = v23;
        _LSHoistLibraryItems(a1, cf);
        v23 += 24;
        v24 -= 24;
      }

      while (v24);
    }

    if (a7)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_32:
}

void sub_1817847D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  CFRelease(v20);
  CFRelease(v21);
  _LSHoistingState::~_LSHoistingState(&a13);

  _Unwind_Resume(a1);
}

BOOL LSUseLegacyLocalizationList(const __CFDictionary *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [(__CFDictionary *)a1 objectForKey:@"LSExecutablePlatformKey"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v6 = [v4 unsignedIntegerValue];

  v7 = objc_opt_class();
  v8 = [(__CFDictionary *)a1 objectForKey:@"LSExecutableSDKVersion"];
  v9 = v8;
  if (v7 && v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      return 0;
    }
  }

  else if (!v8)
  {
    return 0;
  }

  _LSVersionNumberMakeWithString();
  v13 = 0u;
  v14 = 0u;
  memset(v12, 0, sizeof(v12));
  if (_LSVersionNumberCompare(&v13, v12))
  {
    v13 = 0u;
    v14 = 0u;
    v10 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:v6 sdkVersion:_LSVersionNumberGetDYLDVersion(&v13)];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void _LSPathifyIconKey(_LSBundleProvider *a1, __CFDictionary *a2, const __CFString *a3, const __CFString *a4)
{
  v19 = a1;
  if (!a2 || !a3)
  {
    CFStringGetTypeID();
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(a2, a3);
  TypeID = CFStringGetTypeID();
  if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
  {
    v8 = LSBundleProvider::copyIconResourceURL([(_LSBundleProvider *)v19 provider], Value, 0);
    v9 = v8;
    v10 = gLogRegistrationErrors;
    if (v8 || !gLogRegistrationErrors)
    {
      if (v8)
      {
        v12 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
        if (v12)
        {
          v13 = CFURLCopyFileSystemPath(*[(_LSBundleProvider *)v19 provider], kCFURLPOSIXPathStyle);
          if (v13)
          {
            v14 = [FSNode relativePathToFullPath:v12 fromBasePath:v13];
            if (v14)
            {
              CFDictionarySetValue(a2, @"_LSIconPath", v14);
              CFRelease(v14);
            }

            CFRelease(v13);
          }

          goto LABEL_28;
        }

LABEL_29:
        CFRelease(v9);
        goto LABEL_13;
      }
    }

    else
    {
      v11 = LSBundleProvider::CFBundleCopyResourceURL([(_LSBundleProvider *)v19 provider], Value, 0, 0);
      if (v11 || (v11 = LSBundleProvider::CFBundleCopyResourceURL([(_LSBundleProvider *)v19 provider], Value, @"icns", 0)) != 0)
      {
        CFRelease(v11);
      }

      else
      {
        v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Can't find referenced icon resource %@.", Value);
        if (v18)
        {
          _LSRegistrationWarningPath([(_LSBundleProvider *)v19 bundlePath], v18);
          CFRelease(v18);
        }
      }

      v10 = gLogRegistrationErrors;
    }

    if (v10)
    {
      CFGetTypeID(Value);
      ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
      v16 = "<unknown>";
      if (ClassWithTypeID)
      {
        v17 = *(ClassWithTypeID + 8);
        if (v17)
        {
          v16 = v17;
        }
      }

      v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"For plist key %@, value has class %s (should be CFString).", a3, v16);
      if (v9)
      {
        v12 = CFURLCopyFileSystemPath(*[(_LSBundleProvider *)v19 provider], kCFURLPOSIXPathStyle);
        _LSRegistrationWarningPath(v12, v9);
        if (v12)
        {
LABEL_28:
          CFRelease(v12);
          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_13:
}

void _LSPathifyIconKeysInPlistKey(_LSBundleProvider *a1, __CFDictionary *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v16 = a1;
  if (a2 && a3)
  {
    Value = CFDictionaryGetValue(a2, a3);
    TypeID = CFArrayGetTypeID();
    if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
    {
      v10 = CFArrayGetTypeID();
      if (v10 == CFGetTypeID(Value))
      {
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            v14 = CFDictionaryGetTypeID();
            if (ValueAtIndex && (!v14 || CFGetTypeID(ValueAtIndex) == v14))
            {
              _LSPathifyIconKey(v16, ValueAtIndex, a4, v15);
            }
          }
        }
      }
    }
  }

  else
  {
    CFArrayGetTypeID();
  }
}

void _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(LSBundleProvider *a1, __CFDictionary *a2, const __CFString *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  TypeID = CFArrayGetTypeID();
  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
    v8 = Value;
    if (CFGetTypeID(Value) == TypeID)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v28 = v9;
  if ([v28 count])
  {
    v26 = a2;
    v27 = a3;
    v25 = v28;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v11 = v25;
    v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
    v13 = v12;
    if (v12)
    {
      v14 = *v34;
      do
      {
        v15 = 0;
        do
        {
          if (*v34 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v33 + 1) + 8 * v15);
          v12 = ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke(v12, v16);
          if (v12)
          {
            v12 = [v10 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v12 = [v11 countByEnumeratingWithState:&v33 objects:v37 count:16];
        v13 = v12;
      }

      while (v12);
    }

    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v30 = ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke_2;
    v31 = &__block_descriptor_40_e36___NSDictionary_16__0__NSDictionary_8l;
    v32 = a1;
    v17 = v10;
    v18 = v29;
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v21)
    {
      v22 = *v34;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v34 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = v30(v18, *(*(&v33 + 1) + 8 * i));
          [v19 addObject:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v21);
    }

    CFDictionarySetValue(v26, v27, v19);
  }
}

uint64_t ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = [v5 objectForKey:@"UTTypeReferenceAccessoryFile"];
  v7 = v5;
  if (v6)
  {
    v8 = [v5 mutableCopy];
    [v8 removeObjectForKey:@"UTTypeReferenceAccessoryFile"];
    v9 = LSBundleProvider::copyResourceRelativePath(v4, v6, 0, 0);
    if (v9)
    {
      [v8 setObject:v9 forKey:@"_LSReferenceAccessoryResourcePath"];
    }

    v7 = [v8 mutableCopy];
  }

  return v7;
}

uint64_t (*init_GSIsDocumentRevision(const __CFURL *a1))(const __CFURL *)
{
  v2 = GenerationalStorageLibrary(void)::frameworkLibrary;
  if (!GenerationalStorageLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/GenerationalStorage.framework/GenerationalStorage", 2);
    GenerationalStorageLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "_GSIsDocumentRevision");
  softLink_GSIsDocumentRevision = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

void _LSHoistLibraryItems(LSContext *a1, _LSHoistingState *a2)
{
  v4 = *(*(a2 + 1) + 8);
  if (!v4)
  {
    if (!*a2)
    {
      return;
    }

    v8 = CFRetain(*a2);
    if (!v8)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = strlen(v4);
  v6 = MEMORY[0x1865D5760](*MEMORY[0x1E695E480], v4, v5, 1, *a2);
  v7 = v6;
  if (v6)
  {
    v8 = CFURLResourceIsReachable(v6, 0) ? CFRetain(v7) : 0;
    CFRelease(v7);
    if (v8)
    {
LABEL_10:
      if (_LSGetBasicURLPropertyKeys(void)::once != -1)
      {
        _LSHoistLibraryItems();
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke;
      v9[3] = &__block_descriptor_48_e59_v40__0____CFURLEnumerator__8____CFURL__16____CFError__24_32l;
      v9[4] = a1;
      v9[5] = a2;
      XCFURLEnumerate(v8, 0, _LSGetBasicURLPropertyKeys(void)::result, v9);
      CFRelease(v8);
    }
  }
}