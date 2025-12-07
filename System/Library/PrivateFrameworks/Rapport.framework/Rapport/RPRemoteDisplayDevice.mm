@interface RPRemoteDisplayDevice
- (BOOL)isEqualToDevice:(id)device;
- (NSString)persistentIdentifier;
- (RPRemoteDisplayDevice)initWithCoder:(id)coder;
- (RPRemoteDisplayDevice)initWithIdentifier:(id)identifier name:(id)name model:(id)model accountID:(id)d;
- (RPRemoteDisplayDevice)initWithKeychainDictionaryRepresentation:(id)representation;
- (id)descriptionWithLevel:(int)level;
- (id)keychainDictionaryRepresentation;
- (unsigned)updateWithEndpoint:(id)endpoint;
- (void)clearCameraCapabilitiesRefetchTimer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPRemoteDisplayDevice

- (RPRemoteDisplayDevice)initWithIdentifier:(id)identifier name:(id)name model:(id)model accountID:(id)d
{
  identifierCopy = identifier;
  nameCopy = name;
  modelCopy = model;
  dCopy = d;
  v25.receiver = self;
  v25.super_class = RPRemoteDisplayDevice;
  v14 = [(RPRemoteDisplayDevice *)&v25 init];
  if (v14)
  {
    v15 = [identifierCopy copy];
    idsDeviceIdentifier = v14->super._idsDeviceIdentifier;
    v14->super._idsDeviceIdentifier = v15;

    v17 = [nameCopy copy];
    name = v14->super._name;
    v14->super._name = v17;

    v19 = [modelCopy copy];
    model = v14->super._model;
    v14->super._model = v19;

    v21 = [dCopy copy];
    accountID = v14->super._accountID;
    v14->super._accountID = v21;

    v23 = v14;
  }

  return v14;
}

