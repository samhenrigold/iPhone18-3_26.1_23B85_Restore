id getCAFenceHandleClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCAFenceHandleClass_softClass;
  v7 = getCAFenceHandleClass_softClass;
  if (!getCAFenceHandleClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCAFenceHandleClass_block_invoke;
    v3[3] = &unk_1E6F476B0;
    v3[4] = &v4;
    __getCAFenceHandleClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_186346538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _BKSServerPortHelper(const char *a1, mach_port_name_t *a2, CFMachPortRef *a3, void (__cdecl *a4)(CFMachPortRef, void *))
{
  pthread_mutex_lock(&BKSServerPortLock);
  ptype = 0;
  if (!mach_port_type(*MEMORY[0x1E69E9A60], *a2, &ptype) && (ptype & 0x100000) == 0)
  {
    goto LABEL_7;
  }

  if (*a2)
  {
    _lock_InvalidatePortHelper(a1, a2, a3);
  }

  if (!bootstrap_look_up(*MEMORY[0x1E69E99F8], a1, a2) && *a2 + 1 >= 2)
  {
    v8 = 0;
    *a3 = CFMachPortCreateWithPort(*MEMORY[0x1E695E480], *a2, 0, 0, 0);
  }

  else
  {
LABEL_7:
    v8 = 1;
  }

  v9 = *a2;
  pthread_mutex_unlock(&BKSServerPortLock);
  if ((v8 & 1) == 0 && *a3)
  {
    CFMachPortSetInvalidationCallBack(*a3, a4);
  }

  return v9;
}

uint64_t BKSHIDServicesSetMinimumBrightnessLevelWithFadeDuration(float a1, float a2)
{
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetMinimumBrightnessLevelWithFadeDuration(v4, a1, a2);
}

uint64_t _BKSHIDSetMinimumBrightnessLevelWithFadeDuration(mach_port_t a1, float a2, float a3)
{
  v6 = *MEMORY[0x1E69E99E0];
  v7 = a2;
  v8 = a3;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000004;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v3 = mach_msg(&msg, 1, 0x28u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v3;
}

id BKLogBacklight()
{
  if (BKLogBacklight_onceToken != -1)
  {
    dispatch_once(&BKLogBacklight_onceToken, &__block_literal_global_22);
  }

  v1 = BKLogBacklight___logObj;

  return v1;
}

void BKSHIDServicesCancelTouchesOnDisplay(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v1 = a1;
  bzero(buffer, 0x400uLL);
  if (!v1 || CFStringGetCString(v1, buffer, 1024, 0x8000100u))
  {
    v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDCancelTouchesOnDisplay(v2, buffer);
  }
}

uint64_t _BKSHIDCancelTouchesOnDisplay(mach_port_name_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, 480);
  *name = 0u;
  v8 = 0u;
  *(&v8 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v3 = mig_strncpy_zerofill(v9 + 8, a2, 1024);
  }

  else
  {
    v3 = mig_strncpy(v9 + 8, a2, 1024);
  }

  LODWORD(v9[0]) = 0;
  DWORD1(v9[0]) = v3;
  v4 = (v3 + 3) & 0xFFFFFFFC;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v8 = 0x5B8D9900000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v5 = mach_msg(name, 1, v4 + 40, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v5;
}

id BKLogTouchEvents()
{
  if (BKLogTouchEvents_onceToken != -1)
  {
    dispatch_once(&BKLogTouchEvents_onceToken, &__block_literal_global_43);
  }

  v1 = BKLogTouchEvents___logObj;

  return v1;
}

id BKSHIDEventGetBaseAttributes(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = _BKSHIDEventGetAttachment(a1, @"backboardd-attr-cache-17000404", v2);
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    goto LABEL_10;
  }

  if (!a1 || IOHIDEventGetAttributeDataLength() < 1)
  {
    goto LABEL_9;
  }

  AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
  v5 = AttributeDataPtr;
  if (!AttributeDataPtr)
  {
    goto LABEL_10;
  }

  if (*(AttributeDataPtr + 4))
  {
    IOHIDEventGetAttributeDataLength();
    v5 = [BKSHIDEventBaseAttributes deserializeFromBytes:"deserializeFromBytes:byteCount:" byteCount:?];
    if (v5)
    {
      _BKSHIDEventSetAttachment(a1, @"backboardd-attr-cache-17000404", v5);
    }
  }

  else
  {
LABEL_9:
    v5 = 0;
  }

LABEL_10:

  return v5;
}

void _BKSHIDEventSetAttachment(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!_IOHIDEventSetAttachment())
  {
    v4 = BKLogEventDelivery();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138543362;
      v6 = v3;
      _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "failed to set attachment with key: %{public}@", &v5, 0xCu);
    }
  }
}

void *BKSHIDEventGetRemoteTimestamp()
{
  v13 = *MEMORY[0x1E69E9840];
  IOHIDEventGetChildren();
  v10 = 0u;
  v11 = 0u;
  v0 = v12 = 0u;
  v1 = [v0 countByEnumeratingWithState:0 objects:? count:?];
  if (v1)
  {
    v2 = *v10;
    while (2)
    {
      for (i = 0; i != v1; i = (i + 1))
      {
        if (*v10 != v2)
        {
          objc_enumerationMutation(v0);
        }

        Type = IOHIDEventGetType();
        IntegerValue = IOHIDEventGetIntegerValue();
        v6 = IOHIDEventGetIntegerValue();
        if (Type == 1 && (IntegerValue == 65308 || IntegerValue == 65280) && v6 == 258 && IOHIDEventGetIntegerValue() >= 8)
        {
          DataValue = IOHIDEventGetDataValue();
          if (DataValue)
          {
            v1 = *DataValue;
            goto LABEL_19;
          }
        }
      }

      v1 = [v0 countByEnumeratingWithState:? objects:? count:?];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_19:

  return v1;
}

void BKSHIDEventSetAttributes(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 6;
LABEL_13:
    _BKSHIDEventSetAttributes(a1, v6, v3);

    return;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 7;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 5;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 2;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 4;
    goto LABEL_13;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = 1;
    goto LABEL_13;
  }

  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:objc_opt_class()];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    *buf = 138544130;
    v8 = v5;
    v9 = 2114;
    v10 = @"BKSHIDEvent.m";
    v11 = 1024;
    v12 = 390;
    v13 = 2114;
    v14 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void _BKSHIDEventSetAttributes(uint64_t a1, void *a2, char a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v13 = 0;
  v6 = [MEMORY[0x1E698E750] encodeObject:? error:?];
  v7 = v13;
  if (v6)
  {
    v8 = [v6 length];
    MEMORY[0x1EEE9AC00]();
    v10 = &v12 - v9;
    *(&v12 - v9) = 0;
    memcpy(&v12 - v9 + 8, [v6 bytes], v8);
    *v10 = a3;
    *(v10 + 1) = v8;
    IOHIDEventSetAttributeData();
    _BKSHIDEventSetAttachment(a1, @"backboardd-attr-cache-17000404", v5);
  }

  else
  {
    v11 = BKLogEventDelivery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v15 = v7;
      _os_log_error_impl(&dword_186345000, v11, OS_LOG_TYPE_ERROR, "could not encode attribute data:%{public}@", buf, 0xCu);
    }
  }
}

id BKLogEventDelivery()
{
  if (BKLogEventDelivery_onceToken != -1)
  {
    dispatch_once(&BKLogEventDelivery_onceToken, &__block_literal_global_7);
  }

  v1 = BKLogEventDelivery___logObj;

  return v1;
}

id BKLogKeyboard()
{
  if (BKLogKeyboard_onceToken != -1)
  {
    dispatch_once(&BKLogKeyboard_onceToken, &__block_literal_global_49);
  }

  v1 = BKLogKeyboard___logObj;

  return v1;
}

uint64_t _BKSDisplayServicesGetMainScreenInfo(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, BOOL *a5, BOOL *a6)
{
  v15 = 0;
  v16 = 0;
  v14 = 0;
  v12 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  result = _BKSDisplayGetMainScreenInfo(v12, &v16 + 1, &v16, &v15 + 1, &v15, &v14 + 1, &v14);
  if (a1)
  {
    *a1 = HIDWORD(v16);
  }

  if (a2)
  {
    *a2 = v16;
  }

  if (a3)
  {
    *a3 = HIDWORD(v15);
  }

  if (a4)
  {
    *a4 = v15;
  }

  if (a5)
  {
    *a5 = HIBYTE(v14) != 0;
  }

  if (a6)
  {
    *a6 = v14 != 0;
  }

  return result;
}

uint64_t BKSDisplayServicesStart()
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v8 = 0;
  v9 = 1065353216;
  v7 = 0;
  MainScreenInfo = _BKSDisplayServicesGetMainScreenInfo(&v10 + 1, &v10, &v9, &v8, &v7 + 1, &v7);
  if (MainScreenInfo == -308)
  {
    MainScreenInfo = _BKSDisplayServicesGetMainScreenInfo(&v10 + 1, &v10, &v9, &v8, &v7 + 1, &v7);
    if (MainScreenInfo == -308)
    {
      v6 = BKLogCommon();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, "Exiting because we are unable to communicate with backboardd.", buf, 2u);
      }

      exit(-1);
    }
  }

  if (MainScreenInfo)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:mach_error_string(MainScreenInfo), MainScreenInfo];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v12 = v3;
      v13 = 2114;
      v14 = @"BKSDisplayServices.m";
      v15 = 1024;
      v16 = 113;
      v17 = 2114;
      v18 = v2;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v2 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863486BCLL);
  }

  GSSetMainScreenInfo();
  if ((v7 & 0x100) == 0 && (v7 & 1) == 0 && (*(&v10 + 1) <= 0.0 || *&v10 <= 0.0))
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:*(&v10 + 1), *&v10];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v12 = v5;
      v13 = 2114;
      v14 = @"BKSDisplayServices.m";
      v15 = 1024;
      v16 = 118;
      v17 = 2114;
      v18 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186348790);
  }

  return 1;
}

uint64_t _BKSDisplayGetMainScreenInfo(int a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _BYTE *a6, _BYTE *a7)
{
  v23 = 0u;
  v24 = 0u;
  *&msg[4] = 0;
  *&msg[20] = 0u;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B917400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v15 = *&msg[12];
  }

  else
  {
    v15 = special_reply_port;
  }

  v16 = mach_msg(msg, 3162115, 0x18u, 0x44u, v15, 0, 0);
  v17 = v16;
  if ((v16 - 268435458) > 0xE || ((1 << (v16 - 2)) & 0x4003) == 0)
  {
    if (!v16)
    {
      if (*&msg[20] == 71)
      {
        v17 = 4294966988;
      }

      else if (*&msg[20] == 6001112)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 60)
          {
            if (!*&msg[8])
            {
              v17 = *&msg[32];
              if (!*&msg[32])
              {
                v20 = DWORD1(v23);
                *a2 = v23;
                *a3 = v20;
                v21 = HIDWORD(v23);
                *a4 = DWORD2(v23);
                *a5 = v21;
                *a6 = v24;
                *a7 = BYTE4(v24);
                return v17;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v18 = 1;
            }

            else
            {
              v18 = *&msg[32] == 0;
            }

            if (v18)
            {
              v17 = 4294966996;
            }

            else
            {
              v17 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v17 = 4294966996;
      }

      else
      {
        v17 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v17;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v17 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v17;
}

NSObject *_BKDecodeArrayOfClass(void *a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v7 = MEMORY[0x1E695DFD8];
  objc_opt_class();
  v8 = [v7 setWithObjects:{a2, 0}];
  v9 = [v5 decodeObjectOfClasses:? forKey:?];

  if (!v9)
  {
LABEL_18:
    v16 = MEMORY[0x1E695E0F0];
    goto LABEL_19;
  }

  v10 = v9;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = BKLogEventDelivery();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v23 = objc_opt_class();
      v17 = v23;
      _os_log_error_impl(&dword_186345000, v11, OS_LOG_TYPE_ERROR, "expected NSArray, got %{public}@", buf, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  v11 = v10;
  v12 = [NSObject countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v12)
  {
    v13 = v12;
    v14 = MEMORY[0];
    while (2)
    {
      for (i = 0; i != v13; i = (i + 1))
      {
        if (MEMORY[0] != v14)
        {
          objc_enumerationMutation(v11);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v18 = BKLogEventDelivery();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            v20 = objc_opt_class();
            *buf = 138543618;
            v23 = a2;
            v24 = 2114;
            v25 = v20;
            v21 = v20;
            _os_log_error_impl(&dword_186345000, v18, OS_LOG_TYPE_ERROR, "expected %{public}@, got %{public}@", buf, 0x16u);
          }

          goto LABEL_17;
        }
      }

      v13 = [NSObject countByEnumeratingWithState:v11 objects:"countByEnumeratingWithState:objects:count:" count:?];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v16 = v11;
LABEL_19:

  return v16;
}

uint64_t _BKSHIDSetHitTestRegionsForDisplay(mach_port_t a1, uint64_t a2, unsigned int a3, char *src)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, 448);
  *&v13[8] = 0u;
  memset(&name, 0, sizeof(name));
  v10 = 1;
  v11 = a2;
  v12 = 16777472;
  *v13 = a3;
  *&v13[4] = *MEMORY[0x1E69E99E0];
  *&v13[12] = a3;
  if (MEMORY[0x1EEE9AC40])
  {
    v5 = mig_strncpy_zerofill(v14, src, 1024);
  }

  else
  {
    v5 = mig_strncpy(v14, src, 1024);
  }

  *&v13[16] = 0;
  *&v13[20] = v5;
  v6 = (v5 + 3) & 0xFFFFFFFC;
  name.msgh_bits = -2147483629;
  name.msgh_remote_port = a1;
  name.msgh_local_port = 0;
  *&name.msgh_voucher_port = 0x5B8D9C00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&name);
  }

  v7 = mach_msg(&name, 1, v6 + 64, 0, 0, 0, 0);
  if ((v7 - 268435459) <= 1)
  {
    if ((name.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name.msgh_local_port);
    }

    mach_msg_destroy(&name);
  }

  return v7;
}

void BKSHIDServicesSetHitTestRegionsForDisplay(void *a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  bzero(buffer, 0x400uLL);
  if (v4)
  {
    v5 = CFStringGetCString(v4, buffer, 1024, 0x8000100u) != 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  v7 = v6;
  if (v3 && !v6)
  {
    v8 = BKLogCommon();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543362;
      v16 = v3;
      v9 = "Error encoding hittestRegions: %{public}@";
      v10 = v8;
      v11 = 12;
LABEL_12:
      _os_log_error_impl(&dword_186345000, v10, OS_LOG_TYPE_ERROR, v9, &v15, v11);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (v5)
  {
    v12 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    v13 = _BKSHIDSetHitTestRegionsForDisplay(v12, [v7 bytes], objc_msgSend(v7, "length"), buffer);
    if (v13)
    {
      v14 = v13;
      v8 = BKLogCommon();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v15 = 67109120;
        LODWORD(v16) = v14;
        v9 = "Error sending hittestRegions: 0x%x";
        v10 = v8;
        v11 = 8;
        goto LABEL_12;
      }

LABEL_13:
    }
  }
}

__CFString *NSStringFromBKSHIDEventHardwareType(unint64_t a1)
{
  if (a1 >= 0xB)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47828[a1];
  }

  return v2;
}

id BKLogUISensor()
{
  if (BKLogUISensor_onceToken != -1)
  {
    dispatch_once(&BKLogUISensor_onceToken, &__block_literal_global_34);
  }

  v1 = BKLogUISensor___logObj;

  return v1;
}

uint64_t BKSHIDEventRegisterEventCallbackOnRunLoop(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_getHIDEventSystemClient_onceToken != -1)
  {
    dispatch_once(&_getHIDEventSystemClient_onceToken, &__block_literal_global_409);
  }

  v6 = _getHIDEventSystemClient___hidEventSystemClientRef;
  CFRunLoopGetCurrent();
  IOHIDEventSystemClientScheduleWithRunLoop();

  return MEMORY[0x1EEDC80F0](v6, a1, a2, a3);
}

void ___getHIDEventSystemClient_block_invoke()
{
  v15 = *MEMORY[0x1E69E9840];
  if (!_getHIDEventSystemClient___hidEventSystemClientRef)
  {
    v0 = [MEMORY[0x1E696AAE8] mainBundle];
    v1 = [v0 bundleIdentifier];
    if (!v1)
    {
      __BKSHIDEvent__BUNDLE_IDENTIFIER_FOR_CURRENT_PROCESS_IS_NIL__(v0);
    }

    v2 = v1;
    if (BKSHIDServicesDeviceHasHighFrequencyDigitizer_onceToken != -1)
    {
      dispatch_once(&BKSHIDServicesDeviceHasHighFrequencyDigitizer_onceToken, &__block_literal_global_83);
    }

    v3 = BKSHIDServicesDeviceHasHighFrequencyDigitizer_hasHighFrequencyDigitizer;
    v12 = v2;
    v9 = @"bundleID";
    v10 = @"pid";
    v4 = MEMORY[0x1E696AD98];
    getpid();
    v5 = [v4 numberWithInt:?];
    v6 = v5;
    v11 = @"HighFrequency";
    v7 = MEMORY[0x1E695E110];
    if (v3)
    {
      v7 = MEMORY[0x1E695E118];
    }

    v13 = v5;
    v14 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];

    _getHIDEventSystemClient___hidEventSystemClientRef = IOHIDEventSystemClientCreateWithType();
  }
}

id _BKSHIDEventGetAttachment(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = _IOHIDEventCopyAttachment();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    if (v5)
    {
      v7 = BKLogEventDelivery();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v10 = 138543874;
        v11 = v4;
        v12 = 2114;
        v13 = a3;
        v14 = 2114;
        v15 = objc_opt_class();
        v9 = v15;
        _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "failed to get attachment for key: %{public}@ expected class %{public}@ but got class %{public}@ ", &v10, 0x20u);
      }
    }

    v6 = 0;
  }

  return v6;
}

_DWORD *BKSHIDEventGetDigitizerAttributes(uint64_t a1)
{
  Type = IOHIDEventGetType();
  AttributeDataPtr = 0;
  if (Type == 11 && a1)
  {
    if (IOHIDEventGetAttributeDataLength() < 1)
    {
      goto LABEL_8;
    }

    AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
    if (!AttributeDataPtr)
    {
      goto LABEL_9;
    }

    if (AttributeDataPtr[1] && *AttributeDataPtr == 2)
    {
      AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
    }

    else
    {
LABEL_8:
      AttributeDataPtr = 0;
    }
  }

LABEL_9:

  return AttributeDataPtr;
}

uint64_t __BKSHIDServicesDeviceHasHighFrequencyDigitizer_block_invoke()
{
  result = MGGetBoolAnswer();
  BKSHIDServicesDeviceHasHighFrequencyDigitizer_hasHighFrequencyDigitizer = result;
  return result;
}

uint64_t __BKLogEventDelivery_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "EventDelivery");
  v1 = BKLogEventDelivery___logObj;
  BKLogEventDelivery___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

float BKSDisplayBrightnessGetCurrent()
{
  v2 = 1.0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetCurrentDisplayBrightness(v0, &v2);
  return v2;
}

uint64_t _BKSHIDGetCurrentDisplayBrightness(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8DB400000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000152)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

BOOL BKSDisplayServicesDisplayIsTethered()
{
  v2 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  _BKSDisplayDisplayIsTethered(v0, &v2);
  return v2 != 0;
}

uint64_t _BKSDisplayDisplayIsTethered(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B917800000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6001116)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

__CFString *NSStringFromBKSHIDEventDeferringPolicyStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46A28[a1];
  }

  return v2;
}

uint64_t _BKSHIDSetOrientationClientEventsEnabled(int a1, int a2, char a3, char a4)
{
  *&msg[20] = 0u;
  *&msg[4] = 0u;
  *&msg[28] = a2;
  v7 = 1310720;
  v8 = *MEMORY[0x1E69E99E0];
  v9 = a3;
  v10 = 0;
  v11 = 0;
  v12 = a4;
  v13 = 0;
  v14 = 0;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x1005B8DB3;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v4 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v4 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v4;
}

double BKSHIDServicesLastUserEventTime()
{
  v2 = 0.0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetLastUserEventTime(v0, &v2);
  return v2;
}

