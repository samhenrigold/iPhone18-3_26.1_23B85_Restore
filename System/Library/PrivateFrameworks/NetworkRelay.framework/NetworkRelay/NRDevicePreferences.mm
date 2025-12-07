@interface NRDevicePreferences
- (BOOL)hasPreferWiFiRequest;
- (BOOL)hasQuickRelayRequest;
- (NRBluetoothLinkPreferences)bluetoothLinkPreferences;
- (NRCompanionLinkPreferences)companionLinkPreferences;
- (NRDevicePreferences)initWithDeviceIdentifier:(id)identifier;
- (NSSet)policyTrafficClassifiers;
- (const)copyDetailsLocked;
- (id)description;
- (void)addPreferWiFiRequest;
- (void)addQuickRelayRequest;
- (void)cancel;
- (void)cancelConnectionLocked;
- (void)dealloc;
- (void)deviceSetupCompleted;
- (void)deviceSetupStarted;
- (void)removeAllQuickRelayRequests;
- (void)removePreferWiFiRequest;
- (void)removePreferWiFiRequestLocked;
- (void)removeQuickRelayRequest;
- (void)removeQuickRelayRequestLocked:(uint64_t)locked;
- (void)resetCompanionLinkPreferencesLocked;
- (void)restartConnectionLocked;
- (void)sendDevicePreferencesLocked;
- (void)setBluetoothLinkPreferences:(id)preferences;
- (void)setBluetoothLinkPreferencesLocked:(uint64_t)locked;
- (void)setCompanionLinkPreferences:(id)preferences;
- (void)setPolicyTrafficClassifiers:(id)classifiers;
@end

@implementation NRDevicePreferences

- (void)setPolicyTrafficClassifiers:(id)classifiers
{
  classifiersCopy = classifiers;
  if (classifiersCopy)
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:classifiersCopy copyItems:1];
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  v5 = v4;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalPolicyTrafficClassifiers = self->_internalPolicyTrafficClassifiers;
  }

  else
  {
    internalPolicyTrafficClassifiers = 0;
  }

  if ([v5 isEqual:internalPolicyTrafficClassifiers])
  {
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v7 = nrCopyLogObj_sNRLogObj_115;
      v8 = _NRCopyPolicyTrafficClassifiersDescription(v5);
      _NRLogWithArgs(v7, 0, "%s%.30s:%-4d %@ policy traffic classifiers already set to %@", ", "[NRDevicePreferences setPolicyTrafficClassifiers:]"", 468, self, v8);
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v9 = nrCopyLogObj_sNRLogObj_115;
      if (self)
      {
        v10 = self->_internalPolicyTrafficClassifiers;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;
      v12 = v9;
      v13 = _NRCopyPolicyTrafficClassifiersDescription(v11);
      v14 = _NRCopyPolicyTrafficClassifiersDescription(v5);
      _NRLogWithArgs(v12, 0, "%s%.30s:%-4d %@ setting policy traffic classifiers from %@ to %@", ", "[NRDevicePreferences setPolicyTrafficClassifiers:]"", 472, self, v13, v14);
    }

    if (self)
    {
      objc_storeStrong(&self->_internalPolicyTrafficClassifiers, v5);
      [(NRDevicePreferences *)self sendDevicePreferencesLocked];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)sendDevicePreferencesLocked
{
  location[2] = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return;
  }

  os_unfair_lock_assert_owner((self + 16));
  if ([self isNRDTestServer])
  {
    return;
  }

  os_unfair_lock_assert_owner((self + 16));
  v2 = *(self + 64);
  if (([v2 isNotEmpty] & 1) != 0 || objc_msgSend(*(self + 80), "count") || *(self + 8) == 1)
  {

    goto LABEL_7;
  }

  v25 = *(self + 9);

  if (v25)
  {
LABEL_7:
    if (!*(self + 56))
    {
      if (nrXPCCopyQueue_onceToken != -1)
      {
        dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
      }

      v3 = nrXPCCopyQueue_nrXPCQueue;
      mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v3, 2uLL);
      v5 = *(self + 56);
      *(self + 56) = mach_service;

      objc_initWeak(location, self);
      v6 = *(self + 56);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke;
      v57[3] = &unk_27996B2D8;
      objc_copyWeak(&v58, location);
      xpc_connection_set_event_handler(v6, v57);

      v7 = *(self + 56);
      xpc_connection_activate(v7);

      objc_destroyWeak(&v58);
      objc_destroyWeak(location);
    }

    copyDetailsLocked = [(NRDevicePreferences *)self copyDetailsLocked];
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ sending device preferences: %@", ", "[NRDevicePreferences sendDevicePreferencesLocked]"", 534, self, copyDetailsLocked);
    }

    v9 = xpc_dictionary_create(0, 0, 0);
    v10 = v9;
    if (v9)
    {
      xpc_dictionary_set_uint64(v9, "Type", 0xBuLL);
      deviceIdentifier = [self deviceIdentifier];
      nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
      v13 = v10;
      v14 = nrDeviceIdentifier;
      v15 = v14;
      if (v14)
      {
        location[0] = 0;
        location[1] = 0;
        [v14 getUUIDBytes:location];
        xpc_dictionary_set_uuid(v13, "DeviceIdentifier", location);
        goto LABEL_19;
      }

      v29 = nrCopyLogObj_117();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v39 = v29;
        v40 = os_log_type_enabled(v29, OS_LOG_TYPE_FAULT);

        if (!v40)
        {
          goto LABEL_19;
        }
      }

      v41 = nrCopyLogObj_117();
      _NRLogWithArgs(v41, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_19:
      xpc_dictionary_set_BOOL(v13, "DevicePreferencesIsDeviceSetupInProgress", *(self + 8));
      if ([*(self + 64) isNotEmpty])
      {
        copyEncodedXPCDict = [*(self + 64) copyEncodedXPCDict];
        xpc_dictionary_set_value(v13, "DevicePreferencesBTLinkPreferences", copyEncodedXPCDict);
      }

      if (![*(self + 80) count])
      {
        goto LABEL_31;
      }

      v17 = xpc_array_create(0, 0);
      if (v17)
      {
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v18 = *(self + 80);
        v19 = [v18 countByEnumeratingWithState:&v53 objects:v59 count:16];
        if (v19)
        {
          v20 = *v54;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v54 != v20)
              {
                objc_enumerationMutation(v18);
              }

              xpc_array_set_string(v17, 0xFFFFFFFFFFFFFFFFLL, [*(*(&v53 + 1) + 8 * i) UTF8String]);
            }

            v19 = [v18 countByEnumeratingWithState:&v53 objects:v59 count:16];
          }

          while (v19);
        }

        xpc_dictionary_set_value(v13, "DevicePreferencesPolicyTrafficClassifiers", v17);
