@interface RPIdentity
+ (BOOL)_sepBackedIdentityEnabled;
+ (id)nullIdentity;
- (BOOL)_equalsSEPPrivateKey:(__SecKey *)key;
- (BOOL)signDataPtr:(const void *)ptr dataLen:(unint64_t)len signatureBytes:(unsigned __int8)bytes[64] error:(id *)error;
- (BOOL)verifyAuthTag:(id)tag data:(id)data type:(int)type error:(id *)error;
- (BOOL)verifyAuthTagPtr:(const void *)ptr authTagLen:(unint64_t)len dataPtr:(const void *)dataPtr dataLen:(unint64_t)dataLen type:(int)type error:(id *)error;
- (BOOL)verifySignature:(id)signature data:(id)data error:(id *)error;
- (BOOL)verifySignaturePtr:(const void *)ptr signatureLen:(unint64_t)len dataPtr:(const void *)dataPtr dataLen:(unint64_t)dataLen error:(id *)error;
- (RPIdentity)initWithCoder:(id)coder;
- (RPIdentity)initWithPairedPeer:(id)peer type:(int)type;
- (RPIdentity)initWithType:(int)type;
- (id)_edPKDataFromSEPPrivateKey:(__SecKey *)key;
- (id)authTagForData:(id)data type:(int)type error:(id *)error;
- (id)descriptionWithLevel:(int)level;
- (id)signData:(id)data error:(id *)error;
- (unsigned)compareWithRPIdentity:(id)identity;
- (unsigned)updateWithKeychainItem:(id)item error:(id *)error;
- (unsigned)updateWithRPMessage:(id)message error:(id *)error;
- (unsigned)updateWithSEPPrivateKey:(__SecKey *)key;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation RPIdentity

+ (id)nullIdentity
{
  if (nullIdentity_sOnce != -1)
  {
    +[RPIdentity nullIdentity];
  }

  v3 = nullIdentity_sObj;

  return v3;
}

void __26__RPIdentity_nullIdentity__block_invoke()
{
  v0 = objc_alloc_init(RPIdentity);
  v1 = nullIdentity_sObj;
  nullIdentity_sObj = v0;
}

- (RPIdentity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = RPIdentity;
  v5 = [(RPIdentity *)&v26 init];
  if (v5)
  {
    objc_opt_class();
    objc_opt_class();
    NSDecodeNSDictionaryOfClassesIfPresent();
    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v6 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v7 = v6;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v10;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v11;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    if ([v13 containsValueForKey:@"ff"])
    {
      v5->_featureFlags = [v13 decodeInt64ForKey:@"ff"];
    }

    v14 = v13;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v15 = v14;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v16 = v15;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v17 = v16;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v18 = v17;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v19 = v18;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v20 = v19;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v27 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_revisionID = v27;
    }

    v21 = v20;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v22 = v21;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v23 = v22;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v27 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_type = v27;
    }

    v27 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v5->_source = v27;
    }

    v24 = v5;
  }

  return v5;
}

- (RPIdentity)initWithType:(int)type
{
  v15 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = RPIdentity;
  v4 = [(RPIdentity *)&v12 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = type;
    if ((type & 0xFFFFFFFB) == 0xA)
    {
      cced25519_make_key_pair_compat();
      v6 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v14 length:32];
      edPKData = v5->_edPKData;
      v5->_edPKData = v6;

      v8 = [MEMORY[0x1E695DEF0] _newZeroingDataWithBytes:__s length:32];
      edSKData = v5->_edSKData;
      v5->_edSKData = v8;

      memset_s(__s, 0x20uLL, 0, 0x20uLL);
    }

    v10 = v5;
  }

  return v5;
}

- (RPIdentity)initWithPairedPeer:(id)peer type:(int)type
{
  peerCopy = peer;
  v28.receiver = self;
  v28.super_class = RPIdentity;
  v7 = [(RPIdentity *)&v28 init];
  if (v7)
  {
    identifier = [peerCopy identifier];
    uUIDString = [identifier UUIDString];
    identifier = v7->_identifier;
    v7->_identifier = uUIDString;

    v7->_type = type;
    altIRK = [peerCopy altIRK];
    deviceIRKData = v7->_deviceIRKData;
    v7->_deviceIRKData = altIRK;

    publicKey = [peerCopy publicKey];
    edPKData = v7->_edPKData;
    v7->_edPKData = publicKey;

    identifier2 = [peerCopy identifier];
    uUIDString2 = [identifier2 UUIDString];
    idsDeviceID = v7->_idsDeviceID;
    v7->_idsDeviceID = uUIDString2;

    model = [peerCopy model];
    model = v7->_model;
    v7->_model = model;

    name = [peerCopy name];
    name = v7->_name;
    v7->_name = name;

    v22 = [peerCopy acl];
    acl = v7->_acl;
    v7->_acl = v22;

    info = [peerCopy info];
    v25 = [info valueForKey:@"RPIdentityFeatureFlags"];

    if (v25)
    {
      v7->_featureFlags = [v25 unsignedLongValue];
    }

    v26 = v7;
  }

  return v7;
}

- (void)dealloc
{
  sepPrivateKey = self->_sepPrivateKey;
  if (sepPrivateKey)
  {
    CFRelease(sepPrivateKey);
  }

  v4.receiver = self;
  v4.super_class = RPIdentity;
  [(RPIdentity *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  acl = self->_acl;
  v29 = coderCopy;
  if (acl)
  {
    [coderCopy encodeObject:acl forKey:@"acl"];
    coderCopy = v29;
  }

  accessGroups = self->_accessGroups;
  if (accessGroups)
  {
    [v29 encodeObject:accessGroups forKey:@"ag"];
    coderCopy = v29;
  }

  accountAltDSID = self->_accountAltDSID;
  if (accountAltDSID)
  {
    [v29 encodeObject:accountAltDSID forKey:@"altDSID"];
    coderCopy = v29;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    [v29 encodeObject:accountID forKey:@"aid"];
    coderCopy = v29;
  }

  allUsedSendersKnownAliases = self->_allUsedSendersKnownAliases;
  if (allUsedSendersKnownAliases)
  {
    [v29 encodeObject:allUsedSendersKnownAliases forKey:@"allSKAs"];
    coderCopy = v29;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    [v29 encodeObject:contactID forKey:@"cnid"];
    coderCopy = v29;
  }

  dateAdded = self->_dateAdded;
  if (dateAdded)
  {
    [v29 encodeObject:dateAdded forKey:@"dtAdd"];
    coderCopy = v29;
  }

  deviceIRKData = self->_deviceIRKData;
  if (deviceIRKData)
  {
    [v29 encodeObject:deviceIRKData forKey:@"dIRK"];
    coderCopy = v29;
  }

  edPKData = self->_edPKData;
  if (edPKData)
  {
    [v29 encodeObject:edPKData forKey:@"edPK"];
    coderCopy = v29;
  }

  edSKData = self->_edSKData;
  if (edSKData)
  {
    [v29 encodeObject:edSKData forKey:@"edSK"];
    coderCopy = v29;
  }

  featureFlags = self->_featureFlags;
  if (featureFlags)
  {
    [v29 encodeInt64:featureFlags forKey:@"ff"];
    coderCopy = v29;
  }

  homeKitUserIdentifier = self->_homeKitUserIdentifier;
  if (homeKitUserIdentifier)
  {
    [v29 encodeObject:homeKitUserIdentifier forKey:@"hkUID"];
    coderCopy = v29;
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [v29 encodeObject:identifier forKey:@"id"];
    coderCopy = v29;
  }

  idsDeviceID = self->_idsDeviceID;
  if (idsDeviceID)
  {
    [v29 encodeObject:idsDeviceID forKey:@"idsD"];
    coderCopy = v29;
  }

  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    [v29 encodeObject:mediaRemoteID forKey:@"MRI"];
    coderCopy = v29;
  }

  mediaRouteID = self->_mediaRouteID;
  if (mediaRouteID)
  {
    [v29 encodeObject:mediaRouteID forKey:@"MRtI"];
    coderCopy = v29;
  }

  model = self->_model;
  if (model)
  {
    [v29 encodeObject:model forKey:@"md"];
    coderCopy = v29;
  }

  name = self->_name;
  if (name)
  {
    [v29 encodeObject:name forKey:@"nm"];
    coderCopy = v29;
  }

  revisionID = self->_revisionID;
  if (revisionID)
  {
    [v29 encodeInt64:revisionID forKey:@"rev"];
    coderCopy = v29;
  }

  sendersKnownAlias = self->_sendersKnownAlias;
  if (sendersKnownAlias)
  {
    [v29 encodeObject:sendersKnownAlias forKey:@"ska"];
    coderCopy = v29;
  }

  btIRKData = self->_btIRKData;
  if (btIRKData)
  {
    [v29 encodeObject:btIRKData forKey:@"bIRK"];
    coderCopy = v29;
  }

  btAddress = self->_btAddress;
  if (btAddress)
  {
    [v29 encodeObject:btAddress forKey:@"bAdd"];
    coderCopy = v29;
  }

  type = self->_type;
  if (type)
  {
    [v29 encodeInteger:type forKey:@"ty"];
    coderCopy = v29;
  }

  source = self->_source;
  if (source)
  {
    [v29 encodeInteger:source forKey:@"src"];
    coderCopy = v29;
  }
}

- (id)descriptionWithLevel:(int)level
{
  v4 = shouldPrintSensitiveData(self, a2);
  v125 = 0;
  NSAppendPrintF(&v125, "RPIdentity");
  v5 = v125;
  v6 = v5;
  type = self->_type;
  if (type)
  {
    v124 = v5;
    if (type > 0x10)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_1E7C94770[type - 1];
    }

    NSAppendPrintF(&v124, ", Type %s", v8);
    v9 = v124;

    v6 = v9;
  }

  v10 = self->_identifier;
  v11 = self->_idsDeviceID;
  if (([(NSString *)v11 isEqual:v10]& 1) != 0)
  {
    v12 = v10;
    v10 = 0;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_11;
    }

    v123 = v6;
    v13 = formatSensitiveData(", ID ", v4);
    NSAppendPrintF(&v123, v13, v10);
    v14 = v123;
    v12 = v6;
    v6 = v14;
  }