uint64_t _BKSHIDGetLastUserEventTime(int a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  *&msg[20] = 0u;
  *&msg[4] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B8DAA00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(msg, 3162115, 0x18u, 0x34u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&msg[20] == 6000142)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 44)
          {
            if (!*&msg[8])
            {
              v7 = *&msg[32];
              if (!*&msg[32])
              {
                *a2 = v11;
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (*&msg[4] == 36)
          {
            if (*&msg[8])
            {
              v8 = 1;
            }

            else
            {
              v8 = *&msg[32] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&msg[32];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(msg);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t BKHIDServicesGetNonFlatDeviceOrientation()
{
  v2 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetNonFlatDeviceOrientation(v0, &v2);
  return v2;
}

uint64_t _BKSHIDGetNonFlatDeviceOrientation(int a1, _DWORD *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8DAC00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000144)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = *&name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

id NSStringFromBKSSceneHostTouchBehavior(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = *(&off_1E6F479D8 + a1);
  }

  return v2;
}

CFRunLoopSourceRef BKCreateMIGServerSourceWithContext(uint64_t a1, int a2, CFIndex a3, uint64_t a4)
{
  pthread_once(&__BKMIGServerCalloutContextKeyOnce, makeCalloutContextKey);
  v8 = malloc_type_malloc(0x18uLL, 0x10A0040FC6C5850uLL);
  *v8 = a2;
  v8[1] = a1;
  v8[2] = a4;
  context.version = 1;
  context.info = v8;
  context.retain = 0;
  context.release = MEMORY[0x1E69E9B38];
  context.copyDescription = migHelperCopyDescription;
  context.equal = migHelperEqual;
  context.hash = migHelperHash;
  context.schedule = migHelperGetPort;
  context.cancel = migHelperRecievePortCallout;
  v9 = CFRunLoopSourceCreate(0, a3, &context);
  if (!v9)
  {
    free(v8);
  }

  return v9;
}

uint64_t _BKSHIDSetAccelerometerClientEventsEnabled(int a1, int a2, mach_msg_timeout_t timeout, double a4, float a5, float a6, float a7)
{
  memset(&msg[4], 0, 32);
  *&msg[28] = a2;
  v11 = 1310720;
  v12 = *MEMORY[0x1E69E99E0];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  *msg = -2147483629;
  *&msg[8] = a1;
  *&msg[20] = 0x1005B8DB2;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v8 = mach_msg(msg, 17, 0x44u, 0, 0, timeout, 0);
  if ((v8 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v8;
}

id BKLogDisplay()
{
  if (BKLogDisplay_onceToken != -1)
  {
    dispatch_once(&BKLogDisplay_onceToken, &__block_literal_global_25_8078);
  }

  v1 = BKLogDisplay___logObj;

  return v1;
}

uint64_t __BKLogDisplay_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "Display");
  v1 = BKLogDisplay___logObj;
  BKLogDisplay___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogMousePointer()
{
  if (BKLogMousePointer_onceToken != -1)
  {
    dispatch_once(&BKLogMousePointer_onceToken, &__block_literal_global_46);
  }

  v1 = BKLogMousePointer___logObj;

  return v1;
}

uint64_t __BKLogMousePointer_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "MousePointer");
  v1 = BKLogMousePointer___logObj;
  BKLogMousePointer___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

Class __getFBSSystemServiceClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __FrontBoardServicesLibraryCore_block_invoke;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E6F46F20;
    v8 = 0;
    FrontBoardServicesLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!FrontBoardServicesLibraryCore_frameworkLibrary)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v3 handleFailureInFunction:v6[0] file:? lineNumber:? description:?];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("FBSSystemService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v3 handleFailureInFunction:"FBSSystemService" file:? lineNumber:? description:?];

LABEL_10:
    __break(1u);
  }

  getFBSSystemServiceClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

float BKSDisplayServicesGetExternalDisplayScale(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = [getCADisplayClass() displays];
    v3 = [v2 firstObject];

    if (v3 == v1)
    {
      v6 = 1065353216;
      _BKSDisplayServicesGetMainScreenInfo(0, 0, &v6, 0, 0, 0);
      v4 = *&v6;
    }

    else
    {
      v4 = _BKSGetExternalDisplayScale(v1);
    }
  }

  else
  {
    v4 = 0.0;
  }

  return v4;
}

id getCADisplayClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCADisplayClass_softClass;
  v7 = getCADisplayClass_softClass;
  if (!getCADisplayClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCADisplayClass_block_invoke;
    v3[3] = &unk_1E6F476B0;
    v3[4] = &v4;
    __getCADisplayClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18634D0C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

double _BKSGetExternalDisplayScale(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"display != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v9 = v7;
      v10 = 2114;
      v11 = @"BKSDisplayServices.m";
      v12 = 1024;
      v13 = 366;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18634D244);
  }

  v2 = v1;
  v3 = [v1 pointScale];
  if (([v2 tag] & 0xE0) != 0)
  {
    v4 = [v2 currentMode];
    v3 = [v4 preferredScale];
  }

  return v3;
}

uint64_t BKSHIDEventContainsUpdates(uint64_t a1)
{
  if (IOHIDEventGetType() != 11)
  {
    return 0;
  }

  result = IOHIDEventGetIntegerValue();
  if (result)
  {
    return IOHIDEventGetIntegerValue() != 0;
  }

  return result;
}

uint64_t BKSHIDServicesDeviceHasHighFrequencyDigitizer()
{
  if (BKSHIDServicesDeviceHasHighFrequencyDigitizer_onceToken != -1)
  {
    dispatch_once(&BKSHIDServicesDeviceHasHighFrequencyDigitizer_onceToken, &__block_literal_global_83);
  }

  return BKSHIDServicesDeviceHasHighFrequencyDigitizer_hasHighFrequencyDigitizer;
}

id BKLogTouchDeliveryPolicy()
{
  if (BKLogTouchDeliveryPolicy_onceToken != -1)
  {
    dispatch_once(&BKLogTouchDeliveryPolicy_onceToken, &__block_literal_global_40);
  }

  v1 = BKLogTouchDeliveryPolicy___logObj;

  return v1;
}

uint64_t BKSHIDDigitizerEventIsFirstTouchDown(uint64_t a1)
{
  if ((IOHIDEventGetIntegerValue() & 2) == 0)
  {
    return 0;
  }

  result = IOHIDEventGetIntegerValue();
  if (result)
  {
    Children = IOHIDEventGetChildren();
    if (!Children)
    {
      __assert_rtn("BKSHIDDigitizerEventIsFirstTouchDown", "BKSHIDEvent.m", 711, "pathEvents");
    }

    v3 = Children;
    Count = CFArrayGetCount(Children);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      while (1)
      {
        CFArrayGetValueAtIndex(v3, v6);
        if (IOHIDEventGetType() == 11)
        {
          IntegerValue = IOHIDEventGetIntegerValue();
          v8 = IOHIDEventGetIntegerValue();
          v9 = IOHIDEventGetIntegerValue();
          v10 = (IntegerValue & 2) == 0 || v8 == 0;
          v11 = v9 && (v8 | IntegerValue & 2) == 0;
          if (!v11 && v10)
          {
            break;
          }
        }

        if (v5 == ++v6)
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  return result;
}

void *BKSHIDEventDigitizerGetTouchLocus(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathCollectionEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v10 = v6;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 562;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18634D88CLL);
  }

  if (!a2)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pathEvent"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v10 = v8;
      v11 = 2114;
      v12 = @"BKSHIDEvent.m";
      v13 = 1024;
      v14 = 563;
      v15 = 2114;
      v16 = v7;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18634D960);
  }

  v2 = _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(a1, a2);
  v3 = [v2 locus];

  return v3;
}

id _BKSHIDEventGetSubEventInfoFromDigitierEventForPathEvent(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (IOHIDEventGetType() == 11)
    {
      IntegerValue = IOHIDEventGetIntegerValue();
      v5 = BKSHIDEventGetDigitizerAttributes(a1);
      v6 = v5;
      if (v5)
      {
        v7 = [v5 pathAttributes];
        v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          v9 = v8;
          v10 = MEMORY[0];
          while (2)
          {
            for (i = 0; i != v9; i = (i + 1))
            {
              if (MEMORY[0] != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(8 * i);
              if ([v12 pathIndex] == IntegerValue)
              {
                v2 = v12;
                goto LABEL_16;
              }
            }

            v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        v2 = 0;
LABEL_16:
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
  }

  return v2;
}

uint64_t _BKSHIDTouchStreamSetEventDispatchMode(mach_port_t a1, int a2, char a3, char a4, double a5)
{
  v9 = a2;
  v8 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  v11 = 0;
  v12 = 0;
  v13 = a4;
  v14 = 0;
  v15 = 0;
  v16 = a5;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000035;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v5 = mach_msg(&msg, 1, 0x34u, 0, 0, 0, 0);
  if ((v5 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v5;
}

__CFString *NSStringFromBKSHitTestRegionLocation(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46F38[a1];
  }

  return v2;
}

uint64_t BKSDisplaySetSecureMode(uint64_t a1)
{
  v1 = a1;
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);

  return _BKSDisplaySetSecureMode(v2, v1);
}

uint64_t _BKSDisplaySetSecureMode(int a1, char a2)
{
  *&msg[20] = 0u;
  v9 = 0;
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x1E69E99E0];
  msg[32] = a2;
  *&msg[33] = 0;
  msg[35] = 0;
  special_reply_port = mig_get_special_reply_port();
  *&msg[8] = a1;
  *&msg[12] = special_reply_port;
  *msg = 5395;
  *&msg[16] = 0x5B917D00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
    v4 = *&msg[12];
  }

  else
  {
    v4 = special_reply_port;
  }

  v5 = mach_msg(msg, 3162115, 0x24u, 0x2Cu, v4, 0, 0);
  v6 = v5;
  if ((v5 - 268435458) <= 0xE && ((1 << (v5 - 2)) & 0x4003) != 0)
  {
    goto LABEL_15;
  }

  if (v5)
  {
    mig_dealloc_special_reply_port();
LABEL_15:
    if ((v6 - 268435459) > 1)
    {
      return v6;
    }

    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

LABEL_20:
    mach_msg_destroy(msg);
    return v6;
  }

  if (*&msg[20] == 71)
  {
    v6 = 4294966988;
    goto LABEL_20;
  }

  if (*&msg[20] != 6001121)
  {
    v6 = 4294966995;
    goto LABEL_20;
  }

  v6 = 4294966996;
  if ((*msg & 0x80000000) != 0)
  {
    goto LABEL_20;
  }

  if (*&msg[4] != 36)
  {
    goto LABEL_20;
  }

  if (*&msg[8])
  {
    goto LABEL_20;
  }

  v6 = *&msg[32];
  if (*&msg[32])
  {
    goto LABEL_20;
  }

  return v6;
}

__CFString *NSStringFromBKSHIDUISensorDisplayState(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47790[a1];
  }

  return v2;
}

id BKLogTouchDeliveryObserver()
{
  if (BKLogTouchDeliveryObserver_onceToken != -1)
  {
    dispatch_once(&BKLogTouchDeliveryObserver_onceToken, &__block_literal_global_31_8084);
  }

  v1 = BKLogTouchDeliveryObserver___logObj;

  return v1;
}

id _BKSHIDEventGetConciseDescriptionKeyboard(uint64_t a1, uint64_t a2)
{
  SenderID = IOHIDEventGetSenderID();
  IntegerValue = IOHIDEventGetIntegerValue();
  v35 = IOHIDEventGetIntegerValue();
  v4 = IOHIDEventGetIntegerValue();
  v5 = IOHIDEventGetIntegerValue();
  Phase = IOHIDEventGetPhase();
  v7 = IOHIDEventGetIntegerValue();
  v36 = BKSHIDEventGetBaseAttributes(a1);
  v33 = MEMORY[0x1E696AEC0];
  if (v4 == 7)
  {
    v8 = @"KeyPress";
    goto LABEL_3;
  }

  v12 = v5 | (v4 << 16);
  if (v12 > 786559)
  {
    if (v12 > 786657)
    {
      if (v12 <= 786976)
      {
        if (v12 > 786864)
        {
          if (v12 > 786947)
          {
            if (v12 != 786948)
            {
              if (v12 == 786953)
              {
                v8 = @"Options";
                goto LABEL_3;
              }

              goto LABEL_170;
            }

            v8 = @"ACExit";
          }

          else
          {
            if (v12 != 786865)
            {
              if (v12 == 786874)
              {
                v8 = @"DigitalWallet";
                goto LABEL_3;
              }

              goto LABEL_170;
            }

            v8 = @"Slideshow";
          }
        }

        else if (v12 > 786665)
        {
          if (v12 != 786666)
          {
            if (v12 == 786846)
            {
              v8 = @"TerminalLock";
              goto LABEL_3;
            }

            goto LABEL_170;
          }

          v8 = @"VolumeDecrement";
        }

        else
        {
          if (v12 != 786658)
          {
            if (v12 == 786665)
            {
              v8 = @"VolumeIncrement";
              goto LABEL_3;
            }

            goto LABEL_170;
          }

          v8 = @"ToggleMute";
        }

        goto LABEL_3;
      }

      if (v12 <= 787035)
      {
        if (v12 > 786979)
        {
          if (v12 != 786980)
          {
            if (v12 == 787035)
            {
              v8 = @"Like";
              goto LABEL_3;
            }

            goto LABEL_170;
          }

          v8 = @"ACBack";
        }

        else
        {
          if (v12 != 786977)
          {
            if (v12 == 786979)
            {
              v8 = @"ACHome";
              goto LABEL_3;
            }

            goto LABEL_170;
          }

          v8 = @"ACSearch";
        }

        goto LABEL_3;
      }

      if (v12 <= 787100)
      {
        if (v12 != 787036)
        {
          if (v12 == 787042)
          {
            v8 = @"AddToWishlist";
            goto LABEL_3;
          }

          goto LABEL_170;
        }

        v8 = @"Dislike";
        goto LABEL_3;
      }

      if (v12 == 787101)
      {
        v8 = @"KeyboardLayoutSelect";
        goto LABEL_3;
      }

      if (v12 != 16711683)
      {
LABEL_170:
        v8 = @"Unknown";
        goto LABEL_3;
      }

LABEL_154:
      v8 = @"Function";
      goto LABEL_3;
    }

    if (v12 > 786572)
    {
      switch(v12)
      {
        case 786608:
          v8 = @"Play";
          goto LABEL_3;
        case 786609:
          v8 = @"Pause";
          goto LABEL_3;
        case 786610:
          v8 = @"Record";
          goto LABEL_3;
        case 786611:
          v8 = @"FastForward";
          goto LABEL_3;
        case 786612:
          v8 = @"Rewind";
          goto LABEL_3;
        case 786613:
          v8 = @"ScanNextTrack";
          goto LABEL_3;
        case 786614:
          v8 = @"ScanPreviousTrack";
          goto LABEL_3;
        case 786615:
        case 786616:
        case 786618:
        case 786619:
        case 786621:
        case 786623:
        case 786624:
        case 786625:
        case 786626:
        case 786627:
        case 786628:
        case 786629:
        case 786630:
        case 786631:
        case 786632:
        case 786633:
        case 786636:
        case 786638:
          goto LABEL_170;
        case 786617:
          v8 = @"ToggleShuffle";
          goto LABEL_3;
        case 786620:
          v8 = @"ToggleRepeat";
          goto LABEL_3;
        case 786622:
          v8 = @"PlaybackSpeedNormal";
          goto LABEL_3;
        case 786634:
          v8 = @"PlaybackSpeedFaster";
          goto LABEL_3;
        case 786635:
          v8 = @"PlaybackSpeedSlower";
          goto LABEL_3;
        case 786637:
          v8 = @"PlayOrPause";
          goto LABEL_3;
        case 786639:
          v8 = @"VoiceCommand";
          goto LABEL_3;
        default:
          if (v12 == 786573)
          {
            v8 = @"Guide";
          }

          else
          {
            if (v12 != 786581)
            {
              goto LABEL_170;
            }

            v8 = @"Side";
          }

          break;
      }

      goto LABEL_3;
    }

    if (v12 <= 786565)
    {
      if (v12 != 786560)
      {
        if (v12 == 786564)
        {
          v8 = @"Tuning";
          goto LABEL_3;
        }

        goto LABEL_170;
      }

LABEL_130:
      v8 = @"Select";
      goto LABEL_3;
    }

    if (v12 != 786566)
    {
      if (v12 == 786569)
      {
        v8 = @"Provider";
        goto LABEL_3;
      }

      goto LABEL_170;
    }

LABEL_129:
    v8 = @"Home";
    goto LABEL_3;
  }

  v8 = @"Action";
  if (v12 > 720928)
  {
    if (v12 > 786498)
    {
      if (v12 <= 786532)
      {
        if (v12 <= 786500)
        {
          if (v12 == 786499)
          {
            v8 = @"Down";
          }

          else
          {
            v8 = @"Left";
          }

          goto LABEL_3;
        }

        if (v12 != 786501)
        {
          if (v12 == 786528)
          {
            v8 = @"TV";
            goto LABEL_3;
          }

          goto LABEL_170;
        }

        v8 = @"Right";
      }

      else if (v12 <= 786543)
      {
        if (v12 != 786533)
        {
          if (v12 == 786543)
          {
            v8 = @"DisplayBrightnessIncrement";
            goto LABEL_3;
          }

          goto LABEL_170;
        }

        v8 = @"Snapshot";
      }

      else
      {
        switch(v12)
        {
          case 786544:
            v8 = @"DisplayBrightnessDecrement";
            break;
          case 786553:
            v8 = @"KeyboardBrightnessIncrement";
            break;
          case 786554:
            v8 = @"KeyboardBrightnessDecrement";
            goto LABEL_3;
          default:
            goto LABEL_170;
        }
      }

      goto LABEL_3;
    }

    if (v12 <= 786435)
    {
      if (v12 > 720940)
      {
        if (v12 == 720941)
        {
          goto LABEL_3;
        }

        if (v12 == 720942)
        {
          v8 = @"Ringer";
          goto LABEL_3;
        }

        goto LABEL_170;
      }

      if (v12 != 720929)
      {
        if (v12 == 720931)
        {
          v8 = @"ObsoleteHold";
          goto LABEL_3;
        }

        goto LABEL_170;
      }

      v8 = @"Headset";
      goto LABEL_3;
    }

    if (v12 <= 786495)
    {
      if (v12 != 786436)
      {
        if (v12 == 786480)
        {
          v8 = @"Lock";
          goto LABEL_3;
        }

        goto LABEL_170;
      }

      v8 = @"Microphone";
      goto LABEL_3;
    }

    if (v12 != 786496)
    {
      if (v12 != 786497)
      {
        v8 = @"Up";
        goto LABEL_3;
      }

      goto LABEL_130;
    }

    goto LABEL_129;
  }

  if (v12 > -16187391)
  {
    if (v12 <= -16187361)
    {
      if (v12 <= -16187389)
      {
        if (v12 == -16187390)
        {
          v8 = @"SmartCoverFlap1";
        }

        else
        {
          v8 = @"SmartCoverFlap2";
        }

        goto LABEL_3;
      }

      if (v12 != -16187388)
      {
        if (v12 == -16187376)
        {
          v8 = @"SmartCoverAttach";
          goto LABEL_3;
        }

        goto LABEL_170;
      }

      v8 = @"SmartCoverFlap3";
    }

    else if (v12 <= 65667)
    {
      if (v12 != -16187360)
      {
        if (v12 == 65667)
        {
          v8 = @"SystemWakeUp";
          goto LABEL_3;
        }

        goto LABEL_170;
      }

      v8 = @"SmartCoverStateUnknown";
    }

    else
    {
      switch(v12)
      {
        case 65668:
          v8 = @"Colors";
          break;
        case 65670:
          v8 = @"Menu";
          break;
        case 65691:
          v8 = @"DoNotDisturb";
          goto LABEL_3;
        default:
          goto LABEL_170;
      }
    }

    goto LABEL_3;
  }

  if (v12 <= -16711648)
  {
    if (v12 > -16711665)
    {
      if (v12 != -16711664)
      {
        if (v12 == -16711648)
        {
          v8 = @"BrightnessUp";
          goto LABEL_3;
        }

        goto LABEL_170;
      }

      v8 = @"ExposéAll";
      goto LABEL_3;
    }

    if (v12 != -16711677)
    {
      if (v12 == -16711676)
      {
        v8 = @"Launchpad";
        goto LABEL_3;
      }

      goto LABEL_170;
    }

    goto LABEL_154;
  }

  if (v12 <= -16711169)
  {
    if (v12 != -16711647)
    {
      if (v12 == -16711632)
      {
        v8 = @"Language";
        goto LABEL_3;
      }

      goto LABEL_170;
    }

    v8 = @"BrightnessDown";
  }

  else
  {
    if (v12 == -16711168)
    {
      goto LABEL_3;
    }

    if (v12 != -16318463)
    {
      if (v12 == -16187391)
      {
        v8 = @"SmartCoverOpen";
        goto LABEL_3;
      }

      goto LABEL_170;
    }

    v8 = @"HeadsetAvailability";
  }

LABEL_3:
  v31 = v8;
  v34 = v5;
  if (a2)
  {
    v9 = a2;
    v10 = NSStringFromBKSHIDEventSource(a2);
    v11 = [@"source" stringByAppendingFormat:v10];
  }

  else
  {
    v9 = 0;
    v11 = &stru_1EF552F68;
  }

  Children = IOHIDEventGetChildren();
  if (Children)
  {
    v14 = Children;
    for (i = 0; i < CFArrayGetCount(v14); ++i)
    {
      CFArrayGetValueAtIndex(v14, i);
      if (IOHIDEventGetType() == 1 && IOHIDEventGetIntegerValue() == 65299)
      {
        v16 = IOHIDEventGetIntegerValue();
        switch(v16)
        {
          case 1:
            v17 = @"(IR) ";
            goto LABEL_24;
          case 16:
            v17 = @"(MediaRemote) ";
            goto LABEL_24;
          case 2:
            v17 = @"(CEC) ";
            goto LABEL_24;
        }

LABEL_22:
        v17 = [MEMORY[0x1E696AEC0] stringWithFormat:v16];
        goto LABEL_24;
      }
    }

    v16 = 0;
    goto LABEL_22;
  }

  v17 = &stru_1EF552F68;
LABEL_24:
  if ((SenderID + 0x7FFFFFF7E8CE6C8FLL) < 6 || SenderID == 0x8000000817319378)
  {
    v30 = SenderID;
LABEL_26:
    [@"senderID" stringByAppendingFormat:v30];
    goto LABEL_27;
  }

  if (!SenderID)
  {
    goto LABEL_26;
  }

  if (!v9)
  {
    v18 = &stru_1EF552F68;
    if (Phase)
    {
      goto LABEL_28;
    }

    goto LABEL_78;
  }

  [@"senderID" stringByAppendingFormat:SenderID];
  v18 = LABEL_27:;
  if (Phase)
  {
LABEL_28:
    v19 = [@"phase" stringByAppendingFormat:Phase];
    goto LABEL_79;
  }

LABEL_78:
  v19 = &stru_1EF552F68;
LABEL_79:
  if (v7 == 1)
  {
    v20 = &stru_1EF552F68;
  }

  else
  {
    v20 = [@"pressCount" stringByAppendingFormat:v7];
  }

  if (v35)
  {
    v21 = [@"longPress" stringByAppendingFormat:1];
  }

  else
  {
    v21 = &stru_1EF552F68;
  }

  if (IntegerValue && (Phase & 1) != 0)
  {
    v22 = @"began";
  }

  else if ((Phase & 4) != 0 && IntegerValue)
  {
    v22 = @"end";
  }

  else if (IntegerValue || (Phase & 4) == 0)
  {
    v22 = @"up";
    if (IntegerValue)
    {
      v22 = @"down";
    }

    if (v35)
    {
      v22 = @"long press";
    }
  }

  else
  {
    v22 = @"timeout";
  }

  v23 = v22;
  v24 = [v36 options];
  if (v24)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = NSStringFromBKSHIDEventAttributeOptions(v24);
    v27 = [v25 stringWithFormat:v26];
  }

  else
  {
    v27 = &stru_1EF552F68;
  }

  v28 = [v33 stringWithFormat:v31, v4, v34, IntegerValue != 0, v11, v17, v18, v19, v20, v21, v23, v27];

  return v28;
}

