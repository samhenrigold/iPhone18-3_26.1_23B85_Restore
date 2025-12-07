@interface TVRCDevice
- (BOOL)containsIdentifier:(id)identifier;
- (BOOL)isEqualToDevice:(id)device;
- (BOOL)isInEditingSession;
- (BOOL)supportsFindMyRemote;
- (NSSet)allIdentifiers;
- (TVRCDevice)initWithDeviceIdentifier:(id)identifier;
- (TVRCDeviceDelegate)delegate;
- (id)_deviceStateDictionary;
- (id)description;
- (void)_connectWithConnectionContext:(int64_t)context;
- (void)_deviceEncounteredAuthChallengeType:(int64_t)type attributes:(int64_t)attributes codeToEnterOnDevice:(id)device throttleSeconds:(int64_t)seconds;
- (void)_deviceUpdatedState:(id)state;
- (void)_disconnectDeviceDueToConnectionInterruption;
- (void)_sendRTIDataPayload:(id)payload;
- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)disconnectWithType:(unint64_t)type;
- (void)enableFindingSession:(BOOL)session;
- (void)enableTVRemoteOnLockscreen:(BOOL)lockscreen;
- (void)fetchLaunchableAppsWithCompletion:(id)completion;
- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion;
- (void)launchAppWithBundleID:(id)d completion:(id)completion;
- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)playItem:(id)item completion:(id)completion;
- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion;
- (void)sendButtonEvent:(id)event;
- (void)sendGameControllerEvent:(id)event;
- (void)sendTouchEvent:(id)event;
- (void)setDelegate:(id)delegate;
@end

@implementation TVRCDevice

- (TVRCDevice)initWithDeviceIdentifier:(id)identifier
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16.receiver = self;
  v16.super_class = TVRCDevice;
  v5 = [(TVRCDevice *)&v16 init];
  v6 = v5;
  if (v5)
  {
    v7 = _TVRCGeneralLog(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v18 = "[TVRCDevice initWithDeviceIdentifier:]";
      v19 = 2114;
      v20 = identifierCopy;
      v21 = 2114;
      v22 = v6;
      _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "%s identifier:%{public}@, %{public}@", buf, 0x20u);
    }

    v8 = [identifierCopy copy];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [[TVRCKeyboardController alloc] _initWithDevice:v6];
    keyboardController = v6->_keyboardController;
    v6->_keyboardController = v10;

    v12 = objc_alloc_init(TVRCDeviceInfo);
    info = v6->_info;
    v6->_info = v12;

    v14 = +[TVRCXPCClient sharedInstance];
    [v14 addEventObserver:v6 forDeviceWithIdentifier:v6->_identifier];
  }

  return v6;
}

- (void)setDelegate:(id)delegate
{
  v12 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  v5 = _TVRCGeneralLog(delegateCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315650;
    v7 = "[TVRCDevice setDelegate:]";
    v8 = 2114;
    v9 = delegateCopy;
    v10 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "%s delegate:%{public}@, %{public}@", &v6, 0x20u);
  }

  objc_storeWeak(&self->_delegate, delegateCopy);
}

- (void)dealloc
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _TVRCGeneralLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v8 = "[TVRCDevice dealloc]";
    v9 = 2114;
    selfCopy = self;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "%s %{public}@", buf, 0x16u);
  }

  v4 = +[TVRCXPCClient sharedInstance];
  identifier = [(TVRCDevice *)self identifier];
  [v4 removeEventObserver:self forDeviceWithIdentifier:identifier];

  v6.receiver = self;
  v6.super_class = TVRCDevice;
  [(TVRCDevice *)&v6 dealloc];
}

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@ %p", objc_opt_class(), self];
  name = [(TVRCDevice *)self name];
  v5 = name;
  if (name)
  {
    [v3 appendFormat:@" %@", name];
  }

  if (self->_identifier)
  {
    [v3 appendFormat:@"; identifier=%@", self->_identifier];
  }

  if (self->_info)
  {
    [v3 appendFormat:@"; info=%@", self->_info];
  }

  v6 = TVRCDeviceConnectionTypeDescription([(TVRCDevice *)self connectionType]);
  [v3 appendFormat:@"; connectionType=%@", v6];

  if ([(TVRCDevice *)self classification])
  {
    v7 = TVRCDeviceClassificationDescription([(TVRCDevice *)self classification]);
    [v3 appendFormat:@"; suggestion=%@", v7];
  }

  if ([(TVRCDevice *)self linkType])
  {
    v8 = TVRCDeviceLinkTypeDescription([(TVRCDevice *)self linkType]);
    [v3 appendFormat:@"; linkType=%@", v8];
  }

  [v3 appendString:@">"];
  v9 = [v3 copy];

  return v9;
}

