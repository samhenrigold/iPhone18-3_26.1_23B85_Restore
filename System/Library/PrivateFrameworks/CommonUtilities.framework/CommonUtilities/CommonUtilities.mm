id sub_1B23221F0(void *a1)
{
  v1 = a1;
  v4 = objc_msgSend_lastPathComponent(v1, v2, v3);
  v7 = objc_msgSend_stringByDeletingPathExtension(v4, v5, v6);

  v9 = objc_msgSend_stringByAppendingPathComponent_(v1, v8, @"Versions");
  v11 = objc_msgSend_stringByAppendingPathComponent_(v9, v10, @"A");

  v13 = objc_msgSend_stringByAppendingPathComponent_(v11, v12, v7);

  v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15);
  v18 = objc_msgSend_fileExistsAtPath_(v16, v17, v13);

  if (v18)
  {
    v20 = v13;
  }

  else
  {
    v20 = objc_msgSend_stringByAppendingPathComponent_(v1, v19, v7);
  }

  v21 = v20;

  return v21;
}

void *CUTWeakLinkSymbol(const char *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = sub_1B23225B0(v3);
  if (v4)
  {
    v7 = dlsym(v4, a1);
  }

  else
  {
    v8 = objc_msgSend_weakLink(CUTLog, v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136446466;
      v11 = a1;
      v12 = 2114;
      v13 = v3;
      _os_log_impl(&dword_1B2321000, v8, OS_LOG_TYPE_DEFAULT, "Could not load symbol {symbol: %{public}s, framework: %{public}@}", &v10, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

id CUTWeakLinkClass(void *a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  if (!sub_1B23225B0(v4))
  {
    v7 = objc_msgSend_weakLink(CUTLog, v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543618;
      v11 = v3;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_1B2321000, v7, OS_LOG_TYPE_DEFAULT, "Could not load class {class: %{public}@, framework: %{public}@}", &v10, 0x16u);
    }
  }

  v8 = NSClassFromString(v3);

  return v8;
}

void sub_1B23224DC(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_length(@"/", a2, a3);
  v3 = objc_alloc(MEMORY[0x1E695DEC8]);
  v12 = objc_msgSend_stringByAppendingPathComponent_(@"/", v4, @"System/Library/PrivateFrameworks/");
  v6 = objc_msgSend_stringByAppendingPathComponent_(@"/", v5, @"System/Library/Frameworks/");
  v8 = objc_msgSend_stringByAppendingPathComponent_(@"/", v7, @"AppleInternal/Library/Frameworks/");
  v10 = objc_msgSend_initWithObjects_(v3, v9, v12, v6, v8, 0);
  v11 = qword_1ED4AE490;
  qword_1ED4AE490 = v10;
}

void *sub_1B23225B0(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v1 = a1;
  os_unfair_lock_lock(&unk_1ED4AE478);
  v2 = 0x1ED4AE000uLL;
  Mutable = qword_1ED4AE480;
  if (!qword_1ED4AE480)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, 0, 0);
    qword_1ED4AE480 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, v1);
  os_unfair_lock_unlock(&unk_1ED4AE478);
  if (!Value)
  {
    v6 = v1;
    if (qword_1ED4AE488 != -1)
    {
      sub_1B2322938();
    }

    if (objc_msgSend_rangeOfString_(v6, v5, @".framework") == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (objc_msgSend_rangeOfString_(v6, v7, @".dylib") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v39 = v1;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v8 = qword_1ED4AE490;
        v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v40, v46, 16);
        if (v10)
        {
          v12 = v10;
          v13 = *v41;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v41 != v13)
              {
                objc_enumerationMutation(v8);
              }

              v15 = objc_msgSend_stringByAppendingPathComponent_(*(*(&v40 + 1) + 8 * i), v11, v6);
              v17 = objc_msgSend_stringByAppendingPathExtension_(v15, v16, @"framework");

              v20 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v18, v19);
              v22 = objc_msgSend_fileExistsAtPath_(v20, v21, v17);

              if (v22)
              {
                v28 = sub_1B23221F0(v17);

                v1 = v39;
                v2 = 0x1ED4AE000;
                goto LABEL_22;
              }
            }

            v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v40, v46, 16);
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v25 = objc_msgSend_weakLink(CUTLog, v23, v24);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v45 = v6;
          _os_log_impl(&dword_1B2321000, v25, OS_LOG_TYPE_DEFAULT, "Could not find binary path for framework name: %{public}@", buf, 0xCu);
        }

        v28 = 0;
        v1 = v39;
        goto LABEL_26;
      }

      v29 = v6;
    }

    else
    {
      v29 = sub_1B23221F0(v6);
    }

    v28 = v29;
LABEL_22:

    if (v28)
    {
      v30 = v28;
      v33 = objc_msgSend_UTF8String(v30, v31, v32);
      v34 = dlopen(v33, 1);
      if (v34)
      {
        Value = v34;
        os_unfair_lock_lock(&unk_1ED4AE478);
        v35 = CFDictionaryGetValue(*(v2 + 1152), v6);
        if (v35)
        {
          v36 = v35;
          os_unfair_lock_unlock(&unk_1ED4AE478);
          dlclose(Value);
          Value = v36;
        }

        else
        {
          CFDictionarySetValue(*(v2 + 1152), v6, Value);
          os_unfair_lock_unlock(&unk_1ED4AE478);
        }

LABEL_29:

        goto LABEL_30;
      }
    }

LABEL_26:
    v37 = objc_msgSend_weakLink(CUTLog, v26, v27);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *v46 = 138543362;
      v47 = v28;
      _os_log_impl(&dword_1B2321000, v37, OS_LOG_TYPE_DEFAULT, "Could not load framework binary: %{public}@", v46, 0xCu);
    }

    Value = 0;
    goto LABEL_29;
  }

LABEL_30:

  return Value;
}

id CUTProcessNameForPid(int a1)
{
  v7 = *MEMORY[0x1E69E9840];
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v6[2] = v1;
  v6[3] = v1;
  v6[0] = v1;
  v6[1] = v1;
  if (proc_name(a1, v6, 0x40u) < 1)
  {
    v4 = 0;
  }

  else
  {
    v2 = objc_alloc(MEMORY[0x1E696AEC0]);
    v4 = objc_msgSend_initWithUTF8String_(v2, v3, v6);
  }

  return v4;
}

void sub_1B23229E0()
{
  v0 = MGCopyAnswer();
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) == 1)
    {
      byte_1ED4AE468 = 1;
    }

    CFRelease(v1);
  }
}

uint64_t CUTIsInternalInstall()
{
  if (qword_1ED4AE470 != -1)
  {
    sub_1B2322A64();
  }

  return byte_1ED4AE468;
}

void sub_1B2322AB0(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a3 == -536723200)
  {
    v5 = objc_msgSend_sharedInstance(CUTPowerMonitor, a2, a3);
    objc_msgSend_updateBatteryLevelWithBatteryEntry_(v5, v6, a2);

    v10 = objc_msgSend_sharedInstance(CUTPowerMonitor, v7, v8);
    objc_msgSend_updateBatteryConnectedStateWithBatteryEntry_(v10, v9, a2);
  }
}

void sub_1B2322BF4(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_sharedInstance(CUTPowerMonitor, a2, a3);
  objc_msgSend__handlePowerChangedNotificationWithMessageType_notificationID_(v7, v6, a3, a4);
}

void sub_1B2322FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B232300C(uint64_t result, const char *a2, uint64_t a3)
{
  if (a2)
  {
    v3 = result;
    isPrimaryCellular = objc_msgSend__isPrimaryCellular(*(result + 32), a2, a3);
    result = WiFiNetworkIsCaptive();
    *(*(*(v3 + 40) + 8) + 24) = (result != 0) & isPrimaryCellular;
  }

  return result;
}

uint64_t sub_1B23231E0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_1B2323460(uint64_t a1)
{
  if (qword_1EB7AAD60 != -1)
  {
    sub_1B2331938();
  }

  v2 = qword_1EB7AAD58;

  return v2;
}

void cut_dispatch_log_queue(void *a1)
{
  v1 = a1;
  if (qword_1EB7AAE00 != -1)
  {
    sub_1B23312FC();
  }

  v2 = qword_1EB7AADF8;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1B23237EC;
  block[3] = &unk_1E7B20D98;
  v5 = v1;
  v3 = v1;
  dispatch_async(v2, block);
}

void sub_1B2323D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v16 + 40));
  _Unwind_Resume(a1);
}

void sub_1B2323D2C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  os_unfair_lock_lock((*(a1 + 32) + 8));
  WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));

  if (WeakRetained)
  {
    v6 = objc_msgSend_pendingDispatchBlocks(*(a1 + 32), v4, v5);
    v7 = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
    objc_msgSend_removeObject_(v6, v8, v7);
  }

  v9 = objc_msgSend_pendingDispatchBlocks(*(a1 + 32), v4, v5);
  v12 = objc_msgSend_count(v9, v10, v11);

  if (!v12)
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 32);
    *(v13 + 32) = 0;
  }

  os_unfair_lock_unlock((*(a1 + 32) + 8));
  v17 = objc_msgSend_originalBlock(*(a1 + 32), v15, v16);
  v17[2](v17, *(a1 + 40));

  objc_autoreleasePoolPop(v2);
}

void sub_1B2324114(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v6 = objc_msgSend_utilities(CUTLog, v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 138543362;
    v9 = v3;
    _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_INFO, "Reduce -- Finished {result: %{public}@}", &v8, 0xCu);
  }

  objc_msgSend__completeWithResult_(*(a1 + 32), v7, v3);
}