uint64_t _BKSHIDRequestUISensorMode(int a1, uint64_t a2, int a3)
{
  v6 = a2;
  v7 = 16777472;
  v8 = a3;
  v9 = *MEMORY[0x1E69E99E0];
  v10 = a3;
  *msg = 2147483667;
  *&msg[8] = a1;
  *&msg[12] = xmmword_1863CFB30;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(msg);
  }

  v3 = mach_msg(msg, 1, 0x38u, 0, 0, 0, 0);
  if ((v3 - 268435459) <= 1)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], *&msg[12]);
    }

    mach_msg_destroy(msg);
  }

  return v3;
}

uint64_t BKSHIDServicesAmbientLightSensorEnableAutoBrightness(uint64_t a1)
{
  v1 = a1;
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDAmbientLightSensorEnableAutoBrightness(v2, v1);
}

uint64_t _BKSHIDAmbientLightSensorEnableAutoBrightness(mach_port_t a1, char a2)
{
  v5 = *MEMORY[0x1E69E99E0];
  v6 = a2;
  v7 = 0;
  v8 = 0;
  *&msg.msgh_bits = 19;
  msg.msgh_voucher_port = 0;
  msg.msgh_id = 6000010;
  msg.msgh_remote_port = a1;
  msg.msgh_local_port = 0;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&msg);
  }

  v2 = mach_msg(&msg, 1, 0x24u, 0, 0, 0, 0);
  if ((v2 - 268435459) <= 1)
  {
    if ((msg.msgh_bits & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], msg.msgh_local_port);
    }

    mach_msg_destroy(&msg);
  }

  return v2;
}

__CFString *NSStringFromBKSHIDServicesProximityDetectionMode(uint64_t a1)
{
  if (a1 < 0x15 && ((0x10307Fu >> a1) & 1) != 0)
  {
    v2 = off_1E6F47BB0[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  return v2;
}

void BKSHIDEventSetSimpleDeliveryInfo(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = [BKSHIDEventBaseAttributes baseAttributesFromProvider:?];
  [v6 setSource:?];
  if (a3)
  {
    [v6 setOptions:?];
  }

  _BKSHIDEventSetAttributes(a1, v6, 1);
}

id _BKSHIDEventGetConciseDescriptionProximity(uint64_t a1)
{
  IntegerValue = IOHIDEventGetIntegerValue();
  SenderID = IOHIDEventGetSenderID();
  TimeStamp = IOHIDEventGetTimeStamp();
  v5 = BKSHIDEventGetProximityAttributes(a1);
  v6 = v5;
  if (v5)
  {
    v7 = NSStringFromBKSHIDServicesProximityDetectionMode([v5 proximityDetectionMode]);
  }

  else
  {
    v7 = @"-";
  }

  v8 = MEMORY[0x1E696AEC0];
  v9 = BKSNSStringFromIOHIDProximityDetectionMask(IntegerValue);
  v10 = [v8 stringWithFormat:v7, v9, SenderID, TimeStamp];

  return v10;
}

id BKSHIDEventGetConciseDescription(void *a1)
{
  Type = IOHIDEventGetType();
  if (Type <= 5)
  {
    if (Type > 2)
    {
      if (Type == 3)
      {
        v23 = BKSHIDEventGetBaseAttributes(a1);
        v24 = [v23 source];

        v22 = _BKSHIDEventGetConciseDescriptionKeyboard(a1, v24);
      }

      else
      {
        if (Type == 4)
        {
          _BKSHIDEventGetConciseDescriptionTranslation(a1);
        }

        else
        {
          _BKSHIDEventGetConciseDescriptionRotation(a1);
        }
        v22 = ;
      }

      goto LABEL_46;
    }

    if (Type == 1)
    {
      v22 = _BKSHIDEventGetConciseDescriptionVendorDefined(a1);
    }

    else
    {
      if (Type != 2)
      {
        goto LABEL_45;
      }

      v22 = _BKSHIDEventGetConciseDescriptionButton(a1);
    }

    goto LABEL_46;
  }

  if (Type > 13)
  {
    switch(Type)
    {
      case 14:
        v22 = _BKSHIDEventGetConciseDescriptionProximity(a1);
        break;
      case 17:
        v22 = _BKSHIDEventGetConciseDescriptionPointer(a1);
        break;
      case 39:
        v22 = _BKSHIDEventGetConciseDescriptionGenericGesture(a1);
        break;
      default:
        goto LABEL_45;
    }

LABEL_46:
    v21 = v22;
    goto LABEL_47;
  }

  if (Type == 6)
  {
    v22 = _BKSHIDEventGetConciseDescriptionScroll(a1);
    goto LABEL_46;
  }

  if (Type == 7)
  {
    v22 = _BKSHIDEventGetConciseDescriptionScale(a1);
    goto LABEL_46;
  }

  if (Type != 11)
  {
LABEL_45:
    v22 = [MEMORY[0x1E696AD60] stringWithFormat:IOHIDEventTypeGetName()];
    goto LABEL_46;
  }

  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_alloc_init(MEMORY[0x1E698E688]);
  v5 = BKSHIDEventGetDigitizerAttributes(a1);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 token];
    v8 = [v4 appendObject:? withName:?];

    v9 = [v6 options];
    if ((v9 & 0x200) != 0)
    {
      [v4 appendString:? withName:?];
    }

    if ((v9 & 0x400) != 0)
    {
      [v4 appendString:? withName:?];
    }

    _BKSHIDEventAppendEventFlags(a1, v4);
    v10 = [v6 touchStreamIdentifier];
    if (v10)
    {
      v11 = NSStringFromBKSTouchStreamIdentifier(v10);
      [v4 appendString:? withName:?];
    }

    if ([v6 systemGestureStateChange])
    {
      [v4 appendString:? withName:?];
    }

    if ([v6 systemGesturesPossible])
    {
      [v4 appendString:? withName:?];
    }

    v12 = [v6 activeModifiers];
    if (v12)
    {
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = ___BKSHIDEventConciseDescriptionDigitizer_block_invoke;
      v34 = &__block_descriptor_40_e43_v16__0___BSDescriptionStringAppendTarget__8l;
      v35 = v12;
      [v4 appendCustomFormatWithName:? block:?];
    }

    v13 = [v6 sceneTouchBehavior];
    if (v13)
    {
      v14 = NSStringFromBKSSceneHostTouchBehavior(v13);
      [v4 appendString:? withName:?];
    }
  }

  if (IOHIDEventGetIntegerValue())
  {
    v15 = [v4 appendInteger:? withName:?];
  }

  v16 = IOHIDEventGetChildren();
  v17 = [v6 pathAttributes];
  [v17 count];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v26 = MEMORY[0x1E69E9820];
  v18 = v4;
  v19 = v17;
  [v18 appendCollection:? withName:? itemBlock:?];
  if (!v28[3])
  {
    _BKSHIDEventAppendEventFlags(a1, v18);
  }

  v20 = [v18 description];

  _Block_object_dispose(&v27, 8);
  v21 = [v3 stringWithFormat:v20, v26, 3221225472, ___BKSHIDEventConciseDescriptionDigitizer_block_invoke_2, &unk_1E6F47AB0];

LABEL_47:

  return v21;
}

void sub_18635117C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

_DWORD *BKSHIDEventGetProximityAttributes(uint64_t a1)
{
  Type = IOHIDEventGetType();
  AttributeDataPtr = 0;
  if (Type == 14 && a1)
  {
    if (IOHIDEventGetAttributeDataLength() < 1)
    {
      goto LABEL_8;
    }

    AttributeDataPtr = IOHIDEventGetAttributeDataPtr();
    if (!AttributeDataPtr)
    {
      goto LABEL_9;
    }

    if (AttributeDataPtr[1] && *AttributeDataPtr == 7)
    {
      AttributeDataPtr = BKSHIDEventGetBaseAttributes(a1);
    }

    else
    {
LABEL_8:
      AttributeDataPtr = 0;
    }
  }

LABEL_9:

  return AttributeDataPtr;
}

Class __getCAFenceHandleClass_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!QuartzCoreLibraryCore_frameworkLibrary_8152)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __QuartzCoreLibraryCore_block_invoke_8153;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E6F47080;
    v8 = 0;
    QuartzCoreLibraryCore_frameworkLibrary_8152 = _sl_dlopen();
  }

  if (!QuartzCoreLibraryCore_frameworkLibrary_8152)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v3 handleFailureInFunction:v6[0] file:? lineNumber:? description:?];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CAFenceHandle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v3 handleFailureInFunction:"CAFenceHandle" file:? lineNumber:? description:?];

LABEL_10:
    __break(1u);
  }

  getCAFenceHandleClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

_BKSTouchDeliveryPolicyConcreteServerReference *BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler(void *a1)
{
  v1 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    dispatch_once(&BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler_onceToken, &__block_literal_global_1717);
  }

  v3 = objc_alloc_init(_BKSTouchDeliveryPolicyConcreteServerReference);
  [(_BKSTouchDeliveryPolicyConcreteServerReference *)v3 setServer:?];
  [(_BKSTouchDeliveryPolicyConcreteServerReference *)v3 setErrorHandler:?];

  return v3;
}

void __BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler_block_invoke()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = objc_alloc_init(_BKSTouchDeliveryPolicyConcreteServerInterface);
  v1 = BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler_server;
  BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler_server = v0;

  if (!BKSTouchDeliveryPolicyServerGetProxyWithErrorHandler_server)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v4 = 138544130;
      v5 = v3;
      v6 = 2114;
      v7 = @"BKSTouchDeliveryPolicyServerInterface.m";
      v8 = 1024;
      v9 = 70;
      v10 = 2114;
      v11 = v2;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v4, 0x26u);
    }

    [v2 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18635181CLL);
  }
}

uint64_t __BKLogTouchDeliveryPolicy_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "TouchDeliveryPolicy");
  v1 = BKLogTouchDeliveryPolicy___logObj;
  BKLogTouchDeliveryPolicy___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void collectPolicies(void *a1, void *a2)
{
  v3 = a2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __collectPolicies_block_invoke;
  v9 = &unk_1E6F46C08;
  v10 = v3;
  v4 = v3;
  v5 = [a1 reducePolicyToObjectWithBlock:?];
}

id __collectPolicies_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = *(a1 + 32);
  v10 = v3;
  v7 = MEMORY[0x1E69E9820];
  v8 = *(a1 + 32);
  v4 = v10;
  v5 = [v4 matchSharingTouchesPolicy:v7 orCancelTouchesPolicy:3221225472 orCombinedPolicy:{__collectPolicies_block_invoke_3, &unk_1E6F46C58}];

  return v5;
}

uint64_t __BKLogKeyboard_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "Keyboard");
  v1 = BKLogKeyboard___logObj;
  BKLogKeyboard___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t BKSHIDServicesProximityDetectionActive()
{
  v2 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetProximityDetectionActive(v0, &v2);
  return v2;
}

uint64_t _BKSHIDGetProximityDetectionActive(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D9200000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000118)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

uint64_t _BKSDisplayServicesNotifySetDisplayBlanked(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v9 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v6 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplayNotifySetDisplayBlanked(v6, buffer, v4, v3);
}

uint64_t _BKSDisplayNotifySetDisplayBlanked(mach_port_name_t a1, const char *a2, char a3, char a4)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, 480);
  *name = 0u;
  v13 = 0u;
  *(&v13 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v7 = mig_strncpy_zerofill(v14 + 8, a2, 1024);
  }

  else
  {
    v7 = mig_strncpy(v14 + 8, a2, 1024);
  }

  LODWORD(v14[0]) = 0;
  DWORD1(v14[0]) = v7;
  v8 = (v7 + 3) & 0xFFFFFFFC;
  v9 = name + v8;
  v9[40] = a3;
  *(v9 + 41) = 0;
  v9[43] = 0;
  v9[44] = a4;
  *(v9 + 45) = 0;
  v9[47] = 0;
  name[0] = 19;
  name[2] = a1;
  name[3] = 0;
  *&v13 = 0x5B916B00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
  }

  v10 = mach_msg(name, 1, v8 + 48, 0, 0, 0, 0);
  if ((v10 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    mach_msg_destroy(name);
  }

  return v10;
}

uint64_t BKSHIDServicesIsSmartCoverClosed()
{
  v2 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDIsSmartCoverClosed(v0, &v2);
  return v2;
}

uint64_t _BKSHIDIsSmartCoverClosed(int a1, _BYTE *a2)
{
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = a1;
  name_8 = special_reply_port;
  v10 = 5395;
  *name_12 = 0x5B8D9600000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v10);
    v5 = name_8;
  }

  else
  {
    v5 = special_reply_port;
  }

  v6 = mach_msg(&v10, 3162115, 0x18u, 0x30u, v5, 0, 0);
  v7 = v6;
  if ((v6 - 268435458) > 0xE || ((1 << (v6 - 2)) & 0x4003) == 0)
  {
    if (!v6)
    {
      if (*&name_12[4] == 71)
      {
        v7 = 4294966988;
      }

      else if (*&name_12[4] == 6000122)
      {
        if ((v10 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v7 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v7;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v8 = 1;
            }

            else
            {
              v8 = *&name_12[16] == 0;
            }

            if (v8)
            {
              v7 = 4294966996;
            }

            else
            {
              v7 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v7 = 4294966996;
      }

      else
      {
        v7 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v10);
      return v7;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v7 - 268435459) <= 1)
  {
    if ((v10 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v7;
}

void BKSHIDServicesGetHumanPresenceStatus(void *a1, void *a2, BOOL *a3, int *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a1;
  bzero(buffer, 0x400uLL);
  if (!v7 || CFStringGetCString(v7, buffer, 1024, 0x8000100u))
  {
    v11 = 0;
    v10 = 0;
    v9 = 0;
    v8 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDGetHumanPresenceStatus(v8, buffer, &v11, &v10, &v9);
    if (a2)
    {
      *a2 = v11;
    }

    if (a3)
    {
      *a3 = v10 != 0;
    }

    if (a4)
    {
      *a4 = v9;
    }
  }
}

uint64_t _BKSHIDGetHumanPresenceStatus(mach_port_name_t a1, const char *a2, _DWORD *a3, _BYTE *a4, _DWORD *a5)
{
  v20 = *MEMORY[0x1E69E9840];
  memset(v19, 0, 480);
  *name = 0u;
  v18 = 0u;
  *(&v18 + 1) = *MEMORY[0x1E69E99E0];
  if (MEMORY[0x1EEE9AC40])
  {
    v9 = mig_strncpy_zerofill(v19 + 8, a2, 1024);
  }

  else
  {
    v9 = mig_strncpy(v19 + 8, a2, 1024);
  }

  LODWORD(v19[0]) = 0;
  DWORD1(v19[0]) = v9;
  v10 = (v9 + 3) & 0xFFFFFFFC;
  special_reply_port = mig_get_special_reply_port();
  name[2] = a1;
  name[3] = special_reply_port;
  name[0] = 5395;
  *&v18 = 0x5B8DBD00000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(name);
    v12 = name[3];
  }

  else
  {
    v12 = special_reply_port;
  }

  v13 = mach_msg(name, 3162115, v10 + 40, 0x38u, v12, 0, 0);
  v14 = v13;
  if ((v13 - 268435458) > 0xE || ((1 << (v13 - 2)) & 0x4003) == 0)
  {
    if (!v13)
    {
      if (DWORD1(v18) == 71)
      {
        v14 = 4294966988;
      }

      else if (DWORD1(v18) == 6000161)
      {
        if ((name[0] & 0x80000000) == 0)
        {
          if (name[1] == 48)
          {
            if (!name[2])
            {
              v14 = LODWORD(v19[0]);
              if (!LODWORD(v19[0]))
              {
                *a3 = DWORD1(v19[0]);
                *a4 = BYTE8(v19[0]);
                *a5 = HIDWORD(v19[0]);
                return v14;
              }

              goto LABEL_29;
            }
          }

          else if (name[1] == 36)
          {
            if (name[2])
            {
              v15 = 1;
            }

            else
            {
              v15 = LODWORD(v19[0]) == 0;
            }

            if (v15)
            {
              v14 = 4294966996;
            }

            else
            {
              v14 = LODWORD(v19[0]);
            }

            goto LABEL_29;
          }
        }

        v14 = 4294966996;
      }

      else
      {
        v14 = 4294966995;
      }

LABEL_29:
      mach_msg_destroy(name);
      return v14;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v14 - 268435459) <= 1)
  {
    if ((name[0] & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name[3]);
    }

    goto LABEL_29;
  }

  return v14;
}

id BKLogDetailed()
{
  if (BKLogDetailed_onceToken != -1)
  {
    dispatch_once(&BKLogDetailed_onceToken, &__block_literal_global_4);
  }

  v1 = BKLogDetailed___logObj;

  return v1;
}

void __getCADisplayClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CADisplay");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCADisplayClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v2 handleFailureInFunction:"CADisplay" file:? lineNumber:? description:?];

    __break(1u);
  }
}

void QuartzCoreLibrary()
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 0;
  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x1E69E9820];
    v3[2] = 3221225472;
    v3[3] = __QuartzCoreLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_1E6F46D30;
    v5 = 0;
    QuartzCoreLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  if (!QuartzCoreLibraryCore_frameworkLibrary)
  {
    v1 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v1 handleFailureInFunction:v3[0] file:? lineNumber:? description:?];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

