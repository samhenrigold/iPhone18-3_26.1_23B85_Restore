@interface FMDExtAccessory
+ (id)volatileKeysToExcludeFromRegisterDigest;
- (BOOL)accessoryInfoChanged:(id)changed;
- (BOOL)isEqual:(id)equal;
- (BOOL)nearby;
- (BOOL)updateComponnentsAvailability:(id)availability;
- (BOOL)updatePlaybackChannels:(id)channels;
- (FMDExtAccessory)initWithCoder:(id)coder;
- (FMDExtAccessory)initWithExtAccessoryInfo:(id)info;
- (NSString)description;
- (id)connectionStateAsString;
- (id)copyWithZone:(_NSZone *)zone;
- (id)deviceInfo;
- (id)deviceInfoForHostRegister;
- (id)lastKnownLocationDeviceInfo;
- (id)otherDeviceInfo;
- (int64_t)connectionState;
- (unint64_t)hash;
- (void)_updateAudioChannelPlayingState:(id)state;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithAccessory:(id)accessory;
@end

@implementation FMDExtAccessory

- (FMDExtAccessory)initWithExtAccessoryInfo:(id)info
{
  infoCopy = info;
  v29.receiver = self;
  v29.super_class = FMDExtAccessory;
  v5 = [(FMDExtAccessory *)&v29 init];
  v6 = v5;
  if (v5)
  {
    v7 = sub_10000BE38(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v31 = infoCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FMDExtAccessory initWithExtAccessoryInfo %@", buf, 0xCu);
    }

    deviceDiscoveryId = [infoCopy deviceDiscoveryId];
    address = v6->_address;
    v6->_address = deviceDiscoveryId;

    v10 = [FMDAccessoryIdentifier alloc];
    accessoryIdentifier = [infoCopy accessoryIdentifier];
    v12 = [v10 initWithString:accessoryIdentifier];
    accessoryIdentifier = v6->_accessoryIdentifier;
    v6->_accessoryIdentifier = v12;

    accessoryType = [infoCopy accessoryType];
    accessoryType = v6->_accessoryType;
    v6->_accessoryType = accessoryType;

    name = [infoCopy name];
    name = v6->_name;
    v6->_name = name;

    serialNumbers = [infoCopy serialNumbers];
    serialNumbers = v6->_serialNumbers;
    v6->_serialNumbers = serialNumbers;

    firmwareVersion = [infoCopy firmwareVersion];
    firmwareVersion = v6->_firmwareVersion;
    v6->_firmwareVersion = firmwareVersion;

    additionalInfo = [infoCopy additionalInfo];
    additionalInfo = v6->_additionalInfo;
    v6->_additionalInfo = additionalInfo;

    v24 = [[FMDCommandContext alloc] initWithAccessory:v6];
    commandContext = v6->_commandContext;
    v6->_commandContext = v24;

    style = v6->_style;
    v6->_style = @"-1";

    batteryInfo = v6->_batteryInfo;
    v6->_batteryInfo = &off_1002E8DE0;
  }

  return v6;
}