LABEL_11:
  if (v11)
  {
    v122 = v6;
    v15 = formatSensitiveData(", IDS ", v4);
    NSAppendPrintF(&v122, v15, v11);
    v16 = v122;

    v6 = v16;
  }

  accountAltDSID = self->_accountAltDSID;
  if (accountAltDSID)
  {
    v121 = v6;
    v18 = accountAltDSID;
    v19 = formatSensitiveData(", AccountAltDSID ", v4);
    NSAppendPrintF(&v121, v19, v18);
    v20 = v121;

    v6 = v20;
  }

  accountID = self->_accountID;
  if (accountID)
  {
    v120 = v6;
    v22 = accountID;
    v23 = formatSensitiveData(", AID ", v4);
    NSAppendPrintF(&v120, v23, v22);
    v24 = v120;

    v6 = v24;
  }

  name = self->_name;
  if (name)
  {
    v119 = v6;
    v26 = name;
    v27 = formatSensitiveData(", Nm ", v4);
    NSAppendPrintF(&v119, v27, v26);
    v28 = v119;

    v6 = v28;
  }

  homeKitUserIdentifier = self->_homeKitUserIdentifier;
  if (homeKitUserIdentifier)
  {
    v118 = v6;
    v30 = homeKitUserIdentifier;
    v31 = formatSensitiveData(", HKUID ", v4);
    NSAppendPrintF(&v118, v31, v30);
    v32 = v118;

    v6 = v32;
  }

  mediaRemoteID = self->_mediaRemoteID;
  if (mediaRemoteID)
  {
    v117 = v6;
    v34 = mediaRemoteID;
    v35 = formatSensitiveData(", MRI ", v4);
    NSAppendPrintF(&v117, v35, v34);
    v36 = v117;

    v6 = v36;
  }

  sendersKnownAlias = self->_sendersKnownAlias;
  if (sendersKnownAlias)
  {
    v116 = v6;
    v38 = sendersKnownAlias;
    v39 = formatSensitiveData(", SKA ", v4);
    NSAppendPrintF(&v116, v39, v38);
    v40 = v116;

    v6 = v40;
  }

  model = self->_model;
  if (model)
  {
    v115 = v6;
    v42 = model;
    v43 = formatSensitiveData(", Md ", v4);
    NSAppendPrintF(&v115, v43, v42);
    v44 = v115;

    v6 = v44;
  }

  v45 = self->_mediaRouteID;
  v46 = v45;
  if (v45)
  {
    if ([(NSString *)v45 isEqual:self->_identifier])
    {
      v114 = v6;
      v47 = &v114;
      NSAppendPrintF(&v114, ", MRtI ~", v96);
    }

    else
    {
      v113 = v6;
      v48 = formatSensitiveData(", MRtI ", v4);
      v47 = &v113;
      NSAppendPrintF(&v113, v48, v46);
    }

    v49 = *v47;

    v6 = v49;
  }

  contactID = self->_contactID;
  if (contactID)
  {
    v112 = v6;
    v51 = contactID;
    v52 = formatSensitiveData(", CNID ", v4);
    NSAppendPrintF(&v112, v52, v51);
    v53 = v112;

    v6 = v53;
  }

  allUsedSendersKnownAliases = self->_allUsedSendersKnownAliases;
  if (allUsedSendersKnownAliases)
  {
    v55 = allUsedSendersKnownAliases;
    v56 = [(NSArray *)v55 componentsJoinedByString:@" "];
    v111 = v6;
    v57 = formatSensitiveData(", Used SKAs ", v4);
    NSAppendPrintF(&v111, v57, v56);
    v58 = v111;

    v6 = v58;
  }

  v110 = v6;
  NSAppendPrintF(&v110, ", Rev %u", self->_revisionID);
  v59 = v110;

  if (v4)
  {
    deviceIRKData = self->_deviceIRKData;
    if (deviceIRKData)
    {
      v109 = v59;
      v61 = deviceIRKData;
      NSAppendPrintF(&v109, ", dIRK %{mask}", v61);
      v62 = v109;

      v59 = v62;
    }

    edPKData = self->_edPKData;
    if (edPKData)
    {
      v108 = v59;
      v64 = edPKData;
      NSAppendPrintF(&v108, ", EdPK <%.3@> %d B", v64, [(NSData *)v64 length]);
      v65 = v108;

      v59 = v65;
    }

    edSKData = self->_edSKData;
    if (edSKData)
    {
      v107 = v59;
      v67 = edSKData;
      NSAppendPrintF(&v107, ", EdSK %d B", [(NSData *)v67 length]);
      v68 = v107;

      v59 = v68;
    }

    if (self->_sepPrivateKey)
    {
      v106 = v59;
      NSAppendPrintF(&v106, ", SEP");
      v69 = v106;

      v59 = v69;
    }

    btIRKData = self->_btIRKData;
    if (btIRKData)
    {
      v105 = v59;
      v71 = btIRKData;
      NSAppendPrintF(&v105, ", bIRK %{mask}", v71);
      v72 = v105;

      v59 = v72;
    }

    btAddress = self->_btAddress;
    if (btAddress)
    {
      v104 = v59;
      v74 = btAddress;
      NSAppendPrintF(&v104, ", bAdd %{mask}'", v74);
      v75 = v104;

      v59 = v75;
    }

    dateAdded = self->_dateAdded;
    if (dateAdded)
    {
      v103 = v59;
      v77 = dateAdded;
      NSAppendPrintF(&v103, ", Added %@", v77);
      v78 = v103;

      v59 = v78;
    }

    dateRequested = self->_dateRequested;
    if (dateRequested)
    {
      v102 = v59;
      v80 = dateRequested;
      NSAppendPrintF(&v102, ", Req %@", v80);
      v81 = v102;

      v59 = v81;
    }

    dateAcknowledged = self->_dateAcknowledged;
    if (dateAcknowledged)
    {
      v101 = v59;
      v83 = dateAcknowledged;
      NSAppendPrintF(&v101, ", Ack %@", v83);
      v84 = v101;

      v59 = v84;
    }

    dateRemoved = self->_dateRemoved;
    if (dateRemoved)
    {
      v100 = v59;
      v86 = dateRemoved;
      NSAppendPrintF(&v100, ", Removed %@", v86);
      v87 = v100;

      v59 = v87;
    }

    featureFlags = self->_featureFlags;
    if (featureFlags)
    {
      v99 = v59;
      NSAppendPrintF(&v99, ", FFlags %#ll{flags}", featureFlags, &unk_1B6F2E520);
      v89 = v99;

      v59 = v89;
    }

    acl = self->_acl;
    if (acl)
    {
      v98 = v59;
      v91 = acl;
      NSAppendPrintF(&v98, ", ACL %@", v91);
      v92 = v98;

      v59 = v92;
    }
  }

  v97 = v59;
  NSAppendPrintF(&v97, ", Src %u", self->_source);
  v93 = v97;

  v94 = v93;
  return v93;
}