void BKSHIDServicesRequestProximityDetectionMode(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  kdebug_trace();
  v2 = BKLogUISensor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = NSStringFromBKSHIDServicesProximityDetectionMode(a1);
    *buf = 138543362;
    v11 = v3;
    _os_log_impl(&dword_186345000, v2, OS_LOG_TYPE_DEFAULT, "request prox mode: %{public}@", buf, 0xCu);
  }

  os_unfair_lock_lock(&BKSHIDServicesRequestProximityDetectionMode_sLock);
  if (a1)
  {
    v4 = [BKSHIDUISensorMode buildModeForReason:"buildModeForReason:builder:" builder:?];
    v5 = +[BKSHIDUISensorService sharedInstance];
    v6 = [v5 suppressUISensorChangesForReason:?];
    v7 = BKSHIDServicesRequestProximityDetectionMode_sModeAssertion;
    v8 = [v5 requestUISensorMode:?];
    v9 = BKSHIDServicesRequestProximityDetectionMode_sModeAssertion;
    BKSHIDServicesRequestProximityDetectionMode_sModeAssertion = v8;

    [v7 invalidate];
    [v6 invalidate];
  }

  else
  {
    [BKSHIDServicesRequestProximityDetectionMode_sModeAssertion invalidate];
    v4 = BKSHIDServicesRequestProximityDetectionMode_sModeAssertion;
    BKSHIDServicesRequestProximityDetectionMode_sModeAssertion = 0;
  }

  os_unfair_lock_unlock(&BKSHIDServicesRequestProximityDetectionMode_sLock);
}

void __BKSHIDServicesRequestProximityDetectionMode_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setDigitizerEnabled:?];
  [v2 setProximityDetectionMode:?];
}

__CFString *BKSNSStringFromIOHIDProximityDetectionMask(unsigned int a1)
{
  if (a1)
  {
    v2 = [MEMORY[0x1E696AD60] string];
    v4 = 0;
    _BKAppendStringForBitmaskDescription(v2, @"LargeBodyContact", a1, 1, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"LargeBodyFarField", a1, 2, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"IrregularObjects", a1, 4, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"EdgeStraddling", a1, 8, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"FlatFingerClasp", a1, 16, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"FingerTouch", a1, 32, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"Receiver", a1, 64, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"SmallObjectsHovering", a1, 128, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"ReceiverCrude", a1, 256, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"ReceiverMonitoring", a1, 512, &v4);
    _BKAppendStringForBitmaskDescription(v2, @"ReceiverCrudeMonitoring", a1, 1024, &v4);
  }

  else
  {
    v2 = @"<none>";
  }

  return v2;
}

void _BKAppendStringForBitmaskDescription(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = a1;
  v9 = a2;
  if ((a4 & a3) != 0)
  {
    if (*a5 >= 1)
    {
      [v10 appendString:?];
    }

    [v10 appendString:?];
    ++*a5;
  }
}

uint64_t BKSHIDServicesGetObjectWithinProximity()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetObjectWithinProximity(v0, &v4, v1, v2);
  return v4;
}

uint64_t _BKSHIDGetObjectWithinProximity(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  memset(&name_12[4], 0, 28);
  name = 0;
  special_reply_port = mig_get_special_reply_port();
  name_4 = v5;
  name_8 = special_reply_port;
  v12 = 5395;
  *name_12 = 0x5B8D9100000000;
  if (MEMORY[0x1EEE9AC50])
  {
    voucher_mach_msg_set(&v12);
    v7 = name_8;
  }

  else
  {
    v7 = special_reply_port;
  }

  v8 = mach_msg(&v12, 3162115, 0x18u, 0x30u, v7, 0, 0);
  v9 = v8;
  if ((v8 - 268435458) > 0xE || ((1 << (v8 - 2)) & 0x4003) == 0)
  {
    if (!v8)
    {
      if (*&name_12[4] == 71)
      {
        v9 = 4294966988;
      }

      else if (*&name_12[4] == 6000117)
      {
        if ((v12 & 0x80000000) == 0)
        {
          if (name == 40)
          {
            if (!name_4)
            {
              v9 = *&name_12[16];
              if (!*&name_12[16])
              {
                *a2 = name_12[20];
                return v9;
              }

              goto LABEL_26;
            }
          }

          else if (name == 36)
          {
            if (name_4)
            {
              v10 = 1;
            }

            else
            {
              v10 = *&name_12[16] == 0;
            }

            if (v10)
            {
              v9 = 4294966996;
            }

            else
            {
              v9 = *&name_12[16];
            }

            goto LABEL_26;
          }
        }

        v9 = 4294966996;
      }

      else
      {
        v9 = 4294966995;
      }

LABEL_26:
      mach_msg_destroy(&v12);
      return v9;
    }

    mig_dealloc_special_reply_port();
  }

  if ((v9 - 268435459) <= 1)
  {
    if ((v12 & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], name_8);
    }

    goto LABEL_26;
  }

  return v9;
}

uint64_t _BKSVerifyIsArrayOfNumbers(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = 0u;
    v11 = 0u;
    v9 = 0u;
    v2 = v1;
    v3 = [v2 countByEnumeratingWithState:0 objects:? count:?];
    if (v3)
    {
      v4 = v3;
      v5 = *v9;
      while (2)
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(v2);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v7 = 0;
            goto LABEL_13;
          }

          v6 = (v6 + 1);
        }

        while (v4 != v6);
        v4 = [v2 countByEnumeratingWithState:? objects:? count:?];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v7 = 1;
LABEL_13:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

__CFString *NSStringFromBKSHIDEventBackBoardVendorSubtype(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F465F8[a1];
  }

  return v2;
}

uint64_t BKSHIDEventGetBackBoardVendorSubtype(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (IOHIDEventGetType() != 1 || IOHIDEventGetIntegerValue() != 65280 || IOHIDEventGetIntegerValue() != 92)
  {
    return 0;
  }

  if (IOHIDEventGetIntegerValue())
  {
    v1 = BKLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7[0]) = 0;
      v2 = "BKSHIDEventGetBackBoardVendorSubtype: unsupported event version";
LABEL_17:
      _os_log_error_impl(&dword_186345000, v1, OS_LOG_TYPE_ERROR, v2, v7, 2u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  if (IOHIDEventGetIntegerValue() <= 3)
  {
    v1 = BKLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7[0]) = 0;
      v2 = "BKSHIDEventGetBackBoardVendorSubtype: data too small";
      goto LABEL_17;
    }

LABEL_18:

    return 0;
  }

  DataValue = IOHIDEventGetDataValue();
  if (!DataValue)
  {
    v1 = BKLogCommon();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7[0]) = 0;
      v2 = "BKSHIDEventGetBackBoardVendorSubtype: data missing";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v4 = *DataValue;
  if (v4 > 3)
  {
    v5 = BKLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7[0] = 67109120;
      v7[1] = v4;
      _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "BKSHIDEventGetBackBoardVendorSubtype: invalid subtype %X", v7, 8u);
    }

    return 0;
  }

  return v4;
}

uint64_t BKSHIDEventCreateBackBoardVendorSubtypeEvent(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((a1 - 1) >= 3)
  {
    v3 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v5 = 138544130;
      v6 = v4;
      v7 = 2114;
      v8 = @"BKSHIDEventBackBoardVendor.m";
      v9 = 1024;
      v10 = 85;
      v11 = 2114;
      v12 = v3;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v5, 0x26u);
    }

    [v3 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863568A8);
  }

  v5 = a1;
  return IOHIDEventCreateVendorDefinedEvent();
}

void BSDescriptionStreamAppendBKSKeyModifierFlags(void *a1, int a2)
{
  v3 = a1;
  v4 = 0;
  if ((a2 & 0x800000) != 0)
  {
    _BKSKeyModifierStringAppend(v3, @"glb", &v4);
    if ((a2 & 0x100000) == 0)
    {
LABEL_3:
      if ((a2 & 0x40000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a2 & 0x100000) == 0)
  {
    goto LABEL_3;
  }

  _BKSKeyModifierStringAppend(v3, @"cmd", &v4);
  if ((a2 & 0x40000) == 0)
  {
LABEL_4:
    if ((a2 & 0x80000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  _BKSKeyModifierStringAppend(v3, @"ctrl", &v4);
  if ((a2 & 0x80000) == 0)
  {
LABEL_5:
    if ((a2 & 0x20000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  _BKSKeyModifierStringAppend(v3, @"opt", &v4);
  if ((a2 & 0x20000) == 0)
  {
LABEL_6:
    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  _BKSKeyModifierStringAppend(v3, @"shft", &v4);
  if ((a2 & 0x10000) == 0)
  {
LABEL_7:
    if ((a2 & 0x200000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_17:
  _BKSKeyModifierStringAppend(v3, @"capslock", &v4);
  if ((a2 & 0x200000) != 0)
  {
LABEL_8:
    _BKSKeyModifierStringAppend(v3, @"numpad", &v4);
  }

LABEL_9:
}

void _BKSKeyModifierStringAppend(void *a1, void *a2, _BYTE *a3)
{
  v6 = a1;
  v5 = a2;
  if (*a3)
  {
    [v6 appendString:?];
  }

  else
  {
    *a3 = 1;
  }

  [v6 appendString:?];
}

__CFString *NSStringFromBKSKeyModifierFlags(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_opt_new();
    BSDescriptionStreamAppendBKSKeyModifierFlags(v2, v1);
  }

  else
  {
    v2 = &stru_1EF552F68;
  }

  return v2;
}

__CFString *BKSRestartActionOptionsDescription(char a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = v2;
  if (a1)
  {
    [v2 addObject:?];
  }

  if ([v3 count])
  {
    v4 = [v3 componentsJoinedByString:?];
  }

  else
  {
    v4 = @"(none)";
  }

  return v4;
}

void _lock_InvalidatePortHelper(uint64_t a1, mach_port_name_t *a2, CFTypeRef *a3)
{
  mach_port_deallocate(*MEMORY[0x1E69E9A60], *a2);
  *a2 = 0;
  if (*a3)
  {
    CFRelease(*a3);
  }

  *a3 = 0;
  v6 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___lock_InvalidatePortHelper_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  dispatch_async(v6, block);
}

uint64_t _InvalidateHIDServicesPort()
{
  pthread_mutex_lock(&BKSServerPortLock);
  _lock_InvalidatePortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort);

  return pthread_mutex_unlock(&BKSServerPortLock);
}

uint64_t _InvalidateDisplayServicesPort()
{
  pthread_mutex_lock(&BKSServerPortLock);
  _lock_InvalidatePortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort);

  return pthread_mutex_unlock(&BKSServerPortLock);
}

uint64_t _InvalidateWatchdogPort()
{
  pthread_mutex_lock(&BKSServerPortLock);
  _lock_InvalidatePortHelper("com.apple.backboard.watchdog", BKSWatchdogPort, &BKSWatchdogMachPort);

  return pthread_mutex_unlock(&BKSServerPortLock);
}

float BKSHIDServicesGetBacklightFactor()
{
  v4 = -1.0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetBacklightFactor(v0, &v4, v1, v2);
  return v4;
}

uint64_t BKSHIDServicesSetBacklightFactorPending(float a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetBacklightFactorPending(v2, a1);
}

uint64_t BKSHIDServicesSetBacklightFactorWithFadeDuration(uint64_t a1, float a2, float a3)
{
  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetBacklightFactorWithFadeDuration(v6, a1, 0, v7, a2, a3);
}

uint64_t BKSHIDServicesSetBacklightFactorWithFadeDurationAsync(uint64_t a1, float a2, float a3)
{
  v3 = a1;
  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDNotifySetBacklightFactorWithFadeDurationAsync(v6, 1, v3, 0, a2, a3);
}

uint64_t BKSHIDServicesNotifyBacklightFactorWithFadeDurationAsync(uint64_t a1, float a2, float a3)
{
  v3 = a1;
  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDNotifySetBacklightFactorWithFadeDurationAsync(v6, 0, v3, 0, a2, a3);
}

uint64_t BKSHIDServicesSetBacklightFactorWithFadeDurationSilently(uint64_t a1, float a2, float a3)
{
  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetBacklightFactorWithFadeDuration(v6, a1, 1, v7, a2, a3);
}

uint64_t BKSHIDServicesSetBacklightFactorWithFadeDurationSilentlyAsync(uint64_t a1, float a2, float a3)
{
  v3 = a1;
  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDNotifySetBacklightFactorWithFadeDurationAsync(v6, 1, v3, 1, a2, a3);
}

void BKSHIDServicesSetBacklightFeatures(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v6 = 0;
  v2 = [MEMORY[0x1E698E750] encodeObject:? error:?];
  v3 = v6;
  if (v2)
  {
    v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDSetBacklightFeatures(v4, [v2 bytes], objc_msgSend(v2, "length"));
  }

  else
  {
    v5 = BKLogBacklight();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v8 = v1;
      v9 = 2114;
      v10 = v3;
      _os_log_error_impl(&dword_186345000, v5, OS_LOG_TYPE_ERROR, "BKSHIDServicesSetBacklightFeatures failed to encode %{public}@: %{public}@", buf, 0x16u);
    }
  }
}

uint64_t BKSHIDServicesAmbientLightSensorExists()
{
  if (BKSHIDServicesAmbientLightSensorExists_onceToken != -1)
  {
    dispatch_once(&BKSHIDServicesAmbientLightSensorExists_onceToken, &__block_literal_global_1846);
  }

  return BKSHIDServicesAmbientLightSensorExists_alsExists;
}

uint64_t __BKSHIDServicesAmbientLightSensorExists_block_invoke()
{
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDAmbientLightSensorExists(v0, &BKSHIDServicesAmbientLightSensorExists_alsExists, v1, v2);
}

uint64_t BKSHIDServicesAmbientLightSensorDisableAutoBrightness()
{
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDAmbientLightSensorDisableAutoBrightness(v0);
}

uint64_t BKSHIDServicesRequestEstimatedProximityEvents(double a1)
{
  v7 = 0;
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v3 = a1;
  _BKSHIDRequestEstimatedProximityEvents(v2, &v7, v4, v5, v3);
  return v7;
}

void BKSHIDServicesRequestProximityStatusEvent(void *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (![v1 length])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v6 handleFailureInFunction:? file:? lineNumber:? description:?];
  }

  v2 = BKLogUISensor();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_186345000, v2, OS_LOG_TYPE_DEFAULT, "request status event", v8, 2u);
  }

  bzero(v8, 0x400uLL);
  v3 = v1;
  if ([(__CFString *)v3 length])
  {
    CString = CFStringGetCString(v3, v8, 1024, 0x8000100u);

    if (!CString)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v5 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDRequestProximityStatusEvent(v5, v8);
LABEL_10:
}

uint64_t BKSHIDServicesProximityDetectionModePriority(int a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_1863CFB58[a1 - 1];
  }
}

void BKSHIDServicesSetProximityEventsClient()
{
  v0 = BKLogCommon();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *v1 = 0;
    _os_log_error_impl(&dword_186345000, v0, OS_LOG_TYPE_ERROR, "BKSHIDServicesSetProximityEventsClient is no longer supported; set up a dispatching rule for proximity events with BKSHIDEventDeliveryManager instead", v1, 2u);
  }
}

uint64_t BKSHIDServicesResetProximityCalibration()
{
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDResetProximityCalibration(v0);
}

__CFString *NSStringFromBKSHIDUILockSource(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E6F46820[a1];
  }
}

__CFString *NSStringFromBKSHIDUILockState(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [MEMORY[0x1E695DF70] array];
    v3 = v2;
    if ((v1 & 0x20) != 0)
    {
      [v2 addObject:?];
      if ((v1 & 0x10) == 0)
      {
LABEL_4:
        if ((v1 & 0x40) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_16;
      }
    }

    else if ((v1 & 0x10) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:?];
    if ((v1 & 0x40) == 0)
    {
LABEL_5:
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_17;
    }

LABEL_16:
    [v3 addObject:?];
    if ((v1 & 0x80) == 0)
    {
LABEL_6:
      if ((v1 & 0x100) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }

LABEL_17:
    [v3 addObject:?];
    if ((v1 & 0x100) == 0)
    {
LABEL_7:
      if ((v1 & 0x200) == 0)
      {
LABEL_9:
        v4 = [v3 componentsJoinedByString:?];

        goto LABEL_11;
      }

LABEL_8:
      [v3 addObject:?];
      goto LABEL_9;
    }

LABEL_18:
    [v3 addObject:?];
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v4 = @"<none>";
LABEL_11:

  return v4;
}

void BKSHIDServicesSetHIDUILockedState(int a1)
{
  if (a1)
  {
    v1 = 48;
  }

  else
  {
    v1 = 0;
  }

  BKSHIDServicesSetHIDUILockedStateWithSource(0, v1);
}

void BKSHIDServicesSetHIDUILockedStateWithSource(uint64_t a1, char a2)
{
  os_unfair_lock_lock(&BKSHIDServicesSetHIDUILockedStateWithSource_lock);
  v4 = BKSHIDServicesSetHIDUILockedStateWithSource_sPrevailingSensorStateAssertion;
  BKSHIDServicesSetHIDUILockedStateWithSource_sPrevailingSensorStateAssertion = 0;
  v5 = v4;

  LOBYTE(v10) = (a2 & 0x10) != 0;
  BYTE1(v10) = (a2 & 0x40) != 0;
  BYTE2(v10) = (a2 & 0x90) == 128;
  BYTE3(v10) = (a2 & 0x20) != 0;
  v6 = [BKSHIDUISensorMode buildModeForReason:MEMORY[0x1E69E9820] builder:3221225472, __BKSHIDServicesSetHIDUILockedStateWithSource_block_invoke, &__block_descriptor_44_e35_v16__0__BKSMutableHIDUISensorMode_8l, a1, v10];
  v7 = +[BKSHIDUISensorService sharedInstance];
  v8 = [v7 requestUISensorMode:?];
  v9 = BKSHIDServicesSetHIDUILockedStateWithSource_sPrevailingSensorStateAssertion;
  BKSHIDServicesSetHIDUILockedStateWithSource_sPrevailingSensorStateAssertion = v8;

  [v5 invalidate];
  os_unfair_lock_unlock(&BKSHIDServicesSetHIDUILockedStateWithSource_lock);
}

void __BKSHIDServicesSetHIDUILockedStateWithSource_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setChangeSource:?];
  [v3 setDigitizerEnabled:?];
  if (*(a1 + 40) == 1)
  {
    [v3 setTapToWakeEnabled:?];
  }

  else
  {
    [v3 setPocketTouchesExpected:?];
  }

  if (*(a1 + 43) == 1)
  {
    [v3 setProximityDetectionMode:?];
  }
}

BOOL BKSHIDServicesGetObjectInProximityIgnoresTouches()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetObjectInProximityIgnoresTouches(v0, &v4, v1, v2);
  return v4 != 0;
}

uint64_t BKSHIDServicesSetObjectInProximityIgnoresTouches(uint64_t a1)
{
  v1 = a1;
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetObjectInProximityIgnoresTouches(v2, v1);
}

__CFString *NSStringFromBKSHIDServicesHumanPresenceStatus(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E696AD60]);
    v3 = v2;
    if (v1)
    {
      [v2 appendString:?];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 appendString:?];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
