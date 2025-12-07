@interface NRDeviceMonitor
- (BOOL)isAsleep;
- (BOOL)isClassCConnected;
- (BOOL)isCloudConnected;
- (BOOL)isConnected;
- (BOOL)isEnabled;
- (BOOL)isNearby;
- (BOOL)isRegistered;
- (BOOL)pluggedIn;
- (NRDeviceIdentifier)deviceIdentifier;
- (NRDeviceInfo)deviceInfo;
- (NRDeviceMonitor)initWithDeviceIdentifier:(id)identifier delegate:(id)delegate queue:(id)queue;
- (NSString)proxyServiceInterfaceName;
- (int)thermalPressureLevel;
- (unsigned)linkSubtype;
- (unsigned)linkType;
- (void)checkInWithRetryCount:(id *)count;
- (void)dealloc;
- (void)setInternalProxySvcIntfName:(uint64_t)name;
- (void)updateStateFromResponse:(uint64_t)response;
@end

@implementation NRDeviceMonitor

- (BOOL)isConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsConnected = self->_internalIsConnected;
  }

  else
  {
    internalIsConnected = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsConnected;
}

- (NRDeviceInfo)deviceInfo
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalDeviceInfo = self->_internalDeviceInfo;
  }

  else
  {
    internalDeviceInfo = 0;
  }

  v4 = internalDeviceInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (BOOL)pluggedIn
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalPluggedIn = self->_internalPluggedIn;
  }

  else
  {
    internalPluggedIn = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalPluggedIn;
}

- (int)thermalPressureLevel
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalThermalPressureLevel = self->_internalThermalPressureLevel;
  }

  else
  {
    internalThermalPressureLevel = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalThermalPressureLevel;
}

- (unsigned)linkSubtype
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalLinkSubtype = self->_internalLinkSubtype;
  }

  else
  {
    internalLinkSubtype = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalLinkSubtype;
}

- (NSString)proxyServiceInterfaceName
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalProxySvcIntfName = self->_internalProxySvcIntfName;
  }

  else
  {
    internalProxySvcIntfName = 0;
  }

  v4 = [(NSString *)internalProxySvcIntfName copy];
  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (unsigned)linkType
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalLinkType = self->_internalLinkType;
  }

  else
  {
    internalLinkType = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalLinkType;
}

- (BOOL)isClassCConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsClassCConnected = self->_internalIsClassCConnected;
  }

  else
  {
    internalIsClassCConnected = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsClassCConnected;
}

- (BOOL)isAsleep
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsAsleep = self->_internalIsAsleep;
  }

  else
  {
    internalIsAsleep = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsAsleep;
}

- (BOOL)isCloudConnected
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsCloudConnected = self->_internalIsCloudConnected;
  }

  else
  {
    internalIsCloudConnected = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsCloudConnected;
}

- (BOOL)isNearby
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsNearby = self->_internalIsNearby;
  }

  else
  {
    internalIsNearby = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsNearby;
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsEnabled = self->_internalIsEnabled;
  }

  else
  {
    internalIsEnabled = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsEnabled;
}

- (BOOL)isRegistered
{
  os_unfair_lock_lock(&self->_lock);
  if (self)
  {
    internalIsRegistered = self->_internalIsRegistered;
  }

  else
  {
    internalIsRegistered = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return internalIsRegistered;
}

- (NRDeviceIdentifier)deviceIdentifier
{
  if (self)
  {
    self = self->_internalDeviceIdentifier;
  }

  return self;
}

- (void)dealloc
{
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEFAULT))
  {
    v3 = nrCopyLogObj_sNRLogObj_229;
    deviceIdentifier = [(NRDeviceMonitor *)self deviceIdentifier];
    _NRLogWithArgs(v3, 0, "%s%.30s:%-4d Dealloc %@ for %@", ", "[NRDeviceMonitor dealloc]"", 87, self, deviceIdentifier);
  }

  if (self)
  {
    connection = self->_connection;
    if (connection)
    {
      xpc_connection_cancel(connection);
      v6 = self->_connection;
      self->_connection = 0;
    }
  }

  v7.receiver = self;
  v7.super_class = NRDeviceMonitor;
  [(NRDeviceMonitor *)&v7 dealloc];
}