- (RPRemoteDisplayDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = RPRemoteDisplayDevice;
  v5 = [(RPEndpoint *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"ccap"];
    cameraCapabilities = v5->_cameraCapabilities;
    v5->_cameraCapabilities = v6;

    v12 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_flags = v12;
    }

    v8 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = RPRemoteDisplayDevice;
  [(RPEndpoint *)&v8 encodeWithCoder:coderCopy];
  cameraCapabilities = self->_cameraCapabilities;
  if (cameraCapabilities)
  {
    [coderCopy encodeObject:cameraCapabilities forKey:@"ccap"];
  }

  flags = self->_flags;
  if (flags)
  {
    [coderCopy encodeInt64:flags forKey:@"fl"];
  }

  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier)
  {
    [coderCopy encodeObject:persistentIdentifier forKey:@"pi"];
  }
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  if (identifier)
  {
    v6 = identifier;
    identifier2 = [deviceCopy identifier];
    v31.receiver = self;
    v31.super_class = RPRemoteDisplayDevice;
    v8 = [(RPEndpoint *)&v31 compareWithDeviceIdentifier:identifier2];

    if (v8)
    {
      goto LABEL_9;
    }
  }

  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  if (idsDeviceIdentifier)
  {
    v10 = idsDeviceIdentifier;
    idsDeviceIdentifier2 = [deviceCopy idsDeviceIdentifier];
    v30.receiver = self;
    v30.super_class = RPRemoteDisplayDevice;
    v12 = [(RPEndpoint *)&v30 compareWithDeviceIdentifier:idsDeviceIdentifier2];

    if (v12)
    {
      goto LABEL_9;
    }
  }

  verifiedIdentity = [deviceCopy verifiedIdentity];
  if (verifiedIdentity)
  {
    v14 = verifiedIdentity;
    verifiedIdentity2 = [deviceCopy verifiedIdentity];
    v29.receiver = self;
    v29.super_class = RPRemoteDisplayDevice;
    v16 = [(RPEndpoint *)&v29 compareWithDeviceIdentifier:verifiedIdentity2];

    if (v16)
    {
      goto LABEL_9;
    }
  }

  bleDevice = [deviceCopy bleDevice];
  rapportIdentifier = [bleDevice rapportIdentifier];
  if (rapportIdentifier)
  {
    v19 = rapportIdentifier;
    bleDevice2 = [deviceCopy bleDevice];
    rapportIdentifier2 = [bleDevice2 rapportIdentifier];
    v28.receiver = self;
    v28.super_class = RPRemoteDisplayDevice;
    v22 = [(RPEndpoint *)&v28 compareWithDeviceIdentifier:rapportIdentifier2];

    if (v22)
    {
LABEL_9:
      v23 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  sessionPairingIdentifier = [deviceCopy sessionPairingIdentifier];
  if (sessionPairingIdentifier)
  {
    sessionPairingIdentifier2 = [deviceCopy sessionPairingIdentifier];
    v27.receiver = self;
    v27.super_class = RPRemoteDisplayDevice;
    v23 = [(RPEndpoint *)&v27 compareWithDeviceIdentifier:sessionPairingIdentifier2];
  }

  else
  {
    v23 = 0;
  }

LABEL_15:
  return v23;
}

- (id)descriptionWithLevel:(int)level
{
  v4 = shouldPrintSensitiveData(self, a2);
  v64 = 0;
  NSAppendPrintF(&v64, "RPRemoteDisplayDevice");
  v5 = v64;
  v6 = self->super._accountAltDSID;
  v7 = self->super._identifier;
  v8 = self->super._idsDeviceIdentifier;
  if ([(NSString *)v8 isEqual:v7])
  {

    v7 = 0;
  }

  if (v6)
  {
    v63 = v5;
    v9 = formatSensitiveData(", AltDSID ", v4);
    NSAppendPrintF(&v63, v9, v6);
    v10 = v63;

    v5 = v10;
  }

  if (v8)
  {
    v62 = v5;
    v11 = formatSensitiveData(", IDS ", v4);
    NSAppendPrintF(&v62, v11, v8);
    v12 = v62;

    v5 = v12;
  }

  if (v7)
  {
    v61 = v5;
    v13 = formatSensitiveData(", ID ", v4);
    NSAppendPrintF(&v61, v13, v7);
    v14 = v61;

    v5 = v14;
  }

  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier)
  {
    v60 = v5;
    v16 = persistentIdentifier;
    v17 = formatSensitiveData(", PI ", v4);
    NSAppendPrintF(&v60, v17, v16);
    v18 = v60;

    v5 = v18;
  }

  name = self->super._name;
  if (name)
  {
    v59 = v5;
    v20 = name;
    v21 = formatSensitiveData(", Nm ", v4);
    NSAppendPrintF(&v59, v21, v20);
    v22 = v59;

    v5 = v22;
  }

  model = self->super._model;
  if (model)
  {
    v58 = v5;
    v24 = model;
    v25 = formatSensitiveData(", Md ", v4);
    NSAppendPrintF(&v58, v25, v24);
    v26 = v58;

    v5 = v26;
  }

  sessionPairingIdentifier = self->super._sessionPairingIdentifier;
  if (sessionPairingIdentifier)
  {
    v57 = v5;
    v28 = sessionPairingIdentifier;
    v29 = formatSensitiveData(", spID ", v4);
    NSAppendPrintF(&v57, v29, v28);
    v30 = v57;

    v5 = v30;
  }

  if (v4)
  {
    v56.receiver = self;
    v56.super_class = RPRemoteDisplayDevice;
    [(RPEndpoint *)&v56 operatingSystemVersion];
    if (v55[1])
    {
      v55[0] = v5;
      v53.receiver = self;
      v53.super_class = RPRemoteDisplayDevice;
      [(RPEndpoint *)&v53 operatingSystemVersion];
      v31 = RPNSOperatingSystemVersionToString(v54);
      NSAppendPrintF(v55, ", OSV %@", v31);
      v32 = v55[0];

      v5 = v32;
    }

    sourceVersion = self->super._sourceVersion;
    if (sourceVersion)
    {
      v52 = v5;
      v34 = sourceVersion;
      NSAppendPrintF(&v52, ", SV %@", v34);
      v35 = v52;

      v5 = v35;
    }
  }

  cameraCapabilities = self->_cameraCapabilities;
  if (cameraCapabilities)
  {
    v51 = v5;
    NSAppendPrintF(&v51, ", CC %d", [(NSDictionary *)cameraCapabilities count]);
    v37 = v51;

    v5 = v37;
  }

  v50.receiver = self;
  v50.super_class = RPRemoteDisplayDevice;
  cameraState = [(RPEndpoint *)&v50 cameraState];
  if (cameraState)
  {
    v39 = "?";
    if (cameraState == 1)
    {
      v39 = "Usable";
    }

    if (cameraState == 2)
    {
      v39 = "Magic";
    }

    v49 = v5;
    NSAppendPrintF(&v49, ", CS '%s'", v39);
    v40 = v49;

    v5 = v40;
  }

  flags = self->_flags;
  if (flags)
  {
    v48 = v5;
    NSAppendPrintF(&v48, ", %#{flags}", flags, &unk_1B6F2E7A0);
    v42 = v48;

    v5 = v42;
  }

  statusFlags = self->super._statusFlags;
  if (statusFlags)
  {
    v47 = v5;
    NSAppendPrintF(&v47, ", SF %#ll{flags}", statusFlags, &unk_1B6F2E7C2);
    v44 = v47;

    v5 = v44;
  }

  v45 = v5;

  return v5;
}