LABEL_7:
        v4 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
        v5 = [v3 stringByTrimmingCharactersInSet:?];

        goto LABEL_9;
      }

LABEL_6:
      [v3 appendString:?];
      goto LABEL_7;
    }

LABEL_14:
    [v3 appendString:?];
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v5 = @"unsupported";
LABEL_9:

  return v5;
}

BOOL BKSHIDServicesIsCapsLockLightOn()
{
  v3 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDIsCapsLockLightOn(v0, 0, &v3, v1);
  return v3 != 0;
}

BOOL BKSHIDKeyboardIsCapsLockLightOn(uint64_t a1)
{
  v5 = 0;
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDIsCapsLockLightOn(v2, a1, &v5, v3);
  return v5 != 0;
}

uint64_t BKSHIDServicesSetCapsLockRomanSwitchMode(int a1)
{
  v1 = a1 != 0;
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetCapsLockRomanSwitchMode(v2, 0, v1);
}

uint64_t BKSHIDKeyboardSetCapsLockRomanSwitchMode(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetCapsLockRomanSwitchMode(v4, a1, v2);
}

uint64_t BKSHIDServicesSetCapsLockDelayOverride(double a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetCapsLockDelayOverride(v2, 0, a1);
}

uint64_t BKSHIDKeyboardSetCapsLockDelayOverride(uint64_t a1, double a2)
{
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetCapsLockDelayOverride(v4, a1, a2);
}

void BKSHIDKeyboardSetLayout(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = a2;
  bzero(buffer, 0x400uLL);
  if (!v3 || CFStringGetCString(v3, buffer, 1024, 0x8000100u))
  {
    v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDSetHardwareKeyboardLayout(v4, a1, buffer);
  }
}

id BKSHIDServicesGetHardwareKeyboardLanguage()
{
  v0 = BKSHIDKeyboardGetDeviceProperties(0);
  v1 = [v0 language];

  return v1;
}

id BKSHIDKeyboardGetDeviceProperties(uint64_t a1)
{
  v1 = +[BKSHIDKeyboardService sharedInstance];
  v2 = [v1 keyboardDeviceForSenderID:?];
  v3 = [v2 _properties];

  return v3;
}

void *BKSHIDServicesCapsLockKeyHasLanguageSwitchLabel()
{
  v0 = BKSHIDKeyboardGetDeviceProperties(0);
  v1 = [v0 capsLockKeyHasLanguageSwitchLabel];

  return v1;
}

BOOL BKSHIDKeyboardWantsStandardTypeOverride(uint64_t a1)
{
  v5 = 0;
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDKeyboardWantsStandardTypeOverride(v2, a1, &v5, v3);
  return v5 != 0;
}

uint64_t BKSHIDKeyboardSetCapsLockActive(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:?];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      v8 = 138544130;
      v9 = v7;
      v10 = 2114;
      v11 = @"BKSHIDServices.m";
      v12 = 1024;
      v13 = 454;
      v14 = 2114;
      v15 = v6;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", &v8, 0x26u);
    }

    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186361DF8);
  }

  v2 = a2;
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetCapsLockActive(v4, a1, v2);
}

uint64_t BKSHIDServicesSetStandardType(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetStandardType(v4, a1, v2);
}

void BKSHIDServicesSetAuthenticatedKeyCommands(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  if (!v2)
  {
    v6 = BKLogBacklight();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v1;
      v7 = "BKSHIDServicesSetBacklightFeatures failed to encode %{public}@";
      v8 = v6;
      v9 = 12;
      goto LABEL_9;
    }

LABEL_6:

    goto LABEL_7;
  }

  v3 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v4 = _BKSHIDSetAuthenticatedKeyCommands(v3, [v2 bytes], objc_msgSend(v2, "length"));
  if (v4)
  {
    v5 = v4;
    v6 = BKLogCommon();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v10 = 67109120;
      LODWORD(v11) = v5;
      v7 = "Error sending authenticatedKeyCommands: 0x%x";
      v8 = v6;
      v9 = 8;
LABEL_9:
      _os_log_error_impl(&dword_186345000, v8, OS_LOG_TYPE_ERROR, v7, &v10, v9);
      goto LABEL_6;
    }

    goto LABEL_6;
  }

LABEL_7:
}

uint64_t BKSHIDServicesGetRingerState()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetRingerState(v0, &v4, v1, v2);
  return v4;
}

uint64_t BKSHIDServicesCancelButtonEventsFromSenderID(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDCancelButtonEventsFromSenderID(v6, a1, a2, a3);
}

uint64_t BKSHIDServicesSetTouchPadAvailability(unsigned int a1)
{
  v2 = [(__CFString *)@"com.apple.backboardd.touchpad-availability" UTF8String];
  v3 = BKSHIDServicesSetTouchPadAvailability___NotifyTouchPadAvailabilityToken;
  if (BKSHIDServicesSetTouchPadAvailability___NotifyTouchPadAvailabilityToken == -1)
  {
    result = notify_register_check(v2, &BKSHIDServicesSetTouchPadAvailability___NotifyTouchPadAvailabilityToken);
    if (result)
    {
      return result;
    }

    v3 = BKSHIDServicesSetTouchPadAvailability___NotifyTouchPadAvailabilityToken;
  }

  notify_set_state(v3, a1);

  return notify_post(v2);
}

uint64_t BKSHIDServicesCancelTouchesOnAllDisplays()
{
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDCancelTouchesOnAllDisplays(v0);
}

void BKSHIDServicesCancelTouchesWithIdentifiers(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  v3 = v2;
  if (v1 && !v2)
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v1;
      v5 = "Error encoding touchIdentifiers: %{public}@";
      v6 = v4;
      v7 = 12;
LABEL_10:
      _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, v5, &v11, v7);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v8 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v9 = _BKSHIDCancelTouchesWithIdentifiers(v8, [v3 bytes], objc_msgSend(v3, "length"));
  if (v9)
  {
    v10 = v9;
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      LODWORD(v12) = v10;
      v5 = "Error sending touchIdentifiers: 0x%x";
      v6 = v4;
      v7 = 8;
      goto LABEL_10;
    }

LABEL_7:
  }
}

void BKSHIDServicesClaimGenericGestureFocus(void *a1, uint64_t a2)
{
  v2 = a2;
  v14 = *MEMORY[0x1E69E9840];
  v3 = a1;
  bzero(buffer, 0x400uLL);
  if (v3 && !CFStringGetCString(v3, buffer, 1024, 0x8000100u))
  {
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = v3;
      v8 = "Could not encode displayUUID: '%@'";
      v9 = v7;
      v10 = 12;
      goto LABEL_10;
    }

LABEL_7:

    goto LABEL_8;
  }

  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v5 = _BKSHIDClaimGenericGestureFocus(v4, buffer, v2);
  if (v5)
  {
    v6 = v5;
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      LODWORD(v12) = v6;
      v8 = "Error sending generic gesture destination: 0x%x";
      v9 = v7;
      v10 = 8;
LABEL_10:
      _os_log_error_impl(&dword_186345000, v9, OS_LOG_TYPE_ERROR, v8, &v11, v10);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

LABEL_8:
}

void BKSHIDServicesExcludeCAContextsFromHitTestingForZoomSenders(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [BKSHIDEventSenderDescriptor build:?];
  v8 = v2;
  v3 = [BKSHIDEventSenderDescriptor build:?];
  v9 = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:? count:?];

  if ([v1 count])
  {
    v5 = +[BKSTouchEventService sharedInstance];
    v6 = [v5 excludeEventsFromSenders:? fromHitTestingToContextIDs:?];
  }

  else
  {
    v6 = 0;
  }

  [BKSHIDServicesExcludeCAContextsFromHitTestingForZoomSenders_sPreviousAssertion invalidate];
  v7 = BKSHIDServicesExcludeCAContextsFromHitTestingForZoomSenders_sPreviousAssertion;
  BKSHIDServicesExcludeCAContextsFromHitTestingForZoomSenders_sPreviousAssertion = v6;
}

void _BKSHIDServicesApplyButtonDefinitions(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  v3 = v2;
  if (v1 && !v2)
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v1;
      _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "Error encoding button definitions: %{public}@", &v8, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  v5 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v6 = _BKSHIDApplyButtonDefinitions(v5, [v3 bytes], objc_msgSend(v3, "length"));
  if (v6)
  {
    v7 = v6;
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      LODWORD(v9) = v7;
      _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "Error sending button definitions: 0x%x", &v8, 8u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

void BKSHIDServicesRequestHapticFeedback(void *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = [v8 stringWithFormat:@"request", v10];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v12;
      v22 = 2114;
      v23 = @"BKSHIDServices.m";
      v24 = 1024;
      v25 = 659;
      v26 = 2114;
      v27 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186362A18);
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [v2 classForCoder];
    if (!v14)
    {
      v14 = objc_opt_class();
    }

    v15 = NSStringFromClass(v14);
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v13 stringWithFormat:@"request", v15, v17];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v19;
      v22 = 2114;
      v23 = @"BKSHIDServices.m";
      v24 = 1024;
      v25 = 659;
      v26 = 2114;
      v27 = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186362B30);
  }

  v3 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  if (!v3)
  {
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v21 = v2;
      _os_log_impl(&dword_186345000, v7, OS_LOG_TYPE_DEFAULT, "Error encoding haptic feedback request: %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v5 = _BKSHIDRequestHapticFeedback(v4, [v3 bytes], objc_msgSend(v3, "length"));
  if (v5)
  {
    v6 = v5;
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v21) = v6;
      _os_log_error_impl(&dword_186345000, v7, OS_LOG_TYPE_ERROR, "Error sending haptic feedback request: 0x%x", buf, 8u);
    }

LABEL_9:
  }
}

void _BKSHIDServicesPostTouchAnnotations(void *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  v3 = v2;
  if (v1 && !v2)
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543362;
      v9 = v1;
      _os_log_impl(&dword_186345000, v4, OS_LOG_TYPE_DEFAULT, "Error encoding touch annotations: %{public}@", &v8, 0xCu);
    }

LABEL_8:

    goto LABEL_9;
  }

  v5 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  v6 = _BKSHIDPostTouchAnnotations(v5, [v3 bytes], objc_msgSend(v3, "length"));
  if (v6)
  {
    v7 = v6;
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = 67109120;
      LODWORD(v9) = v7;
      _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "Error sending touch annotations: 0x%x", &v8, 8u);
    }

    goto LABEL_8;
  }

LABEL_9:
}

__CFString *NSStringFromBKSHIDServicesUserEventTimerMode(unsigned int a1)
{
  if (a1 > 3)
  {
    return @"(unknown)";
  }

  else
  {
    return off_1E6F46840[a1];
  }
}

uint64_t BKSHIDServicesResetUserEventTimer(uint64_t a1, double a2)
{
  v2 = a1;
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a2 < 0.0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3 && a2 < 9223372040.0)
  {
    v5 = a2;
  }

  else
  {
    v5 = 9223372040.0;
  }

  v6 = BKLogIdleTimer();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    if (v2 > 3)
    {
      v7 = @"(unknown)";
    }

    else
    {
      v7 = off_1E6F46840[v2];
    }

    v8 = INFINITY;
    if (v5 != 9223372040.0)
    {
      v8 = v5;
    }

    v11 = 138543618;
    v12 = v7;
    v13 = 2048;
    v14 = v8;
    _os_log_impl(&dword_186345000, v6, OS_LOG_TYPE_INFO, "Resetting user event timer to %{public}@ with duration %gs", &v11, 0x16u);
  }

  v9 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  return _BKSHIDResetUserEventTimer(v9, v2, v5);
}

uint64_t BKSHIDServicesNotifyOnNextUserEvent()
{
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDNotifyOnNextUserEvent(v0);
}

BOOL BKSHIDServicesSafeToResetIdleTimer()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDSafeToResetIdleTimer(v0, &v4, v1, v2);
  return v4 != 0;
}

uint64_t BKHIDServicesGetCurrentDeviceOrientation()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetCurrentDeviceOrientation(v0, &v4, v1, v2);
  return v4;
}

void BKSHIDServicesSetOrientationClient(void *a1, uint64_t a2)
{
  v2 = a2;
  v7 = *MEMORY[0x1E69E9840];
  v3 = a1;
  memset(&v6[30], 0, 32);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_1EF552F68;
  }

  memset(v6, 0, 480);
  if (CFStringGetCString(v4, v6, 1024, 0x8000100u))
  {
    v5 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDSetOrientationClient(v5, v6, v2);
  }
}

uint64_t BKSHIDServicesLockOrientation(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = __BKLockedOrientation;
  if (__BKLockedOrientation == -2)
  {
    v9 = 0;
    v5 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    result = _BKSHIDIsOrientationLockedWithOrientation(v5, &v9 + 1, &v9, v6);
    if (HIDWORD(v9))
    {
      v4 = v9;
    }

    else
    {
      v4 = -1;
    }

    __BKLockedOrientation = v4;
  }

  if (v4 == -1)
  {
    __BKLockedOrientation = v3;
    v7 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

    return _BKSHIDLockOrientation(v7, v3, a2, v8);
  }

  return result;
}

void BKSHIDServicesUnlockOrientation()
{
  v0 = __BKLockedOrientation;
  if (__BKLockedOrientation == -2)
  {
    v4 = 0;
    v1 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDIsOrientationLockedWithOrientation(v1, &v4 + 1, &v4, v2);
    if (HIDWORD(v4))
    {
      v0 = v4;
    }

    else
    {
      v0 = -1;
    }

    __BKLockedOrientation = v0;
  }

  if (v0 != -1)
  {
    __BKLockedOrientation = -1;
    v3 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

    _BKSHIDUnlockOrientation(v3);
  }
}

BOOL BKSHIDServicesIsOrientationLockedWithOrientation(void *a1)
{
  v2 = __BKLockedOrientation;
  if (__BKLockedOrientation == -2)
  {
    v7 = 0;
    v3 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDIsOrientationLockedWithOrientation(v3, &v7 + 1, &v7, v4);
    if (HIDWORD(v7))
    {
      v2 = v7;
    }

    else
    {
      v2 = -1;
    }

    __BKLockedOrientation = v2;
  }

  if (a1)
  {
    if (v2 == -1)
    {
      v5 = 0;
    }

    else
    {
      v5 = v2;
    }

    *a1 = v5;
  }

  return v2 != -1;
}

uint64_t BKSHIDServicesSetDeviceInterfaceOrientation(char a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetDeviceInterfaceOrientation(v2, a1);
}

uint64_t BKSHIDServicesSetDeviceOrientationForAutomation(char a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetDeviceOrientationForAutomation(v2, a1);
}

void BKSHIDServicesSetTouchHand(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1 == 1 || a1 == 2)
  {
    v2 = +[BKSHIDEventSenderDescriptor anyBuiltinTouchscreenDigitizer];
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:@"TouchHand"];
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    BKSHIDServicesSetPersistentServiceProperties(v2, v3);
  }

  else
  {
    v2 = BKLogTouchEvents();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v6 = a1;
      _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "BKSHIDServicesSetTouchHand unknown touchHand value %ld", buf, 0xCu);
    }
  }
}

void BKSHIDServicesSetPersistentServiceProperties(void *a1, void *a2)
{
  v47[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v5)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = [v15 stringWithFormat:@"sender", v17];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v43 = v19;
      v44 = 2114;
      v45 = @"BKSHIDServices.m";
      v46 = 1024;
      LODWORD(v47[0]) = 913;
      WORD2(v47[0]) = 2114;
      *(v47 + 6) = v18;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186363850);
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v6 classForCoder];
    if (!v21)
    {
      v21 = objc_opt_class();
    }

    v22 = NSStringFromClass(v21);
    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    v25 = [v20 stringWithFormat:@"sender", v22, v24];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v43 = v26;
      v44 = 2114;
      v45 = @"BKSHIDServices.m";
      v46 = 1024;
      LODWORD(v47[0]) = 913;
      WORD2(v47[0]) = 2114;
      *(v47 + 6) = v25;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v25 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186363968);
  }

  v7 = v4;
  if (!v7)
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = objc_opt_class();
    v29 = NSStringFromClass(v28);
    v30 = [v27 stringWithFormat:@"properties", v29];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v43 = v31;
      v44 = 2114;
      v45 = @"BKSHIDServices.m";
      v46 = 1024;
      LODWORD(v47[0]) = 914;
      WORD2(v47[0]) = 2114;
      *(v47 + 6) = v30;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v30 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186363A5CLL);
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v32 = MEMORY[0x1E696AEC0];
    v33 = [(__CFString *)v8 classForCoder];
    if (!v33)
    {
      v33 = objc_opt_class();
    }

    v34 = NSStringFromClass(v33);
    v35 = objc_opt_class();
    v36 = NSStringFromClass(v35);
    v37 = [v32 stringWithFormat:@"properties", v34, v36];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v38 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v43 = v38;
      v44 = 2114;
      v45 = @"BKSHIDServices.m";
      v46 = 1024;
      LODWORD(v47[0]) = 914;
      WORD2(v47[0]) = 2114;
      *(v47 + 6) = v37;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v37 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186363B74);
  }

  if (!CFPropertyListIsValid(v8, kCFPropertyListXMLFormat_v1_0))
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:v8];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v43 = v40;
      v44 = 2114;
      v45 = @"BKSHIDServices.m";
      v46 = 1024;
      LODWORD(v47[0]) = 916;
      WORD2(v47[0]) = 2114;
      *(v47 + 6) = v39;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v39 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186363C40);
  }

  v41 = 0;
  v9 = [MEMORY[0x1E698E750] encodeObject:? error:?];
  v10 = v41;
  v11 = [(__CFString *)v8 bs_secureEncoded];
  v12 = v11;
  if (v9 && v11)
  {
    v13 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
    _BKSHIDSetPersistentServiceProperties(v13, [v9 bytes], objc_msgSend(v9, "length"), objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"));
  }

  else
  {
    v14 = BKLogCommon();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v43 = v6;
      v44 = 2114;
      v45 = v8;
      v46 = 2114;
      v47[0] = v10;
      _os_log_error_impl(&dword_186345000, v14, OS_LOG_TYPE_ERROR, "BKSHIDServicesSetPersistentServiceProperties failed to encode %{public}@ / %{public}@: %{public}@", buf, 0x20u);
    }
  }
}

void BKSHIDServicesSetWristState(unint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 >= 3)
  {
    v2 = BKLogTouchEvents();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = a1;
      _os_log_error_impl(&dword_186345000, v2, OS_LOG_TYPE_ERROR, "BKSHIDServicesSetWristState unknown wristState value %ld", buf, 0xCu);
    }
  }

  else
  {
    v2 = +[BKSHIDEventSenderDescriptor anyBuiltinTouchscreenDigitizer];
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:@"WristState"];
    v5 = v3;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
    BKSHIDServicesSetPersistentServiceProperties(v2, v4);
  }
}