void sub_1B2324590(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CUTResult alloc];
  v6 = objc_msgSend_initWithError_(v4, v5, v3);

  (*(v2 + 16))(v2, v6);
}

void sub_1B2324610(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [CUTResult alloc];
  v6 = objc_msgSend_initWithSuccess_(v4, v5, v3);

  (*(v2 + 16))(v2, v6);
}

void sub_1B2324690(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a2;
  v7 = [CUTResult alloc];
  v10 = objc_msgSend_initWithSuccess_(v7, v8, v6);

  objc_msgSend__reduceWithPending_visited_currentResult_completion_(v3, v9, v4, v5, v10, a1[7]);
}

__CFBundle *CUTGetMainBundleIdentifier()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    MainBundle = CFBundleGetIdentifier(MainBundle);
  }

  return MainBundle;
}

id CUTTemporaryPath()
{
  v0 = NSTemporaryDirectory();
  v2 = objc_msgSend_stringByAppendingPathComponent_(v0, v1, @"CUT");

  v5 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v3, v4);
  v7 = objc_msgSend_fileExistsAtPath_(v5, v6, v2);

  if ((v7 & 1) == 0)
  {
    v10 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v8, v9);
    objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v10, v11, v2, 1, 0, 0);
  }

  return v2;
}

BOOL CUTAuditTokenTaskHasEntitlement(_OWORD *a1, void *a2)
{
  v3 = a2;
  v4 = *MEMORY[0x1E695E480];
  v5 = a1[1];
  *cf.val = *a1;
  *&cf.val[4] = v5;
  v6 = SecTaskCreateWithAuditToken(v4, &cf);
  if (v6)
  {
    v7 = v6;
    *cf.val = 0;
    v8 = SecTaskCopyValueForEntitlement(v6, v3, &cf);
    if (v8)
    {
      v9 = v8;
      v10 = CFGetTypeID(v8);
      v11 = v10 == CFBooleanGetTypeID() && CFBooleanGetValue(v9) != 0;
      CFRelease(v9);
    }

    else
    {
      v11 = 0;
    }

    if (*cf.val)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        sub_1B2330EBC(&cf);
      }

      if (*cf.val)
      {
        CFRelease(*cf.val);
      }
    }

    CFRelease(v7);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      sub_1B2330F40();
    }

    v11 = 0;
  }

  return v11;
}

void CUTMapObjectProperties(void *a1, char a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a1;
  v22 = a3;
  v5 = objc_opt_class();
  if (v5)
  {
    v6 = v5;
    do
    {
      if (v6 == objc_opt_class())
      {
        break;
      }

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v24 = sub_1B2324FEC;
      v25 = &unk_1E7B20CF8;
      v29 = a2;
      v28 = v6;
      v26 = v4;
      v27 = v22;
      v7 = v23;
      outCount = 0;
      v8 = class_copyPropertyList(v6, &outCount);
      if (v8)
      {
        v9 = v8;
        if (outCount)
        {
          for (i = 0; i < outCount; ++i)
          {
            v11 = v9[i];
            Name = property_getName(v11);
            v13 = property_copyAttributeValue(v11, "V");
            v14 = property_copyAttributeValue(v11, "T");
            v16 = objc_msgSend_stringWithCString_encoding_(MEMORY[0x1E696AEC0], v15, Name, 4);
            if (v16)
            {
              if (v13)
              {
                if (v14)
                {
                  v24(v7, v16, v13, v14);
                  free(v14);
                }

                else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v32 = v6;
                  v33 = 1024;
                  v34 = i;
                  _os_log_error_impl(&dword_1B2321000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ObjectPropertyEnumeration failed -- failed to get ivar type {checkpoint: %@, index: %u}", buf, 0x12u);
                }

                free(v13);
                goto LABEL_19;
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 138412546;
                v32 = v6;
                v33 = 1024;
                v34 = i;
                v17 = MEMORY[0x1E69E9C10];
                v18 = "ObjectPropertyEnumeration failed -- failed to get ivar name {checkpoint: %@, index: %u}";
                goto LABEL_15;
              }
            }

            else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v32 = v6;
              v33 = 1024;
              v34 = i;
              v17 = MEMORY[0x1E69E9C10];
              v18 = "ObjectPropertyEnumeration failed -- failed to get property name {checkpoint: %@, index: %u}";
LABEL_15:
              _os_log_error_impl(&dword_1B2321000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
            }

LABEL_19:
          }
        }

        free(v9);
      }

      v6 = objc_msgSend_superclass(v6, v19, v20);
    }

    while (v6);
  }
}

void sub_1B2324FEC(uint64_t a1, void *a2, const char *a3, _BYTE *a4)
{
  v8 = a2;
  v14 = v8;
  if (*(a1 + 56) == 1 && *a4 == 64)
  {
    InstanceVariable = class_getInstanceVariable(*(a1 + 48), a3);
    v10 = object_getIvar(*(a1 + 32), InstanceVariable);
  }

  else
  {
    v10 = objc_msgSend_valueForKey_(*(a1 + 32), v7, v8);
  }

  v11 = v10;
  v13 = (*(*(a1 + 40) + 16))();
  if (v13 != v11)
  {
    objc_msgSend_setValue_forKey_(*(a1 + 32), v12, v13, v14);
  }
}

__CFString *sub_1B23250CC()
{
  v0 = CFUUIDCreate(0);
  v1 = CFUUIDCreateString(0, v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return v1;
}

id sub_1B2325124(void *a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_stringByExpandingTildeInPath(a1, a2, a3);
  v6 = objc_msgSend_stringByStandardizingPath(v3, v4, v5);

  v9 = objc_msgSend_stringByResolvingSymlinksInPath(v6, v7, v8);

  v10 = v9;
  v13 = objc_msgSend_fileURLWithPath_isDirectory_(MEMORY[0x1E695DFF8], v11, v10, 0);
  v14 = v10;
  if (v13)
  {
    v15 = objc_msgSend_URLByResolvingAliasFileAtURL_options_error_(MEMORY[0x1E695DFF8], v12, v13, 0, 0);
    v18 = v15;
    v14 = v10;
    if (v15)
    {
      v14 = objc_msgSend_path(v15, v16, v17);
    }
  }

  return v14;
}

id sub_1B23251FC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_count(a1, a2, a3);
  if (v4)
  {
    v4 = objc_msgSend_objectAtIndex_(a1, v5, 0);
  }

  return v4;
}

BOOL sub_1B2325244(uint64_t a1, const char *a2, void *a3)
{
  v3 = objc_msgSend_cutStringByResolvingAndStandardizingPath(a3, a2, a3);
  v6 = objc_msgSend_pathComponents(v3, v4, v5);
  v19 = 0;
  if (objc_msgSend_hasPrefix_(v3, v7, @"/Volumes"))
  {
    if (objc_msgSend_count(v6, v8, v9) >= 3)
    {
      v11 = objc_msgSend_objectAtIndex_(v6, v10, 2);
      v13 = objc_msgSend_stringByAppendingPathComponent_(@"/Volumes", v12, v11);

      v16 = objc_msgSend_defaultManager(MEMORY[0x1E696AC08], v14, v15);
      v18 = objc_msgSend_fileExistsAtPath_(v16, v17, v13);

      if (!v18)
      {
        v19 = 1;
      }
    }
  }

  return v19;
}

id sub_1B2325324(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_lastPathComponent(a3, v10, v11);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v8, v13, v12);
  v17 = objc_msgSend_cutStringByResolvingAndStandardizingPath(v14, v15, v16);

  if (objc_msgSend__cutIsPathOnMissingVolume_(a1, v18, v17))
  {
    v19 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    while (1)
    {
      v22 = v20;
      v20 = sub_1B2325498(v17, v21, v9);

      v31 = 0;
      v24 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(a1, v23, v20, 1, 0, &v31);
      v25 = v31;
      v27 = v25;
      v28 = 0;
      if ((v24 & 1) == 0 && v25)
      {
        v28 = objc_msgSend_fileExistsAtPath_(a1, v26, v20);
      }

      v29 = (v27 == 0) | v28;

      v19 = 0;
      if ((v29 & 1) == 0 || v21 == 99)
      {
        break;
      }

      v21 = (v21 + 1);
      if ((v28 & 1) == 0)
      {
        v19 = v20;
        break;
      }
    }
  }

  return v19;
}

id sub_1B2325498(void *a1, uint64_t a2, void *a3)
{
  v5 = a1;
  v7 = a3;
  if (a2 <= 0)
  {
    v14 = v5;
  }

  else
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = MEMORY[0x1E696ADA0];
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x1E696AD98], v6, a2);
    v12 = objc_msgSend_localizedStringFromNumber_numberStyle_(v9, v11, v10, 1);
    v14 = objc_msgSend_stringWithFormat_(v8, v13, @"%@-%@", v5, v12);
  }

  if (objc_msgSend_length(v7, v15, v16))
  {
    v18 = objc_msgSend_stringByAppendingPathExtension_(v14, v17, v7);

    v14 = v18;
  }

  return v14;
}