- (id)_deviceStateDictionary
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  name = [(TVRCDevice *)self name];
  [dictionary setObject:name forKeyedSubscript:@"name"];

  identifier = [(TVRCDevice *)self identifier];
  [dictionary setObject:identifier forKeyedSubscript:@"identifier"];

  model = [(TVRCDevice *)self model];
  [dictionary setObject:model forKeyedSubscript:@"model"];

  v7 = TVRCDeviceConnectionTypeDescription([(TVRCDevice *)self connectionType]);
  [dictionary setObject:v7 forKeyedSubscript:@"connectionType"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCDevice connectionState](self, "connectionState")}];
  [dictionary setObject:v8 forKeyedSubscript:@"connectionState"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice isPaired](self, "isPaired")}];
  [dictionary setObject:v9 forKeyedSubscript:@"paired"];

  v10 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsDirectCaptionQueries](self, "supportsDirectCaptionQueries")}];
  [dictionary setObject:v10 forKeyedSubscript:@"supportsDirectCaptionQueries"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsFindMyRemote](self, "supportsFindMyRemote")}];
  [dictionary setObject:v11 forKeyedSubscript:@"supportsFindMyRemote"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:{-[TVRCDevice supportsTouchEvents](self, "supportsTouchEvents")}];
  [dictionary setObject:v12 forKeyedSubscript:@"supportsTouchEvents"];

  v13 = [MEMORY[0x277CCABB0] numberWithInteger:{-[TVRCDevice attentionState](self, "attentionState")}];
  [dictionary setObject:v13 forKeyedSubscript:@"attentionState"];

  deviceState = [(TVRCDevice *)self deviceState];
  alternateIdentifiers = [deviceState alternateIdentifiers];
  [dictionary setObject:alternateIdentifiers forKeyedSubscript:@"alternateIdentifiers"];

  v16 = [dictionary copy];

  return v16;
}

- (void)_connectWithConnectionContext:(int64_t)context
{
  if (![(TVRCDeviceState *)self->_deviceState connectionState])
  {
    v5 = +[TVRCXPCClient sharedInstance];
    [v5 openConnectionToDeviceWithIdentifier:self->_identifier connectionContext:context];
  }
}

- (void)disconnectWithType:(unint64_t)type
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = _TVRCGeneralLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    typeCopy = type;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "TVRCDevice disconnecting with type: %ld", &v7, 0xCu);
  }

  [(TVRCDeviceState *)self->_deviceState setConnectionState:0];
  v6 = +[TVRCXPCClient sharedInstance];
  [v6 closeConnectionToDeviceWithIdentifier:self->_identifier withType:type];
}

- (void)sendButtonEvent:(id)event
{
  eventCopy = event;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendButtonEvent:eventCopy toDeviceWithIdentifier:self->_identifier];
}

- (void)sendTouchEvent:(id)event
{
  eventCopy = event;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendTouchEvent:eventCopy toDeviceWithIdentifier:self->_identifier];
}

- (void)sendGameControllerEvent:(id)event
{
  eventCopy = event;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendGameControllerEvent:eventCopy toDeviceWithIdentifier:self->_identifier];
}

- (BOOL)containsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  allIdentifiers = [(TVRCDevice *)self allIdentifiers];
  v6 = [allIdentifiers containsObject:identifierCopy];

  return v6;
}

