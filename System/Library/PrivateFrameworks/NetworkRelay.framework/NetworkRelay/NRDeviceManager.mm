@interface NRDeviceManager
+ (id)copySharedDeviceManager;
- (id)copyIDSDeviceID;
- (id)initInternal;
- (void)disableDevice:(id)device;
- (void)disableDevice:(id)device queue:(id)queue completionBlock:(id)block;
- (void)enableDevice:(id)device;
- (void)enableDevice:(id)device queue:(id)queue completionBlock:(id)block;
- (void)registerDevice:(id)device properties:(id)properties operationalproperties:(id)operationalproperties queue:(id)queue completionBlock:(id)block;
- (void)registerDevice:(id)device properties:(id)properties queue:(id)queue completionBlock:(id)block;
- (void)scrubAllDevicesWithQueue:(id)queue completionBlock:(id)block;
- (void)scrubDevice:(id)device queue:(id)queue completionBlock:(id)block;
- (void)unregisterAllDevicesWithQueue:(id)queue completionBlock:(id)block;
- (void)unregisterDevice:(id)device;
- (void)unregisterDevice:(id)device queue:(id)queue completionBlock:(id)block;
@end

@implementation NRDeviceManager

- (void)disableDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v7 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v10 = nrCopyLogObj_1876();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager disableDevice:]", 170, "[NRDeviceManager disableDevice:]"");

LABEL_9:
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x28223BE20](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v11, *v14, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
    *v15 = 136446466;
    *(v15 + 4) = "[NRDeviceManager disableDevice:]";
    *(v15 + 12) = 2080;
    *(v15 + 14) = "[NRDeviceManager disableDevice:]";
    v16 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v16, v13);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __33__NRDeviceManager_disableDevice___block_invoke;
  v17[3] = &unk_27996B3A8;
  v18 = deviceCopy;
  v6 = deviceCopy;
  [(NRDeviceManager *)self disableDevice:v6 queue:queue completionBlock:v17];
}

void __33__NRDeviceManager_disableDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to disable device %@: %@", ", "[NRDeviceManager disableDevice:]_block_invoke"", 178, *(a1 + 32), v3);
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Disabled device %@", ", "[NRDeviceManager disableDevice:]_block_invoke"", 176, *(a1 + 32));
    }
  }
}

- (void)enableDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v7 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v10 = nrCopyLogObj_1876();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager enableDevice:]", 155, "[NRDeviceManager enableDevice:]"");

LABEL_9:
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x28223BE20](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v11, *v14, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
    *v15 = 136446466;
    *(v15 + 4) = "[NRDeviceManager enableDevice:]";
    *(v15 + 12) = 2080;
    *(v15 + 14) = "[NRDeviceManager enableDevice:]";
    v16 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v16, v13);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __32__NRDeviceManager_enableDevice___block_invoke;
  v17[3] = &unk_27996B3A8;
  v18 = deviceCopy;
  v6 = deviceCopy;
  [(NRDeviceManager *)self enableDevice:v6 queue:queue completionBlock:v17];
}

void __32__NRDeviceManager_enableDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to enable device %@: %@", ", "[NRDeviceManager enableDevice:]_block_invoke"", 163, *(a1 + 32), v3);
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Enabled device %@", ", "[NRDeviceManager enableDevice:]_block_invoke"", 161, *(a1 + 32));
    }
  }
}

- (void)unregisterDevice:(id)device
{
  v19 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if (!deviceCopy)
  {
    v7 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v8 = v7;
      v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);

      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v10 = nrCopyLogObj_1876();
    _NRLogWithArgs(v10, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager unregisterDevice:]", 140, "[NRDeviceManager unregisterDevice:]"");

LABEL_9:
    v11 = _os_log_pack_size();
    v13 = v17 - ((MEMORY[0x28223BE20](v11, v12) + 15) & 0xFFFFFFFFFFFFFFF0);
    v14 = __error();
    v15 = _os_log_pack_fill(v13, v11, *v14, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
    *v15 = 136446466;
    *(v15 + 4) = "[NRDeviceManager unregisterDevice:]";
    *(v15 + 12) = 2080;
    *(v15 + 14) = "[NRDeviceManager unregisterDevice:]";
    v16 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v16, v13);
  }

  if (self)
  {
    queue = self->_queue;
  }

  else
  {
    queue = 0;
  }

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __36__NRDeviceManager_unregisterDevice___block_invoke;
  v17[3] = &unk_27996B3A8;
  v18 = deviceCopy;
  v6 = deviceCopy;
  [(NRDeviceManager *)self unregisterDevice:v6 queue:queue completionBlock:v17];
}