- (NRDeviceMonitor)initWithDeviceIdentifier:(id)identifier delegate:(id)delegate queue:(id)queue
{
  location[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  delegateCopy = delegate;
  queueCopy = queue;
  if (!identifierCopy)
  {
    v23 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v27 = v23;
      v28 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);

      if (!v28)
      {
LABEL_32:
        v30 = _os_log_pack_size();
        v32 = &v57 - ((MEMORY[0x28223BE20](v30, v31) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = *__error();
        v34 = _os_log_pack_fill(v32, v30, v33, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier");
        goto LABEL_39;
      }
    }

    v29 = nrCopyLogObj_237();
    _NRLogWithArgs(v29, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceIdentifier", ", "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]", 51, "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]"");

    goto LABEL_32;
  }

  if (!delegateCopy)
  {
    v24 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v35 = v24;
      v36 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);

      if (!v36)
      {
LABEL_35:
        v38 = _os_log_pack_size();
        v32 = &v57 - ((MEMORY[0x28223BE20](v38, v39) + 15) & 0xFFFFFFFFFFFFFFF0);
        v40 = *__error();
        v34 = _os_log_pack_fill(v32, v38, v40, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL delegate");
        goto LABEL_39;
      }
    }

    v37 = nrCopyLogObj_237();
    _NRLogWithArgs(v37, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL delegate", ", "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]", 52, "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]"");

    goto LABEL_35;
  }

  v12 = queueCopy;
  if (!queueCopy)
  {
    v25 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v41 = v25;
      v42 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);

      if (!v42)
      {
LABEL_38:
        v44 = _os_log_pack_size();
        v32 = &v57 - ((MEMORY[0x28223BE20](v44, v45) + 15) & 0xFFFFFFFFFFFFFFF0);
        v46 = *__error();
        v34 = _os_log_pack_fill(v32, v44, v46, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL queue");
LABEL_39:
        *v34 = 136446466;
        *(v34 + 4) = "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]";
        *(v34 + 12) = 2080;
        *(v34 + 14) = "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]";
        v47 = nrCopyLogObj_237();
        _NRLogAbortWithPack(v47, v32);
      }
    }

    v43 = nrCopyLogObj_237();
    _NRLogWithArgs(v43, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL queue", ", "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]", 53, "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]"");

    goto LABEL_38;
  }

  v58.receiver = self;
  v58.super_class = NRDeviceMonitor;
  v13 = [(NRDeviceMonitor *)&v58 init];
  v14 = v13;
  if (!v13)
  {
    v26 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v48 = v26;
      v49 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);

      if (!v49)
      {
        goto LABEL_42;
      }
    }

    v50 = nrCopyLogObj_237();
    _NRLogWithArgs(v50, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]"", 54);

LABEL_42:
    v51 = _os_log_pack_size();
    v53 = &v57 - ((MEMORY[0x28223BE20](v51, v52) + 15) & 0xFFFFFFFFFFFFFFF0);
    v54 = __error();
    v55 = _os_log_pack_fill(v53, v51, *v54, &dword_25B98C000, "%{public}s [super init] failed");
    *v55 = 136446210;
    *(v55 + 4) = "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]";
    v56 = nrCopyLogObj_237();
    _NRLogAbortWithPack(v56, v53);
  }

  objc_storeStrong(&v13->_internalDeviceIdentifier, identifier);
  objc_storeWeak(&v14->_delegate, delegateCopy);
  objc_storeStrong(&v14->_delegateQueue, queue);
  *&v14->_internalLinkType = 0;
  *&v14->_internalIsRegistered = 0;
  internalProxySvcIntfName = v14->_internalProxySvcIntfName;
  v14->_internalProxySvcIntfName = 0;

  v14->_internalThermalPressureLevel = 0;
  v14->_lock._os_unfair_lock_opaque = 0;
  v16 = v14->_delegateQueue;
  mach_service = xpc_connection_create_mach_service("com.apple.terminusd", v16, 2uLL);
  connection = v14->_connection;
  v14->_connection = mach_service;

  if (!v14->_connection)
  {
    if (nrCopyLogObj_onceToken_227 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    }

    if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 17, "Failed to create NRDeviceMonitor XPC connection"), nrCopyLogObj_onceToken_227 != -1))
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_19;
      }
    }

    else if (sNRCopyLogToStdErr)
    {
      goto LABEL_19;
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
    {
LABEL_20:
      v21 = 0;
      goto LABEL_21;
    }

LABEL_19:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Failed to start %@ for %@", ", "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]"", 76, v14, identifierCopy);
    goto LABEL_20;
  }

  objc_initWeak(location, v14);
  v19 = v14->_connection;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __24__NRDeviceMonitor_start__block_invoke;
  handler[3] = &unk_27996B2D8;
  objc_copyWeak(&v60, location);
  xpc_connection_set_event_handler(v19, handler);

  v20 = v14->_connection;
  xpc_connection_activate(v20);

  [(NRDeviceMonitor *)&v14->super.isa checkInWithRetryCount:?];
  objc_destroyWeak(&v60);
  objc_destroyWeak(location);
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 0, "%s%.30s:%-4d Started %@ for %@", ", "[NRDeviceMonitor initWithDeviceIdentifier:delegate:queue:]"", 80, v14, identifierCopy);
  }

  v21 = v14;
LABEL_21:

  return v21;
}

void __24__NRDeviceMonitor_start__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v5);
    if (v4 == MEMORY[0x277D86468])
    {
      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEBUG))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 2, "%s%.30s:%-4d Received XPC dict: %@", ", "[NRDeviceMonitor start]_block_invoke"", 618, v5);
      }

      [(NRDeviceMonitor *)WeakRetained updateStateFromResponse:v5];
    }

    else
    {
      if (v4 != MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Received unexpected XPC object: %@", ", "[NRDeviceMonitor start]_block_invoke"", 624, v5), nrCopyLogObj_onceToken_227 != -1))
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          if ((sNRCopyLogToStdErr & 1) == 0)
          {
LABEL_10:
            if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_24;
            }
          }
        }

        else if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_10;
        }

        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 17, "Received unexpected XPC object");
        goto LABEL_24;
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Received XPC error: %@, retrying", ", "[NRDeviceMonitor start]_block_invoke"", 621, v5);
      }

      [(NRDeviceMonitor *)WeakRetained checkInWithRetryCount:?];
    }
  }

LABEL_24:
}

- (void)checkInWithRetryCount:(id *)count
{
  v36 = *MEMORY[0x277D85DE8];
  if (a2 >= 6)
  {
    if (nrCopyLogObj_onceToken_227 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
    {
      v2 = nrCopyLogObj_sNRLogObj_229;
      v3 = "Failed to checkin NRDeviceMonitor after retries";
LABEL_18:

      _NRLogWithArgs(v2, 17, v3);
      return;
    }

    return;
  }

  if (count[9])
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6)
    {
      v7 = v6;
      xpc_dictionary_set_uint64(v6, "Type", 0xAuLL);
      v8 = count[4];
      nrDeviceIdentifier = [v8 nrDeviceIdentifier];
      v10 = v7;
      v11 = nrDeviceIdentifier;
      v12 = v11;
      if (v11)
      {
        *uuid = 0;
        v35 = 0;
        [v11 getUUIDBytes:uuid];
        xpc_dictionary_set_uuid(v10, "DeviceIdentifier", uuid);
LABEL_11:

        objc_initWeak(uuid, count);
        v13 = count[9];
        v14 = count[7];
        handler[0] = MEMORY[0x277D85DD0];
        handler[1] = 3221225472;
        handler[2] = __41__NRDeviceMonitor_checkInWithRetryCount___block_invoke;
        handler[3] = &unk_27996B300;
        objc_copyWeak(&v32, uuid);
        v15 = v10;
        v31 = v15;
        v33 = a2;
        xpc_connection_send_message_with_reply(v13, v15, v14, handler);

        objc_destroyWeak(&v32);
        objc_destroyWeak(uuid);

        return;
      }

      v17 = nrCopyLogObj_237();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v27 = v17;
        v28 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);

        if (!v28)
        {
          goto LABEL_11;
        }
      }

      v29 = nrCopyLogObj_237();
      _NRLogWithArgs(v29, 17, "%s called with null uuid", "nr_xpc_dictionary_set_nsuuid");

      goto LABEL_11;
    }

    v16 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v18 = v16;
      v19 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);

      if (!v19)
      {
        goto LABEL_27;
      }
    }

    v20 = nrCopyLogObj_237();
    _NRLogWithArgs(v20, 16, "%s%.30s:%-4d ABORTING: xpc_dictionary_create(%p, %p, %u) failed", ", "nr_xpc_dictionary_create"", 74, 0, 0, 0);