id BKSHIDServicesGetPersistentServiceProperties(void *a1, void *a2)
{
  v84 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v5)
  {
    v45 = MEMORY[0x1E696AEC0];
    v46 = objc_opt_class();
    v47 = NSStringFromClass(v46);
    v48 = [v45 stringWithFormat:@"sender", v47];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v79 = v49;
      v80 = 2114;
      v81 = @"BKSHIDServices.m";
      v82 = 1024;
      *v83 = 876;
      *&v83[4] = 2114;
      *&v83[6] = v48;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v48 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863644E8);
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v50 = MEMORY[0x1E696AEC0];
    v51 = [v6 classForCoder];
    if (!v51)
    {
      v51 = objc_opt_class();
    }

    v52 = NSStringFromClass(v51);
    v53 = objc_opt_class();
    v54 = NSStringFromClass(v53);
    v55 = [v50 stringWithFormat:@"sender", v52, v54];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v79 = v56;
      v80 = 2114;
      v81 = @"BKSHIDServices.m";
      v82 = 1024;
      *v83 = 876;
      *&v83[4] = 2114;
      *&v83[6] = v55;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v55 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186364600);
  }

  v7 = v4;
  if (!v7)
  {
    v57 = MEMORY[0x1E696AEC0];
    v58 = objc_opt_class();
    v59 = NSStringFromClass(v58);
    v60 = [v57 stringWithFormat:@"propertyKeys", v59];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v61 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v79 = v61;
      v80 = 2114;
      v81 = @"BKSHIDServices.m";
      v82 = 1024;
      *v83 = 877;
      *&v83[4] = 2114;
      *&v83[6] = v60;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v60 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863646F0);
  }

  v8 = v7;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v62 = MEMORY[0x1E696AEC0];
    v63 = [v8 classForCoder];
    if (!v63)
    {
      v63 = objc_opt_class();
    }

    v64 = NSStringFromClass(v63);
    v65 = objc_opt_class();
    v66 = NSStringFromClass(v65);
    v67 = [v62 stringWithFormat:@"propertyKeys", v64, v66];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v68 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v79 = v68;
      v80 = 2114;
      v81 = @"BKSHIDServices.m";
      v82 = 1024;
      *v83 = 877;
      *&v83[4] = 2114;
      *&v83[6] = v67;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v67 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186364808);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v9 = v8;
  v10 = [__CFString countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v10)
  {
    v11 = v10;
    v12 = *v75;
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (*v75 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v74 + 1) + 8 * i);
        v15 = MEMORY[0x1E696AEC0];
        v16 = objc_opt_class();
        if (!v14)
        {
          v28 = NSStringFromClass(v16);
          v29 = [v15 stringWithFormat:@"key", v28];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
            *buf = 138544130;
            v79 = v30;
            v80 = 2114;
            v81 = @"BKSHIDServices.m";
            v82 = 1024;
            *v83 = 879;
            *&v83[4] = 2114;
            *&v83[6] = v29;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
          }

          [v29 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x186364140);
        }

        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v31 = MEMORY[0x1E696AEC0];
          v32 = [v14 classForCoder];
          if (!v32)
          {
            v32 = objc_opt_class();
          }

          v33 = NSStringFromClass(v32);
          v34 = objc_opt_class();
          v35 = NSStringFromClass(v34);
          v36 = [v31 stringWithFormat:@"key", v33, v35];

          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v37 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
            *buf = 138544130;
            v79 = v37;
            v80 = 2114;
            v81 = @"BKSHIDServices.m";
            v82 = 1024;
            *v83 = 879;
            *&v83[4] = 2114;
            *&v83[6] = v36;
            _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
          }

          [v36 UTF8String];
          _bs_set_crash_log_message();
          __break(0);
          JUMPOUT(0x186364254);
        }
      }

      v11 = [__CFString countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v11);
  }

  v73[1] = 0;
  v17 = [MEMORY[0x1E698E750] encodeObject:? error:?];
  v18 = 0;
  v19 = [(__CFString *)v9 bs_secureEncoded];
  v20 = v19;
  v73[0] = 0;
  v72 = 0;
  if (!v17 || !v19)
  {
    v22 = BKLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      v79 = v6;
      v80 = 2114;
      v81 = v9;
      v82 = 2114;
      *v83 = v18;
      v23 = "BKSHIDServicesGetPersistentServiceProperties failed to encode %{public}@ / %{public}@: %{public}@";
      v24 = v22;
      v25 = 32;
      goto LABEL_39;
    }

LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v21 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  if (_BKSHIDGetPersistentServiceProperties(v21, [v17 bytes], objc_msgSend(v17, "length"), objc_msgSend(v20, "bytes"), objc_msgSend(v20, "length"), v73, &v72))
  {
    v22 = BKLogCommon();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v23 = "BKSHIDServicesGetPersistentServiceProperties IPC failed";
      v24 = v22;
      v25 = 2;
LABEL_39:
      _os_log_error_impl(&dword_186345000, v24, OS_LOG_TYPE_ERROR, v23, buf, v25);
      goto LABEL_20;
    }

    goto LABEL_20;
  }

  v22 = [MEMORY[0x1E695DEF0] bs_dataWithVMAllocatedBytes:? length:?];
  if (!v22)
  {
    v43 = BKLogCommon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v44 = "BKSHIDServicesGetPersistentServiceProperties data access failed";
      goto LABEL_41;
    }

LABEL_37:

    goto LABEL_20;
  }

  v70 = MEMORY[0x1E695DFD8];
  v71 = MEMORY[0x1E695DF20];
  objc_opt_class();
  v69 = objc_opt_class();
  v38 = objc_opt_class();
  v39 = objc_opt_class();
  v40 = objc_opt_class();
  v41 = objc_opt_class();
  v42 = [v70 setWithObjects:{v69, v38, v39, v40, v41, objc_opt_class(), 0}];
  v26 = [v71 bs_secureDecodedFromData:? withAdditionalClasses:?];

  if (!v26)
  {
    v43 = BKLogCommon();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v44 = "BKSHIDServicesGetPersistentServiceProperties property decode failed";
LABEL_41:
      _os_log_error_impl(&dword_186345000, v43, OS_LOG_TYPE_ERROR, v44, buf, 2u);
      goto LABEL_37;
    }

    goto LABEL_37;
  }

LABEL_21:

  return v26;
}

id BKSHIDServicesProductIdentifierFromServiceProperties(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = v5;
  if (v8)
  {
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = objc_opt_class();
  v13 = v6;
  if (v12)
  {
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = v14;

  v16 = objc_opt_class();
  v17 = v7;
  if (v16)
  {
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  v20 = 0;
  if (v11 && v15)
  {
    if (v19)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:v11, v15, v19];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:v11, v15, v22];
    }
    v20 = ;
  }

  return v20;
}

void BKSHIDServicesGetCALayerTransform(_OWORD *a3@<X8>)
{
  v4 = +[BKSTouchEventService sharedInstance];
  if (v4)
  {
    v5 = v4;
    [v4 transformForDisplayUUID:? layerID:? contextID:?];
    v4 = v5;
  }

  else
  {
    a3[6] = 0u;
    a3[7] = 0u;
    a3[4] = 0u;
    a3[5] = 0u;
    a3[2] = 0u;
    a3[3] = 0u;
    *a3 = 0u;
    a3[1] = 0u;
  }
}

__CFString *NSStringFromBKSHIDTouchSensitiveButtonIdentifier(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"cameraCapture";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
    }
  }

  else
  {
    v2 = @"undefined";
  }

  return v2;
}

__CFString *NSStringFromBKSHIDTouchSensitiveButtonScanMode(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"active";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
    }
  }

  else
  {
    v2 = @"none";
  }

  return v2;
}

id BKSHIDTouchSensitiveButtonRequestScanMode(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 <= 0)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"scanMode > BKSHIDTouchSensitiveButtonScanModeNone"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v15 = v12;
      v16 = 2114;
      v17 = @"BKSHIDServices.m";
      v18 = 1024;
      v19 = 974;
      v20 = 2114;
      v21 = v11;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v11 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x186364D20);
  }

  v6 = v5;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __BKSHIDTouchSensitiveButtonRequestScanMode_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (BKSHIDTouchSensitiveButtonRequestScanMode_onceToken != -1)
  {
    dispatch_once(&BKSHIDTouchSensitiveButtonRequestScanMode_onceToken, block);
  }

  v7 = BKSHIDTouchSensitiveButtonRequestScanMode_scanningAssertion;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
  v9 = [v7 acquireForReason:? withContext:?];

  return v9;
}

void __BKSHIDTouchSensitiveButtonRequestScanMode_block_invoke(uint64_t a1)
{
  v3 = MEMORY[0x1E69E9820];
  v4 = 3221225472;
  v5 = __BKSHIDTouchSensitiveButtonRequestScanMode_block_invoke_2;
  v6 = &__block_descriptor_40_e36_v16__0___BSCompoundAssertionState__8l;
  v7 = *(a1 + 32);
  v1 = [MEMORY[0x1E698E658] assertionWithIdentifier:? stateDidChangeHandler:?];
  v2 = BKSHIDTouchSensitiveButtonRequestScanMode_scanningAssertion;
  BKSHIDTouchSensitiveButtonRequestScanMode_scanningAssertion = v1;
}

uint64_t __BKSHIDTouchSensitiveButtonRequestScanMode_block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a2 orderedContext];
  v4 = [v3 countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) integerValue];
        if (v9 > v6)
        {
          v6 = v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v10 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  return _BKSHIDTouchSensitiveButtonSetScanMode(v10, *(a1 + 32), v6);
}

__CFString *BKSOpenApplicationErrorCodeToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E6F46908[a1];
  }
}

__CFString *NSStringFromBKSTouchHitTestContextCategory(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"accessibilityOverlay";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
    }
  }

  else
  {
    v2 = @"unspecified";
  }

  return v2;
}

__CFString *NSStringFromBKSHIDEventAttributeOptions(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:?];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_21;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:?];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v3 addObject:?];
    if ((v1 & 8) == 0)
    {
LABEL_6:
      if ((v1 & 0x10) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_23;
    }

LABEL_22:
    [v3 addObject:?];
    if ((v1 & 0x10) == 0)
    {
LABEL_7:
      if ((v1 & 0x20) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_24;
    }

LABEL_23:
    [v3 addObject:?];
    if ((v1 & 0x20) == 0)
    {
LABEL_8:
      if ((v1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_25;
    }

LABEL_24:
    [v3 addObject:?];
    if ((v1 & 0x40) == 0)
    {
LABEL_9:
      if ((v1 & 0x80) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_26;
    }

LABEL_25:
    [v3 addObject:?];
    if ((v1 & 0x80) == 0)
    {
LABEL_10:
      if ((v1 & 0x100) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_27;
    }

LABEL_26:
    [v3 addObject:?];
    if ((v1 & 0x100) == 0)
    {
LABEL_11:
      if ((v1 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }

LABEL_27:
    [v3 addObject:?];
    if ((v1 & 0x200) == 0)
    {
LABEL_12:
      if ((v1 & 0x400) == 0)
      {
LABEL_14:
        v4 = [v3 componentsJoinedByString:?];

        goto LABEL_16;
      }

LABEL_13:
      [v3 addObject:?];
      goto LABEL_14;
    }

LABEL_28:
    [v3 addObject:?];
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v4 = @"none";
LABEL_16:

  return v4;
}

__CFString *NSStringFromBKSHIDEventContextType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46A80[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSHIDEventContextMove(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46A68[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSHIDEventScreenEdgeMask(int a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v3 = v2;
    if (v1)
    {
      [v2 addObject:?];
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if ((v1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_14;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:?];
    if ((v1 & 4) == 0)
    {
LABEL_5:
      if ((v1 & 8) == 0)
      {
LABEL_7:
        v4 = [v3 componentsJoinedByString:?];

        goto LABEL_9;
      }

LABEL_6:
      [v3 addObject:?];
      goto LABEL_7;
    }

LABEL_14:
    [v3 addObject:?];
    if ((v1 & 8) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v4 = @"none";
LABEL_9:

  return v4;
}

__CFString *NSStringFromBKSHIDEventTeleportState(uint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46A98[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSHIDEventPointerAttributeState(uint64_t a1)
{
  if (a1 >= 5)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46A40[a1];
  }

  return v2;
}

void sub_18637695C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_186376B5C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBKSDisplayTags(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (a1)
  {
    if (a1)
    {
      [v2 addObject:?];
      if ((a1 & 2) == 0)
      {
LABEL_4:
        if ((a1 & 4) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_18;
      }
    }

    else if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:?];
    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_19;
    }

LABEL_18:
    [v3 addObject:?];
    if ((a1 & 0x10) == 0)
    {
LABEL_6:
      if ((a1 & 0x20) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_20;
    }

LABEL_19:
    [v3 addObject:?];
    if ((a1 & 0x20) == 0)
    {
LABEL_7:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

LABEL_20:
    [v3 addObject:?];
    if ((a1 & 0x40) == 0)
    {
LABEL_8:
      if ((a1 & 0x80) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_22;
    }

LABEL_21:
    [v3 addObject:?];
    if ((a1 & 0x80) == 0)
    {
LABEL_9:
      if ((a1 & 0x10000) == 0)
      {
LABEL_11:
        v4 = MEMORY[0x1E696AEC0];
        v5 = [v3 componentsJoinedByString:?];
        v6 = [v4 stringWithFormat:v5];

        goto LABEL_13;
      }

LABEL_10:
      [v3 addObject:?];
      goto LABEL_11;
    }

LABEL_22:
    [v3 addObject:?];
    if ((a1 & 0x10000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v6 = @"()";
LABEL_13:

  return v6;
}

__CFString *NSStringFromBKSDisplayServicesCloneMirroringMode(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46D48[a1];
  }

  return v2;
}

uint64_t _BKSSetDisplayDisabled(void *a1, uint64_t a2)
{
  v2 = a2;
  v10 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = v3;
  if (v3 && (v5 = [(__CFString *)v3 isEqualToString:?], v4, !v5))
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v4, buffer, 1024, 0x8000100u);
  }

  else
  {

    bzero(buffer, 0x400uLL);
  }

  v6 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplaySetDisabled(v6, buffer, v2, &v8);
}

uint64_t BKSDisplayServicesSetReachabilityBounds(void *a1, double a2, double a3, double a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = v9;
  if (v9 && (v11 = [(__CFString *)v9 isEqualToString:?], v10, !v11))
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v10, buffer, 1024, 0x8000100u);
  }

  else
  {

    bzero(buffer, 0x400uLL);
  }

  v12 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  return _BKSDisplaySetReachabilityBounds(v12, buffer, v13, v14, v15, v16);
}

BOOL BKSDisplayServicesIsScreenDisabled(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v4 = 1;
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  _BKSDisplayIsDisabled(v2, buffer, &v4);
  return v4 != 0;
}

id BKSDisplayServicesAcquireDisplayDisabledAssertion(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (BKSDisplayServicesAcquireDisplayDisabledAssertion_onceToken != -1)
  {
    dispatch_once(&BKSDisplayServicesAcquireDisplayDisabledAssertion_onceToken, &__block_literal_global_4974);
  }

  v5 = v3;
  if ([v5 length])
  {
    v6 = v5;
  }

  else
  {
    v6 = @"<main>";
  }

  v7 = [BKSDisplayServicesAcquireDisplayDisabledAssertion_assertion acquireForReason:? withContext:?];

  return v7;
}

void __BKSDisplayServicesAcquireDisplayDisabledAssertion_block_invoke()
{
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x3032000000;
  v7[3] = __Block_byref_object_copy_;
  v7[4] = __Block_byref_object_dispose_;
  v8 = [MEMORY[0x1E695DFD8] set];
  v2 = MEMORY[0x1E69E9820];
  v3 = 3221225472;
  v4 = __BKSDisplayServicesAcquireDisplayDisabledAssertion_block_invoke_65;
  v5 = &unk_1E6F46CA0;
  v6 = v7;
  v0 = [MEMORY[0x1E698E658] assertionWithIdentifier:? stateDidChangeHandler:?];
  v1 = BKSDisplayServicesAcquireDisplayDisabledAssertion_assertion;
  BKSDisplayServicesAcquireDisplayDisabledAssertion_assertion = v0;

  _Block_object_dispose(v7, 8);
}

void sub_186379E1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __BKSDisplayServicesAcquireDisplayDisabledAssertion_block_invoke_65(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [a2 context];
  v4 = [*(*(*(a1 + 32) + 8) + 40) mutableCopy];
  [v4 minusSet:?];
  v5 = [v3 mutableCopy];
  [v5 minusSet:?];
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v3);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _BKSSetDisplayDisabled(*(*(&v20 + 1) + 8 * v10), 1);
        v10 = (v10 + 1);
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = v4;
  v12 = [v11 countByEnumeratingWithState:0 objects:? count:?];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        _BKSSetDisplayDisabled(*(*(&v16 + 1) + 8 * v15), 0);
        v15 = (v15 + 1);
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v13);
  }
}

uint64_t BKSDisplayServicesSetScreenBlanked(char a1)
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(v4, 0x400uLL);
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplayNotifySetDisplayBlanked(v2, v4, a1, 1);
}

id BKSDisplayServicesGetSystemIdentifiers(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = a1;
  bzero(buffer, 0x400uLL);
  if (v1)
  {
    CFStringGetCString(v1, buffer, 1024, 0x8000100u);
  }

  v9 = 0;
  v8 = 0;
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v3 = 0;
  if (!_BKSDisplayGetSystemIdentifiers(v2, buffer, &v9, &v8))
  {
    v4 = [MEMORY[0x1E695DEF0] bs_dataWithVMAllocatedBytes:? length:?];
    if (v4)
    {
      v5 = MEMORY[0x1E695DFD8];
      objc_opt_class();
      v6 = [v5 setWithObjects:{objc_opt_class(), 0}];
      v3 = [v5 bs_secureDecodedFromData:? withAdditionalClasses:?];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

void BKSDisplayServicesSetSystemIdentifiers(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  bzero(buffer, 0x400uLL);
  if (v3)
  {
    CFStringGetCString(v3, buffer, 1024, 0x8000100u);
  }

  v5 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  v6 = v5;
  if (v4 && !v5)
  {
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543362;
      v15 = v4;
      v8 = "Error encoding system identifiers: %{public}@";
      v9 = v7;
      v10 = 12;
LABEL_12:
      _os_log_error_impl(&dword_186345000, v9, OS_LOG_TYPE_ERROR, v8, &v14, v10);
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v11 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v12 = _BKSDisplaySetSystemIdentifiers(v11, buffer, [v6 bytes], objc_msgSend(v6, "length"));
  if (v12)
  {
    v13 = v12;
    v7 = BKLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 67109120;
      LODWORD(v15) = v13;
      v8 = "Error sending system identifiers: 0x%x";
      v9 = v7;
      v10 = 8;
      goto LABEL_12;
    }

LABEL_9:
  }
}

BOOL BKSDisplayServicesIsFlipBookEnabled(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v4 = 0;
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  _BKSDisplayIsFlipBookEnabled(v2, buffer, &v4);
  return v4 != 0;
}

uint64_t BKSDisplayServicesSetFlipBookEnabled(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  v7 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v4 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplaySetFlipBookEnabled(v4, buffer, v2);
}

uint64_t BKSDisplayServicesSetCalibrationPhaseWithEventType(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v11 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v8 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplaySetCalibrationPhase(v8, buffer, v6, v5, v4);
}

BOOL BKSDisplayServicesIsFlipBookSuppressed(const __CFString *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v4 = 0;
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  _BKSDisplayIsFlipBookSuppressed(v2, buffer, &v4);
  return v4 != 0;
}

uint64_t BKSDisplayServicesSetFlipBookSuppressed(const __CFString *a1, uint64_t a2)
{
  v2 = a2;
  v7 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v4 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplaySetFlipBookSuppressed(v4, buffer, v2);
}

uint64_t BKSDisplayServicesWillUnblank()
{
  v3 = *MEMORY[0x1E69E9840];
  bzero(v2, 0x400uLL);
  v0 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplayWillUnblank(v0, v2);
}

uint64_t BKSDisplayServicesWillUnblankDisplay(const __CFString *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x400uLL);
  if (a1)
  {
    CFStringGetCString(a1, buffer, 1024, 0x8000100u);
  }

  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  return _BKSDisplayWillUnblank(v2, buffer);
}

uint64_t __QuartzCoreLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  QuartzCoreLibraryCore_frameworkLibrary = result;
  return result;
}

void *BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay(void *a1, unint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = MEMORY[0x1E696AEC0];
  v5 = objc_opt_class();
  if (!v3)
  {
    v21 = NSStringFromClass(v5);
    v22 = [v4 stringWithFormat:@"displayUUID", v21];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buffer = 138544130;
      v32 = v23;
      v33 = 2114;
      v34 = @"BKSDisplayServices.m";
      v35 = 1024;
      v36 = 425;
      v37 = 2114;
      v38 = v22;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buffer, 0x26u);
    }

    [v22 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637AD20);
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [v3 classForCoder];
    if (!v25)
    {
      v25 = objc_opt_class();
    }

    v26 = NSStringFromClass(v25);
    v27 = objc_opt_class();
    v28 = NSStringFromClass(v27);
    v29 = [v24 stringWithFormat:@"displayUUID", v26, v28];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v30 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buffer = 138544130;
      v32 = v30;
      v33 = 2114;
      v34 = @"BKSDisplayServices.m";
      v35 = 1024;
      v36 = 425;
      v37 = 2114;
      v38 = v29;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buffer, 0x26u);
    }

    [v29 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637AE34);
  }

  if (!BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v7 = BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache;
    BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache = v6;
  }

  v8 = objc_alloc_init(_BKSCloneMirroringModeRequest);
  [(_BKSCloneMirroringModeRequest *)v8 setDisplayUUID:?];
  [(_BKSCloneMirroringModeRequest *)v8 setMode:?];
  v9 = objc_alloc(MEMORY[0x1E698E778]);
  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromBKSDisplayServicesCloneMirroringMode(a2);
  v12 = [v10 stringWithFormat:v3, v11];
  v13 = v3;
  v14 = v8;
  v15 = [v9 initWithIdentifier:? forReason:? invalidationBlock:?];

  v16 = [BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache objectForKey:?];
  v17 = [v16 count];

  v18 = BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache;
  objc_opt_class();
  [v18 bs_addObject:? toCollectionClass:? forKey:?];
  if (!v17)
  {
    bzero(buffer, 0x400uLL);
    CFStringGetCString(v13, buffer, 1024, 0x8000100u);
    v19 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
    _BKSDisplaySetCloneMirroringModeForDestinationDisplay(v19, buffer, a2);
  }

  return v15;
}

void __BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache objectForKey:?];
  v3 = [v2 firstObject];
  v4 = [v3 mode];

  [BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache bs_removeObject:? fromCollectionForKey:?];
  v5 = [BKSDisplayServicesSetMainDisplayCloneMirroringModeForDestinationDisplay_displayToModeCache objectForKey:?];
  v6 = [v5 firstObject];
  v7 = [v6 mode];

  bzero(buffer, 0x400uLL);
  CFStringGetCString(*(a1 + 32), buffer, 1024, 0x8000100u);
  if ([v5 count])
  {
    if (v4 != v7)
    {
      v8 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
      _BKSDisplaySetCloneMirroringModeForDestinationDisplay(v8, buffer, v7);
    }
  }

  else
  {
    v9 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
    _BKSDisplayRemoveCloneMirroringModeForDestinationDisplay(v9, buffer);
  }
}

uint64_t BKSDisplayServicesSetCloneRotationDisabled(uint64_t a1)
{
  v1 = a1;
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);

  return _BKSDisplaySetCloneRotationDisabled(v2, v1);
}

BOOL BKSDisplayServicesTetherPrefsNeedImmediateUpdate()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  _BKSDisplayTetherPrefsNeedImmediateUpdate(v0, &v4, v1, v2);
  return v4 != 0;
}

uint64_t BKSDisplayServicesSetTetheredOrientationNotificationsDisabled(uint64_t a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);

  return _BKSDisplaySetTetheredOrientationNotificationsDisabled(v2, a1, v3, v4);
}

uint64_t BKSDisplayServicesUpdateTetheredDisplayOrientationIfNecessaryWithInterfaceOrientation(char a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);

  return _BKSDisplayUpdateTetheredDisplayOrientationIfNecessaryWithInterfaceOrientation(v2, a1);
}

uint64_t BKSDisplayServicesUpdateMirroredDisplayOrientationWithInterfaceOrientation(char a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);

  return _BKSDisplayUpdateMirroredDisplayOrientationWithInterfaceOrientation(v2, a1);
}