LABEL_31:
        objc_initWeak(location, self);
        v22 = *(self + 56);
        if (nrXPCCopyQueue_onceToken != -1)
        {
          dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
        }

        v23 = nrXPCCopyQueue_nrXPCQueue;
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke_2;
        v50[3] = &unk_27996AEF8;
        objc_copyWeak(&v52, location);
        v24 = copyDetailsLocked;
        v51 = v24;
        xpc_connection_send_message_with_reply(v22, v13, v23, v50);

        objc_destroyWeak(&v52);
        objc_destroyWeak(location);

        return;
      }

      v30 = nrCopyLogObj_117();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v42 = v30;
        v43 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);

        if (!v43)
        {
LABEL_57:
          v45 = _os_log_pack_size();
          v36 = v50 - ((MEMORY[0x28223BE20](v45, v46) + 15) & 0xFFFFFFFFFFFFFFF0);
          v47 = __error();
          v48 = _os_log_pack_fill(v36, v45, *v47, &dword_25B98C000, "%{public}s xpc_array_create(%p, %u) failed");
          __os_log_helper_1_2_3_8_34_8_0_4_0(v48, "nr_xpc_array_create");
LABEL_58:
          v49 = nrCopyLogObj_117();
          _NRLogAbortWithPack(v49, v36);
        }
      }

      v44 = nrCopyLogObj_117();
      _NRLogWithArgs(v44, 16, "%s%.30s:%-4d ABORTING: xpc_array_create(%p, %u) failed", ", "nr_xpc_array_create"", 56, 0, 0);

      goto LABEL_57;
    }

    v28 = nrCopyLogObj_117();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v31 = v28;
      v32 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);

      if (!v32)
      {
LABEL_52:
        v34 = _os_log_pack_size();
        v36 = v50 - ((MEMORY[0x28223BE20](v34, v35) + 15) & 0xFFFFFFFFFFFFFFF0);
        v37 = __error();
        v38 = _os_log_pack_fill(v36, v34, *v37, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
        __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v38, "nr_xpc_dictionary_create");
        goto LABEL_58;
      }
    }

    v33 = nrCopyLogObj_117();
    _NRLogWithArgs(v33, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

    goto LABEL_52;
  }

  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    v26 = nrCopyLogObj_sNRLogObj_115;
    copyDetailsLocked2 = [(NRDevicePreferences *)self copyDetailsLocked];
    _NRLogWithArgs(v26, 0, "%s%.30s:%-4d %@ cancelling connection because not needed %@", ", "[NRDevicePreferences sendDevicePreferencesLocked]"", 496, self, copyDetailsLocked2);
  }

  [(NRDevicePreferences *)self cancelConnectionLocked];
}