LABEL_27:
    v21 = _os_log_pack_size();
    v23 = handler - ((MEMORY[0x28223BE20](v21, v22) + 15) & 0xFFFFFFFFFFFFFFF0);
    v24 = __error();
    v25 = _os_log_pack_fill(v23, v21, *v24, &dword_25B98C000, "%{public}s xpc_dictionary_create(%p, %p, %u) failed");
    __os_log_helper_1_2_4_8_34_8_0_8_0_4_0(v25, "nr_xpc_dictionary_create");
    v26 = nrCopyLogObj_237();
    _NRLogAbortWithPack(v26, v23);
  }

  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
  {
    v2 = nrCopyLogObj_sNRLogObj_229;
    v3 = "Could not check in with server as no connection found";
    goto LABEL_18;
  }
}

void __41__NRDeviceMonitor_checkInWithRetryCount___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = MEMORY[0x25F8746E0](v5);
    if (v4 == MEMORY[0x277D86468])
    {
      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_DEBUG))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 2, "%s%.30s:%-4d Checkin received XPC dict: %@", ", "[NRDeviceMonitor checkInWithRetryCount:]_block_invoke"", 589, v5);
      }

      [(NRDeviceMonitor *)WeakRetained updateStateFromResponse:v5];
    }

    else
    {
      if (v4 != MEMORY[0x277D86480])
      {
        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        if (((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR)) && (_NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Checkin received unexpected XPC object: %@", ", "[NRDeviceMonitor checkInWithRetryCount:]_block_invoke"", 595, v5), nrCopyLogObj_onceToken_227 != -1))
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          if ((sNRCopyLogToStdErr & 1) == 0)
          {
LABEL_10:
            if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_FAULT))
            {
              goto LABEL_24;
            }
          }
        }

        else if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_10;
        }

        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 17, "Checkin received unexpected XPC object");
        goto LABEL_24;
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d Checkin could not deliver message %@, error %@, retrying", ", "[NRDeviceMonitor checkInWithRetryCount:]_block_invoke"", 592, *(a1 + 32), v5);
      }

      [(NRDeviceMonitor *)WeakRetained checkInWithRetryCount:?];
    }
  }

LABEL_24:
}

- (void)updateStateFromResponse:(uint64_t)response
{
  v3 = a2;
  if (!v3)
  {
    v100 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v105 = v100;
      v106 = os_log_type_enabled(v100, OS_LOG_TYPE_FAULT);

      if (!v106)
      {
        goto LABEL_183;
      }
    }

    v107 = nrCopyLogObj_237();
    _NRLogWithArgs(v107, 17, "%s called with null object", "[NRDeviceMonitor updateStateFromResponse:]");

    goto LABEL_183;
  }

  os_unfair_lock_lock((response + 24));
  v4.i32[0] = *(response + 9);
  v4.i16[2] = *(response + 13);
  v137 = v4;
  v135 = *(response + 15);
  v143 = *(response + 17);
  v145 = *(response + 18);
  v150 = *(response + 40);
  v5 = (response + 48);
  v139 = *(response + 20);
  v141 = *(response + 19);
  v6 = *(response + 48);
  v7 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsRegistered");
  p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
  if (*(response + 9) != v7)
  {
    v9 = v7;
    if (nrCopyLogObj_onceToken_227 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_6;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_6;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
LABEL_7:
      *(response + 9) = v9;
      goto LABEL_8;
    }

LABEL_6:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isRegistered: %d -> %d", ", "[NRDeviceMonitor setInternalIsRegistered:]"", 100, *(response + 9), v9);
    goto LABEL_7;
  }

LABEL_8:
  v10 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsEnabled");
  if (*(response + 10) == v10)
  {
    goto LABEL_14;
  }

  v11 = v10;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_12:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isEnabled: %d -> %d", ", "[NRDeviceMonitor setInternalIsEnabled:]"", 110, *(response + 10), v11);
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

LABEL_13:
  *(response + 10) = v11;
LABEL_14:
  v12 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsNearby");
  if (*(response + 11) == v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_18:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isNearby: %d -> %d", ", "[NRDeviceMonitor setInternalIsNearby:]"", 120, *(response + 11), v13);
      goto LABEL_19;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_18;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_18;
  }

LABEL_19:
  *(response + 11) = v13;
LABEL_20:
  v14 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsConnected");
  if (*(response + 12) == v14)
  {
    goto LABEL_26;
  }

  v15 = v14;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_24:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isConnected: %d -> %d", ", "[NRDeviceMonitor setInternalIsConnected:]"", 130, *(response + 12), v15);
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_24;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_24;
  }

LABEL_25:
  *(response + 12) = v15;
LABEL_26:
  v16 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsCloudConnected");
  if (*(response + 13) == v16)
  {
    goto LABEL_32;
  }

  v17 = v16;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_30:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isCloudConnected: %d -> %d", ", "[NRDeviceMonitor setInternalIsCloudConnected:]"", 140, *(response + 13), v17);
      goto LABEL_31;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_30;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_30;
  }

LABEL_31:
  *(response + 13) = v17;
LABEL_32:
  v18 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsAsleep");
  if (*(response + 14) == v18)
  {
    goto LABEL_38;
  }

  v19 = v18;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_36:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isAsleep: %d -> %d", ", "[NRDeviceMonitor setInternalIsAsleep:]"", 160, *(response + 14), v19);
      goto LABEL_37;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_36;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_36;
  }

LABEL_37:
  *(response + 14) = v19;
LABEL_38:
  v20 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusIsClassCConnected");
  if (*(response + 15) == v20)
  {
    goto LABEL_44;
  }

  v21 = v20;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_42:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d isClassCConnected: %d -> %d", ", "[NRDeviceMonitor setInternalIsClassCConnected:]"", 170, *(response + 15), v21);
      goto LABEL_43;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_42;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_42;
  }

LABEL_43:
  *(response + 15) = v21;
LABEL_44:
  v22 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusHasUnpairedBluetooth");
  if (*(response + 16) == v22)
  {
    goto LABEL_50;
  }

  v23 = v22;
  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_48:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d hasUnpairedBluetooth: %d -> %d", ", "[NRDeviceMonitor setInternalHasUnpairedBluetooth:]"", 150, *(response + 16), v23);
      goto LABEL_49;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_48;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_48;
  }

LABEL_49:
  *(response + 16) = v23;
