@interface GCSyntheticDeviceManager
- (GCSyntheticDeviceManager)init;
- (GCSyntheticDeviceManager)initWithServer:(id)server;
- (id)_onqueue_setupDeviceWithDescription:(void *)description;
- (uint64_t)_kernel_close;
- (uint64_t)_kernel_createDeviceWithProperties:(_DWORD *)properties service:;
- (uint64_t)_kernel_open:(uint64_t)result;
- (uint64_t)_kernel_terminateAllDevices:(uint64_t)result;
- (uint64_t)_kernel_terminateDeviceWithIdentifier:(uint64_t)identifier;
- (uint64_t)_user_check:(void *)_user_check device:(int *)device enabled:;
- (void)_onqueue_refreshSyntheticControllersEnabled;
- (void)_onqueue_setActiveDevices:(uint64_t)devices;
- (void)_onqueue_teardownDevice:(uint64_t)device;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
@end

@implementation GCSyntheticDeviceManager

- (GCSyntheticDeviceManager)initWithServer:(id)server
{
  serverCopy = server;
  v65.receiver = self;
  v65.super_class = GCSyntheticDeviceManager;
  v7 = [(GCSyntheticDeviceManager *)&v65 init];
  objc_storeStrong(v7 + 1, server);
  v8 = dispatch_queue_create("SyntheticDeviceManager", 0);
  v9 = *(v7 + 2);
  *(v7 + 2) = v8;

  v10 = *MEMORY[0x1E696CD60];
  v11 = IONotificationPortCreate(*MEMORY[0x1E696CD60]);
  *(v7 + 3) = v11;
  if (!v11)
  {
    v16 = getLogger(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [GCSyntheticDeviceManager initWithServer:];
    }

    goto LABEL_10;
  }

  IONotificationPortSetDispatchQueue(v11, *(v7 + 2));
  v12 = IOServiceMatching("AppleGCResource");
  MatchingService = IOServiceGetMatchingService(v10, v12);
  v7[8] = MatchingService;
  if (!MatchingService)
  {
    v16 = getLogger(MatchingService);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [GCSyntheticDeviceManager initWithServer:];
    }

    goto LABEL_10;
  }

  v14 = MEMORY[0x1E69E9A60];
  v15 = IOServiceOpen(MatchingService, *MEMORY[0x1E69E9A60], 0, v7 + 9);
  if (!v15)
  {
    v19 = [(GCSyntheticDeviceManager *)v7 _kernel_open:?];
    if (v19)
    {
      v16 = getLogger(v19);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [GCSyntheticDeviceManager initWithServer:];
      }

      goto LABEL_10;
    }

    if (_os_feature_enabled_impl())
    {
      v20 = mach_port_allocate(*v14, 1u, v7 + 12);
      if (v20)
      {
        isInternalBuild = gc_isInternalBuild(v20, v21);
        if (!isInternalBuild)
        {
          v17 = 0;
          goto LABEL_12;
        }

        v16 = getGCLogger(isInternalBuild);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [GCSyntheticDeviceManager initWithServer:];
        }

        goto LABEL_10;
      }

      v23 = v7[12];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke;
      aBlock[3] = &unk_1E841A690;
      v64 = v23;
      v62 = v7;
      v63 = a2;
      v24 = v7;
      v61 = v24;
      v25 = _Block_copy(aBlock);
      v26 = dispatch_mach_create();
      v27 = *(v24 + 7);
      *(v24 + 7) = v26;

      if (!*(v24 + 7))
      {
        v53 = getLogger(0);
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          [GCSyntheticDeviceManager initWithServer:];
        }

        v17 = 0;
        v16 = v61;
        goto LABEL_11;
      }

      dispatch_mach_connect();
      v28 = MEMORY[0x1D38AC160](v7[9], 1, v23, 0);
      if (v28)
      {
        v29 = getLogger(v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          [GCSyntheticDeviceManager initWithServer:];
        }
      }
    }

    v30 = IOServiceMatching("IOHIDUserDevice");
    *(v7 + 8) = v30;
    CFDictionarySetValue(v30, @"VendorID", &unk_1F4E8E348);
    CFDictionarySetValue(*(v7 + 8), @"ProductID", &unk_1F4E8E360);
    v31 = *(v7 + 3);
    v32 = CFRetain(*(v7 + 8));
    v33 = IOServiceAddMatchingNotification(v31, "IOServicePublish", v32, __onqueue_3PSyntheticControllersChanged, v7, v7 + 18);
    if (v33)
    {
      v34 = getLogger(v33);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [GCSyntheticDeviceManager initWithServer:];
      }
    }

    v35 = *(v7 + 3);
    v36 = CFRetain(*(v7 + 8));
    v37 = IOServiceAddMatchingNotification(v35, "IOServiceTerminate", v36, __onqueue_3PSyntheticControllersChanged, v7, v7 + 19);
    if (v37)
    {
      v38 = getLogger(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        [GCSyntheticDeviceManager initWithServer:];
      }
    }

    v39 = v7[18];
    if (v39)
    {
      if (v7[19])
      {
        __3PSyntheticControllersDrainIterator(v7, v39);
        __3PSyntheticControllersDrainIterator(v7, v7[19]);
LABEL_40:
        v41 = *(v7 + 2);
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke_112;
        block[3] = &unk_1E8418C28;
        v42 = v7;
        v59 = v42;
        dispatch_async(v41, block);

        LOBYTE(v41) = _os_feature_enabled_impl() ^ 1;
        v43 = GCLookupService();
        v44 = *(v42 + 11);
        *(v42 + 11) = v43;

        v45 = GCLookupService();
        v46 = *(v42 + 13);
        *(v42 + 13) = v45;

        *(v42 + 96) = v41;
        v47 = *(v42 + 11);
        if (v47)
        {
          [v47 addObserver:v42 forKeyPath:@"enableSyntheticDevices" options:5 context:0];
        }

        else
        {
          [GCSyntheticDeviceManager initWithServer:?];
        }

        v48 = *(v7 + 2);
        v56[0] = MEMORY[0x1E69E9820];
        v56[1] = 3221225472;
        v56[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke_114;
        v56[3] = &unk_1E8418C28;
        v49 = v42;
        v57 = v49;
        dispatch_async(v48, v56);
        v50 = dispatch_time(0, 5000000000);
        v51 = *(v7 + 2);
        v54[0] = MEMORY[0x1E69E9820];
        v54[1] = 3221225472;
        v54[2] = __43__GCSyntheticDeviceManager_initWithServer___block_invoke_2;
        v54[3] = &unk_1E8418C28;
        v52 = v49;
        v55 = v52;
        dispatch_after(v50, v51, v54);
        v17 = v52;

        v16 = v57;
        goto LABEL_11;
      }

      IOObjectRelease(v7[18]);
      v7[18] = 0;
    }

    v40 = v7[19];
    if (v40)
    {
      IOObjectRelease(v40);
      v7[19] = 0;
    }

    goto LABEL_40;
  }

  v16 = getLogger(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    [GCSyntheticDeviceManager initWithServer:];
  }