- (const)copyDetailsLocked
{
  if (result)
  {
    v1 = result;
    os_unfair_lock_assert_owner(result + 4);
    v2 = objc_alloc(MEMORY[0x277CCACA8]);
    v3 = *&v1[8]._os_unfair_lock_opaque;
    v4 = *&v1[16]._os_unfair_lock_opaque;
    v5 = *&v1[20]._os_unfair_lock_opaque;
    v6 = v4;
    v7 = _NRCopyPolicyTrafficClassifiersDescription(v5);
    v8 = [v2 initWithFormat:@"%llu preferWiFi, %@, %@", v3, v6, v7];

    return v8;
  }

  return result;
}

- (void)cancelConnectionLocked
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 16));
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v2 = nrCopyLogObj_sNRLogObj_115;
      os_unfair_lock_assert_owner((self + 16));
      v3 = objc_alloc(MEMORY[0x277CCACA8]);
      v4 = *(self + 32);
      v5 = *(self + 80);
      v6 = *(self + 64);
      v7 = v5;
      v8 = _NRCopyPolicyTrafficClassifiersDescription(v7);
      v9 = [v3 initWithFormat:@"%llu preferWiFi, %@, %@", v4, v6, v8];

      _NRLogWithArgs(v2, 0, "%s%.30s:%-4d %@ cancelling connection %@", ", "[NRDevicePreferences cancelConnectionLocked]"", 141, self, v9);
    }

    v10 = *(self + 56);
    if (v10)
    {
      xpc_connection_cancel(v10);
      v11 = *(self + 56);
      *(self + 56) = 0;
    }
  }
}

void __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    if (MEMORY[0x25F8746E0](v4) == MEMORY[0x277D86480])
    {
      os_unfair_lock_lock(WeakRetained + 4);
      if (v4 == MEMORY[0x277D863F0])
      {
        if (nrCopyLogObj_onceToken_113 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
        }

        if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
        {
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ interrupted, resubmitting device preferences", ", "[NRDevicePreferences sendDevicePreferencesLocked]_block_invoke"", 514, WeakRetained);
        }

        [(NRDevicePreferences *)WeakRetained sendDevicePreferencesLocked];
      }

      else
      {
        if (v4 == MEMORY[0x277D863F8])
        {
          if (nrCopyLogObj_onceToken_113 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ received XPC error invalid", ", "[NRDevicePreferences sendDevicePreferencesLocked]_block_invoke"", 518, WeakRetained);
          }
        }

        else
        {
          if (nrCopyLogObj_onceToken_113 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
          }

          if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
          {
            _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ received unknown XPC error: %@", ", "[NRDevicePreferences sendDevicePreferencesLocked]_block_invoke"", 521, WeakRetained, v4);
          }
        }

        [(NRDevicePreferences *)WeakRetained restartConnectionLocked];
      }

      os_unfair_lock_unlock(WeakRetained + 4);
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ received unexpected XPC message %@", ", "[NRDevicePreferences sendDevicePreferencesLocked]_block_invoke"", 526, WeakRetained, v4);
      }
    }
  }
}

