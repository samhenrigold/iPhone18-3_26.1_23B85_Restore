@interface NRDeviceIdentifier
+ (id)copyBestTestingDeviceIdentifier;
+ (id)newDeviceIdentifierWithBluetoothUUID:(id)d;
+ (id)newDeviceIdentifierWithIDSDeviceID:(id)d shouldCreate:(BOOL)create;
+ (id)newEphemeralDeviceIdentifier;
- (BOOL)isEqual:(id)equal;
- (NRDeviceIdentifier)initWithCoder:(id)coder;
- (NRDeviceIdentifier)initWithUUID:(id)d;
- (NSUUID)bluetoothUUID;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NRDeviceIdentifier

- (NSUUID)bluetoothUUID
{
  if (self && self->_ephemeral)
  {
    firstObject = self->_internalEphemeralBluetoothUUID;
    goto LABEL_27;
  }

  nrDeviceIdentifier = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Querying BluetoothUUID for nrUUID %@", ", "[NRDeviceIdentifier bluetoothUUID]"", 145, nrDeviceIdentifier);
  }

  os_unfair_lock_lock(&sBluetoothUUIDToNRUUIDMappingLock);
  if (!sBluetoothUUIDToNRUUIDMapping)
  {
LABEL_17:
    firstObject = nrXPCCopyBluetoothUUIDForNRUUID(nrDeviceIdentifier);
    if (!firstObject)
    {
      goto LABEL_26;
    }

    if (nrCopyLogObj_onceToken_809 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_21;
      }
    }

    if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
    {
LABEL_22:
      v5 = sBluetoothUUIDToNRUUIDMapping;
      if (!sBluetoothUUIDToNRUUIDMapping)
      {
        v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
        v7 = sBluetoothUUIDToNRUUIDMapping;
        sBluetoothUUIDToNRUUIDMapping = v6;

        v5 = sBluetoothUUIDToNRUUIDMapping;
      }

      if ([v5 count] <= 0xF)
      {
        [sBluetoothUUIDToNRUUIDMapping setObject:nrDeviceIdentifier forKeyedSubscript:firstObject];
      }

      goto LABEL_26;
    }

LABEL_21:
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got BluetoothUUID %@ from daemon for nrUUID %@", ", "[NRDeviceIdentifier bluetoothUUID]"", 157, firstObject, nrDeviceIdentifier);
    goto LABEL_22;
  }

  v4 = [sBluetoothUUIDToNRUUIDMapping allKeysForObject:nrDeviceIdentifier];
  if (![v4 count])
  {

    goto LABEL_17;
  }

  firstObject = [v4 firstObject];

  if (!firstObject)
  {
    goto LABEL_17;
  }

  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_15:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got BluetoothUUID %@ from cache for nrUUID %@", ", "[NRDeviceIdentifier bluetoothUUID]"", 166, firstObject, nrDeviceIdentifier);
      goto LABEL_26;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_15;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    goto LABEL_15;
  }

LABEL_26:
  os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);

LABEL_27:

  return firstObject;
}