- (BOOL)isEqualToDevice:(id)device
{
  deviceCopy = device;
  info = [deviceCopy info];
  identifier = [deviceCopy identifier];

  if ([(TVRCDevice *)self containsIdentifier:identifier])
  {
    v7 = 1;
  }

  else
  {
    mediaRemoteID = [info mediaRemoteID];
    if ([(TVRCDevice *)self containsIdentifier:mediaRemoteID])
    {
      v7 = 1;
    }

    else
    {
      airplayID = [info airplayID];
      v7 = [(TVRCDevice *)self containsIdentifier:airplayID];
    }
  }

  return v7;
}

- (void)fetchUpNextInfoWithPaginationToken:(id)token completion:(id)completion
{
  completionCopy = completion;
  tokenCopy = token;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 fetchUpNextInfoForDeviceWithIdentifier:self->_identifier paginationToken:tokenCopy completion:completionCopy];
}

- (void)markAsWatchedWithMediaIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 markAsWatchedForDeviceWithIdentifier:self->_identifier mediaIdentifier:identifierCopy completion:completionCopy];
}

- (void)addItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 addItemForDeviceWithIdentifier:self->_identifier mediaIdentifier:identifierCopy completion:completionCopy];
}

- (void)removeItemWithMediaIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  identifierCopy = identifier;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 removeItemForDeviceWithIdentifier:self->_identifier mediaIdentifier:identifierCopy completion:completionCopy];
}

- (void)playItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  itemCopy = item;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 playItem:itemCopy deviceIdentifier:self->_identifier completion:completionCopy];
}

- (void)fetchLaunchableAppsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 fetchLaunchableAppsForDeviceWithIdentifier:self->_identifier completion:completionCopy];
}

- (void)launchAppWithBundleID:(id)d completion:(id)completion
{
  completionCopy = completion;
  dCopy = d;
  v8 = +[TVRCXPCClient sharedInstance];
  [v8 launchAppForDeviceWithIdentifier:self->_identifier bundleID:dCopy completion:completionCopy];
}

- (BOOL)isInEditingSession
{
  keyboardState = [(TVRCDeviceState *)self->_deviceState keyboardState];
  isEditing = [keyboardState isEditing];

  return isEditing;
}

- (BOOL)supportsFindMyRemote
{
  if ([(TVRCDeviceState *)self->_deviceState supportsFindMyRemote])
  {
    return 1;
  }

  pairedRemoteInfo = [(TVRCDeviceState *)self->_deviceState pairedRemoteInfo];
  supportsFindMy = [pairedRemoteInfo supportsFindMy];

  return supportsFindMy;
}

- (NSSet)allIdentifiers
{
  identifier = self->_identifier;
  if (identifier)
  {
    identifier = identifier;
  }

  else
  {
    deviceState = [(TVRCDevice *)self deviceState];
    identifier = [deviceState identifier];
  }

  v6 = [MEMORY[0x277CBEB58] setWithObject:identifier];
  name = [(TVRCDevice *)self name];

  if (name)
  {
    name2 = [(TVRCDevice *)self name];
    [v6 addObject:name2];
  }

  deviceState2 = [(TVRCDevice *)self deviceState];
  idsIdentifier = [deviceState2 idsIdentifier];

  if (idsIdentifier)
  {
    deviceState3 = [(TVRCDevice *)self deviceState];
    idsIdentifier2 = [deviceState3 idsIdentifier];
    [v6 addObject:idsIdentifier2];
  }

  deviceState4 = [(TVRCDevice *)self deviceState];
  alternateIdentifiers = [deviceState4 alternateIdentifiers];
  allValues = [alternateIdentifiers allValues];
  [v6 addObjectsFromArray:allValues];

  v16 = [v6 copy];

  return v16;
}