void __50__NRDevicePreferences_sendDevicePreferencesLocked__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (MEMORY[0x25F8746E0](v4) == MEMORY[0x277D86480])
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ failed to send device preferences: %@, error %@", ", "[NRDevicePreferences sendDevicePreferencesLocked]_block_invoke_2"", 564, WeakRetained, *(a1 + 32), v4);
      }
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ sent device preferences: %@", ", "[NRDevicePreferences sendDevicePreferencesLocked]_block_invoke_2"", 566, WeakRetained, *(a1 + 32));
      }
    }
  }
}

- (void)restartConnectionLocked
{
  os_unfair_lock_assert_owner((self + 16));
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    v2 = nrCopyLogObj_sNRLogObj_115;
    os_unfair_lock_assert_owner((self + 16));
    v3 = objc_alloc(MEMORY[0x277CCACA8]);
    v4 = *(self + 32);
    v5 = *(self + 80);
    v6 = *(self + 64);
    v7 = v5;
    v8 = _NRCopyPolicyTrafficClassifiersDescription(v7);
    v9 = [v3 initWithFormat:@"%llu preferWiFi, %@, %@", v4, v6, v8];

    _NRLogWithArgs(v2, 0, "%s%.30s:%-4d %@ restarting connection %@", ", "[NRDevicePreferences restartConnectionLocked]"", 151, self, v9);
  }

  [(NRDevicePreferences *)self cancelConnectionLocked];

  [(NRDevicePreferences *)self sendDevicePreferencesLocked];
}

- (NSSet)policyTrafficClassifiers
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    v3 = MEMORY[0x277CBEB98];
    if (self->_internalPolicyTrafficClassifiers)
    {
      v4 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:self->_internalPolicyTrafficClassifiers copyItems:1];
      goto LABEL_6;
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEB98];
  }

  v4 = objc_alloc_init(v3);
LABEL_6:
  v5 = v4;
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setCompanionLinkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  os_unfair_lock_lock(&self->_lock);
  if (!preferencesCopy || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && (!self || (v6 = self->_internalCompanionLinkPreferences) == 0 || (v7 = v6, v8 = [preferencesCopy isEqual:self->_internalCompanionLinkPreferences], v7, !v8)))
  {
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      v9 = nrCopyLogObj_sNRLogObj_115;
      if (self)
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ setting link preferences from %@ to %@", ", "[NRDevicePreferences setCompanionLinkPreferences:]"", 365, self, self->_internalCompanionLinkPreferences, preferencesCopy);
      }

      else
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ setting link preferences from %@ to %@", ", "[NRDevicePreferences setCompanionLinkPreferences:]"", 365, 0, 0, preferencesCopy);
      }
    }

    [(NRDevicePreferences *)self resetCompanionLinkPreferencesLocked];
    if (!preferencesCopy)
    {
      goto LABEL_34;
    }

    if ([preferencesCopy serviceClass] == 2 || objc_msgSend(preferencesCopy, "serviceClass") == 3 || objc_msgSend(preferencesCopy, "serviceClass") == 4)
    {
      v10 = objc_alloc_init(NRBluetoothLinkPreferences);
      [(NRBluetoothLinkPreferences *)v10 setPacketsPerSecond:&unk_286D2CEA8];
      [(NRDevicePreferences *)self setBluetoothLinkPreferencesLocked:v10];
      if (self)
      {
        self->_hasCmpnLnkPrefsForBT = 1;
      }
    }

    if ([preferencesCopy serviceClass] == 3)
    {
      v11 = objc_alloc_init(MEMORY[0x277CD91F0]);
      [v11 requireNetworkAgentWithDomain:@"com.apple.networkrelay" type:@"PhoneCallRelayAgent"];
      copyCParameters = [v11 copyCParameters];
      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();

      v14 = nw_path_evaluator_copy_path();
      v15 = nw_path_copy_netagent_dictionary();
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      if (v15)
      {
        applier[0] = MEMORY[0x277D85DD0];
        applier[1] = 3221225472;
        applier[2] = __51__NRDevicePreferences_setCompanionLinkPreferences___block_invoke;
        applier[3] = &unk_27996AEA0;
        v19 = &v20;
        v18 = v14;
        xpc_dictionary_apply(v15, applier);

        if (self)
        {
          if (v21[3])
          {
            self->_hasCmpnLnkPrefsForIsoch = 1;
            objc_storeStrong(&self->_cmpnLnkPrefsEvaluator, evaluator_for_endpoint);
          }
        }
      }

      _Block_object_dispose(&v20, 8);
    }

    if (![preferencesCopy highThroughput])
    {
LABEL_34:
      if (!self)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if ([preferencesCopy includeP2P])
    {
      if ([preferencesCopy serviceClass] != 2 && objc_msgSend(preferencesCopy, "serviceClass") != 3 && objc_msgSend(preferencesCopy, "serviceClass") != 4 && objc_msgSend(preferencesCopy, "serviceClass") != 5)
      {
        NRPreferP2PSet(1);
        if (!self)
        {
          goto LABEL_40;
        }

        v16 = 10;
        goto LABEL_38;
      }

      NRPreferP2PImmediatelySet(1);
      if (self)
      {
        v16 = 11;
LABEL_38:
        *(&self->super.isa + v16) = 1;
LABEL_39:
        objc_storeStrong(&self->_internalCompanionLinkPreferences, preferences);
      }
    }

    else
    {
      NRPreferWiFiSet(1);
      if (self)
      {
        v16 = 12;
        goto LABEL_38;
      }
    }
  }