void __36__NRDeviceManager_unregisterDevice___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to unregister device %@: %@", ", "[NRDeviceManager unregisterDevice:]_block_invoke"", 148, *(a1 + 32), v3);
    }
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistered device %@", ", "[NRDeviceManager unregisterDevice:]_block_invoke"", 146, *(a1 + 32));
    }
  }
}

- (void)registerDevice:(id)device properties:(id)properties queue:(id)queue completionBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  propertiesCopy = properties;
  deviceCopy = device;
  v14 = +[NRDeviceOperationalProperties copyPropertiesForDefaultPairedPhone];
  [(NRDeviceManager *)self registerDevice:deviceCopy properties:propertiesCopy operationalproperties:v14 queue:queueCopy completionBlock:blockCopy];
}

- (void)registerDevice:(id)device properties:(id)properties operationalproperties:(id)operationalproperties queue:(id)queue completionBlock:(id)block
{
  v156 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  propertiesCopy = properties;
  operationalpropertiesCopy = operationalproperties;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v44 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v49 = v44;
      v50 = os_log_type_enabled(v44, OS_LOG_TYPE_ERROR);

      if (!v50)
      {
LABEL_47:
        v52 = _os_log_pack_size();
        v54 = &v139 - ((MEMORY[0x28223BE20](v52, v53) + 15) & 0xFFFFFFFFFFFFFFF0);
        v55 = *__error();
        v56 = _os_log_pack_fill(v54, v52, v55, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
LABEL_60:
        *v56 = 136446466;
        *(v56 + 4) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
        *(v56 + 12) = 2080;
        *(v56 + 14) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
        goto LABEL_61;
      }
    }

    v51 = nrCopyLogObj_1876();
    _NRLogWithArgs(v51, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 48, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

    goto LABEL_47;
  }

  if (!propertiesCopy)
  {
    v45 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v57 = v45;
      v58 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);

      if (!v58)
      {
LABEL_50:
        v60 = _os_log_pack_size();
        v54 = &v139 - ((MEMORY[0x28223BE20](v60, v61) + 15) & 0xFFFFFFFFFFFFFFF0);
        v62 = *__error();
        v56 = _os_log_pack_fill(v54, v60, v62, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL properties");
        goto LABEL_60;
      }
    }

    v59 = nrCopyLogObj_1876();
    _NRLogWithArgs(v59, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL properties", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 49, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

    goto LABEL_50;
  }

  if (!operationalpropertiesCopy)
  {
    v46 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v63 = v46;
      v64 = os_log_type_enabled(v46, OS_LOG_TYPE_ERROR);

      if (!v64)
      {
LABEL_53:
        v66 = _os_log_pack_size();
        v54 = &v139 - ((MEMORY[0x28223BE20](v66, v67) + 15) & 0xFFFFFFFFFFFFFFF0);
        v68 = *__error();
        v56 = _os_log_pack_fill(v54, v66, v68, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL operationalproperties");
        goto LABEL_60;
      }
    }

    v65 = nrCopyLogObj_1876();
    _NRLogWithArgs(v65, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL operationalproperties", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 50, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

    goto LABEL_53;
  }

  if (!queueCopy)
  {
    v47 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v69 = v47;
      v70 = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);

      if (!v70)
      {
LABEL_56:
        v72 = _os_log_pack_size();
        v54 = &v139 - ((MEMORY[0x28223BE20](v72, v73) + 15) & 0xFFFFFFFFFFFFFFF0);
        v74 = *__error();
        v56 = _os_log_pack_fill(v54, v72, v74, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL queue");
        goto LABEL_60;
      }
    }

    v71 = nrCopyLogObj_1876();
    _NRLogWithArgs(v71, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL queue", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 51, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

    goto LABEL_56;
  }

  v16 = blockCopy;
  if (!blockCopy)
  {
    v48 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v75 = v48;
      v76 = os_log_type_enabled(v48, OS_LOG_TYPE_ERROR);

      if (!v76)
      {
LABEL_59:
        v78 = _os_log_pack_size();
        v54 = &v139 - ((MEMORY[0x28223BE20](v78, v79) + 15) & 0xFFFFFFFFFFFFFFF0);
        v80 = *__error();
        v56 = _os_log_pack_fill(v54, v78, v80, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL completionBlock");
        goto LABEL_60;
      }
    }

    v77 = nrCopyLogObj_1876();
    _NRLogWithArgs(v77, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL completionBlock", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 52, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

    goto LABEL_59;
  }

  v17 = [deviceCopy copy];
  v18 = [propertiesCopy copy];
  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Registering device %@ with properties %@", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"", 56, v17, v18);
  }

  if (([v18 wasInitiallySetupUsingIDSPairing] & 1) == 0)
  {
    outOfBandKey = [v18 outOfBandKey];
    if (outOfBandKey)
    {

      goto LABEL_15;
    }

    if (([propertiesCopy isExternalPairing] & 1) == 0)
    {
      v124 = nrCopyLogObj_1876();
      v125 = v124;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v128 = os_log_type_enabled(v124, OS_LOG_TYPE_ERROR);

        if (!v128)
        {
LABEL_96:
          v130 = _os_log_pack_size();
          v54 = &v139 - ((MEMORY[0x28223BE20](v130, v131) + 15) & 0xFFFFFFFFFFFFFFF0);
          v132 = __error();
          v133 = _os_log_pack_fill(v54, v130, *v132, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with Device pairing properties must either have wasInitiallySetupUsingIDSPairing or outOfBandKey or isExternalPairing");
          *v133 = 136446466;
          *(v133 + 4) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
          *(v133 + 12) = 2080;
          *(v133 + 14) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
LABEL_61:
          v81 = nrCopyLogObj_1876();
          _NRLogAbortWithPack(v81, v54);
        }
      }

      v129 = nrCopyLogObj_1876();
      _NRLogWithArgs(v129, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing properties must either have wasInitiallySetupUsingIDSPairing or outOfBandKey or isExternalPairing", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 60, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

      goto LABEL_96;
    }
  }

LABEL_15:
  v150 = v16;
  v151 = queueCopy;
  if ([v18 pairingProtocolVersion] < 0)
  {
    v97 = nrCopyLogObj_1876();
    v98 = v97;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v101 = os_log_type_enabled(v97, OS_LOG_TYPE_ERROR);

      if (!v101)
      {
LABEL_80:
        v103 = _os_log_pack_size();
        v105 = &v139 - ((MEMORY[0x28223BE20](v103, v104) + 15) & 0xFFFFFFFFFFFFFFF0);
        v106 = __error();
        v107 = _os_log_pack_fill(v105, v103, *v106, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with Device pairing protocol version %llu is too large");
        __os_log_helper_1_2_3_8_34_8_32_8_0(v107, [v18 pairingProtocolVersion]);
        goto LABEL_86;
      }
    }

    v102 = nrCopyLogObj_1876();
    _NRLogWithArgs(v102, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing protocol version %llu is too large", ", "-[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 64, "-[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"", [v18 pairingProtocolVersion]);

    goto LABEL_80;
  }

  [v18 peerNetworkRelayVersion];
  outOfBandKey2 = [v18 outOfBandKey];
  if (outOfBandKey2)
  {
    v21 = outOfBandKey2;
    outOfBandKey3 = [v18 outOfBandKey];
    v23 = [outOfBandKey3 length];

    if (!v23)
    {
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Received empty out of band key, using generic key for device %@ with properties %@", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"", 72, v17, v18);
      }

      v24 = [@"Apple Watch Pairing Bluetooth PIN!" dataUsingEncoding:4];
      [v18 setOutOfBandKey:v24];

      outOfBandKey4 = [v18 outOfBandKey];

      if (outOfBandKey4)
      {
        outOfBandKey5 = [v18 outOfBandKey];
        v27 = [outOfBandKey5 length];

        if (v27 == 34)
        {
          goto LABEL_25;
        }

        v83 = nrCopyLogObj_1876();
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v91 = v83;
          v92 = os_log_type_enabled(v83, OS_LOG_TYPE_ERROR);

          if (!v92)
          {
LABEL_71:
            v94 = _os_log_pack_size();
            v54 = &v139 - ((MEMORY[0x28223BE20](v94, v95) + 15) & 0xFFFFFFFFFFFFFFF0);
            v96 = *__error();
            v90 = _os_log_pack_fill(v54, v94, v96, &dword_25B98C000, "%{public}s Assertion Failed: propertiesCopy.outOfBandKey.length == 34");
            goto LABEL_72;
          }
        }

        v93 = nrCopyLogObj_1876();
        _NRLogWithArgs(v93, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: propertiesCopy.outOfBandKey.length == 34", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"", 77);

        goto LABEL_71;
      }

      v82 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v84 = v82;
        v85 = os_log_type_enabled(v82, OS_LOG_TYPE_ERROR);

        if (!v85)
        {
LABEL_68:
          v87 = _os_log_pack_size();
          v54 = &v139 - ((MEMORY[0x28223BE20](v87, v88) + 15) & 0xFFFFFFFFFFFFFFF0);
          v89 = *__error();
          v90 = _os_log_pack_fill(v54, v87, v89, &dword_25B98C000, "%{public}s Assertion Failed: (propertiesCopy.outOfBandKey) != ((void*)0)");
LABEL_72:
          *v90 = 136446210;
          *(v90 + 4) = "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]";
          goto LABEL_61;
        }
      }

      v86 = nrCopyLogObj_1876();
      _NRLogWithArgs(v86, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (propertiesCopy.outOfBandKey) != ((void*)0)", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"", 76);

      goto LABEL_68;
    }
  }

LABEL_25:
  if ([v18 pairWithSPPLink])
  {
    bluetoothMACAddress = [v18 bluetoothMACAddress];

    if (!bluetoothMACAddress)
    {
      v108 = nrCopyLogObj_1876();
      v109 = v108;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v119 = os_log_type_enabled(v108, OS_LOG_TYPE_ERROR);

        if (!v119)
        {
LABEL_89:
          v121 = _os_log_pack_size();
          v54 = &v139 - ((MEMORY[0x28223BE20](v121, v122) + 15) & 0xFFFFFFFFFFFFFFF0);
          v123 = *__error();
          v56 = _os_log_pack_fill(v54, v121, v123, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with Device pairing properties has pairWithSPPLink but no bluetoothMACAddress");
          goto LABEL_60;
        }
      }

      v120 = nrCopyLogObj_1876();
      _NRLogWithArgs(v120, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing properties has pairWithSPPLink but no bluetoothMACAddress", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 81, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

      goto LABEL_89;
    }
  }

  bluetoothMACAddress2 = [v18 bluetoothMACAddress];
  if (bluetoothMACAddress2)
  {
    v30 = bluetoothMACAddress2;
    bluetoothMACAddress3 = [v18 bluetoothMACAddress];
    v32 = [bluetoothMACAddress3 length];

    if (v32 != 6)
    {
      v99 = nrCopyLogObj_1876();
      v100 = v99;
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v110 = os_log_type_enabled(v99, OS_LOG_TYPE_ERROR);

        if (!v110)
        {
LABEL_85:
          v113 = _os_log_pack_size();
          v105 = &v139 - ((MEMORY[0x28223BE20](v113, v114) + 15) & 0xFFFFFFFFFFFFFFF0);
          v115 = __error();
          v116 = _os_log_pack_fill(v105, v113, *v115, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with Device pairing bluetoothMACAddress length %lu != 6");
          bluetoothMACAddress4 = [v18 bluetoothMACAddress];
          __os_log_helper_1_2_3_8_34_8_32_8_0(v116, [bluetoothMACAddress4 length]);

LABEL_86:
          v118 = nrCopyLogObj_1876();
          _NRLogAbortWithPack(v118, v105);
        }
      }

      v111 = nrCopyLogObj_1876();
      bluetoothMACAddress5 = [v18 bluetoothMACAddress];
      _NRLogWithArgs(v111, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Device pairing bluetoothMACAddress length %lu != 6", ", "-[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 85, "-[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"", [bluetoothMACAddress5 length]);

      goto LABEL_85;
    }
  }

  if ([v18 isExternalPairing])
  {
    if (![v18 psm])
    {
      allowedLinkTypes = [operationalpropertiesCopy allowedLinkTypes];
      v34 = [allowedLinkTypes containsObject:&unk_286D2D0E8];

      if (v34)
      {
        v126 = nrCopyLogObj_1876();
        v127 = v126;
        if (sNRCopyLogToStdErr == 1)
        {
        }

        else
        {
          v134 = os_log_type_enabled(v126, OS_LOG_TYPE_ERROR);

          if (!v134)
          {
LABEL_99:
            v136 = _os_log_pack_size();
            v54 = &v139 - ((MEMORY[0x28223BE20](v136, v137) + 15) & 0xFFFFFFFFFFFFFFF0);
            v138 = *__error();
            v56 = _os_log_pack_fill(v54, v136, v138, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with Invalid PSM for external device registration");
            goto LABEL_60;
          }
        }

        v135 = nrCopyLogObj_1876();
        _NRLogWithArgs(v135, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with Invalid PSM for external device registration", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]", 89, "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]"");

        goto LABEL_99;
      }
    }
  }

  v147 = operationalpropertiesCopy;
  v35 = v17;
  nrDeviceIdentifier = [v17 nrDeviceIdentifier];
  pairingProtocolVersion = [v18 pairingProtocolVersion];
  peerNetworkRelayVersion = [v18 peerNetworkRelayVersion];
  wasInitiallySetupUsingIDSPairing = [v18 wasInitiallySetupUsingIDSPairing];
  outOfBandKey6 = [v18 outOfBandKey];
  pairWithSPPLink = [v18 pairWithSPPLink];
  isAltAccountPairing = [v18 isAltAccountPairing];
  isExternalPairing = [v18 isExternalPairing];
  v140 = [v18 psm];
  bluetoothMACAddress6 = [v18 bluetoothMACAddress];
  peerEndpointDictionary = [v18 peerEndpointDictionary];
  v148 = propertiesCopy;
  v149 = deviceCopy;
  if (v17)
  {
    v40 = v17[8];
  }

  else
  {
    v40 = 0;
  }

  candidateService = [v18 candidateService];
  v152[0] = MEMORY[0x277D85DD0];
  v152[1] = 3221225472;
  v152[2] = __89__NRDeviceManager_registerDevice_properties_operationalproperties_queue_completionBlock___block_invoke;
  v152[3] = &unk_27996B380;
  v153 = v35;
  v154 = v18;
  v155 = v150;
  v150 = v150;
  v42 = v18;
  v43 = v35;
  nrXPCRegisterDeviceByNRUUID(nrDeviceIdentifier, pairingProtocolVersion, peerNetworkRelayVersion, wasInitiallySetupUsingIDSPairing, outOfBandKey6, pairWithSPPLink, isAltAccountPairing, isExternalPairing, v140, bluetoothMACAddress6, v151, v147, peerEndpointDictionary, v40 & 1, candidateService, v152);
}

void __89__NRDeviceManager_registerDevice_properties_operationalproperties_queue_completionBlock___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v7];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to register device %@ with properties %@: %@", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]_block_invoke"", 113, a1[4], a1[5], v8);
    }

    (*(a1[6] + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Registered device %@ with properties %@", ", "[NRDeviceManager registerDevice:properties:operationalproperties:queue:completionBlock:]_block_invoke"", 101, a1[4], a1[5]);
    }

    (*(a1[6] + 16))();
  }
}

+ (id)copySharedDeviceManager
{
  if (copySharedDeviceManager_onceToken != -1)
  {
    dispatch_once(&copySharedDeviceManager_onceToken, &__block_literal_global_1929);
  }

  v3 = copySharedDeviceManager_sharedDeviceManager;

  return v3;
}

uint64_t __42__NRDeviceManager_copySharedDeviceManager__block_invoke()
{
  v0 = [[NRDeviceManager alloc] initInternal];
  v1 = copySharedDeviceManager_sharedDeviceManager;
  copySharedDeviceManager_sharedDeviceManager = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)initInternal
{
  v24 = *MEMORY[0x277D85DE8];
  if (!self)
  {
    return 0;
  }

  v23.receiver = self;
  v23.super_class = NRDeviceManager;
  v1 = objc_msgSendSuper2(&v23, sel_init);
  if (!v1)
  {
    v4 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v4;
      v7 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);

      if (!v7)
      {
LABEL_13:
        v9 = _os_log_pack_size();
        v11 = &v22 - ((MEMORY[0x28223BE20](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
        v12 = __error();
        v13 = _os_log_pack_fill(v11, v9, *v12, &dword_25B98C000, "%{public}s [super init] failed");
        *v13 = 136446210;
        *(v13 + 4) = "[NRDeviceManager initInternal]";
        goto LABEL_17;
      }
    }

    v8 = nrCopyLogObj_1876();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceManager initInternal]"", 26);

    goto LABEL_13;
  }

  v2 = v1;
  if (nrXPCCopyQueue_onceToken != -1)
  {
    dispatch_once(&nrXPCCopyQueue_onceToken, &__block_literal_global_2644);
  }

  objc_storeStrong(v2 + 1, nrXPCCopyQueue_nrXPCQueue);
  if (!v2[1])
  {
    v5 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v14 = v5;
      v15 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v15)
      {
LABEL_16:
        v17 = _os_log_pack_size();
        v11 = &v22 - ((MEMORY[0x28223BE20](v17, v18) + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = __error();
        v20 = _os_log_pack_fill(v11, v17, *v19, &dword_25B98C000, "%{public}s Assertion Failed: (self.queue) != ((void*)0)");
        *v20 = 136446210;
        *(v20 + 4) = "[NRDeviceManager initInternal]";
LABEL_17:
        v21 = nrCopyLogObj_1876();
        _NRLogAbortWithPack(v21, v11);
      }
    }

    v16 = nrCopyLogObj_1876();
    _NRLogWithArgs(v16, 16, "%s%.30s:%-4d ABORTING: Assertion Failed: (self.queue) != ((void*)0)", ", "[NRDeviceManager initInternal]"", 28);

    goto LABEL_16;
  }

  return v2;
}

- (id)copyIDSDeviceID
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__1951;
  v9 = __Block_byref_object_dispose__1952;
  v10 = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NRDeviceManager_Internal__copyIDSDeviceID__block_invoke;
  block[3] = &unk_27996B420;
  block[4] = &v5;
  if (copyIDSDeviceID_onceToken != -1)
  {
    dispatch_once(&copyIDSDeviceID_onceToken, block);
  }

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

uint64_t __44__NRDeviceManager_Internal__copyIDSDeviceID__block_invoke(uint64_t a1)
{
  v2 = nrXPCCopyIDSDeviceID();
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (void)disableDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v14 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v19 = nrCopyLogObj_1876();
    _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]", 336, "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]"");

