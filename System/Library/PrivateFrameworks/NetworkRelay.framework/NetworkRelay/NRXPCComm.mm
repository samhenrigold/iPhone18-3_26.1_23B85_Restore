@interface NRXPCComm
- (NRXPCComm)initWithDeviceIdentifier:(id)identifier notificationQueue:(id)queue notificationBlock:(id)block;
- (id)description;
- (void)activate;
- (void)activateLocked;
- (void)cancel;
- (void)dealloc;
- (void)sendMessageLocked:(uint64_t)locked;
- (void)sendXPCCommDictionary:(id)dictionary;
@end

@implementation NRXPCComm

- (void)activate
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    if (!self->_cancelled)
    {
      [(NRXPCComm *)self activateLocked];
      goto LABEL_8;
    }

    v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v4 = v3;
      v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d not activating as cancelled", ", "[NRXPCComm activate]"", 123);
  }

LABEL_8:

  os_unfair_lock_unlock(&self->_lock);
}

- (void)activateLocked
{
  if (self)
  {
    os_unfair_lock_assert_owner((self + 12));
    if (!*(self + 32))
    {
      if (nrXPCCopyQueue_onceToken != -1)
      {
        dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
      }

      v2 = nrXPCCopyQueue_nrXPCQueue;
      mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v2, 2uLL);
      v4 = *(self + 32);
      *(self + 32) = mach_service;

      objc_initWeak(&location, self);
      v5 = *(self + 32);
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __27__NRXPCComm_activateLocked__block_invoke;
      v7[3] = &unk_27996B2D8;
      objc_copyWeak(&v8, &location);
      xpc_connection_set_event_handler(v5, v7);

      v6 = *(self + 32);
      xpc_connection_activate(v6);

      [(NRXPCComm *)self sendMessageLocked:?];
      objc_destroyWeak(&v8);
      objc_destroyWeak(&location);
    }
  }
}

void __27__NRXPCComm_activateLocked__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!WeakRetained)
  {
    goto LABEL_41;
  }

  v5 = MEMORY[0x25F8746E0](v3);
  if (v5 == MEMORY[0x277D86480])
  {
    os_unfair_lock_lock(WeakRetained + 3);
    *(WeakRetained + 8) = 0;
    if (v3 == MEMORY[0x277D863F0])
    {
      v14 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v31 = v14;
        v32 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);

        if (!v32)
        {
          goto LABEL_37;
        }
      }

      v33 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      v27 = v33;
      v41 = 149;
      v34 = "%s%.30s:%-4d xpc connection interrupted";
    }

    else
    {
      v8 = MEMORY[0x277D863F8];
      v9 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      if (v3 != v8)
      {
        if (sNRCopyLogToStdErr)
        {

LABEL_27:
          v27 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
          _NRLogWithArgs(v27, 16, "%s%.30s:%-4d received unknown XPC error: %@", ", "[NRXPCComm activateLocked]_block_invoke"", 154, v3);
LABEL_36:

          goto LABEL_37;
        }

        v25 = v9;
        v26 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);

        if (v26)
        {
          goto LABEL_27;
        }

LABEL_37:
        v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"teardown"];
        v37 = *(WeakRetained + 5);
        if (v37)
        {
          v38 = v37;
          v39 = *(WeakRetained + 6);
          v45[0] = MEMORY[0x277D85DD0];
          v45[1] = 3221225472;
          v45[2] = __27__NRXPCComm_activateLocked__block_invoke_2;
          v45[3] = &unk_27996B158;
          v47 = v38;
          v46 = v13;
          v40 = v38;
          dispatch_async(v39, v45);
        }

        os_unfair_lock_unlock(WeakRetained + 3);
        goto LABEL_40;
      }

      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v35 = v9;
        v36 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);

        if (!v36)
        {
          goto LABEL_37;
        }
      }

      v33 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
      v27 = v33;
      v41 = 152;
      v34 = "%s%.30s:%-4d received XPC error invalid";
    }

    _NRLogWithArgs(v33, 0, v34, ", "[NRXPCComm activateLocked]_block_invoke"", v41);
    goto LABEL_36;
  }

  v6 = MEMORY[0x277D86468];
  if (v5 == MEMORY[0x277D86468])
  {
    os_unfair_lock_lock(WeakRetained + 3);
    v10 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v15 = v10;
      v16 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);

      if (!v16)
      {
        goto LABEL_18;
      }
    }

    v17 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    _NRLogWithArgs(v17, 2, "%s%.30s:%-4d Received XPC dict: %@", ", "[NRXPCComm activateLocked]_block_invoke"", 168, v3);

