@interface DRSCloudChannelConfig
+ (id)_iOSSliceCountDict;
+ (id)_smallPopulationCountDict;
+ (id)channelNameForPlatform:(unsigned __int8)platform type:(unsigned __int8)type sliceNum:(id)num;
+ (id)currentDeviceDefaultCloudChannelConfig;
+ (id)sliceCountForPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type;
+ (id)staticSnapshotDeviceDefaultCloudChannelConfig;
+ (id)stringForChannelType:(unsigned __int8)type;
+ (id)stringForEnvironment:(unsigned __int8)environment;
+ (unsigned)channelTypeForIsInternal:(BOOL)internal isSeed:(BOOL)seed isQA:(BOOL)a isCarrier:(BOOL)carrier;
+ (unsigned)populationSliceForDevice:(unsigned __int16)device;
- (BOOL)isEqual:(id)equal;
- (DRSCloudChannelConfig)initWithMO:(id)o;
- (DRSCloudChannelConfig)initWithValidPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type environment:(unsigned __int8)environment populationSliceNumber:(id)number overridesDeviceDefault:(BOOL)default;
- (NSString)channelID;
- (NSString)channelName;
- (id)debugDescription;
- (id)initNoChecksWithPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type environment:(unsigned __int8)environment populationSliceNumber:(id)number overridesDeviceDefault:(BOOL)default;
- (id)initNoSubscriptionConfig:(BOOL)config;
- (id)jsonDictionaryRepresentation;
@end

@implementation DRSCloudChannelConfig

+ (id)stringForChannelType:(unsigned __int8)type
{
  if (type > 4u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899FB78[type];
  }
}

+ (id)stringForEnvironment:(unsigned __int8)environment
{
  if (environment > 2u)
  {
    return @"Unknown";
  }

  else
  {
    return off_27899FBA0[environment];
  }
}

- (id)debugDescription
{
  isNoSubscriptionConfig = [(DRSCloudChannelConfig *)self isNoSubscriptionConfig];
  v4 = MEMORY[0x277CCACA8];
  if (isNoSubscriptionConfig)
  {
    overridesDeviceDefault = [(DRSCloudChannelConfig *)self overridesDeviceDefault];
    v6 = @"DEFAULT";
    if (overridesDeviceDefault)
    {
      v6 = @"Override";
    }

    v7 = [v4 stringWithFormat:@"No Subscription (%@)", v6];
  }

  else
  {
    channelName = [(DRSCloudChannelConfig *)self channelName];
    if ([(DRSCloudChannelConfig *)self overridesDeviceDefault])
    {
      v9 = @"Override";
    }

    else
    {
      v9 = @"DEFAULT";
    }

    channelID = [(DRSCloudChannelConfig *)self channelID];
    v7 = [v4 stringWithFormat:@"%@ (%@, %@)", channelName, v9, channelID];
  }

  return v7;
}

- (DRSCloudChannelConfig)initWithValidPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type environment:(unsigned __int8)environment populationSliceNumber:(id)number overridesDeviceDefault:(BOOL)default
{
  defaultCopy = default;
  environmentCopy = environment;
  typeCopy = type;
  platformCopy = platform;
  v27 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  v13 = numberCopy;
  selfCopy = 0;
  if (platformCopy)
  {
    if (platformCopy != 5)
    {
      selfCopy = 0;
      if ((typeCopy - 1) <= 3u && (environmentCopy - 1) <= 1u)
      {
        if (numberCopy)
        {
          unsignedLongLongValue = [numberCopy unsignedLongLongValue];
          v16 = [objc_opt_class() sliceCountForPlatform:platformCopy channelType:typeCopy];
          if (v16)
          {
            v17 = v16;
            unsignedLongLongValue2 = [v16 unsignedLongLongValue];
            if (unsignedLongLongValue < unsignedLongLongValue2)
            {

              goto LABEL_9;
            }

            v20 = unsignedLongLongValue2;
            v21 = DPLogHandle_ConfigPersistedStoreError(unsignedLongLongValue2);
            if (os_signpost_enabled(v21))
            {
              v23 = 134218240;
              v24 = unsignedLongLongValue;
              v25 = 2048;
              v26 = v20;
              _os_signpost_emit_with_name_impl(&dword_232906000, v21, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "InvalidSlice", "Slice %llu is >= %llu (the slice count for the population)", &v23, 0x16u);
            }
          }

          else
          {
            v19 = DPLogHandle_ConfigPersistedStoreError(0);
            if (os_signpost_enabled(v19))
            {
              LOWORD(v23) = 0;
              _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "UnexpectedPopulationSliceNumber", "Tried to specify population slice for a platform/channelType that does not support it", &v23, 2u);
            }
          }

          selfCopy = 0;
          goto LABEL_17;
        }

LABEL_9:
        self = [(DRSCloudChannelConfig *)self initNoChecksWithPlatform:platformCopy channelType:typeCopy environment:environmentCopy populationSliceNumber:v13 overridesDeviceDefault:defaultCopy];
        selfCopy = self;
      }
    }
  }

