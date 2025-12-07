@interface AVExternalStorageDevice
+ (AVAuthorizationStatus)authorizationStatus;
+ (void)requestAccessWithCompletionHandler:(void *)handler;
- (AVExternalStorageDevice)initWithExternalStorageDeviceManager:(OpaqueFigExternalStorageDeviceManager *)manager figExternalStorageDeviceUUID:(__CFString *)d;
- (BOOL)isConnected;
- (BOOL)isNotRecommendedForCaptureUse;
- (NSArray)nextAvailableURLsWithPathExtensions:(NSArray *)extensionArray error:(NSError *)outError;
- (NSInteger)freeSize;
- (NSInteger)totalSize;
- (NSString)displayName;
- (NSUUID)uuid;
- (id)_uniqueIdentifier;
- (id)baseURL;
- (id)figExternalStorageDeviceUUID;
- (void)dealloc;
- (void)updateExternalStorageDeviceManager:(OpaqueFigExternalStorageDeviceManager *)manager andFigExternalStorageDeviceUUID:(id)d;
@end

@implementation AVExternalStorageDevice

- (AVExternalStorageDevice)initWithExternalStorageDeviceManager:(OpaqueFigExternalStorageDeviceManager *)manager figExternalStorageDeviceUUID:(__CFString *)d
{
  v10.receiver = self;
  v10.super_class = AVExternalStorageDevice;
  v6 = [(AVExternalStorageDevice *)&v10 init];
  if (v6)
  {
    if (manager)
    {
      v7 = CFRetain(manager);
    }

    else
    {
      v7 = 0;
    }

    v6->_externalStorageDeviceManager = v7;
    if (d)
    {
      v8 = CFRetain(d);
    }

    else
    {
      v8 = 0;
    }

    v6->_figExternalStorageDeviceUUID = v8;
    v6->_nextAvailableURLArray = 0;
    v6->_baseURL = 0;
  }

  return v6;
}

- (void)dealloc
{
  externalStorageDeviceManager = self->_externalStorageDeviceManager;
  if (externalStorageDeviceManager)
  {
    CFRelease(externalStorageDeviceManager);
    self->_externalStorageDeviceManager = 0;
  }

  displayName = self->_displayName;
  if (displayName)
  {
    CFRelease(displayName);
    self->_displayName = 0;
  }

  nextAvailableURLArray = self->_nextAvailableURLArray;
  if (nextAvailableURLArray)
  {
    CFRelease(nextAvailableURLArray);
    self->_nextAvailableURLArray = 0;
  }

  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    CFRelease(uniqueIdentifier);
    self->_uniqueIdentifier = 0;
  }

  baseURL = self->_baseURL;
  if (baseURL)
  {
    CFRelease(baseURL);
    self->_baseURL = 0;
  }

  figExternalStorageDeviceUUID = self->_figExternalStorageDeviceUUID;
  if (figExternalStorageDeviceUUID)
  {
    CFRelease(figExternalStorageDeviceUUID);
    self->_figExternalStorageDeviceUUID = 0;
  }

  v9.receiver = self;
  v9.super_class = AVExternalStorageDevice;
  [(AVExternalStorageDevice *)&v9 dealloc];
}

- (id)figExternalStorageDeviceUUID
{
  v2 = [(__CFString *)self->_figExternalStorageDeviceUUID copy];

  return v2;
}

- (BOOL)isConnected
{
  v10 = 0;
  externalStorageDeviceManager = self->_externalStorageDeviceManager;
  if (externalStorageDeviceManager && (figExternalStorageDeviceUUID = self->_figExternalStorageDeviceUUID, (v4 = *(*(CMBaseObjectGetVTable() + 16) + 32)) != 0))
  {
    v4(externalStorageDeviceManager, figExternalStorageDeviceUUID, *MEMORY[0x1E69909A8], *MEMORY[0x1E695E480], &v10);
    v5 = v10 == *MEMORY[0x1E695E4D0];
    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    v5 = *MEMORY[0x1E695E4D0] == 0;
  }

  if (dword_1EB385998)
  {
    v9 = 0;
    v8 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v5;
}

- (NSUUID)uuid
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{-[AVExternalStorageDevice _uniqueIdentifier](self, "_uniqueIdentifier")}];

  return v2;
}