id sub_1B23255A0(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v8 = a4;
  v9 = a5;
  v12 = objc_msgSend_lastPathComponent(a3, v10, v11);
  v14 = objc_msgSend_stringByAppendingPathComponent_(v8, v13, v12);
  v17 = objc_msgSend_cutStringByResolvingAndStandardizingPath(v14, v15, v16);

  if (!objc_msgSend_length(v9, v18, v19))
  {

    v9 = 0;
  }

  v20 = 0;
  v21 = 0;
  while (1)
  {
    v22 = v20;
    v20 = sub_1B2325498(v17, v21, v9);

    if (v21 == 9999)
    {
      break;
    }

    v21 = (v21 + 1);
    if ((objc_msgSend_fileExistsAtPath_(a1, v23, v20) & 1) == 0)
    {
      v25 = v20;
      goto LABEL_8;
    }
  }

  v25 = objc_msgSend_cutStringGUID(MEMORY[0x1E696AEC0], v23, v24);
LABEL_8:
  v26 = v25;

  return v26;
}

id sub_1B23256CC(void *a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v8 = objc_msgSend_cutStringGUID(v4, v6, v7);
  v9 = NSTemporaryDirectory();
  v11 = objc_msgSend_cutCreateUniqueDirectoryWithName_atPath_ofType_(a1, v10, v8, v9, 0);

  v14 = objc_msgSend_lastPathComponent(v5, v12, v13);
  v17 = objc_msgSend_stringByDeletingPathExtension(v14, v15, v16);
  v20 = objc_msgSend_pathExtension(v5, v18, v19);

  v22 = objc_msgSend_cutUniqueFilename_atPath_ofType_(a1, v21, v17, v11, v20);

  return v22;
}

id sub_1B23257C4(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3) <= 0xC800000)
  {
    if (objc_msgSend_length(a1, v4, v5))
    {
      if (!off_1EB7AAE30)
      {
        off_1EB7AAE30 = CUTWeakLinkSymbol("inflate", @"/usr/lib/libz.dylib");
      }

      if (!off_1EB7AAE38)
      {
        off_1EB7AAE38 = CUTWeakLinkSymbol("inflateEnd", @"/usr/lib/libz.dylib");
      }

      if (!off_1EB7AAE40)
      {
        off_1EB7AAE40 = CUTWeakLinkSymbol("inflateInit2_", @"/usr/lib/libz.dylib");
      }

      v9 = objc_msgSend_length(a1, v7, v8);
      v12 = objc_msgSend_length(a1, v10, v11);
      v13 = v12 + (v12 >> 31);
      v15 = objc_msgSend_dataWithLength_(MEMORY[0x1E695DF88], v14, (v9 + v12 / 2));
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v46 = v16;
      v45 = v16;
      v44 = v16;
      v43 = v16;
      v42 = v16;
      v41 = v16;
      v17 = a1;
      v20 = objc_msgSend_bytes(v17, v18, v19);
      LODWORD(v41) = objc_msgSend_length(a1, v21, v22, v20, v41, v42, v43, v44, v45, v46, 0xAAAAAAAAAAAAAAAALL);
      *(&v44 + 1) = 0;
      *&v45 = 0;
      *&v43 = 0;
      v6 = 0;
      if (!off_1EB7AAE40(&v40, 47, "1.2.12", 112))
      {
        do
        {
          v25 = v43;
          if (v25 >= objc_msgSend_length(v15, v23, v24))
          {
            objc_msgSend_increaseLengthBy_(v15, v26, (v13 >> 1));
          }

          v27 = v15;
          v30 = objc_msgSend_mutableBytes(v27, v28, v29);
          *&v42 = v30 + v43;
          v33 = objc_msgSend_length(v15, v31, v32);
          DWORD2(v42) = v33 - v43;
          v34 = off_1EB7AAE30(&v40, 2);
        }

        while (!v34);
        v35 = v34 == 1;
        v36 = off_1EB7AAE38(&v40);
        v6 = 0;
        if (v35 && !v36)
        {
          objc_msgSend_setLength_(v15, v37, v43);
          v6 = objc_msgSend_dataWithData_(MEMORY[0x1E695DEF0], v38, v15);
        }
      }
    }

    else
    {
      v6 = a1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1B23259F8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__CUTDecompressData(a1, a2, a3);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = a1;
  }

  v7 = v6;

  return v7;
}

id sub_1B2325A4C(void *a1, const char *a2, uint64_t a3)
{
  if (objc_msgSend_length(a1, a2, a3))
  {
    v3 = a1;
    if (!off_1EB7AAE48)
    {
      v4 = CUTWeakLinkSymbol("deflate", @"/usr/lib/libz.dylib");
      v3 = a1;
      off_1EB7AAE48 = v4;
    }

    if (!off_1EB7AAE50)
    {
      v5 = CUTWeakLinkSymbol("deflateEnd", @"/usr/lib/libz.dylib");
      v3 = a1;
      off_1EB7AAE50 = v5;
    }

    if (!off_1EB7AAE58)
    {
      v6 = CUTWeakLinkSymbol("deflateInit2_", @"/usr/lib/libz.dylib");
      v3 = a1;
      off_1EB7AAE58 = v6;
    }

    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34 = 0xAAAAAAAAAAAAAAAALL;
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v38 = 0xAAAAAAAAAAAAAAAALL;
    v37 = v7;
    v32 = v7;
    v31 = v7;
    v33 = 0;
    v36 = 0uLL;
    v8 = v3;
    v30 = objc_msgSend_bytes(a1, v9, v10);
    LODWORD(v31) = objc_msgSend_length(a1, v11, v12);
    v13 = 0;
    if (!off_1EB7AAE58(&v30, 0xFFFFFFFFLL, 8, 31, 8, 0, "1.2.12", 112))
    {
      v14 = objc_alloc(MEMORY[0x1E695DF88]);
      v13 = objc_msgSend_initWithLength_(v14, v15, 0x4000);
      do
      {
        v18 = v33;
        if (v18 >= objc_msgSend_length(v13, v16, v17))
        {
          objc_msgSend_increaseLengthBy_(v13, v19, 0x4000);
        }

        v20 = v13;
        v23 = objc_msgSend_mutableBytes(v20, v21, v22);
        *&v32 = v23 + v33;
        v26 = objc_msgSend_length(v13, v24, v25);
        DWORD2(v32) = v26 - v33;
        off_1EB7AAE48(&v30, 4);
      }

      while (!DWORD2(v32));
      off_1EB7AAE50(&v30);
      objc_msgSend_setLength_(v13, v27, v33);
    }

    return v13;
  }

  else
  {

    return a1;
  }
}

uint64_t sub_1B232619C()
{
  qword_1EB7AAD40 = objc_alloc_init(CUTNetworkInterfaceListener);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B232664C(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 32) != v2)
  {
    *(v1 + 32) = v2;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(*(a1 + 32) + 16);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_cutNetworkInterfaceListenerDidWifiStateChange_(v10, v11, *(a1 + 40), v12);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, &v12, v16, 16);
      }

      while (v7);
    }
  }
}

void sub_1B2326800(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (*(v1 + 36) != v2)
  {
    *(v1 + 36) = v2;
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = *(*(a1 + 32) + 16);
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v12 + 1) + 8 * v9);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_cutNetworkInterfaceListenerDidCellStateChange_(v10, v11, *(a1 + 40), v12);
          }

          ++v9;
        }

        while (v7 != v9);
        v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v11, &v12, v16, 16);
      }

      while (v7);
    }
  }
}

void sub_1B23269E4(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = 48;
  if (*(a1 + 48))
  {
    v2 = 40;
  }

  v3 = *(*(a1 + 32) + v2);
  if ((objc_msgSend_isEqualToSet_(v3, v4, *(a1 + 40)) & 1) == 0)
  {
    v5 = 48;
    if (*(a1 + 48))
    {
      v5 = 40;
    }

    objc_storeStrong((*(a1 + 32) + v5), *(a1 + 40));
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = *(*(a1 + 32) + 16);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v14, v18, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v14 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            objc_msgSend_cutNetworkInterfaceListenerDidAddressChange_isIPv6_(v12, v13, *(a1 + 40), *(a1 + 48), v14);
          }
        }

        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v14, v18, 16);
      }

      while (v9);
    }
  }
}

void *sub_1B2326BF8(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(*(a1 + 32) + 16);
  if (!v4)
  {
    v5 = objc_msgSend_weakObjectsHashTable(MEMORY[0x1E696AC70], a2, a3);
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    *(v6 + 16) = v5;

    v4 = *(*(a1 + 32) + 16);
  }

  result = objc_msgSend_containsObject_(v4, a2, *(a1 + 40));
  if ((result & 1) == 0)
  {
    v10 = *(a1 + 40);
    v11 = *(*(a1 + 32) + 16);

    return objc_msgSend_addObject_(v11, v9, v10);
  }

  return result;
}

void sub_1B2326D14(uint64_t a1, const char *a2)
{
  objc_msgSend_removeObject_(*(*(a1 + 32) + 16), a2, *(a1 + 40));
  if (!objc_msgSend_count(*(*(a1 + 32) + 16), v3, v4))
  {
    v5 = *(a1 + 32);
    v6 = *(v5 + 16);
    *(v5 + 16) = 0;
  }
}