LABEL_20:
    v20 = _os_log_pack_size();
    v22 = &v31[-1] - ((MEMORY[0x28223BE20](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v20, *v23, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
    *v24 = 136446466;
    *(v24 + 4) = "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]";
    *(v24 + 12) = 2080;
    *(v24 + 14) = "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]";
    v25 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v25, v22);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v11 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Disabling device %@", ", "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]"", 341, v11);
      }

      nrDeviceIdentifier = [v11 nrDeviceIdentifier];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __65__NRDeviceManager_Internal__disableDevice_queue_completionBlock___block_invoke;
      v31[3] = &unk_27996B3D0;
      v32 = v11;
      v33 = v10;
      v13 = v11;
      nrXPCDisableDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v31);
    }

    else
    {
      v16 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v16;
        v29 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_11;
        }
      }

      v13 = nrCopyLogObj_1876();
      _NRLogWithArgs(v13, 17, "%s called with null completionBlock");
    }
  }

  else
  {
    v15 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v15;
      v27 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (!v27)
      {
        goto LABEL_11;
      }
    }

    v13 = nrCopyLogObj_1876();
    _NRLogWithArgs(v13, 17, "%s called with null queue");
  }

LABEL_11:
}

void __65__NRDeviceManager_Internal__disableDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v7];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to disable device %@: %@", ", "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]_block_invoke"", 357, *(a1 + 32), v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Disabled device %@", ", "[NRDeviceManager(Internal) disableDevice:queue:completionBlock:]_block_invoke"", 346, *(a1 + 32));
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)enableDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v14 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v19 = nrCopyLogObj_1876();
    _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]", 305, "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]"");