- (unsigned)compareWithRPIdentity:(id)identity
{
  identityCopy = identity;
  v5 = [identityCopy acl];
  acl = self->_acl;
  v7 = v5;
  v8 = acl;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_6;
  }

  if ((v7 != 0) != (v8 == 0))
  {
    v10 = [(NSDictionary *)v7 isEqual:v8];

    if (!v10)
    {
      goto LABEL_8;
    }

LABEL_6:
    v126 = 0;
    goto LABEL_9;
  }

LABEL_8:
  v126 = 0x200000;
LABEL_9:
  accessGroups = [identityCopy accessGroups];
  accessGroups = self->_accessGroups;
  v13 = accessGroups;
  v14 = accessGroups;
  v15 = v14;
  if (v13 == v14)
  {
    v125 = 1;
  }

  else if ((v13 != 0) == (v14 == 0))
  {
    v125 = 0;
  }

  else
  {
    v125 = [(NSArray *)v13 isEqual:v14];
  }

  accountAltDSID = [identityCopy accountAltDSID];
  accountAltDSID = self->_accountAltDSID;
  v18 = accountAltDSID;
  v19 = accountAltDSID;
  v20 = v19;
  if (v18 == v19)
  {
    v124 = 1;
  }

  else if ((v18 != 0) == (v19 == 0))
  {
    v124 = 0;
  }

  else
  {
    v124 = [(NSString *)v18 isEqual:v19];
  }

  accountID = [identityCopy accountID];
  accountID = self->_accountID;
  v23 = accountID;
  v24 = accountID;
  v25 = v24;
  if (v23 == v24)
  {
    v123 = 1;
  }

  else if ((v23 != 0) == (v24 == 0))
  {
    v123 = 0;
  }

  else
  {
    v123 = [(NSString *)v23 isEqual:v24];
  }

  allUsedSendersKnownAliases = [identityCopy allUsedSendersKnownAliases];
  allUsedSendersKnownAliases = self->_allUsedSendersKnownAliases;
  v28 = allUsedSendersKnownAliases;
  v29 = allUsedSendersKnownAliases;
  v30 = v29;
  if (v28 == v29)
  {
    v122 = 1;
  }

  else if ((v28 != 0) == (v29 == 0))
  {
    v122 = 0;
  }

  else
  {
    v122 = [(NSArray *)v28 isEqual:v29];
  }

  contactID = [identityCopy contactID];
  contactID = self->_contactID;
  v33 = contactID;
  v34 = contactID;
  v35 = v34;
  if (v33 == v34)
  {
    v121 = 1;
  }

  else if ((v33 != 0) == (v34 == 0))
  {
    v121 = 0;
  }

  else
  {
    v121 = [(NSString *)v33 isEqual:v34];
  }

  deviceIRKData = [identityCopy deviceIRKData];
  deviceIRKData = self->_deviceIRKData;
  v38 = deviceIRKData;
  v39 = deviceIRKData;
  v40 = v39;
  if (v38 == v39)
  {
    v120 = 1;
  }

  else if ((v38 != 0) == (v39 == 0))
  {
    v120 = 0;
  }

  else
  {
    v120 = [(NSData *)v38 isEqual:v39];
  }

  edPKData = [identityCopy edPKData];
  edPKData = self->_edPKData;
  v43 = edPKData;
  v44 = edPKData;
  v45 = v44;
  if (v43 == v44)
  {
    v119 = 1;
  }

  else if ((v43 != 0) == (v44 == 0))
  {
    v119 = 0;
  }

  else
  {
    v119 = [(NSData *)v43 isEqual:v44];
  }

  edSKData = [identityCopy edSKData];
  edSKData = self->_edSKData;
  v48 = edSKData;
  v49 = edSKData;
  v50 = v49;
  if (v48 == v49)
  {
    v118 = 1;
  }

  else if ((v48 != 0) == (v49 == 0))
  {
    v118 = 0;
  }

  else
  {
    v118 = [(NSData *)v48 isEqual:v49];
  }

  featureFlags = [identityCopy featureFlags];
  featureFlags = self->_featureFlags;
  v117 = featureFlags;
  homeKitUserIdentifier = [identityCopy homeKitUserIdentifier];
  homeKitUserIdentifier = self->_homeKitUserIdentifier;
  v54 = homeKitUserIdentifier;
  v55 = homeKitUserIdentifier;
  v56 = v55;
  if (v54 == v55)
  {
    v115 = 1;
  }

  else if ((v54 != 0) == (v55 == 0))
  {
    v115 = 0;
  }

  else
  {
    v115 = [(NSUUID *)v54 isEqual:v55];
  }

  identifier = [identityCopy identifier];
  identifier = self->_identifier;
  v59 = identifier;
  v60 = identifier;
  v61 = v60;
  if (v59 == v60)
  {
    v114 = 1;
  }

  else if ((v59 != 0) == (v60 == 0))
  {
    v114 = 0;
  }

  else
  {
    v114 = [(NSString *)v59 isEqual:v60];
  }

  idsDeviceID = [identityCopy idsDeviceID];
  idsDeviceID = self->_idsDeviceID;
  v64 = idsDeviceID;
  v65 = idsDeviceID;
  v66 = v65;
  if (v64 == v65)
  {
    v113 = 1;
  }

  else if ((v64 != 0) == (v65 == 0))
  {
    v113 = 0;
  }

  else
  {
    v113 = [(NSString *)v64 isEqual:v65];
  }

  mediaRemoteID = [identityCopy mediaRemoteID];
  mediaRemoteID = self->_mediaRemoteID;
  v69 = mediaRemoteID;
  v70 = mediaRemoteID;
  v71 = v70;
  if (v69 == v70)
  {
    v112 = 1;
  }

  else if ((v69 != 0) == (v70 == 0))
  {
    v112 = 0;
  }

  else
  {
    v112 = [(NSString *)v69 isEqual:v70];
  }

  mediaRouteID = [identityCopy mediaRouteID];
  mediaRouteID = self->_mediaRouteID;
  v74 = mediaRouteID;
  v75 = mediaRouteID;
  v76 = v75;
  if (v74 == v75)
  {
    v77 = 1;
  }

  else if ((v74 != 0) == (v75 == 0))
  {
    v77 = 0;
  }

  else
  {
    v77 = [(NSString *)v74 isEqual:v75];
  }

  model = [identityCopy model];
  model = self->_model;
  v80 = model;
  v81 = model;
  v82 = v81;
  if (v80 == v81)
  {
    v83 = 1;
  }

  else if ((v80 != 0) == (v81 == 0))
  {
    v83 = 0;
  }

  else
  {
    v83 = [(NSString *)v80 isEqual:v81];
  }

  name = [identityCopy name];
  name = self->_name;
  v86 = name;
  v87 = name;
  v88 = v87;
  if (v86 == v87)
  {
    v89 = 1;
  }

  else if ((v86 != 0) == (v87 == 0))
  {
    v89 = 0;
  }

  else
  {
    v89 = [(NSString *)v86 isEqual:v87];
  }

  sendersKnownAlias = [identityCopy sendersKnownAlias];
  sendersKnownAlias = self->_sendersKnownAlias;
  v92 = sendersKnownAlias;
  v93 = sendersKnownAlias;
  v94 = v93;
  if (v92 == v93)
  {
    v95 = 1;
  }

  else if ((v92 != 0) == (v93 == 0))
  {
    v95 = 0;
  }

  else
  {
    v95 = [(NSString *)v92 isEqual:v93];
  }

  btIRKData = [identityCopy btIRKData];
  btIRKData = self->_btIRKData;
  v98 = btIRKData;
  v99 = btIRKData;
  v100 = v99;
  if (v98 == v99)
  {
    v101 = 1;
  }

  else if ((v98 != 0) == (v99 == 0))
  {
    v101 = 0;
  }

  else
  {
    v101 = [(NSData *)v98 isEqual:v99];
  }

  btAddress = [identityCopy btAddress];
  btAddress = self->_btAddress;
  v104 = btAddress;
  v105 = btAddress;
  v106 = v105;
  if (v104 == v105)
  {
    v107 = 1;
  }

  else if ((v104 != 0) == (v105 == 0))
  {
    v107 = 0;
  }

  else
  {
    v107 = [(NSData *)v104 isEqual:v105];
  }

  v108 = v126 | 0x80000;
  if (v125)
  {
    v108 = v126;
  }

  if ((v124 & 1) == 0)
  {
    v108 |= 0x2000000u;
  }

  if ((v123 & 1) == 0)
  {
    v108 |= 0x2000u;
  }

  if ((v122 & 1) == 0)
  {
    v108 |= 0x1000000u;
  }

  if ((v121 & 1) == 0)
  {
    v108 |= 0x8000u;
  }

  if ((v120 & 1) == 0)
  {
    v108 |= 4u;
  }

  if ((v119 & 1) == 0)
  {
    v108 |= 8u;
  }

  if ((v118 & 1) == 0)
  {
    v108 |= 0x10u;
  }

  if (v117 != featureFlags)
  {
    v108 |= 0x400u;
  }

  if ((v115 & 1) == 0)
  {
    v108 |= 0x100000u;
  }

  if ((v114 & 1) == 0)
  {
    v108 |= 0x20u;
  }

  if ((v113 & 1) == 0)
  {
    v108 |= 0x40u;
  }

  if ((v112 & 1) == 0)
  {
    v108 |= 0x10000u;
  }

  if ((v77 & 1) == 0)
  {
    v108 |= 0x20000u;
  }

  if ((v83 & 1) == 0)
  {
    v108 |= 0x80u;
  }

  if ((v89 & 1) == 0)
  {
    v108 |= 0x100u;
  }

  if ((v95 & 1) == 0)
  {
    v108 |= 0x40000u;
  }

  if (v101)
  {
    v109 = v108;
  }

  else
  {
    v109 = v108 | 0x400000;
  }

  if ((v107 & 1) == 0)
  {
    v109 |= 0x800000u;
  }

  if (!-[RPIdentity _equalsSEPPrivateKey:](self, "_equalsSEPPrivateKey:", [identityCopy sepPrivateKey]))
  {
    v109 |= 0x4000000u;
  }

  if ([identityCopy type] == self->_type)
  {
    v110 = v109;
  }

  else
  {
    v110 = v109 | 0x200;
  }

  return v110;
}

