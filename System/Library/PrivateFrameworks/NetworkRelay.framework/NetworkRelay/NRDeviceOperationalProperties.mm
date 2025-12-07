@interface NRDeviceOperationalProperties
+ (id)copyPropertiesForDefaultPairedPhone;
+ (id)copyPropertiesForDefaultPairedWatch;
- (BOOL)isEqual:(id)equal;
- (NRDeviceOperationalProperties)init;
- (NRDeviceOperationalProperties)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unsigned)getDefaultLinkSubtypeForLinkType:(unsigned __int8)type;
- (void)encodeWithCoder:(id)coder;
- (void)mergeProperties:(id)properties;
- (void)setAllowsApplicationServiceConnections:(BOOL)connections;
@end

@implementation NRDeviceOperationalProperties

- (unsigned)getDefaultLinkSubtypeForLinkType:(unsigned __int8)type
{
  v27 = *MEMORY[0x277D85DE8];
  if (!type)
  {
    v18 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v19 = v18;
      v20 = os_log_type_enabled(v18, OS_LOG_TYPE_FAULT);

      if (!v20)
      {
        return 0;
      }
    }

    v21 = nrCopyLogObj_1215();
    _NRLogWithArgs(v21, 17, "%s called with null linkType != NRLinkTypeInvalid", "[NRDeviceOperationalProperties getDefaultLinkSubtypeForLinkType:]");

    return 0;
  }

  typeCopy = type;
  allowedLinkTypes = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:typeCopy];
  v7 = [allowedLinkTypes containsObject:v6];

  if (v7)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    allowedLinkSubtypes = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
    v9 = [allowedLinkSubtypes countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(allowedLinkSubtypes);
          }

          unsignedShortValue = [*(*(&v22 + 1) + 8 * i) unsignedShortValue];
          v14 = unsignedShortValue;
          if (unsignedShortValue - 101 >= 4)
          {
            if (unsignedShortValue - 120 >= 2)
            {
              if (unsignedShortValue)
              {
                v14 = 0;
              }
            }

            else
            {
              v14 = 1;
            }
          }

          else
          {
            v14 = 2;
          }

          if (v14 == typeCopy)
          {
            v16 = unsignedShortValue;

            return v16;
          }
        }

        v10 = [allowedLinkSubtypes countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  return 0;
}

- (void)setAllowsApplicationServiceConnections:(BOOL)connections
{
  v3 = 2;
  if (!connections)
  {
    v3 = 0;
  }

  self->_flags = self->_flags & 0xFFFFFFFFFFFFFFFDLL | v3;
}

- (id)description
{
  v47 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"["];
  [v3 appendFormat:@" v:%u", -[NRDeviceOperationalProperties version](self, "version")];
  [v3 appendFormat:@" prx:%llu", -[NRDeviceOperationalProperties proxyCapability](self, "proxyCapability")];
  [v3 appendFormat:@", bt:%llu", -[NRDeviceOperationalProperties bluetoothRole](self, "bluetoothRole")];
  v35 = v3;
  [v3 appendFormat:@", bt-end:%llu", -[NRDeviceOperationalProperties bluetoothEndpointType](self, "bluetoothEndpointType")];
  v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  selfCopy = self;
  allowedLinkTypes = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
  v6 = [allowedLinkTypes countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(allowedLinkTypes);
        }

        unsignedShortValue = [*(*(&v41 + 1) + 8 * i) unsignedShortValue];
        if ((unsignedShortValue - 1) < 4u)
        {
          v10 = off_27996AE50[(unsignedShortValue - 1)];
          goto LABEL_6;
        }

        v12 = unsignedShortValue;
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        if (v12 == 5)
        {
          v14 = "Wired";
          goto LABEL_14;
        }

        if (!v12)
        {
          v14 = "Invalid";
LABEL_14:
          v10 = [v13 initWithUTF8String:v14];
          goto LABEL_6;
        }

        v10 = [v13 initWithFormat:@"Unknown(%lld)", v12];