void sub_1B2327254(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

uint64_t sub_1B23272B8()
{
  qword_1EB7AAE60 = os_log_create("com.apple.CommonUtilities", "CUTFileCopier");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2327340()
{
  qword_1EB7AADF0 = os_log_create("com.apple.CommonUtilities", "Power");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2327384()
{
  qword_1ED4AE448 = os_log_create("com.apple.CommonUtilities", "Network");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232740C()
{
  qword_1EB7AADE0 = os_log_create("com.apple.CommonUtilities", "WeakLink");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2327494()
{
  qword_1EB7AAE70 = os_log_create("com.apple.CommonUtilities", "CUTXPC");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232751C()
{
  qword_1EB7AAE80 = os_log_create("com.apple.CommonUtilities", "utilities");

  return MEMORY[0x1EEE66BB8]();
}

id cut_backtrace()
{
  __b[66] = *MEMORY[0x1E69E9840];
  v0 = objc_alloc(MEMORY[0x1E695DF70]);
  v2 = objc_msgSend_initWithCapacity_(v0, v1, 66);
  memset(__b, 170, 0x210uLL);
  v3 = backtrace(__b, 66);
  v4 = backtrace_symbols(__b, v3);
  v5 = v4;
  if (v3 >= 2)
  {
    v6 = v3 - 1;
    v7 = (v4 + 1);
    do
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = *v7++;
      v11 = objc_msgSend_initWithUTF8String_(v8, v10, v9);
      objc_msgSend_addObject_(v2, v12, v11);

      --v6;
    }

    while (v6);
  }

  free(v5);
  if (objc_msgSend_count(v2, v13, v14))
  {
    v17 = objc_msgSend_count(v2, v15, v16);
    v19 = objc_msgSend_subarrayWithRange_(v2, v18, 1, v17 - 1);
  }

  else
  {
    v19 = v2;
  }

  v20 = v19;

  return v20;
}

void cut_non_arc_os_release(id *a1)
{
  if (a1)
  {
    v2 = *a1;
    v1 = objc_opt_self();
  }
}

void sub_1B23276FC()
{
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_UTILITY, 0);
  v1 = dispatch_queue_create("CUTLog.oversize.queue", v0);
  v2 = qword_1EB7AADF8;
  qword_1EB7AADF8 = v1;
}

void sub_1B23279A8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = objc_msgSend_result(*(a1 + 32), a2, a3);
  (*(v3 + 16))(v3, v4);
}

_xpc_connection_s *CUTXPCCreateServerConnection(const char *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1 && *a1)
  {
    mach_service = xpc_connection_create_mach_service(a1, MEMORY[0x1E69E96A0], 1uLL);
  }

  else
  {
    mach_service = xpc_connection_create(0, MEMORY[0x1E69E96A0]);
  }

  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1B2328110;
  handler[3] = &unk_1E7B20DE8;
  v14 = mach_service;
  v25 = v9;
  v26 = v10;
  v23 = v14;
  v24 = v12;
  v27 = v11;
  v15 = v11;
  v16 = v12;
  v17 = v10;
  v18 = v9;
  xpc_connection_set_event_handler(v14, handler);
  v19 = v27;
  v20 = v14;

  return v14;
}

void sub_1B2328110(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1B2746560]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 40);
    v7 = *(a1 + 32);
    v11 = v3;
    v12 = v8;
    v13 = v9;
    v16 = v10;
    if (v11 == MEMORY[0x1E69E9E20])
    {
      v31 = objc_msgSend_xpc(CUTLog, v14, v15);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
      {
        sub_1B233152C();
      }

      v18 = v12;
      if (!v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      if (v11 != MEMORY[0x1E69E9E38])
      {
        MEMORY[0x1B2746560](v11);
        v34 = objc_msgSend_xpc(CUTLog, v32, v33);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          sub_1B2331478();
        }

        exit(0);
      }

      v17 = objc_msgSend_xpc(CUTLog, v14, v15);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1B23314EC();
      }

      v18 = v13;
      if (!v13)
      {
        goto LABEL_11;
      }
    }

    v18[2]();
LABEL_11:

LABEL_12:
    goto LABEL_16;
  }

  if (v4 != MEMORY[0x1E69E9E68])
  {
    v7 = objc_msgSend_xpc(CUTLog, v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331408();
    }

    goto LABEL_12;
  }

  v19 = *(a1 + 64);
  v20 = *(a1 + 32);
  v21 = *(a1 + 40);
  v22 = v20;
  v23 = v3;
  v24 = v19;
  v25 = v21;
  v26 = v23;
  if (!v25)
  {
    v25 = MEMORY[0x1E69E96A0];
    v27 = MEMORY[0x1E69E96A0];
  }

  xpc_connection_set_target_queue(v26, v25);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = sub_1B2329184;
  handler[3] = &unk_1E7B20E58;
  v37 = v26;
  v38 = v24;
  v36 = v22;
  v28 = v24;
  v29 = v22;
  v30 = v26;
  xpc_connection_set_event_handler(v30, handler);
  xpc_connection_resume(v30);

LABEL_16:
}

void CUTXPCConnectionSetEventHandlers(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = sub_1B23284C4;
  v15[3] = &unk_1E7B20E10;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v11 = v10;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  xpc_connection_set_event_handler(v14, v15);
}

void sub_1B23284C4(void *a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x1B2746560]();
  if (v4 != MEMORY[0x1E69E9E98])
  {
    if (v4 != MEMORY[0x1E69E9E80])
    {
      v7 = objc_msgSend_xpc(CUTLog, v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        sub_1B233156C(a1);
      }

LABEL_9:

      goto LABEL_21;
    }

    v10 = a1[7];
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = *(v10 + 16);
LABEL_20:
    v11();
    goto LABEL_21;
  }

  if (v3 == MEMORY[0x1E69E9E18])
  {
    v12 = objc_msgSend_xpc(CUTLog, v5, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      sub_1B2331724(a1);
    }

    v13 = a1[5];
    if (v13)
    {
LABEL_19:
      v11 = *(v13 + 16);
      goto LABEL_20;
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E9E20];
    v7 = objc_msgSend_xpc(CUTLog, v5, v6);
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_FAULT);
    if (v3 != v8)
    {
      if (v9)
      {
        sub_1B23315F8(a1, v3);
      }

      goto LABEL_9;
    }

    if (v9)
    {
      sub_1B23316A8(a1);
    }

    v13 = a1[6];
    if (v13)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
}

_xpc_connection_s *CUTXPCCreateConnectionForServiceWithQueue(char a1, int a2, const char *a3, void *a4, void *a5, void *a6)
{
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (a3)
  {
    if (!v11)
    {
      v14 = objc_alloc(MEMORY[0x1E696AEC0]);
      v16 = objc_msgSend_initWithFormat_(v14, v15, @"%s_connection_queue", a3);
      v17 = v16;
      v20 = objc_msgSend_UTF8String(v17, v18, v19);
      v11 = dispatch_queue_create(v20, 0);
    }

    if (a1)
    {
      mach_service = xpc_connection_create_mach_service(a3, v11, 0);
    }

    else
    {
      mach_service = xpc_connection_create(a3, v11);
    }

    v24 = mach_service;
    if (mach_service)
    {
      if (a2)
      {
        CUTXPCConnectionSetEventHandlers(mach_service, v12, v13, 0);
        xpc_connection_resume(v24);
      }
    }

    else
    {
      v25 = objc_msgSend_xpc(CUTLog, v22, v23);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
      {
        sub_1B23317A0();
      }
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t CUTInsertBoolsToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a9;
  if (a2)
  {
    do
    {
      xpc_dictionary_set_BOOL(xdict, a2, *v12 != 0);
      v10 = (v12 + 1);
      v12 += 2;
      a2 = *v10;
    }

    while (*v10);
  }

  return 1;
}

uint64_t CUTInsertIntsToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a9;
  if (a2)
  {
    do
    {
      xpc_dictionary_set_int64(xdict, a2, *v12);
      v10 = (v12 + 1);
      v12 += 2;
      a2 = *v10;
    }

    while (*v10);
  }

  return 1;
}

uint64_t CUTInsertDatasToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v24 = &a9;
  if (a2)
  {
    do
    {
      v11 = v24;
      v25 = v24 + 1;
      v14 = *v11;
      if (!v14)
      {
        v14 = objc_msgSend_data(MEMORY[0x1E695DEF0], v12, v13);
      }

      v15 = v14;
      v18 = objc_msgSend_bytes(v15, v16, v17);
      v21 = objc_msgSend_length(v14, v19, v20);
      xpc_dictionary_set_data(v10, a2, v18, v21);

      v22 = v25;
      v24 = v25 + 1;
      a2 = *v22;
    }

    while (*v22);
  }

  return 1;
}

uint64_t CUTInsertNSStringsToXPCDictionary(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = a1;
  v18 = &a9;
  if (a2)
  {
    do
    {
      v11 = v18;
      v19 = v18 + 1;
      v12 = *v11;
      v13 = v12;
      if (v12)
      {
        CStringPtr = CFStringGetCStringPtr(v12, 0x8000100u);
        if (CStringPtr)
        {
          xpc_dictionary_set_string(v10, a2, CStringPtr);
        }

        else
        {
          maxBufLen = 0;
          v21.length = CFStringGetLength(v13);
          v21.location = 0;
          CFStringGetBytes(v13, v21, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
          v15 = malloc_type_malloc(maxBufLen + 1, 0x100004077774924uLL);
          v22.length = CFStringGetLength(v13);
          v22.location = 0;
          CFStringGetBytes(v13, v22, 0x8000100u, 0, 0, v15, maxBufLen, 0);
          v15[maxBufLen] = 0;
          xpc_dictionary_set_string(v10, a2, v15);
          free(v15);
        }
      }

      v16 = v19;
      v18 = v19 + 1;
      a2 = *v16;
    }

    while (*v16);
  }

  return 1;
}

uint64_t CUTInsertDoublesToXPCDictionary(xpc_object_t xdict, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = &a9;
  if (a2)
  {
    do
    {
      xpc_dictionary_set_double(xdict, a2, *v12);
      v10 = (v12 + 1);
      v12 += 2;
      a2 = *v10;
    }

    while (*v10);
  }

  return 1;
}

int64_t CUTGetXPCIntFromDictionary(void *a1, const char *a2)
{
  if (a2)
  {
    return xpc_dictionary_get_int64(a1, a2);
  }

  else
  {
    return 0;
  }
}

id CUTGetXPCDataFromDictionary(void *a1, const char *a2)
{
  if (a2)
  {
    length = 0;
    data = xpc_dictionary_get_data(a1, a2, &length);
    if (data)
    {
      v4 = data;
      v5 = objc_alloc(MEMORY[0x1E695DEF0]);
      data = objc_msgSend_initWithBytes_length_(v5, v6, v4, length);
    }
  }

  else
  {
    data = 0;
  }

  return data;
}

char *CUTGetXPCStringFromDictionary(void *a1, char *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    string = xpc_dictionary_get_string(v3, a2);
    a2 = string;
    if (string)
    {
      v6 = strlen(string);
      a2 = CFStringCreateWithBytes(*MEMORY[0x1E695E4A8], a2, v6, 0x8000100u, 0);
    }
  }

  return a2;
}