- (void)updateWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryCopy;
    selfCopy = self;
    accessoryIdentifier = [(FMDExtAccessory *)selfCopy accessoryIdentifier];
    accessoryIdentifier2 = [v5 accessoryIdentifier];
    if ([accessoryIdentifier isEqual:accessoryIdentifier2])
    {
      accessoryType = [(FMDExtAccessory *)selfCopy accessoryType];
      accessoryType2 = [v5 accessoryType];
      v11 = [accessoryType isEqualToString:accessoryType2];

      if (v11)
      {
        lastActiveTime = [v5 lastActiveTime];
        [lastActiveTime timeIntervalSinceReferenceDate];
        v15 = v14;
        lastActiveTime2 = [(FMDExtAccessory *)selfCopy lastActiveTime];
        [lastActiveTime2 timeIntervalSinceReferenceDate];
        v18 = v17;

        if (v15 > v18)
        {
          [(FMDExtAccessory *)selfCopy setLastActiveTime:lastActiveTime];
        }

        lastStatusUpdateTime = [v5 lastStatusUpdateTime];
        [lastStatusUpdateTime timeIntervalSinceReferenceDate];
        v21 = v20;
        lastStatusUpdateTime2 = [(FMDExtAccessory *)selfCopy lastStatusUpdateTime];
        [lastStatusUpdateTime2 timeIntervalSinceReferenceDate];
        v24 = v23;

        if (v21 > v24)
        {
          [(FMDExtAccessory *)selfCopy setLastStatusUpdateTime:lastStatusUpdateTime];
        }

        style = [(FMDExtAccessory *)selfCopy style];

        if (!style)
        {
          style2 = [v5 style];
          [(FMDExtAccessory *)selfCopy setStyle:style2];
        }

        name = [(FMDExtAccessory *)selfCopy name];

        if (!name)
        {
          name2 = [v5 name];
          [(FMDExtAccessory *)selfCopy setName:name2];
        }

        firmwareVersion = [(FMDExtAccessory *)selfCopy firmwareVersion];

        if (!firmwareVersion)
        {
          firmwareVersion2 = [v5 firmwareVersion];
          [(FMDExtAccessory *)selfCopy setFirmwareVersion:firmwareVersion2];
        }

        serialNumbers = [(FMDExtAccessory *)selfCopy serialNumbers];

        if (!serialNumbers)
        {
          serialNumbers2 = [v5 serialNumbers];
          [(FMDExtAccessory *)selfCopy setSerialNumbers:serialNumbers2];
        }

        baUUID = [v5 baUUID];
        v34 = sub_100002880(baUUID);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          [baUUID UUIDString];
          v35 = v41 = lastStatusUpdateTime;
          baUUID2 = [(FMDExtAccessory *)selfCopy baUUID];
          name3 = [v5 name];
          address = [v5 address];
          *buf = 138413058;
          v43 = v35;
          v44 = 2112;
          v45 = baUUID2;
          v46 = 2112;
          v47 = name3;
          v48 = 2112;
          v49 = address;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "FMDExtAccessory existing baUUID: %@, new baUUID %@ for %@, %@", buf, 0x2Au);

          lastStatusUpdateTime = v41;
        }

        baUUID3 = [(FMDExtAccessory *)selfCopy baUUID];

        if (!baUUID3)
        {
          [(FMDExtAccessory *)selfCopy setBaUUID:baUUID];
        }

        playbackChannels = [v5 playbackChannels];
        [(FMDExtAccessory *)selfCopy updatePlaybackChannels:playbackChannels];

LABEL_24:
        goto LABEL_25;
      }
    }

    else
    {
    }

    lastActiveTime = sub_10000BE38(v12);
    if (os_log_type_enabled(lastActiveTime, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v43 = v5;
      _os_log_impl(&_mh_execute_header, lastActiveTime, OS_LOG_TYPE_DEFAULT, "got invalid accessory %@", buf, 0xCu);
    }

    goto LABEL_24;
  }

LABEL_25:
}

- (BOOL)updatePlaybackChannels:(id)channels
{
  channelsCopy = channels;
  v5 = [NSSet setWithArray:channelsCopy];
  playbackChannels = [(FMDExtAccessory *)self playbackChannels];
  v7 = [NSSet setWithArray:playbackChannels];

  v8 = [v5 isEqualToSet:v7];
  [(FMDExtAccessory *)self setPlaybackChannels:channelsCopy];
  [(FMDExtAccessory *)self _updateAudioChannelPlayingState:channelsCopy];

  v10 = sub_100002880(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_10022B7BC(self, v10);
  }

  return v8 ^ 1;
}