- (NSArray)nextAvailableURLsWithPathExtensions:(NSArray *)extensionArray error:(NSError *)outError
{
  v29[0] = 0;
  nextAvailableURLArray = self->_nextAvailableURLArray;
  if (nextAvailableURLArray)
  {
    CFRelease(nextAvailableURLArray);
    self->_nextAvailableURLArray = 0;
  }

  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  self->_nextAvailableURLArray = Mutable;
  if (!Mutable)
  {
    [AVExternalStorageDevice nextAvailableURLsWithPathExtensions:error:];
LABEL_20:
    v12 = 4294948019;
    goto LABEL_21;
  }

  externalStorageDeviceManager = self->_externalStorageDeviceManager;
  if (externalStorageDeviceManager)
  {
    figExternalStorageDeviceUUID = self->_figExternalStorageDeviceUUID;
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v11)
    {
      v12 = v11(externalStorageDeviceManager, 0, figExternalStorageDeviceUUID, extensionArray, v29);
      if (!v12)
      {
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = v29[0];
        v14 = [v29[0] countByEnumeratingWithState:&v25 objects:v24 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
LABEL_9:
          v17 = 0;
          while (1)
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:*(*(&v25 + 1) + 8 * v17) error:outError];
            if (!v18)
            {
              goto LABEL_20;
            }

            CFArrayAppendValue(self->_nextAvailableURLArray, [v18 url]);
            if (v15 == ++v17)
            {
              v15 = [v13 countByEnumeratingWithState:&v25 objects:v24 count:16];
              if (v15)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            }
          }
        }

        goto LABEL_15;
      }
    }

    else
    {
      v12 = 4294954514;
    }

LABEL_21:
    [(AVExternalStorageDevice *)v12 nextAvailableURLsWithPathExtensions:&v21 error:?];
    return v21;
  }

LABEL_15:
  if (dword_1EB385998)
  {
    v23 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [(__CFArray *)self->_nextAvailableURLArray copy];
}

- (void)updateExternalStorageDeviceManager:(OpaqueFigExternalStorageDeviceManager *)manager andFigExternalStorageDeviceUUID:(id)d
{
  externalStorageDeviceManager = self->_externalStorageDeviceManager;
  if (externalStorageDeviceManager)
  {
    CFRelease(externalStorageDeviceManager);
    self->_externalStorageDeviceManager = 0;
  }

  if (manager)
  {
    v8 = CFRetain(manager);
  }

  else
  {
    v8 = 0;
  }

  self->_externalStorageDeviceManager = v8;
  figExternalStorageDeviceUUID = self->_figExternalStorageDeviceUUID;
  if (figExternalStorageDeviceUUID)
  {
    CFRelease(figExternalStorageDeviceUUID);
    self->_figExternalStorageDeviceUUID = 0;
  }

  if (d)
  {
    v10 = CFRetain(d);
  }

  else
  {
    v10 = 0;
  }

  self->_figExternalStorageDeviceUUID = v10;
}