double CUTGetXPCDoubleFromDictionary(xpc_object_t xdict, const char *key)
{
  if (key)
  {
    return xpc_dictionary_get_double(xdict, key);
  }

  else
  {
    return 0.0;
  }
}

id CUTGetXPCConnectionContext(_xpc_connection_s *a1)
{
  v1 = xpc_connection_get_context(a1);
  v4 = objc_msgSend_object(v1, v2, v3);

  return v4;
}

void CUTSetXPCConnectionContext(void *a1, void *a2)
{
  connection = a1;
  v3 = a2;
  context = xpc_connection_get_context(connection);
  v5 = objc_opt_self();

  if (v3)
  {
    v7 = objc_msgSend_weakRefWithObject_(CUTWeakReference, v6, v3);
  }

  else
  {
    v7 = 0;
  }

  xpc_connection_set_context(connection, v7);
}

id CUTCreateXPCObjectFromDictionary(void *a1)
{
  v1 = a1;
  if (objc_msgSend_count(v1, v2, v3))
  {
    v4 = _CFXPCCreateXPCMessageWithCFObject();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CUTCreateDictionaryFromXPCObject(void *a1)
{
  if (a1)
  {
    a1 = _CFXPCCreateCFObjectFromXPCMessage();
    v1 = vars8;
  }

  return a1;
}

id CUTDataForPropertyList(void *a1)
{
  v2 = a1;
  if (v2)
  {
    v4 = objc_msgSend_dataWithPropertyList_format_options_error_(MEMORY[0x1E696AE40], v1, v2, 200, 0, 0);
    if (!v4)
    {
      objc_msgSend_raise_format_(MEMORY[0x1E695DF30], v3, *MEMORY[0x1E695D940], @"argument can't be converted to a property list");
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id CUTPropertyListFromNSData(void *a1)
{
  v1 = a1;
  if (objc_msgSend_length(v1, v2, v3))
  {
    v5 = objc_msgSend_propertyListWithData_options_format_error_(MEMORY[0x1E696AE40], v4, v1, 0, 0, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id CUTSafeArrayOfStrings(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v1 = 0;
  }

  objc_opt_class();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v1;
  v4 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v3, &v11, v15, 16);
  v5 = v2;
  if (v4)
  {
    v6 = v4;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v2);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          v5 = 0;
          goto LABEL_13;
        }
      }

      v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v2, v9, &v11, v15, 16);
      if (v6)
      {
        continue;
      }

      break;
    }

    v5 = v2;
  }

LABEL_13:

  return v5;
}

void CUTXPCAlertv(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = a1;
    v5 = [v3 alloc];
    v21 = objc_msgSend_initWithFormat_arguments_(v5, v6, v4, a2);

    v7 = CUTXPCCreateConnectionForServiceWithQueue(1, 1, "com.apple.aps.alertprovider.xpc", 0, &unk_1F2998D18, 0);
    if (v7)
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      CUTInsertIntsToXPCDictionary(v8, "type", v9, v10, v11, v12, v13, v14, 0);
      CUTInsertNSStringsToXPCDictionary(v8, "text", v15, v16, v17, v18, v19, v20, v21);
      xpc_connection_send_message(v7, v8);
    }
  }
}

void sub_1B232910C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_xpc(CUTLog, a2, a3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    sub_1B2331810();
  }
}

const char *sub_1B23291C8(uint64_t a1)
{
  v2 = *(a1 + 32);

  return xpc_connection_get_name(v2);
}

uint64_t sub_1B232931C()
{
  qword_1EB7AAD48 = objc_alloc_init(CUTReporting);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B2329474(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend__rtcReportingSession(CUTReporting, a2, a3);
  if (v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = sub_1B2329540;
    v6[3] = &unk_1E7B20E88;
    v8 = *(a1 + 32);
    v7 = v4;
    objc_msgSend_startConfigurationWithCompletionHandler_(v7, v5, v6);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

uint64_t sub_1B2329540(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

void sub_1B23297C0()
{
  v0 = qword_1EB7AAD70;
  qword_1EB7AAD70 = &unk_1F299BB40;
}

void sub_1B2329888(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = (*(a1 + 32) + 8);

  os_unfair_lock_unlock(v4);
}

void sub_1B23299A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = *(a1 + 32);

    MEMORY[0x1EEE66B58](v4, sel__fullfillSeal_withSession_, v3);
  }

  else
  {
    v6 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], 0, @"CUTReportingErrorDomain", 3, 0);
    objc_msgSend__failSeal_withError_(v2, v5, v3, v6);
  }
}

void sub_1B2329C18()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v0 = dispatch_queue_create("CUTReporting.queue", v2);
  v1 = qword_1EB7AAD58;
  qword_1EB7AAD58 = v0;
}

void *sub_1B2329C80()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoClientType", @"RTCReporting");
  qword_1EB7AADC0 = result;
  return result;
}

void *sub_1B2329CB0()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoClientVersion", @"RTCReporting");
  qword_1EB7AADB0 = result;
  return result;
}

void *sub_1B2329CE0()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoSessionID", @"RTCReporting");
  qword_1EB7AADA0 = result;
  return result;
}

void *sub_1B2329D10()
{
  result = CUTWeakLinkSymbol("kRTCReportingSessionInfoBatchEvent", @"RTCReporting");
  qword_1EB7AADD0 = result;
  return result;
}

void *sub_1B2329D40()
{
  result = CUTWeakLinkSymbol("kRTCReportingUserInfoClientName", @"RTCReporting");
  qword_1EB7AAD90 = result;
  return result;
}

void *sub_1B2329D70()
{
  result = CUTWeakLinkSymbol("kRTCReportingUserInfoServiceName", @"RTCReporting");
  qword_1EB7AAD80 = result;
  return result;
}