LABEL_18:
    v13 = xpc_dictionary_get_dictionary(v3, "XPCCommNotification");
    v18 = xpc_dictionary_get_value(v13, "XPCCommDictionary");
    if (MEMORY[0x25F8746E0]() == v6)
    {
      v20 = _CFXPCCreateCFObjectFromXPCObject();
      v21 = *(WeakRetained + 5);
      if (v21)
      {
        v22 = v21;
        v23 = *(WeakRetained + 6);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __27__NRXPCComm_activateLocked__block_invoke_3;
        block[3] = &unk_27996B158;
        v44 = v22;
        v43 = v20;
        v24 = v22;
        dispatch_async(v23, block);
      }

      os_unfair_lock_unlock(WeakRetained + 3);

      goto LABEL_40;
    }

    v19 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v19;
      v29 = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);

      if (!v29)
      {
LABEL_30:
        os_unfair_lock_unlock(WeakRetained + 3);

        goto LABEL_40;
      }
    }

    v30 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    _NRLogWithArgs(v30, 17, "Invalid notification format");

    goto LABEL_30;
  }

  v7 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_13:
    v13 = _NRCopyLogObjectForNRUUID(*(WeakRetained + 3));
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d received unexpected XPC message %@", ", "[NRXPCComm activateLocked]_block_invoke"", 189, v3);
LABEL_40:

    goto LABEL_41;
  }

  v11 = v7;
  v12 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

  if (v12)
  {
    goto LABEL_13;
  }

LABEL_41:
}