- (unsigned)updateWithKeychainItem:(id)item error:(id *)error
{
  itemCopy = item;
  metadata = [itemCopy metadata];
  secrets = [itemCopy secrets];
  identifier = [itemCopy identifier];
  v15 = identifier;
  if (!identifier)
  {
    if (error)
    {
      *error = RPErrorF(4294960588, "No identifier", v9, v10, v11, v12, v13, v14, v164);
    }

    goto LABEL_8;
  }

  identifier = self->_identifier;
  v17 = identifier;
  v18 = identifier;
  v19 = v18;
  if (v17 == v18)
  {
  }

  else
  {
    if (!v18)
    {

LABEL_12:
      objc_storeStrong(&self->_identifier, v15);
      v21 = 32;
      goto LABEL_13;
    }

    v20 = [(NSString *)v17 isEqual:v18];

    if ((v20 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v21 = 0;
LABEL_13:
  type = [itemCopy type];
  v184 = itemCopy;
  v170 = v15;
  if ([type isEqual:@"RPIdentity-FamilyAccount"])
  {
    v180 = 0;
    v23 = 3;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-FamilyDevice"])
  {
    v180 = 0;
    v23 = 4;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-FriendAccount"])
  {
    v180 = 0;
    v23 = 5;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-FriendDevice"])
  {
    v180 = 0;
    v23 = 6;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-PairedAccount"])
  {
    v180 = 0;
    v23 = 7;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-PairedDevice"])
  {
    v180 = 0;
    v23 = 8;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-SameAccountDevice"])
  {
    v180 = 0;
    v23 = 2;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-Self"])
  {
    v180 = 0;
    v23 = 1;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-SharedTVUserDevice"])
  {
    v180 = 0;
    v23 = 12;
    goto LABEL_33;
  }

  if ([type isEqual:@"RPIdentity-AdHocPaired"])
  {
    v23 = 15;
    v180 = 1;
LABEL_33:

    v178 = v23;
    if (v23 != self->_type)
    {
      self->_type = v23;
      v21 |= 0x200u;
    }

    objc_opt_class();
    v24 = NSDictionaryGetNSArrayOfClass();
    accessGroups = self->_accessGroups;
    v26 = v24;
    v27 = accessGroups;
    v28 = v27;
    v169 = v26;
    if (v26 == v27)
    {

      goto LABEL_42;
    }

    if ((v26 != 0) != (v27 == 0))
    {
      v29 = v26;
      v30 = [(NSArray *)v26 isEqual:v27];

      if (v30)
      {
LABEL_42:
        CFStringGetTypeID();
        v31 = CFDictionaryGetTypedValue();
        if (![v31 length])
        {
          goto LABEL_50;
        }

        accountAltDSID = self->_accountAltDSID;
        v33 = v31;
        v34 = accountAltDSID;
        v35 = v34;
        if (v33 == v34)
        {

          goto LABEL_50;
        }

        if ((v33 != 0) != (v34 == 0))
        {
          v36 = [(NSString *)v33 isEqual:v34];

          if (v36)
          {
LABEL_50:
            CFStringGetTypeID();
            v37 = CFDictionaryGetTypedValue();
            v183 = v37;
            if (![v37 length])
            {
              goto LABEL_58;
            }

            accountID = self->_accountID;
            v39 = v37;
            v40 = accountID;
            v41 = v40;
            if (v39 == v40)
            {

              goto LABEL_58;
            }

            if ((v39 != 0) != (v40 == 0))
            {
              v42 = [(NSString *)v39 isEqual:v40];

              if (v42)
              {
LABEL_58:
                CFStringGetTypeID();
                v43 = CFDictionaryGetTypedValue();
                v182 = v43;
                if (![v43 length])
                {
                  goto LABEL_66;
                }

                contactID = self->_contactID;
                v45 = v43;
                v46 = contactID;
                v47 = v46;
                if (v45 == v46)
                {

                  goto LABEL_66;
                }

                if ((v45 != 0) != (v46 == 0))
                {
                  v48 = [(NSString *)v45 isEqual:v46];

                  if (v48)
                  {
LABEL_66:
                    CFDateGetTypeID();
                    v49 = CFDictionaryGetTypedValue();
                    obj = v49;
                    if (!v49)
                    {
                      goto LABEL_74;
                    }

                    dateAcknowledged = self->_dateAcknowledged;
                    v51 = v49;
                    v52 = dateAcknowledged;
                    v53 = v52;
                    if (v51 == v52)
                    {

                      goto LABEL_74;
                    }

                    if (v52)
                    {
                      v54 = [(NSDate *)v51 isEqual:v52];

                      if (v54)
                      {
LABEL_74:
                        CFDateGetTypeID();
                        v55 = CFDictionaryGetTypedValue();
                        v174 = v55;
                        if (!v55)
                        {
                          goto LABEL_82;
                        }

                        dateAdded = self->_dateAdded;
                        v57 = v55;
                        v58 = dateAdded;
                        v59 = v58;
                        if (v57 == v58)
                        {

                          goto LABEL_82;
                        }

                        if (v58)
                        {
                          v60 = [(NSDate *)v57 isEqual:v58];

                          if (v60)
                          {
LABEL_82:
                            CFDateGetTypeID();
                            v61 = CFDictionaryGetTypedValue();
                            dateRemoved = self->_dateRemoved;
                            v63 = v61;
                            v64 = dateRemoved;
                            v65 = v64;
                            v167 = v63;
                            if (v63 == v64)
                            {

                              goto LABEL_89;
                            }

                            if ((v63 != 0) != (v64 == 0))
                            {
                              v66 = v31;
                              v67 = v17;
                              v68 = v63;
                              v69 = [(NSDate *)v63 isEqual:v64];

                              v17 = v67;
                              v31 = v66;
                              if (v69)
                              {
LABEL_89:
                                CFDateGetTypeID();
                                v70 = CFDictionaryGetTypedValue();
                                v71 = v70;
                                if (!v70)
                                {
                                  goto LABEL_97;
                                }

                                dateRequested = self->_dateRequested;
                                v73 = v70;
                                v74 = dateRequested;
                                v75 = v74;
                                if (v73 == v74)
                                {

                                  goto LABEL_97;
                                }

                                if (v74)
                                {
                                  v76 = [(NSDate *)v73 isEqual:v74];

                                  if (v76)
                                  {
LABEL_97:
                                    v77 = CFDictionaryGetCFDataOfLength();
                                    v173 = v77;
                                    if (!v77)
                                    {
                                      goto LABEL_105;
                                    }

                                    deviceIRKData = self->_deviceIRKData;
                                    v79 = v77;
                                    v80 = deviceIRKData;
                                    v81 = v80;
                                    if (v79 == v80)
                                    {

                                      goto LABEL_105;
                                    }

                                    if (v80)
                                    {
                                      v82 = [(NSData *)v79 isEqual:v80];

                                      if (v82)
                                      {
LABEL_105:
                                        v83 = CFDictionaryGetCFDataOfLength();
                                        v172 = v83;
                                        if (!v83)
                                        {
                                          goto LABEL_113;
                                        }

                                        edPKData = self->_edPKData;
                                        v85 = v83;
                                        v86 = edPKData;
                                        v87 = v86;
                                        if (v85 == v86)
                                        {

                                          goto LABEL_113;
                                        }

                                        if (v86)
                                        {
                                          v88 = [(NSData *)v85 isEqual:v86];

                                          if (v88)
                                          {
LABEL_113:
                                            v89 = CFDictionaryGetCFDataOfLength();
                                            v171 = v89;
                                            if (!v89)
                                            {
                                              goto LABEL_121;
                                            }

                                            edSKData = self->_edSKData;
                                            v91 = v89;
                                            v92 = edSKData;
                                            v93 = v92;
                                            if (v91 == v92)
                                            {

                                              goto LABEL_121;
                                            }

                                            if (v92)
                                            {
                                              v94 = [(NSData *)v91 isEqual:v92];

                                              if (v94)
                                              {
LABEL_121:
                                                Int64 = CFDictionaryGetInt64();
                                                if (Int64 != self->_featureFlags)
                                                {
                                                  self->_featureFlags = Int64;
                                                  v21 |= 0x400u;
                                                }

                                                v166 = v71;
                                                v96 = (v178 & 0xFFFFFFFB) == 2 || (v178 & 7) == 4;
                                                v97 = v180;
                                                if (v96)
                                                {
                                                  v97 = 1;
                                                }

                                                if (v97 == 1)
                                                {
                                                  v98 = v17;
                                                  itemCopy = v184;
                                                }

                                                else
                                                {
                                                  CFStringGetTypeID();
                                                  v98 = CFDictionaryGetTypedValue();
                                                  itemCopy = v184;
                                                  if (!v98)
                                                  {
                                                    v100 = 0;
                                                    goto LABEL_140;
                                                  }
                                                }

                                                idsDeviceID = self->_idsDeviceID;
                                                v100 = v98;
                                                v101 = idsDeviceID;
                                                v102 = v101;
                                                if (v100 == v101)
                                                {

                                                  goto LABEL_140;
                                                }

                                                if (v101)
                                                {
                                                  v103 = [(NSString *)v100 isEqual:v101];

                                                  if (v103)
                                                  {
LABEL_140:
                                                    CFStringGetTypeID();
                                                    v104 = CFDictionaryGetTypedValue();
                                                    v181 = v104;
                                                    if (![v104 length])
                                                    {
                                                      goto LABEL_148;
                                                    }

                                                    mediaRemoteID = self->_mediaRemoteID;
                                                    v106 = v104;
                                                    v107 = mediaRemoteID;
                                                    v108 = v107;
                                                    if (v106 == v107)
                                                    {

                                                      goto LABEL_148;
                                                    }

                                                    if ((v106 != 0) != (v107 == 0))
                                                    {
                                                      v109 = [(NSString *)v106 isEqual:v107];

                                                      if (v109)
                                                      {
LABEL_148:
                                                        CFStringGetTypeID();
                                                        v110 = CFDictionaryGetTypedValue();
                                                        v179 = v110;
                                                        if (![v110 length])
                                                        {
                                                          goto LABEL_156;
                                                        }

                                                        mediaRouteID = self->_mediaRouteID;
                                                        v112 = v110;
                                                        v113 = mediaRouteID;
                                                        v114 = v113;
                                                        if (v112 == v113)
                                                        {

                                                          goto LABEL_156;
                                                        }

                                                        if ((v112 != 0) != (v113 == 0))
                                                        {
                                                          v115 = [(NSString *)v112 isEqual:v113];

                                                          if (v115)
                                                          {
LABEL_156:
                                                            CFStringGetTypeID();
                                                            v116 = CFDictionaryGetTypedValue();
                                                            v177 = v116;
                                                            if (![v116 length])
                                                            {
                                                              goto LABEL_164;
                                                            }

                                                            model = self->_model;
                                                            v118 = v116;
                                                            v119 = model;
                                                            v120 = v119;
                                                            if (v118 == v119)
                                                            {

                                                              goto LABEL_164;
                                                            }

                                                            if ((v118 != 0) != (v119 == 0))
                                                            {
                                                              v121 = [(NSString *)v118 isEqual:v119];

                                                              if (v121)
                                                              {
LABEL_164:
                                                                name = [itemCopy name];
                                                                v176 = name;
                                                                v165 = v100;
                                                                if (![name length])
                                                                {
                                                                  goto LABEL_172;
                                                                }

                                                                name = self->_name;
                                                                v124 = name;
                                                                v125 = name;
                                                                v126 = v125;
                                                                if (v124 == v125)
                                                                {

                                                                  goto LABEL_172;
                                                                }

                                                                if ((v124 != 0) != (v125 == 0))
                                                                {
                                                                  v127 = [(NSString *)v124 isEqual:v125];

                                                                  if (v127)
                                                                  {
LABEL_172:
                                                                    self->_revisionID = CFDictionaryGetInt64Ranged();
                                                                    CFStringGetTypeID();
                                                                    v128 = CFDictionaryGetTypedValue();
                                                                    v168 = v31;
                                                                    if (![v128 length])
                                                                    {
                                                                      goto LABEL_180;
                                                                    }

                                                                    sendersKnownAlias = self->_sendersKnownAlias;
                                                                    v130 = v128;
                                                                    v131 = sendersKnownAlias;
                                                                    v132 = v131;
                                                                    if (v130 == v131)
                                                                    {

                                                                      goto LABEL_180;
                                                                    }

                                                                    if ((v130 != 0) != (v131 == 0))
                                                                    {
                                                                      v133 = [(NSString *)v130 isEqual:v131];

                                                                      if (v133)
                                                                      {
LABEL_180:
                                                                        objc_opt_class();
                                                                        v134 = NSDictionaryGetNSArrayOfClass();
                                                                        allUsedSendersKnownAliases = self->_allUsedSendersKnownAliases;
                                                                        v136 = v134;
                                                                        v137 = allUsedSendersKnownAliases;
                                                                        v138 = v137;
                                                                        if (v136 == v137)
                                                                        {

                                                                          goto LABEL_187;
                                                                        }

                                                                        if ((v136 != 0) != (v137 == 0))
                                                                        {
                                                                          v139 = [(NSArray *)v136 isEqual:v137];

                                                                          if (v139)
                                                                          {
LABEL_187:
                                                                            v140 = CFDictionaryGetInt64() != 0;
                                                                            if (self->_userAdded != v140)
                                                                            {
                                                                              self->_userAdded = v140;
                                                                              v21 |= 0x4000u;
                                                                            }

                                                                            v141 = CFDictionaryGetCFDataOfLength();
                                                                            v142 = v141;
                                                                            if (!v141)
                                                                            {
LABEL_198:
                                                                              v148 = CFDictionaryGetCFDataOfLength();
                                                                              v149 = v148;
                                                                              if (v148)
                                                                              {
                                                                                btAddress = self->_btAddress;
                                                                                p_btAddress = &self->_btAddress;
                                                                                v152 = v148;
                                                                                v153 = btAddress;
                                                                                v154 = v153;
                                                                                if (v152 != v153)
                                                                                {
                                                                                  if (v153)
                                                                                  {
                                                                                    v155 = [(NSData *)v152 isEqual:v153];

                                                                                    if (v155)
                                                                                    {
                                                                                      goto LABEL_206;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                  }

                                                                                  objc_storeStrong(p_btAddress, v149);
                                                                                  v21 |= 0x800000u;
LABEL_206:
                                                                                  itemCopy = v184;
                                                                                  goto LABEL_207;
                                                                                }
                                                                              }

LABEL_207:

                                                                              v15 = v170;
                                                                              goto LABEL_208;
                                                                            }

                                                                            btIRKData = self->_btIRKData;
                                                                            v144 = v141;
                                                                            v145 = btIRKData;
                                                                            v146 = v145;
                                                                            if (v144 == v145)
                                                                            {

                                                                              goto LABEL_198;
                                                                            }

                                                                            if (v145)
                                                                            {
                                                                              v147 = [(NSData *)v144 isEqual:v145];

                                                                              if (v147)
                                                                              {
                                                                                goto LABEL_197;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                            }

                                                                            objc_storeStrong(&self->_btIRKData, v142);
                                                                            v21 |= 0x400000u;
LABEL_197:
                                                                            itemCopy = v184;
                                                                            goto LABEL_198;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                        }

                                                                        objc_storeStrong(&self->_allUsedSendersKnownAliases, v134);
                                                                        v21 |= 0x1000000u;
                                                                        goto LABEL_187;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                    }

                                                                    objc_storeStrong(&self->_sendersKnownAlias, v128);
                                                                    v21 |= 0x40000u;
                                                                    goto LABEL_180;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                }

                                                                objc_storeStrong(&self->_name, v176);
                                                                v21 |= 0x100u;
                                                                goto LABEL_172;
                                                              }
                                                            }

                                                            else
                                                            {
                                                            }

                                                            objc_storeStrong(&self->_model, v116);
                                                            v21 |= 0x80u;
                                                            goto LABEL_164;
                                                          }
                                                        }

                                                        else
                                                        {
                                                        }

                                                        objc_storeStrong(&self->_mediaRouteID, v110);
                                                        v21 |= 0x20000u;
                                                        goto LABEL_156;
                                                      }
                                                    }

                                                    else
                                                    {
                                                    }

                                                    objc_storeStrong(&self->_mediaRemoteID, v104);
                                                    v21 |= 0x10000u;
                                                    goto LABEL_148;
                                                  }
                                                }

                                                else
                                                {
                                                }

                                                objc_storeStrong(&self->_idsDeviceID, v98);
                                                v21 |= 0x40u;
                                                goto LABEL_140;
                                              }
                                            }

                                            else
                                            {
                                            }

                                            objc_storeStrong(&self->_edSKData, v171);
                                            v21 |= 0x10u;
                                            goto LABEL_121;
                                          }
                                        }

                                        else
                                        {
                                        }

                                        objc_storeStrong(&self->_edPKData, v172);
                                        v21 |= 8u;
                                        goto LABEL_113;
                                      }
                                    }

                                    else
                                    {
                                    }

                                    objc_storeStrong(&self->_deviceIRKData, v173);
                                    v21 |= 4u;
                                    goto LABEL_105;
                                  }
                                }

                                else
                                {
                                }

                                objc_storeStrong(&self->_dateRequested, v71);
                                v21 |= 2u;
                                goto LABEL_97;
                              }
                            }

                            else
                            {
                            }

                            objc_storeStrong(&self->_dateRemoved, v61);
                            v21 |= 2u;
                            goto LABEL_89;
                          }
                        }

                        else
                        {
                        }

                        objc_storeStrong(&self->_dateAdded, v174);
                        v21 |= 2u;
                        goto LABEL_82;
                      }
                    }

                    else
                    {
                    }

                    objc_storeStrong(&self->_dateAcknowledged, obj);
                    v21 |= 2u;
                    goto LABEL_74;
                  }
                }

                else
                {
                }

                objc_storeStrong(&self->_contactID, v43);
                v21 |= 0x8000u;
                goto LABEL_66;
              }
            }

            else
            {
            }

            objc_storeStrong(&self->_accountID, v37);
            v21 |= 0x2000u;
            goto LABEL_58;
          }
        }

        else
        {
        }

        objc_storeStrong(&self->_accountAltDSID, v31);
        v21 |= 0x2000000u;
        goto LABEL_50;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_accessGroups, v24);
    v21 |= 0x80000u;
    goto LABEL_42;
  }

  if (error)
  {
    type2 = [itemCopy type];
    *error = RPErrorF(4294960540, "Unsupported type '%@'", v158, v159, v160, v161, v162, v163, type2);
  }

LABEL_8:
  v21 = 1;
LABEL_208:

  return v21;
}

- (unsigned)updateWithRPMessage:(id)message error:(id *)error
{
  messageCopy = message;
  v6 = CFDictionaryGetCFDataOfLength();
  if (!v6)
  {
    goto LABEL_5;
  }

  deviceIRKData = self->_deviceIRKData;
  v8 = v6;
  v9 = v8;
  if (deviceIRKData == v8)
  {

    v11 = 0;
  }

  else
  {
    if (deviceIRKData)
    {
      v10 = [(NSData *)deviceIRKData isEqual:v8];

      if (v10)
      {
LABEL_5:
        v11 = 0;
        goto LABEL_10;
      }
    }

    else
    {
    }

    v12 = v9;
    deviceIRKData = self->_deviceIRKData;
    self->_deviceIRKData = v12;
    v11 = 4;
  }

LABEL_10:
  v13 = CFDictionaryGetCFDataOfLength();
  if (!v13)
  {
    goto LABEL_18;
  }

  v14 = self->_edPKData;
  v15 = v13;
  v16 = v15;
  if (v14 == v15)
  {

    goto LABEL_18;
  }

  if (!v14)
  {

    goto LABEL_17;
  }

  v17 = [(NSData *)v14 isEqual:v15];

  if ((v17 & 1) == 0)
  {
LABEL_17:
    objc_storeStrong(&self->_edPKData, v13);
    v11 |= 8u;
  }

LABEL_18:

  CFStringGetTypeID();
  v18 = CFDictionaryGetTypedValue();
  if (v18)
  {
    v19 = self->_idsDeviceID;
    v20 = v18;
    v21 = v20;
    if (v19 == v20)
    {
    }

    else
    {
      if (v19)
      {
        v22 = [(NSString *)v19 isEqual:v20];

        if (v22)
        {
          goto LABEL_26;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_idsDeviceID, v18);
      v11 |= 0x40u;
    }
  }

LABEL_26:

  CFStringGetTypeID();
  v23 = CFDictionaryGetTypedValue();
  v24 = v23;
  if (v23 && [v23 length])
  {
    v25 = self->_model;
    v26 = v24;
    v27 = v26;
    if (v25 == v26)
    {
    }

    else
    {
      if (v25)
      {
        v28 = [(NSString *)v25 isEqual:v26];

        if (v28)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_model, v24);
      v11 |= 0x80u;
    }
  }

LABEL_35:

  CFStringGetTypeID();
  v29 = CFDictionaryGetTypedValue();
  v30 = v29;
  if (v29 && [v29 length])
  {
    v31 = self->_name;
    v32 = v30;
    v33 = v32;
    if (v31 == v32)
    {

      goto LABEL_44;
    }

    if (v31)
    {
      v34 = [(NSString *)v31 isEqual:v32];

      if (v34)
      {
        goto LABEL_44;
      }
    }

    else
    {
    }

    objc_storeStrong(&self->_name, v30);
    v11 |= 0x100u;
  }

LABEL_44:

  v35 = CFDictionaryGetCFDataOfLength();
  if (!v35)
  {
    goto LABEL_52;
  }

  v36 = self->_btIRKData;
  v37 = v35;
  v38 = v37;
  if (v36 == v37)
  {

    goto LABEL_52;
  }

  if (!v36)
  {

    goto LABEL_51;
  }

  v39 = [(NSData *)v36 isEqual:v37];

  if ((v39 & 1) == 0)
  {
LABEL_51:
    objc_storeStrong(&self->_btIRKData, v35);
    v11 |= 0x400000u;
  }

LABEL_52:

  v40 = CFDictionaryGetCFDataOfLength();
  if (v40)
  {
    v41 = self->_btAddress;
    v42 = v40;
    v43 = v42;
    if (v41 == v42)
    {
    }

    else
    {
      if (v41)
      {
        v44 = [(NSData *)v41 isEqual:v42];

        if (v44)
        {
          goto LABEL_60;
        }
      }

      else
      {
      }

      objc_storeStrong(&self->_btAddress, v40);
      v11 |= 0x800000u;
    }
  }

LABEL_60:

  return v11;
}

- (unsigned)updateWithSEPPrivateKey:(__SecKey *)key
{
  if (![(RPIdentity *)self _equalsSEPPrivateKey:?])
  {
    sepPrivateKey = self->_sepPrivateKey;
    if (sepPrivateKey)
    {
      CFRelease(sepPrivateKey);
    }

    self->_sepPrivateKey = key;
    if (!key)
    {
      return 0x4000000;
    }

    CFRetain(key);
    if (!self->_sepPrivateKey)
    {
      return 0x4000000;
    }

    v7 = [(RPIdentity *)self _edPKDataFromSEPPrivateKey:?];
    v8 = v7;
    if (v7)
    {
      edPKData = self->_edPKData;
      p_edPKData = &self->_edPKData;
      v11 = v7;
      v12 = edPKData;
      v13 = v12;
      if (v11 == v12)
      {
      }

      else
      {
        if (!v12)
        {

LABEL_16:
          objc_storeStrong(p_edPKData, v8);
          v5 = 67108872;
          goto LABEL_17;
        }

        v14 = [(NSData *)v11 isEqual:v12];

        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }
      }
    }

    v5 = 0x4000000;
LABEL_17:

    return v5;
  }

  return 0;
}

- (id)authTagForData:(id)data type:(int)type error:(id *)error
{
  v6 = *&type;
  dataCopy = data;
  v9 = self->_deviceIRKData;
  if (!v9)
  {
    if (error)
    {
      RPErrorF(4294960551, "No DeviceIRK", v10, v11, v12, v13, v14, v15, v44);
      v16 = 0;
      *error = v27 = 0;
      goto LABEL_24;
    }

    v16 = 0;
    goto LABEL_12;
  }

  v16 = v9;
  v17 = _os_feature_enabled_impl();
  if ((v6 - 5) <= 1 && v17)
  {
    v46 = 0;
    v18 = [_TtC7Rapport12RPIRKRatchet ratchetedIRKDataForIdentity:self error:&v46];
    v19 = v46;
    if (v19)
    {
      v26 = v19;
      if (error)
      {
        *error = RPErrorF(4294960551, "Unable to retrieve ratcheted IRK", v20, v21, v22, v23, v24, v25, v44);
      }

LABEL_12:
      v27 = 0;
      goto LABEL_24;
    }
  }

  else
  {
    v18 = v16;
  }

  v28 = [(NSData *)v18 length];
  if (v28 != 16)
  {
    if (error)
    {
      RPErrorF(4294960553, "Bad DeviceIRK length (%zu bytes)", v29, v30, v31, v32, v33, v34, v28);
LABEL_21:
      *error = v27 = 0;
      goto LABEL_23;
    }

LABEL_22:
    v27 = 0;
    goto LABEL_23;
  }

  [(NSData *)v18 bytes];
  [dataCopy bytes];
  [dataCopy length];
  v35 = SipHash();
  v45[0] = BYTE5(v35);
  v45[1] = BYTE4(v35);
  v45[2] = BYTE3(v35);
  v45[3] = BYTE2(v35);
  v45[4] = BYTE1(v35);
  v45[5] = v35;
  if ((v6 - 1) >= 6)
  {
    if (error)
    {
      RPErrorF(4294960591, "Bad AuthTag type (%d)", v36, v37, v38, v39, v40, v41, v6);
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v42 = v6 - 1;
  v27 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v45 length:qword_1B6F2E5B0[v42]];
LABEL_23:
  v16 = v18;
LABEL_24:

  return v27;
}

- (BOOL)verifyAuthTag:(id)tag data:(id)data type:(int)type error:(id *)error
{
  v7 = *&type;
  tagCopy = tag;
  dataCopy = data;
  tagCopy2 = tag;
  bytes = [tagCopy2 bytes];
  v15 = [tagCopy2 length];

  bytes2 = [dataCopy bytes];
  v17 = [dataCopy length];

  return [(RPIdentity *)self verifyAuthTagPtr:bytes authTagLen:v15 dataPtr:bytes2 dataLen:v17 type:v7 error:error];
}

- (BOOL)verifyAuthTagPtr:(const void *)ptr authTagLen:(unint64_t)len dataPtr:(const void *)dataPtr dataLen:(unint64_t)dataLen type:(int)type error:(id *)error
{
  v9 = *&type;
  v13 = self->_deviceIRKData;
  if (!v13)
  {
    if (error)
    {
      v41 = RPErrorF(4294960551, "No DeviceIRK", v14, v15, v16, v17, v18, v19, lenCopy);
      v20 = 0;
LABEL_23:
      v38 = 0;
      *error = v41;
      goto LABEL_26;
    }

    v20 = 0;
    goto LABEL_25;
  }

  v20 = v13;
  v21 = [(NSData *)v13 length];
  if (v21 != 16)
  {
    if (error)
    {
      lenCopy = v21;
      v39 = "Bad DeviceIRK length (%zu bytes)";
LABEL_19:
      v40 = 4294960553;
      goto LABEL_22;
    }

LABEL_25:
    v38 = 0;
    goto LABEL_26;
  }

  v28 = _os_feature_enabled_impl();
  if ((v9 - 5) <= 1 && v28)
  {
    v45 = 0;
    v29 = [_TtC7Rapport12RPIRKRatchet ratchetedIRKDataForIdentity:self error:&v45];
    v30 = v45;
    if (!v30)
    {
      v31 = v29;

      v20 = v31;
    }
  }

  [(NSData *)v20 bytes];
  v32 = SipHash();
  v44[0] = BYTE5(v32);
  v44[1] = BYTE4(v32);
  v44[2] = BYTE3(v32);
  v44[3] = BYTE2(v32);
  v44[4] = BYTE1(v32);
  v44[5] = v32;
  if ((v9 - 1) >= 6)
  {
    if (error)
    {
      lenCopy = v9;
      v39 = "Bad AuthTag type (%d)";
      v40 = 4294960591;
      goto LABEL_22;
    }

    goto LABEL_25;
  }

  if (qword_1B6F2E5B0[(v9 - 1)] != len)
  {
    if (error)
    {
      lenCopy = len;
      v39 = "Bad AuthTag length (%zu bytes)";
      goto LABEL_19;
    }

    goto LABEL_25;
  }

  v33 = 0;
  v34 = v44;
  do
  {
    v36 = *ptr;
    ptr = ptr + 1;
    v35 = v36;
    v37 = *v34++;
    v33 |= v37 ^ v35;
    --len;
  }

  while (len);
  v38 = v33 == 0;
  if (error && v33)
  {
    v39 = "AuthTag mismatch";
    v40 = 4294960548;
LABEL_22:
    v41 = RPErrorF(v40, v39, v22, v23, v24, v25, v26, v27, lenCopy);
    goto LABEL_23;
  }

LABEL_26:

  return v38;
}

- (id)signData:(id)data error:(id *)error
{
  v14 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  dataCopy2 = data;
  bytes = [dataCopy2 bytes];
  v10 = [dataCopy2 length];

  if ([(RPIdentity *)self signDataPtr:bytes dataLen:v10 signatureBytes:v13 error:error])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v13 length:64];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)signDataPtr:(const void *)ptr dataLen:(unint64_t)len signatureBytes:(unsigned __int8)bytes[64] error:(id *)error
{
  sepPrivateKey = self->_sepPrivateKey;
  if (sepPrivateKey)
  {
    v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:ptr length:len freeWhenDone:0];
    error = 0;
    v10 = SecKeyCreateSignature(sepPrivateKey, *MEMORY[0x1E697B148], v9, &error);
    v11 = v10;
    v12 = v10 != 0;
    if (v10)
    {
      [(__CFData *)v10 getBytes:bytes length:64];
    }

    else if (error)
    {
      *error = error;
    }
  }

  else
  {
    v9 = self->_edPKData;
    if ([(__CFData *)v9 length]== 32)
    {
      v20 = self->_edSKData;
      v21 = [(NSData *)v20 length];
      v12 = v21 == 32;
      if (v21 == 32)
      {
        [(__CFData *)v9 bytes];
        [(NSData *)v20 bytes];
        cced25519_sign_compat();
      }

      else if (error)
      {
        *error = RPErrorF(4294896142, "No EdSK", v22, v23, v24, v25, v26, v27, v29);
      }
    }

    else if (error)
    {
      RPErrorF(4294896141, "No EdPK", v14, v15, v16, v17, v18, v19, v29);
      *error = v12 = 0;
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BOOL)verifySignature:(id)signature data:(id)data error:(id *)error
{
  signatureCopy = signature;
  dataCopy = data;
  signatureCopy2 = signature;
  bytes = [signatureCopy2 bytes];
  v13 = [signatureCopy2 length];

  bytes2 = [dataCopy bytes];
  v15 = [dataCopy length];

  return [(RPIdentity *)self verifySignaturePtr:bytes signatureLen:v13 dataPtr:bytes2 dataLen:v15 error:error];
}

- (BOOL)verifySignaturePtr:(const void *)ptr signatureLen:(unint64_t)len dataPtr:(const void *)dataPtr dataLen:(unint64_t)dataLen error:(id *)error
{
  if (len == 64)
  {
    v9 = self->_edPKData;
    if ([(NSData *)v9 length]== 32)
    {
      [(NSData *)v9 bytes];
      v16 = cced25519_verify_compat();
      v17 = v16 == 0;
      if (!error || !v16)
      {
        goto LABEL_13;
      }

      v18 = "Signature verify failed";
      v19 = 4294960542;
    }

    else
    {
      if (!error)
      {
        v17 = 0;
        goto LABEL_13;
      }

      v18 = "No EdPK";
      v19 = 4294896141;
    }

    RPErrorF(v19, v18, v10, v11, v12, v13, v14, v15, v21);
    *error = v17 = 0;
LABEL_13:

    return v17;
  }

  if (!error)
  {
    return 0;
  }

  RPErrorF(4294960580, "Bad signature size (%zu)", ptr, len, dataPtr, dataLen, error, v7, len);
  *error = v17 = 0;
  return v17;
}

- (id)_edPKDataFromSEPPrivateKey:(__SecKey *)key
{
  if (key && (v3 = SecKeyCopyPublicKey(key)) != 0)
  {
    v4 = v3;
    v5 = SecKeyCopyExternalRepresentation(v3, 0);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_equalsSEPPrivateKey:(__SecKey *)key
{
  sepPrivateKey = self->_sepPrivateKey;
  if (sepPrivateKey == key)
  {
    return 1;
  }

  v5 = 0;
  if (key && sepPrivateKey)
  {
    v7 = [(RPIdentity *)self _edPKDataFromSEPPrivateKey:?];
    v8 = [(RPIdentity *)self _edPKDataFromSEPPrivateKey:key];
    v9 = v7;
    v10 = v8;
    v11 = v10;
    if (v9 == v10)
    {
      v5 = 1;
    }

    else if ((v9 != 0) == (v10 == 0))
    {
      v5 = 0;
    }

    else
    {
      v5 = [v9 isEqual:v10];
    }
  }

  return v5;
}

+ (BOOL)_sepBackedIdentityEnabled
{
  if (_sepBackedIdentityEnabled_onceToken[0] != -1)
  {
    +[RPIdentity _sepBackedIdentityEnabled];
  }

  return 0;
}

@end