LABEL_10:
  v17 = 0;
LABEL_11:

LABEL_12:
  return v17;
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2 == 2)
  {
    v6 = dispatch_mach_msg_get_msg();
    v7 = v6;
    memset(msg, 0, sizeof(msg));
    if (v6->msgh_id == 1)
    {
      if ((v6->msgh_bits & 0x80000000) != 0)
      {
        p_msgh_size = &v6->msgh_size;
        if (v7->msgh_size == 48)
        {
          if (v7[1].msgh_bits == 1)
          {
            if (HIBYTE(v7[1].msgh_local_port) == 1 && (v9 = *&v7[1].msgh_size) != 0)
            {
              v32 = 0;
              errorString = 0;
              v10 = IOCFUnserializeWithSize(v9, v7[1].msgh_voucher_port, 0, 0, &errorString);
              v11 = v10;
              if (v10)
              {
                v12 = CFGetTypeID(v10);
                if (v12 != CFDictionaryGetTypeID())
                {
                  CFRelease(v11);
                  v11 = 0;
                  errorString = @"ClientAttributes not a CFDictionary";
                }
              }

              v13 = MEMORY[0x1D38AD500](*MEMORY[0x1E69E9A60], *&v7[1].msgh_size, v7[1].msgh_voucher_port);
              if (v11)
              {
                v29 = 0u;
                v30 = 0u;
                v27 = 0u;
                v28 = 0u;
                v14 = [*(*(a1 + 40) + 112) keyEnumerator];
                v15 = [v14 countByEnumeratingWithState:&v27 objects:v34 count:16];
                if (v15)
                {
                  v16 = v15;
                  v17 = *v28;
LABEL_16:
                  v18 = 0;
                  while (1)
                  {
                    if (*v28 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [*(*(a1 + 40) + 112) objectForKey:*(*(&v27 + 1) + 8 * v18)];
                    if (!v19)
                    {
                      __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_4((a1 + 48), (a1 + 32));
                    }

                    if ([(_GCSyntheticDevice *)v19 serviceIdentity]== v7[1].msgh_id)
                    {
                      break;
                    }

                    if (v16 == ++v18)
                    {
                      v16 = [v14 countByEnumeratingWithState:&v27 objects:v34 count:16];
                      if (v16)
                      {
                        goto LABEL_16;
                      }

                      goto LABEL_24;
                    }
                  }

                  if (!v19)
                  {
                    goto LABEL_30;
                  }

                  [(GCSyntheticDeviceManager *)*(a1 + 40) _user_check:v11 device:v19 enabled:&v32];
                  v22 = 0;
                }

                else
                {
LABEL_24:

LABEL_30:
                  v19 = getLogger(v20);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_5();
                  }

                  v22 = 4;
                }

                v23 = v32;
              }

              else
              {
                v24 = getLogger(v13);
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_6();
                }

                v23 = 0;
                v22 = 4;
              }

              *msg = v7->msgh_bits & 0x1F;
              *&msg[4] = 32;
              msgh_id = v7->msgh_id;
              *&msg[8] = v7->msgh_remote_port;
              *&msg[20] = msgh_id;
              *&msg[24] = v22;
              *&msg[28] = v23;
              v26 = mach_msg(msg, 17, 0x20u, 0, 0, 0, 0);
              if (v26)
              {
                __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_7(v26);
              }
            }

            else
            {
              __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_8(v7);
            }
          }

          else
          {
            __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_3(&v7[1], v7);
          }
        }

        else
        {
          __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_2(p_msgh_size, v7);
        }
      }

      else
      {
        __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_9(v6);
      }
    }

    else
    {
      v21 = getLogger(v6);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_1();
      }

      mach_msg_destroy(v7);
    }
  }

  else if (a2 == 8)
  {
    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a1 + 56), 1u, -1);
  }
}