- (BOOL)updateComponnentsAvailability:(id)availability
{
  availabilityCopy = availability;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  audioChannelInfo = [(FMDExtAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];

  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        channelName = [v12 channelName];
        v14 = [availabilityCopy containsObject:channelName];

        if ([v12 availability] != v14)
        {
          [v12 setAvailability:v14];
          v9 = 1;
        }
      }

      v8 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

- (void)_updateAudioChannelPlayingState:(id)state
{
  stateCopy = state;
  audioChannelInfo = [(FMDExtAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10018826C;
  v8[3] = &unk_1002CFE00;
  v9 = stateCopy;
  v7 = stateCopy;
  [allValues enumerateObjectsUsingBlock:v8];
}

- (unint64_t)hash
{
  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  v3 = [accessoryIdentifier hash];

  return v3;
}

- (int64_t)connectionState
{
  v3 = +[FMDExtConfigurationRegistry sharedInstance];
  accessoryType = [(FMDExtAccessory *)self accessoryType];
  v5 = [v3 configForAccessoryType:accessoryType];

  v6 = [v5 flavorForFeature:@"connection"];
  if (v6)
  {
    v7 = [FMDExtExtensionHelper getAccessoryControllerForFeature:@"connection" flavor:v6];
    if (!v7)
    {
      v20 = 0;
LABEL_16:

      goto LABEL_17;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x3032000000;
    v39 = sub_10000AA74;
    v40 = sub_100002B04;
    v41 = 0;
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v35 = 0;
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v10 = sub_10000BE38(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "start for connection status", buf, 2u);
    }

    accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
    stringValue = [accessoryIdentifier stringValue];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1001887A8;
    v28[3] = &unk_1002CFE28;
    v30 = &v36;
    v31 = &v32;
    v13 = v8;
    v29 = v13;
    [v7 connectionStatusForAccessory:stringValue withCompletion:v28];

    [v5 timeoutForFeature:@"connection"];
    v15 = dispatch_time(0, (v14 * 1000000000.0));
    v16 = dispatch_group_wait(v13, v15);
    v17 = v16;
    if (v16 || v37[5])
    {
      p_super = sub_10000BE38(v16);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        name = [(FMDExtAccessory *)self name];
        v27 = v37[5];
        *buf = 138412802;
        v43 = name;
        v44 = 2048;
        v45 = v17;
        v46 = 2112;
        v47 = v27;
        _os_log_error_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_ERROR, "%@ connection status failed timeout %ld error %@", buf, 0x20u);
      }

      v19 = 1;
    }

    else
    {
      v22 = sub_10000BE38(0);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        name2 = [(FMDExtAccessory *)self name];
        v24 = *(v33 + 24);
        *buf = 138412546;
        v43 = name2;
        v44 = 1024;
        LODWORD(v45) = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@ connection status success %d", buf, 0x12u);
      }

      if (*(v33 + 24) != 1)
      {
        v19 = 0;
        v20 = 0;
LABEL_11:

        _Block_object_dispose(&v32, 8);
        _Block_object_dispose(&v36, 8);

        if (v19)
        {
          v20 = 0;
        }

        goto LABEL_16;
      }

      v25 = +[NSDate date];
      v19 = 0;
      p_super = &self->_lastActiveTime->super;
      self->_lastActiveTime = v25;
    }

    v20 = 1;
    goto LABEL_11;
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (BOOL)nearby
{
  v3 = sub_10000BE38(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_10022B854(v3);
  }

  return [(FMDExtAccessory *)self connectionState]== 1;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FMDExtAccessory allocWithZone:?]];
  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  [(FMDExtAccessory *)v4 setAccessoryIdentifier:accessoryIdentifier];

  accessoryType = [(FMDExtAccessory *)self accessoryType];
  [(FMDExtAccessory *)v4 setAccessoryType:accessoryType];

  name = [(FMDExtAccessory *)self name];
  [(FMDExtAccessory *)v4 setName:name];

  firmwareVersion = [(FMDExtAccessory *)self firmwareVersion];
  [(FMDExtAccessory *)v4 setFirmwareVersion:firmwareVersion];

  address = [(FMDExtAccessory *)self address];
  [(FMDExtAccessory *)v4 setAddress:address];

  extensionId = [(FMDExtAccessory *)self extensionId];
  [(FMDExtAccessory *)v4 setExtensionId:extensionId];

  serialNumbers = [(FMDExtAccessory *)self serialNumbers];
  [(FMDExtAccessory *)v4 setSerialNumbers:serialNumbers];

  additionalInfo = [(FMDExtAccessory *)self additionalInfo];
  [(FMDExtAccessory *)v4 setAdditionalInfo:additionalInfo];

  additionalInfo2 = [(FMDExtAccessory *)self additionalInfo];
  [(FMDExtAccessory *)v4 setBatteryInfo:additionalInfo2];

  lastActiveTime = [(FMDExtAccessory *)self lastActiveTime];
  [(FMDExtAccessory *)v4 setLastActiveTime:lastActiveTime];

  lastStatusUpdateTime = [(FMDExtAccessory *)self lastStatusUpdateTime];
  [(FMDExtAccessory *)v4 setLastStatusUpdateTime:lastStatusUpdateTime];

  lastDiscoveryDate = [(FMDExtAccessory *)self lastDiscoveryDate];
  [(FMDExtAccessory *)v4 setLastDiscoveryDate:lastDiscoveryDate];

  style = [(FMDExtAccessory *)self style];
  [(FMDExtAccessory *)v4 setStyle:style];

  baUUID = [(FMDExtAccessory *)self baUUID];
  [(FMDExtAccessory *)v4 setBaUUID:baUUID];

  commandContext = [(FMDExtAccessory *)self commandContext];
  [(FMDExtAccessory *)v4 setCommandContext:commandContext];

  playbackChannels = [(FMDExtAccessory *)self playbackChannels];
  [(FMDExtAccessory *)v4 setPlaybackChannels:playbackChannels];

  audioChannelInfo = [(FMDExtAccessory *)self audioChannelInfo];
  [(FMDExtAccessory *)v4 setAudioChannelInfo:audioChannelInfo];

  return v4;
}