LABEL_6:
        [v4 appendFormat:@" %@ ", v10];
      }

      v7 = [allowedLinkTypes countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
  }

  v15 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  allowedLinkSubtypes = [(NRDeviceOperationalProperties *)selfCopy allowedLinkSubtypes];
  v17 = [allowedLinkSubtypes countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(allowedLinkSubtypes);
        }

        unsignedShortValue2 = [*(*(&v37 + 1) + 8 * j) unsignedShortValue];
        if (unsignedShortValue2 > 0x67u)
        {
          if (unsignedShortValue2 == 104)
          {
            StringFromNRLinkSubtype = @"IR";
            goto LABEL_21;
          }

          if (unsignedShortValue2 != 120)
          {
            if (unsignedShortValue2 == 121)
            {
              StringFromNRLinkSubtype = @"L2C";
              goto LABEL_21;
            }

            goto LABEL_34;
          }

          StringFromNRLinkSubtype = @"P";
        }

        else
        {
          if (unsignedShortValue2 == 101)
          {
            StringFromNRLinkSubtype = @"Ifr";
            goto LABEL_21;
          }

          if (unsignedShortValue2 != 102)
          {
            if (unsignedShortValue2 == 103)
            {
              StringFromNRLinkSubtype = @"N";
              goto LABEL_21;
            }

LABEL_34:
            StringFromNRLinkSubtype = createStringFromNRLinkSubtype(unsignedShortValue2);
            goto LABEL_21;
          }

          StringFromNRLinkSubtype = @"A";
        }