LABEL_17:

  return selfCopy;
}

- (id)initNoChecksWithPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type environment:(unsigned __int8)environment populationSliceNumber:(id)number overridesDeviceDefault:(BOOL)default
{
  numberCopy = number;
  v17.receiver = self;
  v17.super_class = DRSCloudChannelConfig;
  v14 = [(DRSCloudChannelConfig *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_platform = platform;
    v14->_type = type;
    v14->_environment = environment;
    objc_storeStrong(&v14->_populationSliceNumber, number);
    v15->_overridesDeviceDefault = default;
  }

  return v15;
}

- (id)initNoSubscriptionConfig:(BOOL)config
{
  v8.receiver = self;
  v8.super_class = DRSCloudChannelConfig;
  v4 = [(DRSCloudChannelConfig *)&v8 init];
  v5 = v4;
  if (v4)
  {
    *&v4->_platform = 0;
    v4->_environment = 0;
    populationSliceNumber = v4->_populationSliceNumber;
    v4->_populationSliceNumber = 0;

    v5->_overridesDeviceDefault = config;
  }

  return v5;
}

- (DRSCloudChannelConfig)initWithMO:(id)o
{
  if (o)
  {
    oCopy = o;
    platform = [oCopy platform];
    channelType = [oCopy channelType];
    environment = [oCopy environment];
    populationSliceNumber = [oCopy populationSliceNumber];
    overridesDeviceDefault = [oCopy overridesDeviceDefault];

    self = [(DRSCloudChannelConfig *)self initNoChecksWithPlatform:platform channelType:channelType environment:environment populationSliceNumber:populationSliceNumber overridesDeviceDefault:overridesDeviceDefault];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
        populationSliceNumber = [(DRSCloudChannelConfig *)self populationSliceNumber];
        if (!populationSliceNumber || ([(DRSCloudChannelConfig *)v7 populationSliceNumber], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          populationSliceNumber2 = [(DRSCloudChannelConfig *)v7 populationSliceNumber];
          if (populationSliceNumber2)
          {
            populationSliceNumber3 = [(DRSCloudChannelConfig *)self populationSliceNumber];

            if (populationSliceNumber)
            {

              if (!populationSliceNumber3)
              {
                goto LABEL_22;
              }
            }

            else if (!populationSliceNumber3)
            {
              goto LABEL_22;
            }
          }

          else
          {

            if (populationSliceNumber)
            {
            }
          }

          populationSliceNumber4 = [(DRSCloudChannelConfig *)self populationSliceNumber];

          if (!populationSliceNumber4 || (-[DRSCloudChannelConfig populationSliceNumber](self, "populationSliceNumber"), v13 = objc_claimAutoreleasedReturnValue(), -[DRSCloudChannelConfig populationSliceNumber](v7, "populationSliceNumber"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v13 isEqualToNumber:v14], v14, v13, v15))
          {
            platform = [(DRSCloudChannelConfig *)self platform];
            if (platform == [(DRSCloudChannelConfig *)v7 platform])
            {
              environment = [(DRSCloudChannelConfig *)self environment];
              if (environment == [(DRSCloudChannelConfig *)v7 environment])
              {
                type = [(DRSCloudChannelConfig *)self type];
                if (type == [(DRSCloudChannelConfig *)v7 type])
                {
                  overridesDeviceDefault = [(DRSCloudChannelConfig *)self overridesDeviceDefault];
                  v9 = overridesDeviceDefault ^ [(DRSCloudChannelConfig *)v7 overridesDeviceDefault]^ 1;
LABEL_23:

                  goto LABEL_24;
                }
              }
            }
          }
        }

        else
        {
        }

LABEL_22:
        LOBYTE(v9) = 0;
        goto LABEL_23;
      }
    }

    LOBYTE(v9) = 0;
  }

LABEL_24:

  return v9;
}