LABEL_20:
    v20 = _os_log_pack_size();
    v22 = &v31[-1] - ((MEMORY[0x28223BE20](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v20, *v23, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
    *v24 = 136446466;
    *(v24 + 4) = "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]";
    *(v24 + 12) = 2080;
    *(v24 + 14) = "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]";
    v25 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v25, v22);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v11 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Enabling device %@", ", "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]"", 310, v11);
      }

      nrDeviceIdentifier = [v11 nrDeviceIdentifier];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __64__NRDeviceManager_Internal__enableDevice_queue_completionBlock___block_invoke;
      v31[3] = &unk_27996B3D0;
      v32 = v11;
      v33 = v10;
      v13 = v11;
      nrXPCEnableDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v31);
    }

    else
    {
      v16 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v16;
        v29 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_11;
        }
      }

      v13 = nrCopyLogObj_1876();
      _NRLogWithArgs(v13, 17, "%s called with null completionBlock");
    }
  }

  else
  {
    v15 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v15;
      v27 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (!v27)
      {
        goto LABEL_11;
      }
    }

    v13 = nrCopyLogObj_1876();
    _NRLogWithArgs(v13, 17, "%s called with null queue");
  }

LABEL_11:
}

void __64__NRDeviceManager_Internal__enableDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v7];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to enable device %@: %@", ", "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]_block_invoke"", 326, *(a1 + 32), v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Enabled device %@", ", "[NRDeviceManager(Internal) enableDevice:queue:completionBlock:]_block_invoke"", 315, *(a1 + 32));
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)scrubAllDevicesWithQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v7 = blockCopy;
  if (!queueCopy)
  {
    v8 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v8;
      v11 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v12 = nrCopyLogObj_1876();
    _NRLogWithArgs(v12, 17, "%s called with null queue");
LABEL_18:

    goto LABEL_9;
  }

  if (!blockCopy)
  {
    v9 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v9;
      v14 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
        goto LABEL_9;
      }
    }

    v12 = nrCopyLogObj_1876();
    _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
    goto LABEL_18;
  }

  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbing all devices", ", "[NRDeviceManager(Internal) scrubAllDevicesWithQueue:completionBlock:]"", 281);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __70__NRDeviceManager_Internal__scrubAllDevicesWithQueue_completionBlock___block_invoke;
  v15[3] = &unk_27996B3F8;
  v16 = v7;
  nrXPCScrubAllDevices(queueCopy, v15);