- (id)connectionStateAsString
{
  connectionState = [(FMDExtAccessory *)self connectionState];
  if (connectionState > 2)
  {
    return 0;
  }

  else
  {
    return off_1002CFE48[connectionState];
  }
}

- (FMDExtAccessory)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FMDExtAccessory *)self init];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector("accessoryIdentifier");
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];

    v9 = [[FMDAccessoryIdentifier alloc] initWithString:v8];
    accessoryIdentifier = v5->_accessoryIdentifier;
    v5->_accessoryIdentifier = v9;

    v11 = objc_opt_class();
    v12 = NSStringFromSelector("accessoryType");
    v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];
    accessoryType = v5->_accessoryType;
    v5->_accessoryType = v13;

    v15 = objc_opt_class();
    v16 = NSStringFromSelector("name");
    v17 = [coderCopy decodeObjectOfClass:v15 forKey:v16];
    name = v5->_name;
    v5->_name = v17;

    v19 = objc_opt_class();
    v20 = NSStringFromSelector("firmwareVersion");
    v21 = [coderCopy decodeObjectOfClass:v19 forKey:v20];
    firmwareVersion = v5->_firmwareVersion;
    v5->_firmwareVersion = v21;

    v23 = objc_opt_class();
    v24 = NSStringFromSelector("address");
    v25 = [coderCopy decodeObjectOfClass:v23 forKey:v24];
    address = v5->_address;
    v5->_address = v25;

    v27 = objc_opt_class();
    v28 = NSStringFromSelector("extensionId");
    v29 = [coderCopy decodeObjectOfClass:v27 forKey:v28];
    extensionId = v5->_extensionId;
    v5->_extensionId = v29;

    v31 = objc_opt_class();
    v32 = objc_opt_class();
    v33 = [NSSet setWithObjects:v31, v32, objc_opt_class(), 0];
    v34 = NSStringFromSelector("serialNumber");
    v35 = [coderCopy decodeObjectOfClasses:v33 forKey:v34];
    serialNumbers = v5->_serialNumbers;
    v5->_serialNumbers = v35;

    v37 = NSStringFromSelector("additionalInfo");
    v38 = [coderCopy decodeObjectOfClasses:v33 forKey:v37];
    additionalInfo = v5->_additionalInfo;
    v5->_additionalInfo = v38;

    v40 = NSStringFromSelector("batteryInfo");
    v41 = [coderCopy decodeObjectOfClasses:v33 forKey:v40];
    batteryInfo = v5->_batteryInfo;
    v5->_batteryInfo = v41;

    v43 = objc_opt_class();
    v44 = NSStringFromSelector("style");
    v45 = [coderCopy decodeObjectOfClass:v43 forKey:v44];
    style = v5->_style;
    v5->_style = v45;

    v47 = objc_opt_class();
    v48 = NSStringFromSelector("lastActiveTime");
    v49 = [coderCopy decodeObjectOfClass:v47 forKey:v48];
    lastActiveTime = v5->_lastActiveTime;
    v5->_lastActiveTime = v49;

    v51 = objc_opt_class();
    v52 = NSStringFromSelector("lastStatusUpdateTime");
    v53 = [coderCopy decodeObjectOfClass:v51 forKey:v52];
    lastStatusUpdateTime = v5->_lastStatusUpdateTime;
    v5->_lastStatusUpdateTime = v53;

    v55 = objc_opt_class();
    v56 = NSStringFromSelector("lastDiscoveryDate");
    v57 = [coderCopy decodeObjectOfClass:v55 forKey:v56];
    lastDiscoveryDate = v5->_lastDiscoveryDate;
    v5->_lastDiscoveryDate = v57;

    v59 = objc_opt_class();
    v60 = NSStringFromSelector("baUUID");
    v61 = [coderCopy decodeObjectOfClass:v59 forKey:v60];
    baUUID = v5->_baUUID;
    v5->_baUUID = v61;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  v7 = NSStringFromSelector("accessoryIdentifier");
  [coderCopy encodeObject:stringValue forKey:v7];

  accessoryType = [(FMDExtAccessory *)self accessoryType];
  v9 = NSStringFromSelector("accessoryType");
  [coderCopy encodeObject:accessoryType forKey:v9];

  name = [(FMDExtAccessory *)self name];
  v11 = NSStringFromSelector("name");
  [coderCopy encodeObject:name forKey:v11];

  firmwareVersion = [(FMDExtAccessory *)self firmwareVersion];
  v13 = NSStringFromSelector("firmwareVersion");
  [coderCopy encodeObject:firmwareVersion forKey:v13];

  address = [(FMDExtAccessory *)self address];
  v15 = NSStringFromSelector("address");
  [coderCopy encodeObject:address forKey:v15];

  extensionId = [(FMDExtAccessory *)self extensionId];
  v17 = NSStringFromSelector("extensionId");
  [coderCopy encodeObject:extensionId forKey:v17];

  serialNumbers = [(FMDExtAccessory *)self serialNumbers];
  v19 = NSStringFromSelector("serialNumbers");
  [coderCopy encodeObject:serialNumbers forKey:v19];

  additionalInfo = [(FMDExtAccessory *)self additionalInfo];
  v21 = NSStringFromSelector("additionalInfo");
  [coderCopy encodeObject:additionalInfo forKey:v21];

  batteryInfo = [(FMDExtAccessory *)self batteryInfo];
  v23 = NSStringFromSelector("batteryInfo");
  [coderCopy encodeObject:batteryInfo forKey:v23];

  lastActiveTime = [(FMDExtAccessory *)self lastActiveTime];
  v25 = NSStringFromSelector("lastActiveTime");
  [coderCopy encodeObject:lastActiveTime forKey:v25];

  lastStatusUpdateTime = [(FMDExtAccessory *)self lastStatusUpdateTime];
  v27 = NSStringFromSelector("lastStatusUpdateTime");
  [coderCopy encodeObject:lastStatusUpdateTime forKey:v27];

  lastDiscoveryDate = [(FMDExtAccessory *)self lastDiscoveryDate];
  v29 = NSStringFromSelector("lastDiscoveryDate");
  [coderCopy encodeObject:lastDiscoveryDate forKey:v29];

  style = [(FMDExtAccessory *)self style];
  v31 = NSStringFromSelector("style");
  [coderCopy encodeObject:style forKey:v31];

  baUUID = [(FMDExtAccessory *)self baUUID];
  v32 = NSStringFromSelector("baUUID");
  [coderCopy encodeObject:baUUID forKey:v32];
}