- (void)_deviceUpdatedState:(id)state
{
  v133 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v6 = _TVRCGeneralLog(stateCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v128 = "[TVRCDevice _deviceUpdatedState:]";
    v129 = 2048;
    selfCopy = self;
    v131 = 2114;
    v132 = stateCopy;
    _os_log_impl(&dword_26CF7F000, v6, OS_LOG_TYPE_DEFAULT, "%s - device:<%p> state: %{public}@ ", buf, 0x20u);
  }

  alternateIdentifiers = [stateCopy alternateIdentifiers];
  allValues = [alternateIdentifiers allValues];

  v9 = MEMORY[0x277CBEB98];
  alternateIdentifiers2 = [stateCopy alternateIdentifiers];
  allValues2 = [alternateIdentifiers2 allValues];
  v12 = [v9 setWithArray:allValues2];

  identifier = self->_identifier;
  identifier = [stateCopy identifier];
  LOBYTE(identifier) = [(NSString *)identifier isEqualToString:identifier];

  if ((identifier & 1) == 0)
  {
    v16 = _TVRCGeneralLog(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_identifier;
      identifier2 = [stateCopy identifier];
      *buf = 138412546;
      v128 = v17;
      v129 = 2112;
      selfCopy = identifier2;
      _os_log_impl(&dword_26CF7F000, v16, OS_LOG_TYPE_DEFAULT, "Identifiers do NOT match - old: %@ new: %@", buf, 0x16u);
    }

    idsIdentifier = [(TVRCDeviceState *)self->_deviceState idsIdentifier];
    idsIdentifier2 = [stateCopy idsIdentifier];
    v21 = [idsIdentifier isEqualToString:idsIdentifier2];

    if (v21)
    {
      v23 = _TVRCGeneralLog(v22);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      idsIdentifier3 = [(TVRCDeviceState *)self->_deviceState idsIdentifier];
      idsIdentifier4 = [stateCopy idsIdentifier];
      *buf = 138412546;
      v128 = idsIdentifier3;
      v129 = 2112;
      selfCopy = idsIdentifier4;
      _os_log_impl(&dword_26CF7F000, v23, OS_LOG_TYPE_DEFAULT, "Found matching IDS identifiers - old: %@ new: %@", buf, 0x16u);
    }

    else
    {
      allIdentifiers = [(TVRCDevice *)self allIdentifiers];
      v27 = [v12 intersectsSet:allIdentifiers];

      if (!v27)
      {
        goto LABEL_17;
      }

      v23 = _TVRCGeneralLog(v28);
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      idsIdentifier3 = [(TVRCDevice *)self allIdentifiers];
      *buf = 138412546;
      v128 = idsIdentifier3;
      v129 = 2112;
      selfCopy = allValues;
      _os_log_impl(&dword_26CF7F000, v23, OS_LOG_TYPE_DEFAULT, "Found matching alternate identifiers - old: %@ new: %@", buf, 0x16u);
    }

LABEL_13:
    linkType = [(TVRCDeviceState *)self->_deviceState linkType];
    if (linkType == [stateCopy linkType])
    {
      identifier3 = [stateCopy identifier];
      v31 = _TVRCGeneralLog(identifier3);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = self->_identifier;
        *buf = 138412546;
        v128 = v32;
        v129 = 2112;
        selfCopy = identifier3;
        _os_log_impl(&dword_26CF7F000, v31, OS_LOG_TYPE_DEFAULT, "Updating identifier - old: %@ new: %@", buf, 0x16u);
      }

      [(TVRCDevice *)self setIdentifier:identifier3];
    }
  }