- (void)sendMessageLocked:(uint64_t)locked
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!locked)
  {
    goto LABEL_14;
  }

  os_unfair_lock_assert_owner((locked + 12));
  [(NRXPCComm *)locked activateLocked];
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    v19 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v22 = v19;
      v23 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);

      if (!v23)
      {
        goto LABEL_23;
      }
    }

    v24 = nrCopyLogObj_336();
    _NRLogWithArgs(v24, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_23:
    v25 = _os_log_pack_size();
    v27 = &handler[-1] - ((MEMORY[0x28223BE20](v25, v26) + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = __error();
    v29 = _os_log_pack_fill(v27, v25, *v28, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v29, "nr_xpc_dictionary_create");
    v30 = nrCopyLogObj_336();
    _NRLogAbortWithPack(v30, v27);
  }

  v5 = v4;
  xpc_dictionary_set_uint64(v4, "Type", 0x29uLL);
  deviceIdentifier = [locked deviceIdentifier];
  nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
  v8 = v5;
  v9 = nrDeviceIdentifier;
  v10 = v9;
  if (v9)
  {
    *uuid = 0;
    v48 = 0;
    [v9 getUUIDBytes:uuid];
    xpc_dictionary_set_uuid(v8, "DeviceIdentifier", uuid);
    goto LABEL_5;
  }

  v20 = nrCopyLogObj_336();
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v31 = v20;
    v32 = os_log_type_enabled(v20, OS_LOG_TYPE_FAULT);

    if (!v32)
    {
      goto LABEL_5;
    }
  }

  v33 = nrCopyLogObj_336();
  _NRLogWithArgs(v33, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

LABEL_5:
  v11 = xpc_dictionary_create(0, 0, 0);
  if (!v11)
  {
    v21 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v21;
      v35 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);

      if (!v35)
      {
        goto LABEL_28;
      }
    }

    v36 = nrCopyLogObj_336();
    _NRLogWithArgs(v36, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_28:
    v37 = _os_log_pack_size();
    v39 = &handler[-1] - ((MEMORY[0x28223BE20](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
    v40 = __error();
    v41 = _os_log_pack_fill(v39, v37, *v40, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v41, "nr_xpc_dictionary_create");
    v42 = nrCopyLogObj_336();
    _NRLogAbortWithPack(v42, v39);
  }

  if (v3)
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v3];
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
  }

  v13 = v12;
  if ((*(locked + 8) & 1) == 0)
  {
    [v12 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"checkin"];
  }

  v14 = _CFXPCCreateXPCObjectFromCFObject();
  xpc_dictionary_set_value(v11, "XPCCommDictionary", v14);
  xpc_dictionary_set_value(v8, "XPCCommNotification", v11);
  objc_initWeak(uuid, locked);
  v15 = [v13 description];
  v16 = *(locked + 32);
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  v17 = nrXPCCopyQueue_nrXPCQueue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __31__NRXPCComm_sendMessageLocked___block_invoke;
  handler[3] = &unk_27996AEF8;
  objc_copyWeak(&v46, uuid);
  v18 = v15;
  v45 = v18;
  xpc_connection_send_message_with_reply(v16, v8, v17, handler);

  *(locked + 8) = 1;
  objc_destroyWeak(&v46);

  objc_destroyWeak(uuid);
LABEL_14:
}

void __31__NRXPCComm_sendMessageLocked___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v12);
    v5 = MEMORY[0x277D86480];
    v6 = _NRCopyLogObjectForNRUUID(WeakRetained[3]);
    if (v4 == v5)
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v10 = v6;
        v11 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);

        if (!v11)
        {
          goto LABEL_12;
        }
      }

      v9 = _NRCopyLogObjectForNRUUID(WeakRetained[3]);
      _NRLogWithArgs(v9, 16, "%s%.30s:%-4d failed to send %@ due to error %@", ", "[NRXPCComm sendMessageLocked:]_block_invoke"", 230, *(a1 + 32), v12);
    }

    else
    {
      if (sNRCopyLogToStdErr)
      {
      }

      else
      {
        v7 = v6;
        v8 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);

        if (!v8)
        {
          goto LABEL_12;
        }
      }

      v9 = _NRCopyLogObjectForNRUUID(WeakRetained[3]);
      _NRLogWithArgs(v9, 0, "%s%.30s:%-4d sent %@", ", "[NRXPCComm sendMessageLocked:]_block_invoke"", 232, *(a1 + 32));
    }
  }

LABEL_12:
}

- (void)sendXPCCommDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  os_unfair_lock_lock(&self->_lock);
  if (!self)
  {
    selfCopy = 0;
    goto LABEL_6;
  }

  if (!self->_cancelled)
  {
    selfCopy = self;
LABEL_6:
    [(NRXPCComm *)selfCopy sendMessageLocked:dictionaryCopy];
    goto LABEL_9;
  }

  v4 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v6 = v4;
    v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

    if (!v7)
    {
      goto LABEL_9;
    }
  }

  v8 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  _NRLogWithArgs(v8, 0, "%s%.30s:%-4d not sending message as cancelled", ", "[NRXPCComm sendXPCCommDictionary:]"", 111);

LABEL_9:
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

  deviceIdentifier = [(NRXPCComm *)self deviceIdentifier];
  nrDeviceIdentifier = [deviceIdentifier nrDeviceIdentifier];
  uUIDString = [nrDeviceIdentifier UUIDString];
  v8 = [v3 initWithFormat:@"XPCComm[%llu %@]", identifier, uUIDString];

  return v8;
}

- (void)dealloc
{
  v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_4:
    v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
    _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Dealloc", ", "[NRXPCComm dealloc]"", 86);

    goto LABEL_5;
  }

  v4 = v3;
  v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

  if (v5)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(NRXPCComm *)self cancel];
  v7 = self->_nrUUID;
  os_unfair_lock_lock(&sNRLogLock);
  [sNRUUIDsEligibleForLogObject removeObject:v7];

  os_unfair_lock_unlock(&sNRLogLock);
  v8.receiver = self;
  v8.super_class = NRXPCComm;
  [(NRXPCComm *)&v8 dealloc];
}