- (id)jsonDictionaryRepresentation
{
  v37 = *MEMORY[0x277D85DE8];
  isNoSubscriptionConfig = [(DRSCloudChannelConfig *)self isNoSubscriptionConfig];
  v6 = isNoSubscriptionConfig;
  v21 = @"platform";
  if (isNoSubscriptionConfig)
  {
    v29 = @"(None)";
    v30 = @"(None)";
    v22 = @"channelType";
    v23 = @"environment";
    v7 = MEMORY[0x277CBEC28];
    v8 = @"(None)";
  }

  else
  {
    v2 = DRSSystemProfilePlatformStringForPlatform([(DRSCloudChannelConfig *)self platform]);
    v29 = v2;
    v22 = @"channelType";
    v3 = [objc_opt_class() stringForChannelType:{-[DRSCloudChannelConfig type](self, "type")}];
    v30 = v3;
    v23 = @"environment";
    v8 = [objc_opt_class() stringForEnvironment:{-[DRSCloudChannelConfig environment](self, "environment")}];
    v7 = MEMORY[0x277CBEC38];
  }

  v31 = v8;
  v32 = v7;
  v24 = @"isSubscribed";
  v25 = @"populationSliceNumber";
  populationSliceNumber = [(DRSCloudChannelConfig *)self populationSliceNumber];
  v10 = populationSliceNumber;
  if (populationSliceNumber)
  {
    v11 = populationSliceNumber;
  }

  else
  {
    v11 = @"(None)";
  }

  v33 = v11;
  v26 = @"overridesDeviceDefault";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[DRSCloudChannelConfig overridesDeviceDefault](self, "overridesDeviceDefault")}];
  v34 = v12;
  v27 = @"channelName";
  channelName = [(DRSCloudChannelConfig *)self channelName];
  v14 = channelName;
  if (channelName)
  {
    v15 = channelName;
  }

  else
  {
    v15 = @"(None)";
  }

  v35 = v15;
  v28 = @"channelID";
  channelID = [(DRSCloudChannelConfig *)self channelID];
  v17 = channelID;
  if (channelID)
  {
    v18 = channelID;
  }

  else
  {
    v18 = @"(None)";
  }

  v36 = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v21 count:8];

  if (!v6)
  {
  }

  return v19;
}

+ (id)channelNameForPlatform:(unsigned __int8)platform type:(unsigned __int8)type sliceNum:(id)num
{
  typeCopy = type;
  platformCopy = platform;
  numCopy = num;
  if (platformCopy - 1 < 4 || platformCopy == 6)
  {
    v8 = MEMORY[0x277CCACA8];
    v9 = DRSSystemProfilePlatformStringForPlatform(platformCopy);
    v10 = [DRSCloudChannelConfig stringForChannelType:typeCopy];
    v11 = v10;
    if (numCopy)
    {
      [v8 stringWithFormat:@"%@_%@_%@", v9, v10, numCopy];
    }

    else
    {
      [v8 stringWithFormat:@"%@_%@", v9, v10, v14];
    }
    v12 = ;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSString)channelName
{
  v3 = objc_opt_class();
  platform = [(DRSCloudChannelConfig *)self platform];
  type = [(DRSCloudChannelConfig *)self type];
  populationSliceNumber = [(DRSCloudChannelConfig *)self populationSliceNumber];
  v7 = [v3 channelNameForPlatform:platform type:type sliceNum:populationSliceNumber];

  return v7;
}

- (NSString)channelID
{
  v3 = objc_opt_class();
  channelName = [(DRSCloudChannelConfig *)self channelName];
  v5 = [v3 channelIDForName:channelName];

  return v5;
}

+ (unsigned)channelTypeForIsInternal:(BOOL)internal isSeed:(BOOL)seed isQA:(BOOL)a isCarrier:(BOOL)carrier
{
  if (seed)
  {
    v6 = 3;
  }

  else
  {
    v6 = 4;
  }

  if (internal)
  {
    v6 = 2;
  }

  if (a || carrier)
  {
    return !carrier;
  }

  else
  {
    return v6;
  }
}

+ (id)staticSnapshotDeviceDefaultCloudChannelConfig
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__DRSCloudChannelConfig_staticSnapshotDeviceDefaultCloudChannelConfig__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (staticSnapshotDeviceDefaultCloudChannelConfig_onceToken != -1)
  {
    dispatch_once(&staticSnapshotDeviceDefaultCloudChannelConfig_onceToken, block);
  }

  v2 = staticSnapshotDeviceDefaultCloudChannelConfig_defaultConfig;

  return v2;
}

void __70__DRSCloudChannelConfig_staticSnapshotDeviceDefaultCloudChannelConfig__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) currentDeviceDefaultCloudChannelConfig];
  v2 = staticSnapshotDeviceDefaultCloudChannelConfig_defaultConfig;
  staticSnapshotDeviceDefaultCloudChannelConfig_defaultConfig = v1;
}