void BKSDisplayServicesSetArrangement(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E69E58C0] bs_secureDataFromObject:?];
  v3 = v2;
  if (v1 && !v2)
  {
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v1;
      v5 = "Error encoding arrangement: %{public}@";
      v6 = v4;
      v7 = 12;
LABEL_10:
      _os_log_error_impl(&dword_186345000, v6, OS_LOG_TYPE_ERROR, v5, &v11, v7);
      goto LABEL_7;
    }

    goto LABEL_7;
  }

  v8 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v9 = _BKSDisplaySetArrangement(v8, [v3 bytes], objc_msgSend(v3, "length"));
  if (v9)
  {
    v10 = v9;
    v4 = BKLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v11 = 67109120;
      LODWORD(v12) = v10;
      v5 = "Error sending arrangement: 0x%x";
      v6 = v4;
      v7 = 8;
      goto LABEL_10;
    }

LABEL_7:
  }
}

void BKSDisplayServicesDrawPersistentScreenSnapshot()
{
  v0 = [getCADisplayClass() mainDisplay];
  v2 = [BKSDisplayRenderOverlayDescriptor descriptorWithName:"descriptorWithName:display:" display:?];

  v1 = [[BKSDisplayRenderOverlay alloc] initWithDescriptor:?];
  [(BKSDisplayRenderOverlay *)v1 present];
}

void BKSDisplayServicesTearDownPersistentScreenSnapshot()
{
  v0 = [getCADisplayClass() mainDisplay];
  v1 = [BKSDisplayRenderOverlay existingOverlayForDisplay:?];

  [v1 dismiss];
}

BKSDisplayRenderOverlay *BKSDisplayServicesGetRenderOverlayForDisplay(void *a1)
{
  v32 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v10 = MEMORY[0x1E696AEC0];
    getCADisplayClass();
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    v13 = [v10 stringWithFormat:@"display", v12];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buffer = 138544130;
      v25 = v14;
      v26 = 2114;
      v27 = @"BKSDisplayServices.m";
      v28 = 1024;
      v29 = 533;
      v30 = 2114;
      v31 = v13;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buffer, 0x26u);
    }

    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637B6C8);
  }

  v2 = v1;
  getCADisplayClass();
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v15 = MEMORY[0x1E696AEC0];
    v16 = [v2 classForCoder];
    if (!v16)
    {
      v16 = objc_opt_class();
    }

    v17 = NSStringFromClass(v16);
    getCADisplayClass();
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v15 stringWithFormat:@"display", v17, v19];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buffer = 138544130;
      v25 = v21;
      v26 = 2114;
      v27 = @"BKSDisplayServices.m";
      v28 = 1024;
      v29 = 533;
      v30 = 2114;
      v31 = v20;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buffer, 0x26u);
    }

    [v20 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637B7E0);
  }

  v3 = [v2 uniqueId];
  bzero(buffer, 0x400uLL);
  if (v3)
  {
    CFStringGetCString(v3, buffer, 1024, 0x8000100u);
  }

  v23 = 0;
  v22 = 0;
  v4 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v5 = 0;
  if (!_BKSDisplayRenderOverlay(v4, buffer, &v23, &v22))
  {
    v6 = [MEMORY[0x1E695DEF0] bs_dataWithVMAllocatedBytes:? length:?];
    if (v6)
    {
      v7 = +[BKSDisplayRenderOverlayDescriptor _classesRequiredToDecode];
      v8 = [BKSDisplayRenderOverlayDescriptor bs_secureDecodedFromData:"bs_secureDecodedFromData:withAdditionalClasses:" withAdditionalClasses:?];

      if (v8)
      {
        v5 = [[BKSDisplayRenderOverlay alloc] initWithDescriptor:?];
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

  return v5;
}

BOOL BKSDisplayServicesApplyRenderOverlay(void *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v3;
  if (!v5)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    v16 = [v13 stringWithFormat:@"overlay", v15];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v26 = v17;
      v27 = 2114;
      v28 = @"BKSDisplayServices.m";
      v29 = 1024;
      v30 = 559;
      v31 = 2114;
      v32 = v16;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v16 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637BA4CLL);
  }

  v6 = v5;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = MEMORY[0x1E696AEC0];
    v19 = [v6 classForCoder];
    if (!v19)
    {
      v19 = objc_opt_class();
    }

    v20 = NSStringFromClass(v19);
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    v23 = [v18 stringWithFormat:@"overlay", v20, v22];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v26 = v24;
      v27 = 2114;
      v28 = @"BKSDisplayServices.m";
      v29 = 1024;
      v30 = 559;
      v31 = 2114;
      v32 = v23;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637BB64);
  }

  [getCATransactionClass() flush];
  [getCATransactionClass() synchronize];
  v7 = [v6 _descriptor];
  v8 = [v7 bs_secureEncoded];

  v9 = [v4 bs_secureEncoded];
  v10 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v11 = _BKSDisplayApplyRenderOverlay(v10, [v8 bs_bytesForMIG], objc_msgSend(v8, "bs_lengthForMIG"), objc_msgSend(v9, "bs_bytesForMIG"), objc_msgSend(v9, "bs_lengthForMIG")) == 0;

  return v11;
}

id getCATransactionClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCATransactionClass_softClass;
  v7 = getCATransactionClass_softClass;
  if (!getCATransactionClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCATransactionClass_block_invoke;
    v3[3] = &unk_1E6F476B0;
    v3[4] = &v4;
    __getCATransactionClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_18637BC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getCATransactionClass_block_invoke(uint64_t a1)
{
  QuartzCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("CATransaction");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getCATransactionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v2 handleFailureInFunction:"CATransaction" file:? lineNumber:? description:?];

    __break(1u);
  }
}

BOOL BKSDisplayServicesRemoveRenderOverlay(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 _descriptor];
  v5 = [v4 bs_secureEncoded];

  v6 = [v3 bs_secureEncoded];

  v7 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v8 = _BKSDisplayRemoveRenderOverlay(v7, [v5 bs_bytesForMIG], objc_msgSend(v5, "bs_lengthForMIG"), objc_msgSend(v6, "bs_bytesForMIG"), objc_msgSend(v6, "bs_lengthForMIG")) == 0;

  return v8;
}

BOOL BKSDisplayServicesFreezeRenderOverlay(void *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (!v1)
  {
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"overlay", v13];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v24 = v15;
      v25 = 2114;
      v26 = @"BKSDisplayServices.m";
      v27 = 1024;
      v28 = 583;
      v29 = 2114;
      v30 = v14;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v14 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637C00CLL);
  }

  v2 = v1;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = MEMORY[0x1E696AEC0];
    v17 = [v2 classForCoder];
    if (!v17)
    {
      v17 = objc_opt_class();
    }

    v18 = NSStringFromClass(v17);
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = [v16 stringWithFormat:@"overlay", v18, v20];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v24 = v22;
      v25 = 2114;
      v26 = @"BKSDisplayServices.m";
      v27 = 1024;
      v28 = 583;
      v29 = 2114;
      v30 = v21;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v21 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x18637C124);
  }

  v3 = [v2 _descriptor];
  v4 = [v3 bs_secureEncoded];

  v5 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v6 = [v4 bs_bytesForMIG];
  v7 = [v4 bs_lengthForMIG];
  v9 = _BKSDisplayFreezeRenderOverlay(v5, v6, v7, v8) == 0;

  return v9;
}

void BKSDisplayServicesDismissInterstitialRenderOverlay(void *a1)
{
  v5 = [a1 bs_secureEncoded];
  v1 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v2 = [v5 bs_bytesForMIG];
  v3 = [v5 bs_lengthForMIG];
  _BKSDisplayDismissInterstitialRenderOverlay(v1, v2, v3, v4);
}

id BKSDisplayServicesGetRenderOverlayDismissActions()
{
  v16[17] = *MEMORY[0x1E69E9840];
  v16[0] = 0;
  v15 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.display.services", BKSDisplayServerPort, &BKSDisplayServerMachPort, _InvalidateDisplayServicesPort);
  v2 = 0;
  if (!_BKSDisplayGetRenderOverlayDismissActions(v0, v16, &v15, v1))
  {
    v3 = [MEMORY[0x1E695DEF0] bs_dataWithVMAllocatedBytes:? length:?];
    if (v3)
    {
      v4 = MEMORY[0x1E695DFD8];
      v5 = +[BKSDisplayRenderOverlayDescriptor _classesRequiredToDecode];
      v6 = [v4 bs_secureDecodedFromData:? withAdditionalClasses:?];

      v2 = [MEMORY[0x1E695DFA8] set];
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:0 objects:? count:?];
      if (v8)
      {
        v9 = v8;
        v10 = MEMORY[0];
        do
        {
          for (i = 0; i != v9; i = (i + 1))
          {
            if (MEMORY[0] != v10)
            {
              objc_enumerationMutation(v7);
            }

            if ([*(8 * i) isInterstitial])
            {
              v12 = off_1E6F45E00;
            }

            else
            {
              v12 = off_1E6F45E10;
            }

            v13 = [objc_alloc(*v12) initWithDescriptor:?];
            [v2 addObject:?];
          }

          v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
        }

        while (v9);
      }
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

void BKSDisplayServicesArchiveWithOptionsAndCompletion(char a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = objc_opt_new();
    v6 = MEMORY[0x1E698F498];
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v6 endpointForServiceName:? oneshot:? service:? instance:?];

    if (v8)
    {
      v9 = [MEMORY[0x1E698F490] NSXPCConnectionWithEndpoint:? configurator:?];
      v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:?];
      v11 = MEMORY[0x1E695DFD8];
      objc_opt_class();
      v12 = objc_opt_class();
      v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
      [v10 setClasses:? forSelector:? argumentIndex:? ofReply:?];

      v14 = MEMORY[0x1E695DFD8];
      objc_opt_class();
      v15 = objc_opt_class();
      v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
      [v10 setClasses:? forSelector:? argumentIndex:? ofReply:?];

      [v9 setRemoteObjectInterface:?];
      [v9 activate];
      v31 = MEMORY[0x1E69E9820];
      v32 = 3221225472;
      v33 = __BKSDisplayServicesArchiveWithOptionsAndCompletion_block_invoke_2;
      v34 = &unk_1E6F46CE8;
      v17 = v5;
      v35 = v17;
      v18 = v3;
      v37 = v18;
      v19 = v9;
      v36 = v19;
      v20 = [v19 remoteObjectProxyWithErrorHandler:?];

      if (v20)
      {
        v21 = BKLogDisplayArchive();
        v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
        if (a1)
        {
          if (v22)
          {
            *buf = 0;
            _os_log_impl(&dword_186345000, v21, OS_LOG_TYPE_DEFAULT, "sending name layers and dump all to service", buf, 2u);
          }

          v28 = v17;
          v29 = v18;
          v19 = v19;
          [v20 nameAndDumpAllWithCompletion:?];

          v23 = v28;
        }

        else
        {
          if (v22)
          {
            *buf = 0;
            _os_log_impl(&dword_186345000, v21, OS_LOG_TYPE_DEFAULT, "sending dump all to service", buf, 2u);
          }

          v26 = v17;
          v27 = v18;
          v19 = v19;
          [v20 dumpAllWithCompletion:?];

          v23 = v26;
        }

LABEL_17:
        objc_autoreleasePoolPop(v4);
        goto LABEL_18;
      }
    }

    else
    {
      v24 = BKLogDisplayArchive();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_186345000, v24, OS_LOG_TYPE_ERROR, "failed to lookup endpoint to service", buf, 2u);
      }

      v19 = 0;
    }

    if ([v5 signal])
    {
      v25 = [MEMORY[0x1E696ABC0] errorWithDomain:? code:? userInfo:?];
      (*(v3 + 2))(v3, MEMORY[0x1E695E0F8], v25);

      [v19 invalidate];
    }

    goto LABEL_17;
  }

LABEL_18:
}

void __BKSDisplayServicesArchiveWithOptionsAndCompletion_block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = BKLogDisplayArchive();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_186345000, v4, OS_LOG_TYPE_ERROR, "error talking to service : %@", &v5, 0xCu);
  }

  if ([*(a1 + 32) signal])
  {
    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) invalidate];
  }
}

void __BKSDisplayServicesArchiveWithOptionsAndCompletion_block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) signal])
  {
    v7 = BKLogDisplayArchive();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_186345000, v7, OS_LOG_TYPE_DEFAULT, "received name layers and dump all response from service", v8, 2u);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) invalidate];
  }
}

void __BKSDisplayServicesArchiveWithOptionsAndCompletion_block_invoke_150(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) signal])
  {
    v7 = BKLogDisplayArchive();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_186345000, v7, OS_LOG_TYPE_DEFAULT, "received dump all response from service", v8, 2u);
    }

    (*(*(a1 + 48) + 16))();
    [*(a1 + 40) invalidate];
  }
}

void sub_18637FE94(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_186380150(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_186380D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBKSTouchAuthenticationInitialSampleEvent(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F46E58[a1];
  }

  return v2;
}

void sub_186385614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t __FrontBoardServicesLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  FrontBoardServicesLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t migHelperRecievePortCallout(mach_msg_header_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  msgh_id = a1->msgh_id;
  v8 = *(v6 + 8);
  v9 = __OFSUB__(msgh_id, v8);
  v10 = msgh_id - v8;
  if (v10 < 0 != v9 || msgh_id >= *(v6 + 12))
  {
    v12 = 0;
  }

  else
  {
    v11 = v6 + 32;
    v12 = *(v11 + 40 * v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = *(v11 + 40 * v10 + 32);
      goto LABEL_7;
    }
  }

  v13 = 1;
  v14 = 36;
LABEL_7:
  v15 = malloc_type_calloc(1uLL, v14, 0x10000408AA14F5FuLL);
  if (v15)
  {
    v16 = v15;
    msgh_remote_port = a1->msgh_remote_port;
    v15->msgh_bits = a1->msgh_bits & 0x1F;
    v15->msgh_size = 36;
    *&v15->msgh_remote_port = msgh_remote_port;
    v15->msgh_id = a1->msgh_id + 100;
    if (v13)
    {
      *&v15[1].msgh_bits = *MEMORY[0x1E69E99E0];
      v15[1].msgh_remote_port = -303;
    }

    else
    {
      v18 = *(a4 + 16);
      if (v18)
      {
        pthread_setspecific(__BKMIGServerCalloutContextKey, v18);
        v12(a1, v16);
        pthread_setspecific(__BKMIGServerCalloutContextKey, 0);
      }

      else
      {
        v12(a1, v15);
      }
    }

    msgh_bits = v16->msgh_bits;
    if ((v16->msgh_bits & 0x80000000) == 0)
    {
      v20 = v16[1].msgh_remote_port;
      if (v20 == -305)
      {
LABEL_31:
        free(v16);
        return 0;
      }

      if (v20 && (a1->msgh_bits & 0x80000000) != 0)
      {
        a1->msgh_remote_port = 0;
        mach_msg_destroy(a1);
        msgh_bits = v16->msgh_bits;
      }
    }

    if (v16->msgh_remote_port)
    {
      if ((msgh_bits & 0x1F) == 0x12)
      {
        v21 = 1;
      }

      else
      {
        v21 = 17;
      }

      v22 = mach_msg(v16, v21, v16->msgh_size, 0, 0, 0, 0);
      if ((v22 - 268435459) >= 2 && v22 != 0)
      {
        v24 = *MEMORY[0x1E69E9848];
        v25 = mach_error_string(v22);
        fprintf(v24, "<CFRunLoopSource MIG Server> mach_msg send error in reply: %s\n", v25);
        goto LABEL_31;
      }

      if ((v22 - 268435459) > 1)
      {
        goto LABEL_31;
      }

      msgh_bits = v16->msgh_bits;
    }

    if ((msgh_bits & 0x80000000) != 0)
    {
      mach_msg_destroy(v16);
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t BKGetMachPortForMIGServerSource(__CFRunLoopSource *a1)
{
  memset(&context.info, 0, 64);
  context.version = 1;
  CFRunLoopSourceGetContext(a1, &context);
  return *context.info;
}

void _serverWasRestarted(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  [a2 _serverWasRestarted];

  objc_autoreleasePoolPop(v3);
}

uint64_t _BKXXDeliverAccelerometerEvent(double a1, float a2, float a3, float a4, uint64_t a5, uint64_t a6)
{
  v6 = pthread_getspecific(__BKMIGServerCalloutContextKey);
  v7 = [v6 delegate];
  [v7 accelerometer:? didAccelerateWithTimeStamp:? x:? y:? z:? eventType:?];

  return 0;
}

void sub_18638D81C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

uint64_t BKSDisplayBrightnessTransactionGetTypeID()
{
  if (__BKSDisplayBrightnessTransactionRegisterOnce != -1)
  {
    dispatch_once(&__BKSDisplayBrightnessTransactionRegisterOnce, &__block_literal_global_7904);
  }

  return __BKSDisplayBrightnessTransactionTypeID;
}

uint64_t __BKSDisplayBrightnessTransactionGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  __BKSDisplayBrightnessTransactionTypeID = result;
  return result;
}

void BKSDisplayBrightnessTransactionDealloc(os_unfair_lock_s *a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDFlushDisplayBrightnessUpdates(v2, v3, v4, v5);
  os_unfair_lock_lock(a1 + 4);
  os_unfair_lock_opaque = a1[5]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque + 1 >= 2)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], os_unfair_lock_opaque, 1u, -1);
    a1[5]._os_unfair_lock_opaque = 0;
  }

  os_unfair_lock_unlock(a1 + 4);
}