LABEL_17:
  v33 = self->_identifier;
  identifier4 = [stateCopy identifier];
  if ([(NSString *)v33 isEqualToString:identifier4])
  {

    goto LABEL_20;
  }

  v35 = [(TVRCDevice *)allValues containsObject:self->_identifier];

  if (v35)
  {
LABEL_20:
    v36 = self->_deviceState;
    objc_storeStrong(&self->_deviceState, state);
    info = self->_info;
    alternateIdentifiers3 = [stateCopy alternateIdentifiers];
    [(TVRCDeviceInfo *)info _populateValidIdentifiers:alternateIdentifiers3];

    v40 = _TVRCGeneralLog(v39);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v128 = v36;
      _os_log_impl(&dword_26CF7F000, v40, OS_LOG_TYPE_DEFAULT, "Old state: %{public}@", buf, 0xCu);
    }

    v42 = _TVRCGeneralLog(v41);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v128 = stateCopy;
      _os_log_impl(&dword_26CF7F000, v42, OS_LOG_TYPE_DEFAULT, "New state: %{public}@", buf, 0xCu);
    }

    if (!-[TVRCDeviceState connectionState](v36, "connectionState") && [stateCopy connectionState] == 1)
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v44 = objc_opt_respondsToSelector();

      if (v44)
      {
        v45 = objc_loadWeakRetained(&self->_delegate);
        [v45 deviceBeganConnecting:self];
      }
    }

    if (-[TVRCDeviceState connectionState](v36, "connectionState") != 2 && [stateCopy connectionState] == 2)
    {
      v46 = objc_loadWeakRetained(&self->_delegate);
      v47 = objc_opt_respondsToSelector();

      if (v47)
      {
        v48 = objc_loadWeakRetained(&self->_delegate);
        [v48 deviceConnected:self];
      }

      v49 = +[TVRCPreferredDeviceManager sharedInstance];
      [v49 setPreferredDevice:self];
    }

    if (!v36)
    {
      goto LABEL_87;
    }

    if (-[TVRCDeviceState connectionState](v36, "connectionState") && ![stateCopy connectionState])
    {
      if ([stateCopy disconnectReason] == 1)
      {
        v51 = +[TVRCPreferredDeviceManager sharedInstance];
        preferredDevice = [v51 preferredDevice];

        allIdentifiers2 = [preferredDevice allIdentifiers];
        v54 = [allIdentifiers2 containsObject:self->_identifier];

        if (v54)
        {
          v55 = +[TVRCPreferredDeviceManager sharedInstance];
          [v55 setPreferredDevice:0];
        }
      }

      goto LABEL_44;
    }

    if (!-[TVRCDeviceState connectionState](v36, "connectionState") && ![stateCopy connectionState])
    {
      disconnectError = [stateCopy disconnectError];
      if (disconnectError)
      {

        goto LABEL_44;
      }

      if ([stateCopy disconnectReason] < 5)
      {
LABEL_44:
        v56 = objc_loadWeakRetained(&self->_delegate);
        v57 = objc_opt_respondsToSelector();

        if (v57)
        {
          v58 = objc_loadWeakRetained(&self->_delegate);
          disconnectReason = [stateCopy disconnectReason];
          disconnectError2 = [stateCopy disconnectError];
          [v58 device:self disconnectedForReason:disconnectReason error:disconnectError2];
        }
      }
    }

    supportedButtons = [(TVRCDeviceState *)v36 supportedButtons];
    supportedButtons2 = [stateCopy supportedButtons];
    v63 = [supportedButtons isEqualToSet:supportedButtons2];

    if ((v63 & 1) == 0)
    {
      supportedButtons3 = [(TVRCDeviceState *)v36 supportedButtons];
      v65 = [supportedButtons3 mutableCopy];

      supportedButtons4 = [stateCopy supportedButtons];
      [v65 minusSet:supportedButtons4];

      supportedButtons5 = [stateCopy supportedButtons];
      v68 = [supportedButtons5 mutableCopy];

      supportedButtons6 = [(TVRCDeviceState *)v36 supportedButtons];
      [v68 minusSet:supportedButtons6];

      v70 = objc_loadWeakRetained(&self->_delegate);
      v71 = objc_opt_respondsToSelector();

      if (v71)
      {
        v72 = objc_loadWeakRetained(&self->_delegate);
        [v72 device:self removedSupportedButtons:v65 added:v68];
      }
    }

    name = [(TVRCDeviceState *)v36 name];
    name2 = [stateCopy name];
    v75 = [name isEqualToString:name2];

    if ((v75 & 1) == 0)
    {
      v76 = objc_loadWeakRetained(&self->_delegate);
      v77 = objc_opt_respondsToSelector();

      if (v77)
      {
        v78 = objc_loadWeakRetained(&self->_delegate);
        [v78 deviceNameChanged:self];
      }

      v79 = +[TVRCPreferredDeviceManager sharedInstance];
      [v79 setPreferredDevice:self];
    }

    supportsFindMyRemote = [(TVRCDeviceState *)v36 supportsFindMyRemote];
    supportsFindMyRemote2 = [stateCopy supportsFindMyRemote];
    if (supportsFindMyRemote != supportsFindMyRemote2 || (-[TVRCDeviceState pairedRemoteInfo](v36, "pairedRemoteInfo"), v82 = objc_claimAutoreleasedReturnValue(), [stateCopy pairedRemoteInfo], v83 = objc_claimAutoreleasedReturnValue(), v84 = objc_msgSend(v82, "isEqualToRemoteInfo:", v83), v83, v82, (v84 & 1) == 0))
    {
      v85 = _TVRCGeneralLog(supportsFindMyRemote2);
      if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
      {
        supportsFindMyRemote3 = [stateCopy supportsFindMyRemote];
        *buf = 67109120;
        LODWORD(v128) = supportsFindMyRemote3;
        _os_log_impl(&dword_26CF7F000, v85, OS_LOG_TYPE_DEFAULT, "Updated supportsFindMyRemote: %d", buf, 8u);
      }

      v88 = _TVRCGeneralLog(v87);
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
      {
        pairedRemoteInfo = [stateCopy pairedRemoteInfo];
        *buf = 138412290;
        v128 = pairedRemoteInfo;
        _os_log_impl(&dword_26CF7F000, v88, OS_LOG_TYPE_DEFAULT, "Updated pairedRemoteInfo: %@", buf, 0xCu);
      }

      if ([stateCopy supportsFindMyRemote])
      {
        supportsFindMy = 1;
      }

      else
      {
        pairedRemoteInfo2 = [stateCopy pairedRemoteInfo];
        supportsFindMy = [pairedRemoteInfo2 supportsFindMy];
      }

      v92 = objc_loadWeakRetained(&self->_delegate);
      v93 = objc_opt_respondsToSelector();

      if (v93)
      {
        v94 = objc_loadWeakRetained(&self->_delegate);
        [v94 device:self supportsFindMyRemote:supportsFindMy];
      }
    }

    nowPlayingInfo = [(TVRCDeviceState *)v36 nowPlayingInfo];
    nowPlayingInfo2 = [stateCopy nowPlayingInfo];
    v97 = [nowPlayingInfo isEqualToNowPlayingInfo:nowPlayingInfo2];

    if ((v97 & 1) == 0)
    {
      v99 = _TVRCGeneralLog(v98);
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        nowPlayingInfo3 = [stateCopy nowPlayingInfo];
        *buf = 138412290;
        v128 = nowPlayingInfo3;
        _os_log_impl(&dword_26CF7F000, v99, OS_LOG_TYPE_DEFAULT, "Updated nowPlayingInfo: %@", buf, 0xCu);
      }

      v101 = objc_loadWeakRetained(&self->_delegate);
      v102 = objc_opt_respondsToSelector();

      if (v102)
      {
        v103 = objc_loadWeakRetained(&self->_delegate);
        nowPlayingInfo4 = [stateCopy nowPlayingInfo];
        [v103 device:self updatedNowPlayingInfo:nowPlayingInfo4];
      }
    }

    siriRemoteFindingState = [(TVRCDeviceState *)v36 siriRemoteFindingState];
    siriRemoteFindingState2 = [stateCopy siriRemoteFindingState];
    if (siriRemoteFindingState != siriRemoteFindingState2)
    {
      v107 = _TVRCGeneralLog(siriRemoteFindingState2);
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        siriRemoteFindingState3 = [stateCopy siriRemoteFindingState];
        if (siriRemoteFindingState3 < 7 && ((0x77u >> siriRemoteFindingState3) & 1) != 0)
        {
          v111 = off_279D82B48[siriRemoteFindingState3];
        }

        else
        {
          v110 = MEMORY[0x277CCACA8];
          v111 = [MEMORY[0x277CCABB0] numberWithInteger:siriRemoteFindingState3];
          v111 = [v110 stringWithFormat:@"Unknown %@", v111];
        }

        v112 = v111;
        *buf = 138543362;
        v128 = v112;
        _os_log_impl(&dword_26CF7F000, v107, OS_LOG_TYPE_DEFAULT, "Updated siriRemoteFindingState: %{public}@", buf, 0xCu);
      }

      v113 = objc_loadWeakRetained(&self->_delegate);
      v114 = objc_opt_respondsToSelector();

      if (v114)
      {
        v115 = objc_loadWeakRetained(&self->_delegate);
        [v115 device:self updatedSiriRemoteFindingSessionState:{objc_msgSend(stateCopy, "siriRemoteFindingState")}];
      }
    }

    attentionState = [(TVRCDeviceState *)v36 attentionState];
    attentionState2 = [stateCopy attentionState];
    if (attentionState != attentionState2)
    {
      v118 = _TVRCGeneralLog(attentionState2);
      if (os_log_type_enabled(v118, OS_LOG_TYPE_DEFAULT))
      {
        attentionState3 = [stateCopy attentionState];
        if ((attentionState3 - 1) >= 3)
        {
          v119 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %ld)", attentionState3];
        }

        else
        {
          v119 = off_279D82B80[attentionState3 - 1];
        }

        v121 = v119;
        *buf = 138543362;
        v128 = v121;
        _os_log_impl(&dword_26CF7F000, v118, OS_LOG_TYPE_DEFAULT, "Updated attentionState: %{public}@", buf, 0xCu);
      }

      v122 = objc_loadWeakRetained(&self->_delegate);
      v123 = objc_opt_respondsToSelector();

      if (v123)
      {
        v124 = objc_loadWeakRetained(&self->_delegate);
        [v124 device:self updatedAttentionState:{objc_msgSend(stateCopy, "attentionState")}];
      }
    }