LABEL_50:
  uint64 = xpc_dictionary_get_uint64(v3, "DeviceMonitorStatusLinkType");
  if (*(response + 17) == uint64)
  {
    goto LABEL_56;
  }

  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_54:
      v25 = *(response + 17);
      v26 = nrCopyLogObj_sNRLogObj_229;
      StringFromNRLinkType = createStringFromNRLinkType(v25);
      v28 = createStringFromNRLinkType(uint64);
      _NRLogWithArgs(v26, 1, "%s%.30s:%-4d link type: %@ -> %@", ", "[NRDeviceMonitor setInternalLinkType:]"", 181, StringFromNRLinkType, v28);

      p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
      goto LABEL_55;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_54;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_54;
  }

LABEL_55:
  *(response + 17) = uint64;
LABEL_56:
  v29 = xpc_dictionary_get_uint64(v3, "DeviceMonitorStatusLinkSubtype");
  if (*(response + 18) == v29)
  {
    goto LABEL_62;
  }

  if (nrCopyLogObj_onceToken_227 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_60:
      v30 = *(response + 18);
      v31 = nrCopyLogObj_sNRLogObj_229;
      StringFromNRLinkSubtype = createStringFromNRLinkSubtype(v30);
      v33 = createStringFromNRLinkSubtype(v29);
      _NRLogWithArgs(v31, 1, "%s%.30s:%-4d link subtype: %@ -> %@", ", "[NRDeviceMonitor setInternalLinkSubtype:]"", 191, StringFromNRLinkSubtype, v33);

      p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
      goto LABEL_61;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_60;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
  {
    goto LABEL_60;
  }

LABEL_61:
  *(response + 18) = v29;
LABEL_62:
  string = xpc_dictionary_get_string(v3, "DeviceMonitorStatusProxySvcIntfName");
  [(NRDeviceMonitor *)response setInternalProxySvcIntfName:?];
  if (string)
  {
    v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
    [(NRDeviceMonitor *)response setInternalProxySvcIntfName:v35];
  }

  v36 = xpc_dictionary_get_uint64(v3, "DeviceMonitorStatusThermalPressureLevel");
  if (*(response + 20) != v36)
  {
    if (nrCopyLogObj_onceToken_227 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_68;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_68;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
LABEL_101:
      *(response + 20) = v36;
      goto LABEL_102;
    }

LABEL_68:
    v37 = *(response + 20);
    v38 = nrCopyLogObj_sNRLogObj_229;
    if (v37 > 29)
    {
      switch(v37)
      {
        case 0x1E:
          v39 = @"Heavy";
          if (v36 <= 29)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        case 0x28:
          v39 = @"Trapping";
          if (v36 > 29)
          {
            goto LABEL_80;
          }

LABEL_85:
          switch(v36)
          {
            case 0:
              v40 = @"Nominal";
              goto LABEL_100;
            case 0xA:
              v40 = @"Light";
              goto LABEL_100;
            case 0x14:
              v40 = @"Moderate";
              goto LABEL_100;
          }

          goto LABEL_93;
        case 0x32:
          v39 = @"Sleeping";
          if (v36 > 29)
          {
            goto LABEL_80;
          }

          goto LABEL_85;
      }
    }

    else
    {
      switch(v37)
      {
        case 0:
          v39 = @"Nominal";
          if (v36 <= 29)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        case 0xA:
          v39 = @"Light";
          if (v36 <= 29)
          {
            goto LABEL_85;
          }

          goto LABEL_80;
        case 0x14:
          v39 = @"Moderate";
          if (v36 <= 29)
          {
            goto LABEL_85;
          }

LABEL_80:
          switch(v36)
          {
            case 0x1E:
              v40 = @"Heavy";
              goto LABEL_100;
            case 0x28:
              v40 = @"Trapping";
              goto LABEL_100;
            case 0x32:
              v40 = @"Sleeping";
LABEL_100:
              _NRLogWithArgs(v38, 1, "%s%.30s:%-4d thermal pressure level: %@ -> %@", ", "[NRDeviceMonitor setInternalThermalPressureLevel:]"", 211, v39, v40);

              p_inst_meths = &OBJC_PROTOCOL___NSCopying.inst_meths;
              goto LABEL_101;
          }

LABEL_93:
          v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v36];
          goto LABEL_100;
      }
    }

    v39 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v37];
    if (v36 > 29)
    {
      goto LABEL_80;
    }

    goto LABEL_85;
  }

LABEL_102:
  v41 = xpc_dictionary_get_BOOL(v3, "DeviceMonitorStatusPluggedIn");
  if (*(response + 19) != v41)
  {
    v42 = v41;
    if (nrCopyLogObj_onceToken_227 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_106;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_106;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
LABEL_107:
      *(response + 19) = v42;
      goto LABEL_108;
    }

LABEL_106:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d plugged in: %d -> %d", ", "[NRDeviceMonitor setInternalPluggedIn:]"", 220, *(response + 19), v42);
    goto LABEL_107;
  }

LABEL_108:
  v149 = v6;
  if ((*(response + 12) & 1) == 0 && *(response + 13) != 1)
  {
    v54 = *v5;
    *v5 = 0;

    v53 = v145;
    goto LABEL_123;
  }

  v43 = objc_opt_class();
  v44 = v3;
  v45 = v44;
  if (!v43)
  {
    v101 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v108 = v101;
      v109 = os_log_type_enabled(v101, OS_LOG_TYPE_FAULT);

      if (!v109)
      {
        goto LABEL_227;
      }
    }

    v110 = nrCopyLogObj_237();
    _NRLogWithArgs(v110, 17, "%s called with null cls");
LABEL_226:

    goto LABEL_227;
  }

  length[0] = 0;
  data = xpc_dictionary_get_data(v44, "DeviceInfo", length);
  if (!data)
  {
    v102 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v111 = v102;
      v112 = os_log_type_enabled(v102, OS_LOG_TYPE_ERROR);

      if (!v112)
      {
        goto LABEL_227;
      }
    }

    v110 = nrCopyLogObj_237();
    _NRLogWithArgs(v110, 16, "%s%.30s:%-4d Failed to get XPC data for key %s");
    goto LABEL_226;
  }

  if (!length[0])
  {
    v103 = nrCopyLogObj_237();
    if (sNRCopyLogToStdErr == 1)
    {

LABEL_225:
      v110 = nrCopyLogObj_237();
      _NRLogWithArgs(v110, 16, "%s%.30s:%-4d XPC data for key %s is empty");
      goto LABEL_226;
    }

    v113 = v103;
    v114 = os_log_type_enabled(v103, OS_LOG_TYPE_ERROR);

    if (v114)
    {
      goto LABEL_225;
    }

LABEL_227:

    goto LABEL_121;
  }

  v47 = data;
  v48 = objc_alloc(MEMORY[0x277CBEA90]);
  v49 = [v48 initWithBytesNoCopy:v47 length:length[0] freeWhenDone:0];
  v162 = 0;
  v50 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:v43 fromData:v49 error:&v162];
  v51 = v162;
  if (!v51 && v50)
  {
    v52 = v50;
    goto LABEL_116;
  }

  v104 = nrCopyLogObj_237();
  if (sNRCopyLogToStdErr == 1)
  {

LABEL_229:
    v116 = nrCopyLogObj_237();
    _NRLogWithArgs(v116, 17, "Failed to unarchive object of type %@: %@", v43, v51);

    goto LABEL_230;
  }

  v115 = v104;
  v134 = os_log_type_enabled(v104, OS_LOG_TYPE_FAULT);

  if (v134)
  {
    goto LABEL_229;
  }