+ (AVAuthorizationStatus)authorizationStatus
{
  _checkAuthorizationStatus = [+[AVExternalStorageDeviceDiscoverySession sharedSession](AVExternalStorageDeviceDiscoverySession _checkAuthorizationStatus];
  if (_checkAuthorizationStatus == 2)
  {
    return 3;
  }

  else
  {
    return 2 * (_checkAuthorizationStatus == 1);
  }
}

+ (void)requestAccessWithCompletionHandler:(void *)handler
{
  if (+[AVExternalStorageDeviceDiscoverySession isSupported])
  {
    v4 = +[AVExternalStorageDeviceDiscoverySession sharedSession];

    [(AVExternalStorageDeviceDiscoverySession *)v4 _requestAuthorization:handler];
  }

  else
  {
    v5 = *(handler + 2);

    v5(handler, 0);
  }
}

- (NSString)displayName
{
  p_displayName = &self->_displayName;
  displayName = self->_displayName;
  if (displayName)
  {
    CFRelease(displayName);
    *p_displayName = 0;
  }

  if (self->_externalStorageDeviceManager && *(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v5 = OUTLINED_FUNCTION_9();
    v6(v5);
  }

  if (dword_1EB385998)
  {
    v7 = OUTLINED_FUNCTION_5();
    v8 = OUTLINED_FUNCTION_6(v7);
    if (OUTLINED_FUNCTION_3(v8))
    {
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_4(v9, v10, v15, v11, &dword_1A917C000, v12, v13, "<<<< AVExternalStorageDevice >>>> %s: [%@] Returning display name %@ for uuid %{private}@");
    }

    OUTLINED_FUNCTION_1_0();
  }

  return [*p_displayName copy];
}

- (NSInteger)freeSize
{
  v14 = 0;
  if (self->_externalStorageDeviceManager && *(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v2 = OUTLINED_FUNCTION_10();
    if (v3(v2))
    {
      SInt64 = -1;
    }

    else
    {
      SInt64 = FigCFNumberGetSInt64();
    }
  }

  else
  {
    SInt64 = -1;
  }

  if (dword_1EB385998)
  {
    v5 = OUTLINED_FUNCTION_7();
    v6 = OUTLINED_FUNCTION_12(v5);
    if (OUTLINED_FUNCTION_3(v6))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_4(v7, v8, v13, v9, &dword_1A917C000, v10, v11, "<<<< AVExternalStorageDevice >>>> %s: [%@] Returning freeSize %ld for uuid %{private}@");
    }

    OUTLINED_FUNCTION_1_0();
  }

  return SInt64;
}

- (NSInteger)totalSize
{
  v14 = 0;
  if (self->_externalStorageDeviceManager && *(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v2 = OUTLINED_FUNCTION_10();
    if (v3(v2))
    {
      SInt64 = -1;
    }

    else
    {
      SInt64 = FigCFNumberGetSInt64();
    }
  }

  else
  {
    SInt64 = -1;
  }

  if (dword_1EB385998)
  {
    v5 = OUTLINED_FUNCTION_7();
    v6 = OUTLINED_FUNCTION_12(v5);
    if (OUTLINED_FUNCTION_3(v6))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_4(v7, v8, v13, v9, &dword_1A917C000, v10, v11, "<<<< AVExternalStorageDevice >>>> %s: [%@] Returning totalSize %ld for uuid %{private}@");
    }

    OUTLINED_FUNCTION_1_0();
  }

  return SInt64;
}

- (id)_uniqueIdentifier
{
  p_uniqueIdentifier = &self->_uniqueIdentifier;
  uniqueIdentifier = self->_uniqueIdentifier;
  if (uniqueIdentifier)
  {
    CFRelease(uniqueIdentifier);
    *p_uniqueIdentifier = 0;
  }

  if (self->_externalStorageDeviceManager && *(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v5 = OUTLINED_FUNCTION_9();
    v6(v5);
  }

  if (dword_1EB385998)
  {
    v7 = OUTLINED_FUNCTION_5();
    v8 = OUTLINED_FUNCTION_6(v7);
    if (OUTLINED_FUNCTION_3(v8))
    {
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_4(v9, v10, v15, v11, &dword_1A917C000, v12, v13, "<<<< AVExternalStorageDevice >>>> %s: [%@] Returning uniqueIdentifier %@ for uuid %{private}@");
    }

    OUTLINED_FUNCTION_1_0();
  }

  return [*p_uniqueIdentifier copy];
}

- (BOOL)isNotRecommendedForCaptureUse
{
  v22 = 0;
  baseURL = self->_baseURL;
  v21 = *MEMORY[0x1E695DEA0];
  v4 = -[__CFURL resourceValuesForKeys:error:](baseURL, "resourceValuesForKeys:error:", [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1], 0);
  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = objc_msgSend_objectForKeyedSubscript_(v4);
  externalStorageDeviceManager = v5;
  if (!v5)
  {
    goto LABEL_12;
  }

  if (![(OpaqueFigExternalStorageDeviceManager *)v5 caseInsensitiveCompare:@"msdos"]|| ![(OpaqueFigExternalStorageDeviceManager *)externalStorageDeviceManager caseInsensitiveCompare:@"apfs"])
  {
    LOBYTE(externalStorageDeviceManager) = 1;
    goto LABEL_12;
  }

  externalStorageDeviceManager = self->_externalStorageDeviceManager;
  if (!externalStorageDeviceManager)
  {
    goto LABEL_12;
  }

  if (*(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v7 = OUTLINED_FUNCTION_10();
    v9 = v8(v7);
    v10 = v22;
    if (!v9)
    {
      LOBYTE(externalStorageDeviceManager) = FigCFEqual() != 0;
      v10 = v22;
      if (!v22)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    LOBYTE(externalStorageDeviceManager) = 0;
    if (v22)
    {
LABEL_9:
      CFRelease(v10);
    }
  }

  else
  {
LABEL_11:
    LOBYTE(externalStorageDeviceManager) = 0;
  }

LABEL_12:
  if (dword_1EB385998)
  {
    v20 = 0;
    v19[128] = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    if (OUTLINED_FUNCTION_3(v12))
    {
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_4(v13, v14, v19, v15, &dword_1A917C000, v16, v17, "<<<< AVExternalStorageDevice >>>> %s: [%@] Returning isNotRecommendedForCaptureUse : %@ for uuid %{private}@");
    }

    OUTLINED_FUNCTION_1_0();
  }

  return externalStorageDeviceManager;
}

- (id)baseURL
{
  p_baseURL = &self->_baseURL;
  if (!self->_baseURL && self->_externalStorageDeviceManager && *(*(CMBaseObjectGetVTable() + 16) + 32))
  {
    v10 = OUTLINED_FUNCTION_9();
    v11(v10);
  }

  if (dword_1EB385998)
  {
    v3 = OUTLINED_FUNCTION_5();
    v4 = OUTLINED_FUNCTION_6(v3);
    if (OUTLINED_FUNCTION_3(v4))
    {
      OUTLINED_FUNCTION_0_0();
      OUTLINED_FUNCTION_4(v5, v6, v13, v7, &dword_1A917C000, v8, v9, "<<<< AVExternalStorageDevice >>>> %s: [%@] Returning device base URL %@ for uuid %{private}@");
    }

    OUTLINED_FUNCTION_1_0();
  }

  return [(__CFURL *)*p_baseURL copy];
}

- (void)nextAvailableURLsWithPathExtensions:(void *)a3 error:.cold.2(void *result, void *a2, void *a3)
{
  if (a2)
  {
    if (result == -19274)
    {
      v5 = -11852;
    }

    else
    {
      v5 = result;
    }

    result = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v5 userInfo:0];
    *a2 = result;
  }

  *a3 = 0;
  return result;
}

@end