+ (id)currentDeviceDefaultCloudChannelConfig
{
  v3 = +[DRSSystemProfile sharedInstance];
  v4 = [self channelTypeForIsInternal:objc_msgSend(v3 isSeed:"isInternal") isQA:objc_msgSend(v3 isCarrier:{"isSeed"), 0, objc_msgSend(v3, "isCarrier")}];
  if (v4)
  {
    v5 = v4;
    v6 = [self sliceCountForPlatform:objc_msgSend(v3 channelType:{"platform"), v4}];
    v7 = v6;
    if (v6)
    {
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{+[DRSCloudChannelConfig populationSliceForDevice:](DRSCloudChannelConfig, "populationSliceForDevice:", objc_msgSend(v6, "unsignedShortValue"))}];
    }

    else
    {
      v8 = 0;
    }

    v9 = -[DRSCloudChannelConfig initWithValidPlatform:channelType:environment:populationSliceNumber:overridesDeviceDefault:]([DRSCloudChannelConfig alloc], "initWithValidPlatform:channelType:environment:populationSliceNumber:overridesDeviceDefault:", [v3 platform], v5, 2, v8, 0);
  }

  else
  {
    v9 = [[DRSCloudChannelConfig alloc] initNoSubscriptionConfig:0];
  }

  return v9;
}

+ (unsigned)populationSliceForDevice:(unsigned __int16)device
{
  deviceCopy = device;
  v4 = +[DRSSystemProfile sharedInstance];
  LOWORD(deviceCopy) = [v4 deviceHash] % deviceCopy;

  return deviceCopy;
}

+ (id)_smallPopulationCountDict
{
  if (_smallPopulationCountDict_onceToken != -1)
  {
    +[DRSCloudChannelConfig _smallPopulationCountDict];
  }

  v3 = _smallPopulationCountDict_kCountDict;

  return v3;
}

void __50__DRSCloudChannelConfig__smallPopulationCountDict__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2847FF780;
  v2[1] = &unk_2847FF7B0;
  v3[0] = &unk_2847FF798;
  v3[1] = &unk_2847FF798;
  v2[2] = &unk_2847FF7C8;
  v2[3] = &unk_2847FF7F8;
  v3[2] = &unk_2847FF7E0;
  v3[3] = &unk_2847FF7E0;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _smallPopulationCountDict_kCountDict;
  _smallPopulationCountDict_kCountDict = v0;
}

+ (id)_iOSSliceCountDict
{
  if (_iOSSliceCountDict_onceToken != -1)
  {
    +[DRSCloudChannelConfig _iOSSliceCountDict];
  }

  v3 = _iOSSliceCountDict_kCountDict;

  return v3;
}

void __43__DRSCloudChannelConfig__iOSSliceCountDict__block_invoke()
{
  v3[4] = *MEMORY[0x277D85DE8];
  v2[0] = &unk_2847FF780;
  v2[1] = &unk_2847FF7B0;
  v3[0] = &unk_2847FF798;
  v3[1] = &unk_2847FF798;
  v2[2] = &unk_2847FF7C8;
  v2[3] = &unk_2847FF7F8;
  v3[2] = &unk_2847FF7E0;
  v3[3] = &unk_2847FF810;
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v3 forKeys:v2 count:4];
  v1 = _iOSSliceCountDict_kCountDict;
  _iOSSliceCountDict_kCountDict = v0;
}

+ (id)sliceCountForPlatform:(unsigned __int8)platform channelType:(unsigned __int8)type
{
  if (!type)
  {
    v7 = 0;
    goto LABEL_16;
  }

  platformCopy = platform;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:type];
  v7 = 0;
  if (platformCopy <= 2)
  {
    if (platformCopy == 1)
    {
      _macOSSliceCountDict = [self _macOSSliceCountDict];
      goto LABEL_14;
    }

    if (platformCopy == 2)
    {
      _macOSSliceCountDict = [self _iOSSliceCountDict];
      goto LABEL_14;
    }
  }

  else
  {
    switch(platformCopy)
    {
      case 3:
        _macOSSliceCountDict = [self _watchOSSliceCountDict];
        goto LABEL_14;
      case 4:
        _macOSSliceCountDict = [self _tvOSSliceCountDict];
        goto LABEL_14;
      case 6:
        _macOSSliceCountDict = [self _smallPopulationCountDict];
LABEL_14:
        v9 = _macOSSliceCountDict;
        v7 = [_macOSSliceCountDict objectForKeyedSubscript:v6];

        break;
    }
  }

LABEL_16:

  return v7;
}

@end