LABEL_21:
        [v15 appendFormat:@" %@ ", StringFromNRLinkSubtype];
      }

      v18 = [allowedLinkSubtypes countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v18);
  }

  [v35 appendFormat:@", lnks:[%@][%@]", v4, v15];
  if ([(NRDeviceOperationalProperties *)selfCopy handlesLinkRecommendations])
  {
    [v35 appendString:{@", lnkRec"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy requiresReachability])
  {
    [v35 appendString:{@", rch"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy proxyProviderRequiresWiFi])
  {
    [v35 appendString:{@", prx-wifi"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy usesTLS])
  {
    [v35 appendString:{@", tls"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy providesPhoneCallRelaySupport])
  {
    [v35 appendString:{@", pcr"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy allowsPermittedClientsOnly])
  {
    [v35 appendString:{@", prm"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy allowsDirectToCloud])
  {
    [v35 appendString:{@", dtc"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy allowsDeviceDiscovery])
  {
    [v35 appendString:{@", disc"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy allowsDeadPeerDetection])
  {
    [v35 appendString:{@", dpd"}];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy hasCompanionDatapath])
  {
    [v35 appendString:{@", cmpn-dp"}];
  }

  proxyProviderCriteria = [(NRDeviceOperationalProperties *)selfCopy proxyProviderCriteria];

  if (proxyProviderCriteria)
  {
    proxyProviderCriteria2 = [(NRDeviceOperationalProperties *)selfCopy proxyProviderCriteria];
    [v35 appendFormat:@", %@", proxyProviderCriteria2];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy operationalScope])
  {
    [v35 appendFormat:@", sc %#llx", -[NRDeviceOperationalProperties operationalScope](selfCopy, "operationalScope")];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy flags])
  {
    [v35 appendFormat:@", fl %#llx", -[NRDeviceOperationalProperties flags](selfCopy, "flags")];
  }

  if ([(NRDeviceOperationalProperties *)selfCopy proxyCapability]== 1)
  {
    proxyProviderType = [(NRDeviceOperationalProperties *)selfCopy proxyProviderType];
    v26 = objc_alloc(MEMORY[0x277CCACA8]);
    if (proxyProviderType > 1)
    {
      if (proxyProviderType == 2)
      {
        v27 = "SHOES";
        goto LABEL_74;
      }

      if (proxyProviderType == 3)
      {
        v27 = "HTTPConnect";
        goto LABEL_74;
      }
    }

    else
    {
      if (!proxyProviderType)
      {
        v27 = "Default";
        goto LABEL_74;
      }

      if (proxyProviderType == 1)
      {
        v27 = "MASQUE";
LABEL_74:
        v28 = [v26 initWithUTF8String:v27];
        goto LABEL_75;
      }
    }

    v28 = [v26 initWithFormat:@"Unknown(%llu)", proxyProviderType];
LABEL_75:
    v29 = v28;
    proxyProviderAuthMode = [(NRDeviceOperationalProperties *)selfCopy proxyProviderAuthMode];
    v31 = objc_alloc(MEMORY[0x277CCACA8]);
    if (proxyProviderAuthMode == 2)
    {
      v32 = [v31 initWithUTF8String:"ImportedPSK"];
    }

    else if (proxyProviderAuthMode == 1)
    {
      v32 = [v31 initWithUTF8String:"RawPSK"];
    }

    else if (proxyProviderAuthMode)
    {
      v32 = [v31 initWithFormat:@"Unknown(%llu)", proxyProviderAuthMode];
    }

    else
    {
      v32 = [v31 initWithUTF8String:"Default"];
    }

    v33 = v32;
    [v35 appendFormat:@", prx-type:%@ prx-auth:%@", v29, v32];
  }

  [v35 appendString:@"]"];

  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = NRDeviceOperationalProperties;
  coderCopy = coder;
  [(NRDeviceProperties *)&v8 encodeWithCoder:coderCopy];
  [coderCopy encodeInt32:-[NRDeviceOperationalProperties version](self forKey:{"version", v8.receiver, v8.super_class), @"version"}];
  [coderCopy encodeInt64:-[NRDeviceOperationalProperties proxyCapability](self forKey:{"proxyCapability"), @"proxyCapability"}];
  [coderCopy encodeInt64:-[NRDeviceOperationalProperties bluetoothRole](self forKey:{"bluetoothRole"), @"bluetoothRole"}];
  [coderCopy encodeInt64:-[NRDeviceOperationalProperties bluetoothEndpointType](self forKey:{"bluetoothEndpointType"), @"bluetoothEndpointType"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties handlesLinkRecommendations](self forKey:{"handlesLinkRecommendations"), @"handlesLinkRecommendations"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties requiresReachability](self forKey:{"requiresReachability"), @"requiresReachability"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties proxyProviderRequiresWiFi](self forKey:{"proxyProviderRequiresWiFi"), @"proxyProviderRequiresWiFi"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties usesTLS](self forKey:{"usesTLS"), @"usesTLS"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties providesPhoneCallRelaySupport](self forKey:{"providesPhoneCallRelaySupport"), @"providesPhoneCallRelaySupport"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties allowsPermittedClientsOnly](self forKey:{"allowsPermittedClientsOnly"), @"allowsPermittedClientsOnly"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties allowsDirectToCloud](self forKey:{"allowsDirectToCloud"), @"allowsDirectToCloud"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties allowsDeviceDiscovery](self forKey:{"allowsDeviceDiscovery"), @"allowsDeviceDiscovery"}];
  [coderCopy encodeInt32:-[NRDeviceOperationalProperties allowedPeerDeviceType](self forKey:{"allowedPeerDeviceType"), @"allowedPeerDeviceType"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties allowsDeadPeerDetection](self forKey:{"allowsDeadPeerDetection"), @"allowsDeadPeerDetection"}];
  [coderCopy encodeBool:-[NRDeviceOperationalProperties isReachableOverWiFi](self forKey:{"isReachableOverWiFi"), @"isReachableOverWiFi"}];
  [coderCopy encodeInt64:-[NRDeviceOperationalProperties operationalScope](self forKey:{"operationalScope"), @"operationalScope"}];
  [coderCopy encodeInt64:-[NRDeviceOperationalProperties flags](self forKey:{"flags"), @"flags"}];
  allowedLinkTypes = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
  [coderCopy encodeObject:allowedLinkTypes forKey:@"allowedLinkTypes"];

  allowedLinkSubtypes = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
  [coderCopy encodeObject:allowedLinkSubtypes forKey:@"allowedLinkSubtypes"];

  proxyProviderCriteria = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
  [coderCopy encodeObject:proxyProviderCriteria forKey:@"proxyProviderCriteria"];

  [coderCopy encodeInt64:-[NRDeviceOperationalProperties proxyProviderType](self forKey:{"proxyProviderType"), @"proxyProviderType"}];
  [coderCopy encodeInt64:-[NRDeviceOperationalProperties proxyProviderAuthMode](self forKey:{"proxyProviderAuthMode"), @"proxyProviderAuthMode"}];
}

- (NRDeviceOperationalProperties)initWithCoder:(id)coder
{
  v23 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = NRDeviceOperationalProperties;
  v5 = [(NRDeviceProperties *)&v22 initWithCoder:coderCopy];
  if (!v5)
  {
    v11 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);

      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v14 = nrCopyLogObj_1215();
    _NRLogWithArgs(v14, 16, "%s%.30s:%-4d ABORTING: [super initWithCoder:] failed", ", "[NRDeviceOperationalProperties initWithCoder:]"", 314);

LABEL_7:
    v15 = _os_log_pack_size();
    v17 = &v21 - ((MEMORY[0x28223BE20](v15, v16) + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = __error();
    v19 = _os_log_pack_fill(v17, v15, *v18, &dword_25B98C000, "%{public}s [super initWithCoder:] failed");
    *v19 = 136446210;
    *(v19 + 4) = "[NRDeviceOperationalProperties initWithCoder:]";
    v20 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v20, v17);
  }

  v6 = v5;
  -[NRDeviceOperationalProperties setVersion:](v5, "setVersion:", [coderCopy decodeInt32ForKey:@"version"]);
  -[NRDeviceOperationalProperties setProxyCapability:](v6, "setProxyCapability:", [coderCopy decodeInt64ForKey:@"proxyCapability"]);
  -[NRDeviceOperationalProperties setBluetoothRole:](v6, "setBluetoothRole:", [coderCopy decodeInt64ForKey:@"bluetoothRole"]);
  -[NRDeviceOperationalProperties setBluetoothEndpointType:](v6, "setBluetoothEndpointType:", [coderCopy decodeInt64ForKey:@"bluetoothEndpointType"]);
  -[NRDeviceOperationalProperties setHandlesLinkRecommendations:](v6, "setHandlesLinkRecommendations:", [coderCopy decodeBoolForKey:@"handlesLinkRecommendations"]);
  -[NRDeviceOperationalProperties setRequiresReachability:](v6, "setRequiresReachability:", [coderCopy decodeBoolForKey:@"requiresReachability"]);
  -[NRDeviceOperationalProperties setProxyProviderRequiresWiFi:](v6, "setProxyProviderRequiresWiFi:", [coderCopy decodeBoolForKey:@"proxyProviderRequiresWiFi"]);
  -[NRDeviceOperationalProperties setUsesTLS:](v6, "setUsesTLS:", [coderCopy decodeBoolForKey:@"usesTLS"]);
  -[NRDeviceOperationalProperties setProvidesPhoneCallRelaySupport:](v6, "setProvidesPhoneCallRelaySupport:", [coderCopy decodeBoolForKey:@"providesPhoneCallRelaySupport"]);
  -[NRDeviceOperationalProperties setAllowsPermittedClientsOnly:](v6, "setAllowsPermittedClientsOnly:", [coderCopy decodeBoolForKey:@"allowsPermittedClientsOnly"]);
  -[NRDeviceOperationalProperties setAllowsDirectToCloud:](v6, "setAllowsDirectToCloud:", [coderCopy decodeBoolForKey:@"allowsDirectToCloud"]);
  -[NRDeviceOperationalProperties setAllowsDeviceDiscovery:](v6, "setAllowsDeviceDiscovery:", [coderCopy decodeBoolForKey:@"allowsDeviceDiscovery"]);
  -[NRDeviceOperationalProperties setAllowedPeerDeviceType:](v6, "setAllowedPeerDeviceType:", [coderCopy decodeInt32ForKey:@"allowedPeerDeviceType"]);
  -[NRDeviceOperationalProperties setAllowsDeadPeerDetection:](v6, "setAllowsDeadPeerDetection:", [coderCopy decodeBoolForKey:@"allowsDeadPeerDetection"]);
  -[NRDeviceOperationalProperties setIsReachableOverWiFi:](v6, "setIsReachableOverWiFi:", [coderCopy decodeBoolForKey:@"isReachableOverWiFi"]);
  -[NRDeviceOperationalProperties setOperationalScope:](v6, "setOperationalScope:", [coderCopy decodeInt64ForKey:@"operationalScope"]);
  -[NRDeviceOperationalProperties setFlags:](v6, "setFlags:", [coderCopy decodeInt64ForKey:@"flags"]);
  v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedLinkTypes"];
  [(NRDeviceOperationalProperties *)v6 setAllowedLinkTypes:v7];

  v8 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"allowedLinkSubtypes"];
  [(NRDeviceOperationalProperties *)v6 setAllowedLinkSubtypes:v8];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"proxyProviderCriteria"];
  [(NRDeviceOperationalProperties *)v6 setProxyProviderCriteria:v9];

  -[NRDeviceOperationalProperties setProxyProviderType:](v6, "setProxyProviderType:", [coderCopy decodeInt64ForKey:@"proxyProviderType"]);
  -[NRDeviceOperationalProperties setProxyProviderAuthMode:](v6, "setProxyProviderAuthMode:", [coderCopy decodeInt64ForKey:@"proxyProviderAuthMode"]);

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = NRDeviceOperationalProperties;
  v4 = [(NRDeviceProperties *)&v12 copyWithZone:zone];
  [v4 setVersion:{-[NRDeviceOperationalProperties version](self, "version")}];
  [v4 setProxyCapability:{-[NRDeviceOperationalProperties proxyCapability](self, "proxyCapability")}];
  [v4 setBluetoothRole:{-[NRDeviceOperationalProperties bluetoothRole](self, "bluetoothRole")}];
  [v4 setHandlesLinkRecommendations:{-[NRDeviceOperationalProperties handlesLinkRecommendations](self, "handlesLinkRecommendations")}];
  [v4 setRequiresReachability:{-[NRDeviceOperationalProperties requiresReachability](self, "requiresReachability")}];
  [v4 setProxyProviderRequiresWiFi:{-[NRDeviceOperationalProperties proxyProviderRequiresWiFi](self, "proxyProviderRequiresWiFi")}];
  [v4 setUsesTLS:{-[NRDeviceOperationalProperties usesTLS](self, "usesTLS")}];
  [v4 setProvidesPhoneCallRelaySupport:{-[NRDeviceOperationalProperties providesPhoneCallRelaySupport](self, "providesPhoneCallRelaySupport")}];
  [v4 setAllowsPermittedClientsOnly:{-[NRDeviceOperationalProperties allowsPermittedClientsOnly](self, "allowsPermittedClientsOnly")}];
  [v4 setBluetoothEndpointType:{-[NRDeviceOperationalProperties bluetoothEndpointType](self, "bluetoothEndpointType")}];
  [v4 setAllowsDirectToCloud:{-[NRDeviceOperationalProperties allowsDirectToCloud](self, "allowsDirectToCloud")}];
  [v4 setAllowsDeviceDiscovery:{-[NRDeviceOperationalProperties allowsDeviceDiscovery](self, "allowsDeviceDiscovery")}];
  [v4 setAllowedPeerDeviceType:{-[NRDeviceOperationalProperties allowedPeerDeviceType](self, "allowedPeerDeviceType")}];
  [v4 setAllowsDeadPeerDetection:{-[NRDeviceOperationalProperties allowsDeadPeerDetection](self, "allowsDeadPeerDetection")}];
  [v4 setIsReachableOverWiFi:{-[NRDeviceOperationalProperties isReachableOverWiFi](self, "isReachableOverWiFi")}];
  [v4 setOperationalScope:{-[NRDeviceOperationalProperties operationalScope](self, "operationalScope")}];
  [v4 setFlags:{-[NRDeviceOperationalProperties flags](self, "flags")}];
  allowedLinkTypes = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
  v6 = [allowedLinkTypes copy];
  [v4 setAllowedLinkTypes:v6];

  allowedLinkSubtypes = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
  v8 = [allowedLinkSubtypes copy];
  [v4 setAllowedLinkSubtypes:v8];

  proxyProviderCriteria = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
  v10 = [proxyProviderCriteria copy];
  [v4 setProxyProviderCriteria:v10];

  [v4 setProxyProviderType:{-[NRDeviceOperationalProperties proxyProviderType](self, "proxyProviderType")}];
  [v4 setProxyProviderAuthMode:{-[NRDeviceOperationalProperties proxyProviderAuthMode](self, "proxyProviderAuthMode")}];
  return v4;
}

- (void)mergeProperties:(id)properties
{
  propertiesCopy = properties;
  v15 = propertiesCopy;
  if (propertiesCopy)
  {
    -[NRDeviceOperationalProperties setVersion:](self, "setVersion:", [propertiesCopy version]);
    -[NRDeviceOperationalProperties setProxyCapability:](self, "setProxyCapability:", [v15 proxyCapability]);
    -[NRDeviceOperationalProperties setBluetoothRole:](self, "setBluetoothRole:", [v15 bluetoothRole]);
    -[NRDeviceOperationalProperties setHandlesLinkRecommendations:](self, "setHandlesLinkRecommendations:", [v15 handlesLinkRecommendations]);
    -[NRDeviceOperationalProperties setRequiresReachability:](self, "setRequiresReachability:", [v15 requiresReachability]);
    -[NRDeviceOperationalProperties setProxyProviderRequiresWiFi:](self, "setProxyProviderRequiresWiFi:", [v15 proxyProviderRequiresWiFi]);
    -[NRDeviceOperationalProperties setUsesTLS:](self, "setUsesTLS:", [v15 usesTLS]);
    -[NRDeviceOperationalProperties setProvidesPhoneCallRelaySupport:](self, "setProvidesPhoneCallRelaySupport:", [v15 providesPhoneCallRelaySupport]);
    -[NRDeviceOperationalProperties setAllowsPermittedClientsOnly:](self, "setAllowsPermittedClientsOnly:", [v15 allowsPermittedClientsOnly]);
    -[NRDeviceOperationalProperties setBluetoothEndpointType:](self, "setBluetoothEndpointType:", [v15 bluetoothEndpointType]);
    -[NRDeviceOperationalProperties setAllowsDirectToCloud:](self, "setAllowsDirectToCloud:", [v15 allowsDirectToCloud]);
    -[NRDeviceOperationalProperties setAllowsDeviceDiscovery:](self, "setAllowsDeviceDiscovery:", [v15 allowsDeviceDiscovery]);
    -[NRDeviceOperationalProperties setAllowedPeerDeviceType:](self, "setAllowedPeerDeviceType:", [v15 allowedPeerDeviceType]);
    -[NRDeviceOperationalProperties setAllowsDeadPeerDetection:](self, "setAllowsDeadPeerDetection:", [v15 allowsDeadPeerDetection]);
    -[NRDeviceOperationalProperties setIsReachableOverWiFi:](self, "setIsReachableOverWiFi:", [v15 isReachableOverWiFi]);
    -[NRDeviceOperationalProperties setOperationalScope:](self, "setOperationalScope:", [v15 operationalScope]);
    -[NRDeviceOperationalProperties setFlags:](self, "setFlags:", [v15 flags]);
    allowedLinkTypes = [v15 allowedLinkTypes];
    v6 = [allowedLinkTypes copy];
    [(NRDeviceOperationalProperties *)self setAllowedLinkTypes:v6];

    allowedLinkSubtypes = [v15 allowedLinkSubtypes];
    v8 = [allowedLinkSubtypes copy];
    [(NRDeviceOperationalProperties *)self setAllowedLinkSubtypes:v8];

    proxyProviderCriteria = [v15 proxyProviderCriteria];
    v10 = [proxyProviderCriteria copy];
    [(NRDeviceOperationalProperties *)self setProxyProviderCriteria:v10];

    -[NRDeviceOperationalProperties setProxyProviderType:](self, "setProxyProviderType:", [v15 proxyProviderType]);
    -[NRDeviceOperationalProperties setProxyProviderAuthMode:](self, "setProxyProviderAuthMode:", [v15 proxyProviderAuthMode]);
    if (nrCopyLogObj_onceToken_1219 != -1)
    {
      dispatch_once(&nrCopyLogObj_onceToken_1219, &__block_literal_global_498);
    }

    if ((sNRCopyLogToStdErr & 1) != 0 || os_log_type_enabled(nrCopyLogObj_sNRLogObj_1220, OS_LOG_TYPE_DEFAULT))
    {
      _NRLogWithArgs(nrCopyLogObj_sNRLogObj_1220, 0, "%s%.30s:%-4d merged properties: %@", ", "[NRDeviceOperationalProperties mergeProperties:]"", 279, self);
    }
  }

  else
  {
    v11 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v12 = v11;
      v13 = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);

      if (!v13)
      {
        goto LABEL_7;
      }
    }

    v14 = nrCopyLogObj_1215();
    _NRLogWithArgs(v14, 17, "%s called with null prop", "[NRDeviceOperationalProperties mergeProperties:]");
  }

LABEL_7:
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      version = [(NRDeviceOperationalProperties *)self version];
      if (version != [v5 version])
      {
        goto LABEL_35;
      }

      proxyCapability = [(NRDeviceOperationalProperties *)self proxyCapability];
      if (proxyCapability != [v5 proxyCapability])
      {
        goto LABEL_35;
      }

      bluetoothRole = [(NRDeviceOperationalProperties *)self bluetoothRole];
      if (bluetoothRole != [v5 bluetoothRole])
      {
        goto LABEL_35;
      }

      handlesLinkRecommendations = [(NRDeviceOperationalProperties *)self handlesLinkRecommendations];
      if (handlesLinkRecommendations != [v5 handlesLinkRecommendations])
      {
        goto LABEL_35;
      }

      requiresReachability = [(NRDeviceOperationalProperties *)self requiresReachability];
      if (requiresReachability != [v5 requiresReachability])
      {
        goto LABEL_35;
      }

      proxyProviderRequiresWiFi = [(NRDeviceOperationalProperties *)self proxyProviderRequiresWiFi];
      if (proxyProviderRequiresWiFi != [v5 proxyProviderRequiresWiFi])
      {
        goto LABEL_35;
      }

      usesTLS = [(NRDeviceOperationalProperties *)self usesTLS];
      if (usesTLS != [v5 usesTLS])
      {
        goto LABEL_35;
      }

      providesPhoneCallRelaySupport = [(NRDeviceOperationalProperties *)self providesPhoneCallRelaySupport];
      if (providesPhoneCallRelaySupport != [v5 providesPhoneCallRelaySupport])
      {
        goto LABEL_35;
      }

      allowsPermittedClientsOnly = [(NRDeviceOperationalProperties *)self allowsPermittedClientsOnly];
      if (allowsPermittedClientsOnly != [v5 allowsPermittedClientsOnly])
      {
        goto LABEL_35;
      }

      bluetoothEndpointType = [(NRDeviceOperationalProperties *)self bluetoothEndpointType];
      if (bluetoothEndpointType != [v5 bluetoothEndpointType])
      {
        goto LABEL_35;
      }

      allowsDirectToCloud = [(NRDeviceOperationalProperties *)self allowsDirectToCloud];
      if (allowsDirectToCloud != [v5 allowsDirectToCloud])
      {
        goto LABEL_35;
      }

      allowsDeviceDiscovery = [(NRDeviceOperationalProperties *)self allowsDeviceDiscovery];
      if (allowsDeviceDiscovery != [v5 allowsDeviceDiscovery])
      {
        goto LABEL_35;
      }

      allowedPeerDeviceType = [(NRDeviceOperationalProperties *)self allowedPeerDeviceType];
      if (allowedPeerDeviceType != [v5 allowedPeerDeviceType])
      {
        goto LABEL_35;
      }

      allowsDeadPeerDetection = [(NRDeviceOperationalProperties *)self allowsDeadPeerDetection];
      if (allowsDeadPeerDetection != [v5 allowsDeadPeerDetection])
      {
        goto LABEL_35;
      }

      isReachableOverWiFi = [(NRDeviceOperationalProperties *)self isReachableOverWiFi];
      if (isReachableOverWiFi != [v5 isReachableOverWiFi])
      {
        goto LABEL_35;
      }

      operationalScope = [(NRDeviceOperationalProperties *)self operationalScope];
      if (operationalScope != [v5 operationalScope])
      {
        goto LABEL_35;
      }

      flags = [(NRDeviceOperationalProperties *)self flags];
      if (flags != [v5 flags])
      {
        goto LABEL_35;
      }

      allowedLinkTypes = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
      if (allowedLinkTypes)
      {
      }

      else
      {
        allowedLinkTypes2 = [v5 allowedLinkTypes];

        if (!allowedLinkTypes2)
        {
          goto LABEL_25;
        }
      }

      allowedLinkTypes3 = [(NRDeviceOperationalProperties *)self allowedLinkTypes];
      allowedLinkTypes4 = [v5 allowedLinkTypes];
      v28 = [allowedLinkTypes3 isEqual:allowedLinkTypes4];

      if (!v28)
      {
        goto LABEL_35;
      }

LABEL_25:
      allowedLinkSubtypes = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
      if (allowedLinkSubtypes)
      {
      }

      else
      {
        allowedLinkSubtypes2 = [v5 allowedLinkSubtypes];

        if (!allowedLinkSubtypes2)
        {
          goto LABEL_29;
        }
      }

      allowedLinkSubtypes3 = [(NRDeviceOperationalProperties *)self allowedLinkSubtypes];
      allowedLinkSubtypes4 = [v5 allowedLinkSubtypes];
      v33 = [allowedLinkSubtypes3 isEqual:allowedLinkSubtypes4];

      if (!v33)
      {
        goto LABEL_35;
      }

LABEL_29:
      proxyProviderCriteria = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
      if (proxyProviderCriteria)
      {
      }

      else
      {
        proxyProviderCriteria2 = [v5 proxyProviderCriteria];

        if (!proxyProviderCriteria2)
        {
LABEL_33:
          proxyProviderType = [(NRDeviceOperationalProperties *)self proxyProviderType];
          if (proxyProviderType == [v5 proxyProviderType])
          {
            proxyProviderAuthMode = [(NRDeviceOperationalProperties *)self proxyProviderAuthMode];
            v24 = proxyProviderAuthMode == [v5 proxyProviderAuthMode];
LABEL_36:

            goto LABEL_37;
          }

LABEL_35:
          v24 = 0;
          goto LABEL_36;
        }
      }

      proxyProviderCriteria3 = [(NRDeviceOperationalProperties *)self proxyProviderCriteria];
      proxyProviderCriteria4 = [v5 proxyProviderCriteria];
      v38 = [proxyProviderCriteria3 isEqual:proxyProviderCriteria4];

      if (!v38)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

  v24 = 0;
LABEL_37:

  return v24;
}