uint64_t sub_1B2329DA4()
{
  qword_1EB7AAE10 = objc_alloc_init(CUTTelephonyManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232A140(uint64_t a1, const char *a2, uint64_t a3)
{
  objc_msgSend_lock(*(*(a1 + 32) + 16), a2, a3);
  byte_1EB7AAE08 = 0;
  objc_msgSend___adjustFastDormancyTokens(*(a1 + 32), v4, v5);
  v8 = *(*(a1 + 32) + 16);

  return objc_msgSend_unlock(v8, v6, v7);
}

void sub_1B232A6A0(int a1, const char *a2, uint64_t a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_network(CUTLog, a2, a3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if ((a1 & 0x40000) != 0)
    {
      v6 = 87;
    }

    else
    {
      v6 = 45;
    }

    v15[0] = 67111426;
    v15[1] = v6;
    if ((a1 & 2) != 0)
    {
      v7 = 82;
    }

    else
    {
      v7 = 45;
    }

    v16 = 1024;
    v17 = v7;
    if (a1)
    {
      v8 = 116;
    }

    else
    {
      v8 = 45;
    }

    v18 = 1024;
    v19 = v8;
    if ((a1 & 4) != 0)
    {
      v9 = 99;
    }

    else
    {
      v9 = 45;
    }

    v20 = 1024;
    v21 = v9;
    if ((a1 & 8) != 0)
    {
      v10 = 67;
    }

    else
    {
      v10 = 45;
    }

    v22 = 1024;
    if ((a1 & 0x10) != 0)
    {
      v11 = 105;
    }

    else
    {
      v11 = 45;
    }

    v23 = v10;
    v24 = 1024;
    if ((a1 & 0x20) != 0)
    {
      v12 = 68;
    }

    else
    {
      v12 = 45;
    }

    v25 = v11;
    if ((a1 & 0x10000) != 0)
    {
      v13 = 108;
    }

    else
    {
      v13 = 45;
    }

    v26 = 1024;
    v27 = v12;
    if ((a1 & 0x20000) != 0)
    {
      v14 = 100;
    }

    else
    {
      v14 = 45;
    }

    v28 = 1024;
    v29 = v13;
    v30 = 1024;
    v31 = v14;
    v32 = 2080;
    v33 = a2;
    _os_log_impl(&dword_1B2321000, v5, OS_LOG_TYPE_DEFAULT, "Reachability Flag Status: %c%c %c%c%c%c%c%c%c %s\n", v15, 0x42u);
  }
}

uint64_t sub_1B232A97C()
{
  qword_1ED4AE438 = objc_alloc_init(CUTWiFiManager);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B232AD40(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_network(CUTLog, a2, a3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_1B2321000, v4, OS_LOG_TYPE_DEFAULT, "Notified about link change, running network block async", v7, 2u);
  }

  return objc_msgSend__updateIsWiFiAssociatedAsync_(*(a1 + 32), v5, 1);
}

void sub_1B232B358(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_network(CUTLog, a2, a3);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_1B2331B50();
  }
}

void sub_1B232B648(const __SCDynamicStore *a1)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v5 = *MEMORY[0x1E69822F0];
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(v2, *MEMORY[0x1E69822F0], *MEMORY[0x1E6982338]);
  CFArrayAppendValue(Mutable, NetworkGlobalEntity);
  v7 = SCDynamicStoreKeyCreateNetworkGlobalEntity(v2, v5, *MEMORY[0x1E6982340]);
  CFArrayAppendValue(Mutable, v7);
  v8 = CFArrayCreateMutable(v2, 0, v3);
  v9 = *MEMORY[0x1E6982320];
  NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(v2, v5, *MEMORY[0x1E69822E0], *MEMORY[0x1E6982320]);
  CFArrayAppendValue(v8, NetworkServiceEntity);
  CFRelease(NetworkServiceEntity);
  v11 = SCDynamicStoreCopyMultiple(a1, Mutable, v8);
  CFRelease(Mutable);
  CFRelease(v8);
  if (!v11)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if (!NetworkGlobalEntity)
  {
    goto LABEL_7;
  }

  Value = CFDictionaryGetValue(v11, NetworkGlobalEntity);
  v15 = Value;
  if (!Value)
  {
LABEL_8:
    v17 = 0;
    goto LABEL_9;
  }

  v16 = CFGetTypeID(Value);
  if (v16 != CFDictionaryGetTypeID())
  {
LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v17 = CFDictionaryGetValue(v15, *MEMORY[0x1E6982300]);
  v15 = CFDictionaryGetValue(v15, *MEMORY[0x1E6982308]);
LABEL_9:
  if (v17)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  if (v7)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 1;
  }

  if (!v21)
  {
    v22 = CFDictionaryGetValue(v11, v7);
    if (v22)
    {
      v23 = v22;
      v24 = CFGetTypeID(v22);
      if (v24 == CFDictionaryGetTypeID())
      {
        v17 = CFDictionaryGetValue(v23, *MEMORY[0x1E6982300]);
        v15 = CFDictionaryGetValue(v23, *MEMORY[0x1E6982308]);
      }
    }
  }

  v18 = 0;
  if (v17 && v15)
  {
    v25 = SCDynamicStoreKeyCreateNetworkServiceEntity(v2, v5, v15, v9);
    v26 = CFDictionaryGetValue(v11, v25);
    CFRelease(v25);
    v18 = v26 != 0;
  }

LABEL_25:
  if (NetworkGlobalEntity)
  {
    CFRelease(NetworkGlobalEntity);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  v28 = objc_msgSend_sharedInstance(CUTWiFiManager, v12, v13);
  objc_msgSend_setIsPrimaryCellularCached_(v28, v27, v18);
}

void sub_1B232BCDC(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_network(CUTLog, a2, a3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v41 = a2;
    _os_log_impl(&dword_1B2321000, v5, OS_LOG_TYPE_DEFAULT, "Found current network: %p", buf, 0xCu);
  }

  v9 = objc_msgSend__ssidFromNetwork_(*(a1 + 32), v6, a2);
  if (v9)
  {
    v10 = objc_msgSend_network(CUTLog, v7, v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138477827;
      v41 = v9;
      _os_log_impl(&dword_1B2321000, v10, OS_LOG_TYPE_DEFAULT, "We are associated to %{private}@", buf, 0xCu);
    }

    v12 = objc_msgSend_dictionaryWithObject_forKey_(MEMORY[0x1E695DF20], v11, v9, @"@CUTWiFiManagerSSID");
  }

  else
  {
    v12 = 0;
  }

  objc_msgSend_lock(*(*(a1 + 32) + 32), v7, v8);
  v15 = objc_msgSend_network(CUTLog, v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v41 = a2;
    _os_log_impl(&dword_1B2321000, v15, OS_LOG_TYPE_DEFAULT, "Network change: %{private}@", buf, 0xCu);
  }

  v32 = v9;

  v18 = objc_msgSend_network(CUTLog, v16, v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = @"YES";
    if (!a2)
    {
      v19 = @"NO";
    }

    *buf = 138412290;
    v41 = v19;
    _os_log_impl(&dword_1B2321000, v18, OS_LOG_TYPE_DEFAULT, "Wifi is associated? %@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v20 = *(*(a1 + 32) + 40);
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v35, v39, 16);
  if (v22)
  {
    v23 = v22;
    v24 = *v36;
    v25 = MEMORY[0x1E69E96A0];
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v36 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v27 = *(*(&v35 + 1) + 8 * i);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1B232C030;
        block[3] = &unk_1E7B20F70;
        v28 = *(a1 + 32);
        block[4] = v27;
        block[5] = v28;
        v34 = v12;
        dispatch_async(v25, block);
      }

      v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v29, &v35, v39, 16, v32);
    }

    while (v23);
  }

  objc_msgSend_unlock(*(*(a1 + 32) + 32), v30, v31);
}

uint64_t sub_1B232C030(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v3, sel_cutWiFiManagerLinkDidChange_context_, v4);
  }

  return result;
}

void sub_1B232C3C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  objc_msgSend_lock(*(*(a1 + 32) + 32), a2, a3);
  v7 = *(a1 + 32);
  v8 = *(v7 + 56);
  if (v8)
  {
    CFRetain(*(v7 + 56));
    v11 = objc_msgSend_network(CUTLog, v9, v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = v8;
      _os_log_impl(&dword_1B2321000, v11, OS_LOG_TYPE_DEFAULT, "Found cached network: %p", buf, 0xCu);
    }

    objc_msgSend_unlock(*(*(a1 + 32) + 32), v12, v13);
LABEL_15:
    objc_msgSend_setCurrentNetwork_(*(a1 + 32), v14, v8);
    (*(*(a1 + 40) + 16))();
    if (v8)
    {
      CFRelease(v8);
    }

    return;
  }

  objc_msgSend_unlock(*(v7 + 32), v5, v6);
  if ((*(a1 + 48) & 1) == 0)
  {
    if (a2)
    {
      v8 = WiFiDeviceClientCopyCurrentNetwork();
    }

    else
    {
      v8 = 0;
    }

    v31 = objc_msgSend_network(CUTLog, v15, v16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v39 = v8;
      _os_log_impl(&dword_1B2321000, v31, OS_LOG_TYPE_DEFAULT, "Sync query found network: %p", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v32 = MEMORY[0x1E69E9820];
  v33 = 3221225472;
  v34 = sub_1B232C654;
  v35 = &unk_1E7B20FC0;
  v17 = *(a1 + 40);
  v36 = *(a1 + 32);
  v37 = v17;
  v20 = MEMORY[0x1B2746240](&v32);
  if (a2)
  {
    objc_msgSend_lock(*(*(a1 + 32) + 32), v18, v19, v32, v33, v34, v35, v36);
    v21 = *(a1 + 32);
    v22 = *(v21 + 32);
    v23 = *(v21 + 112);
    objc_msgSend_unlock(v22, v24, v25);
    v28 = objc_msgSend_copy(v20, v26, v27);

    v29 = MEMORY[0x1B2746240](v28);
    WiFiDeviceClientCopyCurrentNetworkAsync();

    v30 = objc_opt_self();
    v20 = v28;
  }
}

void sub_1B232C654(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_setCurrentNetwork_(*(a1 + 32), a2, a2);
  if (*(a1 + 40))
  {
    v6 = objc_msgSend_network(CUTLog, v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      v8 = a2;
      _os_log_impl(&dword_1B2321000, v6, OS_LOG_TYPE_DEFAULT, "async query found network: %p", &v7, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  if (a2)
  {
    CFRelease(a2);
  }
}

uint64_t sub_1B232C740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = a3;
    a1 = (*(a3 + 16))(a3, a2);
    a3 = v5;
    v3 = vars8;
  }

  return MEMORY[0x1EEE66BE0](a1, a2, a3);
}

uint64_t sub_1B232CBA4(int a1, CFDictionaryRef theDict, void *a3)
{
  v12 = -1431655766;
  valuePtr = -1431655766;
  Value = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE");
  v6 = CFBooleanGetValue(Value);
  v7 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_REASON");
  CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
  v8 = CFDictionaryGetValue(theDict, @"DRIVER_AVAILABLE_SUBREASON");
  result = CFNumberGetValue(v8, kCFNumberIntType, &v12);
  if (v6)
  {
    return objc_msgSend__performPowerReading(a3, v10, v11);
  }

  return result;
}

void sub_1B232CC3C(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"LINK_CHANGED_NETWORK");

    MEMORY[0x1EEE66B58](a3, sel__setCurrentNetwork_, Value);
  }
}

uint64_t sub_1B232CCA0(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v3, sel_cutWiFiManagerDeviceAttached_, v4);
  }

  return result;
}

void sub_1B232CECC(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (v5)
  {
    objc_msgSend_lock(*(*(a1 + 32) + 32), v3, v4);
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(*(a1 + 32) + 40);
    v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v20, v24, 16);
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      v11 = MEMORY[0x1E69E96A0];
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1B232D06C;
          block[3] = &unk_1E7B20F70;
          v14 = *(a1 + 32);
          block[4] = v13;
          block[5] = v14;
          v19 = v5;
          dispatch_async(v11, block);

          ++v12;
        }

        while (v9 != v12);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v15, &v20, v24, 16);
      }

      while (v9);
    }

    objc_msgSend_unlock(*(*(a1 + 32) + 32), v16, v17);
  }
}