LABEL_40:
  os_unfair_lock_unlock(&self->_lock);
}

- (void)resetCompanionLinkPreferencesLocked
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 16));
    if (*(self + 72))
    {
      if (*(self + 13) == 1)
      {
        [(NRDevicePreferences *)self setBluetoothLinkPreferencesLocked:?];
        *(self + 13) = 0;
      }

      if (*(self + 14) == 1)
      {
        nw_path_evaluator_cancel();
        v2 = *(self + 96);
        *(self + 96) = 0;

        *(self + 14) = 0;
      }

      if (*(self + 10) == 1)
      {
        NRPreferP2PSet(0);
        *(self + 10) = 0;
      }

      if (*(self + 11) == 1)
      {
        NRPreferP2PImmediatelySet(0);
        *(self + 11) = 0;
      }

      if (*(self + 12) == 1)
      {
        NRPreferWiFiSet(0);
        *(self + 12) = 0;
      }

      v3 = *(self + 72);
      *(self + 72) = 0;
    }
  }
}

- (void)setBluetoothLinkPreferencesLocked:(uint64_t)locked
{
  v6 = a2;
  if (locked)
  {
    os_unfair_lock_assert_owner((locked + 16));
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(locked + 64);
        v5 = nrCopyLogObj_sNRLogObj_115;
        _NRLogWithArgs(v5, 0, "%s%.30s:%-4d %@ setting Bluetooth link preferences from %@ to %@", ", "[NRDevicePreferences setBluetoothLinkPreferencesLocked:]"", 301, locked, v4, v6);
      }

      objc_storeStrong((locked + 64), a2);
      [(NRDevicePreferences *)locked sendDevicePreferencesLocked];
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_FAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 17, "Invalid bluetooth link preferences");
      }
    }
  }
}