- (uint64_t)_user_check:(void *)_user_check device:(int *)device enabled:
{
  v7 = a2;
  _user_checkCopy = _user_check;
  if (self)
  {
    v9 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Check Process Enabled", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v21.opaque[0] = 0;
    v21.opaque[1] = 0;
    os_activity_scope_enter(v9, &v21);
    v11 = getLogger(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [GCSyntheticDeviceManager _user_check:_user_checkCopy device:v7 enabled:v11];
    }

    persistentIdentifier = [(_GCSyntheticDevice *)_user_checkCopy persistentIdentifier];
    v14 = [v7 objectForKeyedSubscript:@"BundleIdentifier"];
    if (v14)
    {
      games = [*(self + 104) games];
      v16 = [games gameWithBundleIdentifier:v14];

      if (v16)
      {
        controllerToCompatibilityModeMappings = [v16 controllerToCompatibilityModeMappings];
        v18 = [controllerToCompatibilityModeMappings objectForKeyedSubscript:persistentIdentifier];
      }

      else
      {
        v18 = 0;
      }

      if ([v18 isEqualToString:*MEMORY[0x1E69A0720]])
      {
        v19 = 2;
LABEL_12:
        *device = v19;

LABEL_15:
        os_activity_scope_leave(&v21);

        goto LABEL_16;
      }

      if ([v18 isEqualToString:*MEMORY[0x1E69A0718]])
      {
        v19 = 0;
        goto LABEL_12;
      }
    }

    *device = 0;
    goto LABEL_15;
  }

LABEL_16:

  return 0;
}