uint64_t sub_1B232D06C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v3, sel_cutWiFiManager_generatedPowerReading_, v4);
  }

  return result;
}

void sub_1B232D188(uint64_t a1, const char *a2, uint64_t a3)
{
  if (a2 && objc_msgSend_isWiFiAssociated(*(a1 + 32), a2, a3))
  {
    valuePtr = 115;
    v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v6 = WiFiDeviceClientCopyProperty();
    v8 = objc_msgSend_objectForKey_(v6, v7, @"INSTANT_ASSOCIATED_SLEEP_DURATION");
    v11 = objc_msgSend_integerValue(v8, v9, v10);

    v13 = objc_msgSend_objectForKey_(v6, v12, @"INSTANT_UNASSOCIATED_SLEEP_DURATION");
    v16 = objc_msgSend_integerValue(v13, v14, v15);

    if (v11 > 0 || v16 >= 1)
    {
      v19 = objc_msgSend_objectForKey_(v6, v17, @"CACHED_ASSOCIATED_SLEEP_DURATION");
      v22 = objc_msgSend_unsignedIntegerValue(v19, v20, v21);

      v24 = objc_msgSend_objectForKey_(v6, v23, @"CACHED_TIME_STAMP");
      v27 = objc_msgSend_unsignedIntegerValue(v24, v25, v26);

      v29 = objc_msgSend_objectForKey_(v6, v28, @"INSTANT_ASSOCIATED_SLEEP_DURATION");
      v32 = objc_msgSend_unsignedIntegerValue(v29, v30, v31);

      v34 = objc_msgSend_objectForKey_(v6, v33, @"INSTANT_TIME_STAMP");
      v37 = objc_msgSend_unsignedIntegerValue(v34, v35, v36);

      v40 = v37 >= v27 ? v37 - v27 : 0;
      if (v40 >> 5 >= 0x753)
      {
        if (v32 >= v22)
        {
          v41 = v32 - v22;
        }

        else
        {
          v41 = 0;
        }

        v42 = objc_msgSend_dictionary(MEMORY[0x1E695DF90], v38, v39);
        v44 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v43, v40);
        objc_msgSend_setObject_forKey_(v42, v45, v44, @"@CUTWiFiManagerTotalDuration");

        v47 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v46, v41);
        objc_msgSend_setObject_forKey_(v42, v48, v47, @"@CUTWiFiManagerPMDuration");

        v49 = MEMORY[0x1E696AD98];
        objc_msgSend__wifiMeasurementErrorForInterval_(*(a1 + 32), v50, v51, v40 / 1000.0);
        v54 = objc_msgSend_numberWithDouble_(v49, v52, v53);
        objc_msgSend_setObject_forKey_(v42, v55, v54, @"@CUTWiFiManagerMaxMeasurementError");

        v57 = objc_msgSend_objectForKey_(v6, v56, @"CACHED_ASSOCIATED_SLEEP_DURATION");
        v60 = objc_msgSend_unsignedIntegerValue(v57, v58, v59);

        v62 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v61, v60);
        objc_msgSend_setObject_forKey_(v42, v63, v62, @"CACHED_ASSOCIATED_SLEEP_DURATION");

        v65 = objc_msgSend_objectForKey_(v6, v64, @"CACHED_TIME_STAMP");
        v68 = objc_msgSend_unsignedIntValue(v65, v66, v67);

        v70 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v69, v68);
        objc_msgSend_setObject_forKey_(v42, v71, v70, @"CACHED_TIME_STAMP");

        v73 = objc_msgSend_objectForKey_(v6, v72, @"INSTANT_ASSOCIATED_SLEEP_DURATION");
        v76 = objc_msgSend_unsignedIntegerValue(v73, v74, v75);

        v78 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v77, v76);
        objc_msgSend_setObject_forKey_(v42, v79, v78, @"INSTANT_ASSOCIATED_SLEEP_DURATION");

        v81 = objc_msgSend_objectForKey_(v6, v80, @"INSTANT_TIME_STAMP");
        v84 = objc_msgSend_unsignedIntegerValue(v81, v82, v83);

        v86 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x1E696AD98], v85, v84);
        objc_msgSend_setObject_forKey_(v42, v87, v86, @"INSTANT_TIME_STAMP");

        v88 = *(a1 + 32);
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = sub_1B232D5A4;
        v91[3] = &unk_1E7B21038;
        v91[4] = v88;
        v92 = v42;
        v93 = *(a1 + 40);
        v89 = v42;
        objc_msgSend__performCurrentNetworkBlock_withDevice_async_(v88, v90, v91, a2, 1);
      }
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

uint64_t sub_1B232D5A4(uint64_t a1, const char *a2)
{
  v4 = objc_msgSend__ssidFromNetwork_(*(a1 + 32), a2, a2);
  v7 = v4;
  if (v4)
  {
    objc_msgSend_setObject_forKey_(*(a1 + 40), v3, v4, @"@CUTWiFiManagerSSID");
    v4 = v7;
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = (*(v5 + 16))(v5, *(a1 + 40), v4);
    v4 = v7;
  }

  return MEMORY[0x1EEE66BE0](v5, v3, v4);
}

void sub_1B232D714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B232D72C(uint64_t a1, const char *a2)
{
  *(*(*(a1 + 40) + 8) + 40) = objc_msgSend__ssidFromNetwork_(*(a1 + 32), a2, a2);

  return MEMORY[0x1EEE66BB8]();
}

void sub_1B232DC80(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

id sub_1B232DCA8(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(CUTUnsafePromiseSeal);
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = sub_1B232DDA0;
  v16 = &unk_1E7B210D8;
  v17 = v5;
  v18 = v3;
  v6 = v3;
  v7 = v5;
  objc_msgSend_registerResultBlock_(v4, v8, &v13);

  v11 = objc_msgSend_promise(v7, v9, v10, v13, v14, v15, v16);

  return v11;
}

void sub_1B232DDA0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_state(v3, v4, v5) == 1)
  {
    v8 = *(a1 + 32);
    v14 = objc_msgSend_error(v3, v6, v7);

    objc_msgSend_failWithError_(v8, v9, v14);
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = objc_msgSend_value(v3, v6, v7);

    v12 = (*(v10 + 16))(v10, v11);

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1B232DED0;
    v15[3] = &unk_1E7B20C58;
    v16 = *(a1 + 32);
    objc_msgSend_registerResultBlock_(v12, v13, v15);
  }
}

void sub_1B232DED0(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_state(v3, v4, v5);
  v9 = *(a1 + 32);
  if (v6 == 1)
  {
    v12 = objc_msgSend_error(v3, v7, v8);

    objc_msgSend_failWithError_(v9, v10, v12);
  }

  else
  {
    v12 = objc_msgSend_value(v3, v7, v8);

    objc_msgSend_fulfillWithValue_(v9, v11, v12);
  }
}

_CUTLockingPromise *sub_1B232DF68(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_alloc_init(_CUTLockingPromise);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = sub_1B232E044;
  v12[3] = &unk_1E7B210D8;
  v6 = v5;
  v13 = v6;
  v14 = v3;
  v7 = v3;
  objc_msgSend_registerResultBlock_(v4, v8, v12);

  v9 = v14;
  v10 = v6;

  return v6;
}

void sub_1B232E044(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_msgSend_state(v3, v4, v5) == 1)
  {
    v8 = *(a1 + 32);
    v9 = [CUTResult alloc];
    v12 = objc_msgSend_error(v3, v10, v11);
    v14 = objc_msgSend_initWithError_(v9, v13, v12);
    objc_msgSend__fulfillWithResult_(v8, v15, v14);
  }

  else
  {
    v16 = *(a1 + 40);
    v17 = objc_msgSend_value(v3, v6, v7);
    v18 = (*(v16 + 16))(v16, v17);

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      sub_1B2331BF8();
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_1B232E194;
    v20[3] = &unk_1E7B20C58;
    v21 = *(a1 + 32);
    objc_msgSend_registerResultBlock_(v18, v19, v20);
  }
}

void sub_1B232E194(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = objc_msgSend_state(v3, v4, v5);
  v7 = *(a1 + 32);
  v10 = [CUTResult alloc];
  if (v6 == 1)
  {
    v16 = objc_msgSend_error(v3, v8, v9);

    v12 = objc_msgSend_initWithError_(v10, v11, v16);
  }

  else
  {
    v16 = objc_msgSend_value(v3, v8, v9);

    v12 = objc_msgSend_initWithSuccess_(v10, v14, v16);
  }

  v15 = v12;
  objc_msgSend__fulfillWithResult_(v7, v13, v12);
}

void sub_1B232E5FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1B232E628(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    v18 = v3;
    if (objc_msgSend_state(v3, v4, v5) == 1)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      v8 = *(a1 + 32);
      v9 = objc_msgSend_error(v18, v6, v7);
      objc_msgSend_failWithError_(v8, v10, v9);

LABEL_7:
      v3 = v18;
      goto LABEL_8;
    }

    v11 = objc_msgSend_value(v18, v6, v7);
    objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v12, v11, *(a1 + 64));

    v13 = ++*(*(*(a1 + 56) + 8) + 24);
    v16 = objc_msgSend_count(*(a1 + 40), v14, v15) == v13;
    v3 = v18;
    if (v16)
    {
      *(*(*(a1 + 48) + 8) + 24) = 1;
      objc_msgSend_fulfillWithValue_(*(a1 + 32), v17, *(a1 + 40));
      goto LABEL_7;
    }
  }