- (NSString)description
{
  name = [(FMDExtAccessory *)self name];
  address = [(FMDExtAccessory *)self address];
  accessoryType = [(FMDExtAccessory *)self accessoryType];
  baUUID = [(FMDExtAccessory *)self baUUID];
  uUIDString = [baUUID UUIDString];
  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  v10 = [NSString stringWithFormat:@"FMDAccessory(0x%lx) name - %@, MAC - %@, accessoryType - %@, baUUID - %@, accessoryIdentifier - %@", self, name, address, accessoryType, uUIDString, stringValue];

  return v10;
}

- (id)deviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(FMDExtAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  address = [(FMDExtAccessory *)self address];
  [v3 setValue:address forKey:@"deviceDiscoveryId"];

  connectionStateAsString = [(FMDExtAccessory *)self connectionStateAsString];
  [v3 setValue:connectionStateAsString forKey:@"connectionStatus"];

  additionalInfo = [(FMDExtAccessory *)self additionalInfo];
  if (additionalInfo)
  {
    v10 = additionalInfo;
    additionalInfo2 = [(FMDExtAccessory *)self additionalInfo];
    v12 = [additionalInfo2 count];

    if (v12)
    {
      additionalInfo3 = [(FMDExtAccessory *)self additionalInfo];
      [v3 addEntriesFromDictionary:additionalInfo3];
    }
  }

  lastActiveTime = [(FMDExtAccessory *)self lastActiveTime];
  v15 = lastActiveTime;
  if (lastActiveTime)
  {
    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveTime fm_epoch]);
    [v3 setValue:v16 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
  }

  lastStatusUpdateTime = [(FMDExtAccessory *)self lastStatusUpdateTime];
  if (lastStatusUpdateTime)
  {
    lastStatusUpdateTime2 = [(FMDExtAccessory *)self lastStatusUpdateTime];
    v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastStatusUpdateTime2 fm_epoch]);
    [v3 fm_safeSetObject:v19 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7BB8 forKey:@"accessoryRSSITimestamp"];
  }

  batteryInfo = [(FMDExtAccessory *)self batteryInfo];
  [v3 setValue:batteryInfo forKey:@"batteryInfo"];

  v21 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  audioChannelInfo = [(FMDExtAccessory *)self audioChannelInfo];
  allValues = [audioChannelInfo allValues];

  v24 = [allValues countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v50;
    do
    {
      for (i = 0; i != v25; i = i + 1)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(allValues);
        }

        dictionaryValue = [*(*(&v49 + 1) + 8 * i) dictionaryValue];
        [v21 addObject:dictionaryValue];
      }

      v25 = [allValues countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v25);
  }

  [v3 setValue:v21 forKey:@"audioChannels"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  firmwareVersion = [(FMDExtAccessory *)self firmwareVersion];
  [v3 fm_safeSetObject:firmwareVersion forKey:@"firmwareVersion"];

  v30 = +[FMDSystemConfig sharedInstance];
  productVersion = [v30 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  accessoryType = [(FMDExtAccessory *)self accessoryType];
  v33 = [NSString stringWithFormat:@"%@", accessoryType];
  [v3 setObject:v33 forKeyedSubscript:@"productType"];

  v34 = +[FMDExtConfigurationRegistry sharedInstance];
  accessoryType2 = [(FMDExtAccessory *)self accessoryType];
  v36 = [v34 configForAccessoryType:accessoryType2];

  version = [v36 version];
  [v3 setObject:version forKeyedSubscript:@"cachedConfigVersion"];

  v38 = +[FMDSystemConfig sharedInstance];
  platform = [v38 platform];
  v40 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v40];
  otherDeviceInfo = [(FMDExtAccessory *)self otherDeviceInfo];
  [v3 fm_safeSetObject:otherDeviceInfo forKey:@"otherDevices"];

  serialNumbers = [(FMDExtAccessory *)self serialNumbers];
  [v3 fm_safeSetObject:serialNumbers forKey:@"serialNumbers"];

  style = [(FMDExtAccessory *)self style];
  [v3 fm_safeSetObject:style forKey:@"deviceColor"];

  baUUID = [(FMDExtAccessory *)self baUUID];
  uUIDString = [baUUID UUIDString];
  [v3 fm_safelyMapKey:@"baUUID" toObject:uUIDString];

  v47 = sub_10000BE38(v46);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = v3;
    _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "device Info = %@", buf, 0xCu);
  }

  return v3;
}