LABEL_87:
    keyboardController = self->_keyboardController;
    keyboardState = [stateCopy keyboardState];
    [(TVRCKeyboardController *)keyboardController _setCurrentState:keyboardState];
  }
}

- (void)_deviceEncounteredAuthChallengeType:(int64_t)type attributes:(int64_t)attributes codeToEnterOnDevice:(id)device throttleSeconds:(int64_t)seconds
{
  deviceCopy = device;
  objc_copyWeak(&to, &self->_delegate);
  v11 = objc_loadWeakRetained(&to);
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v14 = [[TVRCDeviceAuthenticationChallenge alloc] _initWithDeviceIdentifier:self->_identifier challengeType:type codeToEnterOnDevice:deviceCopy];
    [v14 setChallengeAttributes:attributes];
    [v14 setThrottleSeconds:seconds];
    v15 = objc_loadWeakRetained(&to);
    [v15 device:self encounteredAuthenticationChallenge:v14];
  }

  else
  {
    v14 = _TVRCGeneralLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      [TVRCDevice _deviceEncounteredAuthChallengeType:v14 attributes:? codeToEnterOnDevice:? throttleSeconds:?];
    }
  }

  objc_destroyWeak(&to);
}

- (void)_disconnectDeviceDueToConnectionInterruption
{
  [(TVRCDeviceState *)self->_deviceState setConnectionState:0];
  if ([(TVRCDeviceState *)self->_deviceState connectionState]== 2)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = objc_loadWeakRetained(&self->_delegate);
      [v5 device:self disconnectedForReason:4 error:0];
    }
  }
}

- (void)_sendRTIDataPayload:(id)payload
{
  payloadCopy = payload;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 sendInputTextPayload:payloadCopy toDeviceWithIdentifier:self->_identifier];
}

- (void)enableTVRemoteOnLockscreen:(BOOL)lockscreen
{
  lockscreenCopy = lockscreen;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 enableTVRemoteOnLockscreen:lockscreenCopy forDeviceIdentifier:self->_identifier];
}

- (void)enableFindingSession:(BOOL)session
{
  sessionCopy = session;
  v5 = +[TVRCXPCClient sharedInstance];
  [v5 enableFindingSession:sessionCopy forDeviceIdentifier:self->_identifier];
}

- (TVRCDeviceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_deviceEncounteredAuthChallengeType:(uint64_t)a1 attributes:(NSObject *)a2 codeToEnterOnDevice:throttleSeconds:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_26CF7F000, a2, OS_LOG_TYPE_FAULT, "There is no delegate for device %@ to receive the auth challenge", &v2, 0xCu);
}

@end