LABEL_8:
}

void sub_1B232E920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_1B232E940(uint64_t a1, const char *a2)
{
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 32), a2, a2, *(a1 + 56));
  v3 = ++*(*(*(a1 + 48) + 8) + 24);
  result = objc_msgSend_count(*(a1 + 32), v4, v5);
  if (result == v3)
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);

    return objc_msgSend_fulfillWithValue_(v8, v7, v9);
  }

  return result;
}

void sub_1B232EF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v23 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_1B232EFB0(uint64_t a1, void *a2)
{
  v26 = a2;
  objc_msgSend_lock(*(a1 + 32), v3, v4);
  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    if (objc_msgSend_state(v26, v5, v6) == 1)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1;
      v9 = *(a1 + 40);
      v10 = [CUTResult alloc];
      v13 = objc_msgSend_error(v26, v11, v12);
      v15 = objc_msgSend_initWithError_(v10, v14, v13);
      objc_msgSend__fulfillWithResult_(v9, v16, v15);
    }

    else
    {
      v17 = objc_msgSend_value(v26, v7, v8);
      objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 48), v18, v17, *(a1 + 72));

      v19 = ++*(*(*(a1 + 64) + 8) + 24);
      if (objc_msgSend_count(*(a1 + 48), v20, v21) != v19)
      {
        goto LABEL_7;
      }

      *(*(*(a1 + 56) + 8) + 24) = 1;
      v22 = *(a1 + 40);
      v23 = [CUTResult alloc];
      v13 = objc_msgSend_initWithSuccess_(v23, v24, *(a1 + 48));
      objc_msgSend__fulfillWithResult_(v22, v25, v13);
    }
  }

LABEL_7:
  objc_msgSend_unlock(*(a1 + 32), v5, v6);
}

void sub_1B232F390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  va_start(va, a21);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1B232F3B0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  objc_msgSend_lock(v3, v5, v6);
  objc_msgSend_setObject_atIndexedSubscript_(*(a1 + 40), v7, v4, *(a1 + 64));

  v8 = ++*(*(*(a1 + 56) + 8) + 24);
  if (objc_msgSend_count(*(a1 + 40), v9, v10) == v8)
  {
    v13 = *(a1 + 48);
    v14 = [CUTResult alloc];
    v16 = objc_msgSend_initWithSuccess_(v14, v15, *(a1 + 40));
    objc_msgSend__fulfillWithResult_(v13, v17, v16);
  }

  v18 = *(a1 + 32);

  return objc_msgSend_unlock(v18, v11, v12);
}

uint64_t sub_1B232FDD0()
{
  v0 = BOMCopierUserData();
  v3 = v0;
  v4 = 2;
  if (v0)
  {
    if (objc_msgSend_wasCancelled(v0, v1, v2))
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t sub_1B232FE18(uint64_t a1, uint64_t a2, int a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = BOMCopierUserData();
  v8 = objc_msgSend_fileCopier(CUTLog, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v10 = 138543875;
    v11 = v5;
    v12 = 2081;
    v13 = a2;
    v14 = 1024;
    v15 = a3;
    _os_log_fault_impl(&dword_1B2321000, v8, OS_LOG_TYPE_FAULT, "File error {cutCopier: %{public}@, path: %{private}s, errorNumber: %d}", &v10, 0x1Cu);
  }

  return 0;
}

uint64_t sub_1B232FF00(uint64_t a1, uint64_t a2)
{
  v3 = BOMCopierUserData();
  v6 = objc_msgSend_fileCopier(CUTLog, v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1B2331C24(v3, a2, v6);
  }

  return 3;
}

void sub_1B232FF74(uint64_t a1, uint64_t a2)
{
  v3 = BOMCopierUserData();
  v6 = objc_msgSend_fileCopier(CUTLog, v4, v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
  {
    sub_1B2331C9C(v3, a2, v6);
  }
}

void sub_1B232FFE4(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = BOMCopierUserData();
  v8 = objc_msgSend_fileCopier(CUTLog, v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v9 = 138543875;
    v10 = v5;
    v11 = 2081;
    v12 = a2;
    v13 = 1024;
    v14 = a3;
    _os_log_fault_impl(&dword_1B2321000, v8, OS_LOG_TYPE_FAULT, "Fatal File Error {cutCopier: %{public}@, path: %{private}s, errorNumber: %d}", &v9, 0x1Cu);
  }
}

void sub_1B23301C0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_fault_impl(a1, log, OS_LOG_TYPE_FAULT, a4, va, 0x16u);
}

uint64_t sub_1B233041C(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v3, sel_cutPowerMonitorSystemHasPoweredOn_, v4);
  }

  return result;
}

uint64_t sub_1B2330678()
{
  v0 = [CUTPowerMonitor alloc];
  qword_1ED4AE430 = objc_msgSend__init(v0, v1, v2);

  return MEMORY[0x1EEE66BB8]();
}

uint64_t sub_1B2330B98(uint64_t a1)
{
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);

    return MEMORY[0x1EEE66B58](v3, sel_cutPowerMonitorBatteryConnectedStateDidChange_, v4);
  }

  return result;
}

void sub_1B2330D48(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"CUTAsyncReducer.m", 123, @"Invalid parameter not satisfying: %@", @"self.continueBlock");
}

void sub_1B2330DC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"CUTAsyncReducer.m", 128, @"Invalid parameter not satisfying: %@", @"self.cancelBlock");
}

void sub_1B2330E40(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"CUTAsyncReducer.m", 133, @"Invalid parameter not satisfying: %@", @"self.stopBlock");
}

void sub_1B2330EBC(uint64_t *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v2 = 138543362;
  v3 = v1;
  _os_log_fault_impl(&dword_1B2321000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Unable to get entitlements for client task {error: %{public}@}", &v2, 0xCu);
}

void sub_1B2330F88(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"_CUTUnsafePromise.m", 34, @"Invalid parameter not satisfying: %@", @"!self.done");
}

void sub_1B23310A8(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_fault_impl(&dword_1B2321000, log, OS_LOG_TYPE_FAULT, "Unable to create the power assertion {identifier: %{public}@, retVal: %d}", &v3, 0x12u);
}

void sub_1B2331130()
{
  v0 = cut_backtrace();
  LODWORD(v7) = 138543362;
  *(&v7 + 4) = v0;
  sub_1B2327254(&dword_1B2321000, v1, v2, "%{public}@", v3, v4, v5, v6, v7, DWORD2(v7));
}

void sub_1B23311B8(uint64_t a1, int a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = *(*a1 + 16);
  v7 = getpid();
  v8 = *(*a1 + 24);
  v9 = 138544130;
  v10 = v6;
  v11 = 1024;
  v12 = a2;
  v13 = 1024;
  v14 = v7;
  v15 = 2114;
  v16 = v8;
  _os_log_fault_impl(&dword_1B2321000, a3, OS_LOG_TYPE_FAULT, "Unable to properly release the power assertion - Dropping it stead {identifier: %{public}@, retVal: %d, pid: %d, stack: %{public}@ }", &v9, 0x22u);
}

void sub_1B2331310(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"_CUTPromise.m", 28, @"Invalid parameter not satisfying: %@", @"!self.done");
}

void sub_1B233138C(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"_CUTPromise.m", 83, @"Invalid parameter not satisfying: %@", @"!self.done");
}

void sub_1B2331408()
{
  sub_1B23291BC();
  sub_1B23291B0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B233156C(uint64_t a1)
{
  sub_1B23291C8(a1);
  sub_1B23291BC();
  sub_1B23291A0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0x16u);
}

void sub_1B23315F8(uint64_t a1, void *a2)
{
  sub_1B23291C8(a1);
  xpc_dictionary_get_string(a2, *MEMORY[0x1E69E9E28]);
  sub_1B23291A0();
  _os_log_fault_impl(v3, v4, v5, v6, v7, 0x16u);
}

void sub_1B23316A8(uint64_t a1)
{
  sub_1B23291C8(a1);
  sub_1B23291BC();
  sub_1B23291A0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1B2331724(uint64_t a1)
{
  sub_1B23291C8(a1);
  sub_1B23291BC();
  sub_1B23291A0();
  _os_log_fault_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_1B23317A0()
{
  sub_1B23291BC();
  sub_1B23291B0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1B2331850(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"CUTResult.m", 39, @"Unexpected state: Success");
}

void sub_1B23318C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v5, a1, a2, @"CUTResult.m", 44, @"Unexpected state: Fail");
}

void sub_1B2331A3C()
{
  sub_1B232A968();
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, v3, v2, @"CUTReachability.m", 186, @"connectionRequired called with NULL reachabilityRef");

  *v0 = *v1;
}

void sub_1B2331AAC()
{
  sub_1B232A968();
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], v4, v5);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v6, v7, v3, v2, @"CUTReachability.m", 194, @"currentNetworkStatus called with NULL reachabilityRef");

  *v0 = *v1;
}

void sub_1B2331C24(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543619;
  *&v3[4] = a1;
  *&v3[12] = 2081;
  *&v3[14] = a2;
  sub_1B23301C0(&dword_1B2321000, a2, a3, "File Conflict Error {cutCopier: %{public}@, path: %{private}s}", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}

void sub_1B2331C9C(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2082;
  *&v3[14] = a2;
  sub_1B23301C0(&dword_1B2321000, a2, a3, "Fatal Error {cutCopier: %{public}@, error: %{public}s}", *v3, *&v3[8], *&v3[16], *MEMORY[0x1E69E9840]);
}