- (NRDeviceOperationalProperties)init
{
  v17 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NRDeviceOperationalProperties;
  v2 = [(NRDeviceOperationalProperties *)&v16 init];
  if (!v2)
  {
    v5 = nrCopyLogObj_1215();
    if (sNRCopyLogToStdErr == 1)
    {
    }

    else
    {
      v6 = v5;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);

      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v8 = nrCopyLogObj_1215();
    _NRLogWithArgs(v8, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRDeviceOperationalProperties init]"", 208);

LABEL_7:
    v9 = _os_log_pack_size();
    v11 = &v15 - ((MEMORY[0x28223BE20](v9, v10) + 15) & 0xFFFFFFFFFFFFFFF0);
    v12 = __error();
    v13 = _os_log_pack_fill(v11, v9, *v12, &dword_25B98C000, "%{public}s [super init] failed");
    *v13 = 136446210;
    *(v13 + 4) = "[NRDeviceOperationalProperties init]";
    v14 = nrCopyLogObj_1215();
    _NRLogAbortWithPack(v14, v11);
  }

  v3 = v2;
  [(NRDeviceOperationalProperties *)v2 setVersion:1];
  [(NRDeviceOperationalProperties *)v3 setAllowedLinkTypes:&unk_286D2D130];
  [(NRDeviceOperationalProperties *)v3 setBluetoothEndpointType:3];
  [(NRDeviceOperationalProperties *)v3 setIsReachableOverWiFi:1];
  return v3;
}