- (unint64_t)hash
{
  nrDeviceIdentifier = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  v3 = [nrDeviceIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = equalCopy;
    nrDeviceIdentifier = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
    nrDeviceIdentifier2 = [v5 nrDeviceIdentifier];

    v8 = [nrDeviceIdentifier isEqual:nrDeviceIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  nrDeviceIdentifier = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  uUIDString = [nrDeviceIdentifier UUIDString];
  v6 = [v3 initWithFormat:@"NRD[%@]", uUIDString];

  return v6;
}

- (NRDeviceIdentifier)initWithUUID:(id)d
{
  v40 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v10 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v13 = v10;
      v14 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v14)
      {
LABEL_13:
        v16 = _os_log_pack_size();
        v18 = &v36 - ((MEMORY[0x28223BE20](v16, v17) + 15) & 0xFFFFFFFFFFFFFFF0);
        v19 = __error();
        v20 = _os_log_pack_fill(v18, v16, *v19, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL nrDeviceIdentifier");
        *v20 = 136446466;
        *(v20 + 4) = "[NRDeviceIdentifier initWithUUID:]";
        *(v20 + 12) = 2080;
        *(v20 + 14) = "[NRDeviceIdentifier initWithUUID:]";
        goto LABEL_20;
      }
    }

    v15 = nrCopyLogObj_823();
    _NRLogWithArgs(v15, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL nrDeviceIdentifier", ", "[NRDeviceIdentifier initWithUUID:]", 59, "[NRDeviceIdentifier initWithUUID:]"");

    goto LABEL_13;
  }

  v5 = dCopy;
  *uu = 0;
  v39 = 0;
  [dCopy getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v11 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v21 = v11;
      v22 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v22)
      {
LABEL_16:
        v24 = _os_log_pack_size();
        v18 = &v36 - ((MEMORY[0x28223BE20](v24, v25) + 15) & 0xFFFFFFFFFFFFFFF0);
        v26 = __error();
        v27 = _os_log_pack_fill(v18, v24, *v26, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with all-zero nrDeviceIdentifier");
        *v27 = 136446466;
        *(v27 + 4) = "[NRDeviceIdentifier initWithUUID:]";
        *(v27 + 12) = 2080;
        *(v27 + 14) = "[NRDeviceIdentifier initWithUUID:]";
        goto LABEL_20;
      }
    }

    v23 = nrCopyLogObj_823();
    _NRLogWithArgs(v23, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with all-zero nrDeviceIdentifier", ", "[NRDeviceIdentifier initWithUUID:]", 59, "[NRDeviceIdentifier initWithUUID:]"");

    goto LABEL_16;
  }

  v37.receiver = self;
  v37.super_class = NRDeviceIdentifier;
  v6 = [(NRDeviceIdentifier *)&v37 init];
  if (!v6)
  {
    v12 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v28 = v12;
      v29 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);

      if (!v29)
      {
LABEL_19:
        v31 = _os_log_pack_size();
        v18 = &v36 - ((MEMORY[0x28223BE20](v31, v32) + 15) & 0xFFFFFFFFFFFFFFF0);
        v33 = __error();
        v34 = _os_log_pack_fill(v18, v31, *v33, &dword_25B98C000, "%{public}s [super init] failed");
        *v34 = 136446210;
        *(v34 + 4) = "[NRDeviceIdentifier initWithUUID:]";
LABEL_20:
        v35 = nrCopyLogObj_823();
        _NRLogAbortWithPack(v35, v18);
      }
    }

    v30 = nrCopyLogObj_823();
    _NRLogWithArgs(v30, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceIdentifier initWithUUID:]"", 61);

    goto LABEL_19;
  }

  v8 = v6;
  objc_setProperty_nonatomic_copy(v6, v7, v5, 16);

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  nrDeviceIdentifier = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  [coderCopy encodeObject:nrDeviceIdentifier forKey:@"nrDeviceIdentifier"];

  if (self)
  {
    ephemeral = self->_ephemeral;
  }

  else
  {
    ephemeral = 0;
  }

  [coderCopy encodeBool:ephemeral forKey:@"ephemeral"];
}

- (NRDeviceIdentifier)initWithCoder:(id)coder
{
  v22 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = NRDeviceIdentifier;
  v5 = [(NRDeviceIdentifier *)&v21 init];
  if (!v5)
  {
    v10 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v11 = v10;
      v12 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);

      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v13 = nrCopyLogObj_823();
    _NRLogWithArgs(v13, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceIdentifier initWithCoder:]"", 45);