LABEL_230:
  v52 = 0;
LABEL_116:

  if (!v52)
  {
    v6 = v149;
LABEL_121:
    p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
    v53 = v145;

    goto LABEL_123;
  }

  objc_opt_class();
  v6 = v149;
  p_inst_meths = (&OBJC_PROTOCOL___NSCopying + 24);
  v53 = v145;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((response + 48), v52);
  }

LABEL_123:
  os_unfair_lock_unlock((response + 24));
  v55.i32[0] = *(response + 9);
  v55.i16[2] = *(response + 13);
  v55.i8[6] = *(response + 15);
  v146 = v55;
  v56 = v143 != *(response + 17);
  v57 = v53 != *(response + 18);
  v58 = v139 != *(response + 20);
  v59 = v141 != *(response + 19);
  v60 = v150;
  if (v150 | *(response + 40))
  {
    v61 = [v150 isEqualToString:?] ^ 1;
  }

  else
  {
    LOBYTE(v61) = 0;
  }

  if (v6 | *v5)
  {
    v63 = v61;
    v64 = [v6 isEqual:?];
    LOBYTE(v61) = v63;
    v62 = v64 ^ 1;
  }

  else
  {
    v62 = 0;
  }

  v65 = *(response + 16);
  v148 = v3;
  if (*(response + 8))
  {
    v66 = v137;
    *(v66.i16 + 1) = *(v137.i16 + 1);
    v66.i8[3] = v137.i8[3];
    v66.i16[2] = v137.i16[2];
    v66.i8[6] = v135;
    v67 = vmvn_s8(vceq_s8(v66, v146));
    v68 = v67.i8[6];
    v69 = v67.i8[5];
    v70 = v67.i8[4];
    v71 = v67.i8[3];
    v72 = v67.i8[2];
    v73 = v67.i8[1];
    v74 = v67.i8[0];
    v75 = v56;
  }

  else
  {
    v75 = 1;
    v57 = 1;
    *(response + 8) = 1;
    v58 = 1;
    v59 = 1;
    LOBYTE(v61) = 1;
    v62 = 1;
    v74 = 1;
    v73 = 1;
    v72 = 1;
    v71 = 1;
    v70 = 1;
    v69 = 1;
    v68 = 1;
  }

  v126 = v74;
  v127 = v73;
  v128 = v72;
  v129 = v71;
  v130 = v70;
  v131 = v69;
  v132 = v68;
  v133 = v65;
  v147 = v75;
  v136 = v62;
  v138 = v61;
  v140 = v59;
  v142 = v58;
  v76 = v59 | v75 | v65 | v57 | v61 | v58 | v62 | v68 | v69 | v70 | v71 | v72 | v73 | v74;
  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) == 0 && !os_log_type_enabled(p_inst_meths[63], OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_180;
  }

  v144 = v57;
  v77 = *(response + 17);
  if (*(response + 9))
  {
    v78 = "";
  }

  else
  {
    v78 = "un";
  }

  v125 = v78;
  if (*(response + 10))
  {
    v79 = "en";
  }

  else
  {
    v79 = "dis";
  }

  if (*(response + 11))
  {
    v80 = "";
  }

  else
  {
    v80 = "!";
  }

  v123 = v80;
  v124 = v79;
  if (*(response + 12))
  {
    v81 = "";
  }

  else
  {
    v81 = "!";
  }

  v122 = v81;
  if (*(response + 13))
  {
    v82 = "";
  }

  else
  {
    v82 = "!";
  }

  if (*(response + 15))
  {
    v83 = "";
  }

  else
  {
    v83 = "!";
  }

  v119 = v83;
  v120 = v82;
  if (*(response + 16))
  {
    v84 = "";
  }

  else
  {
    v84 = "!";
  }

  v118 = v84;
  if (*(response + 14))
  {
    v85 = "asleep";
  }

  else
  {
    v85 = "awake";
  }

  v121 = v76;
  v86 = "";
  if (v76)
  {
    v87 = "";
  }

  else
  {
    v87 = "!";
  }

  v88 = p_inst_meths[63];
  v89 = createStringFromNRLinkType(v77);
  v90 = createStringFromNRLinkSubtype(*(response + 18));
  v91 = *(response + 20);
  v92 = *(response + 40);
  v117 = v88;
  v93 = v89;
  if (v91 > 29)
  {
    switch(v91)
    {
      case 0x1E:
        v94 = v85;
        v95 = @"Heavy";
        goto LABEL_177;
      case 0x28:
        v94 = v85;
        v95 = @"Trapping";
        goto LABEL_177;
      case 0x32:
        v94 = v85;
        v95 = @"Sleeping";
        goto LABEL_177;
    }

LABEL_174:
    v94 = v85;
    v95 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v91];
    goto LABEL_177;
  }

  if (!v91)
  {
    v94 = v85;
    v95 = @"Nominal";
    goto LABEL_177;
  }

  if (v91 == 10)
  {
    v94 = v85;
    v95 = @"Light";
    goto LABEL_177;
  }

  if (v91 != 20)
  {
    goto LABEL_174;
  }

  v94 = v85;
  v95 = @"Moderate";
LABEL_177:
  if (!*(response + 19))
  {
    v86 = "!";
  }

  deviceInfo = [response deviceInfo];
  _NRLogWithArgs(v117, 0, "%s%.30s:%-4d Received %supdate %sregistered %sabled %snearby %sconnected %scloudConnected %sclassCConnected %shasUnpairedBluetooth %s %@(%@) prx %@ thermal %@ %spluggedIn deviceInfo(%@) for %@", ", "[NRDeviceMonitor updateStateFromResponse:]"", 459, v87, v125, v124, v123, v122, v120, v119, v118, v94, v93, v90, v92, v95, v86, deviceInfo, *(response + 32));

  v60 = v150;
  v57 = v144;
  v76 = v121;