- (GCSyntheticDeviceManager)init
{
  [(GCSyntheticDeviceManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)dealloc
{
  if (self->_syntheticDevices)
  {
    [(_GCControllerManagerServer *)self->_server removeObserver:self forKeyPath:@"activeControllerDevices" context:0];
    syntheticDevices = self->_syntheticDevices;
    self->_syntheticDevices = 0;
  }

  defaults = self->_defaults;
  if (defaults)
  {
    [(GCUserDefaults *)defaults removeObserver:self forKeyPath:@"enableSyntheticDevices"];
    v5 = self->_defaults;
    self->_defaults = 0;
  }

  IOObjectRelease(self->_3pSyntheticControllerTerminatedNotification);
  self->_3pSyntheticControllerTerminatedNotification = 0;
  IOObjectRelease(self->_3pSyntheticControllerPublishedNotification);
  self->_3pSyntheticControllerPublishedNotification = 0;
  _3pSyntheticControllerMatchingCriteria = self->_3pSyntheticControllerMatchingCriteria;
  if (_3pSyntheticControllerMatchingCriteria)
  {
    CFRelease(_3pSyntheticControllerMatchingCriteria);
    self->_3pSyntheticControllerMatchingCriteria = 0;
  }

  if (self->_upcallMachChannel)
  {
    dispatch_mach_cancel();
    upcallMachChannel = self->_upcallMachChannel;
    self->_upcallMachChannel = 0;
  }

  IOConnectCallScalarMethod(self->_connect, 1u, 0, 0, 0, 0);
  IOServiceClose(self->_connect);
  self->_connect = 0;
  IOObjectRelease(self->_service);
  self->_service = 0;
  v8.receiver = self;
  v8.super_class = GCSyntheticDeviceManager;
  [(GCSyntheticDeviceManager *)&v8 dealloc];
}

- (id)_onqueue_setupDeviceWithDescription:(void *)description
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (description)
  {
    v4 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Setup Kernel Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(v4, &state);
    v6 = getLogger(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = [v3 debugDescription];
      [(GCSyntheticDeviceManager *)v7 _onqueue_setupDeviceWithDescription:buf, v6];
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__GCSyntheticDeviceManager__onqueue_setupDeviceWithDescription___block_invoke;
    v9[3] = &unk_1E841A6B8;
    v9[4] = description;
    description = [(_GCSyntheticDevice *)_GCSyntheticXbox360Controller deviceWithDescription:v3 creator:v9];
    os_activity_scope_leave(&state);
  }

  return description;
}

uint64_t __64__GCSyntheticDeviceManager__onqueue_setupDeviceWithDescription___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v2 = [(GCSyntheticDeviceManager *)*(a1 + 32) _kernel_createDeviceWithProperties:a2 service:&v6];
  if (!v2)
  {
    return v6;
  }

  v3 = v2;
  v4 = getLogger(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v8 = v3;
    _os_log_impl(&dword_1D2CD5000, v4, OS_LOG_TYPE_DEFAULT, "#KERNEL AppleGCResource create device failed: %{mach.errno}d.", buf, 8u);
  }

  return 0;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (self->_server == objectCopy && [pathCopy isEqualToString:@"activeControllerDevices"])
  {
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v13 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] 'activeControllerDevices' changed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v13, &state);
    v14 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __75__GCSyntheticDeviceManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
    block[3] = &unk_1E8418C50;
    v23 = v14;
    selfCopy = self;
    v16 = v14;
    dispatch_async(queue, block);
    os_activity_scope_leave(&state);
  }

  else
  {
    if (self->_defaults != objectCopy || ![pathCopy isEqualToString:@"enableSyntheticDevices"])
    {
      v20.receiver = self;
      v20.super_class = GCSyntheticDeviceManager;
      [(GCSyntheticDeviceManager *)&v20 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_13;
    }

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v13 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Preference changed", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v13, &state);
    v17 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    v18 = getLogger(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [GCSyntheticDeviceManager observeValueForKeyPath:v17 ofObject:v18 change:? context:?];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_disabledByPreference = [v17 BOOLValue] ^ 1;
    }

    v19 = self->_queue;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __75__GCSyntheticDeviceManager_observeValueForKeyPath_ofObject_change_context___block_invoke_131;
    v21[3] = &unk_1E8418C28;
    v21[4] = self;
    dispatch_async(v19, v21);
    os_activity_scope_leave(&state);
  }

LABEL_13:
}