LABEL_7:
    v14 = _os_log_pack_size();
    v16 = &v20 - ((MEMORY[0x28223BE20](v14, v15) + 15) & 0xFFFFFFFFFFFFFFF0);
    v17 = __error();
    v18 = _os_log_pack_fill(v16, v14, *v17, &dword_25B98C000, "%{public}s [super init] failed");
    *v18 = 136446210;
    *(v18 + 4) = "[NRDeviceIdentifier initWithCoder:]";
    v19 = nrCopyLogObj_823();
    _NRLogAbortWithPack(v19, v16);
  }

  v6 = v5;
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"nrDeviceIdentifier"];
  objc_setProperty_nonatomic_copy(v6, v8, v7, 16);

  v6->_ephemeral = [coderCopy decodeBoolForKey:@"ephemeral"];
  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  nrDeviceIdentifier = [(NRDeviceIdentifier *)self nrDeviceIdentifier];
  v6 = [v4 initWithUUID:nrDeviceIdentifier];

  if (!self)
  {
    ephemeral = 0;
    if (!v6)
    {
      return v6;
    }

    goto LABEL_3;
  }

  ephemeral = self->_ephemeral;
  if (v6)
  {
LABEL_3:
    v6[8] = ephemeral;
  }

  return v6;
}

+ (id)newDeviceIdentifierWithBluetoothUUID:(id)d
{
  v45 = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v14 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v14;
      v17 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);

      if (!v17)
      {
LABEL_37:
        v19 = _os_log_pack_size();
        v21 = &v41[-((MEMORY[0x28223BE20](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v22 = __error();
        v23 = _os_log_pack_fill(v21, v19, *v22, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL bluetoothUUID");
        *v23 = 136446466;
        *(v23 + 4) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
        *(v23 + 12) = 2080;
        *(v23 + 14) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
        goto LABEL_41;
      }
    }

    v18 = nrCopyLogObj_823();
    _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL bluetoothUUID", ", "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]", 104, "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]"");

    goto LABEL_37;
  }

  v5 = dCopy;
  *uu = 0;
  v44 = 0;
  [dCopy getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v15 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v24 = v15;
      v25 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (!v25)
      {
LABEL_40:
        v27 = _os_log_pack_size();
        v21 = &v41[-((MEMORY[0x28223BE20](v27, v28) + 15) & 0xFFFFFFFFFFFFFFF0)];
        v29 = __error();
        v30 = _os_log_pack_fill(v21, v27, *v29, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with all-zero bluetoothUUID");
        *v30 = 136446466;
        *(v30 + 4) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
        *(v30 + 12) = 2080;
        *(v30 + 14) = "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]";
LABEL_41:
        v31 = nrCopyLogObj_823();
        _NRLogAbortWithPack(v31, v21);
      }
    }

    v26 = nrCopyLogObj_823();
    _NRLogWithArgs(v26, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with all-zero bluetoothUUID", ", "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]", 104, "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]"");

    goto LABEL_40;
  }

  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Querying NRUUID for bluetoothUUID %@", ", "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]"", 105, v5);
  }

  os_unfair_lock_lock(&sBluetoothUUIDToNRUUIDMappingLock);
  if (sBluetoothUUIDToNRUUIDMapping)
  {
    v6 = [sBluetoothUUIDToNRUUIDMapping objectForKeyedSubscript:v5];
    v42 = 0;
    if (v6)
    {
      v7 = v6;
      if (nrCopyLogObj_onceToken_809 == -1)
      {
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_12:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
          {
            goto LABEL_52;
          }
        }
      }

      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from cache for bluetoothUUID %@", ", "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]"", 125, v7, v5);
      goto LABEL_52;
    }
  }

  else
  {
    v42 = 0;
  }

  v8 = nrXPCCopyNRUUIDForBluetoothUUID(v5, &v42);
  if (!v8)
  {
    os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);
    if (nrCopyLogObj_onceToken_809 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    }

    v9 = nrCopyLogObj_sNRLogObj_811;
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v10 = v9;
      v11 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);

      if (!v11)
      {
LABEL_30:
        v7 = 0;
        v13 = 0;
        goto LABEL_60;
      }
    }

    if (nrCopyLogObj_onceToken_809 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    }

    v12 = nrCopyLogObj_sNRLogObj_811;
    _NRLogWithArgs(v12, 17, "%s called with null nrUUID", "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]");

    goto LABEL_30;
  }

  v7 = v8;
  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_45;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_45;
    }
  }

  if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    if (sBluetoothUUIDToNRUUIDMapping)
    {
      goto LABEL_20;
    }

    goto LABEL_49;
  }