+ (id)volatileKeysToExcludeFromRegisterDigest
{
  v4[0] = @"connectionStatus";
  v4[1] = @"lastActiveTime";
  v4[2] = @"batteryInfo";
  v4[3] = @"accessoryRSSI";
  v4[4] = @"accessoryRSSITimestamp";
  v4[5] = @"firmwareVersion";
  v2 = [NSArray arrayWithObjects:v4 count:6];

  return v2;
}

- (id)lastKnownLocationDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  name = [(FMDExtAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  lastActiveTime = [(FMDExtAccessory *)self lastActiveTime];
  v8 = lastActiveTime;
  if (lastActiveTime)
  {
    v9 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveTime fm_epoch]);
    [v3 setValue:v9 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
  }

  lastStatusUpdateTime = [(FMDExtAccessory *)self lastStatusUpdateTime];
  if (lastStatusUpdateTime)
  {
    lastStatusUpdateTime2 = [(FMDExtAccessory *)self lastStatusUpdateTime];
    v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastStatusUpdateTime2 fm_epoch]);
    [v3 fm_safeSetObject:v12 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7BB8 forKey:@"accessoryRSSITimestamp"];
  }

  batteryInfo = [(FMDExtAccessory *)self batteryInfo];
  [v3 setValue:batteryInfo forKey:@"batteryInfo"];

  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"locationServicesEnabled"];
  [v3 setObject:&__kCFBooleanTrue forKeyedSubscript:@"findMyiPhone"];
  [v3 setObject:&__kCFBooleanFalse forKeyedSubscript:@"activationLock"];
  firmwareVersion = [(FMDExtAccessory *)self firmwareVersion];
  [v3 fm_safeSetObject:firmwareVersion forKey:@"firmwareVersion"];

  v15 = +[FMDSystemConfig sharedInstance];
  productVersion = [v15 productVersion];
  [v3 fm_safelyMapKey:@"productVersion" toObject:productVersion];

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  accessoryType = [(FMDExtAccessory *)self accessoryType];
  v18 = [NSString stringWithFormat:@"%@", accessoryType];
  [v3 setObject:v18 forKeyedSubscript:@"productType"];

  v19 = +[FMDSystemConfig sharedInstance];
  platform = [v19 platform];
  v21 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v21];
  serialNumbers = [(FMDExtAccessory *)self serialNumbers];
  [v3 fm_safeSetObject:serialNumbers forKey:@"serialNumbers"];

  style = [(FMDExtAccessory *)self style];
  [v3 fm_safeSetObject:style forKey:@"deviceColor"];

  return v3;
}