- (uint64_t)_kernel_open:(uint64_t)result
{
  if (result)
  {
    output = 0;
    input = 0;
    outputCnt = 1;
    result = IOConnectCallScalarMethod(*(result + 36), 0, &input, 1u, &output, &outputCnt);
    if (a2)
    {
      *a2 = output;
    }
  }

  return result;
}

- (void)_onqueue_refreshSyntheticControllersEnabled
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 16));
    if (*(self + 80))
    {
      v3 = getLogger(v2);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_5_6();
        _os_log_debug_impl(v9, v10, v11, v12, v13, 0xCu);
      }

      if (*(self + 96) != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    if (*(self + 96))
    {
LABEL_8:
      v4 = getLogger(v2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_5_6();
        _os_log_debug_impl(v14, v15, v16, v17, v18, 2u);
      }

LABEL_11:
      if (*(self + 112))
      {
        [(GCSyntheticDeviceManager *)self _onqueue_setActiveDevices:?];
        [*(self + 8) removeObserver:self forKeyPath:@"activeControllerDevices" context:0];
        v8 = *(self + 112);
        *(self + 112) = 0;
      }

      return;
    }

    if (!*(self + 112))
    {
      v5 = getLogger(v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        OUTLINED_FUNCTION_5_6();
        _os_log_debug_impl(v19, v20, v21, v22, v23, 2u);
      }

      strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
      v7 = *(self + 112);
      *(self + 112) = strongToStrongObjectsMapTable;

      [*(self + 8) addObserver:self forKeyPath:@"activeControllerDevices" options:5 context:0];
    }
  }
}

- (uint64_t)_kernel_terminateAllDevices:(uint64_t)result
{
  if (result)
  {
    if (a2)
    {
      v4 = *(result + 40);
    }

    else
    {
      v4 = 0;
    }

    input[1] = v2;
    input[2] = v3;
    input[0] = v4;
    return IOConnectCallScalarMethod(*(result + 36), 4u, input, 1u, 0, 0);
  }

  return result;
}

- (uint64_t)_kernel_close
{
  if (result)
  {
    return IOConnectCallScalarMethod(*(result + 36), 1u, 0, 0, 0, 0);
  }

  return result;
}

- (uint64_t)_kernel_createDeviceWithProperties:(_DWORD *)properties service:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v7 = IOCFSerialize(v5, 0);
    if (v7)
    {
      v8 = v7;
      output = 0;
      outputCnt = 1;
      v9 = *(self + 36);
      BytePtr = CFDataGetBytePtr(v7);
      Length = CFDataGetLength(v8);
      self = IOConnectCallMethod(v9, 2u, 0, 0, BytePtr, Length, &output, &outputCnt, 0, 0);
      if (!self)
      {
        if (properties)
        {
          *properties = output;
        }

        else
        {
          mach_port_deallocate(*MEMORY[0x1E69E9A60], output);
        }
      }

      CFRelease(v8);
    }

    else
    {
      v12 = getLogger(0);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D2CD5000, v12, OS_LOG_TYPE_INFO, "Serialization failed", buf, 2u);
      }

      self = 3758097097;
    }
  }

  return self;
}