uint64_t __51__NRDevicePreferences_setCompanionLinkPreferences___block_invoke(uint64_t a1, int a2, xpc_object_t xdict)
{
  length = 0;
  data = xpc_dictionary_get_data(xdict, "data", &length);
  result = 1;
  if (data && length >= 0xD8 && length == *(data + 53) + 216)
  {
    v6 = data;
    if (!strcmp(data + 16, "com.apple.networkrelay") && !strcmp(v6 + 48, "PhoneCallRelayAgent"))
    {
      v7 = nw_path_assert_agent();
      result = 0;
      *(*(*(a1 + 40) + 8) + 24) = v7;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

- (NRCompanionLinkPreferences)companionLinkPreferences
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalCompanionLinkPreferences = self->_internalCompanionLinkPreferences;
  }

  else
  {
    internalCompanionLinkPreferences = 0;
  }

  v4 = [(NRCompanionLinkPreferences *)internalCompanionLinkPreferences copy];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)setBluetoothLinkPreferences:(id)preferences
{
  preferencesCopy = preferences;
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    self->_hasCmpnLnkPrefsForBT = 0;
    [(NRDevicePreferences *)self setBluetoothLinkPreferencesLocked:preferencesCopy];
  }

  else
  {
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NRBluetoothLinkPreferences)bluetoothLinkPreferences
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalBluetoothLinkPreferences = self->_internalBluetoothLinkPreferences;
  }

  else
  {
    internalBluetoothLinkPreferences = 0;
  }

  v4 = [(NRBluetoothLinkPreferences *)internalBluetoothLinkPreferences copy];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)hasQuickRelayRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_quickRelayRequestCount != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)removeAllQuickRelayRequests
{
  os_unfair_lock_lock(&self->_lock);
  [(NRDevicePreferences *)self removeQuickRelayRequestLocked:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeQuickRelayRequestLocked:(uint64_t)locked
{
  if (!locked)
  {
    return;
  }

  os_unfair_lock_assert_owner((locked + 16));
  v4 = *(locked + 40);
  if (!v4)
  {
    return;
  }

  if (a2)
  {
    *(locked + 40) = 0;
    if (nrCopyLogObj_onceToken_113 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ removing all quick relay requests (count is now %llu)", ", "[NRDevicePreferences removeQuickRelayRequestLocked:]"", 238, locked, *(locked + 40));
    }

    [*(locked + 48) removeAllQuickRelayRequests];
    if (*(locked + 40))
    {
      return;
    }

LABEL_17:
    v5 = *(locked + 48);
    *(locked + 48) = 0;

    return;
  }

  *(locked + 40) = v4 - 1;
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ removing quick relay request (count is now %llu)", ", "[NRDevicePreferences removeQuickRelayRequestLocked:]"", 242, locked, *(locked + 40));
  }

  [*(locked + 48) removeQuickRelayRequest];
  if (!*(locked + 40))
  {
    goto LABEL_17;
  }
}

- (void)removeQuickRelayRequest
{
  os_unfair_lock_lock(&self->_lock);
  [(NRDevicePreferences *)self removeQuickRelayRequestLocked:?];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)addQuickRelayRequest
{
  os_unfair_lock_lock(&self->_lock);
  quickRelayRequestCount = self->_quickRelayRequestCount;
  if (!quickRelayRequestCount)
  {
    if (self->_quickRelayPreference)
    {
      quickRelayRequestCount = 0;
    }

    else
    {
      v4 = [NRDevicePreferencesQuickRelay alloc];
      deviceIdentifier = [(NRDevicePreferences *)self deviceIdentifier];
      nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
      v7 = [(NRDevicePreferencesQuickRelay *)v4 initWithNRUUID:nrDeviceIdentifier];
      quickRelayPreference = self->_quickRelayPreference;
      self->_quickRelayPreference = v7;

      quickRelayRequestCount = self->_quickRelayRequestCount;
    }
  }

  self->_quickRelayRequestCount = quickRelayRequestCount + 1;
  [(NRDevicePreferencesQuickRelay *)self->_quickRelayPreference addQuickRelayRequest];

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasPreferWiFiRequest
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_preferWiFiRequestCount != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)removePreferWiFiRequest
{
  os_unfair_lock_lock(&self->_lock);
  [(NRDevicePreferences *)self removePreferWiFiRequestLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removePreferWiFiRequestLocked
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 16));
    v2 = *(self + 32);
    if (v2)
    {
      *(self + 32) = v2 - 1;
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ removing prefer Wi-Fi request (count is now %llu)", ", "[NRDevicePreferences removePreferWiFiRequestLocked]"", 198, self, *(self + 32));
      }

      NRPreferWiFiSet(0);
    }

    else
    {
      if (nrCopyLogObj_onceToken_113 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 16, "%s%.30s:%-4d %@ not removing prefer Wi-Fi request because count is 0", ", "[NRDevicePreferences removePreferWiFiRequestLocked]"", 201, self);
      }
    }
  }
}