LABEL_45:
  if (v42)
  {
    v32 = " (Epml)";
  }

  else
  {
    v32 = "";
  }

  _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from daemon for bluetoothUUID %@%s", ", "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]"", 115, v7, v5, v32);
  if (sBluetoothUUIDToNRUUIDMapping)
  {
LABEL_20:
    if (v42)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

LABEL_49:
  v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v34 = sBluetoothUUIDToNRUUIDMapping;
  sBluetoothUUIDToNRUUIDMapping = v33;

  if (v42)
  {
    goto LABEL_52;
  }

LABEL_50:
  if ([sBluetoothUUIDToNRUUIDMapping count] <= 0xF)
  {
    [sBluetoothUUIDToNRUUIDMapping setObject:v7 forKeyedSubscript:v5];
  }

LABEL_52:
  os_unfair_lock_unlock(&sBluetoothUUIDToNRUUIDMappingLock);
  *uu = 0;
  v44 = 0;
  [v7 getUUIDBytes:uu];
  if (uuid_is_null(uu))
  {
    v37 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v38 = v37;
      v39 = os_log_type_enabled(v37, OS_LOG_TYPE_FAULT);

      if (!v39)
      {
        v13 = 0;
        goto LABEL_60;
      }
    }

    v40 = nrCopyLogObj_823();
    _NRLogWithArgs(v40, 17, "called with all-zero nrUUID");

    v13 = 0;
  }

  else
  {
    v35 = [[NRDeviceIdentifier alloc] initWithUUID:v7];
    v13 = v35;
    if (v42 && v35)
    {
      objc_storeStrong(&v35->_internalEphemeralBluetoothUUID, d);
    }

    if (nrCopyLogObj_onceToken_809 == -1)
    {
      if (sNRCopyLogToStdErr)
      {
LABEL_59:
        _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Found %@ for bluetoothUUID %@", ", "+[NRDeviceIdentifier newDeviceIdentifierWithBluetoothUUID:]"", 133, v13, v5);
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
      if (sNRCopyLogToStdErr)
      {
        goto LABEL_59;
      }
    }

    if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
    {
      goto LABEL_59;
    }
  }

LABEL_60:

  return v13;
}

+ (id)newEphemeralDeviceIdentifier
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v3 = [[NRDeviceIdentifier alloc] initWithUUID:uUID];
  v4 = v3;
  if (v3)
  {
    v3->_ephemeral = 1;
  }

  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Creating %@ for ephemeral pairing", ", "+[NRDeviceIdentifier newEphemeralDeviceIdentifier]"", 98, v4);
  }

  return v4;
}

+ (id)newDeviceIdentifierWithIDSDeviceID:(id)d shouldCreate:(BOOL)create
{
  createCopy = create;
  v25[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (!dCopy)
  {
    v15 = nrCopyLogObj_823();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v16 = v15;
      v17 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);

      if (!v17)
      {
        goto LABEL_39;
      }
    }

    v18 = nrCopyLogObj_823();
    _NRLogWithArgs(v18, 16, "%s%.30s:%-4d ABORTING: BUG IN CLIENT OF NetworkRelay: %s called with NULL idsDeviceID", ", "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]", 194, "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]"");