- (void)_onqueue_teardownDevice:(uint64_t)device
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (device)
  {
    v16.opaque[0] = 0;
    v16.opaque[1] = 0;
    v4 = _os_activity_create(&dword_1D2CD5000, "[Synthetic Device Manager] Teardown Kernel Device", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, &v16);
    v6 = getLogger(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v18 = v3;
      _os_log_debug_impl(&dword_1D2CD5000, v6, OS_LOG_TYPE_DEBUG, "Teardown kernel synthetic device: %@", buf, 0xCu);
    }

    identifier = [(_GCSyntheticDevice *)v3 identifier];
    v9 = [(GCSyntheticDeviceManager *)device _kernel_terminateDeviceWithIdentifier:identifier];
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9;
    if (v9 == -536870208)
    {
      v11 = getLogger(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v18 = identifier;
        v12 = "No kernel device with identifier '%@'.";
        v13 = v11;
        v14 = OS_LOG_TYPE_INFO;
        v15 = 12;
LABEL_10:
        _os_log_impl(&dword_1D2CD5000, v13, v14, v12, buf, v15);
      }
    }

    else
    {
      v11 = getLogger(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v18) = v10;
        v12 = "#KERNEL AppleGCResource terminate device failed: %{mach.errno}d.";
        v13 = v11;
        v14 = OS_LOG_TYPE_DEFAULT;
        v15 = 8;
        goto LABEL_10;
      }
    }

LABEL_12:
    os_activity_scope_leave(&v16);
  }
}

- (uint64_t)_kernel_terminateDeviceWithIdentifier:(uint64_t)identifier
{
  identifierCopy = identifier;
  v15[1] = *MEMORY[0x1E69E9840];
  if (identifier)
  {
    v14 = @"_GCSyntheticDeviceIdentifier";
    v15[0] = a2;
    v3 = MEMORY[0x1E695DF20];
    v4 = a2;
    v5 = [v3 dictionaryWithObjects:v15 forKeys:&v14 count:1];

    v6 = IOCFSerialize(v5, 0);
    if (v6)
    {
      v7 = v6;
      v8 = *(identifierCopy + 36);
      BytePtr = CFDataGetBytePtr(v6);
      Length = CFDataGetLength(v7);
      identifierCopy = IOConnectCallMethod(v8, 3u, 0, 0, BytePtr, Length, 0, 0, 0, 0);
      CFRelease(v7);
    }

    else
    {
      v11 = getLogger(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1D2CD5000, v11, OS_LOG_TYPE_INFO, "Serialization failed", buf, 2u);
      }

      identifierCopy = 3758097097;
    }
  }

  return identifierCopy;
}

- (void)_onqueue_setActiveDevices:(uint64_t)devices
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (devices)
  {
    dispatch_assert_queue_V2(*(devices + 16));
    v4 = [*(devices + 112) copy];
    v5 = v4;
    if (v4)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      keyEnumerator = [v4 keyEnumerator];
      v7 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v37 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v31;
        do
        {
          v10 = 0;
          do
          {
            if (*v31 != v9)
            {
              objc_enumerationMutation(keyEnumerator);
            }

            v11 = *(*(&v30 + 1) + 8 * v10);
            v12 = [v3 member:v11];

            if (!v12)
            {
              v13 = [v5 objectForKey:v11];
              if (!v13)
              {
                currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
                [currentHandler handleFailureInMethod:sel__onqueue_setActiveDevices_ object:devices file:@"GCSyntheticDeviceManager.m" lineNumber:449 description:{@"Bug in %s", "-[GCSyntheticDeviceManager _onqueue_setActiveDevices:]"}];
              }

              [(GCSyntheticDeviceManager *)devices _onqueue_teardownDevice:v13];
              [*(devices + 112) removeObjectForKey:v11];
            }

            ++v10;
          }

          while (v8 != v10);
          v14 = [keyEnumerator countByEnumeratingWithState:&v30 objects:v37 count:16];
          v8 = v14;
        }

        while (v14);
      }

      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v15 = v3;
      v16 = [v15 countByEnumeratingWithState:&v26 objects:v36 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v27;
        do
        {
          v19 = 0;
          do
          {
            if (*v27 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v26 + 1) + 8 * v19);
            v21 = [v5 objectForKey:v20];

            if (!v21)
            {
              makeSyntheticController = [v20 makeSyntheticController];
              if (makeSyntheticController)
              {
                v23 = [(GCSyntheticDeviceManager *)devices _onqueue_setupDeviceWithDescription:makeSyntheticController];
                [*(devices + 112) setObject:v23 forKey:v20];
              }

              else
              {
                v23 = getLogger(0);
                if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v35 = v20;
                  _os_log_error_impl(&dword_1D2CD5000, v23, OS_LOG_TYPE_ERROR, "%@ did not return a synthetic device description.", buf, 0xCu);
                }
              }
            }

            ++v19;
          }

          while (v17 != v19);
          v24 = [v15 countByEnumeratingWithState:&v26 objects:v36 count:16];
          v17 = v24;
        }

        while (v24);
      }
    }
  }
}