- (void)addPreferWiFiRequest
{
  os_unfair_lock_lock(&self->_lock);
  ++self->_preferWiFiRequestCount;
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d %@ adding prefer Wi-Fi request (count is now %llu)", ", "[NRDevicePreferences addPreferWiFiRequest]"", 188, self, self->_preferWiFiRequestCount);
  }

  NRPreferWiFiSet(1);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deviceSetupCompleted
{
  os_unfair_lock_lock(&self->_lock);
  *&self->_internalDeviceSetupStarted = 256;
  [(NRDevicePreferences *)self sendDevicePreferencesLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)deviceSetupStarted
{
  os_unfair_lock_lock(&self->_lock);
  *&self->_internalDeviceSetupStarted = 1;
  [(NRDevicePreferences *)self sendDevicePreferencesLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  if (self)
  {
    identifier = self->_identifier;
  }

  else
  {
    identifier = 0;
  }

  deviceIdentifier = [(NRDevicePreferences *)self deviceIdentifier];
  nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
  uUIDString = [nrDeviceIdentifier UUIDString];
  v8 = [v3 initWithFormat:@"DevPref[%llu %@]", identifier, uUIDString];

  return v8;
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d Dealloc: %@", ", "[NRDevicePreferences dealloc]"", 119, self);
  }

  [(NRDevicePreferences *)self cancel];
  v3.receiver = self;
  v3.super_class = NRDevicePreferences;
  [(NRDevicePreferences *)&v3 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    v3 = nrCopyLogObj_sNRLogObj_115;
    copyDetailsLocked = [(NRDevicePreferences *)self copyDetailsLocked];
    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Cancel: %@ %@", ", "[NRDevicePreferences cancel]"", 104, self, copyDetailsLocked);
  }

  while (self->_preferWiFiRequestCount)
  {
    [(NRDevicePreferences *)self removePreferWiFiRequestLocked];
  }

  [(NRDevicePreferences *)self removeQuickRelayRequestLocked:?];
  internalBluetoothLinkPreferences = self->_internalBluetoothLinkPreferences;
  self->_internalBluetoothLinkPreferences = 0;

  *&self->_internalDeviceSetupStarted = 0;
  [(NRDevicePreferences *)self resetCompanionLinkPreferencesLocked];
  [(NRDevicePreferences *)self cancelConnectionLocked];

  os_unfair_lock_unlock(&self->_lock);
}

- (NRDevicePreferences)initWithDeviceIdentifier:(id)identifier
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v10 = nrCopyLogObj_117();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v10;
      v13 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
LABEL_15:
        v15 = _os_log_pack_size();
        v17 = &v28 - ((MEMORY[0x28223BE20](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
        v18 = __error();
        v19 = _os_log_pack_fill(v17, v15, *v18, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier");
        *v19 = 136446466;
        *(v19 + 4) = "[NRDevicePreferences initWithDeviceIdentifier:]";
        *(v19 + 12) = 2080;
        *(v19 + 14) = "[NRDevicePreferences initWithDeviceIdentifier:]";
        goto LABEL_19;
      }
    }

    v14 = nrCopyLogObj_117();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", ", "[NRDevicePreferences initWithDeviceIdentifier:]", 89, "[NRDevicePreferences initWithDeviceIdentifier:]"");

    goto LABEL_15;
  }

  v6 = identifierCopy;
  v29.receiver = self;
  v29.super_class = NRDevicePreferences;
  v7 = [(NRDevicePreferences *)&v29 init];
  if (!v7)
  {
    v11 = nrCopyLogObj_117();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v20 = v11;
      v21 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v21)
      {
LABEL_18:
        v23 = _os_log_pack_size();
        v17 = &v28 - ((MEMORY[0x28223BE20](v23, v24) + 15) & 0xFFFFFFFFFFFFFFF0);
        v25 = __error();
        v26 = _os_log_pack_fill(v17, v23, *v25, &dword_25B98C000, "%{public}s [super init] failed");
        *v26 = 136446210;
        *(v26 + 4) = "[NRDevicePreferences initWithDeviceIdentifier:]";
LABEL_19:
        v27 = nrCopyLogObj_117();
        _NRLogAbortWithPack(v27, v17);
      }
    }

    v22 = nrCopyLogObj_117();
    _NRLogWithArgs(v22, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDevicePreferences initWithDeviceIdentifier:]"", 90);

    goto LABEL_18;
  }

  v8 = v7;
  objc_storeStrong(&v7->_deviceIdentifier, identifier);
  v8->_lock._os_unfair_lock_opaque = 0;
  v8->_identifier = atomic_fetch_add_explicit(&initWithDeviceIdentifier__sNRDevicePreferencesIndex, 1uLL, memory_order_relaxed);
  if (nrCopyLogObj_onceToken_113 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_113, &__block_literal_global_114);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_115, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_115, 0, "%s%.30s:%-4d Init: %@", ", "[NRDevicePreferences initWithDeviceIdentifier:]"", 97, v8);
  }

  return v8;
}

@end