+ (id)copyPropertiesForDefaultPairedWatch
{
  v2 = objc_alloc_init(NRDeviceOperationalProperties);
  [(NRDeviceOperationalProperties *)v2 setProxyCapability:2];
  [(NRDeviceOperationalProperties *)v2 setBluetoothRole:2];
  [(NRDeviceOperationalProperties *)v2 setBluetoothEndpointType:1];
  [(NRDeviceOperationalProperties *)v2 setHandlesLinkRecommendations:1];
  [(NRDeviceOperationalProperties *)v2 setRequiresReachability:1];
  [(NRDeviceOperationalProperties *)v2 setAllowsDirectToCloud:1];
  [(NRDeviceOperationalProperties *)v2 setProvidesPhoneCallRelaySupport:1];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkTypes:&unk_286D2D178];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkSubtypes:&unk_286D2D190];
  [(NRDeviceOperationalProperties *)v2 setAllowsApplicationServiceConnections:1];
  [(NRDeviceOperationalProperties *)v2 setFlags:[(NRDeviceOperationalProperties *)v2 flags]| 1];
  return v2;
}

+ (id)copyPropertiesForDefaultPairedPhone
{
  v2 = objc_alloc_init(NRDeviceOperationalProperties);
  [(NRDeviceOperationalProperties *)v2 setProxyCapability:1];
  [(NRDeviceOperationalProperties *)v2 setBluetoothRole:1];
  [(NRDeviceOperationalProperties *)v2 setBluetoothEndpointType:2];
  [(NRDeviceOperationalProperties *)v2 setAllowsPermittedClientsOnly:1];
  [(NRDeviceOperationalProperties *)v2 setIsReachableOverWiFi:1];
  [(NRDeviceOperationalProperties *)v2 setProvidesPhoneCallRelaySupport:1];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkTypes:&unk_286D2D148];
  [(NRDeviceOperationalProperties *)v2 setAllowedLinkSubtypes:&unk_286D2D160];
  [(NRDeviceOperationalProperties *)v2 setAllowsApplicationServiceConnections:1];
  [(NRDeviceOperationalProperties *)v2 setFlags:[(NRDeviceOperationalProperties *)v2 flags]| 1];
  return v2;
}

@end