_DWORD *BKSDisplayBrightnessTransactionCreate(uint64_t a1)
{
  if (__BKSDisplayBrightnessTransactionRegisterOnce != -1)
  {
    dispatch_once(&__BKSDisplayBrightnessTransactionRegisterOnce, &__block_literal_global_7904);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    name = 0;
    if (mach_port_allocate(*MEMORY[0x1E69E9A60], 1u, &name) || (v2 = name, Instance[4] = 0, Instance[5] = v2, v3 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort), _BKSHIDBeginDisplayBrightnessTransaction(v3, Instance[5], v4, v5)))
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

uint64_t BKSDisplayBrightnessSet(uint64_t a1, float a2)
{
  v2 = a1;
  v4 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetDisplayBrightnessValue(v4, v2, a2);
}

uint64_t BKSDisplayBrightnessSetWithImplicitTransaction(float a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetDisplayBrightnessWithImplicitTransaction(v2, v3, v4, v5, a1);
}

uint64_t BKSDisplayBrightnessRestoreSystemBrightness()
{
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDRestoreSystemDisplayBrightness(v0);
}

uint64_t BKSDisplayBrightnessCurveSet(char a1)
{
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetDisplayBrightnessCurveValue(v2, a1);
}

uint64_t BKSDisplayBrightnessCurveGetCurrent()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDGetCurrentDisplayBrightnessCurve(v0, &v4, v1, v2);
  return v4;
}

uint64_t BKSDisplayBrightnessSetAutoBrightnessEnabled(uint64_t a1)
{
  v1 = a1;
  v2 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);

  return _BKSHIDSetAutoDisplayBrightnessEnabled(v2, v1);
}

BOOL BKSDisplayBrightnessIsAutoBrightnessAvailable()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDBrigthnessIsAutoBrightnessAvailable(v0, &v4, v1, v2);
  return v4 != 0;
}

BOOL BKSDisplayBrightnessIsBrightnessLevelControlAvailable()
{
  v4 = 0;
  v0 = _BKSServerPortHelper("com.apple.backboard.hid.services", BKSHIDServerPort, &BKSHIDServerMachPort, _InvalidateHIDServicesPort);
  _BKSHIDBrigthnessIsBrightnessLevelControlAvailable(v0, &v4, v1, v2);
  return v4 != 0;
}

id BKLogCommon()
{
  if (BKLogCommon_onceToken != -1)
  {
    dispatch_once(&BKLogCommon_onceToken, &__block_literal_global_8058);
  }

  v1 = BKLogCommon___logObj;

  return v1;
}

uint64_t __BKLogCommon_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "Common");
  v1 = BKLogCommon___logObj;
  BKLogCommon___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __BKLogDetailed_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "Detailed");
  v1 = BKLogDetailed___logObj;
  BKLogDetailed___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogEventDeliveryBuffering()
{
  if (BKLogEventDeliveryBuffering_onceToken != -1)
  {
    dispatch_once(&BKLogEventDeliveryBuffering_onceToken, &__block_literal_global_10);
  }

  v1 = BKLogEventDeliveryBuffering___logObj;

  return v1;
}

uint64_t __BKLogEventDeliveryBuffering_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "EventDeliveryBuffering");
  v1 = BKLogEventDeliveryBuffering___logObj;
  BKLogEventDeliveryBuffering___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogEventDeliveryMatching()
{
  if (BKLogEventDeliveryMatching_onceToken != -1)
  {
    dispatch_once(&BKLogEventDeliveryMatching_onceToken, &__block_literal_global_13);
  }

  v1 = BKLogEventDeliveryMatching___logObj;

  return v1;
}

uint64_t __BKLogEventDeliveryMatching_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "EventDeliveryMatching");
  v1 = BKLogEventDeliveryMatching___logObj;
  BKLogEventDeliveryMatching___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogAlternateSystemApp()
{
  if (BKLogAlternateSystemApp_onceToken != -1)
  {
    dispatch_once(&BKLogAlternateSystemApp_onceToken, &__block_literal_global_16_8069);
  }

  v1 = BKLogAlternateSystemApp___logObj;

  return v1;
}

uint64_t __BKLogAlternateSystemApp_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "AlternateSystemApp");
  v1 = BKLogAlternateSystemApp___logObj;
  BKLogAlternateSystemApp___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogIdleTimer()
{
  if (BKLogIdleTimer_onceToken != -1)
  {
    dispatch_once(&BKLogIdleTimer_onceToken, &__block_literal_global_19);
  }

  v1 = BKLogIdleTimer___logObj;

  return v1;
}

uint64_t __BKLogIdleTimer_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "IdleTimer");
  v1 = BKLogIdleTimer___logObj;
  BKLogIdleTimer___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __BKLogBacklight_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "Backlight");
  v1 = BKLogBacklight___logObj;
  BKLogBacklight___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogDisplayArchive()
{
  if (BKLogDisplayArchive_onceToken != -1)
  {
    dispatch_once(&BKLogDisplayArchive_onceToken, &__block_literal_global_28);
  }

  v1 = BKLogDisplayArchive___logObj;

  return v1;
}

uint64_t __BKLogDisplayArchive_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "DisplayArchive");
  v1 = BKLogDisplayArchive___logObj;
  BKLogDisplayArchive___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __BKLogTouchDeliveryObserver_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "TouchDeliveryObserver");
  v1 = BKLogTouchDeliveryObserver___logObj;
  BKLogTouchDeliveryObserver___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __BKLogUISensor_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "UISensor");
  v1 = BKLogUISensor___logObj;
  BKLogUISensor___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogSystemShell()
{
  if (BKLogSystemShell_onceToken != -1)
  {
    dispatch_once(&BKLogSystemShell_onceToken, &__block_literal_global_37);
  }

  v1 = BKLogSystemShell___logObj;

  return v1;
}

uint64_t __BKLogSystemShell_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "SystemShell");
  v1 = BKLogSystemShell___logObj;
  BKLogSystemShell___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __BKLogTouchEvents_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "TouchEvents");
  v1 = BKLogTouchEvents___logObj;
  BKLogTouchEvents___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogHapticFeedback()
{
  if (BKLogHapticFeedback_onceToken != -1)
  {
    dispatch_once(&BKLogHapticFeedback_onceToken, &__block_literal_global_52);
  }

  v1 = BKLogHapticFeedback___logObj;

  return v1;
}

uint64_t __BKLogHapticFeedback_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "HapticFeedback");
  v1 = BKLogHapticFeedback___logObj;
  BKLogHapticFeedback___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

uint64_t __QuartzCoreLibraryCore_block_invoke_8153(uint64_t a1)
{
  result = _sl_dlopen();
  QuartzCoreLibraryCore_frameworkLibrary_8152 = result;
  return result;
}

void sub_186391550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBKSMousePointerDeviceClickHapticStrength(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47098[a1];
  }

  return v2;
}

void BKSTerminateApplicationForReasonAndReportWithDescription(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a1;
  v5 = a4;
  if (!v7)
  {
    __assert_rtn("BKSTerminateApplicationForReasonAndReportWithDescription", "BKSApplicationTermination.m", 19, "bundleID");
  }

  v6 = objc_alloc_init(BKSSystemService);
  [BKSSystemService terminateApplication:v6 forReason:"terminateApplication:forReason:andReport:withDescription:" andReport:? withDescription:?];
}

id getCADisplayClass_8958()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getCADisplayClass_softClass_8959;
  v7 = getCADisplayClass_softClass_8959;
  if (!getCADisplayClass_softClass_8959)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getCADisplayClass_block_invoke_8960;
    v3[3] = &unk_1E6F476B0;
    v3[4] = &v4;
    __getCADisplayClass_block_invoke_8960(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_186394A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getCADisplayClass_block_invoke_8960(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (!QuartzCoreLibraryCore_frameworkLibrary_8961)
  {
    v6[1] = MEMORY[0x1E69E9820];
    v6[2] = 3221225472;
    v6[3] = __QuartzCoreLibraryCore_block_invoke_8962;
    v6[4] = &__block_descriptor_40_e5_v8__0l;
    v6[5] = v6;
    v7 = xmmword_1E6F47170;
    v8 = 0;
    QuartzCoreLibraryCore_frameworkLibrary_8961 = _sl_dlopen();
  }

  if (!QuartzCoreLibraryCore_frameworkLibrary_8961)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v3 handleFailureInFunction:v6[0] file:? lineNumber:? description:?];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("CADisplay");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v3 handleFailureInFunction:"CADisplay" file:? lineNumber:? description:?];

LABEL_10:
    __break(1u);
  }

  getCADisplayClass_softClass_8959 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuartzCoreLibraryCore_block_invoke_8962(uint64_t a1)
{
  result = _sl_dlopen();
  QuartzCoreLibraryCore_frameworkLibrary_8961 = result;
  return result;
}

__CFString *NSStringFromBKSHIDEventSecureNameStatus(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F471A8[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSHIDEventAuthenticationStatus(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47188[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSSystemShellCheckInStatus(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F472C0[a1];
  }

  return v2;
}

void sub_186399400(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_18639A750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__9945(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id NSStringFromBKSHIDEventHitTestLayerInformationMask(char a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if ((a1 & 2) != 0)
  {
    [v2 addObject:?];
    if ((a1 & 1) == 0)
    {
LABEL_3:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((a1 & 1) == 0)
  {
    goto LABEL_3;
  }

  [v3 addObject:?];
  if ((a1 & 0x10) == 0)
  {
LABEL_4:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  [v3 addObject:?];
  if ((a1 & 0x20) == 0)
  {
LABEL_5:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  [v3 addObject:?];
  if ((a1 & 8) == 0)
  {
LABEL_6:
    if ((a1 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  [v3 addObject:?];
  if ((a1 & 4) != 0)
  {
LABEL_7:
    [v3 addObject:?];
  }

LABEL_8:
  v4 = MEMORY[0x1E696AEC0];
  v5 = [v3 componentsJoinedByString:?];
  v6 = [v4 stringWithFormat:v5];

  return v6;
}

__CFString *NSStringFromBKSButtonHapticAssetType(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"<unknown>";
  }

  else
  {
    return off_1E6F47438[a1];
  }
}

void sub_1863A2D50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFString *NSStringFromBKSWindowServerHitTestOcclusionType(unint64_t a1)
{
  if (a1 >= 4)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F476E8[a1];
  }

  return v2;
}

void sub_1863ADFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerHitTestSecurityAnalysisOcclusionType");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerHitTestSecurityAnalysisOcclusionTypeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *QuartzCoreLibrary_11890()
{
  v7 = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  if (!QuartzCoreLibraryCore_frameworkLibrary_11905)
  {
    v4[1] = MEMORY[0x1E69E9820];
    v4[2] = 3221225472;
    v4[3] = __QuartzCoreLibraryCore_block_invoke_11906;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_1E6F476D0;
    v6 = 0;
    QuartzCoreLibraryCore_frameworkLibrary_11905 = _sl_dlopen();
  }

  v0 = QuartzCoreLibraryCore_frameworkLibrary_11905;
  if (!QuartzCoreLibraryCore_frameworkLibrary_11905)
  {
    v0 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    [v0 handleFailureInFunction:v4[0] file:? lineNumber:? description:?];

    __break(1u);
    goto LABEL_7;
  }

  v1 = v4[0];
  if (v4[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

void *__getkCAWindowServerOcclusionTypeLayerSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerOcclusionTypeLayer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerOcclusionTypeLayerSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCAWindowServerOcclusionTypeClippedSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerOcclusionTypeClipped");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerOcclusionTypeClippedSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCAWindowServerOcclusionTypeBorderSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerOcclusionTypeBorder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerOcclusionTypeBorderSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerHitTestSecurityAnalysisOcclusionPercent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerHitTestSecurityAnalysisOcclusionPercentSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransform");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerHitTestSecurityAnalysisCumulativeLayerTransformSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerHitTestSecurityAnalysisCumulativeOpacity");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerHitTestSecurityAnalysisCumulativeOpacitySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerProperties");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerHitTestSecurityAnalysisParentsHaveInsecureLayerPropertiesSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *__getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = QuartzCoreLibrary_11890();
  result = dlsym(v2, "kCAWindowServerHitTestSecurityAnalysisIsInsecureFiltered");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getkCAWindowServerHitTestSecurityAnalysisIsInsecureFilteredSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __QuartzCoreLibraryCore_block_invoke_11906(uint64_t a1)
{
  result = _sl_dlopen();
  QuartzCoreLibraryCore_frameworkLibrary_11905 = result;
  return result;
}

uint64_t BKSWatchdogGetIsAlive(uint64_t a1)
{
  v1 = BKSWatchdogGetIsAlive_sServerWrapper;
  if (!BKSWatchdogGetIsAlive_sServerWrapper)
  {
    if (_BKSGetWatchdogServerWrapper_onceToken != -1)
    {
      dispatch_once(&_BKSGetWatchdogServerWrapper_onceToken, &__block_literal_global_11974);
    }

    objc_storeStrong(&BKSWatchdogGetIsAlive_sServerWrapper, __service);
    v1 = BKSWatchdogGetIsAlive_sServerWrapper;
  }

  _BKSServerPortHelper("com.apple.backboard.watchdog", BKSWatchdogPort, &BKSWatchdogMachPort, _InvalidateWatchdogPort);
  [v1 _BKSWatchdogGetIsAlive:? isAlive:? timeout:?];
  return 0;
}

__CFString *NSStringFromBKSHIDHapticFeedbackRequestDeviceType(uint64_t a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = @"trackpad";
    }

    else
    {
      v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
    }
  }

  else
  {
    v2 = @"pencil";
  }

  return v2;
}

__CFString *NSStringFromBKSTouchDeliveryUpdateType(unint64_t a1)
{
  if (a1 >= 3)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  else
  {
    v2 = off_1E6F47708[a1];
  }

  return v2;
}

__CFString *NSStringFromBKSHIDUISensorChangeSource(unint64_t a1)
{
  if (a1 < 5 && ((0x1Bu >> a1) & 1) != 0)
  {
    v2 = off_1E6F47768[a1];
  }

  else
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:a1];
  }

  return v2;
}

void sub_1863B56BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1863B6AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id BKLogOrientationClient()
{
  if (BKLogOrientationClient_onceToken != -1)
  {
    dispatch_once(&BKLogOrientationClient_onceToken, &__block_literal_global_13969);
  }

  v1 = BKLogOrientationClient___logObj;

  return v1;
}

uint64_t __BKLogOrientationClient_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "OrientationClient");
  v1 = BKLogOrientationClient___logObj;
  BKLogOrientationClient___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogOrientationDevice()
{
  if (BKLogOrientationDevice_onceToken != -1)
  {
    dispatch_once(&BKLogOrientationDevice_onceToken, &__block_literal_global_3_13972);
  }

  v1 = BKLogOrientationDevice___logObj;

  return v1;
}

uint64_t __BKLogOrientationDevice_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "OrientationDevice");
  v1 = BKLogOrientationDevice___logObj;
  BKLogOrientationDevice___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogOrientationGlobal()
{
  if (BKLogOrientationGlobal_onceToken != -1)
  {
    dispatch_once(&BKLogOrientationGlobal_onceToken, &__block_literal_global_6);
  }

  v1 = BKLogOrientationGlobal___logObj;

  return v1;
}

uint64_t __BKLogOrientationGlobal_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "OrientationGlobal");
  v1 = BKLogOrientationGlobal___logObj;
  BKLogOrientationGlobal___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

id BKLogOrientationHostUI()
{
  if (BKLogOrientationHostUI_onceToken != -1)
  {
    dispatch_once(&BKLogOrientationHostUI_onceToken, &__block_literal_global_9);
  }

  v1 = BKLogOrientationHostUI___logObj;

  return v1;
}

uint64_t __BKLogOrientationHostUI_block_invoke()
{
  v0 = os_log_create("com.apple.BackBoard", "OrientationHostUI");
  v1 = BKLogOrientationHostUI___logObj;
  BKLogOrientationHostUI___logObj = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

void __BKSHIDEvent__BUNDLE_IDENTIFIER_FOR_CURRENT_PROCESS_IS_NIL__(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1E696AEC0];
  v3 = [v1 infoDictionary];
  v4 = [v2 stringWithFormat:v1, v3];

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
    *buf = 138544130;
    v7 = v5;
    v8 = 2114;
    v9 = @"BKSHIDEvent.m";
    v10 = 1024;
    v11 = 92;
    v12 = 2114;
    v13 = v4;
    _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

uint64_t BKSHIDEventRegisterEventCallback(uint64_t a1)
{
  CFRunLoopGetCurrent();

  return BKSHIDEventRegisterEventCallbackOnRunLoop(a1, 0, 0);
}

void _RedirectEventToClient(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v13 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  v9 = BKLogEventDelivery();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109378;
    v10[1] = a3;
    v11 = 2114;
    v12 = v7;
    _os_log_impl(&dword_186345000, v9, OS_LOG_TYPE_DEFAULT, "REDIRECT: SET pid:%d environment:%{public}@", v10, 0x12u);
  }

  if (a1)
  {
    if (a3 <= 0)
    {
      a3 = getpid();
    }

    _BKSHIDEventSetRedirectInfo(a1, a3, v8, v7);
    if (_getHIDEventSystemClient_onceToken != -1)
    {
      dispatch_once(&_getHIDEventSystemClient_onceToken, &__block_literal_global_409);
    }

    IOHIDEventSystemClientDispatchEvent();
  }
}

void _BKSHIDEventSetRedirectInfo(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  if (a1)
  {
    v12 = v6;
    v7 = a4;
    v8 = BKSHIDEventGetBaseAttributes(a1);
    v9 = objc_opt_new();
    [v9 setEnvironment:?];

    v10 = [v8 display];
    [v9 setDisplay:?];

    if (v12)
    {
      [v9 setToken:?];
    }

    else
    {
      v11 = [v8 token];
      [v9 setToken:?];
    }

    [v8 options];
    [v9 setOptions:?];
    [v8 source];
    [v9 setSource:?];
    [v9 setPid:?];
    _BKSHIDEventSetAttributes(a1, v9, 3);

    v6 = v12;
  }
}

void BKSHIDEventSendToApplicationWithBundleIDAndPidAndFollowingFocusChain(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  if (a4)
  {
    v6 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  _RedirectEventToClient(a1, v6, a3, 0);
}

void BKSHIDEventSendToFocusedProcess(uint64_t a1)
{
  v2 = +[BKSHIDEventDeferringEnvironment keyboardFocusEnvironment];
  _RedirectEventToClient(a1, v2, 0xFFFFFFFFLL, 0);
}

void BKSHIDEventSendToResolvedProcessForDeferringEnvironment(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"event != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v6;
      v22 = 2114;
      v23 = @"BKSHIDEvent.m";
      v24 = 1024;
      v25 = 173;
      v26 = 2114;
      v27 = v5;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B8EBCLL);
  }

  v19 = v3;
  if (!v19)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"environment", v9];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v11;
      v22 = 2114;
      v23 = @"BKSHIDEvent.m";
      v24 = 1024;
      v25 = 174;
      v26 = 2114;
      v27 = v10;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v10 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B8FB0);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [v19 classForCoder];
    if (!v13)
    {
      v13 = objc_opt_class();
    }

    v14 = NSStringFromClass(v13);
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    v17 = [v12 stringWithFormat:@"environment", v14, v16];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v21 = v18;
      v22 = 2114;
      v23 = @"BKSHIDEvent.m";
      v24 = 1024;
      v25 = 174;
      v26 = 2114;
      v27 = v17;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v17 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B90C8);
  }

  v4 = getpid();
  _RedirectEventToClient(a1, v19, v4, 0);
}

void BKSHIDEventSendToProcess(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2 <= 0)
  {
    v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pid > 0"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v7 = v3;
      v8 = 2114;
      v9 = @"BKSHIDEvent.m";
      v10 = 1024;
      v11 = 180;
      v12 = 2114;
      v13 = v2;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v2 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B9214);
  }

  if (!a1)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"event != ((void *)0)"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:?];
      *buf = 138544130;
      v7 = v5;
      v8 = 2114;
      v9 = @"BKSHIDEvent.m";
      v10 = 1024;
      v11 = 181;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_186345000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ (%{public}@:%i) : %{public}@", buf, 0x26u);
    }

    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x1863B92E8);
  }

  _RedirectEventToClient(a1, 0, a2, 0);
}