LABEL_180:
  if (v76)
  {
    v97 = *(response + 56);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v98.i8[0] = v126;
    v98.i8[1] = v127;
    v98.i8[2] = v128;
    v98.i8[3] = v129;
    v98.i8[4] = v130;
    v98.i8[5] = v131;
    v98.i16[3] = v132;
    block[2] = __43__NRDeviceMonitor_updateStateFromResponse___block_invoke;
    block[3] = &unk_27996AEC8;
    v99 = vand_s8(v98, 0x101010101010101);
    v154 = v99.i8[6];
    block[4] = response;
    v153 = v99.i16[2];
    v152 = v99.i32[0];
    v155 = v133;
    v156 = v147;
    v157 = v57;
    v158 = v138;
    v159 = v142;
    v160 = v140;
    v161 = v136;
    dispatch_async(v97, block);
  }

  v3 = v148;
LABEL_183:
}

- (void)setInternalProxySvcIntfName:(uint64_t)name
{
  v4 = a2;
  v6 = *(name + 40);
  v5 = (name + 40);
  v7 = v4;
  if (([v6 isEqualToString:?] & 1) == 0)
  {
    if (nrCopyLogObj_onceToken_227 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_INFO))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 1, "%s%.30s:%-4d proxy-svc intf name: %@ -> %@", ", "[NRDeviceMonitor setInternalProxySvcIntfName:]"", 201, *v5, v7);
    }

    objc_storeStrong(v5, a2);
  }
}