- (void)cancel
{
  os_unfair_lock_lock(&self->_lock);
  v3 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {
  }

  else
  {
    v4 = v3;
    v5 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);

    if (!v5)
    {
      goto LABEL_5;
    }
  }

  v6 = _NRCopyLogObjectForNRUUID(self->_nrUUID);
  _NRLogWithArgs(v6, 0, "%s%.30s:%-4d Cancel", ", "[NRXPCComm cancel]"", 78);

LABEL_5:
  self->_cancelled = 1;
  os_unfair_lock_assert_owner(&self->_lock);
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v8 = self->_connection;
    self->_connection = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NRXPCComm)initWithDeviceIdentifier:(id)identifier notificationQueue:(id)queue notificationBlock:(id)block
{
  v44 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  blockCopy = block;
  if (!identifierCopy)
  {
    v24 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v24;
      v27 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v27)
      {
LABEL_14:
        v29 = _os_log_pack_size();
        v31 = &v42 - ((MEMORY[0x28223BE20](v29, v30) + 15) & 0xFFFFFFFFFFFFFFF0);
        v32 = __error();
        v33 = _os_log_pack_fill(v31, v29, *v32, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier");
        *v33 = 136446466;
        *(v33 + 4) = "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]";
        *(v33 + 12) = 2080;
        *(v33 + 14) = "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]";
        goto LABEL_18;
      }
    }

    v28 = nrCopyLogObj_336();
    _NRLogWithArgs(v28, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", ", "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]", 58, "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]"");

    goto LABEL_14;
  }

  v12 = blockCopy;
  v43.receiver = self;
  v43.super_class = NRXPCComm;
  v13 = [(NRXPCComm *)&v43 init];
  if (!v13)
  {
    v25 = nrCopyLogObj_336();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v34 = v25;
      v35 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (!v35)
      {
LABEL_17:
        v37 = _os_log_pack_size();
        v31 = &v42 - ((MEMORY[0x28223BE20](v37, v38) + 15) & 0xFFFFFFFFFFFFFFF0);
        v39 = __error();
        v40 = _os_log_pack_fill(v31, v37, *v39, &dword_25B98C000, "%{public}s [super init] failed");
        *v40 = 136446210;
        *(v40 + 4) = "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]";
LABEL_18:
        v41 = nrCopyLogObj_336();
        _NRLogAbortWithPack(v41, v31);
      }
    }

    v36 = nrCopyLogObj_336();
    _NRLogWithArgs(v36, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]"", 59);

    goto LABEL_17;
  }

  v14 = v13;
  objc_storeStrong(&v13->_deviceIdentifier, identifier);
  objc_storeStrong(&v14->_notificationQueue, queue);
  v15 = MEMORY[0x25F8740C0](v12);
  notificationBlock = v14->_notificationBlock;
  v14->_notificationBlock = v15;

  v14->_lock._os_unfair_lock_opaque = 0;
  v14->_identifier = atomic_fetch_add_explicit(&initWithDeviceIdentifier_notificationQueue_notificationBlock__sNRDevicePreferencesIndex, 1uLL, memory_order_relaxed);
  nrDeviceIdentifier = [(NRDeviceIdentifier *)v14->_deviceIdentifier nrDeviceIdentifier];
  nrUUID = v14->_nrUUID;
  v14->_nrUUID = nrDeviceIdentifier;

  _NRAddEligibleNRUUIDForLogObject(v14->_nrUUID);
  v19 = _NRCopyLogObjectForNRUUID(v14->_nrUUID);
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_6:
    v22 = _NRCopyLogObjectForNRUUID(v14->_nrUUID);
    _NRLogWithArgs(v22, 0, "%s%.30s:%-4d Init for %@", ", "[NRXPCComm initWithDeviceIdentifier:notificationQueue:notificationBlock:]"", 71, identifierCopy);

    goto LABEL_7;
  }

  v20 = v19;
  v21 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

  if (v21)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v14;
}

@end