void __75__GCSyntheticDeviceManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_25];
  v4 = [v2 filteredSetUsingPredicate:v3];

  [(GCSyntheticDeviceManager *)*(a1 + 40) _onqueue_setActiveDevices:v4];
}

- (void)initWithServer:.cold.1()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithServer:.cold.2()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithServer:.cold.3()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServer:.cold.4()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithServer:.cold.5()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithServer:.cold.6()
{
  OUTLINED_FUNCTION_1_7();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)initWithServer:(uint64_t)a1 .cold.7(uint64_t a1)
{
  v1 = getLogger(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_error_impl(&dword_1D2CD5000, v1, OS_LOG_TYPE_ERROR, "Failed to load user defaults.", v2, 2u);
  }
}

- (void)initWithServer:.cold.8()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServer:.cold.9()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)initWithServer:.cold.10()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_2(uint64_t a1, mach_msg_header_t *a2)
{
  v4 = getLogger(a1);
  if (OUTLINED_FUNCTION_5_8(v4))
  {
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v5, v6, v7, v8, v9, 8u);
  }

  mach_msg_destroy(a2);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_3(uint64_t a1, mach_msg_header_t *a2)
{
  v4 = getLogger(a1);
  if (OUTLINED_FUNCTION_5_8(v4))
  {
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v5, v6, v7, v8, v9, 8u);
  }

  mach_msg_destroy(a2);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_4(void *a1, void *a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:*a1 object:*a2 file:@"GCSyntheticDeviceManager.m" lineNumber:202 description:{@"Bug in %s", "-[GCSyntheticDeviceManager initWithServer:]_block_invoke"}];
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_5()
{
  OUTLINED_FUNCTION_4_8();
  OUTLINED_FUNCTION_0_24();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_7(uint64_t a1)
{
  v1 = a1;
  v4 = *MEMORY[0x1E69E9840];
  v2 = getLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3[0] = 67109120;
    v3[1] = v1;
    _os_log_error_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_ERROR, "#Mach message reply failed: %{mach.errno}d.", v3, 8u);
  }
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_8(mach_msg_header_t *a1)
{
  v3 = getLogger(a1);
  if (OUTLINED_FUNCTION_5_8(v3))
  {
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  mach_msg_destroy(a1);
}

void __43__GCSyntheticDeviceManager_initWithServer___block_invoke_cold_9(mach_msg_header_t *a1)
{
  v3 = getLogger(a1);
  if (OUTLINED_FUNCTION_5_8(v3))
  {
    OUTLINED_FUNCTION_1_18();
    _os_log_error_impl(v4, v5, v6, v7, v8, 2u);
  }

  mach_msg_destroy(a1);
}

- (void)_user_check:(uint64_t)a1 device:(uint64_t)a2 enabled:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEBUG, "Check %@ enabled: %@", &v3, 0x16u);
}

- (void)_onqueue_setupDeviceWithDescription:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1D2CD5000, log, OS_LOG_TYPE_DEBUG, "Setup kernel synthetic device with description: %@", buf, 0xCu);
}

- (void)observeValueForKeyPath:(uint64_t)a1 ofObject:(NSObject *)a2 change:context:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 138543618;
  v3 = @"enableSyntheticDevices";
  v4 = 2114;
  v5 = a1;
  _os_log_debug_impl(&dword_1D2CD5000, a2, OS_LOG_TYPE_DEBUG, "New %{public}@ #preference is %{public}@.", &v2, 0x16u);
}

@end