void __43__NRDeviceMonitor_updateStateFromResponse___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    WeakRetained = objc_loadWeakRetained((v1 + 64));
    if (WeakRetained)
    {
      v114 = WeakRetained;
      if (*(a1 + 40) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_22:
        if (*(a1 + 41) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
        {
LABEL_35:
          if (*(a1 + 42) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
          {
LABEL_48:
            if (*(a1 + 43) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
            {
LABEL_61:
              if (*(a1 + 44) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
              {
LABEL_74:
                if (*(a1 + 45) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                {
LABEL_87:
                  if (*(a1 + 46) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                  {
LABEL_101:
                    if (*(a1 + 47) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                    {
LABEL_115:
                      if (*(a1 + 48) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                      {
LABEL_126:
                        if (*(a1 + 49) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                        {
LABEL_137:
                          if (*(a1 + 50) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                          {
                            goto LABEL_152;
                          }

                          if (nrCopyLogObj_onceToken_227 != -1)
                          {
                            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                          }

                          v76 = nrCopyLogObj_sNRLogObj_229;
                          if (sNRCopyLogToStdErr == 1)
                          {
                          }

                          else
                          {
                            v77 = v76;
                            v78 = os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT);

                            if (!v78)
                            {
LABEL_149:
                              v83 = *(a1 + 32);
                              if (v83)
                              {
                                v84 = *(v83 + 40);
                              }

                              else
                              {
                                v84 = 0;
                              }

                              v85 = v84;
                              v86 = [v85 copy];
                              [v114 deviceProxyServiceInterfaceNameDidChange:v83 interfaceName:v86];

LABEL_152:
                              if (*(a1 + 51) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                              {
                                goto LABEL_180;
                              }

                              if (nrCopyLogObj_onceToken_227 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                              }

                              v87 = nrCopyLogObj_sNRLogObj_229;
                              if (sNRCopyLogToStdErr == 1)
                              {
                              }

                              else
                              {
                                v88 = v87;
                                v89 = os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);

                                if (!v89)
                                {
LABEL_177:
                                  v95 = *(a1 + 32);
                                  if (v95)
                                  {
                                    v96 = *(v95 + 20);
                                  }

                                  else
                                  {
                                    v96 = 0;
                                  }

                                  [v114 deviceThermalPressureLevelDidChange:v95 thermalPressureLevel:v96];
LABEL_180:
                                  if (*(a1 + 52) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                                  {
LABEL_194:
                                    if (*(a1 + 53) != 1 || (objc_opt_respondsToSelector() & 1) == 0)
                                    {
LABEL_207:
                                      v5 = v114;
                                      goto LABEL_208;
                                    }

                                    if (nrCopyLogObj_onceToken_227 != -1)
                                    {
                                      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                    }

                                    v105 = nrCopyLogObj_sNRLogObj_229;
                                    if (sNRCopyLogToStdErr == 1)
                                    {
                                    }

                                    else
                                    {
                                      v106 = v105;
                                      v107 = os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT);

                                      if (!v107)
                                      {
LABEL_204:
                                        v111 = *(a1 + 32);
                                        if (v111)
                                        {
                                          v112 = *(v111 + 48);
                                        }

                                        else
                                        {
                                          v112 = 0;
                                        }

                                        v113 = v112;
                                        [v114 deviceInfoDidChange:v111 deviceInfo:v113];

                                        goto LABEL_207;
                                      }
                                    }

                                    if (nrCopyLogObj_onceToken_227 != -1)
                                    {
                                      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                    }

                                    v108 = nrCopyLogObj_sNRLogObj_229;
                                    v109 = [*(a1 + 32) deviceIdentifier];
                                    v110 = [*(a1 + 32) deviceInfo];
                                    _NRLogWithArgs(v108, 0, "%s%.30s:%-4d Informing client that %@ has deviceInfo %@", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 558, v109, v110);

                                    goto LABEL_204;
                                  }

                                  if (nrCopyLogObj_onceToken_227 != -1)
                                  {
                                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                  }

                                  v97 = nrCopyLogObj_sNRLogObj_229;
                                  if (sNRCopyLogToStdErr == 1)
                                  {
                                  }

                                  else
                                  {
                                    v98 = v97;
                                    v99 = os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT);

                                    if (!v99)
                                    {
LABEL_193:
                                      [v114 devicePluggedInStateDidChange:? pluggedIn:?];
                                      goto LABEL_194;
                                    }
                                  }

                                  if (nrCopyLogObj_onceToken_227 != -1)
                                  {
                                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                                  }

                                  v100 = nrCopyLogObj_sNRLogObj_229;
                                  v101 = [*(a1 + 32) deviceIdentifier];
                                  v102 = v101;
                                  v103 = *(a1 + 32);
                                  v104 = "!";
                                  if (v103 && *(v103 + 19))
                                  {
                                    v104 = "";
                                  }

                                  _NRLogWithArgs(v100, 0, "%s%.30s:%-4d Informing client that %@ is %spluggedIn", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 551, v101, v104);

                                  goto LABEL_193;
                                }
                              }

                              if (nrCopyLogObj_onceToken_227 != -1)
                              {
                                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                              }

                              v90 = nrCopyLogObj_sNRLogObj_229;
                              v91 = [*(a1 + 32) deviceIdentifier];
                              v92 = *(a1 + 32);
                              if (v92)
                              {
                                v93 = *(v92 + 20);
                                if (v93 > 29)
                                {
                                  switch(v93)
                                  {
                                    case 0x1E:
                                      v94 = @"Heavy";
                                      goto LABEL_176;
                                    case 0x28:
                                      v94 = @"Trapping";
                                      goto LABEL_176;
                                    case 0x32:
                                      v94 = @"Sleeping";
                                      goto LABEL_176;
                                  }

LABEL_173:
                                  v94 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"unknown(%d)", v93];
                                  goto LABEL_176;
                                }

                                if (v93)
                                {
                                  if (v93 == 10)
                                  {
                                    v94 = @"Light";
                                    goto LABEL_176;
                                  }

                                  if (v93 == 20)
                                  {
                                    v94 = @"Moderate";
LABEL_176:
                                    _NRLogWithArgs(v90, 0, "%s%.30s:%-4d Informing client that %@ has thermal pressure level %@", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 543, v91, v94);

                                    goto LABEL_177;
                                  }

                                  goto LABEL_173;
                                }
                              }

                              v94 = @"Nominal";
                              goto LABEL_176;
                            }
                          }

                          if (nrCopyLogObj_onceToken_227 != -1)
                          {
                            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                          }

                          v79 = nrCopyLogObj_sNRLogObj_229;
                          v80 = [*(a1 + 32) deviceIdentifier];
                          v81 = *(a1 + 32);
                          if (v81)
                          {
                            v81 = v81[5];
                          }

                          v82 = v81;
                          _NRLogWithArgs(v79, 0, "%s%.30s:%-4d Informing client that %@ has proxy svc interface name %@", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 536, v80, v82);

                          goto LABEL_149;
                        }

                        if (nrCopyLogObj_onceToken_227 != -1)
                        {
                          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                        }

                        v69 = nrCopyLogObj_sNRLogObj_229;
                        if (sNRCopyLogToStdErr == 1)
                        {
                        }

                        else
                        {
                          v70 = v69;
                          v71 = os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT);

                          if (!v71)
                          {
LABEL_136:
                            [v114 deviceLinkTypeDidChange:*(a1 + 32) linkType:objc_msgSend(*(a1 + 32) linkSubtype:{"linkType"), objc_msgSend(*(a1 + 32), "linkSubtype")}];
                            goto LABEL_137;
                          }
                        }

                        if (nrCopyLogObj_onceToken_227 != -1)
                        {
                          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                        }

                        v72 = nrCopyLogObj_sNRLogObj_229;
                        v73 = [*(a1 + 32) deviceIdentifier];
                        StringFromNRLinkType = createStringFromNRLinkType([*(a1 + 32) linkType]);
                        StringFromNRLinkSubtype = createStringFromNRLinkSubtype([*(a1 + 32) linkSubtype]);
                        _NRLogWithArgs(v72, 0, "%s%.30s:%-4d Informing client that %@ has link type %@ subtype %@", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 530, v73, StringFromNRLinkType, StringFromNRLinkSubtype);

                        goto LABEL_136;
                      }

                      if (nrCopyLogObj_onceToken_227 != -1)
                      {
                        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                      }

                      v63 = nrCopyLogObj_sNRLogObj_229;
                      if (sNRCopyLogToStdErr == 1)
                      {
                      }

                      else
                      {
                        v64 = v63;
                        v65 = os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT);

                        if (!v65)
                        {
LABEL_125:
                          [v114 deviceLinkTypeDidChange:*(a1 + 32) linkType:{objc_msgSend(*(a1 + 32), "linkType")}];
                          goto LABEL_126;
                        }
                      }

                      if (nrCopyLogObj_onceToken_227 != -1)
                      {
                        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                      }

                      v66 = nrCopyLogObj_sNRLogObj_229;
                      v67 = [*(a1 + 32) deviceIdentifier];
                      v68 = createStringFromNRLinkType([*(a1 + 32) linkType]);
                      _NRLogWithArgs(v66, 0, "%s%.30s:%-4d Informing client that %@ has link type %@", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 524, v67, v68);

                      goto LABEL_125;
                    }

                    if (nrCopyLogObj_onceToken_227 != -1)
                    {
                      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                    }

                    v55 = nrCopyLogObj_sNRLogObj_229;
                    if (sNRCopyLogToStdErr == 1)
                    {
                    }

                    else
                    {
                      v56 = v55;
                      v57 = os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT);

                      if (!v57)
                      {
LABEL_114:
                        [v114 deviceHasUnpairedBluetooth:*(a1 + 32)];
                        goto LABEL_115;
                      }
                    }

                    if (nrCopyLogObj_onceToken_227 != -1)
                    {
                      dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                    }

                    v58 = nrCopyLogObj_sNRLogObj_229;
                    v59 = [*(a1 + 32) deviceIdentifier];
                    v60 = v59;
                    v61 = *(a1 + 32);
                    v62 = "!";
                    if (v61 && *(v61 + 16))
                    {
                      v62 = "";
                    }

                    _NRLogWithArgs(v58, 0, "%s%.30s:%-4d Informing client that %@ %shasUnpairedBluetooth", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 518, v59, v62);

                    goto LABEL_114;
                  }

                  if (nrCopyLogObj_onceToken_227 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                  }

                  v47 = nrCopyLogObj_sNRLogObj_229;
                  if (sNRCopyLogToStdErr == 1)
                  {
                  }

                  else
                  {
                    v48 = v47;
                    v49 = os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);

                    if (!v49)
                    {
LABEL_100:
                      [v114 deviceIsClassCConnectedDidChange:*(a1 + 32) isClassCConnected:{objc_msgSend(*(a1 + 32), "isClassCConnected")}];
                      goto LABEL_101;
                    }
                  }

                  if (nrCopyLogObj_onceToken_227 != -1)
                  {
                    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                  }

                  v50 = nrCopyLogObj_sNRLogObj_229;
                  v51 = [*(a1 + 32) deviceIdentifier];
                  v52 = v51;
                  v53 = *(a1 + 32);
                  v54 = "!";
                  if (v53 && *(v53 + 15))
                  {
                    v54 = "";
                  }

                  _NRLogWithArgs(v50, 0, "%s%.30s:%-4d Informing client that %@ is %sclassCConnected", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 511, v51, v54);

                  goto LABEL_100;
                }

                if (nrCopyLogObj_onceToken_227 != -1)
                {
                  dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                }

                v40 = nrCopyLogObj_sNRLogObj_229;
                if (sNRCopyLogToStdErr == 1)
                {
                }

                else
                {
                  v41 = v40;
                  v42 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);

                  if (!v42)
                  {
LABEL_86:
                    [v114 deviceIsAsleepDidChange:*(a1 + 32) isAsleep:{objc_msgSend(*(a1 + 32), "isAsleep")}];
                    goto LABEL_87;
                  }
                }

                if (nrCopyLogObj_onceToken_227 != -1)
                {
                  dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
                }

                v43 = nrCopyLogObj_sNRLogObj_229;
                v44 = [*(a1 + 32) deviceIdentifier];
                v45 = [*(a1 + 32) isAsleep];
                v46 = "awake";
                if (v45)
                {
                  v46 = "asleep";
                }

                _NRLogWithArgs(v43, 0, "%s%.30s:%-4d Informing client that %@ is %s", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 504, v44, v46);

                goto LABEL_86;
              }

              if (nrCopyLogObj_onceToken_227 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
              }

              v33 = nrCopyLogObj_sNRLogObj_229;
              if (sNRCopyLogToStdErr == 1)
              {
              }

              else
              {
                v34 = v33;
                v35 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);

                if (!v35)
                {
LABEL_73:
                  [v114 deviceIsCloudConnectedDidChange:*(a1 + 32) isCloudConnected:{objc_msgSend(*(a1 + 32), "isCloudConnected")}];
                  goto LABEL_74;
                }
              }

              if (nrCopyLogObj_onceToken_227 != -1)
              {
                dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
              }

              v36 = nrCopyLogObj_sNRLogObj_229;
              v37 = [*(a1 + 32) deviceIdentifier];
              v38 = [*(a1 + 32) isCloudConnected];
              v39 = "!";
              if (v38)
              {
                v39 = "";
              }

              _NRLogWithArgs(v36, 0, "%s%.30s:%-4d Informing client that %@ is %scloudConnected", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 498, v37, v39);

              goto LABEL_73;
            }

            if (nrCopyLogObj_onceToken_227 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
            }

            v26 = nrCopyLogObj_sNRLogObj_229;
            if (sNRCopyLogToStdErr == 1)
            {
            }

            else
            {
              v27 = v26;
              v28 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);

              if (!v28)
              {
LABEL_60:
                [v114 deviceIsConnectedDidChange:*(a1 + 32) isConnected:{objc_msgSend(*(a1 + 32), "isConnected")}];
                goto LABEL_61;
              }
            }

            if (nrCopyLogObj_onceToken_227 != -1)
            {
              dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
            }

            v29 = nrCopyLogObj_sNRLogObj_229;
            v30 = [*(a1 + 32) deviceIdentifier];
            v31 = [*(a1 + 32) isConnected];
            v32 = "!";
            if (v31)
            {
              v32 = "";
            }

            _NRLogWithArgs(v29, 0, "%s%.30s:%-4d Informing client that %@ is %sconnected", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 491, v30, v32);

            goto LABEL_60;
          }

          if (nrCopyLogObj_onceToken_227 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          }

          v19 = nrCopyLogObj_sNRLogObj_229;
          if (sNRCopyLogToStdErr == 1)
          {
          }

          else
          {
            v20 = v19;
            v21 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);

            if (!v21)
            {
LABEL_47:
              [v114 deviceIsNearbyDidChange:*(a1 + 32) isNearby:{objc_msgSend(*(a1 + 32), "isNearby")}];
              goto LABEL_48;
            }
          }

          if (nrCopyLogObj_onceToken_227 != -1)
          {
            dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
          }

          v22 = nrCopyLogObj_sNRLogObj_229;
          v23 = [*(a1 + 32) deviceIdentifier];
          v24 = [*(a1 + 32) isNearby];
          v25 = "!";
          if (v24)
          {
            v25 = "";
          }

          _NRLogWithArgs(v22, 0, "%s%.30s:%-4d Informing client that %@ is %snearby", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 484, v23, v25);

          goto LABEL_47;
        }

        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        v12 = nrCopyLogObj_sNRLogObj_229;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v13 = v12;
          v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);

          if (!v14)
          {
LABEL_34:
            [v114 deviceIsEnabledDidChange:*(a1 + 32) isEnabled:{objc_msgSend(*(a1 + 32), "isEnabled")}];
            goto LABEL_35;
          }
        }

        if (nrCopyLogObj_onceToken_227 != -1)
        {
          dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
        }

        v15 = nrCopyLogObj_sNRLogObj_229;
        v16 = [*(a1 + 32) deviceIdentifier];
        v17 = [*(a1 + 32) isEnabled];
        v18 = "dis";
        if (v17)
        {
          v18 = "en";
        }

        _NRLogWithArgs(v15, 0, "%s%.30s:%-4d Informing client that %@ is %sabled", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 478, v16, v18);

        goto LABEL_34;
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      v4 = nrCopyLogObj_sNRLogObj_229;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v6 = v4;
        v7 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);

        if (!v7)
        {
LABEL_21:
          [v114 deviceIsRegisteredDidChange:*(a1 + 32) isRegistered:{objc_msgSend(*(a1 + 32), "isRegistered")}];
          goto LABEL_22;
        }
      }

      if (nrCopyLogObj_onceToken_227 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
      }

      v8 = nrCopyLogObj_sNRLogObj_229;
      v9 = [*(a1 + 32) deviceIdentifier];
      v10 = [*(a1 + 32) isRegistered];
      v11 = "un";
      if (v10)
      {
        v11 = "";
      }

      _NRLogWithArgs(v8, 0, "%s%.30s:%-4d Informing client that %@ is %sregistered", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 472, v9, v11);

      goto LABEL_21;
    }
  }

  if (nrCopyLogObj_onceToken_227 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_227, &__block_literal_global_228);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_229, OS_LOG_TYPE_ERROR))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_229, 16, "%s%.30s:%-4d No delegate found", ", "[NRDeviceMonitor updateStateFromResponse:]_block_invoke"", 465);
  }

  v5 = 0;
LABEL_208:
}

@end