- (unsigned)updateWithEndpoint:(id)endpoint
{
  v7.receiver = self;
  v7.super_class = RPRemoteDisplayDevice;
  v4 = [(RPEndpoint *)&v7 updateWithEndpoint:endpoint];
  idsDeviceIdentifier = self->super._idsDeviceIdentifier;
  if (idsDeviceIdentifier && !self->_persistentIdentifier)
  {
    objc_storeStrong(&self->_persistentIdentifier, idsDeviceIdentifier);
    v4 |= 2u;
  }

  return v4;
}

- (NSString)persistentIdentifier
{
  persistentIdentifier = self->_persistentIdentifier;
  if (persistentIdentifier || (persistentIdentifier = self->super._idsDeviceIdentifier) != 0)
  {
    v4 = persistentIdentifier;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)clearCameraCapabilitiesRefetchTimer
{
  cameraCapabilitiesRefetchTimer = self->_cameraCapabilitiesRefetchTimer;
  if (cameraCapabilitiesRefetchTimer)
  {
    v5 = cameraCapabilitiesRefetchTimer;
    dispatch_source_cancel(v5);
    v4 = self->_cameraCapabilitiesRefetchTimer;
    self->_cameraCapabilitiesRefetchTimer = 0;
  }
}

- (RPRemoteDisplayDevice)initWithKeychainDictionaryRepresentation:(id)representation
{
  representationCopy = representation;
  v5 = [representationCopy objectForKey:@"idsD"];

  if (!v5)
  {
    if (gLogCategory_RPRemoteDisplayDevice <= 90 && (gLogCategory_RPRemoteDisplayDevice != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplayDevice initWithKeychainDictionaryRepresentation:];
    }

    goto LABEL_37;
  }

  v38.receiver = self;
  v38.super_class = RPRemoteDisplayDevice;
  self = [(RPRemoteDisplayDevice *)&v38 init];
  if (!self)
  {
LABEL_37:
    selfCopy = 0;
    goto LABEL_38;
  }

  v6 = [representationCopy objectForKey:@"idsD"];
  v7 = objc_opt_class();
  v8 = v6;
  if (v7)
  {
    if (objc_opt_isKindOfClass())
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

  v10 = v9;

  [(RPEndpoint *)self setIdsDeviceIdentifier:v10];
  v11 = [representationCopy objectForKey:@"idsD"];
  v12 = objc_opt_class();
  v13 = v11;
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

  [(RPRemoteDisplayDevice *)self setPersistentIdentifier:v15];
  v16 = [representationCopy objectForKey:@"nm"];
  v17 = objc_opt_class();
  v18 = v16;
  if (v17)
  {
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v20 = v19;

  [(RPEndpoint *)self setName:v20];
  v21 = [representationCopy objectForKey:@"md"];
  v22 = objc_opt_class();
  v23 = v21;
  if (v22)
  {
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  [(RPEndpoint *)self setModel:v25];
  v26 = [representationCopy objectForKey:@"aid"];
  v27 = objc_opt_class();
  v28 = v26;
  if (v27)
  {
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  v30 = v29;

  [(RPEndpoint *)self setAccountID:v30];
  v31 = [representationCopy objectForKey:@"altDSID"];
  v32 = objc_opt_class();
  v33 = v31;
  if (v32)
  {
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = v34;

  [(RPEndpoint *)self setAccountAltDSID:v35];
  self = self;
  selfCopy = self;
LABEL_38:

  return selfCopy;
}

- (id)keychainDictionaryRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  idsDeviceIdentifier = self->super._idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    v5 = [(NSString *)idsDeviceIdentifier copy];
    [v3 setObject:v5 forKey:@"idsD"];
  }

  name = self->super._name;
  if (name)
  {
    v7 = [(NSString *)name copy];
    [v3 setObject:v7 forKey:@"nm"];
  }

  model = self->super._model;
  if (model)
  {
    v9 = [(NSString *)model copy];
    [v3 setObject:v9 forKey:@"md"];
  }

  accountID = self->super._accountID;
  if (accountID)
  {
    v11 = [(NSString *)accountID copy];
    [v3 setObject:v11 forKey:@"aid"];
  }

  accountAltDSID = self->super._accountAltDSID;
  if (accountAltDSID)
  {
    v13 = [(NSString *)accountAltDSID copy];
    [v3 setObject:v13 forKey:@"altDSID"];
  }

  v14 = [v3 copy];

  return v14;
}

@end