LABEL_9:
}

void __70__NRDeviceManager_Internal__scrubAllDevicesWithQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v7];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to scrub all devices: %@", ", "[NRDeviceManager(Internal) scrubAllDevicesWithQueue:completionBlock:]_block_invoke"", 295, v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbed all devices", ", "[NRDeviceManager(Internal) scrubAllDevicesWithQueue:completionBlock:]_block_invoke"", 285);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)scrubDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v14 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v19 = nrCopyLogObj_1876();
    _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]", 248, "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]"");

LABEL_20:
    v20 = _os_log_pack_size();
    v22 = &v31[-1] - ((MEMORY[0x28223BE20](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v20, *v23, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
    *v24 = 136446466;
    *(v24 + 4) = "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]";
    *(v24 + 12) = 2080;
    *(v24 + 14) = "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]";
    v25 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v25, v22);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v11 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbing device %@", ", "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]"", 253, v11);
      }

      nrDeviceIdentifier = [v11 nrDeviceIdentifier];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __63__NRDeviceManager_Internal__scrubDevice_queue_completionBlock___block_invoke;
      v31[3] = &unk_27996B3D0;
      v32 = v11;
      v33 = v10;
      v13 = v11;
      nrXPCScrubDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v31);
    }

    else
    {
      v16 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v16;
        v29 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_11;
        }
      }

      v13 = nrCopyLogObj_1876();
      _NRLogWithArgs(v13, 17, "%s called with null completionBlock");
    }
  }

  else
  {
    v15 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v15;
      v27 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (!v27)
      {
        goto LABEL_11;
      }
    }

    v13 = nrCopyLogObj_1876();
    _NRLogWithArgs(v13, 17, "%s called with null queue");
  }