- (id)deviceInfoForHostRegister
{
  v3 = objc_alloc_init(NSMutableDictionary);
  name = [(FMDExtAccessory *)self name];
  [v3 setValue:name forKey:@"deviceName"];

  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  stringValue = [accessoryIdentifier stringValue];
  [v3 setValue:stringValue forKey:@"udid"];

  accessoryType = [(FMDExtAccessory *)self accessoryType];
  v8 = [NSString stringWithFormat:@"%@", accessoryType];
  [v3 setObject:v8 forKeyedSubscript:@"productType"];

  connectionStateAsString = [(FMDExtAccessory *)self connectionStateAsString];
  [v3 setValue:connectionStateAsString forKey:@"connectionStatus"];

  lastActiveTime = [(FMDExtAccessory *)self lastActiveTime];
  v11 = lastActiveTime;
  if (lastActiveTime)
  {
    v12 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveTime fm_epoch]);
    [v3 setValue:v12 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
  }

  lastStatusUpdateTime = [(FMDExtAccessory *)self lastStatusUpdateTime];
  if (lastStatusUpdateTime)
  {
    lastStatusUpdateTime2 = [(FMDExtAccessory *)self lastStatusUpdateTime];
    v15 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastStatusUpdateTime2 fm_epoch]);
    [v3 fm_safeSetObject:v15 forKey:@"accessoryRSSITimestamp"];
  }

  else
  {
    [v3 fm_safeSetObject:&off_1002E7BB8 forKey:@"accessoryRSSITimestamp"];
  }

  [v3 setObject:@"Accessory" forKeyedSubscript:@"deviceClass"];
  v16 = +[FMDSystemConfig sharedInstance];
  platform = [v16 platform];
  v18 = [NSString stringWithFormat:@"%@_proxy", platform];

  [v3 fm_safelyMapKey:@"platform" toObject:v18];

  return v3;
}

- (id)otherDeviceInfo
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = +[FMDSystemConfig sharedInstance];
  deviceName = [v4 deviceName];
  [v3 fm_safelyMapKey:@"deviceName" toObject:deviceName];

  lastActiveTime = [(FMDExtAccessory *)self lastActiveTime];
  v7 = lastActiveTime;
  if (lastActiveTime)
  {
    v8 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [lastActiveTime fm_epoch]);
    [v3 setValue:v8 forKey:@"lastActiveTime"];
  }

  else
  {
    [v3 setValue:&off_1002E7BB8 forKey:@"lastActiveTime"];
  }

  v9 = +[FMDSystemConfig sharedInstance];
  deviceClassString = [v9 deviceClassString];
  [v3 fm_safelyMapKey:@"deviceClass" toObject:deviceClassString];

  v11 = +[FMDSystemConfig sharedInstance];
  platform = [v11 platform];
  [v3 fm_safelyMapKey:@"platform" toObject:platform];

  v13 = +[FMDSystemConfig sharedInstance];
  deviceUDID = [v13 deviceUDID];
  [v3 fm_safelyMapKey:@"udid" toObject:deviceUDID];

  v15 = +[FMDSystemConfig sharedInstance];
  productType = [v15 productType];
  [v3 fm_safelyMapKey:@"productType" toObject:productType];

  v19 = v3;
  v17 = [NSArray arrayWithObjects:&v19 count:1];

  return v17;
}