LABEL_39:
    v19 = _os_log_pack_size();
    v21 = v25 - ((MEMORY[0x28223BE20](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = __error();
    v23 = _os_log_pack_fill(v21, v19, *v22, &dword_25B98C000, "%{public}s BUG IN CLIENT OF NetworkRelay: %s called with NULL idsDeviceID");
    *v23 = 136446466;
    *(v23 + 4) = "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]";
    *(v23 + 12) = 2080;
    *(v23 + 14) = "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]";
    v24 = nrCopyLogObj_823();
    _NRLogAbortWithPack(v24, v21);
  }

  v6 = dCopy;
  if (nrCopyLogObj_onceToken_809 != -1)
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
  }

  if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Querying NRUUID for IDSDeviceID %@", ", "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]"", 195, v6);
  }

  os_unfair_lock_lock(&sIDSDeviceIDToNRUUIDMappingLock);
  if (sIDSDeviceIDToNRUUIDMapping)
  {
    v7 = [sIDSDeviceIDToNRUUIDMapping objectForKeyedSubscript:v6];
    if (v7)
    {
      v8 = v7;
      if (nrCopyLogObj_onceToken_809 == -1)
      {
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
        if ((sNRCopyLogToStdErr & 1) == 0)
        {
LABEL_11:
          if (!os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
          {
            goto LABEL_21;
          }
        }
      }

      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from cache for idsDeviceID %@", ", "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]"", 211, v8, v6);
      goto LABEL_21;
    }
  }

  v9 = nrXPCCopyNRUUIDForIDSDeviceID(v6, createCopy);
  if (!v9)
  {
    os_unfair_lock_unlock(&sIDSDeviceIDToNRUUIDMappingLock);
    if (createCopy)
    {
      if (nrCopyLogObj_onceToken_809 == -1)
      {
        if (sNRCopyLogToStdErr)
        {
LABEL_30:
          _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 17, "%s called with null nrUUID", "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]");
          goto LABEL_31;
        }
      }

      else
      {
        dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
        if (sNRCopyLogToStdErr)
        {
          goto LABEL_30;
        }
      }

      if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_30;
      }
    }

LABEL_31:
    v13 = 0;
    goto LABEL_32;
  }

  v8 = v9;
  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_17:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Got NRUUID %@ from daemon for idsDeviceID %@", ", "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]"", 204, v8, v6);
      goto LABEL_18;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_17;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    goto LABEL_17;
  }

LABEL_18:
  v10 = sIDSDeviceIDToNRUUIDMapping;
  if (!sIDSDeviceIDToNRUUIDMapping)
  {
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = sIDSDeviceIDToNRUUIDMapping;
    sIDSDeviceIDToNRUUIDMapping = v11;

    v10 = sIDSDeviceIDToNRUUIDMapping;
  }

  [v10 setObject:v8 forKeyedSubscript:v6];
LABEL_21:
  os_unfair_lock_unlock(&sIDSDeviceIDToNRUUIDMappingLock);
  v13 = [[NRDeviceIdentifier alloc] initWithUUID:v8];
  if (nrCopyLogObj_onceToken_809 == -1)
  {
    if (sNRCopyLogToStdErr)
    {
LABEL_24:
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_811, 1, "%s%.30s:%-4d Found %@ for idsDeviceID %@", ", "+[NRDeviceIdentifier(Internal) newDeviceIdentifierWithIDSDeviceID:shouldCreate:]"", 222, v13, v6);
      goto LABEL_25;
    }
  }

  else
  {
    dispatch_once(&nrCopyLogObj_onceToken_809, &__block_literal_global_810);
    if (sNRCopyLogToStdErr)
    {
      goto LABEL_24;
    }
  }

  if (os_log_type_enabled(nrCopyLogObj_sNRLogObj_811, OS_LOG_TYPE_INFO))
  {
    goto LABEL_24;
  }

LABEL_25:

LABEL_32:
  return v13;
}

+ (id)copyBestTestingDeviceIdentifier
{
  v2 = nrXPCCopyBestTestingNRUUID();
  if (v2)
  {
    v3 = [[NRDeviceIdentifier alloc] initWithUUID:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end