LABEL_11:
}

void __63__NRDeviceManager_Internal__scrubDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v7];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to scrub device %@: %@", ", "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]_block_invoke"", 269, *(a1 + 32), v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Scrubbed device %@", ", "[NRDeviceManager(Internal) scrubDevice:queue:completionBlock:]_block_invoke"", 258, *(a1 + 32));
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (void)unregisterAllDevicesWithQueue:(id)queue completionBlock:(id)block
{
  queueCopy = queue;
  blockCopy = block;
  v7 = blockCopy;
  if (!queueCopy)
  {
    v8 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v8;
      v11 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);

      if (!v11)
      {
        goto LABEL_9;
      }
    }

    v12 = nrCopyLogObj_1876();
    _NRLogWithArgs(v12, 17, "%s called with null queue");
LABEL_18:

    goto LABEL_9;
  }

  if (!blockCopy)
  {
    v9 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v9;
      v14 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

      if (!v14)
      {
        goto LABEL_9;
      }
    }

    v12 = nrCopyLogObj_1876();
    _NRLogWithArgs(v12, 17, "%s called with null completionBlock");
    goto LABEL_18;
  }

  if (nrCopyLogObj_onceToken_1880 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistering all devices", ", "[NRDeviceManager(Internal) unregisterAllDevicesWithQueue:completionBlock:]"", 224);
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__NRDeviceManager_Internal__unregisterAllDevicesWithQueue_completionBlock___block_invoke;
  v15[3] = &unk_27996B3F8;
  v16 = v7;
  nrXPCUnregisterAllDevices(queueCopy, v15);

LABEL_9:
}