- (BOOL)accessoryInfoChanged:(id)changed
{
  changedCopy = changed;
  accessoryIdentifier = [(FMDExtAccessory *)self accessoryIdentifier];
  accessoryIdentifier2 = [changedCopy accessoryIdentifier];
  if (([accessoryIdentifier isEqual:accessoryIdentifier2] & 1) == 0)
  {

    goto LABEL_12;
  }

  accessoryType = [(FMDExtAccessory *)self accessoryType];
  accessoryType2 = [changedCopy accessoryType];
  v9 = [accessoryType isEqualToString:accessoryType2];

  if (!v9)
  {
LABEL_12:
    v20 = sub_10000BE38(v10);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10022B898(v20);
    }

    goto LABEL_18;
  }

  name = [(FMDExtAccessory *)self name];
  name2 = [changedCopy name];
  if (([name isEqualToString:name2] & 1) == 0)
  {
LABEL_17:

    goto LABEL_18;
  }

  firmwareVersion = [(FMDExtAccessory *)self firmwareVersion];
  firmwareVersion2 = [changedCopy firmwareVersion];
  if (![firmwareVersion isEqualToString:firmwareVersion2])
  {
LABEL_16:

    goto LABEL_17;
  }

  serialNumbers = [(FMDExtAccessory *)self serialNumbers];
  serialNumbers2 = [changedCopy serialNumbers];
  if (![serialNumbers isEqualToDictionary:serialNumbers2])
  {

    goto LABEL_16;
  }

  address = [(FMDExtAccessory *)self address];
  address2 = [changedCopy address];
  v32 = [address isEqualToString:address2];

  if (!v32)
  {
    goto LABEL_18;
  }

  name = [(FMDExtAccessory *)self baUUID];
  if (!name)
  {
    v19 = 0;
    goto LABEL_22;
  }

  name2 = [changedCopy baUUID];
  if (!name2)
  {
    v19 = 0;
    goto LABEL_22;
  }

  firmwareVersion = [(FMDExtAccessory *)self baUUID];
  firmwareVersion2 = [changedCopy baUUID];
  if (([firmwareVersion isEqual:firmwareVersion2] & 1) == 0)
  {
    goto LABEL_16;
  }

  v19 = 1;
LABEL_22:
  baUUID = [(FMDExtAccessory *)self baUUID];
  if (!baUUID)
  {
    baUUID2 = [changedCopy baUUID];
    if (baUUID2)
    {
      v25 = 1;
      goto LABEL_31;
    }
  }

  baUUID3 = [changedCopy baUUID];
  if (baUUID3)
  {

    v25 = 0;
    if (baUUID)
    {
      goto LABEL_25;
    }

LABEL_30:
    baUUID2 = 0;
LABEL_31:

    if ((v19 & 1) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  baUUID4 = [(FMDExtAccessory *)self baUUID];
  v25 = baUUID4 != 0;

  if (!baUUID)
  {
    goto LABEL_30;
  }

LABEL_25:

  if (v19)
  {
LABEL_32:
  }

LABEL_33:
  if (name)
  {
  }

  if (!v25)
  {
    additionalInfo = [(FMDExtAccessory *)self additionalInfo];
    if (additionalInfo || ([changedCopy additionalInfo], (name2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      additionalInfo2 = [(FMDExtAccessory *)self additionalInfo];
      additionalInfo3 = [changedCopy additionalInfo];
      v31 = [additionalInfo2 isEqualToDictionary:additionalInfo3];

      if (additionalInfo)
      {
LABEL_42:

        v21 = v31 ^ 1;
        goto LABEL_19;
      }
    }

    else
    {
      v31 = 1;
    }

    goto LABEL_42;
  }

LABEL_18:
  v21 = 1;
LABEL_19:

  return v21;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = equalCopy;
  if ([(FMDExtAccessory *)self accessoryInfoChanged:v5]|| ([(FMDExtAccessory *)self style], (v6 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_8;
  }

  v7 = v6;
  style = [(FMDExtAccessory *)self style];
  style2 = [(FMDExtAccessory *)v5 style];
  v10 = [style isEqualToString:style2];

  if ((v10 & 1) == 0)
  {
LABEL_8:
    v11 = 0;
    goto LABEL_9;
  }

LABEL_6:
  v11 = 1;
LABEL_9:

  return v11;
}

@end