void __75__NRDeviceManager_Internal__unregisterAllDevicesWithQueue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v7];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to unregister all devices: %@", ", "[NRDeviceManager(Internal) unregisterAllDevicesWithQueue:completionBlock:]_block_invoke"", 238, v8);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistered all devices", ", "[NRDeviceManager(Internal) unregisterAllDevicesWithQueue:completionBlock:]_block_invoke"", 228);
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)unregisterDevice:(id)device queue:(id)queue completionBlock:(id)block
{
  v34 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  queueCopy = queue;
  blockCopy = block;
  if (!deviceCopy)
  {
    v14 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v17 = v14;
      v18 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v18)
      {
        goto LABEL_20;
      }
    }

    v19 = nrCopyLogObj_1876();
    _NRLogWithArgs(v19, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID", ", "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]", 192, "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]"");

LABEL_20:
    v20 = _os_log_pack_size();
    v22 = &v31[-1] - ((MEMORY[0x28223BE20](v20, v21) + 15) & 0xFFFFFFFFFFFFFFF0);
    v23 = __error();
    v24 = _os_log_pack_fill(v22, v20, *v23, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL deviceID");
    *v24 = 136446466;
    *(v24 + 4) = "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]";
    *(v24 + 12) = 2080;
    *(v24 + 14) = "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]";
    v25 = nrCopyLogObj_1876();
    _NRLogAbortWithPack(v25, v22);
  }

  v10 = blockCopy;
  if (queueCopy)
  {
    if (blockCopy)
    {
      v11 = [deviceCopy copy];
      if (nrCopyLogObj_onceToken_1880 != -1)
      {
        dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
      }

      if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
      {
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistering device %@", ", "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]"", 197, v11);
      }

      nrDeviceIdentifier = [v11 nrDeviceIdentifier];
      v31[0] = MEMORY[0x277D85DD0];
      v31[1] = 3221225472;
      v31[2] = __68__NRDeviceManager_Internal__unregisterDevice_queue_completionBlock___block_invoke;
      v31[3] = &unk_27996B3D0;
      v32 = v11;
      v33 = v10;
      v13 = v11;
      nrXPCUnregisterDeviceByNRUUID(nrDeviceIdentifier, queueCopy, v31);
    }

    else
    {
      v16 = nrCopyLogObj_1876();
      if (sNRCopyLogToStdErr == 1)
      {
      }

      else
      {
        v28 = v16;
        v29 = os_log_type_enabled(v16, OS_LOG_TYPE_FAULT);

        if (!v29)
        {
          goto LABEL_11;
        }
      }

      v13 = nrCopyLogObj_1876();
      _NRLogWithArgs(v13, 17, "%s called with null completionBlock");
    }
  }

  else
  {
    v15 = nrCopyLogObj_1876();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v26 = v15;
      v27 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);

      if (!v27)
      {
        goto LABEL_11;
      }
    }

    v13 = nrCopyLogObj_1876();
    _NRLogWithArgs(v13, 17, "%s called with null queue");
  }

LABEL_11:
}

void __68__NRDeviceManager_Internal__unregisterDevice_queue_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (v5)
    {
      v9 = *MEMORY[0x277CCA450];
      v10[0] = v5;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    }

    else
    {
      v7 = 0;
    }

    v8 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"NRDeviceManagerErrorDomain" code:a2 userInfo:v7];
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_ERROR))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 16, "%s%.30s:%-4d Failed to unregister device %@: %@", ", "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]_block_invoke"", 213, *(a1 + 32), v8);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (nrCopyLogObj_onceToken_1880 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1880, &__block_literal_global_78);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1881, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1881, 0, "%s%.30s:%-4d Unregistered device %@", ", "[NRDeviceManager(Internal) unregisterDevice:queue:completionBlock:]_block_invoke"", 202, *(a1 + 32));
    }

    (*(*(a1 + 40) + 16))();
  }
}

@end